void sub_21C489B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double SKCParticleSystemNode::getBoundingBox(SKCParticleSystemNode *this)
{
  v2 = *(this + 41);
  *&v2.u32[2] = vsub_f32(*(this + 672), *v2.f32);
  *&v3 = SKCBoundingBoxMake(v2);
  v13 = v4;
  v14 = v3;
  v15 = v6;
  v16 = v5;
  (*(*this + 104))(this);
  v11 = 0;
  v17[0] = v14;
  v17[1] = v13;
  v17[2] = v16;
  v17[3] = v15;
  do
  {
    *(&v18 + v11 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(v17[v11])), v8, *&v17[v11], 1), v9, v17[v11], 2), v10, v17[v11], 3);
    ++v11;
  }

  while (v11 != 4);
  return *&v18;
}

float SKCParticleSystemNode::update(SKCParticleSystemNode *this, double a2, float a3)
{
  SKCNode::update(this, a2, 1.0);
  v5 = CACurrentMediaTime();
  _perfBeginEmitters(v5);
  if ((atomic_load_explicit(&qword_27CDDD2B8, memory_order_acquire) & 1) == 0)
  {
    SKCParticleSystemNode::update(a2);
  }

  v6 = a2 - *&_MergedGlobals_0;
  _MergedGlobals_0 = *&a2;
  SKCParticleManager::update(*(this + 74), v6);
  SKCParticleManager::compact(*(this + 74));
  v7 = CACurrentMediaTime();

  return _perfEndEmitters(v7);
}

BOOL SKCParticleSystemNode::getNeedsUpdate(SKCParticleSystemNode *this)
{
  NeedsUpdate = SKCNode::getNeedsUpdate(this);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = *(this + 74);
  if (v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZN21SKCParticleSystemNode14getNeedsUpdateEv_block_invoke;
    v6[3] = &unk_2783103F0;
    v6[4] = &v7;
    SKCParticleManager::enumerateParticleSystems(v3, v6);
  }

  v4 = NeedsUpdate || *(v8 + 6) != 0;
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_21C489D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21C48A314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_21C48A490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void sub_21C48A670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void sub_21C48A794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = SKMutableTexture;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

float subtractAndNormalize(float a1, float a2)
{
  result = a1 - a2;
  if (result < 0.0 || result > 6.2832)
  {
    return result - (floorf(result / 6.2832) * 6.2832);
  }

  return result;
}

void sub_21C48FF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_21C4904D8(_Unwind_Exception *a1)
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

void sub_21C491348(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x1081C40983EBE18);

  _Unwind_Resume(a1);
}

void sub_21C4915DC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void SKCStrength::SKCStrength(SKCStrength *this, SKCAction *a2)
{
  SKCAction::SKCAction(this);
  *v3 = &unk_282E17BA0;
  *(v3 + 40) = *&a2->var6;
  *(v3 + 72) = *&a2->var11;
  *(v3 + 56) = *&a2->var8;
  *(v3 + 88) = a2->var14;
  *(v3 + 32) = 1;
}

void SKCStrength::~SKCStrength(SKCStrength *this)
{
  SKCAction::~SKCAction(this);

  JUMPOUT(0x21CF0A160);
}

void SKCStrength::cpp_updateWithTargetForTime(SKCStrength *this, id *a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  v6 = SKCAction::cpp_ratioForTime(this, a3);
  v11 = a2[1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v11;
    [v8 strength];
    if (this->var25)
    {
      v10 = (this->var23 * v6) + 1.0;
      *&v9 = (*&v9 * v10) / this->var22;
      [v8 setStrength:v9];
      this->var22 = v10;
    }

    else if (!this->var24)
    {
      *&v9 = (v6 * this->var19) + (this->var23 * (1.0 - v6));
      [v8 setStrength:v9];
    }

    this->var21 = v6;
  }

  if ((COERCE_UNSIGNED_INT(v6 + -1.0) & 0x60000000) == 0)
  {
    v7.n128_u64[0] = v3;
    SKCAction::didFinishWithTargetAtTime(this, a2, v7);
  }
}

void SKCStrength::cpp_willStartWithTargetAtTime(SKCStrength *this, id *a2, double a3)
{
  SKCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  v8 = a2[1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v8;
    v6 = v5;
    this->var21 = 0.0;
    if (this->var25)
    {
      this->var22 = 1.0;
      v7 = this->var19 + -1.0;
    }

    else
    {
      [v5 strength];
    }

    this->var23 = v7;
  }
}

void sub_21C491DD4(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x1081C40F5A01273);

  _Unwind_Resume(a1);
}

void sub_21C4921A0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void SKCResize::SKCResize(SKCResize *this, SKCAction *a2)
{
  SKCAction::SKCAction(this);
  *v3 = &unk_282E17C38;
  *(v3 + 40) = *&a2->var6;
  *(v3 + 72) = *&a2->var11;
  *(v3 + 56) = *&a2->var8;
  *(v3 + 88) = a2->var14;
  *(v3 + 32) = 1;
}

void SKCResize::~SKCResize(SKCResize *this)
{
  SKCAction::~SKCAction(this);

  JUMPOUT(0x21CF0A160);
}

void SKCResize::cpp_updateWithTargetForTime(SKCResize *this, SKCNode *a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  v6.n128_f32[0] = SKCAction::cpp_ratioForTime(this, a3);
  v7 = v6.n128_f32[0];
  v8 = *(a2 + 21);
  if (this->var24)
  {
    v9 = v6.n128_f32[0] - this->var19;
    v10 = 0.0;
    v6.n128_u32[0] = 0;
    if (this->var25)
    {
      v6.n128_f32[0] = v9 * this->var20.var0;
    }

    if (this->var26)
    {
      v10 = v9 * this->var20.var1;
    }

    v6.n128_f32[1] = v10;
    *&v8 = vadd_f32(*&v8, v6.n128_u64[0]);
    this->var22 = vsub_f32(this->var22, v6.n128_u64[0]);
  }

  else if (!this->var23)
  {
    LODWORD(v11) = *(a2 + 21);
    if (this->var25)
    {
      v11 = (v7 * this->var20.var0) + (this->var22.var0 * (1.0 - v7));
    }

    *&v8 = v11;
    if (this->var26)
    {
      *(&v8 + 1) = (v7 * this->var20.var1) + (this->var22.var1 * (1.0 - v7));
    }
  }

  v6.n128_u64[0] = v8;
  v13 = v8;
  v14 = v6;
  v15 = v6;
  SKCNode::setSize(a2, &v15);
  this->var19 = v7;
  if ((COERCE_UNSIGNED_INT(v7 + -1.0) & 0x60000000) == 0)
  {
    v12.n128_u64[1] = v14.n128_u64[1];
    if (this->var24)
    {
      v12.n128_u64[0] = vadd_f32(v13, this->var22);
      v15 = v12;
      SKCNode::setSize(a2, &v15);
      this->var22.var0 = 0.0;
      this->var22.var1 = 0.0;
    }

    else if (!this->var23)
    {
      v15 = v14;
      SKCNode::setSize(a2, &v15);
    }

    v12.n128_u64[0] = v3;
    SKCAction::didFinishWithTargetAtTime(this, a2, v12);
  }
}

__n128 SKCResize::cpp_willStartWithTargetAtTime(SKCResize *this, SKCNode *a2, double a3)
{
  SKCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  this->var19 = 0.0;
  if (this->var24)
  {
    this->var22 = this->var20;
  }

  else
  {
    result = *(a2 + 21);
    this->var22 = result.n128_u64[0];
  }

  return result;
}

void setSKPhysicsDefaults(PKPhysicsBody *a1)
{
  v1 = a1;
  [(PKPhysicsBody *)v1 set_allowSleep:1];
  [(PKPhysicsBody *)v1 setCollisionBitMask:0xFFFFFFFFLL];
  [(PKPhysicsBody *)v1 setCategoryBitMask:0xFFFFFFFFLL];
}

void sub_21C4931B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21C4936E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_21C493A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_21C4944E0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C4946D0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C494804(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C494910(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C494A7C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C494DB8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_21C49509C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C495CA4(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_21C498F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_21C49902C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_21C49913C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  _Block_object_dispose(&a17, 8);
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__6(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__6(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_21C499C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  v36 = *(a18 + 8);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(a1);
}

std::string *jet_command_buffer::set_fragment_constant_value(uint64_t a1, std::string *__str, double a3)
{
  v9 = 23;
  v6 = *(a1 + 16);
  if (v6 >= *(a1 + 24))
  {
    v7 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(a1 + 8, &v9);
  }

  else
  {
    *v6 = &unk_282E15828;
    *(v6 + 8) = 23;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 16) = 0;
    *(v6 + 64) = 0;
    v7 = v6 + 192;
    *(v6 + 96) = 0;
  }

  *(a1 + 16) = v7;
  result = std::string::operator=((v7 - 176), __str);
  *(v7 - 64) = a3;
  return result;
}

std::string *jet_command_buffer::set_fragment_constant_value(uint64_t a1, std::string *__str, double a3, double a4)
{
  v11 = 26;
  v8 = *(a1 + 16);
  if (v8 >= *(a1 + 24))
  {
    v9 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(a1 + 8, &v11);
  }

  else
  {
    *v8 = &unk_282E15828;
    *(v8 + 8) = 26;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    *(v8 + 16) = 0;
    *(v8 + 64) = 0;
    v9 = v8 + 192;
    *(v8 + 96) = 0;
  }

  *(a1 + 16) = v9;
  result = std::string::operator=((v9 - 176), __str);
  *(v9 - 64) = a3;
  *(v9 - 56) = a4;
  return result;
}

__n128 jet_command_buffer::set_fragment_constant_value(uint64_t a1, std::string *__str, __n128 a3, __n128 a4, __n128 a5)
{
  v13 = 27;
  v7 = *(a1 + 16);
  if (v7 >= *(a1 + 24))
  {
    v8 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(a1 + 8, &v13);
  }

  else
  {
    *v7 = &unk_282E15828;
    *(v7 + 8) = 27;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 16) = 0;
    *(v7 + 64) = 0;
    v8 = v7 + 192;
    *(v7 + 96) = 0;
  }

  *(a1 + 16) = v8;
  std::string::operator=((v8 - 176), __str);
  *(v8 - 64) = a3;
  *(v8 - 48) = a4;
  result = a5;
  *(v8 - 32) = a5;
  return result;
}

__n128 jet_command_buffer::set_fragment_constant_value(uint64_t a1, std::string *__str, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v15 = 28;
  v8 = *(a1 + 16);
  if (v8 >= *(a1 + 24))
  {
    v9 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(a1 + 8, &v15);
  }

  else
  {
    *v8 = &unk_282E15828;
    *(v8 + 8) = 28;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    *(v8 + 16) = 0;
    *(v8 + 64) = 0;
    v9 = v8 + 192;
    *(v8 + 96) = 0;
  }

  *(a1 + 16) = v9;
  std::string::operator=((v9 - 176), __str);
  *(v9 - 64) = a3;
  *(v9 - 48) = a4;
  result = a6;
  *(v9 - 32) = a5;
  *(v9 - 16) = a6;
  return result;
}

uint64_t std::pair<std::string,std::shared_ptr<jet_buffer_pool>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<jet_buffer_pool>>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::shared_ptr<jet_buffer_pool>>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_21C49BE08(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<jet_program>::shared_ptr[abi:ne200100]<jet_program,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<jet_program *,std::shared_ptr<jet_program>::__shared_ptr_default_delete<jet_program,jet_program>,std::allocator<jet_program>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CF0A160);
}

uint64_t std::__shared_ptr_pointer<jet_program *,std::shared_ptr<jet_program>::__shared_ptr_default_delete<jet_program,jet_program>,std::allocator<jet_program>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<jet_program *,std::shared_ptr<jet_program>::__shared_ptr_default_delete<jet_program,jet_program>,std::allocator<jet_program>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void SKCTransformNode::SKCTransformNode(SKCTransformNode *this)
{
  SKCNode::SKCNode(this);
  *v1 = &unk_282E17D48;
  *(v1 + 560) = 0;
  v2 = MEMORY[0x277D860B8];
  v3 = *(MEMORY[0x277D860B8] + 16);
  *(v1 + 576) = *MEMORY[0x277D860B8];
  *(v1 + 592) = v3;
  v4 = *(v2 + 48);
  *(v1 + 608) = *(v2 + 32);
  *(v1 + 624) = v4;
  v6 = *MEMORY[0x277D860B0];
  v5 = *(MEMORY[0x277D860B0] + 16);
  v7 = *(MEMORY[0x277D860B0] + 32);
  LODWORD(v8) = HIDWORD(*(MEMORY[0x277D860B0] + 16));
  v9 = COERCE_FLOAT(*(MEMORY[0x277D860B0] + 40));
  v10 = v9 + (COERCE_FLOAT(*MEMORY[0x277D860B0]) + v8);
  if (v10 >= 0.0)
  {
    v18 = sqrtf(v10 + 1.0);
    v19 = v18 + v18;
    v20 = vrecpe_f32(COERCE_UNSIGNED_INT(v18 + v18));
    v21 = vmul_f32(v20, vrecps_f32(COERCE_UNSIGNED_INT(v18 + v18), v20));
    v21.i32[0] = vmul_f32(v21, vrecps_f32(COERCE_UNSIGNED_INT(v18 + v18), v21)).u32[0];
    *&v32 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(v5, v5, 8uLL), *&v7), vext_s8(*&v7, *&vextq_s8(v6, v6, 8uLL), 4uLL)), v21.f32[0]);
    v22.f32[0] = *&v6.i32[1] - *v5.i32;
    v22.f32[1] = v19;
    v21.i32[1] = 0.25;
    v34 = vmul_f32(v22, v21);
  }

  else if (*v6.i32 < v8 || *v6.i32 < v9)
  {
    v12 = 1.0 - *v6.i32;
    if (v8 >= v9)
    {
      v35 = sqrtf(v8 + (v12 - v9));
      *&v36 = v35 + v35;
      v37 = vrecpe_f32(v36);
      v38 = vmul_f32(v37, vrecps_f32(v36, v37));
      v39.i32[0] = vmul_f32(v38, vrecps_f32(v36, v38)).u32[0];
      v38.f32[0] = *&v6.i32[1] + *v5.i32;
      v38.i32[1] = v36;
      v34 = vmul_n_f32(vext_s8(vadd_f32(*&v7, vdup_laneq_s32(v5, 2)), vsub_f32(*&v7, *&vextq_s8(v6, v6, 8uLL)), 4uLL), v39.f32[0]);
      v39.i32[1] = 0.25;
      *&v32 = vmul_f32(v38, v39);
    }

    else
    {
      v13 = sqrtf(v9 + (v12 - v8));
      v14.f32[0] = v13 + v13;
      v15 = vrecpe_f32(COERCE_UNSIGNED_INT(v13 + v13));
      v16 = vmul_f32(v15, vrecps_f32(COERCE_UNSIGNED_INT(v13 + v13), v15));
      v16.i32[0] = vmul_f32(v16, vrecps_f32(COERCE_UNSIGNED_INT(v13 + v13), v16)).u32[0];
      *&v32 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(v6, v6, 8uLL), *&vextq_s8(v5, v5, 8uLL)), *&v7), v16.f32[0]);
      v14.f32[1] = *&v6.i32[1] - *v5.i32;
      __asm { FMOV            V0.2S, #0.25 }

      _D0.i32[1] = v16.i32[0];
      v34 = vmul_f32(v14, _D0);
    }
  }

  else
  {
    v23 = sqrtf(*v6.i32 + ((1.0 - v8) - v9));
    v24.f32[0] = v23 + v23;
    v25 = vrecpe_f32(v24.u32[0]);
    v26 = vmul_f32(v25, vrecps_f32(v24.u32[0], v25));
    LODWORD(v27) = vmul_f32(v26, vrecps_f32(v24.u32[0], v26)).u32[0];
    v24.f32[1] = *&v6.i32[1] + *v5.i32;
    __asm { FMOV            V5.2S, #0.25 }

    _D5.f32[1] = v27;
    *&v32 = vmul_f32(v24, _D5);
    v33.i32[0] = vadd_f32(*&vextq_s8(v6, v6, 8uLL), *&v7).u32[0];
    v33.i32[1] = vsub_f32(vdup_laneq_s32(v5, 2), *&v7).i32[1];
    v34 = vmul_n_f32(v33, v27);
  }

  *(&v32 + 1) = v34;
  *(v1 + 640) = v32;
}

void SKCTransformNode::~SKCTransformNode(id *this)
{
  SKCNode::~SKCNode(this);

  JUMPOUT(0x21CF0A160);
}

void SKCTransformNode::setQuaternion(SKCNode *this, simd_quatf a2)
{
  *(this + 40) = a2;
  *(this + 560) = 1;
  *(this + 368) = 1;
  SKCNode::setDirty(this);
}

__n128 SKCTransformNode::_getRotationMatrix(SKCTransformNode *this)
{
  if (*(this + 560))
  {
    _Q4 = *(this + 40);
    result = *MEMORY[0x277D860B8];
    v2 = *(MEMORY[0x277D860B8] + 16);
    v3 = *(MEMORY[0x277D860B8] + 32);
    v4 = *(MEMORY[0x277D860B8] + 48);
    _S5 = COERCE_FLOAT(HIDWORD(*(this + 80))) + COERCE_FLOAT(HIDWORD(*(this + 80)));
    __asm { FMLS            S7, S5, V4.S[1] }

    _S16 = COERCE_FLOAT(*(this + 81)) + COERCE_FLOAT(*(this + 81));
    __asm { FMLS            S7, S16, V4.S[2] }

    result.n128_u32[0] = _S7;
    _S7 = *&_Q4 + *&_Q4;
    __asm { FMLA            S18, S7, V4.S[1] }

    result.n128_u32[1] = _S18;
    __asm { FMLA            S18, S7, V4.S[2] }

    result.n128_u32[2] = _S18;
    __asm { FMLA            S18, S7, V4.S[1] }

    LODWORD(v2) = _S18;
    __asm { FMLS            S18, S16, V4.S[2] }

    DWORD1(v2) = _S18;
    __asm { FMLA            S18, S5, V4.S[2] }

    DWORD2(v2) = _S18;
    __asm { FMLA            S17, S7, V4.S[3] }

    LODWORD(v3) = _S17;
    __asm { FMLA            S16, S5, V4.S[2] }

    DWORD1(v3) = _S16;
    __asm { FMLS            S6, S5, V4.S[1] }

    DWORD2(v3) = _S6;
    *(this + 36) = result;
    *(this + 37) = v2;
    *(this + 38) = v3;
    *(this + 39) = v4;
    *(this + 560) = 0;
  }

  else
  {
    return *(this + 36);
  }

  return result;
}

double SKCTransformNode::getTransformMatrix(__n128 *this, double a2, double a3, __n128 a4, __n128 a5, double a6, double a7, __n128 a8, __n128 a9)
{
  v10 = this[23].n128_u8[0];
  *v11.i64 = SKCNode::getTransformMatrix(this, a2, a3, a4, a5, a6, a7, a8, a9);
  if (v10 == 1)
  {
    v26 = v12;
    v27 = v11;
    v24 = v14;
    v25 = v13;
    RotationMatrix = SKCTransformNode::_getRotationMatrix(this);
    v16 = 0;
    v28[0] = RotationMatrix;
    v28[1] = v17;
    v28[2] = v18;
    v28[3] = v19;
    do
    {
      v29[v16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(v28[v16])), v26, *&v28[v16], 1), v25, v28[v16], 2), v24, v28[v16], 3);
      ++v16;
    }

    while (v16 != 4);
    v11.i64[0] = *&v29[0];
    v20 = v29[1];
    v21 = v29[2];
    v22 = v29[3];
    this[24] = v29[0];
    this[25] = v20;
    this[26] = v21;
    this[27] = v22;
  }

  return *v11.i64;
}

void SKCLabelNode::SKCLabelNode(SKCLabelNode *this)
{
  SKCNode::SKCNode(this);
  *v2 = &unk_282E17E48;
  *(v2 + 560) = 0;
  *(v2 + 568) = 0u;
  *(v2 + 584) = @"HelveticaNeue-UltraLight";
  *(v2 + 592) = 1107296256;
  __asm { FMOV            V1.4S, #1.0 }

  *(v2 + 608) = _Q1;
  *(v2 + 624) = 0u;
  __asm { FMOV            V1.2S, #1.0 }

  *(v2 + 640) = _Q1;
  *(v2 + 648) = 0u;
  *(v2 + 664) = 1;
  *(v2 + 672) = 4;
  *(v2 + 680) = 0;
  *(v2 + 688) = 0;
  *(v2 + 704) = 0;
  *(v2 + 696) = 0;
  *(v2 + 712) = 257;
  *(v2 + 720) = 0u;
  *(v2 + 736) = 0u;
  v8 = objc_opt_new();
  v9 = *(this + 70);
  *(this + 70) = v8;

  v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v11 = dispatch_queue_create("com.apple.spritekit.labelSyncQueue", v10);
  v12 = *(this + 93);
  *(this + 93) = v11;
}

void sub_21C49CE40(_Unwind_Exception *a1)
{
  v3 = *(v1 + 720);
  if (v3)
  {
    *(v1 + 728) = v3;
    operator delete(v3);
  }

  SKCNode::~SKCNode(v1);
  _Unwind_Resume(a1);
}

void SKCLabelNode::~SKCLabelNode(SKCLabelNode *this)
{
  *this = &unk_282E17E48;
  v2 = *(this + 90);
  v3 = *(this + 91);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 88))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 90);
  }

  *(this + 91) = v2;
  v4 = *(this + 86);
  if (v4)
  {
    CFRelease(v4);
    *(this + 86) = 0;
  }

  v5 = *(this + 93);
  *(this + 93) = 0;

  v6 = *(this + 90);
  if (v6)
  {
    *(this + 91) = v6;
    operator delete(v6);
  }

  SKCNode::~SKCNode(this);
}

{
  SKCLabelNode::~SKCLabelNode(this);

  JUMPOUT(0x21CF0A160);
}

void SKCLabelNode::setFont(SKCLabelNode *this, CFTypeRef cf)
{
  v4 = *(this + 86);
  if (v4)
  {
    CFRelease(v4);
    *(this + 86) = 0;
  }

  if (cf)
  {
    CFRetain(cf);
    *(this + 86) = cf;
  }

  *(this + 356) = 1;

  SKCNode::setDirty(this);
}

void SKCLabelNode::setText(SKCLabelNode *this, NSString *a2)
{
  v5 = a2;
  if (![(NSString *)v5 isEqualToString:*(this + 71)])
  {
    v3 = [(NSString *)v5 copy];
    v4 = *(this + 71);
    *(this + 71) = v3;

    *(this + 712) = 1;
    SKCNode::setDirty(this);
  }
}

void SKCLabelNode::setNumberOfLines(SKCNode *this, int a2)
{
  v2 = a2 & ~(a2 >> 31);
  if (v2 != *(this + 166))
  {
    *(this + 712) = 1;
    *(this + 166) = v2;
    SKCNode::setDirty(this);
  }
}

void SKCLabelNode::setLineBreakNode(SKCNode *this, NSLineBreakMode a2)
{
  if (*(this + 84) != a2)
  {
    *(this + 84) = a2;
    SKCNode::setDirty(this);
  }
}

void SKCLabelNode::setPreferredMaxLayoutWidth(SKCNode *this, float a2)
{
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  if (a2 != *(this + 170))
  {
    *(this + 170) = a2;
    SKCNode::setDirty(this);
  }
}

void SKCLabelNode::setAttributedString(SKCLabelNode *this, NSAttributedString *a2)
{
  v5 = a2;
  if (![(NSAttributedString *)v5 isEqualToAttributedString:*(this + 72)])
  {
    v3 = [(NSAttributedString *)v5 copy];
    v4 = *(this + 72);
    *(this + 72) = v3;

    *(this + 712) = 1;
    SKCNode::setDirty(this);
  }
}

char *SKCLabelNode::addRenderableChildren(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 744);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN12SKCLabelNode12rebuildLabelEP13SKCRenderInfo_block_invoke;
  v10[3] = &__block_descriptor_48_e5_v8__0l;
  v10[4] = a1;
  v10[5] = a2;
  dispatch_sync(v6, v10);
  v7 = *(a1 + 728);
  v8 = *(a1 + 720);
  if (v8 != v7)
  {
    std::vector<SKCNode *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<SKCSpriteNode **>,std::__wrap_iter<SKCSpriteNode **>>(a3, *(a3 + 8), v8, v7, v7 - v8);
  }

  return SKCNode::addRenderableChildren(a1, a2, a3);
}

void SKCLabelNode::rebuildLabel(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 744);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = ___ZN12SKCLabelNode12rebuildLabelEP13SKCRenderInfo_block_invoke;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_sync(v2, v3);
}

double SKCLabelNode::getBoundingBox(__n128 *this)
{
  v2 = this[46].n128_u64[1];
  block.columns[0].i64[0] = MEMORY[0x277D85DD0];
  block.columns[0].i64[1] = 3221225472;
  block.columns[1].i64[0] = ___ZN12SKCLabelNode12rebuildLabelEP13SKCRenderInfo_block_invoke;
  block.columns[1].i64[1] = &__block_descriptor_48_e5_v8__0l;
  block.columns[2] = this;
  dispatch_sync(v2, &block);
  v3 = this[45].n128_u64[0];
  v4 = this[45].n128_u64[1];
  if (v3 == v4)
  {
    *&result = SKCNode::getBoundingBox(this).n128_u64[0];
  }

  else
  {
    v19 = *SKCBoundingBoxEmpty;
    do
    {
      v5 = *v3++;
      *v6.i64 = (*(*v5 + 120))(v5);
      block.columns[0] = v6;
      block.columns[1] = v7;
      block.columns[2] = v8;
      block.columns[3] = v9;
      v19.columns[0] = SKCBoundingBoxUnion(&v19, &block);
      v19.columns[1] = v10;
      v19.columns[2] = v11;
      v19.columns[3] = v12;
    }

    while (v3 != v4);
    (*(this->n128_u64[0] + 104))(this);
    v17 = 0;
    v20 = v19;
    do
    {
      block.columns[v17] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*&v20.columns[v17])), v14, *v20.columns[v17].f32, 1), v15, v20.columns[v17], 2), v16, v20.columns[v17], 3);
      ++v17;
    }

    while (v17 != 4);
    return *block.columns[0].i64;
  }

  return result;
}

float32x2_t SKCLabelNode::rebuildPixelSize(float32x2_t *a1)
{
  if (!*&a1[88])
  {
    v1 = vadd_f32(a1[80], 0xC0000000C0000000);
    result = vmul_f32(v1, v1);
    result.f32[0] = sqrtf(vaddv_f32(result));
    if (result.f32[0] > 0.00000011921)
    {
      result = 0x4000000040000000;
      a1[80] = 0x4000000040000000;
      a1[89].i8[0] = 1;
    }
  }

  return result;
}

void SKCLabelNode::rebuildFont(SKCLabelNode *this)
{
  if (*(this + 713) == 1)
  {
    *(this + 712) = 1;
    v2 = [SKBitmapFont fontForFileNamed:*(this + 73)];
    v3 = *(this + 88);
    *(this + 88) = v2;

    if (*(this + 88))
    {

      SKCLabelNode::setFont(this, 0);
    }

    else
    {
      v4 = CTFontDescriptorCreateWithNameAndSize(*(this + 73), *(this + 148));
      MatchingFontDescriptor = CTFontDescriptorCreateMatchingFontDescriptor(v4, 0);
      if (MatchingFontDescriptor)
      {
        v6 = MatchingFontDescriptor;
        v7 = CTFontCreateWithFontDescriptor(MatchingFontDescriptor, *(this + 148), 0);
        CFRelease(v6);
      }

      else
      {
        NSLog(&cfstr_SklabelnodeFon.isa, *(this + 73));
        v7 = CTFontCreateWithFontDescriptor(v4, *(this + 148), 0);
      }

      CFRelease(v4);
      SKCLabelNode::setFont(this, v7);
      if (v7)
      {

        CFRelease(v7);
      }
    }
  }
}

void SKCLabelNode::rebuildText(SKCLabelNode *this)
{
  v101 = *MEMORY[0x277D85DE8];
  if (*(this + 712) == 1)
  {
    v2 = (this + 720);
    v3 = *(this + 90);
    v4 = *(this + 91);
    if (v3 != v4)
    {
      do
      {
        if (*v3)
        {
          (*(**v3 + 88))(*v3);
        }

        ++v3;
      }

      while (v3 != v4);
      v3 = *v2;
    }

    *(this + 91) = v3;
    [*(this + 1) removeChildrenInArray:*(this + 70)];
    [*(this + 70) removeAllObjects];
    v5 = *(this + 87);
    if (v5)
    {
      *(this + 87) = 0;
    }

    v6 = *(this + 71);
    if (v6 || *(this + 72))
    {
      if (*(this + 88))
      {
        v7 = [v6 length];
        if (v7)
        {
          v8 = v7;
          v9 = 0;
          v10 = 0;
          v11 = 0;
          x = 0.0;
          y = 0.0;
          width = 0.0;
          height = 0.0;
          v16 = 0.0;
          v17 = 0.0;
          do
          {
            v18 = [*(this + 71) characterAtIndex:v9];
            v19 = [*(this + 88) spriteForCharacterNamed:v18];

            if (v19)
            {
              [*(this + 88) kerningForCharacterNamed:v10 followedBy:v18];
              v21 = v20;
              [v19 position];
              v22 = v16 + v21;
              [v19 setPosition:v22];
              [v19 setZPosition:0.0];
              v23 = [MEMORY[0x277D75348] colorWithRed:COERCE_FLOAT(*(this + 19)) green:COERCE_FLOAT(HIDWORD(*(this + 38))) blue:COERCE_FLOAT(*(this + 39)) alpha:COERCE_FLOAT(HIDWORD(*(this + 19)))];
              [v19 setColor:v23];

              [v19 setColorBlendFactor:*(this + 80)];
              [*(this + 1) addChild:v19];
              [*(this + 70) addObject:v19];
              [*(this + 88) advanceForCharacterNamed:v18];
              v25 = v24;
              if (!v9)
              {
                [v19 size];
                v17 = fmax(v25 - v26, 0.0);
              }

              [v19 frame];
              v115.origin.x = v27;
              v115.origin.y = v28;
              v115.size.width = v29;
              v115.size.height = v30;
              v106.origin.x = x;
              v106.origin.y = y;
              v106.size.width = width;
              v106.size.height = height;
              v107 = CGRectUnion(v106, v115);
              x = v107.origin.x;
              y = v107.origin.y;
              width = v107.size.width;
              height = v107.size.height;
              v16 = v22 + v25;
              v10 = v18;
            }

            ++v9;
            v11 = v19;
          }

          while (v8 != v9);
          if (v19)
          {
            [v19 calculateAccumulatedFrame];
            v16 = fmax(v16, CGRectGetMaxX(v108));
          }
        }

        else
        {
          v19 = 0;
          y = 0.0;
          height = 0.0;
          v17 = 0.0;
          v16 = 0.0;
        }

        v60 = *(this + 81);
        v61 = 1.0;
        if (v60 != 2)
        {
          v61 = 0.0;
        }

        if (v60)
        {
          v62 = v61;
        }

        else
        {
          v62 = 0.5;
        }

        v63 = *(this + 82);
        v64 = -y;
        if (v63 != 3)
        {
          v65 = -(y - height * -0.5);
          if (v63 != 1)
          {
            v65 = 0.0;
          }

          if (v63 == 2)
          {
            v64 = v64 - height;
          }

          else
          {
            v64 = v65;
          }
        }

        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v66 = *(this + 70);
        v67 = [v66 countByEnumeratingWithState:&v92 objects:v100 count:16];
        if (v67)
        {
          v68 = *v93;
          do
          {
            for (i = 0; i != v67; ++i)
            {
              if (*v93 != v68)
              {
                objc_enumerationMutation(v66);
              }

              v70 = *(*(&v92 + 1) + 8 * i);
              [v70 position];
              v72 = v71;
              [v70 position];
              [v70 setPosition:{v72 + -(v17 + v16) * v62, v64 + v73}];
            }

            v67 = [v66 countByEnumeratingWithState:&v92 objects:v100 count:16];
          }

          while (v67);
        }
      }

      else
      {
        v31 = *(this + 72);
        if (!v31)
        {
          DeviceRGB = CGColorSpaceCreateDeviceRGB();
          v33 = *(this + 38);
          *components = vcvtq_f64_f32(*v33.f32);
          v99 = vcvt_hight_f64_f32(v33);
          v34 = CGColorCreate(DeviceRGB, components);
          CFRelease(DeviceRGB);
          v35 = *MEMORY[0x277CC49C0];
          keys[0] = *MEMORY[0x277CC4838];
          keys[1] = v35;
          values[0] = *(this + 86);
          values[1] = v34;
          v36 = CFDictionaryCreate(0, keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v31 = CFAttributedStringCreate(0, *(this + 71), v36);
          CFRelease(v36);
          CFRelease(v34);
        }

        v37 = *(this + 166);
        if (v37 && v37 < 2)
        {
          v38 = CTTypesetterCreateWithAttributedString(v31);
          v102.location = 0;
          v102.length = 0;
          Line = CTTypesetterCreateLine(v38, v102);
          CFRelease(v38);
          BoundsWithOptions = CTLineGetBoundsWithOptions(Line, 8uLL);
          v110 = CGRectIntegral(BoundsWithOptions);
          v40 = v110.origin.x;
          v41 = v110.origin.y;
          v42 = v110.size.width;
          v43 = v110.size.height;
          Frame = 0;
        }

        else
        {
          v45 = CTFramesetterCreateWithAttributedString(v31);
          v46 = v45;
          v47 = *(this + 170);
          v48 = v47;
          v49 = v47 == 0.0;
          v50 = 0x7FEFFFFFFFFFFFFFLL;
          if (v49)
          {
            v51 = 1.79769313e308;
          }

          else
          {
            v51 = v48;
          }

          v103.location = 0;
          v103.length = 0;
          v52 = 0x7FEFFFFFFFFFFFFFLL;
          v53 = CTFramesetterSuggestFrameSizeWithConstraints(v45, v103, 0, *&v50, 0).height;
          v54 = *(this + 166);
          v55 = v53 * (v54 + 1);
          v56 = 1.79769313e308;
          if (v54)
          {
            v56 = v55;
          }

          v104.location = 0;
          v104.length = 0;
          v57 = v51;
          v58 = CTFramesetterSuggestFrameSizeWithConstraints(v46, v104, 0, *(&v56 - 1), 0);
          v111.size.width = v58.width;
          v111.size.height = v58.height;
          v111.origin.x = 0.0;
          v111.origin.y = 0.0;
          v112 = CGRectIntegral(v111);
          v40 = v112.origin.x;
          v41 = v112.origin.y;
          v42 = v112.size.width;
          v43 = v112.size.height;
          v59 = CGPathCreateWithRect(v112, 0);
          v105.location = 0;
          v105.length = 0;
          Frame = CTFramesetterCreateFrame(v46, v105, v59, 0);
          CGPathRelease(v59);
          CFRelease(v46);
          Line = 0;
        }

        CFRelease(v31);
        if ([*(this + 72) length])
        {
          components[0] = 0.0;
          components[1] = 0.0;
          v19 = [*(this + 72) attribute:*MEMORY[0x277D74160] atIndex:0 effectiveRange:components];
        }

        else
        {
          v19 = 0;
        }

        [v19 floatValue];
        v75 = fabsf(v74);
        v76 = v74 < 0.0;
        v77 = v74 <= 0.0;
        v78 = 1.0;
        if (v76)
        {
          v78 = v75;
        }

        if (v77)
        {
          v79 = v78;
        }

        else
        {
          v79 = v75;
        }

        v80 = ceil(v42) + v79 * 2.0;
        if (v80 > 0.0)
        {
          v81 = ceil(v43) + v79 * 2.0;
          if (v81 > 0.0)
          {
            v82 = v80 * COERCE_FLOAT(*(this + 80));
            v83 = v81 * COERCE_FLOAT(HIDWORD(*(this + 80)));
            v84 = malloc_type_malloc(4 * v83 * v82, 0x100004077774924uLL);
            v85 = CGColorSpaceCreateDeviceRGB();
            v86 = CGBitmapContextCreate(v84, v82, v83, 8uLL, 4 * v82, v85, 0x4001u);
            CGContextSetRenderingIntent(v86, kCGRenderingIntentPerceptual);
            CGContextSetAllowsAntialiasing(v86, 1);
            CGContextSetShouldAntialias(v86, 1);
            CGContextSetInterpolationQuality(v86, kCGInterpolationHigh);
            CGContextSetAllowsFontSmoothing(v86, 1);
            CGContextSetShouldSmoothFonts(v86, 1);
            CGContextSetAllowsFontSubpixelPositioning(v86, 1);
            CGContextSetShouldSubpixelPositionFonts(v86, 1);
            CGContextSetAllowsFontSubpixelQuantization(v86, 1);
            CGContextSetShouldSubpixelQuantizeFonts(v86, 1);
            CGColorSpaceRelease(v85);
            v113.origin.x = 0.0;
            v113.origin.y = 0.0;
            v113.size.width = v82;
            v113.size.height = v83;
            CGContextClearRect(v86, v113);
            if (*(this + 159) > 0.0)
            {
              v87 = CGColorSpaceCreateDeviceRGB();
              v88 = *(this + 39);
              *components = vcvtq_f64_f32(*v88.f32);
              v99 = vcvt_hight_f64_f32(v88);
              v89 = CGColorCreate(v87, components);
              CGContextSetFillColorWithColor(v86, v89);
              v114.origin.x = 0.0;
              v114.origin.y = 0.0;
              v114.size.width = v82;
              v114.size.height = v83;
              CGContextFillRect(v86, v114);
              CGColorRelease(v89);
              CGColorSpaceRelease(v87);
            }

            CGContextScaleCTM(v86, COERCE_FLOAT(*(this + 80)), -COERCE_FLOAT(HIDWORD(*(this + 80))));
            CGContextTranslateCTM(v86, 0.0, -v81);
            CGContextTranslateCTM(v86, v79 - v40, v79 - v41);
            if (Line)
            {
              CTLineDraw(Line, v86);
            }

            else if (Frame)
            {
              CTFrameDraw(Frame, v86);
            }

            v90 = [SKTexture _textureByTransferingData:v84 size:v82, v83];
            v91 = *(this + 87);
            *(this + 87) = v90;

            CGContextRelease(v86);
            operator new();
          }
        }

        if (Line)
        {
          CFRelease(Line);
        }

        if (Frame)
        {
          CFRelease(Frame);
        }
      }

      *(this + 712) = 0;
    }
  }
}

void ___ZN12SKCLabelNode12rebuildLabelEP13SKCRenderInfo_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  SKCLabelNode::rebuildFont(v2);
  if (*(a1 + 40))
  {
    if (!*&v2[88])
    {
      v3 = vadd_f32(v2[80], 0xC0000000C0000000);
      if (sqrtf(vaddv_f32(vmul_f32(v3, v3))) > 0.00000011921)
      {
        v2[80] = 0x4000000040000000;
        v2[89].i8[0] = 1;
      }
    }
  }

  SKCLabelNode::rebuildText(v2);
}

void SKCLabelNode::setColor(SKCNode *a1, _OWORD *a2)
{
  SKCNode::setColor(a1, a2);
  *(a1 + 712) = 1;

  SKCNode::setDirty(a1);
}

void SKCLabelNode::setColorBlendFactor(SKCLabelNode *this, float *a2)
{
  SKCNode::setColorBlendFactor(this, a2);
  *(this + 712) = 1;

  SKCNode::setDirty(this);
}

char *std::vector<SKCNode *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<SKCSpriteNode **>,std::__wrap_iter<SKCSpriteNode **>>(void *a1, char *__src, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 <= (v9 - v10) >> 3)
  {
    v16 = (v10 - __src) >> 3;
    if (v16 >= a5)
    {
      v20 = &__src[8 * a5];
      v21 = &v10[-a5];
      v22 = a1[1];
      while (v21 < v10)
      {
        v23 = *v21++;
        *v22++ = v23;
      }

      a1[1] = v22;
      if (v10 != v20)
      {
        memmove(&__src[8 * a5], __src, v10 - v20);
      }

      v24 = &v7[a5];
      v25 = __src;
      do
      {
        v26 = *v7++;
        *v25++ = v26;
      }

      while (v7 != v24);
    }

    else
    {
      v17 = (a3 + v10 - __src);
      v18 = a1[1];
      if (v17 == a4)
      {
        v19 = a1[1];
      }

      else
      {
        v36 = (a3 + v10 - __src);
        v19 = a1[1];
        do
        {
          v37 = *v36++;
          *v19 = v37;
          v19 += 8;
          ++v18;
        }

        while (v36 != a4);
      }

      a1[1] = v18;
      if (v16 >= 1)
      {
        v38 = &__src[8 * a5];
        v39 = &v18[-a5];
        v40 = v18;
        while (v39 < v10)
        {
          v41 = *v39++;
          *v40++ = v41;
        }

        a1[1] = v40;
        if (v19 != v38)
        {
          memmove(&__src[8 * a5], __src, v18 - v38);
        }

        if (v10 != __src)
        {
          v42 = __src;
          do
          {
            v43 = *v7++;
            *v42++ = v43;
          }

          while (v7 != v17);
        }
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + ((v10 - *a1) >> 3);
  if (v12 >> 61)
  {
    std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
  }

  v13 = __src - v11;
  v14 = v9 - v11;
  if (v14 >> 2 > v12)
  {
    v12 = v14 >> 2;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    v15 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PKCLineSeg *>>(a1, v15);
  }

  v27 = 8 * (v13 >> 3);
  v28 = 8 * a5;
  v29 = v27;
  do
  {
    v30 = *v7++;
    *v29++ = v30;
    v28 -= 8;
  }

  while (v28);
  memcpy((v27 + 8 * a5), __src, a1[1] - __src);
  v31 = *a1;
  v32 = v27 + 8 * a5 + a1[1] - __src;
  a1[1] = __src;
  v33 = (__src - v31);
  v34 = (v27 - (__src - v31));
  memcpy(v34, v31, v33);
  v35 = *a1;
  *a1 = v34;
  a1[1] = v32;
  a1[2] = 0;
  if (v35)
  {
    operator delete(v35);
  }

  return v27;
}

uint64_t SKCRendererEnsureBufferPoolCapacity(uint64_t a1, int a2, int a3)
{
  v4 = *(*a1 + 16);
  v5 = a3 + a2;
  if (v5 < v4)
  {
    return 1;
  }

  if (v5 > 0xAAA8)
  {
    return 0;
  }

  kdebug_trace();
  (***a1)();
  return 1;
}

uint64_t SKCRendererEnsureBufferCapacity(void *a1, int a2, int a3)
{
  v4 = *(*a1 + 48);
  v5 = a3 + a2;
  if (v5 < v4)
  {
    return 1;
  }

  if (v5 > 0xAAA8)
  {
    return 0;
  }

  v8 = v5 * 1.5;
  if (v8 < (2 * v4))
  {
    v8 = (2 * v4);
  }

  if (v8 > 43688.0)
  {
    v8 = 43688.0;
  }

  v9 = v8;
  kdebug_trace();
  (*(**a1 + 32))(*a1, v9);
  return 1;
}

void SKCRendererSetup(void)
{
  if (SKCRendererSetup(void)::onceToken != -1)
  {
    SKCRendererSetup();
  }
}

void ___Z16SKCRendererSetupv_block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  jet_setClientLabel(&cfstr_ComAppleSprite_9.isa);
  v0 = dispatch_queue_create("SKCRenderer_resource_queue", 0);
  v1 = SKCRenderer_resource_queue;
  SKCRenderer_resource_queue = v0;

  if (SKGetShouldEnableMetal())
  {
    SKGetGlobalMetalDevice();
    if (objc_claimAutoreleasedReturnValue())
    {
      operator new();
    }

    Context = jet_createContext();
    std::shared_ptr<jet_context>::shared_ptr[abi:ne200100]<jet_context,0>(v3, Context);
  }

  SKEnsureGlobalGLShareContext();
  operator new();
}

void sub_21C49E90C(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void SKCPerformResourceOperation(void *a1)
{
  v1 = a1;
  if (SKCRendererSetup(void)::onceToken != -1)
  {
    SKCRendererSetup();
  }

  v2 = SKCRenderer_resource_queue;
  if (SKCRenderer_resource_queue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___Z27SKCPerformResourceOperationU13block_pointerFvNSt3__110shared_ptrI11jet_contextEEE_block_invoke;
    block[3] = &unk_2783100C8;
    v4 = v1;
    dispatch_sync(v2, block);
  }
}

void ___Z27SKCPerformResourceOperationU13block_pointerFvNSt3__110shared_ptrI11jet_contextEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SKCRendererGlobals::GetInstance(void)::instance;
  v3 = qword_27CDDCF98;
  if (qword_27CDDCF98)
  {
    atomic_fetch_add_explicit((qword_27CDDCF98 + 8), 1uLL, memory_order_relaxed);
  }

  (*(v1 + 16))(v1, &v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_21C49EAE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SKCPerformResourceOperationAsync(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (SKCRendererSetup(void)::onceToken != -1)
  {
    SKCRendererSetup();
  }

  v5 = SKCRenderer_resource_queue;
  if (SKCRenderer_resource_queue)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___Z32SKCPerformResourceOperationAsyncU13block_pointerFvNSt3__110shared_ptrI11jet_contextEEEU13block_pointerFvvE_block_invoke;
    v6[3] = &unk_2783105D8;
    v7 = v3;
    v8 = v4;
    dispatch_async(v5, v6);
  }
}

uint64_t ___Z32SKCPerformResourceOperationAsyncU13block_pointerFvNSt3__110shared_ptrI11jet_contextEEEU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = SKCRendererGlobals::GetInstance(void)::instance;
  v5 = qword_27CDDCF98;
  if (qword_27CDDCF98)
  {
    atomic_fetch_add_explicit((qword_27CDDCF98 + 8), 1uLL, memory_order_relaxed);
  }

  (*(v2 + 16))(v2, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result);
  }

  return result;
}

void sub_21C49EC54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SKCRenderer::loadShaders(SKCRenderer *this)
{
  if ((*(**(this + 126) + 136))(*(this + 126)) == 1)
  {
    SKEnsureGlobalMetalLibrary();
  }

  v2 = *(this + 126);
  v3 = *(this + 127);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((*(*v2 + 136))(v2) == 1)
  {
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v4 = SKGetGlobalMetalLibrary();
    v5 = [v4 newFunctionWithName:@"WhiteShader_VertexFunc"];

    v6 = SKGetGlobalMetalLibrary();
    v7 = [v6 newFunctionWithName:@"WhiteShader_FragFunc"];

    v8 = (*(*v2 + 424))(v2, v5);
    v9 = (*(*v2 + 424))(v2, v7);

    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else
  {
    v8 = (*(*v2 + 72))(v2, [(__CFString *)WhiteShader_vsh[0] UTF8String], "main", 1, 0);
    v9 = (*(*v2 + 72))(v2, [(__CFString *)WhiteShader_fsh[0] UTF8String], "main", 2, 0);
  }

  v10 = (*(*v2 + 80))(v2, v8, v9);
  std::shared_ptr<jet_program>::shared_ptr[abi:ne200100]<jet_program,0>(&v11, v10);
}

void sub_21C4A0E70(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void SKCRenderer::SKCRenderer(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = a1 + 56;
  *(a1 + 64) = a1 + 56;
  *(a1 + 72) = 0;
  *(a1 + 664) = 0;
  *(a1 + 668) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 672) = 0x100000003;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 724) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 752) = 0u;
  SKCStats::SKCStats((a1 + 808));
  *(a1 + 984) = 0;
  *(a1 + 1000) = 0;
  *(a1 + 1002) = 0;
  *(a1 + 1008) = *a2;
  v4 = a2[1];
  *(a1 + 1016) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1024) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1040) = a1 + 1048;
  *(a1 + 1072) = 0;
  *(a1 + 1080) = 0u;
  *(a1 + 1064) = a1 + 1072;
  *(a1 + 1096) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1112) = a1 + 1120;
  *(a1 + 1136) = 0u;
  *(a1 + 1176) = a1 + 1176;
  *(a1 + 1184) = a1 + 1176;
  *(a1 + 1192) = 0;
  *(a1 + 1200) = a1 + 1200;
  *(a1 + 1208) = a1 + 1200;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0u;
  v5 = dispatch_semaphore_create(1);
  v6 = *a1;
  *a1 = v5;

  *(a1 + 1224) = *(a1 + 1208);
  if (SKCRendererSetup(void)::onceToken != -1)
  {
    SKCRendererSetup();
  }

  if (*(a1 + 1008))
  {
    operator new();
  }

  SharedContext = jet_createSharedContext();
  std::shared_ptr<jet_context>::shared_ptr[abi:ne200100]<jet_context,0>(&v8, SharedContext);
}

void sub_21C4A19CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  v23 = *(v15 + 1264);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  a15 = (v15 + 1232);
  std::vector<std::shared_ptr<PKCField>>::__destroy_vector::operator()[abi:ne200100](&a15);
  std::__list_imp<SKCRenderSortInfo *>::clear(v19);
  std::__list_imp<SKCRenderSortInfo *>::clear(v18);
  std::__tree<std::__value_type<SKCLightNode *,std::shared_ptr<std::vector<SKCRenderSortInfo *>>>,std::__map_value_compare<SKCLightNode *,std::__value_type<SKCLightNode *,std::shared_ptr<std::vector<SKCRenderSortInfo *>>>,std::less<SKCLightNode *>,true>,std::allocator<std::__value_type<SKCLightNode *,std::shared_ptr<std::vector<SKCRenderSortInfo *>>>>>::destroy(v15 + 1112, *v21);
  v24 = *v20;
  if (*v20)
  {
    *(v15 + 1096) = v24;
    operator delete(v24);
  }

  std::__tree<std::__value_type<unsigned int,SKCLightMaskUniforms>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SKCLightMaskUniforms>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SKCLightMaskUniforms>>>::destroy(v15 + 1064, *(v15 + 1072));
  std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(v15 + 1040, *(v15 + 1048));
  v25 = *(v15 + 1032);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v26 = *(v15 + 1016);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  SKCStats::~SKCStats(v17);
  SKCRenderInfo::~SKCRenderInfo((v15 + 80));
  std::__list_imp<std::shared_ptr<SKCRenderSortGroup>>::clear(v16);
  v27 = *(v15 + 48);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = *(v15 + 24);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  _Unwind_Resume(a1);
}

uint64_t SKCRenderer::commitBuffers(SKCRenderer *this)
{
  result = SKCRenderer::flushRenderOps(this);
  *(this + 8) = 0;
  *(this + 20) = 0;
  return result;
}

uint64_t SKCRenderer::flushRenderOps(SKCRenderer *this)
{
  SKCRenderer::flushCurrentBatch(this);
  v2 = *(this + 51);
  v3 = *(this + 20);
  element_size = jet_buffer::get_element_size(v2);
  (*(*v2 + 24))(v2, (v3 * element_size), 0);
  v5 = *(this + 53);
  v6 = *(this + 20);
  v7 = jet_buffer::get_element_size(v5);
  (*(*v5 + 24))(v5, (v6 * v7), 0);
  v8 = *(this + 52);
  v9 = *(this + 20);
  v10 = jet_buffer::get_element_size(v8);
  result = (*(*v8 + 24))(v8, (v9 * v10), 0);
  v12 = *(*(this + 5) + 16) - *(*(this + 5) + 8);
  if (v12)
  {
    *(*(this + 93) + 144) -= 1431655765 * (v12 >> 6);
    (***(this + 126))(&v15);
    v13 = v15;
    v15 = 0uLL;
    v14 = *(this + 129);
    *(this + 64) = v13;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      if (*(&v15 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
      }
    }

    operator new();
  }

  *(this + 51) = 0;
  *(this + 52) = 0;
  *(this + 53) = 0;
  return result;
}

uint64_t SKCRenderer::ensureBuffers(uint64_t this)
{
  v1 = this;
  if (!*(this + 408))
  {
    buffer = jet_buffer_pool::next_buffer(*(this + 432));
    *(v1 + 408) = buffer;
    v3 = (*(*buffer + 16))(buffer);
    this = jet_buffer::get_element_size(buffer);
    *(v1 + 104) = v3;
  }

  if (!*(v1 + 416))
  {
    v4 = jet_buffer_pool::next_buffer(*(v1 + 448));
    *(v1 + 416) = v4;
    v5 = (*(*v4 + 16))(v4);
    this = jet_buffer::get_element_size(v4);
    *(v1 + 88) = v5;
  }

  if (!*(v1 + 424))
  {
    v6 = jet_buffer_pool::next_buffer(*(v1 + 464));
    *(v1 + 424) = v6;
    v7 = (*(*v6 + 16))(v6);
    this = jet_buffer::get_element_size(v6);
    *(v1 + 96) = v7;
  }

  return this;
}

void SKCRenderer::flushCurrentBatch(SKCRenderer *this)
{
  if (*(this + 167) < 1)
  {
    goto LABEL_61;
  }

  v2 = *(this + 85);
  if (!v2)
  {
    v5 = *(this + 183);
    if (v5 && SKCRenderer::requireLighting(this, v5))
    {
      command_buffer = jet_context::create_command_buffer(*(this + 126));
      std::shared_ptr<jet_command_buffer>::shared_ptr[abi:ne200100]<jet_command_buffer,0>(&__p, command_buffer);
    }

    size = 0;
    goto LABEL_9;
  }

  [v2 _backingProgram];
  size = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__r.__words[0])
  {
LABEL_9:
    v4 = 1;
    goto LABEL_10;
  }

  v4 = 0;
  *(this + 86) = __p.__r_.__value_.__r.__words[0];
LABEL_10:
  v7 = *(this + 86);
  if (*(this + 656) == 1 && v7 == *(this + 31))
  {
    v23 = *(this + 5);
    v7 = *(this + 33);
    LODWORD(__p.__r_.__value_.__l.__data_) = 31;
    v24 = *(v23 + 16);
    if (v24 >= *(v23 + 24))
    {
      v11 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v23 + 8, &__p);
    }

    else
    {
      *v24 = &unk_282E15828;
      *(v24 + 8) = 31;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0;
      *(v24 + 16) = 0;
      *(v24 + 64) = 0;
      v11 = v24 + 192;
      *(v24 + 96) = 0;
    }

    *(v23 + 16) = v11;
    v9 = 1;
  }

  else
  {
    v8 = *(this + 5);
    v9 = *(this + 169);
    LODWORD(__p.__r_.__value_.__l.__data_) = 31;
    v10 = *(v8 + 16);
    if (v10 >= *(v8 + 24))
    {
      v11 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v8 + 8, &__p);
    }

    else
    {
      *v10 = &unk_282E15828;
      *(v10 + 8) = 31;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 16) = 0;
      *(v10 + 64) = 0;
      v11 = v10 + 192;
      *(v10 + 96) = 0;
    }

    *(v8 + 16) = v11;
  }

  *(v11 - 80) = v7;
  *(v11 - 64) = v9;
  *(v11 - 60) = xmmword_21C4B9130;
  *(v11 - 44) = 3;
  v12 = *(this + 5);
  if (*(this + 87))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "u_texture");
    jet_command_buffer::set_fragment_texture(v12, &__p, *(this + 87));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v13 = *(this + 5);
    if (*(this + 89))
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "u_texture");
      jet_command_buffer::set_fragment_sampler(v13, &__p, *(this + 89));
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "u_texture");
      jet_command_buffer::set_fragment_sampler(v13, &__p, *(this + 70));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "u_texture");
    jet_command_buffer::set_fragment_texture(v12, &__p, qword_27CDDCFA0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v14 = *(this + 5);
    std::string::basic_string[abi:ne200100]<0>(&__p, "u_texture");
    jet_command_buffer::set_fragment_sampler(v14, &__p, *(this + 70));
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(this + 88))
  {
    v15 = *(this + 5);
    std::string::basic_string[abi:ne200100]<0>(&__p, "u_texture2");
    jet_command_buffer::set_fragment_texture(v15, &__p, *(this + 88));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v16 = *(this + 5);
    if (*(this + 90))
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "u_texture2");
      jet_command_buffer::set_fragment_sampler(v16, &__p, *(this + 90));
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "u_texture2");
      jet_command_buffer::set_fragment_sampler(v16, &__p, *(this + 70));
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v17 = *(this + 5);
  std::string::basic_string[abi:ne200100]<0>(&__p, "a_position");
  jet_command_buffer::set_vertex_buffer(v17, &__p, *(this + 51));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v18 = *(this + 5);
  std::string::basic_string[abi:ne200100]<0>(&__p, "a_color");
  jet_command_buffer::set_vertex_buffer(v18, &__p, *(this + 52));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v19 = *(this + 5);
  std::string::basic_string[abi:ne200100]<0>(&__p, "a_tex_coord");
  jet_command_buffer::set_vertex_buffer(v19, &__p, *(this + 53));
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v4)
    {
      goto LABEL_53;
    }

LABEL_43:
    v20 = *(this + 5);
    v21 = *(this + 85);
    if (v21)
    {
      [v21 _commandsForBatchOffset:*(this + 8) count:*(this + 167)];
      v22 = __p.__r_.__value_.__r.__words[0];
    }

    else
    {
      v22 = 0;
      *&__p.__r_.__value_.__l.__data_ = 0uLL;
    }

    jet_command_buffer::add_command_buffer(v20, v22);
    if (__p.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
    }

    {
      SKCRenderer::flushCurrentBatch(void)::baseTime = skCurrentTime();
    }

    v25 = skCurrentTime();
    v26 = *&SKCRenderer::flushCurrentBatch(void)::baseTime;
    v27 = *(this + 5);
    std::string::basic_string[abi:ne200100]<0>(&__p, "u_time");
    v28 = v25 - v26;
    v29 = fmodf(v28, 43200.0);
    jet_command_buffer::set_fragment_constant_value(v27, &__p, v29);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_53;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v4 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_53:
  v30 = 3 * (*(this + 8) >> 2);
  v31 = 6 * (*(this + 8) >> 2);
  v32 = 6 * (*(this + 167) / 4);
  v33 = *(this + 93);
  ++v33[41];
  v33[37] += v32 / 6;
  v34 = v32 + 2 * v30;
  if (v33[43] > v34)
  {
    v34 = v33[43];
  }

  v33[43] = v34;
  jet_command_buffer::draw_indexed(*(this + 5), *(this + 168), *(this + 60), v31, v32);
  if ((*(this + 661) & 0x10) != 0)
  {
    NSLog(&cfstr_SkcrendererPPa.isa, this, *(*(this + 93) + 168), (*(*(this + 93) + 164) - 1), (*(this + 167) / 4), *(this + 86), *(this + 87), *(this + 88), *(this + 169));
  }

  v35 = [*(this + 159) objectForKey:@"debugDrawSpriteBounds"];
  v36 = [v35 BOOLValue];

  if (v36)
  {
    __asm { FMOV            V0.4S, #1.0 }

    SKCRenderer::addDebugStroke(this, v31, v32, _Q0);
  }

  *(this + 167) = 0;
  if (size)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](size);
  }

LABEL_61:
  *(this + 8) = *(this + 20);
}

void sub_21C4A250C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

uint64_t SKCRenderer::requireLighting(SKCRenderer *this, unsigned int a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v41[0] = a2;
  for (i = *(this + 134); i; i = *i)
  {
    v3 = *(i + 8);
    if (v3 <= a2)
    {
      if (v3 >= a2)
      {
        return 1;
      }

      ++i;
    }
  }

  v4 = *(this + 130);
  if (v4 == (this + 1048))
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0uLL;
  do
  {
    v8 = *(v4 + 4);
    if ((v8[40].i32[1] & a2) != 0)
    {
      v10 = v8[37];
      v9 = v8[38];
      v11 = vmlaq_laneq_f32(v7, v9, v9, 3);
      v12 = v9.i32[3] >= 0 && (v9.i32[3] & 0x60000000) != 0;
      if (v12)
      {
        v13 = -1;
      }

      else
      {
        v13 = 0;
      }

      v14 = vbslq_s8(vdupq_n_s32(v13), v11, v7);
      v14.i32[3] = v7.i32[3];
      v6 |= v12;
      if ((v10.i32[3] & 0x80000000) == 0 && (v10.i32[3] & 0x60000000) != 0 && v5 <= 7)
      {
        v16 = vmulq_laneq_f32(v10, v10, 3);
        *&v42[12 * v5] = v16.i32[0];
        v17 = 12 * v5 + 4;
        LODWORD(v18) = vdup_lane_s32(*v16.f32, 1).u32[0];
        HIDWORD(v18) = v16.i32[2];
        *&v42[v17] = v18;
        v19 = *(v4 + 3);
        v41[3 * v5 + 10] = v19;
        *(&v41[10] + v17) = DWORD1(v19);
        v41[3 * v5 + 12] = 1065353216;
        v41[v5 + 2] = v8[40].u32[0];
        v5 = (v5 + 1);
        v6 = 1;
      }

      v7 = v14;
    }

    v20 = *(v4 + 1);
    if (v20)
    {
      do
      {
        v21 = v20;
        v20 = *v20;
      }

      while (v20);
    }

    else
    {
      do
      {
        v21 = *(v4 + 2);
        _ZF = *v21 == v4;
        v4 = v21;
      }

      while (!_ZF);
    }

    v4 = v21;
  }

  while (v21 != (this + 1048));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  *&v37[24] = 0;
  *&v37[16] = 0;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  LODWORD(v36) = v5;
  __asm { FMOV            V2.2S, #1.0 }

  *&v27 = vand_s8(vbsl_s8(vcgt_u32(*v7.f32, _D2), _D2, *v7.f32), vcgez_s32(*v7.f32));
  v7.i32[0] = v7.i32[2];
  if (v7.i32[2] > 0x3F800000u)
  {
    v7.f32[0] = 1.0;
  }

  if (v7.i32[2] < 0)
  {
    v7.f32[0] = 0.0;
  }

  *(&v27 + 1) = v7.u32[0];
  *v37 = v27;
  if (v5 >= 1)
  {
    v28 = (*(**(this + 126) + 24))(*(this + 126), 0, 3, v5, v42);
    std::shared_ptr<jet_constant>::shared_ptr[abi:ne200100]<jet_constant,0>(&v35, v28);
  }

  *&v35 = v41;
  v30 = std::__tree<std::__value_type<unsigned int,SKCLightMaskUniforms>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SKCLightMaskUniforms>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SKCLightMaskUniforms>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 1064, v41);
  v31 = *v37;
  *(v30 + 3) = v36;
  *(v30 + 4) = v31;
  *(v30 + 76) = *&v37[12];
  v32 = v30[13];
  v30[12] = 0;
  v30[13] = 0;
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v33 = v30[15];
  v30[14] = 0;
  v30[15] = 0;
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v34 = v30[17];
  v30[16] = 0;
  v30[17] = 0;
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  return 1;
}

void sub_21C4A29D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  SKCLightMaskUniforms::~SKCLightMaskUniforms(va);
  _Unwind_Resume(a1);
}

void SKCRenderer::setLightingUniforms(SKCRenderer *a1, unsigned int a2, uint64_t *a3, float a4)
{
  v47 = a2;
  v4 = *a3;
  if (*a3)
  {
    v8 = *MEMORY[0x277D860A8];
    v9 = *(MEMORY[0x277D860A8] + 8);
    std::string::basic_string[abi:ne200100]<0>(__p, "u_normals_tex_coord_xform");
    jet_command_buffer::set_vertex_constant_value(v4, __p, v8, v9);
    if ((v40[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }

    v10 = *a3;
    std::string::basic_string[abi:ne200100]<0>(__p, "u_ambient");
    jet_command_buffer::set_fragment_constant_value(v10, __p, 1.0);
    if ((v40[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }

    v11 = *a3;
    std::string::basic_string[abi:ne200100]<0>(__p, "u_diffuse");
    jet_command_buffer::set_fragment_constant_value(v11, __p, 1.0);
    if ((v40[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }

    v12 = *a3;
    std::string::basic_string[abi:ne200100]<0>(__p, "u_specular");
    jet_command_buffer::set_fragment_constant_value(v12, __p, 0.3);
    if ((v40[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }

    v13 = vcvt_f32_u32(*(*(a1 + 2) + 56));
    __asm { FMOV            V2.2S, #1.0 }

    if (v13.f32[0] > 0.0 && v13.f32[1] > 0.0)
    {
      if (v13.f32[0] <= v13.f32[1])
      {
        __asm { FMOV            V2.2S, #1.0 }

        *(&_D2 + 1) = v13.f32[1] / v13.f32[0];
      }

      else
      {
        __asm { FMOV            V2.2S, #1.0 }

        *&_D2 = v13.f32[0] / v13.f32[1];
      }
    }

    v37 = _D2;
    v19 = *a3;
    std::string::basic_string[abi:ne200100]<0>(__p, "u_aspect");
    jet_command_buffer::set_fragment_constant_value(v19, __p, v37);
    if ((v40[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }

    v20 = sinf(a4);
    v21 = *a3;
    std::string::basic_string[abi:ne200100]<0>(__p, "u_rotation_sin");
    jet_command_buffer::set_fragment_constant_value(v21, __p, v20);
    v22 = cosf(a4);
    if ((v40[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }

    v23 = *a3;
    std::string::basic_string[abi:ne200100]<0>(__p, "u_rotation_cos");
    jet_command_buffer::set_fragment_constant_value(v23, __p, v22);
    if ((v40[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }

    if (SKCRenderer::requireLighting(a1, v47))
    {
      __str.__r_.__value_.__r.__words[0] = &v47;
      v24 = std::__tree<std::__value_type<unsigned int,SKCLightMaskUniforms>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SKCLightMaskUniforms>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SKCLightMaskUniforms>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 1064, &v47);
      v25 = *(v24 + 4);
      *__p = *(v24 + 3);
      *v40 = v25;
      *&v40[12] = *(v24 + 76);
      v27 = v24[12];
      v26 = v24[13];
      v41 = v27;
      v42 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v29 = v24[14];
      v28 = v24[15];
      v43 = v29;
      v44 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v31 = v24[16];
      v30 = v24[17];
      v45 = v31;
      v46 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v32 = *a3;
      std::string::basic_string[abi:ne200100]<0>(&__str, "u_num_lights");
      jet_command_buffer::set_fragment_constant_value(v32, &__str, __p[0]);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v33 = *a3;
      std::string::basic_string[abi:ne200100]<0>(&__str, "u_ambient_color");
      jet_command_buffer::set_fragment_constant_value(v33, &__str, *v40);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v34 = *a3;
      std::string::basic_string[abi:ne200100]<0>(&__str, "u_light_color");
      jet_command_buffer::set_fragment_constant(v34, &__str, v27);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v35 = *a3;
      std::string::basic_string[abi:ne200100]<0>(&__str, "u_light_position");
      jet_command_buffer::set_fragment_constant(v35, &__str, v29);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v36 = *a3;
      std::string::basic_string[abi:ne200100]<0>(&__str, "u_light_decay");
      jet_command_buffer::set_fragment_constant(v36, &__str, v31);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }
    }
  }
}

void sub_21C4A2DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  SKCLightMaskUniforms::~SKCLightMaskUniforms(&a18);
  _Unwind_Resume(a1);
}

void SKCRenderer::addDebugStroke(uint64_t *a1, int a2, unsigned int a3, __n128 a4)
{
  v7 = a1[5];
  v8 = a1[29];
  LODWORD(__p.__r_.__value_.__l.__data_) = 31;
  v9 = *(v7 + 16);
  if (v9 >= *(v7 + 24))
  {
    v10 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v7 + 8, &__p);
  }

  else
  {
    *v9 = &unk_282E15828;
    *(v9 + 8) = 31;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 16) = 0;
    *(v9 + 64) = 0;
    v10 = v9 + 192;
    *(v9 + 96) = 0;
  }

  *(v7 + 16) = v10;
  *(v10 - 80) = v8;
  *(v10 - 64) = xmmword_21C4B8530;
  *(v10 - 48) = 0x30000000FLL;
  v11 = a1[5];
  std::string::basic_string[abi:ne200100]<0>(&__p, "a_position");
  jet_command_buffer::set_vertex_buffer(v11, &__p, a1[51]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = a1[5];
  std::string::basic_string[abi:ne200100]<0>(&__p, "u_color");
  jet_command_buffer::set_fragment_constant_value(v12, &__p, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (a3)
  {
    v13 = 0;
    do
    {
      jet_command_buffer::draw_indexed(a1[5], 2, a1[60], a2 + v13, 6);
      v13 += 6;
    }

    while (v13 < a3);
  }
}

void sub_21C4A2FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SKCLightMaskUniforms::~SKCLightMaskUniforms(SKCLightMaskUniforms *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

std::string *jet_command_buffer::set_vertex_constant_value(uint64_t a1, std::string *__str, double a3, double a4)
{
  v11 = 19;
  v8 = *(a1 + 16);
  if (v8 >= *(a1 + 24))
  {
    v9 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(a1 + 8, &v11);
  }

  else
  {
    *v8 = &unk_282E15828;
    *(v8 + 8) = 19;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    *(v8 + 16) = 0;
    *(v8 + 64) = 0;
    v9 = v8 + 192;
    *(v8 + 96) = 0;
  }

  *(a1 + 16) = v9;
  result = std::string::operator=((v9 - 176), __str);
  *(v9 - 64) = a3;
  *(v9 - 56) = a4;
  return result;
}

std::string *jet_command_buffer::set_fragment_constant_value(uint64_t a1, std::string *__str, int a3)
{
  v9 = 38;
  v6 = *(a1 + 16);
  if (v6 >= *(a1 + 24))
  {
    v7 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(a1 + 8, &v9);
  }

  else
  {
    *v6 = &unk_282E15828;
    *(v6 + 8) = 38;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 16) = 0;
    *(v6 + 64) = 0;
    v7 = v6 + 192;
    *(v6 + 96) = 0;
  }

  *(a1 + 16) = v7;
  result = std::string::operator=((v7 - 176), __str);
  *(v7 - 64) = a3;
  return result;
}

std::string *jet_command_buffer::set_fragment_constant(uint64_t a1, std::string *__str, uint64_t a3)
{
  v9 = 9;
  v6 = *(a1 + 16);
  if (v6 >= *(a1 + 24))
  {
    v7 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(a1 + 8, &v9);
  }

  else
  {
    *v6 = &unk_282E15828;
    *(v6 + 8) = 9;
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

void SKCRenderer::applyDebugOptions(SKCRenderer *this)
{
  SKCRenderer::applyDebugOptions(void)::count = (SKCRenderer::applyDebugOptions(void)::count + 1) % 0x64u;
  *(this + 2) = (fabsf((SKCRenderer::applyDebugOptions(void)::count / -99.0) + 0.5) * 0.8) + 0.2;
  *(this + 165) = 0;
  v2 = [*(this + 159) valueForKey:@"debugColorEffectNodes"];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    *(this + 165) |= 2u;
  }

  v4 = [*(this + 159) valueForKey:@"debugColorCropNodes"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    *(this + 165) |= 4u;
  }

  v6 = [*(this + 159) valueForKey:@"debugColorCustomShaders"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    *(this + 165) |= 8u;
  }

  v8 = [*(this + 159) valueForKey:@"debugDisableEffectNodeEffects"];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    *(this + 165) |= 0x20u;
  }

  v10 = [*(this + 159) valueForKey:@"debugDisableEffectNodeRasterize"];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    *(this + 165) |= 0x40u;
  }

  v12 = [*(this + 159) valueForKey:@"debugDisableCropNodes"];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    *(this + 165) |= 0x80u;
  }

  v14 = [*(this + 159) valueForKey:@"debugDisableCustomShaders"];
  v15 = [v14 BOOLValue];

  if (v15)
  {
    *(this + 165) |= 0x100u;
  }

  v16 = [*(this + 159) valueForKey:@"debugDisable3DNodes"];
  v17 = [v16 BOOLValue];

  if (v17)
  {
    *(this + 165) |= 0x200u;
  }

  v18 = [*(this + 159) valueForKey:@"debugColorCustomShadersRecompile"];
  v19 = [v18 BOOLValue];

  if (v19)
  {
    *(this + 165) |= 0x10u;
  }

  v20 = [*(this + 159) valueForKey:@"debugDisableCoreImage"];
  v21 = [v20 BOOLValue];

  if (v21)
  {
    *(this + 165) |= 0x800u;
  }

  v22 = [*(this + 159) valueForKey:@"debugLogBatching"];
  v23 = [v22 BOOLValue];

  if (v23)
  {
    *(this + 165) |= 0x1000u;
  }
}

void SKCRenderer::addPerNodeDebugOverlays(SKCRenderer *this, void *lpsrc, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v10 = *(this + 165);
  if ((v10 & 2) != 0)
  {
    if (!lpsrc)
    {
      goto LABEL_14;
    }

    if (v11)
    {
      v12 = v11;
      SKCRenderer::flushCurrentBatch(this);
      if (SKCEffectNode::getEnableEffects(v12))
      {
        if (SKCEffectNode::getShouldRasterize(v12))
        {
          v13.i32[0] = 0;
          v14.i32[0] = *(v12 + 169);
          v15 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v14, v13), 0), xmmword_21C4B8A90, xmmword_21C4B8A60);
        }

        else
        {
          v15 = xmmword_21C4BA060;
        }
      }

      else
      {
        v15 = xmmword_21C4BA050;
      }

      v34 = v15;
      __asm { FMOV            V0.4S, #0.25 }

      SKCRenderer::addDebugFill(this, 6 * (a4 >> 2), 6 * (a5 >> 2), vmulq_f32(v15, _Q0));
      SKCRenderer::addDebugStroke(this, 6 * (a4 >> 2), 6 * (a5 >> 2), v34);
      v10 = *(this + 165);
    }
  }

  if (lpsrc)
  {
    if ((v10 & 4) != 0)
    {
      if (v21)
      {
        v22 = v21;
        SKCRenderer::flushCurrentBatch(this);
        v23.i64[0] = 0;
        v24.i64[0] = v22[71];
        v35 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v24, v23).i64[0], 0), xmmword_21C4BA050, xmmword_21C4B9CD0);
        __asm { FMOV            V0.4S, #0.25 }

        SKCRenderer::addDebugFill(this, 6 * (a4 >> 2), 6 * (a5 >> 2), vmulq_f32(v35, _Q0));
        SKCRenderer::addDebugStroke(this, 6 * (a4 >> 2), 6 * (a5 >> 2), v35);
        v10 = *(this + 165);
      }
    }
  }

LABEL_14:
  if ((v10 & 8) != 0 && *(a3 + 16))
  {
    SKCRenderer::flushCurrentBatch(this);
    SKCRenderer::addDebugFill(this, 6 * (a4 >> 2), 6 * (a5 >> 2), xmmword_21C4BA070);
    SKCRenderer::addDebugStroke(this, 6 * (a4 >> 2), 6 * (a5 >> 2), xmmword_21C4BA050);
    v10 = *(this + 165);
  }

  if ((v10 & 0x10) != 0)
  {
    v26 = *(a3 + 16);
    if (v26)
    {
      if ([v26 _backingProgramIsDirty])
      {
        SKCRenderer::flushCurrentBatch(this);
        v27 = *(a3 + 16);
        if (v27)
        {
          [v27 _backingProgram];
          v28.i64[0] = 0;
          v29.i64[0] = v38;
          v30 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v29, v28).i64[0], 0), xmmword_21C4BA080, xmmword_21C4B8500);
          if (v39)
          {
            v36 = v30;
            std::__shared_weak_count::__release_shared[abi:ne200100](v39);
            v30 = v36;
          }
        }

        else
        {
          v30 = xmmword_21C4BA080;
        }

        v37 = v30;
        __asm { FMOV            V0.4S, #0.25 }

        v32 = 6 * (a4 >> 2);
        v33 = 6 * (a5 >> 2);
        SKCRenderer::addDebugFill(this, v32, v33, vmulq_f32(v30, _Q0));
        SKCRenderer::addDebugStroke(this, v32, v33, v37);
      }
    }
  }
}

uint64_t SKCRenderer::addDebugFill(uint64_t *a1, int a2, int a3, __n128 a4)
{
  v7 = a1[5];
  v8 = a1[29];
  LODWORD(__p.__r_.__value_.__l.__data_) = 31;
  v9 = *(v7 + 16);
  if (v9 >= *(v7 + 24))
  {
    v10 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v7 + 8, &__p);
  }

  else
  {
    *v9 = &unk_282E15828;
    *(v9 + 8) = 31;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 16) = 0;
    *(v9 + 64) = 0;
    v10 = v9 + 192;
    *(v9 + 96) = 0;
  }

  *(v7 + 16) = v10;
  *(v10 - 80) = v8;
  *(v10 - 64) = xmmword_21C4B8530;
  *(v10 - 48) = 0x30000000FLL;
  v11 = a1[5];
  std::string::basic_string[abi:ne200100]<0>(&__p, "a_position");
  jet_command_buffer::set_vertex_buffer(v11, &__p, a1[51]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = a1[5];
  std::string::basic_string[abi:ne200100]<0>(&__p, "u_color");
  jet_command_buffer::set_fragment_constant_value(v12, &__p, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return jet_command_buffer::draw_indexed(a1[5], 3, a1[60], a2, a3);
}

void sub_21C4A39C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SKCRenderer::render(uint64_t a1, _OWORD *a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v31 = *MEMORY[0x277D85DE8];
  a5;
  a8;
  objc_storeStrong((a1 + 1272), a5);
  v14 = [*(a1 + 1272) objectForKeyedSubscript:@"ignoresSiblingOrder"];
  *(a1 + 1000) = [v14 BOOLValue];

  v15 = [*(a1 + 1272) objectForKeyedSubscript:@"cullNonVisibleNodes"];
  *(a1 + 1001) = [v15 BOOLValue];

  v16 = [*(a1 + 1272) objectForKeyedSubscript:@"doNotRenderChildNodes"];
  *(a1 + 1002) = [v16 BOOLValue];

  v17 = [*(a1 + 1272) objectForKeyedSubscript:@"debugDisablePresentationTime"];
  [v17 BOOLValue];

  v18 = [*(a1 + 1272) objectForKeyedSubscript:@"_client"];
  *(a1 + 992) = [v18 pointerValue];

  SKCStats::SKCStats(&v30);
  v19 = *&v30.constraints.constraintCount;
  v20 = *&v30.render.nodeTraversalCount;
  *(a1 + 944) = *&v30.render.duration;
  *(a1 + 960) = v20;
  *(a1 + 976) = *&v30.render.passCount;
  v21 = *&v30.clientUpdate.duration;
  v22 = *&v30.physics.duration;
  *(a1 + 880) = *&v30.update.duration;
  *(a1 + 896) = v22;
  *(a1 + 912) = *&v30.constraints.beginTime;
  *(a1 + 928) = v19;
  v23 = *&v30.baseTime;
  *(a1 + 816) = *&v30.frameBeginTime;
  *(a1 + 832) = v23;
  *(a1 + 848) = *&v30.frameCount;
  *(a1 + 864) = v21;
  SKCStats::~SKCStats(&v30);
  if (a6)
  {
    *(a1 + 744) = a6;
  }

  v24 = *(a1 + 744);
  if (a7)
  {
    v25 = a7;
  }

  else
  {
    v25 = *(a1 + 744);
  }

  *(a1 + 800) = v25;
  v26 = CACurrentMediaTime();
  SKCStats::beginRender(v24, v26);
  dispatch_semaphore_wait(*a1, 0xFFFFFFFFFFFFFFFFLL);
  std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(a1 + 1040, *(a1 + 1048));
  *(a1 + 1040) = a1 + 1048;
  *(a1 + 1048) = 0u;
  std::__tree<std::__value_type<unsigned int,SKCLightMaskUniforms>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SKCLightMaskUniforms>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SKCLightMaskUniforms>>>::destroy(a1 + 1064, *(a1 + 1072));
  *(a1 + 1064) = a1 + 1072;
  *(a1 + 1072) = 0u;
  std::__tree<std::__value_type<SKCLightNode *,std::shared_ptr<std::vector<SKCRenderSortInfo *>>>,std::__map_value_compare<SKCLightNode *,std::__value_type<SKCLightNode *,std::shared_ptr<std::vector<SKCRenderSortInfo *>>>,std::less<SKCLightNode *>,true>,std::allocator<std::__value_type<SKCLightNode *,std::shared_ptr<std::vector<SKCRenderSortInfo *>>>>>::destroy(a1 + 1112, *(a1 + 1120));
  *(a1 + 1112) = a1 + 1120;
  *(a1 + 1120) = 0u;
  *(a1 + 1096) = *(a1 + 1088);
  v27 = *a3;
  if (*a3)
  {
    *(v27 + 216) = 0;
    if (a2)
    {
      {
        v28 = a2[19];
      }

      else
      {
        {
          goto LABEL_14;
        }

        v28 = xmmword_21C4B84C0;
      }
    }

    else
    {
      v28 = xmmword_21C4BA090;
    }

    *(v27 + 32) = v28;
  }

LABEL_14:
  *(a1 + 80) = 0;
  SKCRenderer::applyDebugOptions(a1);
  if ((*(a1 + 661) & 0x10) != 0)
  {
    NSLog(&cfstr_SkcrendererPBe.isa, a1);
  }

  operator new();
}

void sub_21C4A4500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_semaphore_t dsema, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32)
{
  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  dispatch_semaphore_signal(dsema);

  _Unwind_Resume(a1);
}

void SKCRenderer::buildRenderPass(uint64_t a1, void *a2)
{
  v3 = *a2;
  *(a1 + 1152) = *a2;
  v4 = v3[1];
  if (v4 != v3)
  {
    do
    {
      v6 = v4[3];
      v10 = v4[2];
      v11 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SKCRenderer::buildRenderGroup(a1, &v10);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      v4 = v4[1];
    }

    while (v4 != v3);
    v3 = *a2;
  }

  v7 = v3 + 3;
  for (i = v3[4]; i != v7; i = i[1])
  {
    v9 = i[3];
    v10 = i[2];
    v11 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SKCRenderer::buildRenderGroup(a1, &v10);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_21C4A46C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SKCRenderer::generateShadowGeometery(SKCRenderer *this)
{
  v2 = *(this + 136);
  v3 = *(this + 137);
  if (v2 != v3)
  {
    v4 = this + 1048;
    v5 = (this + 1120);
    do
    {
      v6 = *v2;
      v24 = *v2;
      v7 = *(this + 130);
      if (v7 != v4)
      {
        v8 = *(*v6 + 564);
        do
        {
          v9 = *(v7 + 4);
          if ((*(v9 + 644) & v8) != 0)
          {
            v10 = *v5;
            if (!*v5)
            {
              goto LABEL_14;
            }

            v11 = (this + 1120);
            do
            {
              v12 = *(v10 + 4);
              v13 = v12 >= v9;
              v14 = v12 < v9;
              if (v13)
              {
                v11 = v10;
              }

              v10 = *&v10[8 * v14];
            }

            while (v10);
            if (v11 == v5 || v9 < v11[4])
            {
LABEL_14:
              operator new();
            }

            std::vector<PKCLineSeg *>::push_back[abi:ne200100](v11[5], &v24);
          }

          v15 = *(v7 + 1);
          if (v15)
          {
            do
            {
              v16 = v15;
              v15 = *v15;
            }

            while (v15);
          }

          else
          {
            do
            {
              v16 = *(v7 + 2);
              v17 = *v16 == v7;
              v7 = v16;
            }

            while (!v17);
          }

          v7 = v16;
        }

        while (v16 != v4);
      }

      ++v2;
    }

    while (v2 != v3);
  }

  v18 = *(this + 139);
  if (v18 != (this + 1120))
  {
    do
    {
      v19 = *(v18 + 4);
      v20 = *(v18 + 5);
      v21 = *(v18 + 6);
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v25 = v19;
      _ZNSt3__16__treeINS_12__value_typeIP12SKCLightNodeDv4_fEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE25__emplace_unique_key_argsIS3_JRKNS_21piecewise_construct_tENS_5tupleIJRKS3_EEENSH_IJEEEEEENS_4pairINS_15__tree_iteratorIS5_PNS_11__tree_nodeIS5_PvEElEEbEERKT_DpOT0_(this + 1040, &v25);
      if (*v20 != v20[1])
      {
        SKCLightNode::generateShadowGeometry(v25);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      v22 = *(v18 + 1);
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = *(v18 + 2);
          v17 = *v23 == v18;
          v18 = v23;
        }

        while (!v17);
      }

      v18 = v23;
    }

    while (v23 != (this + 1120));
  }
}

void sub_21C4A4994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t jet_command_buffer::set_viewport(jet_command_buffer *this, int a2, int a3, int a4, int a5)
{
  v12 = 11;
  v10 = *(this + 2);
  if (v10 >= *(this + 3))
  {
    result = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(this + 8, &v12);
  }

  else
  {
    *v10 = &unk_282E15828;
    *(v10 + 8) = 11;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 16) = 0;
    *(v10 + 64) = 0;
    result = v10 + 192;
    *(v10 + 96) = 0;
  }

  *(this + 2) = result;
  *(result - 64) = a2;
  *(result - 60) = a3;
  *(result - 56) = a4;
  *(result - 52) = a5;
  return result;
}

uint64_t jet_command_buffer::set_scissor_rect(jet_command_buffer *this, int a2, int a3, int a4, int a5)
{
  v12 = 12;
  v10 = *(this + 2);
  if (v10 >= *(this + 3))
  {
    result = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(this + 8, &v12);
  }

  else
  {
    *v10 = &unk_282E15828;
    *(v10 + 8) = 12;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 16) = 0;
    *(v10 + 64) = 0;
    result = v10 + 192;
    *(v10 + 96) = 0;
  }

  *(this + 2) = result;
  *(result - 64) = a2;
  *(result - 60) = a3;
  *(result - 56) = a4;
  *(result - 52) = a5;
  return result;
}

void SKCRenderer::expandRenderPass(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  ++*(*(a1 + 744) + 168);
  jet_command_buffer::begin_render_pass(*(a1 + 40), *(*a2 + 80));
  v6 = *a2;
  if (*(*a2 + 160) == 1)
  {
    jet_command_buffer::set_scissor_rect(*(a1 + 40), *(v6 + 176), HIDWORD(*(v6 + 176)), *(v6 + 184), HIDWORD(*(v6 + 176)));
    v6 = *a2;
  }

  if (*(v6 + 192) == 1)
  {
    jet_command_buffer::set_viewport(*(a1 + 40), *(v6 + 208), HIDWORD(*(v6 + 208)), *(v6 + 216), HIDWORD(*(v6 + 208)));
    v6 = *a2;
  }

  for (i = *(v6 + 8); i != v6; i = i[1])
  {
    v8 = i[3];
    v9[0] = i[2];
    v9[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SKCRenderer::expandRenderGroup(a1, v9, a3);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_21C4A4C24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *jet_command_buffer::add_schedule_handler(uint64_t a1, uint64_t a2)
{
  v7 = 43;
  v4 = *(a1 + 16);
  if (v4 >= *(a1 + 24))
  {
    v5 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(a1 + 8, &v7);
  }

  else
  {
    *v4 = &unk_282E15828;
    *(v4 + 8) = 43;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 16) = 0;
    *(v4 + 64) = 0;
    v5 = v4 + 192;
    *(v4 + 96) = 0;
  }

  *(a1 + 16) = v5;
  return std::function<void ()(void)>::operator=((v5 - 120), a2);
}

void SKCRenderer::addDebugGroup(uint64_t a1, __n128 a2)
{
  v68 = a2.n128_u64[1];
  v109 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 1272) valueForKey:@"highlightNodes"];
  v3 = *(a1 + 984);
  *(a1 + 984) = v2;

  if (*(a1 + 984))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      obj = *(a1 + 984);
      v71 = [obj countByEnumeratingWithState:&v95 objects:v108 count:16];
      if (v71)
      {
        v70 = *v96;
        __asm { FMOV            V0.4S, #1.0 }

        v72 = HIDWORD(_Q0);
        do
        {
          for (i = 0; i != v71; ++i)
          {
            if (*v96 != v70)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v95 + 1) + 8 * i);
            v77 = [v9 objectForKey:@"color"];
            *&v80 = [v9 objectForKey:@"fillColor"];
            *(&v80 + 1) = [v9 objectForKey:@"strokeColor"];
            v78 = [v9 objectForKey:@"accumulated_bounds_fillColor"];
            v79 = [v9 objectForKey:@"accumulated_bounds_strokeColor"];
            v75 = [v9 objectForKey:@"node_bounds_fillColor"];
            v76 = [v9 objectForKey:@"node_bounds_strokeColor"];
            v73 = [v9 objectForKey:@"nodeList"];
            if (!v77)
            {
              v77 = [MEMORY[0x277D75348] cyanColor];
            }

            if (v80 == 0)
            {
              v10 = v77;
              v11 = MEMORY[0x277D75348];
              *&v80 = v10;
              [v10 red];
              v13 = v12;
              [v80 green];
              v15 = v14;
              [v80 blue];
              v17 = v16;
              [v80 alpha];
              *(&v80 + 1) = [v11 colorWithRed:v13 green:v15 blue:v17 alpha:v18 * 0.25];
            }

            if (!v78)
            {
              v78 = v80;
            }

            if (!v79)
            {
              v79 = *(&v80 + 1);
            }

            v83 = 0u;
            v84 = 0u;
            if (v78)
            {
              [v78 componentRGBA];
              v21.i64[0] = __PAIR64__(v20, v19);
              v21.i64[1] = __PAIR64__(v72, v22);
              v83 = vmulq_n_f32(v21, v23);
            }

            if (v79)
            {
              [v79 componentRGBA];
              v26.i64[0] = __PAIR64__(v25, v24);
              v26.i64[1] = __PAIR64__(v72, v27);
              v84 = vmulq_n_f32(v26, v28);
            }

            v81 = 0u;
            v82 = 0u;
            if (v75)
            {
              [v75 componentRGBA];
              v31.i64[0] = __PAIR64__(v30, v29);
              v31.i64[1] = __PAIR64__(v72, v32);
              v81 = vmulq_n_f32(v31, v33);
            }

            if (v76)
            {
              [v76 componentRGBA];
              v36.i64[0] = __PAIR64__(v35, v34);
              v36.i64[1] = __PAIR64__(v72, v37);
              v82 = vmulq_n_f32(v36, v38);
            }

            v39 = v73;
            if (v73)
            {
              v40 = [v73 count];
              v39 = v73;
              if (v40)
              {
                v93 = 0u;
                v94 = 0u;
                v91 = 0u;
                v92 = 0u;
                v85 = v73;
                v41 = [v85 countByEnumeratingWithState:&v91 objects:v107 count:16];
                if (v41)
                {
                  v42 = *v92;
                  v43 = fmaxf(v84.n128_f32[3], v83.n128_f32[3]) > 0.0;
                  v44 = fmaxf(v82.n128_f32[3], v81.n128_f32[3]) > 0.0;
                  do
                  {
                    for (j = 0; j != v41; ++j)
                    {
                      if (*v92 != v42)
                      {
                        objc_enumerationMutation(v85);
                      }

                      v46 = *(*(&v91 + 1) + 8 * j);
                      v47 = [v46 scene];
                      v48 = [v47 _backingNode];

                      if (v43)
                      {
                        v89 = 0u;
                        v90 = 0u;
                        v87 = 0u;
                        v88 = 0u;
                        [v46 globalAccumulatedBoundingVerts];
                        v87 = v49;
                        v88 = v50;
                        v89 = v51;
                        v90 = v52;
                        v49.n128_u32[0] = v68;
                        SKCSceneNode::matrixForDestination(v48, v49, *(&v68 + 1));
                        v57 = 0;
                        v99 = v87;
                        v100 = v88;
                        v101 = v89;
                        v102 = v90;
                        do
                        {
                          *(&v103 + v57) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, COERCE_FLOAT(*(&v99 + v57))), v54, v99.n128_u64[v57 / 8], 1), v55, *(&v99 + v57), 2), v56, *(&v99 + v57), 3);
                          v57 += 16;
                        }

                        while (v57 != 64);
                        v87 = v103;
                        v88 = v104;
                        v89 = v105;
                        v90 = v106;
                        SKCRenderer::drawSolidColorQuads(a1, &v87, 1, 0, v83, v84);
                      }

                      if (v44)
                      {
                        v89 = 0u;
                        v90 = 0u;
                        v87 = 0u;
                        v88 = 0u;
                        [v46 globalBoundingVerts];
                        v87 = v58;
                        v88 = v59;
                        v89 = v60;
                        v90 = v61;
                        v58.n128_u32[0] = v68;
                        SKCSceneNode::matrixForDestination(v48, v58, *(&v68 + 1));
                        v66 = 0;
                        v99 = v87;
                        v100 = v88;
                        v101 = v89;
                        v102 = v90;
                        do
                        {
                          *(&v103 + v66) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v62, COERCE_FLOAT(*(&v99 + v66))), v63, v99.n128_u64[v66 / 8], 1), v64, *(&v99 + v66), 2), v65, *(&v99 + v66), 3);
                          v66 += 16;
                        }

                        while (v66 != 64);
                        v87 = v103;
                        v88 = v104;
                        v89 = v105;
                        v90 = v106;
                        SKCRenderer::drawSolidColorQuads(a1, &v87, 1, 0, v81, v82);
                      }
                    }

                    v41 = [v85 countByEnumeratingWithState:&v91 objects:v107 count:16];
                  }

                  while (v41);
                }

                v39 = v73;
              }
            }
          }

          v71 = [obj countByEnumeratingWithState:&v95 objects:v108 count:16];
        }

        while (v71);
      }
    }
  }

  if (*(a1 + 800))
  {
    operator new();
  }
}

void sub_21C4A61C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, void *a31, uint64_t a32, void *a33, uint64_t a34, void *a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a72);
  }

  _Unwind_Resume(a1);
}

uint64_t SKCRenderer::resizeBatchBufferCapacity(SKCRenderer *this, unsigned int a2)
{
  kdebug_trace();
  (***(this + 54))();
  (***(this + 58))();
  (***(this + 56))();
  v5 = *(this + 51);
  if (v5)
  {
    v6 = (*(*v5 + 16))(*(this + 51));
    jet_buffer::get_element_size(v5);
    *(this + 13) = v6;
  }

  v7 = *(this + 53);
  if (v7)
  {
    v8 = (*(*v7 + 16))(*(this + 53));
    jet_buffer::get_element_size(v7);
    *(this + 12) = v8;
  }

  v9 = *(this + 52);
  if (v9)
  {
    v10 = (*(*v9 + 16))(*(this + 52));
    jet_buffer::get_element_size(v9);
    *(this + 11) = v10;
  }

  LODWORD(v4) = vcvtpd_u64_f64(a2 * 1.5);
  (*(**(this + 60) + 32))(*(this + 60), v4);
  SKCRendererGenerateQuadIndexBufferData<unsigned short>(this + 60);
  result = (*(**(this + 60) + 24))(*(this + 60), 0, 0);
  *(this + 21) = a2;
  return result;
}

void SKCRenderer::drawSolidColorQuads(uint64_t a1, const void *a2, uint64_t a3, int a4, __n128 a5, __n128 a6)
{
  SKCRenderer::flushCurrentBatch(a1);
  if (a2)
  {
    memcpy((*(a1 + 104) + 16 * *(a1 + 80)), a2, a3 << 6);
  }

  *(a1 + 80) += 4 * a3;
  v10 = *(a1 + 40);
  v11 = *(a1 + 232);
  LODWORD(__p.__r_.__value_.__l.__data_) = 31;
  v12 = *(v10 + 16);
  if (v12 >= *(v10 + 24))
  {
    v13 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v10 + 8, &__p);
  }

  else
  {
    *v12 = &unk_282E15828;
    *(v12 + 8) = 31;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 16) = 0;
    *(v12 + 64) = 0;
    v13 = v12 + 192;
    *(v12 + 96) = 0;
  }

  *(v10 + 16) = v13;
  *(v13 - 80) = v11;
  *(v13 - 64) = a4;
  *(v13 - 60) = xmmword_21C4B9130;
  *(v13 - 44) = 3;
  v14 = *(a1 + 40);
  std::string::basic_string[abi:ne200100]<0>(&__p, "a_position");
  jet_command_buffer::set_vertex_buffer(v14, &__p, *(a1 + 408));
  v16 = a5.n128_f32[3];
  v15 = a6.n128_f32[3];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v16 = a5.n128_f32[3];
    v15 = a6.n128_f32[3];
  }

  v17 = *(a1 + 32);
  if (v16 > 0.0)
  {
    v18 = *(a1 + 40);
    std::string::basic_string[abi:ne200100]<0>(&__p, "u_color");
    jet_command_buffer::set_fragment_constant_value(v18, &__p, a5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    jet_command_buffer::draw_indexed(*(a1 + 40), 3, *(a1 + 480), 6 * (v17 >> 2), 6 * a3);
    v15 = a6.n128_f32[3];
  }

  if (v15 > 0.0)
  {
    v19 = *(a1 + 40);
    std::string::basic_string[abi:ne200100]<0>(&__p, "u_color");
    jet_command_buffer::set_fragment_constant_value(v19, &__p, a6);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (a3)
    {
      v20 = 6 * (v17 >> 2);
      do
      {
        jet_command_buffer::draw_indexed(*(a1 + 40), 2, *(a1 + 480), v20, 6);
        v20 += 6;
        --a3;
      }

      while (a3);
    }
  }
}

void sub_21C4A6A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SKCRenderer::buildRenderGroup(uint64_t a1, uint64_t *a2)
{
  v3 = 0;
  v4 = *a2;
  *(a1 + 1160) = *a2;
  *(a1 + 1168) = 0;
  v5 = *(a1 + 16);
  v6 = v5[6];
  v7 = v5[7];
  v8 = v5[8];
  v9 = v5[9];
  v10 = *(v4 + 144);
  v11 = *(v4 + 160);
  v12 = *(v4 + 176);
  v44 = *(v4 + 128);
  v45 = v10;
  v46 = v11;
  v47 = v12;
  do
  {
    *(&v48 + v3) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6, COERCE_FLOAT(*(&v44 + v3))), v7, *&v44.f32[v3 / 4], 1), v8, *(&v44 + v3), 2), v9, *(&v44 + v3), 3);
    v3 += 16;
  }

  while (v3 != 64);
  v13 = *(v4 + 8);
  v14 = *(v4 + 16);
  if (v13 != v14)
  {
    v41 = v49;
    v42 = v48;
    v15 = v51;
    v40 = v50;
    v16 = MEMORY[0x277D860B8];
    v43 = v51;
    do
    {
      v17 = *v13;
      if (*v13)
      {
        v20 = *(a1 + 16);
        if (v18)
        {
          v21 = v18;
          v19.n128_u32[0] = v20[4].u32[2];
          SKCSceneNode::matrixForDestination(v18, v19, v20[4].f32[3]);
          SKCSceneNode::getCropGroup(v21);
        }

        v15 = v43;
      }

      else
      {
        v20 = *(a1 + 16);
      }

      v22 = v20[4];
      if (v20[14].i8[0] == 1)
      {
        v23 = vnegq_f32(v22);
        v22.f32[1] = v22.f32[1] + v22.f32[3];
        v22.i32[3] = v23.i32[3];
      }

      v24 = 0;
      v25 = *v16;
      v26 = v16[1];
      v35 = v16[2];
      v36 = v16[3];
      v27 = v35;
      v27.i32[2] = -1174203793;
      v28 = vadd_f32(*v22.f32, *&vextq_s8(v22, v22, 8uLL));
      v29 = vsub_f32(v28, *v22.f32);
      v30 = *v16;
      v30.f32[0] = 2.0 / v29.f32[0];
      v31 = v26;
      v31.f32[1] = 2.0 / v29.f32[1];
      v32 = vneg_f32(vadd_f32(*v22.f32, v28));
      v33 = v36;
      v33.i32[2] = 0x80000000;
      *v34.f32 = vdiv_f32(v32, v29);
      v34.i64[1] = vextq_s8(v33, v33, 8uLL).u64[0];
      v35.i32[2] = 0.5;
      v36.i32[2] = 0.5;
      v44 = v30;
      v45 = v31;
      v46 = v27;
      v47 = v34;
      do
      {
        *(&v48 + v24) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(*(&v44 + v24))), v26, *&v44.f32[v24 / 4], 1), v35, *(&v44 + v24), 2), v36, *(&v44 + v24), 3);
        v24 += 16;
      }

      while (v24 != 64);
      v37 = 0;
      v44 = v48;
      v45 = v49;
      v46 = v50;
      v47 = v51;
      do
      {
        *(&v48 + v37) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v42, COERCE_FLOAT(*(&v44 + v37))), v41, *&v44.f32[v37 / 4], 1), v40, *(&v44 + v37), 2), v15, *(&v44 + v37), 3);
        v37 += 16;
      }

      while (v37 != 64);
      SKCRenderer::doBuildRenderGroup(a1, v17, 1.0, 0.0, v48, v49, v50, v51);
      ++v13;
      v15 = v43;
    }

    while (v13 != v14);
    v4 = *a2;
  }

  return std::list<SKCAction *>::splice(v4 + 32, *(v4 + 40), a1 + 1200, *(a1 + 1208), *(a1 + 1224));
}

void sub_21C4A6D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  _Unwind_Resume(exception_object);
}

void SKCRenderer::expandRenderGroup(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a2;
  v63[0] = compare_node_sort;
  std::list<SKCRenderSortInfo *>::__sort<BOOL (*)(SKCRenderSortInfo *,SKCRenderSortInfo *)>(*(v6 + 40), (v6 + 32), *(v6 + 48), v63);
  v68 = &v68;
  v69 = &v68;
  v70 = 0;
  v7 = *v4;
  v8 = *(*v4 + 80);
  if (v8)
  {
    jet_command_buffer::add_command_buffer(*(a1 + 40), v8);
    v7 = *v4;
  }

  v9 = *(v7 + 40);
  v51 = v7 + 32;
  if (v9 != v7 + 32)
  {
    v50 = v4;
    v53 = 0;
    while (1)
    {
      v52 = v9;
      v10 = *(v9 + 16);
      v11 = *v10;
      v12 = *(v10 + 2);
      v13 = *(v10 + 3);
      v14 = *(v10 + 5);
      *(a1 + 144) = *(v10 + 4);
      *(a1 + 160) = v14;
      *(a1 + 112) = v12;
      *(a1 + 128) = v13;
      *(a1 + 176) = *(v10 + 24);
      v15 = (**v11)(v11, a1 + 80);
      if (v15)
      {
        SKCRenderer::ensureBatchBufferCapacity(a1, v15);
        ++v53;
        if ((*(a1 + 80) + v15) > *(a1 + 84))
        {
          v16 = (*(**(*(a1 + 16) + 80) + 16))(*(*(a1 + 16) + 80));
          std::shared_ptr<jet_framebuffer>::shared_ptr[abi:ne200100]<jet_framebuffer,0>(v63, v16);
        }
      }

      if ((*(*v11 + 8))(v11, a1 + 80))
      {
        v17 = v53;
        if (!v15)
        {
          v17 = v53 + 1;
        }

        v53 = v17;
        if ((*(a1 + 661) & 0x10) != 0 && *(*(a1 + 744) + 164) >= 1)
        {
          v18 = *(v11 + 8);
          for (i = *(v11 + 80); !v18 && i != 0; i = *(i + 80))
          {
            v18 = *(i + 8);
          }

          v21 = v18;
          NSLog(&cfstr_SkcrendererPPa_0.isa, a1, *(*(a1 + 744) + 168), *(*(a1 + 744) + 164), v18);
        }

        SKCRenderer::flushCurrentBatch(a1);
        (*(*v11 + 72))(v11, a1 + 80, a1 + 40);
      }

      if (!v15)
      {
        goto LABEL_48;
      }

      if (*(a1 + 668) < 1)
      {
        goto LABEL_32;
      }

      if (((*(*v11 + 16))(v11, a1 + 80) & 1) == 0)
      {
        break;
      }

LABEL_33:
      if ((*(a1 + 661) & 0x10) != 0)
      {
        v26 = *(v11 + 8);
        if (!v26)
        {
          v27 = *(v11 + 80);
          if (v27)
          {
            do
            {
              v28 = *(v27 + 8);
              v27 = *(v27 + 80);
              if (v28)
              {
                v29 = 1;
              }

              else
              {
                v29 = v27 == 0;
              }
            }

            while (!v29);
            v26 = v28;
          }
        }

        NSLog(&cfstr_SkcrendererPPa_2.isa, a1, *(*(a1 + 744) + 168), *(*(a1 + 744) + 164), v26);
      }

      v30 = (*(*v11 + 32))(v11, a1 + 80);
      v31 = *(a1 + 680);
      if (v31)
      {
        v32 = [v31 attributes];
        v33 = [v32 count];

        if (v33)
        {
          (*(*v11 + 40))(v11, a1 + 80, *(a1 + 680), v30, *(a1 + 80));
        }
      }

      v34 = *(a1 + 80);
      *(a1 + 668) += v30;
      *(a1 + 80) = v34 + v30;
      if ((*(a1 + 660) & 0x1E) != 0)
      {
        (*(*v11 + 24))(v63, v11, a1 + 80);
        SKCRenderer::addPerNodeDebugOverlays(a1, v11, v63, v34, v30);
      }

LABEL_48:
      (*(*v11 + 56))(v11, a1 + 80, &v68);
      if (v70)
      {
        SKCRenderer::flushCurrentBatch(a1);
        v35 = *(a1 + 176);
        v56 = *(a1 + 128);
        v57 = *(a1 + 112);
        v54 = *(a1 + 160);
        v55 = *(a1 + 144);
        for (j = v69; j != &v68; j = j[1])
        {
          v38 = j[2];
          v37 = j[3];
          v62[0] = v38;
          v62[1] = v37;
          if (v37)
          {
            atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v39 = 0;
          *(a1 + 1160) = v38;
          *(a1 + 1168) = 0;
          v40 = *(a1 + 656);
          *(a1 + 656) = *(v38 + 192);
          v41 = *(v38 + 144);
          v42 = *(v38 + 160);
          v43 = *(v38 + 176);
          v71[0] = *(v38 + 128);
          v71[1] = v41;
          v71[2] = v42;
          v71[3] = v43;
          do
          {
            *&v63[v39 / 8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, COERCE_FLOAT(v71[v39 / 0x10])), v56, *&v71[v39 / 0x10], 1), v55, v71[v39 / 0x10], 2), v54, v71[v39 / 0x10], 3);
            v39 += 16;
          }

          while (v39 != 64);
          v44 = *(v38 + 8);
          v45 = *(v38 + 16);
          if (v44 != v45)
          {
            v60 = v64;
            v61 = *v63;
            v58 = v66;
            v59 = v65;
            do
            {
              SKCRenderer::doBuildRenderGroup(a1, *v44++, v35, 0.0, v61, v60, v59, v58);
            }

            while (v44 != v45);
          }

          std::list<SKCAction *>::splice(v38 + 32, *(v38 + 40), a1 + 1200, *(a1 + 1208), *(a1 + 1224));
          SKCRenderer::expandRenderGroup(a1, v62, a3);
          *(a1 + 656) = v40;
          if (v37)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v37);
          }
        }

        *(a1 + 112) = v57;
        *(a1 + 128) = v56;
        *(a1 + 144) = v55;
        *(a1 + 160) = v54;
        *(a1 + 176) = v35;
      }

      std::__list_imp<std::shared_ptr<SKCRenderSortGroup>>::clear(&v68);
      v9 = *(v52 + 8);
      if (v9 == v51)
      {
        v4 = v50;
        v7 = *v50;
        v46 = v53;
        goto LABEL_65;
      }
    }

    if ((*(a1 + 661) & 0x10) != 0)
    {
      v22 = *(v11 + 8);
      for (k = *(v11 + 80); !v22 && k != 0; k = *(k + 80))
      {
        v22 = *(k + 8);
      }

      v25 = v22;
      NSLog(&cfstr_SkcrendererPPa_1.isa, a1, *(*(a1 + 744) + 168), *(*(a1 + 744) + 164), v22);
    }

LABEL_32:
    SKCRenderer::flushCurrentBatch(a1);
    (*(*v11 + 24))(v67, v11, a1 + 80);
    SKCRenderBatch::operator=(a1 + 664, v67);
    *(a1 + 668) = 0;
    goto LABEL_33;
  }

  v46 = 0;
LABEL_65:
  v47 = *(a1 + 744);
  *(v47 + 152) += *(v7 + 48);
  *(v47 + 160) += v46;
  SKCRenderer::flushCurrentBatch(a1);
  v48 = *v4;
  v49 = *(*v4 + 96);
  if (v49)
  {
    jet_command_buffer::add_command_buffer(*(a1 + 40), v49);
    v48 = *v4;
  }

  std::list<SKCAction *>::splice(a1 + 1200, *(a1 + 1208), v48 + 32, *(v48 + 40), (v48 + 32));
  *(a1 + 1224) = *(a1 + 1208);
  std::__list_imp<std::shared_ptr<SKCRenderSortGroup>>::clear(&v68);
}

uint64_t SKCRenderer::getBackingContext@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 1016);
  *a2 = *(this + 1008);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

double SKCRenderer::doBuildRenderGroup(uint64_t a1, uint64_t a2, float a3, float a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  if (*(a2 + 280) == 1 || (v10 = a3 * *(a2 + 324), v10 <= 0.0))
  {

    return SKCNode::clearDirty(a2);
  }

  else
  {
    if ((*(*a2 + 96))(a2))
    {
      *&v48[0] = a2;
      if (*(a2 + 584) == 1)
      {
        Translation = SKCNode::getTranslation(a2);
        *&v49[0] = v48;
        *(_ZNSt3__16__treeINS_12__value_typeIP12SKCLightNodeDv4_fEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE25__emplace_unique_key_argsIS3_JRKNS_21piecewise_construct_tENS_5tupleIJRKS3_EEENSH_IJEEEEEENS_4pairINS_15__tree_iteratorIS5_PNS_11__tree_nodeIS5_PvEElEEbEERKT_DpOT0_(a1 + 1040, v48) + 3) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a5, Translation.n128_f32[0]), a6, Translation.n128_u64[0], 1), a7, Translation, 2), a8, Translation, 3);
      }
    }

    __p = 0;
    v46 = 0;
    v47 = 0;
    v44[0] = a5;
    v44[1] = a6;
    v44[2] = a7;
    v44[3] = a8;
    *&v13 = (*(*a2 + 104))(a2);
    v14 = 0;
    v48[0] = v13;
    v48[1] = v15;
    v48[2] = v16;
    v48[3] = v17;
    do
    {
      v49[v14] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a5, COERCE_FLOAT(v48[v14])), a6, *&v48[v14], 1), a7, v48[v14], 2), a8, v48[v14], 3);
      ++v14;
    }

    while (v14 != 4);
    v41 = v49[1];
    v43 = v49[0];
    v37 = v49[3];
    v39 = v49[2];
    ZTranslation = SKCNode::getZTranslation(a2);
    (*(*a2 + 48))(a2, a1 + 80, &__p);
    (*(*a2 + 64))(a2, a1 + 80, a1 + 56);
    v19 = SKCNode::clearDirty(a2);
    v20 = a4 + ZTranslation;
    if (*(a1 + 1001) != 1 || (*(*a2 + 128))(a2, v44, v19))
    {
      Info = SKCRenderer::{unnamed type#1}::nextInfo(a1 + 1152);
      *&v48[0] = Info;
      *Info = a2;
      *(Info + 32) = v43;
      *(Info + 48) = v41;
      *(Info + 64) = v39;
      *(Info + 80) = v37;
      *(Info + 96) = a3;
      *(Info + 8) = v20;
      if (*(a1 + 1000) == 1)
      {
        v23 = *(a2 + 288) & 0xFLL;
        if (v24)
        {
          v25 = v24;
          v26 = v24[76];
          v27 = v26;
          if (v26)
          {
            [v26 _backingTexture];
            v28 = 32 * (*&v49[0] & 0x7FFFFLL);
            if (*(&v49[0] + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v49[0] + 1));
            }
          }

          else
          {
            v28 = 0;
            v49[0] = 0uLL;
          }

          v29 = v25[75];
          v30 = v29;
          if (v29)
          {
            [v29 _backingTexture];
            v31 = (*&v49[0] & 0x7FFFFLL) << 25;
            if (*(&v49[0] + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v49[0] + 1));
            }
          }

          else
          {
            v31 = 0;
            v49[0] = 0uLL;
          }

          v23 |= v28 | v31 | (v25[74] << 45);
        }
      }

      else
      {
        v23 = *(a1 + 1168);
      }

      *(Info + 16) = v23;
      if (v32 && v32[141])
      {
        std::vector<PKCLineSeg *>::push_back[abi:ne200100](a1 + 1088, v48);
      }

      ++*(a1 + 1168);
    }

    v33 = __p;
    if ((*(a1 + 1002) & 1) == 0)
    {
      v34 = v46;
      if (v46 != __p)
      {
        do
        {
          SKCRenderer::doBuildRenderGroup(a1, *v33++, v10, v20, v43, v41, v39, v37);
        }

        while (v33 != v34);
        v33 = __p;
      }
    }

    if (v33)
    {
      v46 = v33;
      operator delete(v33);
    }
  }

  return result;
}

void sub_21C4A79CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SKCRenderer::{unnamed type#1}::nextInfo(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 == a1 + 48)
  {
    operator new();
  }

  v2 = *(v1 + 16);
  *(a1 + 72) = *(v1 + 8);
  return v2;
}

void SKCRenderer::addPerSceneDebugOverlays(id *this, id *a2, simd_float4x4 a3)
{
  v28 = a3;
  v5 = [this[159] valueForKey:@"debugDrawPhysics"];
  v6 = [v5 BOOLValue];

  v7 = [this[159] valueForKey:@"debugDrawPhysicsFields"];
  v8 = [v7 BOOLValue];

  if ((v8 | v6))
  {
    v9 = a2[1];
    v10 = [v9 _pkPhysicsWorld];
    PKGet_PTM_RATIO();
    v12 = v11;
    sk_matrix_get_GLKMatrix(&v28, &v26);
    v13 = glsk_matrix_make(&v26, __p);
    v13.n128_u32[0] = v12;
    [v10 debugDraw:__p matrix:v6 showsPhysics:0 showsOutlineInterior:v8 showsFields:v13.n128_f64[0]];

    v14 = [v9 _pkPhysicsWorld];
    v15 = [v14 debugDrawPacket];

    v16 = (v15[1] - *v15) >> 3;
    if (v16)
    {
      v17 = (this + 157);
      v18 = this[157];
      if (!v18 || *(v18 + 4) < v16 && ((v19 = this[158], *v17 = 0, this[158] = 0, !v19) || (std::__shared_weak_count::__release_shared[abi:ne200100](v19), (v18 = *v17) == 0)))
      {
        v20 = (*(*this[126] + 16))(this[126], 0, 4, v16);
        std::shared_ptr<jet_buffer_pool>::shared_ptr[abi:ne200100]<jet_buffer_pool,0>(__p, v20);
      }

      jet_buffer_pool::next_buffer(v18);
      std::vector<std::shared_ptr<jet_buffer_pool>>::emplace_back<std::shared_ptr<jet_buffer_pool> const&>((this + 97), (this + 157));
      v21 = *v17;
      data = jet_buffer_pool::get_data(*v17);
      jet_buffer_pool::get_element_size(v21);
      v23 = *v15;
      if (v15[1] != *v15)
      {
        v24 = 0;
        do
        {
          *&v25 = *(v23 + 8 * v24);
          *(&v25 + 1) = 0x3F80000000000000;
          *(data + 16 * v24++) = v25;
          v23 = *v15;
        }

        while (v24 < (v15[1] - *v15) >> 3);
      }

      jet_buffer_pool::commit_data(*v17);
      operator new();
    }
  }
}

void sub_21C4A7E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

id SKCRenderer::textureFromNode(SKCRenderer *this, char **a2, float a3, NSDictionary *a4)
{
  v7 = a4;
  v8 = v7;
  if (v7 && ([(NSDictionary *)v7 valueForKey:@"textureFromNodeCropRect"], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = [(NSDictionary *)v8 valueForKey:@"textureFromNodeCropRect"];
    v41 = CGRectFromString(v10);
    y = v41.origin.y;
    x = v41.origin.x;
    width = v41.size.width;
    height = v41.size.height;

    v11.f64[0] = width;
    v11.f64[1] = height;
    v12.f64[0] = x;
    v12.f64[1] = y;
    AABB = vcvt_hight_f32_f64(vcvt_f32_f64(v12), v11);
  }

  else
  {
    {
      v15 = [(NSDictionary *)v8 objectForKeyedSubscript:@"doNotRenderChildNodes"];
      v16 = [v15 BOOLValue];

      if (!v16)
      {
        v39.columns[0] = SKCNode::getAccumulatedBoundingBox(a2);
        v39.columns[1] = v21;
        v39.columns[2] = v22;
        v39.columns[3] = v23;
        AABB = SKCBoundingBoxGetAABB(&v39);
        goto LABEL_10;
      }

      v14 = *a2;
    }

    *v17.i64 = (*(v14 + 15))(a2);
    v39.columns[0] = v17;
    v39.columns[1] = v18;
    v39.columns[2] = v19;
    v39.columns[3] = v20;
    AABB = SKCBoundingBoxGetAABB(&v39);
  }

LABEL_10:
  v24 = (ceilf(AABB.f32[2]) * a3);
  v25 = (ceilf(AABB.f32[3]) * a3);
  if (v8)
  {
    v26 = [(NSDictionary *)v8 valueForKey:@"textureMaxRenderSize"];

    if (v26)
    {
      v27 = [(NSDictionary *)v8 valueForKey:@"textureMaxRenderSize"];
      v28 = v27;
      if (v27)
      {
        v29 = [v27 unsignedIntegerValue];
        if (v24 > v29 || v25 > v29)
        {
          if (v24 <= v25)
          {
            if (v25 <= v24)
            {
              v24 = v29;
            }

            else
            {
              v24 = ((v24 / v25) * v29);
            }

            v25 = v29;
          }

          else
          {
            v25 = ((v25 / v24) * v29);
            v24 = v29;
          }
        }
      }
    }
  }

  if (v24)
  {
    v31 = v25 == 0;
  }

  else
  {
    v31 = 1;
  }

  if (!v31)
  {
    v32 = *(this + 127);
    if (v32)
    {
      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
    }

    texture_2d = jet_context::create_texture_2d();
    std::shared_ptr<jet_texture>::shared_ptr[abi:ne200100]<jet_texture,0>(&v39, texture_2d);
  }

  return 0;
}

uint64_t jet_command_buffer::begin_render_pass(jet_command_buffer *this, jet_framebuffer *a2)
{
  v6 = 32;
  v4 = *(this + 2);
  if (v4 >= *(this + 3))
  {
    result = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(this + 8, &v6);
  }

  else
  {
    *v4 = &unk_282E15828;
    *(v4 + 8) = 32;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 16) = 0;
    *(v4 + 64) = 0;
    result = v4 + 192;
    *(v4 + 96) = 0;
  }

  *(this + 2) = result;
  *(result - 80) = a2;
  return result;
}

BOOL compare_node_sort(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if ((COERCE_UNSIGNED_INT(v2 - v3) & 0x60000000) != 0)
  {
    return v2 < v3;
  }

  else
  {
    return *(a1 + 16) < *(a2 + 16);
  }
}

uint64_t SKCRenderer::ensureBatchBufferCapacity(SKCRenderer *this, int a2)
{
  v2 = *(this + 21);
  v3 = *(this + 20) + a2;
  if (v3 < v2)
  {
    return 1;
  }

  if (v3 > 0xAAA8)
  {
    return 0;
  }

  v5 = v3 * 1.5;
  if (v5 < (2 * v2))
  {
    v5 = (2 * v2);
  }

  if (v5 > 43688.0)
  {
    v5 = 43688.0;
  }

  SKCRenderer::resizeBatchBufferCapacity(this, v5);
  return 1;
}

uint64_t SKCRenderBatch::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  objc_storeStrong((a1 + 16), *(a2 + 16));
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

void SKCRenderer::~SKCRenderer(SKCRenderer *this)
{
    ;
  }

  for (i = *(this + 151); i != (this + 1200); i = i[1])
  {
    v3 = i[2];
    if (v3)
    {
      MEMORY[0x21CF0A160](v3, 0x1020C40601E13ABLL);
    }
  }

  std::__list_imp<SKCRenderSortInfo *>::clear(this + 150);
  for (j = *(this + 148); j != (this + 1176); j = j[1])
  {
    v5 = j[2];
    if (v5)
    {
      MEMORY[0x21CF0A160](v5, 0x1020C40601E13ABLL);
    }
  }

  std::__list_imp<SKCRenderSortInfo *>::clear(this + 147);
  v6 = *(this + 143);
  if (v6)
  {
    (*(*v6 + 88))(v6);
  }

  v7 = *(this + 142);
  if (v7)
  {
    (*(*v7 + 88))(v7);
  }

  v8 = *(this + 158);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v14 = (this + 1232);
  std::vector<std::shared_ptr<PKCField>>::__destroy_vector::operator()[abi:ne200100](&v14);
  std::__list_imp<SKCRenderSortInfo *>::clear(this + 150);
  std::__list_imp<SKCRenderSortInfo *>::clear(this + 147);
  std::__tree<std::__value_type<SKCLightNode *,std::shared_ptr<std::vector<SKCRenderSortInfo *>>>,std::__map_value_compare<SKCLightNode *,std::__value_type<SKCLightNode *,std::shared_ptr<std::vector<SKCRenderSortInfo *>>>,std::less<SKCLightNode *>,true>,std::allocator<std::__value_type<SKCLightNode *,std::shared_ptr<std::vector<SKCRenderSortInfo *>>>>>::destroy(this + 1112, *(this + 140));
  v9 = *(this + 136);
  if (v9)
  {
    *(this + 137) = v9;
    operator delete(v9);
  }

  std::__tree<std::__value_type<unsigned int,SKCLightMaskUniforms>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SKCLightMaskUniforms>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SKCLightMaskUniforms>>>::destroy(this + 1064, *(this + 134));
  std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(this + 1040, *(this + 131));
  v10 = *(this + 129);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(this + 127);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  SKCStats::~SKCStats((this + 808));
  SKCRenderInfo::~SKCRenderInfo(this + 10);
  std::__list_imp<std::shared_ptr<SKCRenderSortGroup>>::clear(this + 7);
  v12 = *(this + 6);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 3);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void SKCRenderInfo::~SKCRenderInfo(id *this)
{
  v28 = this + 87;
  std::vector<std::shared_ptr<PKCField>>::__destroy_vector::operator()[abi:ne200100](&v28);
  v28 = this + 84;
  std::vector<std::shared_ptr<PKCField>>::__destroy_vector::operator()[abi:ne200100](&v28);

  v2 = this[71];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[69];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[67];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = this[65];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = this[63];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = this[61];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = this[59];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = this[57];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = this[55];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = this[53];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = this[51];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = this[49];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = this[47];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = this[45];
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = this[40];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = this[38];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = this[36];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = this[34];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v20 = this[32];
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = this[30];
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v22 = this[28];
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  v23 = this[26];
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v24 = this[24];
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v25 = this[22];
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v26 = this[20];
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v27 = this[18];
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }
}

uint64_t std::vector<jet_render_op>::emplace_back<jet_render_opcode>(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *v3 = &unk_282E15828;
    *(v3 + 8) = v4;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 16) = 0;
    *(v3 + 64) = 0;
    *(v3 + 96) = 0;
    result = v3 + 192;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_21C4A8A3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<jet_context>::shared_ptr[abi:ne200100]<jet_context_Metal,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<jet_context *,std::shared_ptr<jet_context>::__shared_ptr_default_delete<jet_context,jet_context>,std::allocator<jet_context>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CF0A160);
}

uint64_t std::__shared_ptr_pointer<jet_context *,std::shared_ptr<jet_context>::__shared_ptr_default_delete<jet_context,jet_context>,std::allocator<jet_context>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 128))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<jet_context *,std::shared_ptr<jet_context>::__shared_ptr_default_delete<jet_context,jet_context>,std::allocator<jet_context>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_21C4A8B68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<jet_context>::shared_ptr[abi:ne200100]<jet_context_Metal,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<jet_context_OpenGL *,std::shared_ptr<jet_context>::__shared_ptr_default_delete<jet_context,jet_context_OpenGL>,std::allocator<jet_context_OpenGL>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CF0A160);
}

uint64_t std::__shared_ptr_pointer<jet_context_OpenGL *,std::shared_ptr<jet_context>::__shared_ptr_default_delete<jet_context,jet_context_OpenGL>,std::allocator<jet_context_OpenGL>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 128))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<jet_context_OpenGL *,std::shared_ptr<jet_context>::__shared_ptr_default_delete<jet_context,jet_context_OpenGL>,std::allocator<jet_context_OpenGL>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__tree<std::__value_type<unsigned int,SKCLightMaskUniforms>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SKCLightMaskUniforms>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SKCLightMaskUniforms>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,SKCLightMaskUniforms>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SKCLightMaskUniforms>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SKCLightMaskUniforms>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,SKCLightMaskUniforms>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SKCLightMaskUniforms>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SKCLightMaskUniforms>>>::destroy(a1, a2[1]);
    v4 = a2[17];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = a2[15];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = a2[13];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<SKCLightNode *,std::shared_ptr<std::vector<SKCRenderSortInfo *>>>,std::__map_value_compare<SKCLightNode *,std::__value_type<SKCLightNode *,std::shared_ptr<std::vector<SKCRenderSortInfo *>>>,std::less<SKCLightNode *>,true>,std::allocator<std::__value_type<SKCLightNode *,std::shared_ptr<std::vector<SKCRenderSortInfo *>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<SKCLightNode *,std::shared_ptr<std::vector<SKCRenderSortInfo *>>>,std::__map_value_compare<SKCLightNode *,std::__value_type<SKCLightNode *,std::shared_ptr<std::vector<SKCRenderSortInfo *>>>,std::less<SKCLightNode *>,true>,std::allocator<std::__value_type<SKCLightNode *,std::shared_ptr<std::vector<SKCRenderSortInfo *>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<SKCLightNode *,std::shared_ptr<std::vector<SKCRenderSortInfo *>>>,std::__map_value_compare<SKCLightNode *,std::__value_type<SKCLightNode *,std::shared_ptr<std::vector<SKCRenderSortInfo *>>>,std::less<SKCLightNode *>,true>,std::allocator<std::__value_type<SKCLightNode *,std::shared_ptr<std::vector<SKCRenderSortInfo *>>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

void sub_21C4A8D6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<jet_sampler>::shared_ptr[abi:ne200100]<jet_sampler,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<jet_sampler *,std::shared_ptr<jet_sampler>::__shared_ptr_default_delete<jet_sampler,jet_sampler>,std::allocator<jet_sampler>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CF0A160);
}

uint64_t std::__shared_ptr_pointer<jet_sampler *,std::shared_ptr<jet_sampler>::__shared_ptr_default_delete<jet_sampler,jet_sampler>,std::allocator<jet_sampler>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<jet_sampler *,std::shared_ptr<jet_sampler>::__shared_ptr_default_delete<jet_sampler,jet_sampler>,std::allocator<jet_sampler>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_21C4A8E98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<jet_stencil_mode>::shared_ptr[abi:ne200100]<jet_stencil_mode,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<jet_stencil_mode *,std::shared_ptr<jet_stencil_mode>::__shared_ptr_default_delete<jet_stencil_mode,jet_stencil_mode>,std::allocator<jet_stencil_mode>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CF0A160);
}

uint64_t std::__shared_ptr_pointer<jet_stencil_mode *,std::shared_ptr<jet_stencil_mode>::__shared_ptr_default_delete<jet_stencil_mode,jet_stencil_mode>,std::allocator<jet_stencil_mode>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<jet_stencil_mode *,std::shared_ptr<jet_stencil_mode>::__shared_ptr_default_delete<jet_stencil_mode,jet_stencil_mode>,std::allocator<jet_stencil_mode>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_21C4A8FC4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<jet_depth_stencil_mode>::shared_ptr[abi:ne200100]<jet_depth_stencil_mode,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<jet_depth_stencil_mode *,std::shared_ptr<jet_depth_stencil_mode>::__shared_ptr_default_delete<jet_depth_stencil_mode,jet_depth_stencil_mode>,std::allocator<jet_depth_stencil_mode>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CF0A160);
}

uint64_t std::__shared_ptr_pointer<jet_depth_stencil_mode *,std::shared_ptr<jet_depth_stencil_mode>::__shared_ptr_default_delete<jet_depth_stencil_mode,jet_depth_stencil_mode>,std::allocator<jet_depth_stencil_mode>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<jet_depth_stencil_mode *,std::shared_ptr<jet_depth_stencil_mode>::__shared_ptr_default_delete<jet_depth_stencil_mode,jet_depth_stencil_mode>,std::allocator<jet_depth_stencil_mode>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_21C4A90F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<jet_constant>::shared_ptr[abi:ne200100]<jet_constant,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<jet_constant *,std::shared_ptr<jet_constant>::__shared_ptr_default_delete<jet_constant,jet_constant>,std::allocator<jet_constant>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CF0A160);
}

uint64_t std::__shared_ptr_pointer<jet_constant *,std::shared_ptr<jet_constant>::__shared_ptr_default_delete<jet_constant,jet_constant>,std::allocator<jet_constant>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 112))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<jet_constant *,std::shared_ptr<jet_constant>::__shared_ptr_default_delete<jet_constant,jet_constant>,std::allocator<jet_constant>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,SKCLightMaskUniforms>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SKCLightMaskUniforms>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SKCLightMaskUniforms>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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

void _ZNSt3__110__function6__funcIZN11SKCRenderer6renderEP7SKCNodeDv4_fRKNS_10shared_ptrI15jet_framebufferEEDv4_j13simd_float4x4bP12NSDictionaryP8SKCStatsSG_dU13block_pointerFvvEE3__0NS_9allocatorISJ_EESH_ED0Ev(uint64_t a1)
{

  JUMPOUT(0x21CF0A160);
}

uint64_t _ZNKSt3__110__function6__funcIZN11SKCRenderer6renderEP7SKCNodeDv4_fRKNS_10shared_ptrI15jet_framebufferEEDv4_j13simd_float4x4bP12NSDictionaryP8SKCStatsSG_dU13block_pointerFvvEE3__0NS_9allocatorISJ_EESH_E7__cloneEPNS0_6__baseISH_EE(uint64_t a1, void *a2)
{
  *a2 = &unk_282E18228;
  result = MEMORY[0x21CF0AB10](*(a1 + 8));
  a2[1] = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN11SKCRenderer6renderEP7SKCNodeDv4_fRKNS_10shared_ptrI15jet_framebufferEEDv4_j13simd_float4x4bP12NSDictionaryP8SKCStatsSG_dU13block_pointerFvvEE3__0NS_9allocatorISJ_EESH_E18destroy_deallocateEv(id *a1)
{

  operator delete(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN11SKCRenderer6renderEP7SKCNodeDv4_fRKNS_10shared_ptrI15jet_framebufferEEDv4_j13simd_float4x4bP12NSDictionaryP8SKCStatsSG_dU13block_pointerFvvEE3__0NS_9allocatorISJ_EESH_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN11SKCRenderer6renderEP7SKCNodeDv4_fRKNSt3__110shared_ptrI15jet_framebufferEEDv4_j13simd_float4x4bP12NSDictionaryP8SKCStatsSE_dU13block_pointerFvvEE3__0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__tree<std::__value_type<SKCLightNode *,std::shared_ptr<std::vector<SKCRenderSortInfo *>>>,std::__map_value_compare<SKCLightNode *,std::__value_type<SKCLightNode *,std::shared_ptr<std::vector<SKCRenderSortInfo *>>>,std::less<SKCLightNode *>,true>,std::allocator<std::__value_type<SKCLightNode *,std::shared_ptr<std::vector<SKCRenderSortInfo *>>>>>::__emplace_unique_key_args<SKCLightNode *,std::piecewise_construct_t const&,std::tuple<SKCLightNode * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

void sub_21C4A95A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<std::vector<SKCRenderSortInfo *>>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<std::vector<SKCRenderSortInfo *> *,std::shared_ptr<std::vector<SKCRenderSortInfo *>>::__shared_ptr_default_delete<std::vector<SKCRenderSortInfo *>,std::vector<SKCRenderSortInfo *>>,std::allocator<std::vector<SKCRenderSortInfo *>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CF0A160);
}

uint64_t std::__shared_ptr_pointer<std::vector<SKCRenderSortInfo *> *,std::shared_ptr<std::vector<SKCRenderSortInfo *>>::__shared_ptr_default_delete<std::vector<SKCRenderSortInfo *>,std::vector<SKCRenderSortInfo *>>,std::allocator<std::vector<SKCRenderSortInfo *>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<std::vector<SKCRenderSortInfo *>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x21CF0A160);
  }
}

void *_ZNSt3__16__treeINS_12__value_typeIP12SKCLightNodeDv4_fEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE25__emplace_unique_key_argsIS3_JRKNS_21piecewise_construct_tENS_5tupleIJRKS3_EEENSH_IJEEEEEENS_4pairINS_15__tree_iteratorIS5_PNS_11__tree_nodeIS5_PvEElEEbEERKT_DpOT0_(uint64_t a1, unint64_t *a2)
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

uint64_t std::vector<std::shared_ptr<jet_buffer_pool>>::emplace_back<std::shared_ptr<jet_buffer_pool> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::shared_ptr<jet_buffer_pool>>::__emplace_back_slow_path<std::shared_ptr<jet_buffer_pool> const&>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 8);
    *v3 = *a2;
    v3[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    result = (v3 + 2);
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<std::shared_ptr<jet_buffer_pool>>::__emplace_back_slow_path<std::shared_ptr<jet_buffer_pool> const&>(const void **a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v16[4] = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<jet_buffer>>>(a1, v7);
  }

  v8 = 16 * v2;
  v9 = *a2;
  *(16 * v2) = *a2;
  if (*(&v9 + 1))
  {
    atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v10 = v8 + 16;
  v11 = a1[1] - *a1;
  v12 = v8 - v11;
  memcpy((v8 - v11), *a1, v11);
  v13 = *a1;
  *a1 = v12;
  a1[1] = v10;
  v14 = a1[2];
  a1[2] = 0;
  v16[2] = v13;
  v16[3] = v14;
  v16[0] = v13;
  v16[1] = v13;
  std::__split_buffer<std::shared_ptr<jet_buffer>>::~__split_buffer(v16);
  return v10;
}

uint64_t *std::list<SKCRenderSortInfo *>::__sort<BOOL (*)(SKCRenderSortInfo *,SKCRenderSortInfo *)>(uint64_t **a1, uint64_t **a2, unint64_t a3, unsigned int (**a4)(uint64_t, uint64_t))
{
  v4 = a1;
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v8 = *a2;
      if ((*a4)((*a2)[2], a1[2]))
      {
        v10 = *v8;
        v9 = v8[1];
        *(v10 + 8) = v9;
        *v9 = v10;
        v11 = *v4;
        v11[1] = v8;
        *v8 = v11;
        *v4 = v8;
        v8[1] = v4;
        return v8;
      }
    }

    else
    {
      v13 = a3 >> 1;
      v14 = (a3 >> 1) + 1;
      v15 = a1;
      do
      {
        v15 = v15[1];
        --v14;
      }

      while (v14 > 1);
      v16 = std::list<SKCRenderSortInfo *>::__sort<BOOL (*)(SKCRenderSortInfo *,SKCRenderSortInfo *)>(a1, v15, a3 >> 1, a4);
      v4 = std::list<SKCRenderSortInfo *>::__sort<BOOL (*)(SKCRenderSortInfo *,SKCRenderSortInfo *)>(v15, a2, a3 - v13, a4);
      if ((*a4)(v4[2], v16[2]))
      {
          ;
        }

        v19 = *i;
        v20 = *(*i + 8);
        v21 = *v4;
        v21[1] = v20;
        *v20 = v21;
        v22 = *v16;
        v18 = v16[1];
        v22[1] = v4;
        *v4 = v22;
        *v16 = v19;
        v19[1] = v16;
      }

      else
      {
        v18 = v16[1];
        i = v4;
        v4 = v16;
      }

      if (v18 != i && i != a2)
      {
        v23 = i;
        do
        {
          if ((*a4)(i[2], v18[2]))
          {
              ;
            }

            v26 = *j;
            v27 = *(*j + 8);
            v28 = *i;
            *(v28 + 8) = v27;
            *v27 = v28;
            if (v23 == i)
            {
              v23 = j;
            }

            v29 = *v18;
            v25 = v18[1];
            *(v29 + 8) = i;
            *i = v29;
            *v18 = v26;
            *(v26 + 8) = v18;
            i = j;
          }

          else
          {
            v25 = v18[1];
          }

          v30 = v25 == v23 || i == a2;
          v18 = v25;
        }

        while (!v30);
      }
    }
  }

  return v4;
}

BOOL SKGenerateNormalMapWithMultiSampling(int a1, int a2, unsigned int *a3, unint64_t a4, double a5, double a6)
{
  if (a4 >= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = a4;
  }

  if (a4)
  {
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:v11];
    if (v12)
    {
      size = 4 * a1 * a2;
      v63 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:?];
      v54 = v12;
      v55 = a3;
      SKGenerateNormalMap(a1, a2, a3, a5, a6);
      v13 = 0;
      v67 = a2;
      v68 = a1;
      v62 = 4 * a1;
      v61 = *MEMORY[0x277CBF9C8];
      v60 = *MEMORY[0x277CBFAF0];
      v59 = *MEMORY[0x277CBFB50];
      v56 = a6 + a6;
      v57 = a1;
      v58 = a2;
      v64 = a2 * a1;
      do
      {
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        v15 = [MEMORY[0x277CBF758] imageWithBitmapData:v63 bytesPerRow:v62 size:v61 format:DeviceRGB colorSpace:{v68, v67}];
        CGColorSpaceRelease(DeviceRGB);
        v16 = MEMORY[0x277CBF750];
        ++v13;
        *&v17 = v13 + v13;
        v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
        v65 = v15;
        v19 = [v16 filterWithName:@"CIGaussianBlur" keysAndValues:{v60, v15, @"inputRadius", v18, 0}];

        v20 = [v19 valueForKey:v59];
        [v20 extent];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v29 = [MEMORY[0x277CBF740] contextWithOptions:0];
        v30 = [v29 createCGImage:v20 fromRect:{v22 + (v26 - v68) * 0.5, v24 + (v28 - v67) * 0.5}];
        DataProvider = CGImageGetDataProvider(v30);
        v32 = CGDataProviderCopyData(DataProvider);
        BytePtr = CFDataGetBytePtr(v32);
        v34 = malloc_type_malloc(size, 0x100004077774924uLL);
        memcpy(v34, BytePtr, size);
        SKGenerateNormalMap(v57, v58, v34, a5, v56 * v13);
        if (v64)
        {
          v39 = v64;
          v40 = v55;
          do
          {
            LOBYTE(v35) = *(v40 + 3);
            v35 = LODWORD(v35) * 0.0039216;
            LOBYTE(v36) = BytePtr[3];
            v36 = LODWORD(v36) * 0.0039216;
            v41 = fminf(v35, v36);
            if (v41 != 0.0)
            {
              v42 = v35 + ((1.0 - v35) * v41);
              if (v42 != 0.0)
              {
                v43 = 0;
                v44 = v41 / v42;
                v45 = 1.0 - v44;
                do
                {
                  LOBYTE(v37) = *(v40 + v43);
                  LOBYTE(v38) = BytePtr[v43];
                  v46 = (v45 * ((LODWORD(v37) / v35) * 0.0039216)) + ((((LODWORD(v37) / v35) * 0.0039216) * (((LODWORD(v37) / v35) * 0.0039216) + ((((v38 / v36) * 0.0039216) + ((v38 / v36) * 0.0039216)) * (1.0 - ((LODWORD(v37) / v35) * 0.0039216))))) * v44);
                  v38 = 1132396544;
                  v37 = v46 * 255.0;
                  *(v40 + v43++) = v37;
                }

                while (v43 != 3);
                LOBYTE(v36) = *v40;
                v36 = ((LODWORD(v36) * 0.0039216) + -0.5) + ((LODWORD(v36) * 0.0039216) + -0.5);
                LOBYTE(v44) = *(v40 + 1);
                v47 = ((LODWORD(v44) * 0.0039216) + -0.5) + ((LODWORD(v44) * 0.0039216) + -0.5);
                LOBYTE(v45) = *(v40 + 2);
                v48 = ((LODWORD(v45) * 0.0039216) + -0.5) + ((LODWORD(v45) * 0.0039216) + -0.5);
                v37 = sqrtf(((v47 * v47) + (v36 * v36)) + (v48 * v48));
                if (v37 <= 0.0001)
                {
                  *(v40 + 2) = 0;
                  *v40 = 0;
                }

                else
                {
                  v49 = 1.0 / v37;
                  v50 = v47 * v49;
                  v51 = v48 * v49;
                  v52 = v35 * ((v36 * v49) + 1.0);
                  v37 = 127.5;
                  *v40 = (v52 * 127.5);
                  *(v40 + 1) = ((v35 * (v50 + 1.0)) * 127.5);
                  v36 = v51 + 1.0;
                  v35 = (v35 * (v51 + 1.0)) * 127.5;
                  *(v40 + 2) = v35;
                }
              }
            }

            ++v40;
            BytePtr += 4;
            --v39;
          }

          while (v39);
        }

        free(v34);
        CGImageRelease(v30);
        CFRelease(v32);
      }

      while (v13 != v11);

      v12 = v54;
    }

    return 1;
  }

  else
  {

    return SKGenerateNormalMap(a1, a2, a3, a5, a6);
  }
}

BOOL SKGenerateNormalMap(int a1, int a2, unsigned int *a3, double a4, double a5)
{
  v10 = malloc_type_malloc(4 * a2 * a1, 0x100004052888210uLL);
  v11 = v10;
  if (v10)
  {
    v12 = a4;
    v13 = fminf(fmaxf(v12, 0.0), 1.0) * 5.0;
    if (v13 >= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = v13;
    }

    v15 = a2 - 1;
    if (a2 >= 1)
    {
      v16 = 0;
      v17 = (&gNormalFilterInfo + 1300 * v14);
      v18 = *v17;
      v19 = a3;
      do
      {
        v20 = a1;
        v21 = v10;
        v22 = a1 - 1;
        if (a1 >= 1)
        {
          do
          {
            v24 = *v19++;
            v23 = v24;
            v25 = 0.0;
            v26 = HIBYTE(v24);
            if (HIBYTE(v24))
            {
              v27 = 255.0 / v26;
              v25 = fminf(fmaxf(((((BYTE1(v23) * 0.59) + (v23 * 0.3)) + (BYTE2(v23) * 0.11)) * v27) * 0.0039216, 0.0), 1.0);
            }

            *v21++ = v25;
            --v20;
          }

          while (v20);
        }

        ++v16;
        v10 += a1;
      }

      while (v16 != a2);
      v28 = 0;
      v29 = v17 + 1;
      v30 = (&gNormalFilterInfo + 1300 * v14 + 8);
      __asm { FMOV            V3.2S, #1.0 }

      v36 = vdup_n_s32(0x42FF0000u);
      do
      {
        if (a1 >= 1)
        {
          v37 = 0;
          do
          {
            if (v18)
            {
              v38 = 0.0;
              v39 = v18;
              v40 = v30;
              v41 = v18;
              v42 = 0.0;
              do
              {
                v43 = v37 + *(v40 - 4);
                v44 = v28 + *(v40 - 3);
                if (v43 >= v22)
                {
                  v45 = a1 - 1;
                }

                else
                {
                  v45 = v37 + *(v40 - 4);
                }

                if (v43 >= 0)
                {
                  v46 = v45;
                }

                else
                {
                  v46 = 0;
                }

                if (v44 >= v15)
                {
                  v47 = a2 - 1;
                }

                else
                {
                  v47 = v28 + *(v40 - 3);
                }

                if (v44 >= 0)
                {
                  v48 = v47;
                }

                else
                {
                  v48 = 0;
                }

                v49 = v11[v46 + v48 * a1];
                v50 = *v40;
                v40 += 2;
                v51 = v50;
                v52 = &v29[2 * v41];
                v53 = v37 + *v52;
                v54 = v28 + *(v52 + 1);
                if (v53 >= v22)
                {
                  v55 = a1 - 1;
                }

                else
                {
                  v55 = v37 + *v52;
                }

                if (v53 >= 0)
                {
                  v56 = v55;
                }

                else
                {
                  v56 = 0;
                }

                if (v54 >= v15)
                {
                  v57 = a2 - 1;
                }

                else
                {
                  v57 = v28 + *(v52 + 1);
                }

                if (v54 >= 0)
                {
                  v58 = v57;
                }

                else
                {
                  v58 = 0;
                }

                v42 = v42 + (v49 * v51);
                v38 = v38 + (v11[v56 + v58 * a1] * v52[1]);
                ++v41;
                --v39;
              }

              while (v39);
            }

            else
            {
              v42 = 0.0;
              v38 = 0.0;
            }

            v59 = *a3 & 0xFF000000;
            v60 = -v42 * a5;
            v61 = -v38 * a5;
            v62 = sqrtf(((v61 * v61) + (v60 * v60)) + 1.0);
            if (v62 > 0.0001)
            {
              v63.f32[0] = (HIBYTE(*a3) * 0.0039216) / v62;
              v63.f32[1] = v63.f32[0] * v61;
              v64 = vshl_u32(vcvt_u32_f32(vmul_f32(vadd_f32(v63, _D3), v36)), 0x800000010);
              v59 |= v64.i32[0] | (((v63.f32[0] * v60) + 1.0) * 127.5) | v64.i32[1];
            }

            *a3++ = v59;
            ++v37;
          }

          while (v37 != a1);
        }

        ++v28;
      }

      while (v28 != a2);
    }

    free(v11);
  }

  return v11 != 0;
}

void sub_21C4AA3F0(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x1081C40983EBE18);

  _Unwind_Resume(a1);
}

void sub_21C4AA684(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void SKCFalloff::SKCFalloff(SKCFalloff *this, SKCAction *a2)
{
  SKCAction::SKCAction(this);
  *v3 = &unk_282E18330;
  *(v3 + 40) = *&a2->var6;
  *(v3 + 72) = *&a2->var11;
  *(v3 + 56) = *&a2->var8;
  *(v3 + 88) = a2->var14;
  *(v3 + 32) = 1;
}

void SKCFalloff::~SKCFalloff(SKCFalloff *this)
{
  SKCAction::~SKCAction(this);

  JUMPOUT(0x21CF0A160);
}

void SKCKeyframeSequence::SKCKeyframeSequence(SKCKeyframeSequence *this, int a2, int a3)
{
  this->var0 = a2;
  this->var1 = a3;
  *&this->var2 = vdupq_n_s64(1uLL);
  this->var4 = 0;
  this->var5 = 0;
  this->var5 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  v4 = malloc_type_malloc(4 * this->var1 * this->var0, 0x100004052888210uLL);
  this->var4 = v4;
  var0 = this->var0;
  if (var0 >= 1)
  {
    v6 = v4;
    v7 = 0;
    var5 = this->var5;
    var1 = this->var1;
    do
    {
      *var5 = 0.0;
      if (var1 >= 1)
      {
        bzero(&v6[v7], 4 * var1);
      }

      v7 += var1;
      ++var5;
      --var0;
    }

    while (var0);
  }
}

void SKCKeyframeSequence::sample(SKCKeyframeSequence *this, float a2, float *a3)
{
  var5 = this->var5;
  var0 = this->var0;
  v7 = var5[var0 - 1];
  var3 = this->var3;
  if (var3 == 2)
  {
    if ((LODWORD(a2) & 0x80000000) != 0)
    {
      a2 = v7 - fmodf(fabsf(a2), var5[var0 - 1]);
    }

    else
    {
      a2 = fmodf(a2, var5[var0 - 1]);
    }
  }

  else if (var3 == 1)
  {
    if (v7 < a2)
    {
      a2 = var5[var0 - 1];
    }

    if (a2 < 0.0)
    {
      a2 = 0.0;
    }
  }

  var2 = this->var2;
  switch(var2)
  {
    case 1:

      SKCKeyframeSequence::_sampleLinear(this, a2, a3);
      break;
    case 2:

      SKCKeyframeSequence::_sampleSpline(this, a2, a3);
      break;
    case 3:
      if (var0 < 1)
      {
        LODWORD(v10) = 0;
      }

      else
      {
        v10 = 0;
        while ((COERCE_UNSIGNED_INT(a2 - var5[v10]) & 0x80000000) == 0)
        {
          if (var0 == ++v10)
          {
            LODWORD(v10) = var0;
            break;
          }
        }
      }

      v11 = v10 - 1;
      if (!v10)
      {
        v11 = 0;
      }

      var1 = this->var1;
      v13 = &this->var4[var1 * v11];

      memcpy(a3, v13, 4 * var1);
      break;
  }
}

void *SKCKeyframeSequence::_sampleStep(SKCKeyframeSequence *this, float a2, float *a3)
{
  var0 = this->var0;
  if (var0 < 1)
  {
    LODWORD(v4) = 0;
  }

  else
  {
    v4 = 0;
    while ((COERCE_UNSIGNED_INT(a2 - this->var5[v4]) & 0x80000000) == 0)
    {
      if (var0 == ++v4)
      {
        LODWORD(v4) = this->var0;
        break;
      }
    }
  }

  v5 = v4 != 0;
  v6 = v4 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  return memcpy(a3, &this->var4[this->var1 * v6], 4 * this->var1);
}

SKCKeyframeSequence *SKCKeyframeSequence::_sampleLinear(SKCKeyframeSequence *this, float a2, float *a3)
{
  var0 = this->var0;
  var5 = this->var5;
  if (var0 < 1)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = 0;
    while ((COERCE_UNSIGNED_INT(a2 - var5[v5]) & 0x80000000) == 0)
    {
      if (var0 == ++v5)
      {
        LODWORD(v5) = this->var0;
        break;
      }
    }
  }

  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (v5 >= var0)
  {
    LODWORD(v5) = var0 - 1;
  }

  v7 = var5[v6];
  v8 = var5[v5];
  v9 = 1.0;
  if ((COERCE_UNSIGNED_INT(v7 - v8) & 0x60000000) != 0)
  {
    v9 = (a2 - v7) / (v8 - v7);
  }

  if (v9 <= 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  if (v10 < 0.0)
  {
    v10 = 0.0;
  }

  var1 = this->var1;
  if (var1 >= 1)
  {
    var4 = this->var4;
    v13 = &var4[var1 * v6];
    v14 = &var4[var1 * v5];
    do
    {
      v15 = *v13++;
      v16 = v15;
      v17 = *v14++;
      *a3++ = (v10 * v17) + (v16 * (1.0 - v10));
      --var1;
    }

    while (var1);
  }

  return this;
}

SKCKeyframeSequence *SKCKeyframeSequence::_sampleSpline(SKCKeyframeSequence *this, float a2, float *a3)
{
  var0 = this->var0;
  var5 = this->var5;
  if (var0 < 1)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = 0;
    while ((COERCE_UNSIGNED_INT(a2 - var5[v5]) & 0x80000000) == 0)
    {
      if (var0 == ++v5)
      {
        LODWORD(v5) = this->var0;
        break;
      }
    }
  }

  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = var0 - 1;
  if (v5 >= var0)
  {
    LODWORD(v5) = var0 - 1;
  }

  v8 = v6 - 1;
  if (v6 <= 0)
  {
    v8 = 0;
  }

  v9 = var5[v8];
  v10 = var5[v6];
  if (v5 < v7)
  {
    v7 = v5 + 1;
  }

  v11 = var5[v5];
  v12 = var5[v7];
  var1 = this->var1;
  v14 = v10 - v9;
  v15 = v11 - v10;
  v16 = v12 - v11;
  v17 = v14 / (v14 + v15);
  v18 = (COERCE_UNSIGNED_INT(v14 + v15) & 0x60000000) == 0;
  v19 = v16 / (v15 + v16);
  v20 = v15 / (v15 + v16);
  v21 = v15 + v16;
  if ((COERCE_UNSIGNED_INT(v14 + v15) & 0x60000000) != 0)
  {
    v22 = v15 / (v14 + v15);
  }

  else
  {
    v22 = 0.0;
  }

  if (v18)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v17;
  }

  if ((LODWORD(v21) & 0x60000000) != 0)
  {
    v24 = v20;
  }

  else
  {
    v19 = 0.0;
    v24 = 0.0;
  }

  v25 = (a2 - v10) / v15;
  if ((LODWORD(v15) & 0x60000000) != 0)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0.0;
  }

  if (var1 >= 1)
  {
    var4 = this->var4;
    v28 = &var4[var1 * v8];
    v29 = &var4[var1 * v6];
    v30 = &var4[var1 * v5];
    v31 = &var4[var1 * v7];
    v32 = v26 * v26;
    v33 = v26 * (v26 * v26);
    v34 = (v26 * v26) * 3.0;
    v35 = 1.0 - (v34 - (v33 * 2.0));
    v36 = v26 + (v33 + ((v26 * v26) * -2.0));
    v37 = v33 - v32;
    v38 = v34 + (v33 * -2.0);
    do
    {
      v39 = *v28++;
      v40 = v39;
      v41 = *v29++;
      v42 = v41;
      v43 = *v30++;
      v44 = v43;
      v45 = *v31++;
      *a3++ = (((v36 * ((v23 * (v44 - v42)) + ((v42 - v40) * v22))) + (v35 * v42)) + (v37 * ((v24 * (v45 - v44)) + ((v44 - v42) * v19)))) + (v38 * v44);
      --var1;
    }

    while (var1);
  }

  return this;
}

SKCKeyframeSequence *SKCKeyframeSequence::_getKeyframesForTime(SKCKeyframeSequence *this, float a2, int *a3, int *a4)
{
  var0 = this->var0;
  if (var0 < 1)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = 0;
    while ((COERCE_UNSIGNED_INT(a2 - this->var5[v5]) & 0x80000000) == 0)
    {
      if (var0 == ++v5)
      {
        LODWORD(v5) = this->var0;
        break;
      }
    }
  }

  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  *a3 = v6;
  if (v5 >= this->var0)
  {
    LODWORD(v5) = this->var0 - 1;
  }

  *a4 = v5;
  return this;
}

void *SKCKeyframeSequence::setKeyframe(SKCKeyframeSequence *this, int a2, float a3, const float *a4)
{
  var4 = this->var4;
  this->var5[a2] = a3;
  return memcpy(&var4[this->var1 * a2], a4, 4 * this->var1);
}

void *SKCKeyframeSequence::getKeyframe(SKCKeyframeSequence *this, int a2, float *a3, float *__dst)
{
  var4 = this->var4;
  *a3 = this->var5[a2];
  return memcpy(__dst, &var4[this->var1 * a2], 4 * this->var1);
}

void SKCKeyframeSequence::~SKCKeyframeSequence(SKCKeyframeSequence *this)
{
  var5 = this->var5;
  if (var5)
  {
    free(var5);
    this->var5 = 0;
  }

  var4 = this->var4;
  if (var4)
  {
    free(var4);
    this->var4 = 0;
  }
}

void SKCEffectNode::SKCEffectNode(SKCEffectNode *this)
{
  SKCNode::SKCNode(this);
  *v1 = &unk_282E183C8;
  *(v1 + 560) = 0;
  *(v1 + 568) = 1;
  *(v1 + 576) = 0u;
  *(v1 + 592) = 0u;
  *(v1 + 608) = 0u;
  *(v1 + 624) = 0u;
  *(v1 + 640) = 0;
  *(v1 + 672) = 1;
  *(v1 + 676) = 0;
  *(v1 + 680) = 0;
  *(v1 + 704) = 1;
  *(v1 + 712) = 0;
  *(v1 + 720) = 2;
}

void SKCEffectNode::setWarpGeometry(id *this, SKWarpGeometry *a2)
{
  v5 = a2;
  objc_storeStrong(this + 89, a2);
  v4 = this[33];
  this[32] = 0;
  this[33] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  SKCNode::setDirty(this);
}

void SKCEffectNode::setShouldRasterize(SKCNode *this, char a2)
{
  *(this + 705) = a2;
  *(this + 672) = 1;
  SKCNode::setDirty(this);
}

void SKCEffectNode::setEnableEffects(SKCNode *this, char a2)
{
  *(this + 704) = a2;
  *(this + 672) = 1;
  SKCNode::setDirty(this);
}

void SKCEffectNode::getBatchInfo(SKBlendMode *this@<X0>, SKCRenderInfo *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(this + 704) != 1 || (*(a2 + 580) & 0x20) != 0 || *(this + 11) == *(this + 12) && *(this + 14) == *(this + 15))
  {

    SKCNode::getBatchInfo(a3);
  }

  else
  {
    *a3 = 0;
    *(a3 + 4) = 0x300000000;
    *(a3 + 12) = 1;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 60) = 0u;
    *(a3 + 4) = (**this)(this, a2);
    *a3 = 1;
    if (!*(this + 70) || (*(a2 + 581) & 8) != 0)
    {
      v6 = 75;
    }

    else
    {
      v6 = 79;
    }

    *(a3 + 32) = this[v6];
    *(a3 + 8) = 3;
    *(a3 + 12) = SKBlendModeGetBackingBlendMode(this[36]);
    *(a3 + 24) = *(a2 + 21);
    v7 = *(this + 72);
    if (v7)
    {
      if ((*(a2 + 581) & 1) == 0)
      {
        *(a3 + 16) = v7;
      }
    }
  }
}

void SKCEffectNode::subclassRecomputeFlags(id *this)
{
  if ([this[72] _usesTimeUniform] && (*(this + 172) & 1) == 0 && (*(this + 171) & 0x60) != 0)
  {

    SKCNode::setFlags(this, 66, 1);
  }
}

uint64_t SKCEffectNode::getMaxBatchRenderElementCount(SKCEffectNode *this, SKCRenderInfo *a2)
{
  if (*(this + 704) != 1 || (*(a2 + 580) & 0x20) != 0 || *(this + 11) == *(this + 12) && *(this + 14) == *(this + 15))
  {
    return 0;
  }

  v3 = *(this + 89);
  if (!v3)
  {
    return 4;
  }

  if ([v3 isIdentityWarp])
  {
    return 4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 4;
  }

  v4 = *(this + 89);
  v5 = [v4 numberOfColumns];
  v6 = ([v4 numberOfRows] * v5);
  v7 = (exp2((*(this + 180) + 1) + (*(this + 180) + 1)) * v6);

  return v7;
}

uint64_t SKCEffectNode::addBatchRenderElements(SKCEffectNode *this, float32x4_t *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  if (*(this + 704) != 1 || (a2[36].i8[4] & 0x20) != 0 || *(this + 11) == *(this + 12) && *(this + 14) == *(this + 15))
  {

    return SKCNode::addBatchRenderElements();
  }

  else
  {
    if (*(this + 70) && (v4 = *(this + 79)) != 0)
    {
      v5 = this + 632;
      v6 = this + 656;
    }

    else
    {
      v6 = this + 688;
      v5 = this + 600;
      v4 = *(this + 75);
    }

    v63 = *v6;
    v8 = (**v4)(v4);
    v9 = (*(**v5 + 8))();
    __asm { FMOV            V2.4S, #1.0 }

    _Q2.i64[0] = __PAIR64__(COERCE_UNSIGNED_INT(vcvts_n_f32_u32(v9, 1uLL)), COERCE_UNSIGNED_INT(vcvts_n_f32_u32(v8, 1uLL)));
    v62 = _Q2;
    v15 = *(this + 89);
    if (v15 && ([v15 isIdentityWarp] & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v16 = *(this + 89);
      v17 = a2->u32[0];
      v18 = a2[1].i64[1] + 16 * v17;
      v64 = (a2[1].i64[0] + 8 * v17);
      v65.i64[0] = v18;
      v61 = [v16 numberOfColumns];
      v19 = [v16 numberOfRows];
      v20 = [v16 sourcePositions];
      v21 = [v16 destPositions];
      v57 = v16;
      if (v19 < 1)
      {
        v23 = 0;
      }

      else
      {
        v22 = 0;
        v23 = 0;
        v60 = v19 & 0x7FFFFFFF;
        v58 = 8 * (v61 + 1);
        v59 = v20 + 8;
        v24 = v21 + 8;
        do
        {
          if (v61 <= 0)
          {
            v25 = v22 + 1;
          }

          else
          {
            v25 = v22 + 1;
            v26 = v58 * (v22 + 1);
            v27 = (v59 + v26);
            v28 = v58 * v22;
            v29 = (v59 + v28);
            v30 = (v24 + v26);
            v31 = (v24 + v28);
            v32 = v61 & 0x7FFFFFFF;
            do
            {
              v33.i64[0] = *(v31 - 1);
              v34.i64[0] = *v31;
              v33.i64[1] = 0x3F80000000000000;
              v34.i64[1] = 0x3F80000000000000;
              v36.i64[0] = *(v30 - 1);
              v35.i64[0] = *v30;
              v35.i64[1] = 0x3F80000000000000;
              v36.i64[1] = 0x3F80000000000000;
              v37 = a2[2];
              v38 = a2[3];
              v39 = a2[4];
              v40 = a2[5];
              v41 = vmlaq_f32(v63, v62, v33);
              v42 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, v41.f32[0]), v38, *v41.f32, 1), v39, v41, 2), v40, v41, 3);
              v43 = vmlaq_f32(v63, v62, v34);
              v44 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, v43.f32[0]), v38, *v43.f32, 1), v39, v43, 2), v40, v43, 3);
              v45 = vmlaq_f32(v63, v62, v35);
              v46 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, v45.f32[0]), v38, *v45.f32, 1), v39, v45, 2), v40, v45, 3);
              v47 = vmlaq_f32(v63, v62, v36);
              add_subdivs(&v65, &v64, *(this + 180), v42, v44, v46, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, v47.f32[0]), v38, *v47.f32, 1), v39, v47, 2), v40, v47, 3), vmla_lane_f32(vmla_n_f32(0, 1065353216, COERCE_FLOAT(*&v29[-1])), 0x3F80000000000000, v29[-1], 1), vmla_lane_f32(vmla_n_f32(0, 1065353216, COERCE_FLOAT(*v29)), 0x3F80000000000000, *v29, 1), vmla_lane_f32(vmla_n_f32(0, 1065353216, COERCE_FLOAT(*v27)), 0x3F80000000000000, *v27, 1), COERCE_DOUBLE(vmla_lane_f32(vmla_n_f32(0, 1065353216, COERCE_FLOAT(*&v27[-1])), 0x3F80000000000000, v27[-1], 1)));
              v23 = (v48 + v23);
              ++v27;
              ++v29;
              ++v30;
              ++v31;
              --v32;
            }

            while (v32);
          }

          v22 = v25;
        }

        while (v25 != v60);
      }
    }

    else
    {
      v49 = 0;
      v65 = vmlaq_f32(v63, xmmword_21C4B84C0, v62);
      v66 = vmlaq_f32(v63, xmmword_21C4B8A90, v62);
      v67 = vmlaq_f32(v63, xmmword_21C4B8500, v62);
      v68 = vmlaq_f32(v63, xmmword_21C4B8A60, v62);
      v50 = a2[2];
      v51 = a2[3];
      v52 = a2[4];
      v53 = a2[5];
      do
      {
        *(&v65 + v49) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v50, COERCE_FLOAT(*(&v65 + v49))), v51, *&v65.f32[v49 / 4], 1), v52, *(&v65 + v49), 2), v53, *(&v65 + v49), 3);
        v49 += 16;
      }

      while (v49 != 64);
      *(a2[1].i64[1] + 16 * a2->u32[0]) = v65;
      *(a2[1].i64[1] + 16 * (a2->i32[0] + 1)) = v66;
      *(a2[1].i64[1] + 16 * (a2->i32[0] + 2)) = v67;
      _Q0.i64[1] = v68.i64[1];
      *(a2[1].i64[1] + 16 * (a2->i32[0] + 3)) = v68;
      *(a2[1].i64[0] + 8 * a2->u32[0]) = 0;
      *(a2[1].i64[0] + 8 * (a2->i32[0] + 1)) = 1065353216;
      __asm { FMOV            V0.2S, #1.0 }

      *(a2[1].i64[0] + 8 * (a2->i32[0] + 2)) = _Q0.i64[0];
      _Q0.i32[1] = 1065353216;
      *(a2[1].i64[0] + 8 * (a2->i32[0] + 3)) = 0x3F80000000000000;
      v23 = 4;
    }

    if (v23)
    {
      _Q0.f32[0] = fminf(fmaxf(*(this + 81) * a2[6].f32[0], 0.0), 1.0) * 255.0;
      *_Q0.f32 = vdup_lane_s16(vmovn_s32(vcvtq_s32_f32(_Q0)), 0);
      v55 = (a2->i64[1] + 4 * a2->u32[0]);
      _Q0.i32[0] = vuzp1_s8(*_Q0.f32, *_Q0.f32).u32[0];
      v56 = v23;
      do
      {
        *v55++ = _Q0.i32[0];
        --v56;
      }

      while (v56);
    }

    *(this + 672) = 0;
    return v23;
  }
}

uint64_t SKCEffectNode::addRenderOps(uint64_t result, uint64_t a2)
{
  if (*(result + 704) != 1 || (*(a2 + 580) & 0x20) != 0 || *(result + 88) == *(result + 96) && *(result + 112) == *(result + 120))
  {
    return SKCNode::addRenderOps();
  }

  return result;
}

char *SKCEffectNode::addRenderableChildren(char *result, uint64_t a2, uint64_t a3)
{
  if (result[704] != 1 || (*(a2 + 580) & 0x20) != 0 || *(result + 11) == *(result + 12) && *(result + 14) == *(result + 15))
  {
    return SKCNode::addRenderableChildren(result, a2, a3);
  }

  return result;
}

void SKCEffectNode::ensure_framebuffers(float32x4_t *lpsrc, uint64_t a2)
{
  v54 = 0;
  v55 = &v54;
  v56 = 0x7012000000;
  v57 = __Block_byref_object_copy__7;
  v58 = __Block_byref_object_dispose__7;
  v59 = "";
  v60 = *SKCBoundingBoxEmpty;
  v61 = *&SKCBoundingBoxEmpty[16];
  v62 = *&SKCBoundingBoxEmpty[32];
  v63 = *&SKCBoundingBoxEmpty[48];
  {
    *v5.i64 = (*(v4 + 120))(lpsrc);
    v53.columns[0] = v5;
    v53.columns[1] = v6;
    v53.columns[2] = v7;
    v53.columns[3] = v8;
    AABB = SKCBoundingBoxGetAABB(&v53);
    lpsrc[43] = AABB;
    v10 = lpsrc->i64[1];
    if (v10)
    {
      v11 = v10;
      [v11 visibleRect];
      *&v12 = v12;
      lpsrc[43].i32[0] = LODWORD(v12);
      [v11 visibleRect];
      v14 = v13;
      lpsrc[43].f32[1] = v14;
      [v11 visibleRect];
      v16 = v15;
      lpsrc[43].f32[2] = v16;
      [v11 visibleRect];
      v18 = v17;
      lpsrc[43].f32[3] = v18;
      v19 = [v11 camera];
      v20 = [v19 _backingNode];

      if (v20)
      {
        SKCNode::getConversionMatrixFromWorld(v20);
        v22.i64[0] = vsubq_f32(lpsrc[43], v21).u64[0];
        v22.i64[1] = lpsrc[43].i64[1];
        lpsrc[43] = v22;
      }

      AABB = lpsrc[43];
    }
  }

  else
  {
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = ___ZN13SKCEffectNode19ensure_framebuffersEP13SKCRenderInfoDv4_j_block_invoke;
    v52[3] = &unk_27830FDA8;
    v52[4] = &v54;
    SKCNode::walkChildren(lpsrc, v52, 0, 1);
    v23 = SKCBoundingBoxGetAABB((v55 + 6));
    *AABB.f32 = vrndm_f32(*v23.f32);
    *&AABB.u32[2] = vrndp_f32(vsub_f32(*&vextq_s8(v23, v23, 8uLL), vsub_f32(*AABB.f32, *v23.f32)));
    lpsrc[43] = AABB;
  }

  v49 = vmaxnm_f32(*&vextq_s8(AABB, AABB, 8uLL), vdup_n_s32(0x3DCCCCCDu));
  *&AABB.u32[2] = v49;
  lpsrc[43] = AABB;
  SKCRenderer::getBackingContext(*(a2 + 104), &v53);
  v24 = (*(*v53.columns[0].i64[0] + 152))(v53.columns[0].i64[0], 0);
  v25.n128_u64[0] = vmaxnm_f32(vadd_f32(v49, v49), 0x4000000040000000);
  v26 = v24;
  if (v25.n128_f32[0] > v24)
  {
    v27 = v25.n128_f32[0] - v26;
    v25.n128_f32[0] = v24;
    v28 = v27 * 0.5;
    v29 = lpsrc[43];
    v29.f32[0] = v29.f32[0] + (v28 * 0.5);
    v29.f32[2] = COERCE_FLOAT(lpsrc[43].i64[1]) - v28;
    lpsrc[43] = v29;
  }

  v30 = &lpsrc[36].i64[1];
  v31 = v25.n128_f32[1];
  if (v25.n128_f32[1] > v26)
  {
    v25.n128_f32[1] = v24;
    v32 = (v31 - v26) * 0.5;
    v33 = lpsrc[43];
    v33.f32[1] = COERCE_FLOAT(HIDWORD(lpsrc[43].i64[0])) + (v32 * 0.5);
    v33.f32[3] = COERCE_FLOAT(HIDWORD(*&lpsrc[43])) - v32;
    lpsrc[43] = v33;
  }

  v34 = lpsrc[37].i64[1];
  if (!v34)
  {
    goto LABEL_21;
  }

  v50 = v25;
  v35.n128_f32[0] = (**v34)(v34);
  v36 = v50;
  if (v50.n128_f32[0] > v35.n128_f32[0] || (v35.n128_f32[0] = (*(*lpsrc[37].i64[1] + 8))(lpsrc[37].i64[1], v35.n128_f32[0], v50), v37 = v50.n128_u64[0], v36.n128_u32[0] = v50.n128_u32[1], v50.n128_f32[1] > v35.n128_f32[0]))
  {
    v38 = (**lpsrc[37].i64[1])(lpsrc[37].i64[1], v35, v36);
    v35.n128_u64[0] = __PAIR64__((*(*lpsrc[37].i64[1] + 8))(lpsrc[37].i64[1]), v38);
    v39 = lpsrc[38].i64[0];
    lpsrc[37].i64[1] = 0;
    lpsrc[38].i64[0] = 0;
    if (v39)
    {
      v48 = v35;
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      v35 = v48;
    }

    v40 = vcvt_f32_u32(v35.n128_u64[0]);
    v41 = lpsrc[39].i64[0];
    lpsrc[38].i64[1] = 0;
    lpsrc[39].i64[0] = 0;
    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    v37 = vmaxnm_f32(v40, v50.n128_u64[0]);
    lpsrc[42].i8[0] = 1;
  }

  v35.n128_u64[0] = vrndp_f32(v37);
  if (!lpsrc[37].i64[1])
  {
LABEL_21:
    texture_2d = jet_context::create_texture_2d();
    std::shared_ptr<jet_texture>::shared_ptr[abi:ne200100]<jet_texture,0>(&v51, texture_2d);
  }

  if (!lpsrc[38].i64[1])
  {
    v47 = jet_context::create_texture_2d();
    std::shared_ptr<jet_texture>::shared_ptr[abi:ne200100]<jet_texture,0>(&v51, v47);
  }

  v43 = *v30;
  if (!*v30)
  {
    v44 = (*(*v53.columns[0].i64[0] + 112))(v53.columns[0].i64[0], v35, v36);
    std::shared_ptr<jet_framebuffer>::shared_ptr[abi:ne200100]<jet_framebuffer,0>(&v51, v44);
  }

  v43[1].i64[0] = lpsrc[37].i64[1];
  v45 = lpsrc[38].i64[1];
  v43[13].i64[0] = v45;
  v43[14].i64[1] = v45;
  {
    v46 = lpsrc[19];
  }

  else
  {
    v46 = 0uLL;
  }

  v43[2] = v46;
  if (v53.columns[0].i64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53.columns[0].i64[1]);
  }

  _Block_object_dispose(&v54, 8);
}

__n128 __Block_byref_object_copy__7(uint64_t a1, uint64_t a2)
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

void ___ZN13SKCEffectNode19ensure_framebuffersEP13SKCRenderInfoDv4_j_block_invoke(uint64_t a1, char **this)
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

uint64_t SKCEffectNode::addRequistePasses(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 704) != 1 || (*(a2 + 580) & 0x20) != 0 || *(a1 + 88) == *(a1 + 96) && *(a1 + 112) == *(a1 + 120))
  {

    return SKCNode::addRequistePasses();
  }

  else
  {
    v4 = *(a1 + 680);
    *(a1 + 680) = 0;

    if (*(a1 + 705) != 1 || (*(a1 + 672) & 1) != 0 || (result = SKCNode::matchesAnyFlags(a1, 2, 2), (result & 1) != 0) || (*(a2 + 580) & 0x40) != 0)
    {
      *(a1 + 676) = 0;
      SKCEffectNode::ensure_framebuffers(a1, a2);
      (***(a1 + 600))();
      (*(**(a1 + 600) + 8))(*(a1 + 600));
      if (*(a1 + 560) && (*(a2 + 581) & 8) == 0)
      {
        SKCRenderer::getBackingContext(*(a2 + 104), &v27);
        v6 = (*(*v27 + 48))(v27, *(a1 + 600));
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }

        [*(a1 + 560) setValue:v6 forKey:@"inputImage"];
        if (*(a1 + 568) == 1)
        {
          v7 = [*(a1 + 560) inputKeys];
          v8 = [v7 containsObject:@"inputCenter"];

          if (v8)
          {
            [v6 extent];
            x = v30.origin.x;
            y = v30.origin.y;
            width = v30.size.width;
            height = v30.size.height;
            IsInfinite = CGRectIsInfinite(v30);
            *&v14 = 0x3F0000003F000000;
            v25 = v14;
            if (!IsInfinite)
            {
              v31.origin.x = x;
              v31.origin.y = y;
              v31.size.width = width;
              v31.size.height = height;
              if (!CGRectIsEmpty(v31))
              {
                [v6 extent];
                MidX = CGRectGetMidX(v32);
                [v6 extent];
                MidY = CGRectGetMidY(v33);
                *&v17 = MidX;
                *&MidY = MidY;
                DWORD1(v17) = LODWORD(MidY);
                v25 = v17;
              }
            }

            v18 = [MEMORY[0x277CBF788] vectorWithX:*&v25 Y:{*(&v25 + 1), v25}];
            [*(a1 + 560) setValue:v18 forKey:@"inputCenter"];
          }
        }

        v19 = [*(a1 + 560) valueForKey:@"outputImage"];
        v20 = *(a1 + 680);
        *(a1 + 680) = v19;

        {
          v21 = *(a1 + 680);
          [v6 extent];
          v22 = [v21 imageByCroppingToRect:?];
          v23 = *(a1 + 680);
          *(a1 + 680) = v22;
        }

        [*(a1 + 680) extent];
        SKCRenderer::getBackingContext(*(a2 + 104), &v26);
        texture_2d = jet_context::create_texture_2d();
        std::shared_ptr<jet_texture>::shared_ptr[abi:ne200100]<jet_texture,0>(&v27, texture_2d);
      }

      operator new();
    }

    ++*(a1 + 676);
  }

  return result;
}

uint64_t jet_command_buffer::render_CIImage_to_texture(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v10 = 42;
  v7 = *(a1 + 16);
  if (v7 >= *(a1 + 24))
  {
    v9 = a4;
    result = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(a1 + 8, &v10);
    a4 = v9;
  }

  else
  {
    *v7 = &unk_282E15828;
    *(v7 + 8) = 42;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 16) = 0;
    *(v7 + 64) = 0;
    result = v7 + 192;
    *(v7 + 96) = 0;
  }

  *(a1 + 16) = result;
  *(result - 80) = a2;
  *(result - 72) = a3;
  *(result - 64) = a4;
  return result;
}

void SKCEffectNode::~SKCEffectNode(id *this)
{
  *this = &unk_282E183C8;

  v2 = this[80];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[78];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[76];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = this[74];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  SKCNode::~SKCNode(this);
}

{
  SKCEffectNode::~SKCEffectNode(this);

  JUMPOUT(0x21CF0A160);
}

void sub_21C4ACBD8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_21C4AD48C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _sortedNodesAtPoint(uint64_t result, float32x4_t a2)
{
  if ((*(result + 280) & 1) == 0)
  {
    v2 = result;
    if (*(result + 324) > 0.0)
    {
      v7[0] = SKCNode::getAccumulatedBoundingBox(result);
      v7[1] = v3;
      v7[2] = v4;
      v7[3] = v5;
      result = SKCBoundingBoxIntersectsPoint(v7, *a2.i64);
      if (result)
      {
        SKCNode::containsPoint(v2, a2);
        operator new();
      }
    }
  }

  return result;
}

void SKCEmitterNode::update(SKCEmitterNode *this, double a2, float a3)
{
  SKCNode::update(this, a2, 1.0);
  if ((*(this + 172) & 1) == 0 && *(this + 989) == 1)
  {

    SKCEmitterNode::updateParticles(this, a2, v5, 0);
  }
}

void SKCEmitterNode::advanceSimulationTime(uint64_t a1, float a2)
{
  v3 = *(a1 + 712);
  v4 = *(a1 + 704);
  *(a1 + 704) = v4 - a2;
  std::__list_imp<SKCRenderSortInfo *>::clear((a1 + 848));
  v6 = *(a1 + 912);
  if (v6 <= 0.0)
  {
    v7 = 1.79769313e308;
  }

  else
  {
    v5 = *(a1 + 704);
    v7 = 1.0 / v6 + v5;
  }

  *(a1 + 712) = v7;
  if (*(a1 + 172) & 1) == 0 && (*(a1 + 989))
  {
    SKCEmitterNode::updateParticles(a1, v4, *&v5, 1);
  }

  *(a1 + 712) = v3;
}

void _SKStartCollectingPerformanceStatisticsForPid_cold_1()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    v0 = OUTLINED_FUNCTION_0();
    __cxa_guard_release(v0);
  }
}

void _SKStopCollectingPerformanceStatisticsForPid_cold_1()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    v0 = OUTLINED_FUNCTION_0();

    __cxa_guard_release(v0);
  }
}

void SKCParticleSystemNode::update(double a1)
{
  if (__cxa_guard_acquire(&qword_27CDDD2B8))
  {
    _MergedGlobals_0 = *&a1;

    __cxa_guard_release(&qword_27CDDD2B8);
  }
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114C8](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114E0](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGPoint CGPointFromString(NSString *string)
{
  MEMORY[0x2821DE300](string);
  result.y = v2;
  result.x = v1;
  return result;
}

CGRect CGRectFromString(NSString *string)
{
  MEMORY[0x2821DE308](string);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize CGSizeFromString(NSString *string)
{
  MEMORY[0x2821DE310](string);
  result.height = v2;
  result.width = v1;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x2821148B0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x282114910](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
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