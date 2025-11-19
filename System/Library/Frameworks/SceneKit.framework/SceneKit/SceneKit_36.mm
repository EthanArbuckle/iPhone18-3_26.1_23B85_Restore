btSliderConstraint *btSliderConstraint::setParam(btSliderConstraint *this, int a2, float a3, int a4)
{
  switch(a2)
  {
    case 4:
      if (a4 <= 0)
      {
        this->var34 = a3;
        v4 = 256;
      }

      else if (a4 > 2)
      {
        if (a4 == 3)
        {
          this->var38 = a3;
          v4 = 1024;
        }

        else
        {
          if (a4 > 5)
          {
            return this;
          }

          *&this->var46 = a3;
          v4 = 64;
        }
      }

      else
      {
        this->var42 = a3;
        v4 = 16;
      }

      break;
    case 3:
      if (a4 <= 0)
      {
        this->var26 = a3;
        v4 = 1;
      }

      else
      {
        if (a4 != 3)
        {
          return this;
        }

        this->var30 = a3;
        v4 = 4;
      }

      break;
    case 2:
      if (a4 <= 0)
      {
        this->var31 = a3;
        v4 = 512;
      }

      else if (a4 > 2)
      {
        if (a4 == 3)
        {
          this->var35 = a3;
          v4 = 2048;
        }

        else
        {
          if (a4 > 5)
          {
            return this;
          }

          this->var43 = a3;
          v4 = 128;
        }
      }

      else
      {
        this->var39 = a3;
        v4 = 32;
      }

      break;
    default:
      return this;
  }

  LODWORD(this->var49[0].var0.var0.var0[0]) |= v4;
  return this;
}

float btSliderConstraint::getParam(btSliderConstraint *this, int a2, int a3)
{
  switch(a2)
  {
    case 4:
      if (a3 <= 0)
      {
        return this->var34;
      }

      if (a3 <= 2)
      {
        return this->var42;
      }

      if (a3 == 3)
      {
        return this->var38;
      }

      if (a3 <= 5)
      {
        return *&this->var46;
      }

      break;
    case 3:
      if (a3 <= 0)
      {
        return this->var26;
      }

      if (a3 == 3)
      {
        return this->var30;
      }

      break;
    case 2:
      if (a3 <= 0)
      {
        return this->var31;
      }

      if (a3 <= 2)
      {
        return this->var39;
      }

      if (a3 == 3)
      {
        return this->var35;
      }

      if (a3 <= 5)
      {
        return this->var43;
      }

      break;
  }

  return 3.4028e38;
}

const char *btSliderConstraint::serialize(uint64_t a1, int32x4_t *a2, uint64_t a3)
{
  btTypedConstraint::serialize(a1, a2, a3);
  v5 = 0;
  v6 = a1 + 80;
  v7 = a2 + 4;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      v7->i32[i] = *(v6 + i * 4);
    }

    ++v5;
    v6 += 16;
    ++v7;
  }

  while (v5 != 3);
  for (j = 0; j != 4; ++j)
  {
    a2[7].i32[j] = *(a1 + 128 + j * 4);
  }

  v10 = 0;
  v11 = a1 + 144;
  v12 = a2 + 8;
  do
  {
    for (k = 0; k != 4; ++k)
    {
      v12->i32[k] = *(v11 + k * 4);
    }

    ++v10;
    v11 += 16;
    ++v12;
  }

  while (v10 != 3);
  for (m = 0; m != 4; ++m)
  {
    a2[11].i32[m] = *(a1 + 192 + m * 4);
  }

  a2[12] = vrev64q_s32(*(a1 + 212));
  v15 = *(a1 + 73);
  a2[13].i32[0] = *(a1 + 208);
  a2[13].i32[1] = v15;
  return "btSliderConstraintData";
}

uint64_t btTypedConstraint::btTypedConstraint(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *a1 = &unk_282DCAF38;
  *(a1 + 12) = -1;
  *(a1 + 24) = 2139095039;
  *(a1 + 28) = 1;
  *(a1 + 32) = -1;
  *(a1 + 40) = a3;
  btTypedConstraint::getFixedBody(a1);
  *(a1 + 48) = &unk_27CDDB2D0;
  *(a1 + 56) = 0x3E99999A00000000;
  *(a1 + 64) = 0;
  return a1;
}

void *btTypedConstraint::getFixedBody(btTypedConstraint *this)
{
  if ((atomic_load_explicit(_MergedGlobals_5, memory_order_acquire) & 1) == 0)
  {
    btTypedConstraint::getFixedBody();
  }

  v2 = 0uLL;
  btRigidBody::setMassProps(&unk_27CDDB2D0, 0.0, &v2);
  return &unk_27CDDB2D0;
}

double btTypedConstraint::btTypedConstraint(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = a2;
  *a1 = &unk_282DCAF38;
  *(a1 + 12) = -1;
  *(a1 + 24) = 2139095039;
  *(a1 + 28) = 1;
  *(a1 + 32) = -1;
  *(a1 + 40) = a3;
  *(a1 + 48) = a4;
  result = 0.000000381469818;
  *(a1 + 56) = 0x3E99999A00000000;
  *(a1 + 64) = 0;
  return result;
}

float btTypedConstraint::getMotorFactor(btTypedConstraint *this, float a2, float a3, float a4, float a5, float a6)
{
  v6 = 1.0;
  if (a3 <= a4)
  {
    v6 = 0.0;
    if (a3 != a4)
    {
      v8 = a5 / a6;
      if (v8 >= 0.0)
      {
        if (v8 <= 0.0)
        {
          return v6;
        }

        if (a2 > a4 || (a4 - v8) >= a2)
        {
          if (a2 <= a4)
          {
            return 1.0;
          }

          else
          {
            return 0.0;
          }
        }

        v9 = a4 - a2;
      }

      else
      {
        if (a2 < a3 || (a3 - v8) <= a2)
        {
          if (a2 >= a3)
          {
            return 1.0;
          }

          else
          {
            return 0.0;
          }
        }

        v9 = a3 - a2;
      }

      return v9 / v8;
    }
  }

  return v6;
}

const char *btTypedConstraint::serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = (*(*a3 + 56))(a3, *(a1 + 40));
  *(a2 + 8) = (*(*a3 + 56))(a3, *(a1 + 48));
  v6 = (*(*a3 + 80))(a3, a1);
  v7 = (*(*a3 + 56))(a3, v6);
  *(a2 + 16) = v7;
  if (v7)
  {
    (*(*a3 + 96))(a3, v6);
  }

  *(a2 + 24) = *(a1 + 8);
  *(a2 + 36) = *(a1 + 29);
  *(a2 + 52) = *(a1 + 32);
  *(a2 + 56) = *(a1 + 24);
  *(a2 + 60) = *(a1 + 28);
  *(a2 + 28) = *(a1 + 12);
  *(a2 + 40) = *(a1 + 56);
  *(a2 + 48) = 0;
  v8 = *(a1 + 40);
  v9 = *(v8 + 548);
  if (v9 >= 1)
  {
    v10 = *(v8 + 560);
    do
    {
      if (*v10 == a1)
      {
        *(a2 + 48) = 1;
      }

      ++v10;
      --v9;
    }

    while (v9);
  }

  v11 = *(a1 + 48);
  v12 = *(v11 + 548);
  if (v12 >= 1)
  {
    v13 = *(v11 + 560);
    do
    {
      if (*v13 == a1)
      {
        *(a2 + 48) = 1;
      }

      ++v13;
      --v12;
    }

    while (v12);
  }

  return "btTypedConstraintData";
}

void btAngularLimit::test(btAngularLimit *this, float a2)
{
  *&this->var5 = 0;
  p_var5 = &this->var5;
  this->var7 = 0;
  var1 = this->var1;
  if (var1 >= 0.0)
  {
    v5 = fmodf(a2 - this->var0, 6.2832);
    if (v5 >= -3.1416)
    {
      if (v5 > 3.1416)
      {
        v5 = v5 + -6.2832;
      }
    }

    else
    {
      v5 = v5 + 6.2832;
    }

    if (v5 >= -var1)
    {
      if (v5 <= var1)
      {
        return;
      }

      this->var7 = 1;
      v6 = var1 - v5;
      __asm { FMOV            V0.2S, #-1.0 }
    }

    else
    {
      this->var7 = 1;
      v6 = -(var1 + v5);
      __asm { FMOV            V0.2S, #1.0 }
    }

    *&_D0 = v6;
    *p_var5 = _D0;
  }
}

void btRigidBody::~btRigidBody(btRigidBody *this)
{
  *this = &unk_282DCB2A0;
  v2 = *(this + 70);
  if (v2 && *(this + 568) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 568) = 1;
  *(this + 70) = 0;
  *(this + 548) = 0;

  C3DSceneSourcePerformConsistencyCheck(this);
}

{
  btRigidBody::~btRigidBody(this);

  btAlignedFreeInternal(v1);
}

void btTypedConstraint::getFixedBody()
{
  if (__cxa_guard_acquire(_MergedGlobals_5))
  {
    v0[0] = 0;
    v0[1] = 0;
    btRigidBody::btRigidBody(&unk_27CDDB2D0, 0, 0, v0, 0.0);
    __cxa_atexit(btRigidBody::~btRigidBody, &unk_27CDDB2D0, &dword_21BEF7000);
    __cxa_guard_release(_MergedGlobals_5);
  }
}

uint64_t btDiscreteDynamicsWorld::btDiscreteDynamicsWorld(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  btDynamicsWorld::btDynamicsWorld(a1, a2, a3);
  v7 = 0;
  *v8 = &unk_282DCAFA0;
  *(v8 + 292) = 0;
  *(v8 + 324) = 0;
  *(v8 + 380) = 0;
  *(v8 + 420) = 0;
  *(v8 + 256) = 1;
  *(v8 + 248) = 0;
  *(v8 + 236) = 0;
  *(v8 + 240) = 0;
  *(v8 + 264) = 0;
  *(v8 + 272) = a4;
  *(v8 + 312) = 1;
  *(v8 + 304) = 0;
  *(v8 + 344) = 1;
  *(v8 + 336) = 0;
  *(v8 + 352) = xmmword_21C2A4690;
  *(v8 + 368) = 0;
  *(v8 + 374) = 0;
  *(v8 + 400) = 1;
  *(v8 + 392) = 0;
  *(v8 + 408) = 0;
  *(v8 + 440) = 1;
  *(v8 + 432) = 0;
  if (!a4)
  {
    v9 = btAlignedAllocInternal(320, 16);
    *(a1 + 272) = btSequentialImpulseConstraintSolver::btSequentialImpulseConstraintSolver(v9);
    v7 = 1;
  }

  *(a1 + 373) = v7;
  v10 = btAlignedAllocInternal(112, 16);
  btSimulationIslandManager::btSimulationIslandManager(v10);
  *(a1 + 280) = v11;
  *(a1 + 372) = 1;
  v12 = btAlignedAllocInternal(152, 16);
  v13 = *(a1 + 272);
  *v12 = &unk_282DCB248;
  *(v12 + 8) = 0;
  *(v12 + 16) = v13;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  *(v12 + 48) = a2;
  *(v12 + 80) = 1;
  *(v12 + 72) = 0;
  *(v12 + 60) = 0;
  *(v12 + 112) = 1;
  *(v12 + 104) = 0;
  *(v12 + 92) = 0;
  *(v12 + 144) = 1;
  *(v12 + 136) = 0;
  *(v12 + 124) = 0;
  *(a1 + 264) = v12;
  return a1;
}

double btDynamicsWorld::btDynamicsWorld(uint64_t a1, uint64_t a2, uint64_t a3)
{
  btCollisionWorld::btCollisionWorld(a1, a2, a3);
  *v3 = &unk_282DCB120;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 144) = xmmword_21C2A46A0;
  *(v3 + 160) = 0xA00000000;
  *(v3 + 184) = 0x100000000;
  *(v3 + 168) = xmmword_21C2A46B0;
  *(v3 + 192) = xmmword_21C2A46C0;
  *(v3 + 208) = 0x200000104;
  *(v3 + 216) = 128;
  result = 5.28028251e237;
  *(v3 + 220) = 0x7149F2CA42C80000;
  *(v3 + 228) = 1065353216;
  return result;
}

void btDiscreteDynamicsWorld::~btDiscreteDynamicsWorld(btDiscreteDynamicsWorld *this)
{
  *this = &unk_282DCAFA0;
  if (*(this + 372) == 1)
  {
    (***(this + 35))(*(this + 35));
    btAlignedFreeInternal(*(this + 35));
  }

  v2 = *(this + 33);
  if (v2)
  {
    (**v2)(v2);
    btAlignedFreeInternal(*(this + 33));
  }

  if (*(this + 373) == 1)
  {
    (***(this + 34))(*(this + 34));
    btAlignedFreeInternal(*(this + 34));
  }

  v3 = *(this + 54);
  if (v3 && *(this + 440) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 440) = 1;
  *(this + 54) = 0;
  *(this + 420) = 0;
  v4 = *(this + 49);
  if (v4 && *(this + 400) == 1)
  {
    btAlignedFreeInternal(v4);
  }

  *(this + 400) = 1;
  *(this + 49) = 0;
  *(this + 380) = 0;
  v5 = *(this + 42);
  if (v5 && *(this + 344) == 1)
  {
    btAlignedFreeInternal(v5);
  }

  *(this + 344) = 1;
  *(this + 42) = 0;
  *(this + 324) = 0;
  v6 = *(this + 38);
  if (v6 && *(this + 312) == 1)
  {
    btAlignedFreeInternal(v6);
  }

  *(this + 312) = 1;
  *(this + 38) = 0;
  *(this + 292) = 0;
  v7 = *(this + 31);
  if (v7 && *(this + 256) == 1)
  {
    btAlignedFreeInternal(v7);
  }

  *(this + 256) = 1;
  *(this + 31) = 0;
  *(this + 59) = 0;
  *(this + 60) = 0;

  btCollisionWorld::~btCollisionWorld(this);
}

{
  btDiscreteDynamicsWorld::~btDiscreteDynamicsWorld(this);

  btAlignedFreeInternal(v1);
}

void btDiscreteDynamicsWorld::saveKinematicState(btDiscreteDynamicsWorld *this, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6)
{
  v6 = *(this + 3);
  if (v6 >= 1)
  {
    v7 = a2.n128_u32[0];
    for (i = 0; i < v6; ++i)
    {
      v10 = *(*(this + 3) + 8 * i);
      if (v10)
      {
        v11 = (*(v10 + 264) & 2) == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11 && *(v10 + 244) != 2 && (*(v10 + 232) & 2) != 0)
      {
        a2.n128_u32[0] = v7;
        a2 = btRigidBody::saveKinematicState(v10, a2, a3, a4, a5, a6);
        v6 = *(this + 3);
      }
    }
  }
}

uint64_t btDiscreteDynamicsWorld::debugDrawWorld(btDiscreteDynamicsWorld *this)
{
  btCollisionWorld::debugDrawWorld(this);
  if ((*(*this + 40))(this))
  {
    v2 = (*(*this + 40))(this);
    if (((*(*v2 + 96))(v2) & 0x1800) != 0)
    {
      v3 = (*(*this + 208))(this);
      if (v3 >= 1)
      {
        v4 = v3 + 1;
        do
        {
          v5 = (*(*this + 216))(this, v4 - 2);
          btDiscreteDynamicsWorld::debugDrawConstraint(this, v5);
          --v4;
        }

        while (v4 > 1);
      }
    }
  }

  result = (*(*this + 40))(this);
  if (result)
  {
    v7 = (*(*this + 40))(this);
    result = (*(*v7 + 96))(v7);
    if ((result & 0x4003) != 0)
    {
      result = (*(*this + 40))(this);
      if (result)
      {
        v8 = (*(*this + 40))(this);
        result = (*(*v8 + 96))(v8);
        if (result)
        {
          if (*(this + 95) >= 1)
          {
            v9 = 0;
            do
            {
              v10 = *(*(this + 49) + 8 * v9);
              result = (*(*v10 + 24))(v10, *(this + 13));
              ++v9;
            }

            while (v9 < *(this + 95));
          }
        }
      }
    }
  }

  return result;
}

void btDiscreteDynamicsWorld::debugDrawConstraint(btDiscreteDynamicsWorld *this, btTypedConstraint *a2)
{
  v4 = (*(*this + 40))(this);
  v5 = (*(*v4 + 96))(v4);
  v6 = (*(*this + 40))(this);
  v7 = (*(*v6 + 96))(v6);
  v10 = *(a2 + 15);
  if (*&v10 <= 0.0)
  {
    return;
  }

  v11 = v7;
  v12 = *(a2 + 2);
  if (v12 <= 5)
  {
    switch(v12)
    {
      case 3:
        v230 = xmmword_21C27F910;
        v231 = xmmword_21C27F8C0;
        v232 = xmmword_21C27F600;
        v72 = *(a2 + 23);
        v73 = *(a2 + 5);
        v74 = vmulq_f32(v72, v73[1]);
        v75 = vmulq_f32(v72, v73[2]);
        v76 = vmulq_f32(v72, v73[3]);
        v76.i32[3] = 0;
        *v74.f32 = vadd_f32(vpadd_f32(*v74.f32, *v75.i8), vzip1_s32(*&vextq_s8(v74, v74, 8uLL), *&vextq_s8(v75, v75, 8uLL)));
        *&v74.u32[2] = vpadd_f32(vpadd_f32(*v76.i8, *&vextq_s8(v76, v76, 8uLL)), 0);
        v233 = vaddq_f32(v74, v73[4]);
        v77 = (*(*this + 40))(this);
        (*(*v77 + 112))(v77, &v230, *&v10);
        v78 = *(a2 + 24);
        v79 = *(a2 + 6);
        v80 = vmulq_f32(v78, v79[1]);
        v81 = vmulq_f32(v78, v79[2]);
        v82 = vmulq_f32(v78, v79[3]);
        v82.i32[3] = 0;
        *v80.f32 = vadd_f32(vpadd_f32(*v80.f32, *v81.i8), vzip1_s32(*&vextq_s8(v80, v80, 8uLL), *&vextq_s8(v81, v81, 8uLL)));
        *&v80.u32[2] = vpadd_f32(vpadd_f32(*v82.i8, *&vextq_s8(v82, v82, 8uLL)), 0);
        v233 = vaddq_f32(v80, v79[4]);
        if ((v5 & 0x800) != 0)
        {
          v83 = (*(*this + 40))(this);
          (*(*v83 + 112))(v83, &v230, *&v10);
        }

        break;
      case 4:
        v84 = *(a2 + 5);
        v85 = v84[1];
        v86 = v84[2];
        v87 = *(a2 + 41);
        v88 = *(a2 + 42);
        v87.i32[3] = 0;
        v88.i32[3] = 0;
        v89 = *(a2 + 43);
        v90 = *(a2 + 44);
        v89.i32[3] = 0;
        v91 = v84[3];
        v92 = v84[4];
        v93 = vmlaq_lane_f32(vmulq_n_f32(v87, v91.f32[0]), v88, *v91.f32, 1);
        v94 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v87, v86.f32[0]), v88, *v86.f32, 1), v89, v86, 2);
        v95 = vmulq_f32(v85, v90);
        v96 = vmulq_f32(v86, v90);
        v97 = vmulq_f32(v91, v90);
        v97.i32[3] = 0;
        v98 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v87, v85.f32[0]), v88, *v85.f32, 1), v89, v85, 2);
        *v85.f32 = vadd_f32(vpadd_f32(*v95.i8, *v96.i8), vzip1_s32(*&vextq_s8(v95, v95, 8uLL), *&vextq_s8(v96, v96, 8uLL)));
        *&v85.u32[2] = vpadd_f32(vpadd_f32(*v97.i8, *&vextq_s8(v97, v97, 8uLL)), 0);
        v230 = v98;
        v231 = v94;
        v232 = vmlaq_laneq_f32(v93, v89, v91, 2);
        v233 = vaddq_f32(v92, v85);
        if ((v5 & 0x800) != 0)
        {
          v186 = (*(*this + 40))(this);
          (*(*v186 + 112))(v186, &v230, *&v10);
          v187 = *(a2 + 45);
          v188 = *(a2 + 46);
          v187.i32[3] = 0;
          v188.i32[3] = 0;
          v189 = *(a2 + 6);
          v190 = *(a2 + 47);
          v191 = *(a2 + 48);
          v190.i32[3] = 0;
          v192 = v189[1];
          v193 = v189[2];
          v194 = v189[3];
          v195 = vmlaq_lane_f32(vmulq_n_f32(v187, v194.f32[0]), v188, *v194.f32, 1);
          v196 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v187, v193.f32[0]), v188, *v193.f32, 1), v190, v193, 2);
          v197 = vmulq_f32(v192, v191);
          v198 = vmulq_f32(v194, v191);
          v198.i32[3] = 0;
          v199 = vmulq_f32(v193, v191);
          v200 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v187, v192.f32[0]), v188, *v192.f32, 1), v190, v192, 2);
          *v188.f32 = vadd_f32(vpadd_f32(*v197.i8, *v199.i8), vzip1_s32(*&vextq_s8(v197, v197, 8uLL), *&vextq_s8(v199, v199, 8uLL)));
          *&v188.u32[2] = vpadd_f32(vpadd_f32(*v198.i8, *&vextq_s8(v198, v198, 8uLL)), 0);
          v201 = vaddq_f32(v189[4], v188);
          v230 = v200;
          v231 = v196;
          v232 = vmlaq_laneq_f32(v195, v190, v194, 2);
          v233 = v201;
          v202 = (*(*this + 40))(this);
          (*(*v202 + 112))(v202, &v230, *&v10);
        }

        else
        {
          v99 = *(a2 + 6);
          v100 = *(a2 + 45);
          v101 = *(a2 + 46);
          v100.i32[3] = 0;
          v101.i32[3] = 0;
          v102 = v99[1];
          v103 = v99[2];
          v104 = *(a2 + 47);
          v105 = *(a2 + 48);
          v104.i32[3] = 0;
          v106 = v99[3];
          v107 = v99[4];
          v108 = vmlaq_lane_f32(vmulq_n_f32(v100, v106.f32[0]), v101, *v106.f32, 1);
          v109 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v100, v103.f32[0]), v101, *v103.f32, 1), v104, v103, 2);
          v110 = vmulq_f32(v102, v105);
          v111 = vmulq_f32(v103, v105);
          v112 = vmulq_f32(v106, v105);
          v112.i32[3] = 0;
          v113 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v100, v102.f32[0]), v101, *v102.f32, 1), v104, v102, 2);
          *v101.f32 = vadd_f32(vpadd_f32(*v110.i8, *v111.i8), vzip1_s32(*&vextq_s8(v110, v110, 8uLL), *&vextq_s8(v111, v111, 8uLL)));
          *&v101.u32[2] = vpadd_f32(vpadd_f32(*v112.i8, *&vextq_s8(v112, v112, 8uLL)), 0);
          v230 = v113;
          v231 = v109;
          v232 = vmlaq_laneq_f32(v108, v104, v106, 2);
          v233 = vaddq_f32(v107, v101);
        }

        btAngularLimit::getLow((a2 + 792));
        v204 = v203;
        btAngularLimit::getHigh((a2 + 792));
        if (v204 != v205 && (v11 & 0x1000) != 0)
        {
          if (v204 <= v205)
          {
            v206 = v205;
          }

          else
          {
            v204 = 0.0;
            v206 = 6.2832;
          }

          v229.i64[0] = __PAIR64__(v231.u32[2], v230.u32[2]);
          v229.i64[1] = v232.u32[2];
          v228.i64[0] = __PAIR64__(v231.u32[0], v230.u32[0]);
          v228.i64[1] = v232.u32[0];
          v207 = (*(*this + 40))(this);
          v227 = 0uLL;
          v208.n128_u32[0] = 10.0;
          v209.n128_u32[0] = v10;
          v210.n128_u32[0] = v10;
          v211.n128_f32[0] = v204;
          v212.n128_f32[0] = v206;
          (*(*v207 + 120))(v209, v210, v211, v212, v208);
        }

        break;
      case 5:
        v13 = *(a2 + 5);
        v14 = v13[1];
        v15 = v13[2];
        v16 = *(a2 + 23);
        v17 = *(a2 + 24);
        v16.i32[3] = 0;
        v17.i32[3] = 0;
        v18 = *(a2 + 25);
        v19 = *(a2 + 26);
        v18.i32[3] = 0;
        v20 = v13[3];
        v21 = v13[4];
        v22 = vmlaq_lane_f32(vmulq_n_f32(v16, v20.f32[0]), v17, *v20.f32, 1);
        v23 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, v15.f32[0]), v17, *v15.f32, 1), v18, v15, 2);
        v24 = vmulq_f32(v14, v19);
        v25 = vmulq_f32(v15, v19);
        v26 = vmulq_f32(v20, v19);
        v26.i32[3] = 0;
        v27 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, v14.f32[0]), v17, *v14.f32, 1), v18, v14, 2);
        *v14.f32 = vadd_f32(vpadd_f32(*v24.i8, *v25.i8), vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)));
        *&v14.u32[2] = vpadd_f32(vpadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)), 0);
        v230 = v27;
        v231 = v23;
        v232 = vmlaq_laneq_f32(v22, v18, v20, 2);
        v233 = vaddq_f32(v21, v14);
        if ((v5 & 0x800) != 0)
        {
          v150 = (*(*this + 40))(this);
          (*(*v150 + 112))(v150, &v230, *&v10);
          v151 = *(a2 + 27);
          v152 = *(a2 + 28);
          v151.i32[3] = 0;
          v152.i32[3] = 0;
          v153 = *(a2 + 6);
          v154 = *(a2 + 29);
          v155 = *(a2 + 30);
          v154.i32[3] = 0;
          v156 = v153[1];
          v157 = v153[2];
          v158 = v153[3];
          v159 = vmlaq_lane_f32(vmulq_n_f32(v151, v158.f32[0]), v152, *v158.f32, 1);
          v160 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v151, v157.f32[0]), v152, *v157.f32, 1), v154, v157, 2);
          v161 = vmulq_f32(v156, v155);
          v162 = vmulq_f32(v158, v155);
          v162.i32[3] = 0;
          v163 = vmulq_f32(v157, v155);
          v164 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v151, v156.f32[0]), v152, *v156.f32, 1), v154, v156, 2);
          *v152.f32 = vadd_f32(vpadd_f32(*v161.i8, *v163.i8), vzip1_s32(*&vextq_s8(v161, v161, 8uLL), *&vextq_s8(v163, v163, 8uLL)));
          *&v152.u32[2] = vpadd_f32(vpadd_f32(*v162.i8, *&vextq_s8(v162, v162, 8uLL)), 0);
          v165 = vaddq_f32(v153[4], v152);
          v230 = v164;
          v231 = v160;
          v232 = vmlaq_laneq_f32(v159, v154, v158, 2);
          v233 = v165;
          v166 = (*(*this + 40))(this);
          (*(*v166 + 112))(v166, &v230, *&v10);
        }

        else
        {
          v28 = *(a2 + 6);
          v29 = *(a2 + 27);
          v30 = *(a2 + 28);
          v29.i32[3] = 0;
          v30.i32[3] = 0;
          v31 = v28[1];
          v32 = v28[2];
          v33 = *(a2 + 29);
          v34 = *(a2 + 30);
          v33.i32[3] = 0;
          v35 = v28[3];
          v36 = v28[4];
          v37 = vmlaq_lane_f32(vmulq_n_f32(v29, v35.f32[0]), v30, *v35.f32, 1);
          v38 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v32.f32[0]), v30, *v32.f32, 1), v33, v32, 2);
          v39 = vmulq_f32(v31, v34);
          v40 = vmulq_f32(v32, v34);
          v41 = vmulq_f32(v35, v34);
          v41.i32[3] = 0;
          v42 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v31.f32[0]), v30, *v31.f32, 1), v33, v31, 2);
          *v30.f32 = vadd_f32(vpadd_f32(*v39.i8, *v40.i8), vzip1_s32(*&vextq_s8(v39, v39, 8uLL), *&vextq_s8(v40, v40, 8uLL)));
          *&v30.u32[2] = vpadd_f32(vpadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL)), 0);
          v230 = v42;
          v231 = v38;
          v232 = vmlaq_laneq_f32(v37, v33, v35, 2);
          v233 = vaddq_f32(v36, v30);
        }

        if ((v11 & 0x1000) != 0)
        {
          v229 = xmmword_21C2A4050;
          btConeTwistConstraint::GetPointForAngle(a2, 6.0868, *&v10, &v228);
          v167 = 0;
          v168 = vmulq_f32(v230, v228);
          v169 = vmulq_f32(v228, v231);
          v170 = vmulq_f32(v228, v232);
          v170.i32[3] = 0;
          *v168.f32 = vadd_f32(vpadd_f32(*v168.f32, *v169.i8), vzip1_s32(*&vextq_s8(v168, v168, 8uLL), *&vextq_s8(v169, v169, 8uLL)));
          *&v168.u32[2] = vpadd_f32(vpadd_f32(*v170.i8, *&vextq_s8(v170, v170, 8uLL)), 0);
          v228 = vaddq_f32(v168, v233);
          do
          {
            btConeTwistConstraint::GetPointForAngle(a2, (v167 * 6.2832) * 0.03125, *&v10, &v227);
            v171 = vmulq_f32(v230, v227);
            v172 = vmulq_f32(v227, v231);
            v173 = vmulq_f32(v227, v232);
            v173.i32[3] = 0;
            *v171.f32 = vadd_f32(vpadd_f32(*v171.f32, *v172.i8), vzip1_s32(*&vextq_s8(v171, v171, 8uLL), *&vextq_s8(v172, v172, 8uLL)));
            *&v171.u32[2] = vpadd_f32(vpadd_f32(*v173.i8, *&vextq_s8(v173, v173, 8uLL)), 0);
            v227 = vaddq_f32(v171, v233);
            v174 = (*(*this + 40))(this);
            (*(*v174 + 16))(v174, &v228, &v227, &v229);
            if ((v167 & 3) == 0)
            {
              v175 = (*(*this + 40))(this);
              (*(*v175 + 16))(v175, &v233, &v227, &v229);
            }

            v228 = v227;
            ++v167;
          }

          while (v167 != 32);
          v176 = *(a2 + 130);
          v177 = *(a2 + 145);
          v178 = *(a2 + 6);
          if (v178[24].f32[0] <= 0.0)
          {
            v178 = *(a2 + 5);
            v180 = v178[1];
            v179 = v178[2];
            v181 = v178[3];
            v182 = *(a2 + 23);
            v183 = *(a2 + 24);
            v182.i32[3] = 0;
            v183.i32[3] = 0;
            v185 = *(a2 + 25);
            v184 = *(a2 + 26);
          }

          else
          {
            v180 = v178[1];
            v179 = v178[2];
            v181 = v178[3];
            v182 = *(a2 + 27);
            v183 = *(a2 + 28);
            v182.i32[3] = 0;
            v183.i32[3] = 0;
            v185 = *(a2 + 29);
            v184 = *(a2 + 30);
          }

          v185.i32[3] = 0;
          v213 = vmulq_f32(v180, v184);
          v214 = vmulq_f32(v179, v184);
          v215 = vmulq_f32(v181, v184);
          v215.i32[3] = 0;
          *v213.f32 = vadd_f32(vpadd_f32(*v213.f32, *v214.i8), vzip1_s32(*&vextq_s8(v213, v213, 8uLL), *&vextq_s8(v214, v214, 8uLL)));
          *&v213.u32[2] = vpadd_f32(vpadd_f32(*v215.i8, *&vextq_s8(v215, v215, 8uLL)), 0);
          v216 = vaddq_f32(v178[4], v213);
          v230 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v182, v180.f32[0]), v183, *v180.f32, 1), v185, v180, 2);
          v231 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v182, v179.f32[0]), v183, *v179.f32, 1), v185, v179, 2);
          v232 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v182, v181.f32[0]), v183, *v181.f32, 1), v185, v181, 2);
          v233 = v216;
          v227 = v216;
          *v226.i8 = vzip1_s32(*v230.f32, *v231.f32);
          v226.i64[1] = v232.u32[0];
          *(&v225 + 1) = v232.u32[1];
          *&v225 = vzip2_s32(*v230.f32, *v231.f32);
          v217 = (*(*this + 40))(this);
          v220.n128_u32[0] = 10.0;
          v221.n128_u32[0] = v10;
          v222.n128_u32[0] = v10;
          v218.n128_f32[0] = -v177 - v176;
          v219.n128_f32[0] = v176 - v177;
          (*(*v217 + 120))(v221, v222, v218, v219, v220);
        }

        break;
    }

    return;
  }

  if (v12 == 6)
  {
    goto LABEL_11;
  }

  if (v12 != 7)
  {
    if (v12 != 9)
    {
      return;
    }

LABEL_11:
    v43 = *(a2 + 76);
    v230 = *(a2 + 75);
    v231 = v43;
    v44 = *(a2 + 78);
    v232 = *(a2 + 77);
    v233 = v44;
    if ((v5 & 0x800) != 0)
    {
      v45 = (*(*this + 40))(this);
      (*(*v45 + 112))(v45, &v230, *&v10);
      v46 = *(a2 + 80);
      v230 = *(a2 + 79);
      v231 = v46;
      v47 = *(a2 + 82);
      v232 = *(a2 + 81);
      v233 = v47;
      v48 = (*(*this + 40))(this);
      (*(*v48 + 112))(v48, &v230, *&v10);
    }

    if ((v11 & 0x1000) != 0)
    {
      v49 = *(a2 + 76);
      v230 = *(a2 + 75);
      v231 = v49;
      v50 = *(a2 + 78);
      v232 = *(a2 + 77);
      v233 = v50;
      *v229.f32 = vzip1_s32(*&vextq_s8(v230, v230, 8uLL), *&vextq_s8(v49, v49, 8uLL));
      v229.i64[1] = v232.u32[2];
      *v228.f32 = vzip1_s32(*v230.f32, *v49.i8);
      v228.i64[1] = v232.u32[0];
      v51 = *(a2 + 264);
      v52 = *(a2 + 265);
      v53 = *(a2 + 280);
      v54 = *(a2 + 281);
      v55 = (*(*this + 40))(this);
      v227 = 0uLL;
      v56 = (*(*v55 + 128))(v55, a2 + 1312, &v229, &v228, &v227, *&v10 * 0.9, v51, v52, v53, v54, 10.0);
      v56.i64[0] = __PAIR64__(v231.u32[1], v230.u32[1]);
      v56.i32[2] = v232.i32[1];
      v228 = v56;
      Angle = btGeneric6DofConstraint::getAngle(a2, 1);
      v58 = btGeneric6DofConstraint::getAngle(a2, 2);
      v59 = __sincosf_stret(Angle);
      v60 = __sincosf_stret(v58);
      v227.f32[0] = (((v59.__cosval * v60.__sinval) * v228.f32[1]) + ((v59.__cosval * v60.__cosval) * v228.f32[0])) - (v59.__sinval * v228.f32[2]);
      v227.f32[1] = (v60.__cosval * v228.f32[1]) - (v60.__sinval * v228.f32[0]);
      v227.f32[2] = (((v59.__sinval * v60.__sinval) * v228.f32[1]) + ((v59.__sinval * v60.__cosval) * v228.f32[0])) + (v59.__cosval * v228.f32[2]);
      v62 = *(a2 + 80);
      v230 = *(a2 + 79);
      v61.i64[0] = __PAIR64__(v62.u32[0], v230.u32[0]);
      v231 = v62;
      v63 = *(a2 + 82);
      v232 = *(a2 + 81);
      v233 = v63;
      v61.i64[1] = v232.u32[0];
      v62.i64[0] = 0x8000000080000000;
      v62.i64[1] = 0x8000000080000000;
      v226 = veorq_s8(v61, v62);
      v64 = *(a2 + 248);
      v65 = *(a2 + 249);
      if (v64 <= v65)
      {
        if (v64 < v65)
        {
          v140 = (*(*this + 40))(this);
          v225 = 0uLL;
          v141.n128_u32[0] = 10.0;
          v142.n128_u32[0] = v10;
          v143.n128_u32[0] = v10;
          v144.n128_f32[0] = v64;
          v145.n128_f32[0] = v65;
          (*(*v140 + 120))(v142, v143, v144, v145, v141);
        }
      }

      else
      {
        v66 = (*(*this + 40))(this);
        v225 = 0uLL;
        v67.n128_u32[0] = -1068953637;
        v68.n128_u32[0] = 1078530011;
        v69.n128_u32[0] = 10.0;
        v70.n128_u32[0] = v10;
        v71.n128_u32[0] = v10;
        (*(*v66 + 120))(v70, v71, v67, v68, v69);
      }

      v146 = *(a2 + 76);
      v230 = *(a2 + 75);
      v231 = v146;
      v147 = *(a2 + 78);
      v232 = *(a2 + 77);
      v233 = v147;
      v148 = *(a2 + 49);
      v224 = *(a2 + 50);
      v225 = v148;
      v149 = (*(*this + 40))(this);
      v223[0] = 0;
      v223[1] = 0;
      (*(*v149 + 144))(v149, &v225, &v224, &v230, v223);
    }

    return;
  }

  v114 = *(a2 + 60);
  v230 = *(a2 + 59);
  v231 = v114;
  v115 = *(a2 + 62);
  v232 = *(a2 + 61);
  v233 = v115;
  if ((v5 & 0x800) != 0)
  {
    v116 = (*(*this + 40))(this);
    (*(*v116 + 112))(v116, &v230, *&v10);
    v117 = *(a2 + 64);
    v230 = *(a2 + 63);
    v231 = v117;
    v118 = *(a2 + 66);
    v232 = *(a2 + 65);
    v233 = v118;
    v119 = (*(*this + 40))(this);
    (*(*v119 + 112))(v119, &v230, *&v10);
  }

  if ((v11 & 0x1000) != 0)
  {
    v120 = (a2 + 944);
    v121 = 1008;
    if (*(a2 + 208))
    {
      v121 = 944;
    }

    else
    {
      v120 = (a2 + 1008);
    }

    v122 = v120[1];
    v123 = v120[2];
    v230 = *(a2 + v121);
    v231 = v122;
    v8.i32[0] = *(a2 + 53);
    v9.i32[0] = *(a2 + 54);
    v124 = vmulq_f32(v230, v8);
    v125 = vmulq_f32(v122, v8);
    v126 = v120[3];
    v127 = vmulq_f32(v123, v8);
    v127.i32[3] = 0;
    *v124.f32 = vadd_f32(vpadd_f32(*v124.f32, *v125.i8), vzip1_s32(*&vextq_s8(v124, v124, 8uLL), *&vextq_s8(v125, v125, 8uLL)));
    *&v124.u32[2] = vpadd_f32(vpadd_f32(*v127.i8, *&vextq_s8(v127, v127, 8uLL)), 0);
    v232 = v123;
    v233 = v126;
    v128 = vmulq_f32(v230, v9);
    v129 = vmulq_f32(v122, v9);
    v130 = vmulq_f32(v123, v9);
    v130.i32[3] = 0;
    *v128.f32 = vadd_f32(vpadd_f32(*v128.f32, *v129.i8), vzip1_s32(*&vextq_s8(v128, v128, 8uLL), *&vextq_s8(v129, v129, 8uLL)));
    *&v128.u32[2] = vpadd_f32(vpadd_f32(*v130.i8, *&vextq_s8(v130, v130, 8uLL)), 0);
    v228 = vaddq_f32(v126, v128);
    v229 = vaddq_f32(v126, v124);
    v131 = (*(*this + 40))(this);
    v227 = 0uLL;
    (*(*v131 + 16))(v131, &v229, &v228, &v227);
    v227.i64[0] = __PAIR64__(v231.u32[0], v230.u32[0]);
    v227.i64[1] = v232.u32[0];
    v226.i64[0] = __PAIR64__(v231.u32[1], v230.u32[1]);
    v226.i64[1] = v232.u32[1];
    v132 = *(a2 + 55);
    v133 = *(a2 + 56);
    v134 = (*(*this + 40))(this);
    v225 = 0uLL;
    v135.n128_u32[0] = 10.0;
    v136.n128_u32[0] = v10;
    v137.n128_u32[0] = v10;
    v138.n128_u32[0] = v132;
    v139.n128_u32[0] = v133;
    (*(*v134 + 120))(v136, v137, v138, v139, v135);
  }
}

uint64_t btDiscreteDynamicsWorld::clearForces(uint64_t this)
{
  if (*(this + 324) >= 1)
  {
    v1 = 0;
    do
    {
      v2 = *(*(this + 336) + 8 * v1);
      *(v2 + 464) = 0uLL;
      *(v2 + 480) = 0uLL;
      ++v1;
    }

    while (v1 < *(this + 324));
  }

  return this;
}

void btDiscreteDynamicsWorld::applyGravity(btDiscreteDynamicsWorld *this)
{
  v1 = *(this + 81);
  if (v1 >= 1)
  {
    for (i = 0; i < v1; ++i)
    {
      v4 = *(*(this + 42) + 8 * i);
      v5 = *(v4 + 244);
      if (v5 != 2 && v5 != 5)
      {
        btRigidBody::applyGravity(v4);
        v1 = *(this + 81);
      }
    }
  }
}

uint64_t btDiscreteDynamicsWorld::synchronizeSingleMotionState(uint64_t this, btRigidBody *a2, uint64_t a3, uint64_t a4, btTransform *a5)
{
  if (*(a2 + 67))
  {
    if ((*(a2 + 232) & 3) == 0)
    {
      btTransformUtil::integrateTransform(a2 + 5, (a2 + 144), a2 + 10, &v6, *(this + 368) * *(a2 + 70), a5);
      return (*(**(a2 + 67) + 24))(*(a2 + 67), &v6);
    }
  }

  return this;
}

uint64_t btDiscreteDynamicsWorld::synchronizeMotionStates(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, btTransform *a5)
{
  v5 = this;
  if (*(this + 374))
  {
    v6 = *(this + 12);
    if (v6 >= 1)
    {
      for (i = 0; i < v6; ++i)
      {
        v8 = *(*(v5 + 24) + 8 * i);
        if (v8)
        {
          v9 = (*(v8 + 264) & 2) == 0;
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          this = btDiscreteDynamicsWorld::synchronizeSingleMotionState(v5, v8, a3, a4, a5);
          v6 = *(v5 + 12);
        }
      }
    }
  }

  else
  {
    v10 = *(this + 324);
    if (v10 >= 1)
    {
      for (j = 0; j < v10; ++j)
      {
        v12 = *(*(v5 + 336) + 8 * j);
        v13 = *(v12 + 244);
        if (v13 != 2 && v13 != 5)
        {
          *(v5 + 448) = 1;
          this = btDiscreteDynamicsWorld::synchronizeSingleMotionState(v5, v12, a3, a4, a5);
          v10 = *(v5 + 324);
        }
      }
    }
  }

  return this;
}

uint64_t btDiscreteDynamicsWorld::stepSimulation(btDiscreteDynamicsWorld *this, float a2, int a3, float a4)
{
  *(this + 448) = 0;
  if (a3)
  {
    v5 = a4;
    v6 = a3;
    v7 = *(this + 92) + a2;
    *(this + 92) = v7;
    if (v7 >= a4)
    {
      v8 = (v7 / a4);
      *(this + 92) = v7 - ((v7 / a4) * a4);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    *(this + 92) = a2;
    v9 = fabsf(a2);
    v8 = v9 >= 0.00000011921;
    v5 = a2;
    v6 = v9 >= 0.00000011921;
  }

  if ((*(*this + 40))(this))
  {
    v10 = (*(*this + 40))(this);
    gDisableDeactivation = ((*(*v10 + 96))(v10) & 0x10) != 0;
  }

  if (v8)
  {
    if (v8 < v6)
    {
      v6 = v8;
    }

    (*(*this + 320))(this, v5 * v6);
    (*(*this + 344))(this);
    if (v6 >= 1)
    {
      do
      {
        (*(*this + 312))(this, v5);
        (*(*this + 160))(this);
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    (*(*this + 160))(this);
  }

  (*(*this + 240))(this);
  return v8;
}

btCollisionObject *btDiscreteDynamicsWorld::internalSingleStepSimulation(btDiscreteDynamicsWorld *this, float a2)
{
  v4 = *(this + 16);
  if (v4)
  {
    v4(this, a2);
  }

  (*(*this + 280))(this, a2);
  *(this + 12) = a2;
  *(this + 13) = 0;
  *(this + 9) = (*(*this + 40))(this);
  btDiscreteDynamicsWorld::createPredictiveContacts(this, a2, v5, v6, v7, v8);
  (*(*this + 88))(this);
  (*(*this + 296))(this);
  *(this + 39) = a2;
  (*(*this + 304))(this, this + 144);
  (*(*this + 288))(this, a2);
  btDiscreteDynamicsWorld::updateActions(this, a2);
  result = btDiscreteDynamicsWorld::updateActivationState(this, a2);
  v11 = *(this + 15);
  if (v11)
  {
    v10.n128_f32[0] = a2;

    return v11(this, v10);
  }

  return result;
}

void btDiscreteDynamicsWorld::createPredictiveContacts(btDiscreteDynamicsWorld *this, float a2, uint64_t a3, uint64_t a4, uint64_t a5, btTransform *a6)
{
  v76 = *MEMORY[0x277D85DE8];
  if (*(this + 105) >= 1)
  {
    v8 = 0;
    do
    {
      (*(**(this + 5) + 32))(*(this + 5), *(*(this + 54) + 8 * v8++));
    }

    while (v8 < *(this + 105));
  }

  v9 = (this + 420);
  v10 = *(this + 54);
  if (v10 && *(this + 440) == 1)
  {
    btAlignedFreeInternal(v10);
  }

  *(this + 440) = 1;
  *(this + 54) = 0;
  *v9 = 0;
  if (*(this + 81) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = *(*(this + 42) + 8 * v11);
      *(v12 + 280) = 1065353216;
      v13 = *(v12 + 244);
      if (v13 != 2 && v13 != 5 && (*(v12 + 232) & 3) == 0)
      {
        btRigidBody::predictIntegratedTransform(v12, a2, &v60, a4, a5, a6);
        if (*(this + 64) == 1)
        {
          v15 = *(v12 + 288) * *(v12 + 288);
          if (v15 != 0.0)
          {
            v16 = vsubq_f32(v60.var1, *(v12 + 64));
            v16.i32[3] = 0;
            v17 = vmulq_f32(v16, v16);
            if (v15 < vadd_f32(vpadd_f32(*v17.i8, *v17.i8), *&vextq_s8(v17, v17, 8uLL)).f32[0] && *(*(v12 + 208) + 8) <= 19)
            {
              ++gNumClampedCcdMotions;
              v18 = (*(**(this + 12) + 72))(*(this + 12));
              v19 = *(this + 5);
              v65 = 1.0;
              v66 = xmmword_21C281170;
              v67 = 0;
              v68 = *(v12 + 64);
              var1 = v60.var1;
              v71 = 0;
              v64 = &unk_282DCB270;
              v72 = v12;
              v73 = 0;
              v74 = v18;
              v75 = v19;
              v20 = *(v12 + 284);
              btConvexInternalShape::btConvexInternalShape(v61);
              v61[0].var0 = &unk_282DCA7E8;
              v61[0].var1 = 8;
              v62 = v20;
              v63 = v20;
              v73 = *(this + 21);
              v21 = *(v12 + 200);
              v66 = *(v21 + 8);
              v67 = *(v21 + 24);
              v57 = v60.var0.var0[1];
              v58 = v60.var0.var0[2];
              v59 = v60.var1;
              v22 = *(v12 + 32);
              v56 = *(v12 + 16);
              v57 = v22;
              v58 = *(v12 + 48);
              btCollisionWorld::convexSweepTest(this, v61, v12 + 16, &v56, &v64, 0.0);
              if (v65 < 1.0)
              {
                v53 = v65;
                v50 = *(v12 + 64);
                v51 = v60.var1;
                v52 = v70;
                v23 = (*(**(this + 5) + 24))(*(this + 5), v12, v71);
                v24 = *(this + 105);
                if (v24 == *(this + 106))
                {
                  v25 = v24 ? 2 * v24 : 1;
                  if (v24 < v25)
                  {
                    if (v25)
                    {
                      v26 = btAlignedAllocInternal(8 * v25, 16);
                      v24 = *v9;
                    }

                    else
                    {
                      v26 = 0;
                    }

                    if (v24 >= 1)
                    {
                      v27 = 0;
                      do
                      {
                        *(v26 + v27) = *(*(this + 54) + v27);
                        v27 += 8;
                      }

                      while (8 * v24 != v27);
                    }

                    v28 = *(this + 54);
                    if (v28)
                    {
                      if (*(this + 440) == 1)
                      {
                        btAlignedFreeInternal(v28);
                        v24 = *v9;
                      }
                    }

                    *(this + 440) = 1;
                    *(this + 54) = v26;
                    *(this + 106) = v25;
                  }
                }

                v29 = vmulq_n_f32(vsubq_f32(v51, v50), v53);
                v29.i32[3] = 0;
                v30.i64[0] = 0x8000000080000000;
                v30.i64[1] = 0x8000000080000000;
                v31 = vmulq_f32(veorq_s8(v52, v30), v29);
                *(*(this + 54) + 8 * v24) = v23;
                *(this + 105) = v24 + 1;
                v32 = vaddq_f32(*(v12 + 64), v29);
                v33 = *(v71 + 1);
                v34 = *(v71 + 2);
                v35 = *(v71 + 3);
                v36 = vtrn1q_s32(v33, v34);
                v37 = vzip2_s32(*v35.i8, 0);
                v38 = vextq_s8(v35, v35, 8uLL).u32[0];
                v39.i64[0] = vextq_s8(v36, v36, 8uLL).u64[0];
                v36.i64[1] = v35.u32[0];
                v40 = veorq_s8(*(v71 + 4), v30);
                v41 = vmulq_f32(v36, v40);
                *v33.f32 = vzip2_s32(*v33.f32, *v34.i8);
                *&v33.u32[2] = v37;
                v42 = vmulq_f32(v33, v40);
                v39.i64[1] = v38;
                *v42.f32 = vadd_f32(vpadd_f32(*v41.i8, *v42.f32), vzip1_s32(*&vextq_s8(v41, v41, 8uLL), *&vextq_s8(v42, v42, 8uLL)));
                v43 = vmulq_f32(v39, v40);
                v43.i32[3] = 0;
                v54 = v32;
                v44 = vmulq_f32(v32, v36);
                v45 = vmulq_f32(v32, v33);
                v46 = vmulq_f32(v32, v39);
                v46.i32[3] = 0;
                *v45.f32 = vadd_f32(vpadd_f32(*v44.i8, *v45.f32), vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *&vextq_s8(v45, v45, 8uLL)));
                *&v42.u32[2] = vpadd_f32(vpadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL)), 0);
                *&v45.u32[2] = vpadd_f32(vpadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL)), 0);
                v55.var0 = 0uLL;
                v55.var1 = vaddq_f32(v45, v42);
                v55.var4 = v70;
                LODWORD(v55.var5) = vadd_f32(vpadd_f32(*v31.i8, *v31.i8), *&vextq_s8(v31, v31, 8uLL)).u32[0];
                *&v55.var6 = 0;
                v55.var8 = 0.0;
                v55.var13 = 0;
                v55.var14 = 0;
                memset(&v55.var15, 0, 32);
                v47 = (v23 + 192 * btPersistentManifold::addManifoldPoint(v23, &v55));
                v47[6].i32[3] = 0;
                v47[6].f32[1] = btManifoldResult::calculateCombinedFriction(v12, v71, v48);
                v49 = *(v12 + 64);
                v47[3] = v54;
                v47[4] = v49;
              }

              C3DSceneSourcePerformConsistencyCheck(v61);
            }
          }
        }
      }

      ++v11;
    }

    while (v11 < *(this + 81));
  }
}

uint64_t btDiscreteDynamicsWorld::updateActions(uint64_t this, float a2)
{
  if (*(this + 380) >= 1)
  {
    v3 = this;
    v4 = 0;
    do
    {
      v5 = *(*(v3 + 392) + 8 * v4);
      this = (*(*v5 + 16))(v5, v3, a2);
      ++v4;
    }

    while (v4 < *(v3 + 380));
  }

  return this;
}

btCollisionObject *btDiscreteDynamicsWorld::updateActivationState(btCollisionObject *this, float a2)
{
  if (*(this + 81) >= 1)
  {
    v3 = this;
    for (i = 0; i < *(v3 + 81); ++i)
    {
      v5 = *(*(v3 + 42) + 8 * i);
      if (v5)
      {
        v6 = *(v5 + 244);
        if (v6 != 2)
        {
          if (v6 == 4)
          {
            continue;
          }

          v7 = vmulq_f32(*(v5 + 352), *(v5 + 352));
          if (vadd_f32(vpadd_f32(*v7.i8, *v7.i8), *&vextq_s8(v7, v7, 8uLL)).f32[0] >= (*(v5 + 524) * *(v5 + 524)) || (v8 = vmulq_f32(*(v5 + 368), *(v5 + 368)), vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).f32[0] >= (*(v5 + 528) * *(v5 + 528))))
          {
            *(v5 + 248) = 0;
            this = btCollisionObject::setActivationState(v5, 0);
            v6 = *(v5 + 244);
            if (v6 == 4)
            {
              continue;
            }
          }

          else
          {
            *(v5 + 248) = *(v5 + 248) + a2;
          }
        }

        if ((gDisableDeactivation & 1) != 0 || *&gDeactivationTime == 0.0 || (v6 & 0xFFFFFFFE) != 2 && *(v5 + 248) <= *&gDeactivationTime)
        {
          v9 = v5;
          v10 = 1;
        }

        else
        {
          if ((*(v5 + 232) & 3) == 0)
          {
            if (v6 == 1)
            {
              this = btCollisionObject::setActivationState(v5, 3);
              v6 = *(v5 + 244);
            }

            if (v6 == 2)
            {
              *(v5 + 352) = 0u;
              *(v5 + 368) = 0u;
            }

            continue;
          }

          v9 = v5;
          v10 = 2;
        }

        this = btCollisionObject::setActivationState(v9, v10);
      }
    }
  }

  return this;
}

void btDiscreteDynamicsWorld::setGravity(btVector3 *this, float32x4_t *a2)
{
  this[22] = *a2;
  v2 = LODWORD(this[20].var0.var0[1]);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v6 = *(*this[21].var0.var0 + 8 * i);
      v7 = *(v6 + 244);
      v8 = v7 == 2 || v7 == 5;
      if (!v8 && (*(v6 + 576) & 1) == 0)
      {
        btRigidBody::setGravity(v6, a2);
        v2 = LODWORD(this[20].var0.var0[1]);
      }
    }
  }
}

__n128 btDiscreteDynamicsWorld::getGravity@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[22];
  *a2 = result;
  return result;
}

uint64_t btDiscreteDynamicsWorld::removeCollisionObject(btDiscreteDynamicsWorld *this, btCollisionObject *a2)
{
  if (a2 && (*(a2 + 66) & 2) != 0)
  {
    return (*(*this + 184))();
  }

  else
  {
    return btCollisionWorld::removeCollisionObject(this, a2);
  }
}

uint64_t btDiscreteDynamicsWorld::removeRigidBody(btDiscreteDynamicsWorld *this, btCollisionObject *a2)
{
  v4 = a2;
  btAlignedObjectArray<btCollisionObject *>::remove(this + 320, &v4);
  return btCollisionWorld::removeCollisionObject(this, v4);
}

void btDiscreteDynamicsWorld::addRigidBody(float32x4_t *this, btRigidBody *a2)
{
  if ((*(a2 + 232) & 3) == 0 && (*(a2 + 576) & 1) == 0)
  {
    btRigidBody::setGravity(a2, this + 22);
  }

  if (*(a2 + 26))
  {
    if (*(a2 + 232))
    {
      btCollisionObject::setActivationState(a2, 2);
    }

    else
    {
      v4 = this[20].i32[1];
      if (v4 == this[20].i32[2])
      {
        v5 = v4 ? 2 * v4 : 1;
        if (v4 < v5)
        {
          if (v5)
          {
            v6 = btAlignedAllocInternal(8 * v5, 16);
            v4 = this[20].i32[1];
          }

          else
          {
            v6 = 0;
          }

          if (v4 >= 1)
          {
            v7 = 0;
            do
            {
              *(v6 + v7) = *(this[21].i64[0] + v7);
              v7 += 8;
            }

            while (8 * v4 != v7);
          }

          v8 = this[21].i64[0];
          if (v8 && this[21].i8[8] == 1)
          {
            btAlignedFreeInternal(v8);
            v4 = this[20].i32[1];
          }

          this[21].i8[8] = 1;
          this[21].i64[0] = v6;
          this[20].i32[2] = v5;
        }
      }

      *(this[21].i64[0] + 8 * v4) = a2;
      this[20].i32[1] = v4 + 1;
    }

    if ((*(a2 + 58) & 3) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    if ((*(a2 + 58) & 3) != 0)
    {
      v10 = -3;
    }

    else
    {
      v10 = -1;
    }

    v11 = *(this->i64[0] + 72);

    v11(this, a2, v9, v10, 0);
  }
}

void btDiscreteDynamicsWorld::addRigidBody(float32x4_t *this, btRigidBody *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a2 + 232) & 3) == 0 && (*(a2 + 576) & 1) == 0)
  {
    btRigidBody::setGravity(a2, this + 22);
  }

  if (*(a2 + 26))
  {
    if (*(a2 + 232))
    {
      btCollisionObject::setActivationState(a2, 2);
    }

    else
    {
      v10 = this[20].i32[1];
      if (v10 == this[20].i32[2])
      {
        v11 = v10 ? 2 * v10 : 1;
        if (v10 < v11)
        {
          if (v11)
          {
            v12 = btAlignedAllocInternal(8 * v11, 16);
            v10 = this[20].i32[1];
          }

          else
          {
            v12 = 0;
          }

          if (v10 >= 1)
          {
            v13 = 0;
            do
            {
              *(v12 + v13) = *(this[21].i64[0] + v13);
              v13 += 8;
            }

            while (8 * v10 != v13);
          }

          v14 = this[21].i64[0];
          if (v14 && this[21].i8[8] == 1)
          {
            btAlignedFreeInternal(v14);
            v10 = this[20].i32[1];
          }

          this[21].i8[8] = 1;
          this[21].i64[0] = v12;
          this[20].i32[2] = v11;
        }
      }

      *(this[21].i64[0] + 8 * v10) = a2;
      this[20].i32[1] = v10 + 1;
    }

    v15 = *(this->i64[0] + 72);

    v15(this, a2, a3, a4, a5);
  }
}

btCollisionObject *btDiscreteDynamicsWorld::activateAllBodies(btCollisionObject *this)
{
  v1 = *(this + 81);
  if (v1 >= 1)
  {
    v2 = this;
    for (i = 0; i < v1; ++i)
    {
      this = *(*(v2 + 42) + 8 * i);
      if (this)
      {
        this = btCollisionObject::activate(this, 0);
        v1 = *(v2 + 81);
      }
    }
  }

  return this;
}

void btDiscreteDynamicsWorld::addConstraint(btDiscreteDynamicsWorld *this, btRigidBody **a2, int a3)
{
  v6 = *(this + 73);
  if (v6 == *(this + 74))
  {
    v7 = v6 ? 2 * v6 : 1;
    if (v6 < v7)
    {
      if (v7)
      {
        v8 = btAlignedAllocInternal(8 * v7, 16);
        v6 = *(this + 73);
      }

      else
      {
        v8 = 0;
      }

      if (v6 >= 1)
      {
        v9 = 0;
        do
        {
          *(v8 + v9) = *(*(this + 38) + v9);
          v9 += 8;
        }

        while (8 * v6 != v9);
      }

      v10 = *(this + 38);
      if (v10 && *(this + 312) == 1)
      {
        btAlignedFreeInternal(v10);
        v6 = *(this + 73);
      }

      *(this + 312) = 1;
      *(this + 38) = v8;
      *(this + 74) = v7;
    }
  }

  *(*(this + 38) + 8 * v6) = a2;
  *(this + 73) = v6 + 1;
  if (a3)
  {
    btRigidBody::addConstraintRef(a2[5], a2);
    v11 = a2[6];

    btRigidBody::addConstraintRef(v11, a2);
  }
}

uint64_t btDiscreteDynamicsWorld::removeConstraint(btDiscreteDynamicsWorld *this, btTypedConstraint *a2)
{
  v3 = a2;
  btAlignedObjectArray<btCollisionObject *>::remove(this + 288, &v3);
  btRigidBody::removeConstraintRef(*(v3 + 5), v3);
  return btRigidBody::removeConstraintRef(*(v3 + 6), v3);
}

void btDiscreteDynamicsWorld::addAction(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 380);
  if (v4 == *(a1 + 384))
  {
    v5 = v4 ? 2 * v4 : 1;
    if (v4 < v5)
    {
      if (v5)
      {
        v6 = btAlignedAllocInternal(8 * v5, 16);
        v4 = *(a1 + 380);
      }

      else
      {
        v6 = 0;
      }

      if (v4 >= 1)
      {
        v7 = 0;
        do
        {
          *(v6 + v7) = *(*(a1 + 392) + v7);
          v7 += 8;
        }

        while (8 * v4 != v7);
      }

      v8 = *(a1 + 392);
      if (v8 && *(a1 + 400) == 1)
      {
        btAlignedFreeInternal(v8);
        v4 = *(a1 + 380);
      }

      *(a1 + 400) = 1;
      *(a1 + 392) = v6;
      *(a1 + 384) = v5;
    }
  }

  *(*(a1 + 392) + 8 * v4) = a2;
  *(a1 + 380) = v4 + 1;
}

uint64_t btDiscreteDynamicsWorld::solveConstraints(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 292);
  v5 = *(a1 + 236);
  if (v5 < v4)
  {
    v6 = v5;
    if (*(a1 + 240) < v4)
    {
      if (v4)
      {
        v7 = btAlignedAllocInternal(8 * v4, 16);
        v5 = *(a1 + 236);
      }

      else
      {
        v7 = 0;
      }

      if (v5 >= 1)
      {
        v8 = 0;
        v9 = 8 * v5;
        do
        {
          *(v7 + v8) = *(*(a1 + 248) + v8);
          v8 += 8;
        }

        while (v9 != v8);
      }

      v10 = *(a1 + 248);
      if (v10 && *(a1 + 256) == 1)
      {
        btAlignedFreeInternal(v10);
      }

      *(a1 + 256) = 1;
      *(a1 + 248) = v7;
      *(a1 + 240) = v4;
    }

    do
    {
      *(*(a1 + 248) + 8 * v6++) = 0;
    }

    while (v4 != v6);
  }

  *(a1 + 236) = v4;
  if ((*(*a1 + 208))(a1) >= 1)
  {
    v11 = 0;
    do
    {
      *(*(a1 + 248) + 8 * v11) = *(*(a1 + 304) + 8 * v11);
      ++v11;
    }

    while (v11 < (*(*a1 + 208))(a1));
  }

  v12 = *(a1 + 236);
  if (v12 > 1)
  {
    btAlignedObjectArray<btTypedConstraint *>::quickSortInternal<btSortConstraintOnIslandPredicate>(a1 + 232, &v27, 0, v12 - 1);
  }

  if ((*(*a1 + 208))(a1))
  {
    v13 = *(a1 + 248);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 264);
  v15 = *(a1 + 236);
  v16 = (*(*a1 + 40))(a1);
  *(v14 + 8) = a2;
  *(v14 + 24) = v13;
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  v17 = *(v14 + 60);
  if ((v17 & 0x80000000) != 0)
  {
    if ((*(v14 + 64) & 0x80000000) != 0)
    {
      v18 = *(v14 + 72);
      if (v18 && *(v14 + 80) == 1)
      {
        btAlignedFreeInternal(v18);
      }

      *(v14 + 80) = 1;
      *(v14 + 72) = 0;
      *(v14 + 64) = 0;
    }

    do
    {
      *(*(v14 + 72) + 8 * v17++) = 0;
    }

    while (v17);
  }

  *(v14 + 60) = 0;
  v19 = *(v14 + 92);
  if ((v19 & 0x80000000) != 0)
  {
    if ((*(v14 + 96) & 0x80000000) != 0)
    {
      v20 = *(v14 + 104);
      if (v20 && *(v14 + 112) == 1)
      {
        btAlignedFreeInternal(v20);
      }

      *(v14 + 112) = 1;
      *(v14 + 104) = 0;
      *(v14 + 96) = 0;
    }

    do
    {
      *(*(v14 + 104) + 8 * v19++) = 0;
    }

    while (v19);
  }

  *(v14 + 92) = 0;
  v21 = *(v14 + 124);
  if ((v21 & 0x80000000) != 0)
  {
    if ((*(v14 + 128) & 0x80000000) != 0)
    {
      v22 = *(v14 + 136);
      if (v22 && *(v14 + 144) == 1)
      {
        btAlignedFreeInternal(v22);
      }

      *(v14 + 144) = 1;
      *(v14 + 136) = 0;
      *(v14 + 128) = 0;
    }

    do
    {
      *(*(v14 + 136) + 8 * v21++) = 0;
    }

    while (v21);
  }

  *(v14 + 124) = 0;
  v23 = *(a1 + 272);
  v24 = *(a1 + 12);
  v25 = (*(**(a1 + 40) + 72))(*(a1 + 40));
  (*(*v23 + 16))(v23, v24, v25);
  btSimulationIslandManager::buildAndProcessIslands(*(a1 + 280), *(a1 + 40), a1, *(a1 + 264));
  InplaceSolverIslandCallback::processConstraints(*(a1 + 264));
  return (*(**(a1 + 272) + 32))(*(a1 + 272), a2, *(a1 + 104));
}

void InplaceSolverIslandCallback::processConstraints(InplaceSolverIslandCallback *this)
{
  if (*(this + 15))
  {
    v2 = *(this + 9);
  }

  else
  {
    v2 = 0;
  }

  (*(**(this + 2) + 24))(*(this + 2), v2);
  v3 = *(this + 15);
  if ((v3 & 0x80000000) != 0)
  {
    if ((*(this + 16) & 0x80000000) != 0)
    {
      v4 = *(this + 9);
      if (v4 && *(this + 80) == 1)
      {
        btAlignedFreeInternal(v4);
      }

      *(this + 80) = 1;
      *(this + 9) = 0;
      *(this + 16) = 0;
    }

    do
    {
      *(*(this + 9) + 8 * v3++) = 0;
    }

    while (v3);
  }

  *(this + 15) = 0;
  v5 = *(this + 23);
  if ((v5 & 0x80000000) != 0)
  {
    if ((*(this + 24) & 0x80000000) != 0)
    {
      v6 = *(this + 13);
      if (v6 && *(this + 112) == 1)
      {
        btAlignedFreeInternal(v6);
      }

      *(this + 112) = 1;
      *(this + 13) = 0;
      *(this + 24) = 0;
    }

    do
    {
      *(*(this + 13) + 8 * v5++) = 0;
    }

    while (v5);
  }

  *(this + 23) = 0;
  v7 = *(this + 31);
  if ((v7 & 0x80000000) != 0)
  {
    if ((*(this + 32) & 0x80000000) != 0)
    {
      v8 = *(this + 17);
      if (v8 && *(this + 144) == 1)
      {
        btAlignedFreeInternal(v8);
      }

      *(this + 144) = 1;
      *(this + 17) = 0;
      *(this + 32) = 0;
    }

    do
    {
      *(*(this + 17) + 8 * v7++) = 0;
    }

    while (v7);
  }

  *(this + 31) = 0;
}

uint64_t btDiscreteDynamicsWorld::calculateSimulationIslands(btDiscreteDynamicsWorld *this)
{
  (*(**(this + 35) + 16))(*(this + 35), this, *(this + 5));
  v2 = *(this + 105);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 54) + 8 * i);
      v5 = *(v4 + 784);
      if (v5)
      {
        v6 = *(v4 + 792);
        v7 = (*(v5 + 232) & 3) != 0 || v6 == 0;
        if (!v7 && (*(v6 + 232) & 3) == 0)
        {
          v8 = *(v5 + 244);
          v9 = v8 == 5 || v8 == 2;
          if (!v9 || ((v10 = *(v6 + 244), v10 != 2) ? (v11 = v10 == 5) : (v11 = 1), !v11))
          {
            btUnionFind::unite(*(this + 35) + 8, *(v5 + 236), *(v6 + 236));
            v2 = *(this + 105);
          }
        }
      }
    }
  }

  v12 = *(this + 73);
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = 8 * v12;
    do
    {
      v15 = *(*(this + 38) + v13);
      if (*(v15 + 28) == 1)
      {
        v16 = *(v15 + 40);
        if ((*(v16 + 232) & 3) == 0)
        {
          v17 = *(v15 + 48);
          if ((*(v17 + 232) & 3) == 0)
          {
            v18 = *(v16 + 244);
            v19 = v18 == 5 || v18 == 2;
            if (!v19 || ((v20 = *(v17 + 244), v20 != 2) ? (v21 = v20 == 5) : (v21 = 1), !v21))
            {
              btUnionFind::unite(*(this + 35) + 8, *(v16 + 236), *(v17 + 236));
            }
          }
        }
      }

      v13 += 8;
    }

    while (v14 != v13);
  }

  v22 = *(**(this + 35) + 24);

  return v22();
}

void btDiscreteDynamicsWorld::integrateTransforms(btDiscreteDynamicsWorld *this, float a2, uint64_t a3, const btCollisionObject *a4, uint64_t a5, btTransform *a6)
{
  v57 = *MEMORY[0x277D85DE8];
  if (*(this + 81) >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = *(*(this + 42) + 8 * v8);
      *(v9 + 280) = 1065353216;
      v10 = *(v9 + 244);
      v11 = v10 == 2 || v10 == 5;
      if (v11 || (*(v9 + 232) & 3) != 0)
      {
        goto LABEL_16;
      }

      btRigidBody::predictIntegratedTransform(v9, a2, &v43, a4, a5, a6);
      if (*(this + 64) != 1)
      {
        goto LABEL_15;
      }

      v12 = *(v9 + 288) * *(v9 + 288);
      if (v12 == 0.0)
      {
        goto LABEL_15;
      }

      v13 = vsubq_f32(v43.var1, *(v9 + 64));
      v13.i32[3] = 0;
      v14 = vmulq_f32(v13, v13);
      if (v12 >= vadd_f32(vpadd_f32(*v14.i8, *v14.i8), *&vextq_s8(v14, v14, 8uLL)).f32[0] || *(*(v9 + 208) + 8) > 19)
      {
        goto LABEL_15;
      }

      ++gNumClampedCcdMotions;
      v15 = (*(**(this + 12) + 72))(*(this + 12));
      v16 = *(this + 5);
      v47.var0.var0[2] = 1.0;
      v48 = xmmword_21C281170;
      v49 = 0;
      v50 = *(v9 + 64);
      var1 = v43.var1;
      v52 = 0;
      v53 = v9;
      *v47.var0.var0 = &unk_282DCB270;
      v54 = 0;
      v55 = v15;
      v56 = v16;
      v17 = *(v9 + 284);
      btConvexInternalShape::btConvexInternalShape(v44);
      v44[0].var0 = &unk_282DCA7E8;
      v44[0].var1 = 8;
      v45 = v17;
      v46 = v17;
      v54 = *(this + 21);
      v18 = *(v9 + 200);
      v48 = *(v18 + 8);
      v49 = *(v18 + 24);
      v40 = v43.var0.var0[1];
      v41 = v43.var0.var0[2];
      v42 = v43.var1;
      v19 = *(v9 + 32);
      v39 = *(v9 + 16);
      v40 = v19;
      v41 = *(v9 + 48);
      btCollisionWorld::convexSweepTest(this, v44, v9 + 16, &v39, v47.var0.var0, 0.0);
      v23 = v47.var0.var0[2];
      if (v47.var0.var0[2] >= 1.0)
      {
        break;
      }

      *(v9 + 280) = v47.var0.var0[2];
      btRigidBody::predictIntegratedTransform(v9, v23 * a2, &v43, v20, v21, v22);
      *(v9 + 280) = 0;
      btRigidBody::proceedToTransform(v9, &v43);
      C3DSceneSourcePerformConsistencyCheck(v44);
LABEL_16:
      if (++v8 >= *(this + 81))
      {
        goto LABEL_17;
      }
    }

    C3DSceneSourcePerformConsistencyCheck(v44);
LABEL_15:
    btRigidBody::proceedToTransform(v9, &v43);
    goto LABEL_16;
  }

LABEL_17:
  if (*(this + 375) == 1)
  {
    v24 = *(this + 105);
    if (v24 >= 1)
    {
      for (i = 0; i < v24; ++i)
      {
        v26 = *(*(this + 54) + 8 * i);
        if ((*(*(v26 + 784) + 264) & 2) != 0)
        {
          v27 = *(v26 + 784);
        }

        else
        {
          v27 = 0;
        }

        if ((*(*(v26 + 792) + 264) & 2) != 0)
        {
          v28 = *(v26 + 792);
        }

        else
        {
          v28 = 0;
        }

        if (*(v26 + 800) >= 1)
        {
          v29 = 0;
          v30 = v26 + 80;
          do
          {
            v31 = btManifoldResult::calculateCombinedRestitution(v27, v28, a4);
            if (v31 > 0.0)
            {
              v32 = *(v30 + 60);
              if (v32 != 0.0)
              {
                v33.i64[0] = 0x8000000080000000;
                v33.i64[1] = 0x8000000080000000;
                v34 = vmulq_n_f32(vmulq_n_f32(veorq_s8(*v30, v33), v32), v31);
                v34.var0.var0[3] = 0.0;
                v47 = v34;
                v35 = vsubq_f32(*(v30 - 16), v27[4]);
                v35.i32[3] = 0;
                *&v44[0].var0 = v35;
                v36 = vsubq_f32(*(v30 - 32), *(v28 + 64));
                v36.var0.var0[3] = 0.0;
                v39 = v36;
                btRigidBody::applyImpulse(v27, &v47, v44);
                v37.i64[0] = 0x8000000080000000;
                v37.i64[1] = 0x8000000080000000;
                v38 = veorq_s8(v47, v37);
                btRigidBody::applyImpulse(v28, &v38, &v39);
              }
            }

            ++v29;
            v30 += 192;
          }

          while (v29 < *(v26 + 800));
          v24 = *(this + 105);
        }
      }
    }
  }
}

void btDiscreteDynamicsWorld::predictUnconstraintMotion(btDiscreteDynamicsWorld *this, float a2)
{
  v2 = *(this + 81);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v6 = *(*(this + 42) + 8 * i);
      if ((*(v6 + 232) & 3) == 0)
      {
        btRigidBody::applyDamping(*(*(this + 42) + 8 * i), a2);
        btRigidBody::predictIntegratedTransform(v6, a2, (v6 + 80), v7, v8, v9);
        v2 = *(this + 81);
      }
    }
  }
}

void btDiscreteDynamicsWorld::setConstraintSolver(void ***this, void **a2)
{
  if (*(this + 373) == 1)
  {
    btAlignedFreeInternal(this[34]);
  }

  *(this + 373) = 0;
  this[34] = a2;
  this[33][2] = a2;
}

uint64_t btDiscreteDynamicsWorld::getConstraint(btDiscreteDynamicsWorld *this, int a2)
{
  return *(*(this + 38) + 8 * a2);
}

{
  return *(*(this + 38) + 8 * a2);
}

uint64_t btDiscreteDynamicsWorld::serializeRigidBodies(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 12);
  if (v4 >= 1)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(v3 + 24) + 8 * i);
      if ((v6[264] & 2) != 0)
      {
        v7 = (*(*v6 + 32))(*(*(v3 + 24) + 8 * i));
        v8 = (*(*a2 + 32))(a2, v7, 1);
        v9 = (*(*v6 + 40))(v6, *(v8 + 8), a2);
        result = (*(*a2 + 40))(a2, v8, v9, 1497645650, v6);
        v4 = *(v3 + 12);
      }
    }
  }

  if (*(v3 + 292) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *(*(v3 + 304) + 8 * v10);
      v12 = (*(*v11 + 72))(v11);
      v13 = (*(*a2 + 32))(a2, v12, 1);
      v14 = (*(*v11 + 80))(v11, *(v13 + 8), a2);
      result = (*(*a2 + 40))(a2, v13, v14, 1397641027, v11);
      ++v10;
    }

    while (v10 < *(v3 + 292));
  }

  return result;
}

uint64_t btDiscreteDynamicsWorld::serializeDynamicsWorldInfo(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 32))(a2, 104, 1);
  v5 = 0;
  v6 = *(v4 + 8);
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0;
  do
  {
    *(v6 + v5 + 88) = *(a1 + 352 + v5);
    v5 += 4;
  }

  while (v5 != 16);
  *v6 = *(a1 + 144);
  LODWORD(v7) = *(a1 + 160);
  DWORD1(v7) = *(a1 + 168);
  *(&v7 + 1) = *(a1 + 172);
  *(v6 + 16) = v7;
  *&v7 = *(a1 + 180);
  *(&v7 + 1) = *(a1 + 192);
  *(v6 + 32) = v7;
  *&v7 = *(a1 + 220);
  *(v6 + 64) = *(a1 + 164);
  *&v8 = *(a1 + 200);
  v9 = *(a1 + 208);
  *(&v8 + 1) = v7;
  *(v6 + 48) = v8;
  *(v6 + 68) = v9;
  v10 = *(a1 + 188);
  *(v6 + 76) = *(a1 + 216);
  *(v6 + 80) = v10;
  v11 = *(*a2 + 40);

  return v11(a2, v4, "btDynamicsWorldFloatData", 1145853764);
}

uint64_t btDiscreteDynamicsWorld::serialize(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 64))(a2);
  btDiscreteDynamicsWorld::serializeDynamicsWorldInfo(a1, a2);
  btDiscreteDynamicsWorld::serializeRigidBodies(a1, a2);
  btCollisionWorld::serializeCollisionObjects(a1, a2);
  v4 = *(*a2 + 72);

  return v4(a2);
}

uint64_t btDynamicsWorld::getConstraint(btDynamicsWorld *this)
{
  return 0;
}

{
  return 0;
}

void InplaceSolverIslandCallback::~InplaceSolverIslandCallback(InplaceSolverIslandCallback *this)
{
  *this = &unk_282DCB248;
  v2 = *(this + 17);
  if (v2 && *(this + 144) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 144) = 1;
  *(this + 17) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  v3 = *(this + 13);
  if (v3 && *(this + 112) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 112) = 1;
  *(this + 13) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  v4 = *(this + 9);
  if (v4 && *(this + 80) == 1)
  {
    btAlignedFreeInternal(v4);
  }

  *(this + 80) = 1;
  *(this + 9) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
}

{
  *this = &unk_282DCB248;
  v2 = *(this + 17);
  if (v2 && *(this + 144) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 144) = 1;
  *(this + 17) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  v3 = *(this + 13);
  if (v3 && *(this + 112) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 112) = 1;
  *(this + 13) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  v4 = *(this + 9);
  if (v4 && *(this + 80) == 1)
  {
    btAlignedFreeInternal(v4);
  }

  *(this + 80) = 1;
  *(this + 9) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;

  JUMPOUT(0x21CF07610);
}

void InplaceSolverIslandCallback::processIsland(InplaceSolverIslandCallback *this, btCollisionObject **a2, int a3, btPersistentManifold **a4, int a5, int a6)
{
  if (a6 < 0)
  {
    goto LABEL_21;
  }

  v10 = *(this + 8);
  if (v10 < 1)
  {
    LODWORD(v11) = 0;
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = *(this + 3);
    while (1)
    {
      v13 = *(*(*v12 + 40) + 236);
      if (v13 < 0)
      {
        v13 = *(*(*v12 + 48) + 236);
      }

      if (v13 == a6)
      {
        break;
      }

      ++v11;
      v12 += 8;
      if (v10 == v11)
      {
        v12 = 0;
        goto LABEL_19;
      }
    }
  }

  if (v11 >= v10)
  {
LABEL_19:
    v14 = 0;
  }

  else
  {
    v14 = 0;
    v11 = v11;
    do
    {
      v15 = *(*(this + 3) + 8 * v11);
      v16 = *(*(v15 + 40) + 236);
      if (v16 < 0)
      {
        v16 = *(*(v15 + 48) + 236);
      }

      if (v16 == a6)
      {
        ++v14;
      }

      ++v11;
    }

    while (v10 > v11);
  }

  if (*(*(this + 1) + 72) < 2)
  {
LABEL_21:
    (*(**(this + 2) + 24))(*(this + 2), a2);
    return;
  }

  if (a3 >= 1)
  {
    v17 = 0;
    v18 = a3;
    v20 = *(this + 15);
    v19 = *(this + 16);
    do
    {
      if (v20 == v19)
      {
        if (v19)
        {
          v21 = (2 * v19);
        }

        else
        {
          v21 = 1;
        }

        if (v19 < v21)
        {
          if (v21)
          {
            v22 = btAlignedAllocInternal(8 * v21, 16);
            LODWORD(v19) = *(this + 15);
          }

          else
          {
            v22 = 0;
          }

          if (v19 >= 1)
          {
            v23 = 0;
            do
            {
              *(v22 + v23) = *(*(this + 9) + v23);
              v23 += 8;
            }

            while (8 * v19 != v23);
          }

          v24 = *(this + 9);
          if (v24 && *(this + 80) == 1)
          {
            btAlignedFreeInternal(v24);
            LODWORD(v19) = *(this + 15);
          }

          *(this + 80) = 1;
          *(this + 9) = v22;
          v20 = v19;
          *(this + 16) = v21;
          goto LABEL_42;
        }

        v20 = v19;
      }

      v21 = v19;
LABEL_42:
      *(*(this + 9) + 8 * v20++) = a2[v17];
      *(this + 15) = v20;
      ++v17;
      v19 = v21;
    }

    while (v17 != v18);
  }

  if (a5 >= 1)
  {
    v25 = 0;
    v26 = a5;
    v28 = *(this + 23);
    v27 = *(this + 24);
    do
    {
      if (v28 == v27)
      {
        if (v27)
        {
          v29 = (2 * v27);
        }

        else
        {
          v29 = 1;
        }

        if (v27 < v29)
        {
          if (v29)
          {
            v30 = btAlignedAllocInternal(8 * v29, 16);
            LODWORD(v27) = *(this + 23);
          }

          else
          {
            v30 = 0;
          }

          if (v27 >= 1)
          {
            v31 = 0;
            do
            {
              *(v30 + v31) = *(*(this + 13) + v31);
              v31 += 8;
            }

            while (8 * v27 != v31);
          }

          v32 = *(this + 13);
          if (v32 && *(this + 112) == 1)
          {
            btAlignedFreeInternal(v32);
            LODWORD(v27) = *(this + 23);
          }

          *(this + 112) = 1;
          *(this + 13) = v30;
          v28 = v27;
          *(this + 24) = v29;
          goto LABEL_62;
        }

        v28 = v27;
      }

      v29 = v27;
LABEL_62:
      *(*(this + 13) + 8 * v28++) = a4[v25];
      *(this + 23) = v28;
      ++v25;
      v27 = v29;
    }

    while (v25 != v26);
  }

  if (v14 > 0)
  {
    v33 = 0;
    v35 = *(this + 31);
    v34 = *(this + 32);
    while (1)
    {
      if (v35 == v34)
      {
        if (v34)
        {
          v36 = (2 * v34);
        }

        else
        {
          v36 = 1;
        }

        if (v34 < v36)
        {
          if (v36)
          {
            v37 = btAlignedAllocInternal(8 * v36, 16);
            LODWORD(v34) = *(this + 31);
          }

          else
          {
            v37 = 0;
          }

          if (v34 >= 1)
          {
            v38 = 0;
            do
            {
              *(v37 + v38) = *(*(this + 17) + v38);
              v38 += 8;
            }

            while (8 * v34 != v38);
          }

          v39 = *(this + 17);
          if (v39 && *(this + 144) == 1)
          {
            btAlignedFreeInternal(v39);
            LODWORD(v34) = *(this + 31);
          }

          *(this + 144) = 1;
          *(this + 17) = v37;
          v35 = v34;
          *(this + 32) = v36;
          goto LABEL_82;
        }

        v35 = v34;
      }

      v36 = v34;
LABEL_82:
      *(*(this + 17) + 8 * v35++) = *(v12 + 8 * v33);
      *(this + 31) = v35;
      ++v33;
      v34 = v36;
      if (v33 == v14)
      {
        goto LABEL_85;
      }
    }
  }

  v35 = *(this + 31);
LABEL_85:
  if (*(this + 23) + v35 > *(*(this + 1) + 72))
  {

    InplaceSolverIslandCallback::processConstraints(this);
  }
}

uint64_t btClosestNotMeConvexResultCallback::needsCollision(uint64_t a1, void *a2)
{
  if (*a2 != *(a1 + 120) && ((v2 = a2[1], (*(a1 + 24) & v2) != 0) && (a2[2] & *(a1 + 16)) != 0 || (*(a1 + 32) & v2) != 0))
  {
    return (*(**(a1 + 144) + 56))();
  }

  else
  {
    return 0;
  }
}

float btClosestNotMeConvexResultCallback::addSingleResult(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *a2;
  result = 1.0;
  if (*a2 != *(a1 + 120) && (v3[14].i8[8] & 4) == 0)
  {
    v5 = vsubq_f32(*(a1 + 64), *(a1 + 48));
    v5.i32[3] = 0;
    v6 = vmulq_f32(*(a2 + 16), v5);
    if (vadd_f32(vpadd_f32(*v6.i8, *v6.i8), *&vextq_s8(v6, v6, 8uLL)).f32[0] < -*(a1 + 128))
    {
      *(a1 + 8) = *(a2 + 48);
      *(a1 + 112) = v3;
      v7 = *(a2 + 16);
      if (!a3)
      {
        v8 = vmulq_f32(v3[1], v7);
        v9 = vmulq_f32(v7, v3[2]);
        v10 = vmulq_f32(v7, v3[3]);
        v10.i32[3] = 0;
        *v7.f32 = vadd_f32(vpadd_f32(*v8.i8, *v9.i8), vzip1_s32(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v9, v9, 8uLL)));
        *&v7.u32[2] = vpadd_f32(vpadd_f32(*v10.i8, *&vextq_s8(v10, v10, 8uLL)), 0);
      }

      *(a1 + 80) = v7;
      *(a1 + 96) = *(a2 + 32);
      return *(a2 + 48);
    }
  }

  return result;
}

uint64_t btAlignedObjectArray<btTypedConstraint *>::quickSortInternal<btSortConstraintOnIslandPredicate>(uint64_t a1, uint64_t a2, int a3, int a4)
{
  do
  {
    v8 = a3;
    v9 = *(*(a1 + 16) + 8 * ((a3 + a4) / 2));
    v10 = a4;
    do
    {
      v11 = *(a1 + 16);
      v12 = *(*(v9 + 40) + 236);
      v13 = a3;
      do
      {
        v14 = *(*(v9 + 40) + 236);
        if (v12 < 0)
        {
          v14 = *(*(v9 + 48) + 236);
        }

        v15 = *(v11 + 8 * v13);
        v16 = *(*(v15 + 40) + 236);
        if (v16 < 0)
        {
          v16 = *(*(v15 + 48) + 236);
        }

        ++v13;
      }

      while (v16 < v14);
      v17 = v11 + 8 * v13;
      a3 = v13 - 1;
      v18 = v10 + 1;
      v19 = (v11 + 8 * v10);
      do
      {
        v20 = *v19;
        v21 = *(*(*v19 + 40) + 236);
        if (v21 < 0)
        {
          v21 = *(*(v20 + 48) + 236);
        }

        result = *(*(v9 + 40) + 236);
        if (v12 < 0)
        {
          result = *(*(v9 + 48) + 236);
        }

        --v18;
        --v10;
        --v19;
      }

      while (result < v21);
      if (v13 - 1 <= v18)
      {
        *(v17 - 8) = v20;
        *(*(a1 + 16) + 8 * v18) = v15;
        a3 = v13;
      }

      else
      {
        ++v10;
      }
    }

    while (a3 <= v10);
    if (v10 > v8)
    {
      result = btAlignedObjectArray<btTypedConstraint *>::quickSortInternal<btSortConstraintOnIslandPredicate>(a1, a2);
    }
  }

  while (a3 < a4);
  return result;
}

__n128 btRigidBody::setupRigidBody(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 508);
  *(a1 + 264) = 2;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 624) = xmmword_21C280340;
  __asm { FMOV            V1.2S, #1.0 }

  *(a1 + 400) = _D1;
  *(a1 + 408) = 1065353216;
  *(a1 + 444) = 0;
  *(a1 + 412) = 0u;
  *(a1 + 428) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = vbic_s8(vbsl_s8(vcgt_f32(*(a2 + 112), _D1), _D1, *(a2 + 112)), vcltz_f32(*(a2 + 112)));
  *(a1 + 524) = *(a2 + 132);
  v10 = *(a2 + 8);
  *(a1 + 536) = v10;
  *(a1 + 688) = 0;
  *(a1 + 504) = *(a2 + 140);
  *v4 = *(a2 + 144);
  if (v10)
  {
    (*(*v10 + 16))(v10, a1 + 16);
    v11 = *(a1 + 16);
    v12 = *(a1 + 32);
    v13 = *(a1 + 48);
    v14 = *(a1 + 64);
  }

  else
  {
    v11 = *(a2 + 16);
    *(a1 + 16) = v11;
    v12 = *(a2 + 32);
    *(a1 + 32) = v12;
    v13 = *(a2 + 48);
    *(a1 + 48) = v13;
    v14 = *(a2 + 64);
    *(a1 + 64) = v14;
  }

  *(a1 + 80) = v11;
  *(a1 + 96) = v12;
  *(a1 + 112) = v13;
  *(a1 + 128) = v14;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  v15 = *(a2 + 120);
  *(a1 + 260) = *(a2 + 124);
  v16 = *(a2 + 128);
  *(a1 + 252) = v15;
  *(a1 + 256) = v16;
  (*(*a1 + 24))(a1, *(a2 + 80));
  v17 = uniqueId++;
  *(a1 + 580) = v17;
  btRigidBody::setMassProps(a1, *a2, (a2 + 96));
  btRigidBody::updateInertiaTensor(a1);
  *(a1 + 576) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  result = vmulq_n_f32(*(a1 + 400), *(a1 + 384));
  result.n128_u32[3] = 0;
  *(a1 + 532) = 0;
  *(a1 + 640) = result;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  return result;
}

btCollisionObject *btRigidBody::btRigidBody(btCollisionObject *a1, uint64_t a2)
{
  btCollisionObject::btCollisionObject(a1);
  *v4 = &unk_282DCB2A0;
  *(v4 + 568) = 1;
  *(v4 + 560) = 0;
  *(v4 + 548) = 0;
  btRigidBody::setupRigidBody(v4, a2);
  return a1;
}

btCollisionObject *btRigidBody::btRigidBody(btCollisionObject *a1, uint64_t a2, uint64_t a3, __int128 *a4, float a5)
{
  btCollisionObject::btCollisionObject(a1);
  *v10 = &unk_282DCB2A0;
  *(v10 + 568) = 1;
  *(v10 + 560) = 0;
  *(v10 + 548) = 0;
  v12 = a5;
  v13 = a2;
  v19 = a3;
  v20 = *a4;
  v21 = xmmword_21C2A2370;
  v22 = 0x3F4CCCCD00000000;
  v23 = 1065353216;
  v24 = 0;
  v25 = xmmword_21C281160;
  v14 = xmmword_21C27F910;
  v15 = xmmword_21C27F8C0;
  v16 = xmmword_21C27F600;
  v17 = 0;
  v18 = 0;
  btRigidBody::setupRigidBody(v10, &v12);
  return a1;
}

int8x8_t btRigidBody::setDamping(btRigidBody *this, float32x2_t a2, float32_t a3)
{
  a2.f32[1] = a3;
  __asm { FMOV            V2.2S, #1.0 }

  result = vbic_s8(vbsl_s8(vcgt_f32(a2, _D2), _D2, a2), vcltz_f32(a2));
  *(this + 62) = result;
  return result;
}

__n128 btRigidBody::setMassProps(btRigidBody *this, float a2, const btVector3 *a3)
{
  v3 = *(this + 58);
  if (a2 == 0.0)
  {
    *(this + 58) = v3 | 1;
    v4 = 0.0;
  }

  else
  {
    *(this + 58) = v3 & 0xFFFFFFFE;
    v4 = 1.0 / a2;
  }

  *(this + 96) = v4;
  v5 = vmulq_n_f32(*(this + 27), a2);
  v5.i32[3] = 0;
  *(this + 26) = v5;
  v5.i32[0] = LODWORD(a3->var0.var0[2]);
  v6 = 1.0 / v5.f32[0];
  _ZF = v5.f32[0] == 0.0;
  v8 = 0.0;
  if (!_ZF)
  {
    v8 = v6;
  }

  __asm { FMOV            V4.2S, #1.0 }

  *(this + 56) = vbic_s8(vdiv_f32(_D4, *a3->var0.var0), vceqz_f32(*a3->var0.var0));
  *(this + 114) = v8;
  *(this + 115) = 0;
  result = vmulq_n_f32(*(this + 25), v4);
  result.n128_u32[3] = 0;
  *(this + 40) = result;
  return result;
}

float32x4_t btRigidBody::updateInertiaTensor(btRigidBody *this)
{
  v1 = *(this + 28);
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 3);
  v5 = vtrn1q_s32(v2, v3);
  v6 = vzip2q_s64(v5, v4);
  v6.i32[3] = 0;
  v7 = vmulq_f32(v1, v4);
  *v8.f32 = vzip2_s32(*v2.f32, *v3.f32);
  v8.i64[1] = vdup_lane_s32(*v4.f32, 1).u32[0];
  v5.i64[1] = v4.u32[0];
  v9 = vmulq_f32(v1, v3);
  result = vmulq_f32(v2, v1);
  *(this + 19) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, result.f32[0]), v8, *result.f32, 1), v6, result, 2);
  *(this + 20) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, v9.f32[0]), v8, *v9.f32, 1), v6, v9, 2);
  *(this + 21) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, v7.f32[0]), v8, *v7.f32, 1), v6, v7, 2);
  return result;
}

__n128 btRigidBody::saveKinematicState(btRigidBody *this, __n128 result, uint64_t a3, uint64_t a4, uint64_t a5, float *a6)
{
  if (result.n128_f32[0] != 0.0)
  {
    *v18.var0.var0[1].var0.var0 = v9;
    *&v18.var0.var0[1].var0.var0[2] = v8;
    *v18.var1.var0.var0 = v6;
    *&v18.var1.var0.var0[2] = v7;
    v10 = result.n128_f32[0];
    v12 = *(this + 67);
    if (v12)
    {
      (*(*v12 + 16))(v12, this + 16);
    }

    v13 = vmulq_n_f32(vsubq_f32(*(this + 4), *(this + 8)), 1.0 / v10);
    v13.i32[3] = 0;
    *(this + 22) = v13;
    v17 = 0.0;
    btTransformUtil::calculateDiffAxisAngle(this + 5, (this + 16), &v18, &v17, a6);
    v14 = vmulq_n_f32(vmulq_n_f32(v18.var0.var0[0], v17), 1.0 / v10);
    v14.i32[3] = 0;
    *(this + 23) = v14;
    *(this + 9) = *(this + 22);
    *(this + 10) = v14;
    v15 = *(this + 2);
    *(this + 5) = *(this + 1);
    *(this + 6) = v15;
    result = *(this + 3);
    v16 = *(this + 4);
    *(this + 7) = result;
    *(this + 8) = v16;
  }

  return result;
}

__n128 btRigidBody::setGravity(btRigidBody *this, float32x4_t *a2)
{
  v2 = *(this + 96);
  if (v2 != 0.0)
  {
    v3 = vmulq_n_f32(*a2, 1.0 / v2);
    v3.i32[3] = 0;
    *(this + 26) = v3;
  }

  result = *a2;
  *(this + 27) = *a2;
  return result;
}

void btRigidBody::applyDamping(btRigidBody *this, float a2)
{
  v4 = *(this + 124);
  v17 = vmulq_n_f32(*(this + 22), powf(1.0 - v4, a2));
  *(this + 22) = v17;
  v5 = *(this + 125);
  v6 = vmulq_n_f32(*(this + 23), powf(1.0 - v5, a2));
  *(this + 23) = v6;
  if (*(this + 504) == 1)
  {
    v7 = vmulq_f32(v6, v6);
    if (vadd_f32(*&vextq_s8(v7, v7, 8uLL), vpadd_f32(*v7.i8, *v7.i8)).f32[0] >= *(this + 129))
    {
      v8 = v17;
    }

    else
    {
      v8 = v17;
      v9 = vmulq_f32(v8, v8);
      if (vadd_f32(*&vextq_s8(v9, v9, 8uLL), vpadd_f32(*v9.i8, *v9.i8)).f32[0] < *(this + 128))
      {
        v10 = *(this + 127);
        v6 = vmulq_n_f32(v6, v10);
        v8 = vmulq_n_f32(v17, v10);
        *(this + 22) = v8;
        *(this + 23) = v6;
      }
    }

    v11 = vmulq_f32(v8, v8);
    v12 = sqrtf(vadd_f32(vpadd_f32(*v11.i8, *v11.i8), *&vextq_s8(v11, v11, 8uLL)).f32[0]);
    if (v12 < v4)
    {
      if (v12 <= 0.005)
      {
        *(this + 44) = 0;
        *(this + 45) = 0;
      }

      else
      {
        v13 = vmulq_f32(vmulq_n_f32(v8, 1.0 / v12), vdupq_n_s32(0x3BA3D70Au));
        v13.i32[3] = 0;
        *(this + 22) = vsubq_f32(v8, v13);
      }
    }

    v14 = vmulq_f32(v6, v6);
    v15 = sqrtf(vadd_f32(vpadd_f32(*v14.i8, *v14.i8), *&vextq_s8(v14, v14, 8uLL)).f32[0]);
    if (v15 < v5)
    {
      if (v15 <= 0.005)
      {
        *(this + 46) = 0;
        *(this + 47) = 0;
      }

      else
      {
        v16 = vmulq_f32(vmulq_n_f32(v6, 1.0 / v15), vdupq_n_s32(0x3BA3D70Au));
        v16.i32[3] = 0;
        *(this + 23) = vsubq_f32(v6, v16);
      }
    }
  }
}

float32x4_t btRigidBody::applyGravity(btRigidBody *this)
{
  if ((*(this + 232) & 3) == 0)
  {
    result = vaddq_f32(*(this + 29), vmulq_f32(*(this + 26), *(this + 25)));
    *(this + 29) = result;
  }

  return result;
}

double btRigidBody::setCenterOfMassTransform(btRigidBody *this, const btTransform *a2)
{
  if ((*(this + 232) & 2) != 0)
  {
    v3 = *(this + 2);
    *(this + 5) = *(this + 1);
    *(this + 6) = v3;
    *(this + 7) = *(this + 3);
    p_var1 = (this + 64);
  }

  else
  {
    *(this + 5) = a2->var0.var0[0];
    *(this + 6) = a2->var0.var0[1];
    *(this + 7) = a2->var0.var0[2];
    p_var1 = &a2->var1;
  }

  v4 = *(this + 22);
  v5 = *(this + 23);
  *(this + 8) = *p_var1;
  *(this + 9) = v4;
  *(this + 10) = v5;
  *(this + 1) = a2->var0.var0[0];
  *(this + 2) = a2->var0.var0[1];
  *(this + 3) = a2->var0.var0[2];
  *(this + 4) = a2->var1;
  *&result = btRigidBody::updateInertiaTensor(this).u64[0];
  return result;
}

btRigidBody *btRigidBody::computeGyroscopicForce@<X0>(btRigidBody *this@<X0>, float a2@<S0>, float32x4_t *a3@<X8>, float32x4_t _Q2@<Q2>)
{
  __asm { FMOV            V2.2S, #1.0 }

  *_Q2.f32 = vdiv_f32(*_Q2.f32, *(this + 448));
  _Q2.f32[2] = 1.0 / *(this + 114);
  v8 = *(this + 1);
  v9 = *(this + 2);
  v10 = *(this + 3);
  v11 = vmulq_f32(_Q2, v9);
  v12 = vtrn1q_s32(v8, v9);
  *v9.f32 = vzip2_s32(*v8.f32, *v9.f32);
  v13 = vmulq_f32(_Q2, v10);
  v14 = vzip2q_s64(v12, v10);
  v9.i64[1] = vdup_lane_s32(*v10.f32, 1).u32[0];
  v14.i32[3] = 0;
  v12.i64[1] = v10.u32[0];
  v15 = vmulq_f32(v8, _Q2);
  v16 = vmulq_n_f32(v12, v11.f32[0]);
  v17 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v15.f32[0]), v9, *v15.f32, 1), v14, v15, 2);
  v18 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v13.f32[0]), v9, *v13.f32, 1), v14, v13, 2);
  v19 = *(this + 23);
  v20 = vmulq_f32(v17, v19);
  v21 = vmulq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(v16, v9, *v11.f32, 1), v14, v11, 2), v19);
  v22 = vmulq_f32(v18, v19);
  v22.i32[3] = 0;
  *v20.f32 = vadd_f32(vpadd_f32(*v20.f32, *v21.i8), vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v21, v21, 8uLL)));
  *v21.i8 = vpadd_f32(vpadd_f32(*v22.f32, *&vextq_s8(v22, v22, 8uLL)), 0);
  *v22.f32 = vext_s8(*v20.f32, *v21.i8, 4uLL);
  v22.i64[1] = v20.i64[0];
  v20.i64[1] = v21.i64[0];
  v23 = vsubq_f32(vmulq_f32(v19, v22), vmulq_f32(vextq_s8(vextq_s8(v19, v19, 0xCuLL), v19, 8uLL), v20));
  v24 = vextq_s8(vextq_s8(v23, v23, 0xCuLL), v23, 8uLL);
  v24.i32[3] = 0;
  v25 = vmulq_f32(v24, v24);
  v26 = vadd_f32(vpadd_f32(*v25.i8, *v25.i8), *&vextq_s8(v25, v25, 8uLL)).f32[0];
  if (v26 > (a2 * a2))
  {
    v24 = vmulq_n_f32(v24, (1.0 / sqrtf(v26)) * a2);
  }

  *a3 = v24;
  return this;
}

uint64_t btRigidBody::checkCollideWithOverride(btRigidBody *this, const btCollisionObject *a2)
{
  result = 1;
  if ((*(a2 + 264) & 2) != 0)
  {
    if (a2)
    {
      v4 = *(this + 137);
      if (v4 >= 1)
      {
        for (i = *(this + 70); ; ++i)
        {
          v6 = *i;
          if (*(*i + 28) == 1 && (*(v6 + 40) == a2 || *(v6 + 48) == a2))
          {
            break;
          }

          if (!--v4)
          {
            return 1;
          }
        }

        return 0;
      }
    }
  }

  return result;
}

void btRigidBody::addConstraintRef(btRigidBody *this, btTypedConstraint *a2)
{
  v4 = *(this + 137);
  if (v4 < 1)
  {
    goto LABEL_7;
  }

  v5 = *(this + 70);
  v6 = *(this + 137);
  while (*v5 != a2)
  {
    ++v5;
    if (!--v6)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
LABEL_7:
    if (v4 == *(this + 138))
    {
      v7 = v4 ? 2 * v4 : 1;
      if (v4 < v7)
      {
        if (v7)
        {
          v8 = btAlignedAllocInternal(8 * v7, 16);
          v4 = *(this + 137);
        }

        else
        {
          v8 = 0;
        }

        if (v4 >= 1)
        {
          v9 = 0;
          do
          {
            *(v8 + v9) = *(*(this + 70) + v9);
            v9 += 8;
          }

          while (8 * v4 != v9);
        }

        v10 = *(this + 70);
        if (v10 && *(this + 568) == 1)
        {
          btAlignedFreeInternal(v10);
          v4 = *(this + 137);
        }

        *(this + 568) = 1;
        *(this + 70) = v8;
        *(this + 138) = v7;
      }
    }

    *(*(this + 70) + 8 * v4) = a2;
    *(this + 137) = v4 + 1;
  }

  *(this + 73) = 1;
}

uint64_t btRigidBody::removeConstraintRef(btRigidBody *this, btTypedConstraint *a2)
{
  v4 = a2;
  result = btAlignedObjectArray<btCollisionObject *>::remove(this + 544, &v4);
  *(this + 73) = *(this + 137) > 0;
  return result;
}

const char *btRigidBody::serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + 468);
  v6 = a1 + 508;
  btCollisionObject::serialize(a1, a2, a3);
  v7 = 0;
  v8 = a1 + 304;
  v9 = a2 + 272;
  do
  {
    for (i = 0; i != 16; i += 4)
    {
      *(v9 + i) = *(v8 + i);
    }

    ++v7;
    v8 += 16;
    v9 += 16;
  }

  while (v7 != 3);
  for (j = 0; j != 16; j += 4)
  {
    *(a2 + 320 + j) = *(a1 + 352 + j);
  }

  for (k = 0; k != 16; k += 4)
  {
    *(a2 + 336 + k) = *(a1 + 368 + k);
  }

  v13 = 0;
  *(a2 + 464) = *(a1 + 384);
  do
  {
    *(a2 + 352 + v13) = *(a1 + 624 + v13);
    v13 += 4;
  }

  while (v13 != 16);
  for (m = 0; m != 16; m += 4)
  {
    *(a2 + 368 + m) = *(a1 + 400 + m);
  }

  for (n = 0; n != 16; n += 4)
  {
    *(a2 + 384 + n) = *(a1 + 416 + n);
  }

  for (ii = 0; ii != 16; ii += 4)
  {
    *(a2 + 400 + ii) = *(a1 + 432 + ii);
  }

  for (jj = 0; jj != 16; jj += 4)
  {
    *(a2 + 416 + jj) = *(a1 + 448 + jj);
  }

  for (kk = 0; kk != 16; kk += 4)
  {
    *(a2 + 432 + kk) = *(a1 + 464 + kk);
  }

  for (mm = 0; mm != 16; mm += 4)
  {
    *(a2 + 448 + mm) = *(a1 + 480 + mm);
  }

  *&v20 = *(a1 + 496);
  *(a2 + 500) = *(a1 + 504);
  *(&v20 + 1) = *v6;
  *v5 = v20;
  v5[1] = *(v6 + 8);
  return "btRigidBodyFloatData";
}

uint64_t btRigidBody::serializeSingleObject(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = (*(*a2 + 32))(a2, v4, 1);
  v6 = (*(*a1 + 40))(a1, *(v5 + 8), a2);
  v7 = *(*a2 + 40);

  return v7(a2, v5, v6, 1497645650, a1);
}

void *btActionInterface::getFixedBody(btActionInterface *this)
{
  if ((atomic_load_explicit(_MergedGlobals_6, memory_order_acquire) & 1) == 0)
  {
    btActionInterface::getFixedBody();
  }

  v2 = 0uLL;
  btRigidBody::setMassProps(&unk_27CDDB5A0, 0.0, &v2);
  return &unk_27CDDB5A0;
}

double btRaycastVehicle::btRaycastVehicle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_282DCB2E8;
  *(a1 + 32) = 1;
  *(a1 + 24) = 0;
  *(a1 + 12) = 0;
  *(a1 + 64) = 1;
  *(a1 + 56) = 0;
  *(a1 + 44) = 0;
  *(a1 + 96) = 1;
  *(a1 + 88) = 0;
  *(a1 + 76) = 0;
  *(a1 + 128) = 1;
  *(a1 + 120) = 0;
  *(a1 + 108) = 0;
  *(a1 + 152) = a4;
  *(a1 + 160) = 0;
  *(a1 + 224) = 1;
  *(a1 + 216) = 0;
  *(a1 + 204) = 0;
  *(a1 + 176) = a3;
  *&result = 0x200000000;
  *(a1 + 184) = 0x200000000;
  *(a1 + 192) = 1;
  *(a1 + 168) = 0;
  return result;
}

void btRaycastVehicle::~btRaycastVehicle(btRaycastVehicle *this)
{
  *this = &unk_282DCB2E8;
  v2 = *(this + 27);
  if (v2 && *(this + 224) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 224) = 1;
  *(this + 27) = 0;
  *(this + 51) = 0;
  *(this + 52) = 0;
  v3 = *(this + 15);
  if (v3 && *(this + 128) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 128) = 1;
  *(this + 15) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  v4 = *(this + 11);
  if (v4 && *(this + 96) == 1)
  {
    btAlignedFreeInternal(v4);
  }

  *(this + 96) = 1;
  *(this + 11) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  v5 = *(this + 7);
  if (v5 && *(this + 64) == 1)
  {
    btAlignedFreeInternal(v5);
  }

  *(this + 64) = 1;
  *(this + 7) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  v6 = *(this + 3);
  if (v6 && *(this + 32) == 1)
  {
    btAlignedFreeInternal(v6);
  }

  *(this + 32) = 1;
  *(this + 3) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
}

{
  btRaycastVehicle::~btRaycastVehicle(this);

  JUMPOUT(0x21CF07610);
}

uint64_t btRaycastVehicle::addWheel(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, char a6, float a7, float a8)
{
  v12 = *a2;
  v13 = *a3;
  v14 = *a4;
  v15 = *a5;
  v16 = *(a5 + 2);
  v17 = *(a5 + 3);
  v18 = *(a5 + 4);
  v19 = *(a5 + 5);
  v20 = *(a1 + 204);
  if (v20 == *(a1 + 208))
  {
    v21 = v20 ? 2 * v20 : 1;
    if (v20 < v21)
    {
      v40 = *(a5 + 2);
      v41 = *a5;
      v38 = *a2;
      v39 = *(a5 + 4);
      v36 = *a4;
      v37 = *a3;
      if (v21)
      {
        v22 = btAlignedAllocInternal(320 * v21, 16);
        v14 = v36;
        v13 = v37;
        v12 = v38;
        v18 = v39;
        v16 = v40;
        *&v15 = v41;
        v23 = v22;
        v20 = *(a1 + 204);
      }

      else
      {
        v23 = 0;
      }

      if (v20 >= 1)
      {
        v24 = 0;
        v25 = 320 * v20;
        do
        {
          v26 = *(a1 + 216) + v24;
          v27 = v23 + v24;
          *v27 = *v26;
          *(v27 + 16) = *(v26 + 16);
          *(v27 + 32) = *(v26 + 32);
          *(v27 + 48) = *(v26 + 48);
          *(v27 + 64) = *(v26 + 64);
          *(v27 + 80) = *(v26 + 80);
          *(v27 + 96) = *(v26 + 96);
          *(v27 + 112) = *(v26 + 112);
          *(v27 + 128) = *(v26 + 128);
          *(v27 + 144) = *(v26 + 144);
          *(v27 + 160) = *(v26 + 160);
          *(v27 + 176) = *(v26 + 176);
          *(v27 + 192) = *(v26 + 192);
          *(v27 + 208) = *(v26 + 208);
          v28 = *(v26 + 240);
          *(v27 + 224) = *(v26 + 224);
          *(v27 + 240) = v28;
          v29 = *(v26 + 256);
          v30 = *(v26 + 272);
          v31 = *(v26 + 288);
          *(v27 + 304) = *(v26 + 304);
          *(v27 + 272) = v30;
          *(v27 + 288) = v31;
          *(v27 + 256) = v29;
          v24 += 320;
        }

        while (v25 != v24);
      }

      v32 = *(a1 + 216);
      if (v32 && *(a1 + 224) == 1)
      {
        btAlignedFreeInternal(v32);
        v14 = v36;
        v13 = v37;
        v12 = v38;
        v18 = v39;
        v16 = v40;
        *&v15 = v41;
      }

      *(a1 + 224) = 1;
      *(a1 + 216) = v23;
      *(a1 + 208) = v21;
      v20 = *(a1 + 204);
    }
  }

  v33 = *(a1 + 216) + 320 * v20;
  *(v33 + 176) = v12;
  *(v33 + 192) = v13;
  *(v33 + 208) = v14;
  *(v33 + 224) = a7;
  *(v33 + 228) = v17;
  *(v33 + 232) = a8;
  *(&v15 + 1) = __PAIR64__(v18, v16);
  *(v33 + 236) = v15;
  *(v33 + 252) = xmmword_21C2A4700;
  *(v33 + 268) = v19;
  *(v33 + 272) = 0;
  *(v33 + 280) = a6;
  LODWORD(v33) = *(a1 + 204);
  *(a1 + 204) = v33 + 1;
  v34 = *(a1 + 216) + 320 * v33;
  btRaycastVehicle::updateWheelTransformsWS(a1, v34, 0);
  btRaycastVehicle::updateWheelTransform(a1, *(a1 + 204) - 1, 0);
  return v34;
}

__n128 btRaycastVehicle::updateWheelTransformsWS(uint64_t a1, uint64_t a2, int a3)
{
  *(a2 + 96) = 0;
  v4 = *(a1 + 176);
  v5 = v4[1];
  v6 = v4[2];
  v24 = v5;
  v25 = v6;
  v7 = v4[3];
  v8 = v4[4];
  v26 = v7;
  v27 = v8;
  if (a3)
  {
    v9 = v4[33].i64[1];
    if (v9)
    {
      (*(*v9 + 16))(v9, &v24);
      v5 = v24;
      v6 = v25;
      v7 = v26;
      v8 = v27;
    }
  }

  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  v12 = vmulq_f32(v5, v10);
  v13 = vmulq_f32(v10, v6);
  v14 = vmulq_f32(v10, v7);
  v14.i32[3] = 0;
  *v12.f32 = vadd_f32(vpadd_f32(*v12.f32, *v13.i8), vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v13, v13, 8uLL)));
  *&v12.u32[2] = vpadd_f32(vpadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)), 0);
  v15 = vaddq_f32(v12, v8);
  v16 = vmulq_f32(v5, v11);
  v17 = vmulq_f32(v6, v11);
  v18 = vmulq_f32(v7, v11);
  v18.i32[3] = 0;
  *v16.i8 = vadd_f32(vpadd_f32(*v16.i8, *v17.i8), vzip1_s32(*&vextq_s8(v16, v16, 8uLL), *&vextq_s8(v17, v17, 8uLL)));
  v16.u64[1] = vpadd_f32(vpadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)), 0);
  *(a2 + 48) = v15;
  *(a2 + 64) = v16;
  v19 = *(a2 + 208);
  v20 = vmulq_f32(v5, v19);
  v21 = vmulq_f32(v6, v19);
  v22 = vmulq_f32(v7, v19);
  v22.i32[3] = 0;
  result.n128_u64[0] = vadd_f32(vpadd_f32(*v20.i8, *v21.i8), vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v21, v21, 8uLL)));
  *&result.n128_i8[8] = vpadd_f32(vpadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL)), 0);
  *(a2 + 80) = result;
  return result;
}

float32x4_t btRaycastVehicle::updateWheelTransform(btRaycastVehicle *this, int a2, int a3)
{
  v3 = *(this + 27) + 320 * a2;
  btRaycastVehicle::updateWheelTransformsWS(this, v3, a3);
  v4.i64[0] = 0x8000000080000000;
  v4.i64[1] = 0x8000000080000000;
  v29 = *(v3 + 80);
  v30 = veorq_s8(*(v3 + 64), v4);
  v5 = vmulq_f32(v30, v30);
  v6 = sqrtf(vadd_f32(vpadd_f32(*v5.i8, *v5.i8), *&vextq_s8(v5, v5, 8uLL)).f32[0]);
  v7 = __sincosf_stret(*(v3 + 252) * 0.5);
  *v34.var0.var0 = vmul_n_f32(*v30.f32, v7.__sinval / v6);
  *&v34.var0.var0[2] = __PAIR64__(LODWORD(v7.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v7.__sinval / v6, v30, 2)));
  btMatrix3x3::setRotation(&v33, &v34);
  v28 = *(v3 + 80);
  v8 = vmulq_f32(v28, v28);
  v9 = sqrtf(vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).f32[0]);
  v10 = __sincosf_stret(*(v3 + 256) * -0.5);
  *v32.var0.var0 = vmul_n_f32(*v28.f32, v10.__sinval / v9);
  *&v32.var0.var0[2] = __PAIR64__(LODWORD(v10.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v10.__sinval / v9, v28, 2)));
  btMatrix3x3::setRotation(&v31, &v32);
  v12 = v31.var0[0];
  v11 = v31.var0[1];
  v13 = v31.var0[2];
  v14.i32[0] = *(v3 + 88);
  v15 = v30;
  *v16.f32 = vext_s8(*v30.f32, *&vextq_s8(v15, v15, 8uLL), 4uLL);
  v16.i64[1] = v30.i64[0];
  v17 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v29, v29, 0xCuLL), v29, 8uLL), v30), vmulq_f32(v29, v16));
  v18 = vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL);
  v18.i32[3] = 0;
  v19 = vmulq_f32(v18, v18);
  *v15.i8 = vpadd_f32(*v19.i8, *v19.i8);
  v20 = vmulq_n_f32(v18, 1.0 / sqrtf(vadd_f32(*&vextq_s8(v19, v19, 8uLL), *v15.i8).f32[0]));
  v14.i32[1] = v20.i32[2];
  v14.i64[1] = v30.u32[2];
  v13.i32[3] = 0;
  v11.i32[3] = 0;
  v12.i32[3] = 0;
  v21 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v33.var0[2].var0.var0[0]), v11, *v33.var0[2].var0.var0, 1), v13, v33.var0[2], 2);
  v15.i32[0] = *(v3 + 80);
  v22.i32[0] = *(v3 + 84);
  v22.i32[1] = v20.i32[1];
  v22.i64[1] = v30.u32[1];
  v20.i64[0] = vzip1q_s32(v15, v20).u64[0];
  v20.i64[1] = v30.u32[0];
  v23 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, v21.f32[0]), v22, *v21.f32, 1), v14, v21, 2);
  v24 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v33.var0[1].var0.var0[0]), v11, *v33.var0[1].var0.var0, 1), v13, v33.var0[1], 2);
  v25 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v33.var0[0].var0.var0[0]), v11, *v33.var0[0].var0.var0, 1), v13, v33.var0[0], 2);
  *(v3 + 112) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, v25.f32[0]), v22, *v25.f32, 1), v14, v25, 2);
  *(v3 + 128) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, v24.f32[0]), v22, *v24.f32, 1), v14, v24, 2);
  v26 = vmulq_n_f32(*(v3 + 64), *(v3 + 32));
  v26.i32[3] = 0;
  result = vaddq_f32(*(v3 + 48), v26);
  *(v3 + 144) = v23;
  *(v3 + 160) = result;
  return result;
}

float btRaycastVehicle::rayCast(btRaycastVehicle *this, float32x4_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  btRaycastVehicle::updateWheelTransformsWS(this, a2, 0);
  v22 = btWheelInfo::getSuspensionRestLength(a2) + a2[14].f32[2];
  v4 = vmulq_n_f32(a2[4], v22);
  v4.i32[3] = 0;
  a2[1] = vaddq_f32(a2[3], v4);
  v24 = -1.0;
  v5 = (*(**(this + 19) + 16))(*(this + 19), a2 + 3, a2 + 1, v23);
  a2[6].i64[1] = 0;
  if (v5)
  {
    v6 = v22 * v24;
    *a2 = v23[1];
    a2[6].i8[0] = 1;
    btActionInterface::getFixedBody(v5);
    a2[6].i64[1] = &unk_27CDDB5A0;
    a2[2].f32[0] = v6 - a2[14].f32[2];
    v7 = btWheelInfo::getSuspensionRestLength(a2) - (a2[14].f32[1] * 0.01);
    v8 = btWheelInfo::getSuspensionRestLength(a2) + (a2[14].f32[1] * 0.01);
    v9 = a2[2].f32[0];
    if (v9 >= v7)
    {
      v10 = v9 <= v8;
    }

    else
    {
      v9 = v7;
      v10 = 0;
    }

    if (!v10)
    {
      if (v9 <= v8)
      {
        v8 = v9;
      }

      a2[2].f32[0] = v8;
    }

    v11 = v23[0];
    a2[1] = v23[0];
    v12 = vmulq_f32(*a2, a2[4]);
    v13 = vadd_f32(vpadd_f32(*v12.i8, *v12.i8), *&vextq_s8(v12, v12, 8uLL)).f32[0];
    if (v13 >= -0.1)
    {
      a2[18].i32[3] = 0;
      v19 = 10.0;
    }

    else
    {
      v14 = *(this + 22);
      v15 = vsubq_f32(v11, v14[4]);
      v15.i32[3] = 0;
      v16 = vsubq_f32(vmulq_f32(v14[23], vextq_s8(vextq_s8(v15, v15, 0xCuLL), v15, 8uLL)), vmulq_f32(vextq_s8(vextq_s8(v14[23], v14[23], 0xCuLL), v14[23], 8uLL), v15));
      v17 = vextq_s8(vextq_s8(v16, v16, 0xCuLL), v16, 8uLL);
      v17.i32[3] = 0;
      v18 = vmulq_f32(*a2, vaddq_f32(v14[22], v17));
      v19 = -1.0 / v13;
      a2[18].f32[3] = v19 * vadd_f32(vpadd_f32(*v18.i8, *v18.i8), *&vextq_s8(v18, v18, 8uLL)).f32[0];
    }
  }

  else
  {
    a2[2].f32[0] = btWheelInfo::getSuspensionRestLength(a2);
    a2[18].i32[3] = 0;
    v20.i64[0] = 0x8000000080000000;
    v20.i64[1] = 0x8000000080000000;
    *a2 = veorq_s8(a2[4], v20);
    v6 = -1.0;
    v19 = 1.0;
  }

  a2[18].f32[2] = v19;
  return v6;
}

uint64_t btRaycastVehicle::updateVehicle(float32x4_t **this, __n128 a2, float32x4_t a3)
{
  if (*(this + 51) < 1)
  {
    v6 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      btRaycastVehicle::updateWheelTransform(this, v4++, 0);
      v5 = *(this + 51);
    }

    while (v4 < v5);
    v6 = v5 > 0;
  }

  v7 = this[22];
  v8 = vmulq_f32(v7[22], v7[22]);
  v9 = sqrtf(vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).f32[0]) * 3.6;
  *(this + 42) = v9;
  v10 = &v7->i32[*(this + 48)];
  a3.i32[0] = v10[4];
  a3.i32[1] = v10[8];
  a3.i32[2] = v10[12];
  v11 = vmulq_f32(a3, v7[22]);
  if (vadd_f32(vpadd_f32(*v11.i8, *v11.i8), *&vextq_s8(v11, v11, 8uLL)).f32[0] < 0.0)
  {
    v9 = -v9;
    *(this + 42) = v9;
  }

  if (v6)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v9 = btRaycastVehicle::rayCast(this, &this[27][v12]);
      ++v13;
      v12 += 20;
    }

    while (v13 < *(this + 51));
  }

  btRaycastVehicle::updateSuspension(this, v9);
  v14 = a2;
  if (*(this + 51) >= 1)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = &this[27][v15];
      v18 = v17[19].f32[0];
      if (v18 > v17[16].f32[3])
      {
        v18 = v17[16].f32[3];
      }

      v19 = vmulq_n_f32(vmulq_n_f32(*v17, v18), v14.n128_f32[0]);
      v19.var0.var0[3] = 0.0;
      v40 = v19;
      v20 = this[22];
      v21 = vsubq_f32(v17[1], v20[4]);
      v21.var0.var0[3] = 0.0;
      v39 = v21;
      btRigidBody::applyImpulse(v20, &v40, &v39);
      v14 = a2;
      ++v16;
      v15 += 20;
    }

    while (v16 < *(this + 51));
  }

  result = ((*this)[2].i64[1])(this, v14);
  v23 = *(this + 51);
  if (v23 >= 1)
  {
    v24 = &this[27][14].f32[2];
    do
    {
      if (*(v24 - 136) == 1)
      {
        v25 = this[22];
        v26 = v25[22];
        v27 = vsubq_f32(*(v24 - 46), v25[4]);
        v27.i32[3] = 0;
        v28 = vsubq_f32(vmulq_f32(v25[23], vextq_s8(vextq_s8(v27, v27, 0xCuLL), v27, 8uLL)), vmulq_f32(vextq_s8(vextq_s8(v25[23], v25[23], 0xCuLL), v25[23], 8uLL), v27));
        v29 = vextq_s8(v28, v28, 0xCuLL);
        v30 = vextq_s8(v29, v28, 8uLL);
        v31 = &v25->i32[*(this + 48)];
        v29.i32[0] = v31[4];
        v29.i32[1] = v31[8];
        v29.i32[2] = v31[12];
        v32 = *(v24 - 58);
        v33 = vmulq_f32(v29, v32);
        v30.i32[3] = 0;
        v34 = vmulq_n_f32(v32, vadd_f32(vpadd_f32(*v33.i8, *v33.i8), *&vextq_s8(v33, v33, 8uLL)).f32[0]);
        v34.i32[3] = 0;
        v35 = vmulq_f32(vsubq_f32(v29, v34), vaddq_f32(v26, v30));
        v36 = (a2.n128_f32[0] * vadd_f32(vpadd_f32(*v35.i8, *v35.i8), *&vextq_s8(v35, v35, 8uLL)).f32[0]) / *v24;
        v37 = v24[6] + v36;
      }

      else
      {
        v36 = v24[7];
        v37 = v36 + v24[6];
      }

      v24[6] = v37;
      v24[7] = v36 * 0.99;
      v24 += 80;
      --v23;
    }

    while (v23);
  }

  return result;
}

void btRaycastVehicle::updateSuspension(btRaycastVehicle *this, float a2)
{
  v2 = *(this + 51);
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 1.0 / *(*(this + 22) + 384);
    do
    {
      v7 = *(this + 27) + v4;
      v8 = 0.0;
      if (*(v7 + 96) == 1)
      {
        v9 = *(v7 + 236) * (btWheelInfo::getSuspensionRestLength((*(this + 27) + v4)) - *(v7 + 32));
        v10 = *(v7 + 300);
        if (v10 >= 0.0)
        {
          v11 = 244;
        }

        else
        {
          v11 = 240;
        }

        v8 = v6 * ((v9 * *(v7 + 296)) - (*(v7 + v11) * v10));
        if (v8 < 0.0)
        {
          v8 = 0.0;
        }

        v2 = *(this + 51);
      }

      *(v7 + 304) = v8;
      ++v5;
      v4 += 320;
    }

    while (v5 < v2);
  }
}

float calcRollingFriction(float32x4_t **a1)
{
  v1 = a1[1];
  v2 = *(a1 + 1);
  v3 = vsubq_f32(v2, (*a1)[4]);
  v3.i32[3] = 0;
  v4 = vsubq_f32(v2, v1[4]);
  v4.i32[3] = 0;
  v5 = vsubq_f32(vmulq_f32((*a1)[23], vextq_s8(vextq_s8(v3, v3, 0xCuLL), v3, 8uLL)), vmulq_f32(vextq_s8(vextq_s8((*a1)[23], (*a1)[23], 0xCuLL), (*a1)[23], 8uLL), v3));
  v6 = vsubq_f32(vmulq_f32(v1[23], vextq_s8(vextq_s8(v4, v4, 0xCuLL), v4, 8uLL)), vmulq_f32(vextq_s8(vextq_s8(v1[23], v1[23], 0xCuLL), v1[23], 8uLL), v4));
  v7 = vsubq_f32(vaddq_f32((*a1)[22], vextq_s8(vextq_s8(v5, v5, 0xCuLL), v5, 8uLL)), vaddq_f32(v1[22], vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL)));
  v7.i32[3] = 0;
  v8 = vmulq_f32(*(a1 + 2), v7);
  v9 = *(a1 + 13);
  result = -(vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).f32[0] * *(a1 + 12));
  if (v9 < result)
  {
    result = *(a1 + 13);
  }

  v11 = -v9;
  if (result < v11)
  {
    return v11;
  }

  return result;
}

void btRaycastVehicle::updateFriction(btRaycastVehicle *this, float a2)
{
  v99 = *MEMORY[0x277D85DE8];
  v2 = *(this + 51);
  if (!v2)
  {
    return;
  }

  if (*(this + 3) < v2 && *(this + 4) < v2)
  {
    v5 = btAlignedAllocInternal(16 * v2, 16);
    v6 = v5;
    v7 = *(this + 3);
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = 16 * v7;
      do
      {
        *(v5 + v8) = *(*(this + 3) + v8);
        v8 += 16;
      }

      while (v9 != v8);
    }

    v10 = *(this + 3);
    if (v10 && *(this + 32) == 1)
    {
      btAlignedFreeInternal(v10);
    }

    *(this + 32) = 1;
    *(this + 3) = v6;
    *(this + 4) = v2;
  }

  *(this + 3) = v2;
  if (*(this + 11) < v2 && *(this + 12) < v2)
  {
    v11 = btAlignedAllocInternal(16 * v2, 16);
    v12 = v11;
    v13 = *(this + 11);
    if (v13 >= 1)
    {
      v14 = 0;
      v15 = 16 * v13;
      do
      {
        *(v11 + v14) = *(*(this + 7) + v14);
        v14 += 16;
      }

      while (v15 != v14);
    }

    v16 = *(this + 7);
    if (v16 && *(this + 64) == 1)
    {
      btAlignedFreeInternal(v16);
    }

    *(this + 64) = 1;
    *(this + 7) = v12;
    *(this + 12) = v2;
  }

  *(this + 11) = v2;
  v17 = *(this + 19);
  if (v17 < v2)
  {
    if (*(this + 20) >= v2)
    {
LABEL_30:
      bzero((*(this + 11) + 4 * v17), 4 * (v2 + ~v17) + 4);
      goto LABEL_31;
    }

    v18 = btAlignedAllocInternal(4 * v2, 16);
    v19 = *(this + 19);
    v20 = *(this + 11);
    if (v19 < 1)
    {
      if (!v20)
      {
LABEL_29:
        *(this + 96) = 1;
        *(this + 11) = v18;
        *(this + 20) = v2;
        goto LABEL_30;
      }
    }

    else
    {
      v21 = v18;
      v22 = *(this + 11);
      do
      {
        v23 = *v22++;
        *v21++ = v23;
        --v19;
      }

      while (v19);
    }

    if (*(this + 96) == 1)
    {
      btAlignedFreeInternal(v20);
    }

    goto LABEL_29;
  }

LABEL_31:
  *(this + 19) = v2;
  v24 = *(this + 27);
  if (v24 >= v2)
  {
    goto LABEL_42;
  }

  if (*(this + 28) < v2)
  {
    v25 = btAlignedAllocInternal(4 * v2, 16);
    v26 = *(this + 27);
    v27 = *(this + 15);
    if (v26 < 1)
    {
      if (!v27)
      {
LABEL_40:
        *(this + 128) = 1;
        *(this + 15) = v25;
        *(this + 28) = v2;
        goto LABEL_41;
      }
    }

    else
    {
      v28 = v25;
      v29 = *(this + 15);
      do
      {
        v30 = *v29++;
        *v28++ = v30;
        --v26;
      }

      while (v26);
    }

    if (*(this + 128) == 1)
    {
      btAlignedFreeInternal(v27);
    }

    goto LABEL_40;
  }

LABEL_41:
  bzero((*(this + 15) + 4 * v24), 4 * (v2 + ~v24) + 4);
LABEL_42:
  *(this + 27) = v2;
  v31 = *(this + 51);
  if (v31 >= 1)
  {
    v32 = *(this + 15);
    v33 = *(this + 11);
    v34 = *(this + 51);
    do
    {
      *v32++ = 0;
      *v33++ = 0;
      --v34;
    }

    while (v34);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    do
    {
      v39 = *(this + 27) + v35;
      v40 = *(v39 + 104);
      if (v40)
      {
        v96 = *(v39 + 112);
        v97 = *(v39 + 128);
        v98[0] = *(v39 + 144);
        HIDWORD(v41) = HIDWORD(v98[0]);
        v42 = *(this + 46);
        *&v41 = v96.var0.var0[v42];
        DWORD1(v41) = *(&v98[-1] + v42);
        DWORD2(v41) = *(v98 + v42);
        *(*(this + 7) + 16 * v38) = v41;
        v43 = *(this + 7);
        v44 = *(v43 + 16 * v38);
        v45 = vmulq_f32(v44, *v39);
        v46 = vmulq_n_f32(*v39, vadd_f32(vpadd_f32(*v45.i8, *v45.i8), *&vextq_s8(v45, v45, 8uLL)).f32[0]);
        v46.i32[3] = 0;
        *(v43 + 16 * v38) = vsubq_f32(v44, v46);
        v47 = *(this + 7);
        v48 = *(v47 + 16 * v38);
        v49 = vmulq_f32(v48, v48);
        v50 = vmulq_n_f32(v48, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v49.i8, *v49.i8), *&vextq_s8(v49, v49, 8uLL)).f32[0]));
        *(v47 + 16 * v38) = v50;
        *(*(this + 7) + 16 * v38) = v50;
        v51 = *(*(this + 7) + 16 * v38);
        v52 = vsubq_f32(vmulq_f32(*v39, vextq_s8(vextq_s8(v51, v51, 0xCuLL), v51, 8uLL)), vmulq_f32(v51, vextq_s8(vextq_s8(*v39, *v39, 0xCuLL), *v39, 8uLL)));
        v53 = vextq_s8(vextq_s8(v52, v52, 0xCuLL), v52, 8uLL);
        v53.i32[3] = 0;
        *(*(this + 3) + 16 * v38) = v53;
        v54 = *(this + 3);
        v55 = *(v54 + 16 * v38);
        v56 = vmulq_f32(v55, v55);
        *(v54 + 16 * v38) = vmulq_n_f32(v55, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v56.i8, *v56.i8), *&vextq_s8(v56, v56, 8uLL)).f32[0]));
        resolveSingleBilateral(*(this + 22), (v39 + 16), v40, (v39 + 16), 0.0, (*(this + 7) + v36), (*(this + 15) + v37), a2);
        *(*(this + 15) + 4 * v38) = *&sideFrictionStiffness2 * *(*(this + 15) + 4 * v38);
        v31 = *(this + 51);
      }

      ++v38;
      v37 += 4;
      v36 += 16;
      v35 += 320;
    }

    while (v38 < v31);
    if (v31 >= 1)
    {
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = *(this + 27);
      v61 = 248;
      v62 = v60;
      do
      {
        v63 = *(v62 + v61 - 144);
        if (v63)
        {
          v64 = *(v62 + v61 + 24);
          if (v64 == 0.0)
          {
            v67 = *(v62 + v61 + 28);
            if (v67 == 0.0)
            {
              v67 = 0.0;
            }

            btWheelContactPoint::btWheelContactPoint(&v96, *(this + 22), v63, (v62 + v61 - 232), (*(this + 3) + v57), v67);
            v65 = calcRollingFriction(&v96);
            v60 = *(this + 27);
            v66 = v60;
          }

          else
          {
            v65 = v64 * a2;
            v66 = v62;
          }

          v68 = *(this + 11);
          *(v68 + 4 * v58) = 0;
          *(v66 + v61 + 60) = 1065353216;
          v69 = (*(v62 + v61 + 56) * a2) * *(v62 + v61);
          *(v68 + 4 * v58) = v65;
          v70 = (*(*(this + 15) + 4 * v58) * *(*(this + 15) + 4 * v58)) + ((v65 * 0.5) * (v65 * 0.5));
          if (v70 > (v69 * v69))
          {
            *(v66 + v61 + 60) = (v69 / sqrtf(v70)) * *(v66 + v61 + 60);
            v59 = 1;
          }
        }

        else
        {
          *(*(this + 11) + 4 * v58) = 0;
          *(v60 + v61 + 60) = 1065353216;
          v66 = v60;
        }

        ++v58;
        v71 = *(this + 51);
        v57 += 16;
        v61 += 320;
        v62 = v66;
      }

      while (v58 < v71);
      if (v71 >= 1 && (v59 & 1) != 0)
      {
        v72 = 0;
        v73 = *(this + 15);
        v74 = 308;
        do
        {
          if (*(v73 + v72) != 0.0)
          {
            v75 = *(this + 27);
            v76 = *(v75 + v74);
            if (v76 < 1.0)
            {
              *(*(this + 11) + v72) = v76 * *(*(this + 11) + v72);
              *(v73 + v72) = *(v75 + v74) * *(v73 + v72);
            }
          }

          v72 += 4;
          v74 += 320;
        }

        while (4 * v71 != v72);
      }

      if (v71 >= 1)
      {
        v77 = 0;
        v78 = 264;
        do
        {
          v79 = *(this + 27);
          v80 = *(this + 22);
          v81 = vsubq_f32(*(v79 + v78 - 248), *(v80 + 64));
          v81.var0.var0[3] = 0.0;
          v96 = v81;
          v82 = *(*(this + 11) + 4 * v77);
          if (v82 != 0.0)
          {
            v83 = vmulq_n_f32(*(*(this + 3) + 16 * v77), v82);
            v83.var0.var0[3] = 0.0;
            v95 = v83;
            btRigidBody::applyImpulse(v80, &v95, &v96);
          }

          v84 = *(this + 15);
          if (*(v84 + 4 * v77) != 0.0)
          {
            v85 = *(*(this + 27) + v78 - 160);
            v86 = vsubq_f32(*(v79 + v78 - 248), *(v85 + 64));
            v86.var0.var0[3] = 0.0;
            v95 = v86;
            v87 = vmulq_n_f32(*(*(this + 7) + 16 * v77), *(v84 + 4 * v77));
            v87.var0.var0[3] = 0.0;
            v94 = v87;
            v88 = *(this + 22);
            v89 = (v88 + 4 * *(this + 47));
            v87.var0.var0[0] = v89[4];
            v87.var0.var0[1] = v89[8];
            v87.var0.var0[2] = v89[12];
            v90 = vmulq_f32(v87, v96);
            v91 = vmulq_n_f32(v87, (1.0 - *(v79 + v78)) * vadd_f32(vpadd_f32(*v90.i8, *v90.i8), *&vextq_s8(v90, v90, 8uLL)).f32[0]);
            v91.i32[3] = 0;
            v96 = vsubq_f32(v96, v91);
            btRigidBody::applyImpulse(v88, &v94, &v96);
            v92.i64[0] = 0x8000000080000000;
            v92.i64[1] = 0x8000000080000000;
            v93 = veorq_s8(v94, v92);
            btRigidBody::applyImpulse(v85, &v93, &v95);
          }

          ++v77;
          v78 += 320;
        }

        while (v77 < *(this + 51));
      }
    }
  }
}

uint64_t btRaycastVehicle::debugDraw(uint64_t this, btIDebugDraw *a2, double a3, float32x4_t a4)
{
  if (*(this + 204) >= 1)
  {
    v20 = v9;
    v21 = v8;
    v22 = v7;
    v23 = v6;
    v24 = v4;
    v25 = v5;
    v11 = this;
    v12 = 0;
    v13 = 0;
    do
    {
      v19 = xmmword_21C2A4050;
      v14 = (*(v11 + 216) + v12);
      if (v14[6].i8[0])
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      *&v19 = v15;
      *(&v19 + 4) = 0x3F80000000000000;
      HIDWORD(v19) = 0;
      v18 = v14[10];
      v16 = &v14->i32[*(v11 + 184)];
      a4.i32[0] = v16[28];
      a4.i32[1] = v16[32];
      a4.i32[2] = v16[36];
      v17 = vaddq_f32(v18, a4);
      (*(*a2 + 16))(a2, &v18, &v17, &v19);
      this = (*(*a2 + 16))(a2, &v18, *(v11 + 216) + v12 + 16, &v19);
      ++v13;
      v12 += 320;
    }

    while (v13 < *(v11 + 204));
  }

  return this;
}

_DWORD *btRaycastVehicle::setCoordinateSystem(_DWORD *this, int a2, int a3, int a4)
{
  this[46] = a2;
  this[47] = a3;
  this[48] = a4;
  return this;
}

void btWheelContactPoint::btWheelContactPoint(btWheelContactPoint *this, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, int8x16_t *a5, float a6)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 1) = *a4;
  *(this + 2) = *a5;
  *(this + 13) = a6;
  v6 = vsubq_f32(*a4, a2[4]);
  v6.i32[3] = 0;
  v7 = vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL);
  v8 = vextq_s8(vextq_s8(*a5, *a5, 0xCuLL), *a5, 8uLL);
  v9 = vsubq_f32(vmulq_f32(v8, v6), vmulq_f32(*a5, v7));
  v10 = vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL);
  v10.i32[3] = 0;
  v11 = a2[19];
  v12 = a2[20];
  v11.i32[3] = 0;
  v12.i32[3] = 0;
  v13 = a2[21];
  v13.i32[3] = 0;
  v14 = vaddq_f32(vmulq_laneq_f32(v13, v10, 2), vaddq_f32(vmulq_n_f32(v11, v10.f32[0]), vmulq_lane_f32(v12, *v10.f32, 1)));
  v15 = vsubq_f32(vmulq_f32(v7, v14), vmulq_f32(vextq_s8(vextq_s8(v14, v14, 0xCuLL), v14, 8uLL), v6));
  v16 = vextq_s8(vextq_s8(v15, v15, 0xCuLL), v15, 8uLL);
  v16.i32[3] = 0;
  v17 = vmulq_f32(*a5, v16);
  v18 = vsubq_f32(*a4, a3[4]);
  v18.i32[3] = 0;
  v19 = vextq_s8(vextq_s8(v18, v18, 0xCuLL), v18, 8uLL);
  v20 = vsubq_f32(vmulq_f32(v8, v18), vmulq_f32(*a5, v19));
  v21 = vextq_s8(vextq_s8(v20, v20, 0xCuLL), v20, 8uLL);
  v21.i32[3] = 0;
  v22 = a3[19];
  v23 = a3[20];
  v22.i32[3] = 0;
  v23.i32[3] = 0;
  v24 = a3[21];
  v24.i32[3] = 0;
  v25 = vaddq_f32(vmulq_laneq_f32(v24, v21, 2), vaddq_f32(vmulq_n_f32(v22, v21.f32[0]), vmulq_lane_f32(v23, *v21.f32, 1)));
  v26 = vsubq_f32(vmulq_f32(v19, v25), vmulq_f32(vextq_s8(vextq_s8(v25, v25, 0xCuLL), v25, 8uLL), v18));
  v27 = vextq_s8(vextq_s8(v26, v26, 0xCuLL), v26, 8uLL);
  v27.i32[3] = 0;
  v28 = vmulq_f32(*a5, v27);
  *(this + 12) = 1.0 / ((a2[24].f32[0] + vadd_f32(vpadd_f32(*v17.i8, *v17.i8), *&vextq_s8(v17, v17, 8uLL)).f32[0]) + (a3[24].f32[0] + vadd_f32(vpadd_f32(*v28.i8, *v28.i8), *&vextq_s8(v28, v28, 8uLL)).f32[0]));
}

float btCollisionWorld::ClosestRayResultCallback::addSingleResult(float32x4_t *a1, uint64_t a2, int a3)
{
  a1->i32[2] = *(a2 + 32);
  v3 = *a2;
  a1[1].i64[0] = *a2;
  v4 = *(a2 + 16);
  if (!a3)
  {
    v5 = vmulq_f32(v3[1], v4);
    v6 = vmulq_f32(v4, v3[2]);
    v7 = vmulq_f32(v4, v3[3]);
    v7.i32[3] = 0;
    *v4.f32 = vadd_f32(vpadd_f32(*v5.i8, *v6.i8), vzip1_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v6, v6, 8uLL)));
    *&v4.u32[2] = vpadd_f32(vpadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)), 0);
  }

  a1[6] = v4;
  a1[7] = vaddq_f32(a1[4], vmulq_n_f32(vsubq_f32(a1[5], a1[4]), *(a2 + 32)));
  return *(a2 + 32);
}

void btActionInterface::getFixedBody()
{
  if (__cxa_guard_acquire(_MergedGlobals_6))
  {
    v0[0] = 0;
    v0[1] = 0;
    btRigidBody::btRigidBody(&unk_27CDDB5A0, 0, 0, v0, 0.0);
    __cxa_atexit(btRigidBody::~btRigidBody, &unk_27CDDB5A0, &dword_21BEF7000);
    __cxa_guard_release(_MergedGlobals_6);
  }
}

uint64_t btAlignedAllocDefault(uint64_t a1, int a2)
{
  v3 = sAllocFunc(a1 + a2 - 1 + 8);
  v4 = 0;
  if (v3)
  {
    v4 = (v3 + a2 + 7) & -a2;
    *(v4 - 8) = v3;
  }

  return v4;
}

void btAlignedFreeDefault(void **a1)
{
  if (a1)
  {
    sFreeFunc(*(a1 - 1));
  }
}

void btAlignedFreeInternal(void **a1)
{
  if (a1)
  {
    sAlignedFreeFunc(a1);
  }
}

char *btHullTriangle::neib(btHullTriangle *this, int a2, int a3)
{
  v3 = 0;
  v4 = &btHullTriangle::neib(int,int)::er;
  while (1)
  {
    v5 = v3 + 1;
    v6 = v3 == 2 ? 0 : v3 + 1;
    v7 = *(this + v3);
    if (v7 == a2 && *(this + v6) == a3)
    {
      break;
    }

    if (v7 == a3 && *(this + v6) == a2)
    {
      break;
    }

    ++v3;
    if (v5 == 3)
    {
      return v4;
    }
  }

  v8 = v3 - 1;
  if (!v3)
  {
    v8 = 2;
  }

  return this + 4 * v8 + 12;
}

char *HullLibrary::b2bfix(HullLibrary *this, btHullTriangle *a2, btHullTriangle *a3)
{
  v5 = *(this + 2);
  v6 = -3;
  do
  {
    v7 = v6 + 4;
    v8 = v6 + 1;
    if (v6 == -1)
    {
      v7 = 0;
    }

    if (v6 == -3)
    {
      v9 = 2;
    }

    else
    {
      v9 = v6 + 2;
    }

    v10 = *(a2 + v7);
    v11 = *(a2 + v9);
    v12 = *btHullTriangle::neib(a3, v11, v10);
    v13 = btHullTriangle::neib(a2, v10, v11);
    *btHullTriangle::neib(*(v5 + 8 * *v13), v11, v10) = v12;
    v14 = *btHullTriangle::neib(a2, v10, v11);
    v15 = btHullTriangle::neib(a3, v11, v10);
    result = btHullTriangle::neib(*(v5 + 8 * *v15), v10, v11);
    *result = v14;
    v6 = v8;
  }

  while (v8);
  return result;
}

void HullLibrary::removeb2b(HullLibrary *this, btHullTriangle *a2, btHullTriangle *a3)
{
  HullLibrary::b2bfix(this, a2, a3);
  *(*(this + 2) + 8 * *(a2 + 6)) = 0;
  btAlignedFreeInternal(a2);
  *(*(this + 2) + 8 * *(a3 + 6)) = 0;

  btAlignedFreeInternal(a3);
}

uint64_t HullLibrary::allocateTriangle(HullLibrary *this, int a2, int a3, int a4)
{
  v8 = btAlignedAllocInternal(36, 16);
  *v8 = a2;
  *(v8 + 4) = a3;
  *(v8 + 8) = a4;
  *(v8 + 12) = -1;
  *(v8 + 28) = 0xFFFFFFFFLL;
  v9 = *(this + 1);
  v10 = *(this + 2);
  *(v8 + 20) = -1;
  *(v8 + 24) = v9;
  if (v9 == v10)
  {
    v11 = v9 ? 2 * v9 : 1;
    if (v9 < v11)
    {
      if (v11)
      {
        v12 = btAlignedAllocInternal(8 * v11, 16);
        v9 = *(this + 1);
      }

      else
      {
        v12 = 0;
      }

      if (v9 >= 1)
      {
        v13 = 0;
        do
        {
          *(v12 + v13) = *(*(this + 2) + v13);
          v13 += 8;
        }

        while (8 * v9 != v13);
      }

      v14 = *(this + 2);
      if (v14 && *(this + 24) == 1)
      {
        btAlignedFreeInternal(v14);
        v9 = *(this + 1);
      }

      *(this + 24) = 1;
      *(this + 2) = v12;
      *(this + 2) = v11;
    }
  }

  *(*(this + 2) + 8 * v9) = v8;
  *(this + 1) = v9 + 1;
  return v8;
}

void HullLibrary::extrude(HullLibrary *this, btHullTriangle *a2, int a3)
{
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = *(this + 1);
  Triangle = HullLibrary::allocateTriangle(this, a3, v7, v8);
  v11 = v9 + 2;
  *(Triangle + 3) = *(a2 + 3);
  *(Triangle + 4) = v9 + 1;
  *(Triangle + 5) = v9 + 2;
  *btHullTriangle::neib(*(*(this + 2) + 8 * *(a2 + 3)), v7, v8) = v9;
  v12 = HullLibrary::allocateTriangle(this, a3, v8, v6);
  v12[3] = *(a2 + 4);
  v12[4] = v9 + 2;
  v22 = v12;
  v12[5] = v9;
  *btHullTriangle::neib(*(*(this + 2) + 8 * *(a2 + 4)), v8, v6) = v9 + 1;
  v13 = HullLibrary::allocateTriangle(this, a3, v6, v7);
  *(v13 + 3) = *(a2 + 5);
  *(v13 + 4) = v9;
  *(v13 + 5) = v9 + 1;
  v14 = *(this + 2);
  *btHullTriangle::neib(*(v14 + 8 * *(a2 + 5)), v6, v7) = v11;
  v15 = *(v14 + 8 * *(Triangle + 3));
  if (*v15 == a3 || *(v15 + 1) == a3 || *(v15 + 2) == a3)
  {
    HullLibrary::removeb2b(this, Triangle, v15);
    v14 = *(this + 2);
  }

  v18 = *(v14 + 8 * v22[3]);
  if (*v18 == a3 || *(v18 + 1) == a3 || *(v18 + 2) == a3)
  {
    HullLibrary::removeb2b(this, v22, v18);
    v14 = *(this + 2);
  }

  v21 = *(v14 + 8 * *(v13 + 3));
  if (*v21 == a3 || *(v21 + 1) == a3 || *(v21 + 2) == a3)
  {
    HullLibrary::removeb2b(this, v13, v21);
    v14 = *(this + 2);
  }

  *(v14 + 8 * *(a2 + 6)) = 0;

  btAlignedFreeInternal(a2);
}

uint64_t HullLibrary::extrudable(HullLibrary *this, float a2)
{
  v2 = *(this + 1);
  if (v2 < 1)
  {
    return 0;
  }

  result = 0;
  v5 = *(this + 2);
  do
  {
    v6 = *v5;
    if (!result || v6 && *(result + 32) < *(v6 + 32))
    {
      result = *v5;
    }

    ++v5;
    --v2;
  }

  while (v2);
  if (result && *(result + 32) <= a2)
  {
    return 0;
  }

  return result;
}

unint64_t HullLibrary::FindSimplex(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v36 = xmmword_21C2A4720;
  v7 = maxdirsterid<btVector3>(a2, a3, &v36, a4);
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v35 = veorq_s8(v36, v8);
  v9 = maxdirsterid<btVector3>(a2, a3, &v35, a4);
  v10 = vsubq_f32(*(a2 + 16 * v7), *(a2 + 16 * v9));
  v10.i32[3] = 0;
  v36 = v10;
  if (v7 == v9 || (v11 = v9, v12 = vceqz_f32(*&vextq_s8(v10, v10, 4uLL)), (v12.i8[4] & 1) != 0) && (v12.i8[0] & 1) != 0 && v10.f32[0] == 0.0)
  {
    v13 = -1;
LABEL_6:
    v14 = 0xFFFFFFFFLL;
    return v13 | (v14 << 32);
  }

  v16 = vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL);
  v17 = vmlaq_f32(vmulq_f32(v10, xmmword_21C2A4740), xmmword_21C2A4730, v16);
  v18 = vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL);
  v18.i32[3] = 0;
  v19 = vmlaq_f32(vmulq_f32(v10, xmmword_21C2A4760), xmmword_21C2A4750, v16);
  v20 = vextq_s8(vextq_s8(v19, v19, 0xCuLL), v19, 8uLL);
  v20.i32[3] = 0;
  v21 = vmulq_f32(v18, v18);
  *v17.i8 = vpadd_f32(*v21.i8, *v21.i8);
  v22 = vextq_s8(v21, v21, 8uLL);
  *v22.f32 = vadd_f32(*v17.i8, *v22.f32);
  v22.f32[0] = sqrtf(v22.f32[0]);
  v23 = vmulq_f32(v20, v20);
  v24 = vpadd_f32(*v23.i8, *v23.i8);
  v25 = vextq_s8(v23, v23, 8uLL);
  *v25.f32 = vadd_f32(v24, *v25.f32);
  v25.f32[0] = sqrtf(v25.f32[0]);
  v37 = vmulq_n_f32(vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v22, v25), 0), v18, v20), 1.0 / fmaxf(v22.f32[0], v25.f32[0]));
  v38 = v20;
  v26 = maxdirsterid<btVector3>(a2, a3, &v37, a4);
  if (v26 == v7 || (v27 = v26, v26 == v11))
  {
    v28.i64[0] = 0x8000000080000000;
    v28.i64[1] = 0x8000000080000000;
    v35 = veorq_s8(v37, v28);
    v27 = maxdirsterid<btVector3>(a2, a3, &v35, a4);
  }

  v13 = -1;
  if (v27 == v7)
  {
    goto LABEL_6;
  }

  v14 = 0xFFFFFFFFLL;
  if (v27 == v11)
  {
    return v13 | (v14 << 32);
  }

  v29 = vsubq_f32(*(a2 + 16 * v27), *(a2 + 16 * v7));
  v29.i32[3] = 0;
  v30 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vextq_s8(v29, v29, 0xCuLL), v29, 8uLL), v36)), v29, vextq_s8(vextq_s8(v36, v36, 0xCuLL), v36, 8uLL));
  v31 = vextq_s8(vextq_s8(v30, v30, 0xCuLL), v30, 8uLL);
  v31.i32[3] = 0;
  v32 = vmulq_f32(v31, v31);
  v37 = v29;
  v38 = vmulq_n_f32(v31, 1.0 / sqrtf(vadd_f32(*&vextq_s8(v32, v32, 8uLL), vpadd_f32(*v32.i8, *v32.i8)).f32[0]));
  v33 = maxdirsterid<btVector3>(a2, a3, &v38, a4);
  if (v33 == v27 || v33 == v7 || v33 == v11)
  {
    v34.i64[0] = 0x8000000080000000;
    v34.i64[1] = 0x8000000080000000;
    v35 = veorq_s8(v38, v34);
    v33 = maxdirsterid<btVector3>(a2, a3, &v35, a4);
  }

  v13 = -1;
  if (v33 == v27 || v33 == v7)
  {
    goto LABEL_6;
  }

  v14 = 0xFFFFFFFFLL;
  if (v33 != v11)
  {
    v13 = v7;
    v14 = v11;
  }

  return v13 | (v14 << 32);
}

uint64_t maxdirsterid<btVector3>(uint64_t a1, int a2, int8x16_t *a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = xmmword_21C27F8C0;
  v9 = xmmword_21C2A3E50;
  v10 = a2;
  v11 = xmmword_21C2A3E40;
  v49 = vdupq_n_s32(0x3CCCCCCDu);
LABEL_2:
  if (a2 < 1)
  {
    v14 = -1;
  }

  else
  {
    v12 = 0;
    v13 = *a3;
    v14 = -1;
    do
    {
      if (*(v7 + 4 * v12))
      {
        if (v14 == -1 || (v15 = vmulq_f32(*(a1 + 16 * v12), v13), v16 = vmulq_f32(*(a1 + 16 * v14), v13), (vcgt_f32(vadd_f32(*&vextq_s8(v15, v15, 8uLL), vpadd_f32(*v15.i8, *v15.i8)), vadd_f32(*&vextq_s8(v16, v16, 8uLL), vpadd_f32(*v16.i8, *v16.i8))).u8[0] & 1) != 0))
        {
          v14 = v12;
        }
      }

      ++v12;
    }

    while (v10 != v12);
  }

  v17 = v14;
  if (*(v7 + 4 * v14) != 3)
  {
    v18 = vextq_s8(vextq_s8(*a3, *a3, 0xCuLL), *a3, 8uLL);
    v19 = vmlaq_f32(vmulq_f32(v18, v9), v8, *a3);
    v20 = vextq_s8(vextq_s8(v19, v19, 0xCuLL), v19, 8uLL);
    v20.i32[3] = 0;
    v21 = vnegq_f32(vmlaq_f32(vmulq_f32(v18, v8), v11, *a3));
    v22 = vextq_s8(vextq_s8(v21, v21, 0xCuLL), v21, 8uLL);
    v22.i32[3] = 0;
    v23 = vmulq_f32(v20, v20);
    v24 = vpadd_f32(*v23.i8, *v23.i8);
    v25 = vextq_s8(v23, v23, 8uLL);
    *v25.f32 = vadd_f32(*v25.f32, v24);
    v25.f32[0] = sqrtf(v25.f32[0]);
    v26 = vmulq_f32(v22, v22);
    v27 = vpadd_f32(*v26.i8, *v26.i8);
    v28 = vextq_s8(v26, v26, 8uLL);
    *v28.f32 = vadd_f32(*v28.f32, v27);
    v28.f32[0] = sqrtf(v28.f32[0]);
    v51 = vmulq_n_f32(vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v25, v28), 0), v20, v22), 1.0 / fmaxf(v25.f32[0], v28.f32[0]));
    v52 = *a3;
    v29 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vextq_s8(v51, v51, 0xCuLL), v51, 8uLL), *a3)), v18, v51);
    v30 = vextq_s8(vextq_s8(v29, v29, 0xCuLL), v29, 8uLL);
    v30.i32[3] = 0;
    v50 = v30;
    v31 = -1;
    v32 = 0.0;
    while (1)
    {
      v33 = v31;
      v34 = __sincosf_stret(v32 * 0.017453);
      if (a2 < 1)
      {
        v31 = -1;
      }

      else
      {
        v35 = 0;
        v36 = vmulq_f32(vmlaq_n_f32(vmulq_n_f32(v50, v34.__cosval), v51, v34.__sinval), v49);
        v36.i32[3] = 0;
        v37 = vaddq_f32(v52, v36);
        v31 = -1;
        do
        {
          if (*(v7 + 4 * v35))
          {
            if (v31 == -1 || (v38 = vmulq_f32(*(a1 + 16 * v35), v37), v39 = vmulq_f32(*(a1 + 16 * v31), v37), (vcgt_f32(vadd_f32(*&vextq_s8(v38, v38, 8uLL), vpadd_f32(*v38.i8, *v38.i8)), vadd_f32(*&vextq_s8(v39, v39, 8uLL), vpadd_f32(*v39.i8, *v39.i8))).u8[0] & 1) != 0))
            {
              v31 = v35;
            }
          }

          ++v35;
        }

        while (v10 != v35);
      }

      if (v33 == v17 && v31 == v17)
      {
        break;
      }

      if (v33 != -1 && v33 != v31)
      {
        for (i = v32 + -40.0; i <= v32; v33 = v45)
        {
          v41 = __sincosf_stret(i * 0.017453);
          if (a2 < 1)
          {
            if ((v33 & v17) == 0xFFFFFFFF)
            {
              goto LABEL_42;
            }

            v45 = -1;
          }

          else
          {
            v42 = 0;
            v43 = vmulq_f32(vmlaq_n_f32(vmulq_n_f32(v50, v41.__cosval), v51, v41.__sinval), v49);
            v43.i32[3] = 0;
            v44 = vaddq_f32(v52, v43);
            v45 = -1;
            do
            {
              if (*(v7 + 4 * v42))
              {
                if (v45 == -1 || (v46 = vmulq_f32(*(a1 + 16 * v42), v44), v47 = vmulq_f32(*(a1 + 16 * v45), v44), (vcgt_f32(vadd_f32(*&vextq_s8(v46, v46, 8uLL), vpadd_f32(*v46.i8, *v46.i8)), vadd_f32(*&vextq_s8(v47, v47, 8uLL), vpadd_f32(*v47.i8, *v47.i8))).u8[0] & 1) != 0))
                {
                  v45 = v42;
                }
              }

              ++v42;
            }

            while (v10 != v42);
            if (v33 == v17 && v45 == v17)
            {
              goto LABEL_42;
            }
          }

          i = i + 5.0;
        }
      }

      v32 = v32 + 45.0;
      if (v32 > 360.0)
      {
        *(v7 + 4 * v17) = 0;
        v9 = xmmword_21C2A3E50;
        v8 = xmmword_21C27F8C0;
        v11 = xmmword_21C2A3E40;
        goto LABEL_2;
      }
    }

LABEL_42:
    *(v7 + 4 * v17) = 3;
  }

  return v17;
}

uint64_t HullLibrary::calchullgen(HullLibrary *this, float32x4_t *a2, uint64_t a3, int a4)
{
  if (a3 < 4)
  {
    return 0;
  }

  v115 = a4 - 4;
  v122 = *a2;
  v8 = 4 * a3;
  v9 = a3;
  v10 = btAlignedAllocInternal(v8, 16);
  v128 = 0;
  v11 = btAlignedAllocInternal(v8, 16);
  v12 = v122;
  v13 = v11;
  v14 = 0;
  v131 = 1;
  v130 = v11;
  v129 = a3;
  v15 = v122;
  v117 = a3;
  v16 = a3;
  do
  {
    v17 = v128;
    if (v128 == v129)
    {
      v18 = v128 ? 2 * v128 : 1;
      if (v128 < v18)
      {
        v118 = v15;
        v123 = v12;
        if (v18)
        {
          v11 = btAlignedAllocInternal(4 * v18, 16);
          v19 = v11;
        }

        else
        {
          v19 = 0;
        }

        if (v128 < 1)
        {
          if (!v13)
          {
LABEL_18:
            v131 = 1;
            v130 = v19;
            v129 = v18;
            v13 = v19;
            LODWORD(v17) = v128;
            v15 = v118;
            v12 = v123;
            goto LABEL_19;
          }
        }

        else
        {
          v20 = v19;
          v21 = v13;
          do
          {
            v22 = *v21;
            v21 = (v21 + 4);
            *v20++ = v22;
            --v17;
          }

          while (v17);
        }

        btAlignedFreeInternal(v13);
        goto LABEL_18;
      }
    }

LABEL_19:
    *(v13 + v17) = 1;
    ++v128;
    if (v14 != v16 || (!v14 ? (v23 = 1) : (v23 = (2 * v14)), v16 >= v23))
    {
      v23 = v16;
      goto LABEL_34;
    }

    v119 = v15;
    v124 = v12;
    if (v23)
    {
      v11 = btAlignedAllocInternal(4 * v23, 16);
      v24 = v11;
      if (v14)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v24 = 0;
      if (v14)
      {
LABEL_26:
        for (i = 0; i != v14; ++i)
        {
          *(v24 + i) = *(v10 + i);
        }

        goto LABEL_32;
      }
    }

    if (!v10)
    {
      v23 = 1;
      goto LABEL_33;
    }

LABEL_32:
    btAlignedFreeInternal(v10);
LABEL_33:
    v10 = v24;
    v15 = v119;
    v12 = v124;
LABEL_34:
    *(v10 + v14) = 0;
    v26 = a2[v14];
    v12 = vminq_f32(v12, v26);
    v15 = vmaxq_f32(v15, v26);
    ++v14;
    v16 = v23;
  }

  while (v14 != v9);
  v120 = v15;
  v125 = v12;
  Simplex = HullLibrary::FindSimplex(v11, a2, v117, v127);
  v29 = Simplex;
  if (Simplex == -1)
  {
    v4 = 0;
    goto LABEL_89;
  }

  v30 = v28;
  v113 = a2[Simplex >> 32];
  v114 = a2[Simplex];
  v31 = HIDWORD(v28);
  v32 = v28 >> 32;
  v111 = a2[v28 >> 32];
  v112 = a2[v28];
  Triangle = HullLibrary::allocateTriangle(this, v28, SHIDWORD(v28), SHIDWORD(Simplex));
  *(Triangle + 12) = 0x300000002;
  *(Triangle + 20) = 1;
  v34 = HullLibrary::allocateTriangle(this, v31, v30, v29);
  *(v34 + 12) = 0x200000003;
  *(v34 + 20) = 0;
  v35 = HullLibrary::allocateTriangle(this, v29, SHIDWORD(v29), v31);
  *(v35 + 12) = 0x100000000;
  *(v35 + 20) = 3;
  v36 = HullLibrary::allocateTriangle(this, SHIDWORD(v29), v29, v30);
  *(v36 + 12) = 1;
  *(v36 + 20) = 2;
  *(v10 + v32) = 1;
  *(v10 + v30) = 1;
  *(v10 + (v29 >> 32)) = 1;
  *(v10 + v29) = 1;
  if (*(this + 1) >= 1)
  {
    v37 = 0;
    do
    {
      v38 = *(*(this + 2) + 8 * v37);
      v39 = a2[v38[1]];
      v40 = vsubq_f32(v39, a2[*v38]);
      v40.i32[3] = 0;
      v41 = vsubq_f32(a2[v38[2]], v39);
      v41.i32[3] = 0;
      v42 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vextq_s8(v40, v40, 0xCuLL), v40, 8uLL), v41)), v40, vextq_s8(vextq_s8(v41, v41, 0xCuLL), v41, 8uLL));
      v43 = vextq_s8(vextq_s8(v42, v42, 0xCuLL), v42, 8uLL);
      v43.i32[3] = 0;
      v44 = vmulq_f32(v43, v43);
      v45 = sqrtf(vadd_f32(*&vextq_s8(v44, v44, 8uLL), vpadd_f32(*v44.i8, *v44.i8)).f32[0]);
      v46 = xmmword_21C27F910;
      if (v45 != 0.0)
      {
        v46 = vmulq_n_f32(v43, 1.0 / v45);
        v46.i32[3] = 0;
      }

      v126 = v46;
      v47 = maxdirsterid<btVector3>(a2, v117, &v126, v127);
      v38[7] = v47;
      v48 = vsubq_f32(a2[v47], a2[*v38]);
      v48.i32[3] = 0;
      v49 = vmulq_f32(v126, v48);
      v38[8] = vadd_f32(*&vextq_s8(v49, v49, 8uLL), vpadd_f32(*v49.i8, *v49.i8)).u32[0];
      ++v37;
    }

    while (v37 < *(this + 1));
  }

  if (a4)
  {
    v50 = v115;
  }

  else
  {
    v50 = 999999996;
  }

  v4 = 1;
  if (v50 >= 1)
  {
    v51 = vsubq_f32(v120, v125);
    v51.i32[3] = 0;
    v52 = vmulq_f32(v51, v51);
    __asm { FMOV            V2.4S, #0.25 }

    *v52.i32 = sqrtf(vadd_f32(vpadd_f32(*v52.i8, *v52.i8), *&vextq_s8(v52, v52, 8uLL)).f32[0]);
    v57 = vmulq_f32(vaddq_f32(vaddq_f32(v113, v111), vaddq_f32(v114, v112)), _Q2);
    v58 = *v52.i32 * 0.001;
    v57.i32[3] = 0;
    v121 = v57;
    v59 = *v52.i32 * 0.00001;
    v60 = (*v52.i32 * 0.0001) * (*v52.i32 * 0.001);
    while (1)
    {
      v61 = HullLibrary::extrudable(this, v58);
      if (!v61)
      {
LABEL_87:
        v4 = 1;
        break;
      }

      v62 = *(v61 + 28);
      *(v10 + v62) = 1;
      v63 = *(this + 1);
      if (!v63)
      {
        goto LABEL_85;
      }

      v64 = v63 - 1;
      do
      {
        v65 = *(*(this + 2) + 8 * v64);
        if (v65)
        {
          v66 = a2[v65[1]];
          v67 = a2[*v65];
          v68 = vsubq_f32(v66, v67);
          v68.i32[3] = 0;
          v69 = vsubq_f32(a2[v65[2]], v66);
          v69.i32[3] = 0;
          v70 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vextq_s8(v68, v68, 0xCuLL), v68, 8uLL), v69)), v68, vextq_s8(vextq_s8(v69, v69, 0xCuLL), v69, 8uLL));
          v71 = vextq_s8(vextq_s8(v70, v70, 0xCuLL), v70, 8uLL);
          v71.i32[3] = 0;
          v72 = vmulq_f32(v71, v71);
          v73 = sqrtf(vadd_f32(*&vextq_s8(v72, v72, 8uLL), vpadd_f32(*v72.i8, *v72.i8)).f32[0]);
          v74 = xmmword_21C27F910;
          if (v73 != 0.0)
          {
            v74 = vmulq_n_f32(v71, 1.0 / v73);
            v74.i32[3] = 0;
          }

          v75 = vsubq_f32(a2[v62], v67);
          v75.i32[3] = 0;
          v76 = vmulq_f32(v74, v75);
          if (vadd_f32(*&vextq_s8(v76, v76, 8uLL), vpadd_f32(*v76.i8, *v76.i8)).f32[0] > v59)
          {
            HullLibrary::extrude(this, v65, v62);
          }
        }

        --v64;
      }

      while (v64 != -1);
      v77 = *(this + 1);
      if (!v77)
      {
        goto LABEL_85;
      }

      v78 = *(this + 1);
      do
      {
        while (1)
        {
          --v78;
          v79 = *(this + 2);
          v80 = *(v79 + 8 * v78);
          if (v80)
          {
            break;
          }

LABEL_72:
          if (!v78)
          {
            goto LABEL_75;
          }
        }

        v81 = v80[1];
        v82 = *v80;
        v83 = v80[2];
        _ZF = v82 == v62 || v81 == v62;
        if (!_ZF && v83 != v62)
        {
          break;
        }

        v86 = a2[v81];
        v87 = a2[v82];
        v88 = vsubq_f32(v86, v87);
        v88.i32[3] = 0;
        v89 = vsubq_f32(a2[v83], v86);
        v89.i32[3] = 0;
        v90 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vextq_s8(v88, v88, 0xCuLL), v88, 8uLL), v89)), v88, vextq_s8(vextq_s8(v89, v89, 0xCuLL), v89, 8uLL));
        v91 = vextq_s8(vextq_s8(v90, v90, 0xCuLL), v90, 8uLL);
        v91.i32[3] = 0;
        v92 = vmulq_f32(v91, v91);
        v93 = sqrtf(vadd_f32(*&vextq_s8(v92, v92, 8uLL), vpadd_f32(*v92.i8, *v92.i8)).f32[0]);
        v94 = xmmword_21C27F910;
        if (v93 != 0.0)
        {
          v94 = vmulq_n_f32(v91, 1.0 / v93);
          v94.i32[3] = 0;
        }

        v95 = vsubq_f32(v121, v87);
        v95.i32[3] = 0;
        v96 = vmulq_f32(v94, v95);
        if (vadd_f32(*&vextq_s8(v96, v96, 8uLL), vpadd_f32(*v96.i8, *v96.i8)).f32[0] <= v59 && v93 >= v60)
        {
          goto LABEL_72;
        }

        HullLibrary::extrude(this, *(v79 + 8 * v80[3]), v62);
        v77 = *(this + 1);
        v78 = v77;
      }

      while (v77);
LABEL_75:
      if (v77)
      {
        v97 = v77 - 1;
        do
        {
          v98 = *(*(this + 2) + 8 * v97);
          if (v98)
          {
            if ((v98[7] & 0x80000000) == 0)
            {
              break;
            }

            v99 = a2[v98[1]];
            v100 = vsubq_f32(v99, a2[*v98]);
            v100.i32[3] = 0;
            v101 = vsubq_f32(a2[v98[2]], v99);
            v101.i32[3] = 0;
            v102 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vextq_s8(v100, v100, 0xCuLL), v100, 8uLL), v101)), v100, vextq_s8(vextq_s8(v101, v101, 0xCuLL), v101, 8uLL));
            v103 = vextq_s8(vextq_s8(v102, v102, 0xCuLL), v102, 8uLL);
            v103.i32[3] = 0;
            v104 = vmulq_f32(v103, v103);
            v105 = sqrtf(vadd_f32(*&vextq_s8(v104, v104, 8uLL), vpadd_f32(*v104.i8, *v104.i8)).f32[0]);
            v106 = xmmword_21C27F910;
            if (v105 != 0.0)
            {
              v106 = vmulq_n_f32(v103, 1.0 / v105);
              v106.i32[3] = 0;
            }

            v126 = v106;
            v107 = maxdirsterid<btVector3>(a2, v117, &v126, v127);
            v98[7] = v107;
            if (*(v10 + v107))
            {
              v98[7] = -1;
            }

            else
            {
              v108 = vsubq_f32(a2[v107], a2[*v98]);
              v108.i32[3] = 0;
              v109 = vmulq_f32(v126, v108);
              v98[8] = vadd_f32(*&vextq_s8(v109, v109, 8uLL), vpadd_f32(*v109.i8, *v109.i8)).u32[0];
            }
          }

          --v97;
        }

        while (v97 != -1);
      }

LABEL_85:
      _VF = __OFSUB__(v50--, 1);
      if ((v50 < 0) ^ _VF | (v50 == 0))
      {
        goto LABEL_87;
      }
    }
  }

LABEL_89:
  if (v130 && v131 == 1)
  {
    btAlignedFreeInternal(v130);
  }

  if (v10)
  {
    btAlignedFreeInternal(v10);
  }

  return v4;
}

uint64_t HullLibrary::calchull(uint64_t a1, float32x4_t *a2, uint64_t a3, uint64_t a4, int *a5, int a6)
{
  result = HullLibrary::calchullgen(a1, a2, a3, a6);
  if (!result)
  {
    return result;
  }

  v39 = a5;
  v10 = *(a1 + 4);
  if (v10 < 1)
  {
    v14 = 0;
    v12 = 0;
    goto LABEL_26;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    if (!*(*(a1 + 16) + 8 * v11))
    {
      goto LABEL_23;
    }

    v15 = 0;
    v16 = v14;
    do
    {
      v17 = *(*(a1 + 16) + 8 * v11);
      if (v13 == v16)
      {
        v18 = v16 ? 2 * v16 : 1;
        if (v13 < v18)
        {
          if (v18)
          {
            v19 = btAlignedAllocInternal(4 * v18, 16);
          }

          else
          {
            v19 = 0;
          }

          if (v16 < 1)
          {
            if (!v12)
            {
LABEL_20:
              v13 = v18;
              v12 = v19;
              goto LABEL_21;
            }
          }

          else
          {
            v20 = v13;
            v21 = v19;
            v22 = v12;
            do
            {
              v23 = *v22;
              v22 = (v22 + 4);
              *v21++ = v23;
              --v20;
            }

            while (v20);
          }

          btAlignedFreeInternal(v12);
          goto LABEL_20;
        }
      }

LABEL_21:
      *(v12 + v16++) = *(v17 + 4 * v15++);
    }

    while (v15 != 3);
    v24 = *(a1 + 16);
    v25 = *(v24 + 8 * v11);
    *(v24 + 8 * *(v25 + 24)) = 0;
    btAlignedFreeInternal(v25);
    v10 = *(a1 + 4);
    v14 = v16;
LABEL_23:
    ++v11;
  }

  while (v11 < v10);
LABEL_26:
  *v39 = v14 / 3;
  v26 = *(a4 + 4);
  if (v26 < v14)
  {
    if (*(a4 + 8) < v14)
    {
      if (v14)
      {
        v27 = btAlignedAllocInternal(4 * v14, 16);
      }

      else
      {
        v27 = 0;
      }

      LODWORD(v28) = *(a4 + 4);
      v29 = *(a4 + 16);
      if (v28 >= 1)
      {
        v28 = v28;
        v30 = v27;
        v31 = *(a4 + 16);
        do
        {
          v32 = *v31++;
          *v30++ = v32;
          --v28;
        }

        while (v28);
        goto LABEL_36;
      }

      if (v29)
      {
LABEL_36:
        if (*(a4 + 24) == 1)
        {
          btAlignedFreeInternal(v29);
        }
      }

      *(a4 + 24) = 1;
      *(a4 + 16) = v27;
      *(a4 + 8) = v14;
    }

    bzero((*(a4 + 16) + 4 * v26), 4 * (v14 + ~v26) + 4);
  }

  *(a4 + 4) = v14;
  if (v14 >= 1)
  {
    v33 = *(a4 + 16);
    v34 = v14;
    v35 = v12;
    do
    {
      v36 = *v35;
      v35 = (v35 + 4);
      *v33++ = v36;
      --v34;
    }

    while (v34);
  }

  v37 = *(a1 + 4);
  if ((v37 & 0x80000000) != 0)
  {
    if ((*(a1 + 8) & 0x80000000) != 0)
    {
      v38 = *(a1 + 16);
      if (v38 && *(a1 + 24) == 1)
      {
        btAlignedFreeInternal(v38);
      }

      *(a1 + 24) = 1;
      *(a1 + 16) = 0;
      *(a1 + 8) = 0;
    }

    do
    {
      *(*(a1 + 16) + 8 * v37++) = 0;
    }

    while (v37);
  }

  *(a1 + 4) = 0;
  if (v12)
  {
    btAlignedFreeInternal(v12);
  }

  return 1;
}

BOOL HullLibrary::ComputeHull(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4, int a5)
{
  v7 = a2;
  v11 = 0;
  v8 = HullLibrary::calchull(a1, a3, a2, a4 + 24, &v11, a5);
  if (v8)
  {
    v9 = v11;
    *(a4 + 8) = v11;
    *(a4 + 16) = a3;
    *a4 = v7;
    *(a4 + 4) = 3 * v9;
  }

  return v8 != 0;
}

uint64_t HullLibrary::CreateConvexHull(HullLibrary *a1, uint64_t a2, uint64_t a3)
{
  v62 = 1;
  __src = 0;
  HIDWORD(v6) = 0;
  v60 = 0;
  *v57 = 0;
  v58 = 0;
  v59 = 0;
  v7 = *(a2 + 4);
  if (v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  if ((v8 & 0x80000000) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = btAlignedAllocInternal(16 * v8, 16);
    v7 = *(a2 + 4);
  }

  v55 = 0;
  LODWORD(v6) = *(a2 + 20);
  if (!HullLibrary::CleanupVertices(a1, v7, *(a2 + 8), *(a2 + 16), &v55, v9, v6, &v56))
  {
    goto LABEL_14;
  }

  v10 = v55;
  if (v55)
  {
    v11 = 0;
    v12 = *v56.var0.var0;
    v13 = v56.var0.var0[2];
    do
    {
      v14 = &v9[v11];
      *v14 = vmul_f32(*v14, v12);
      v14[1].f32[0] = v14[1].f32[0] * v13;
      ++v11;
    }

    while (v10 != v11);
  }

  if (!HullLibrary::ComputeHull(a1, v10, v9, v57, *(a2 + 24)))
  {
LABEL_14:
    v17 = 1;
    if (!v9)
    {
      goto LABEL_16;
    }

LABEL_15:
    btAlignedFreeInternal(v9);
    goto LABEL_16;
  }

  v15 = v57[0];
  if (v57[0] < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = btAlignedAllocInternal(16 * v57[0], 16);
  }

  HullLibrary::BringOutYourDead(a1, v59, v15, v16, &v55, __src, v57[1]);
  if ((*a2 & 1) == 0)
  {
    *a3 = 1;
    v19 = v55;
    *(a3 + 4) = v55;
    v20 = *(a3 + 12);
    if (v20 < v19 && *(a3 + 16) < v19)
    {
      if (v19)
      {
        v21 = btAlignedAllocInternal(16 * v19, 16);
        v20 = *(a3 + 12);
      }

      else
      {
        v21 = 0;
      }

      if (v20 >= 1)
      {
        v25 = 0;
        v26 = 16 * v20;
        do
        {
          *(v21 + v25) = *(*(a3 + 24) + v25);
          v25 += 16;
        }

        while (v26 != v25);
      }

      v27 = *(a3 + 24);
      if (v27 && *(a3 + 32) == 1)
      {
        btAlignedFreeInternal(v27);
      }

      *(a3 + 32) = 1;
      *(a3 + 24) = v21;
      *(a3 + 16) = v19;
    }

    *(a3 + 12) = v19;
    v28 = v58;
    v29 = v57[1] + v58;
    *(a3 + 40) = v58;
    *(a3 + 44) = v29;
    v30 = *(a3 + 52);
    if (v30 >= v29)
    {
      goto LABEL_69;
    }

    if (*(a3 + 56) >= v29)
    {
LABEL_68:
      bzero((*(a3 + 64) + 4 * v30), 4 * (v29 + ~v30) + 4);
LABEL_69:
      *(a3 + 52) = v29;
      memcpy(*(a3 + 24), v16, 16 * v19);
      v49 = __src;
      if (v28)
      {
        v50 = (*(a3 + 64) + 8);
        v51 = __src;
        do
        {
          *(v50 - 2) = 3;
          if ((*a2 & 2) != 0)
          {
            *(v50 - 1) = v51[2];
            *v50 = v51[1];
            v52 = v51;
          }

          else
          {
            *(v50 - 1) = *v51;
            *v50 = v51[1];
            v52 = v51 + 2;
          }

          v50[1] = *v52;
          v51 += 3;
          v50 += 4;
          --v28;
        }

        while (v28);
      }

      goto LABEL_86;
    }

    if (v29)
    {
      v31 = btAlignedAllocInternal(4 * v29, 16);
    }

    else
    {
      v31 = 0;
    }

    LODWORD(v32) = *(a3 + 52);
    v41 = *(a3 + 64);
    if (v32 < 1)
    {
      if (!v41)
      {
LABEL_67:
        *(a3 + 72) = 1;
        *(a3 + 64) = v31;
        *(a3 + 56) = v29;
        goto LABEL_68;
      }
    }

    else
    {
      v32 = v32;
      v42 = v31;
      v43 = *(a3 + 64);
      do
      {
        v44 = *v43++;
        *v42++ = v44;
        --v32;
      }

      while (v32);
    }

    if (*(a3 + 72) == 1)
    {
      btAlignedFreeInternal(v41);
    }

    goto LABEL_67;
  }

  *a3 = 0;
  v22 = v55;
  *(a3 + 4) = v55;
  v23 = *(a3 + 12);
  if (v23 < v22 && *(a3 + 16) < v22)
  {
    if (v22)
    {
      v24 = btAlignedAllocInternal(16 * v22, 16);
      v23 = *(a3 + 12);
    }

    else
    {
      v24 = 0;
    }

    if (v23 >= 1)
    {
      v33 = 0;
      v34 = 16 * v23;
      do
      {
        *(v24 + v33) = *(*(a3 + 24) + v33);
        v33 += 16;
      }

      while (v34 != v33);
    }

    v35 = *(a3 + 24);
    if (v35 && *(a3 + 32) == 1)
    {
      btAlignedFreeInternal(v35);
    }

    *(a3 + 32) = 1;
    *(a3 + 24) = v24;
    *(a3 + 16) = v22;
  }

  *(a3 + 12) = v22;
  v37 = v57[1];
  v36 = v58;
  *(a3 + 40) = v58;
  *(a3 + 44) = v37;
  v38 = *(a3 + 52);
  if (v38 < v37)
  {
    if (*(a3 + 56) >= v37)
    {
LABEL_80:
      bzero((*(a3 + 64) + 4 * v38), 4 * (v37 + ~v38) + 4);
      goto LABEL_81;
    }

    if (v37)
    {
      v39 = btAlignedAllocInternal(4 * v37, 16);
    }

    else
    {
      v39 = 0;
    }

    LODWORD(v40) = *(a3 + 52);
    v45 = *(a3 + 64);
    if (v40 < 1)
    {
      if (!v45)
      {
LABEL_79:
        *(a3 + 72) = 1;
        *(a3 + 64) = v39;
        *(a3 + 56) = v37;
        goto LABEL_80;
      }
    }

    else
    {
      v40 = v40;
      v46 = v39;
      v47 = *(a3 + 64);
      do
      {
        v48 = *v47++;
        *v46++ = v48;
        --v40;
      }

      while (v40);
    }

    if (*(a3 + 72) == 1)
    {
      btAlignedFreeInternal(v45);
    }

    goto LABEL_79;
  }

LABEL_81:
  *(a3 + 52) = v37;
  memcpy(*(a3 + 24), v16, 16 * v22);
  if ((*a2 & 2) != 0)
  {
    v49 = __src;
    if (v36)
    {
      v53 = *(a3 + 64);
      v54 = __src + 8;
      do
      {
        *v53 = *v54;
        v53[1] = *(v54 - 1);
        v53[2] = *(v54 - 2);
        v53 += 3;
        v54 += 3;
        --v36;
      }

      while (v36);
    }
  }

  else
  {
    v49 = __src;
    memcpy(*(a3 + 64), __src, 4 * v37);
  }

LABEL_86:
  if (v60)
  {
    if (v49 && v62 == 1)
    {
      btAlignedFreeInternal(v49);
    }

    v62 = 1;
    __src = 0;
  }

  if (v16)
  {
    btAlignedFreeInternal(v16);
  }

  v17 = 0;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (__src && v62 == 1)
  {
    btAlignedFreeInternal(__src);
  }

  return v17;
}

BOOL HullLibrary::CleanupVertices(HullLibrary *this, unsigned int a2, const btVector3 *a3, unsigned int a4, unsigned int *a5, btVector3 *a6, double a7, btVector3 *a8)
{
  v8 = a2;
  v106 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return v8 != 0;
  }

  v15 = *(this + 9);
  v101 = a7;
  if ((v15 & 0x80000000) != 0)
  {
    if ((*(this + 10) & 0x80000000) != 0)
    {
      v16 = *(this + 6);
      if (v16 && *(this + 56) == 1)
      {
        btAlignedFreeInternal(v16);
      }

      *(this + 56) = 1;
      *(this + 6) = 0;
      *(this + 10) = 0;
    }

    bzero((*(this + 6) + 4 * v15), 4 * ~v15 + 4);
    a7 = v101;
  }

  v17 = 0;
  *(this + 9) = 0;
  *a5 = 0;
  __asm { FMOV            V6.2S, #1.0 }

  *a8->var0.var0 = _D6;
  a8->var0.var0[2] = 1.0;
  v104 = 0x7F7FFFFF7F7FFFFFLL;
  v105 = 3.4028e38;
  v103 = -3.4028e38;
  v102 = 0xFF7FFFFFFF7FFFFFLL;
  v23 = a3;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v25 = v23->var0.var0[i];
      if (v25 < v104.f32[i])
      {
        v104.f32[i] = v25;
      }

      if (v25 > v102.f32[i])
      {
        v102.f32[i] = v25;
      }
    }

    v23 = (v23 + a4);
    ++v17;
  }

  while (v17 != v8);
  v26 = vsub_f32(v102, v104);
  v27 = v103 - v105;
  v29.i32[1] = 1056964608;
  v28 = vmla_f32(v104, 0x3F0000003F000000, v26);
  *v29.i32 = v105 + ((v103 - v105) * 0.5);
  if (v8 >= 3 && v26.f32[0] >= 0.000001 && v26.f32[1] >= 0.000001 && v27 >= 0.000001)
  {
    v30 = 0;
    *a8->var0.var0 = v26;
    a8->var0.var0[2] = v27;
    v31 = vdiv_f32(_D6, v26);
    v32 = 1.0 / v27;
    v33 = vmul_f32(v28, v31);
    *v29.i32 = *v29.i32 * (1.0 / v27);
    v34 = vdup_lane_s32(v29, 0);
    v35 = vdup_lane_s32(*&a7, 0);
    v36 = &a6->var0.var0[2];
    v100 = v8;
    while (1)
    {
      v37 = vmul_f32(*a3->var0.var0, v31);
      v38 = a3->var0.var0[2] * v32;
      v39 = *a5;
      if (v39)
      {
        v40 = 0;
        v41.i32[1] = v37.i32[1];
        v42 = v36;
        while (1)
        {
          v43 = *(v42 - 2);
          if (fabsf(vsub_f32(v43, v37).f32[0]) < *&a7)
          {
            v44.i32[1] = HIDWORD(*(v42 - 1));
            v44.i32[0] = *v42;
            v41.f32[0] = a3->var0.var0[2] * v32;
            v45 = vcgt_f32(v35, vabd_f32(v44, v41));
            if (v45.i8[4] & 1) != 0 && (v45.i8[0])
            {
              break;
            }
          }

          ++v40;
          v42 += 4;
          if (v39 == v40)
          {
            LODWORD(v40) = *a5;
            goto LABEL_33;
          }
        }

        v46.f32[0] = a3->var0.var0[2] * v32;
        v46.i32[1] = *v42;
        v47 = vsub_f32(v46, v34);
        v48 = vsub_f32(v37, v33);
        v49 = vmul_f32(v48, v48);
        v50 = vsub_f32(v43, v33);
        v51 = vmul_f32(v50, v50);
        v52 = vmla_f32(vadd_f32(vzip2_s32(v49, v51), vzip1_s32(v49, v51)), v47, v47);
        if (vcgt_f32(v52, vdup_lane_s32(v52, 1)).u8[0])
        {
          *(v42 - 1) = v37;
          *v42 = v38;
        }
      }

      else
      {
        LODWORD(v40) = 0;
      }

      if (v40 == v39)
      {
LABEL_33:
        v53 = &a6[v39];
        *v53->var0.var0 = v37;
        v53->var0.var0[2] = v38;
        *a5 = v39 + 1;
      }

      LODWORD(v54) = *(this + 9);
      if (v54 != *(this + 10))
      {
        goto LABEL_50;
      }

      v55 = v54 ? 2 * v54 : 1;
      if (v54 >= v55)
      {
        goto LABEL_50;
      }

      v56 = a6;
      v57 = a5;
      v58 = v36;
      if (v55)
      {
        v59 = btAlignedAllocInternal(4 * v55, 16);
        LODWORD(a7) = LODWORD(v101);
        v60 = v59;
        LODWORD(v54) = *(this + 9);
      }

      else
      {
        v60 = 0;
      }

      v61 = *(this + 6);
      if (v54 >= 1)
      {
        break;
      }

      if (v61)
      {
        goto LABEL_47;
      }

LABEL_49:
      *(this + 56) = 1;
      *(this + 6) = v60;
      *(this + 10) = v55;
      LODWORD(v54) = *(this + 9);
      v36 = v58;
      a5 = v57;
      a6 = v56;
      v8 = v100;
LABEL_50:
      *(*(this + 6) + 4 * v54) = v40;
      a3 = (a3 + a4);
      ++*(this + 9);
      if (++v30 == v8)
      {
        v105 = 3.4028e38;
        v104 = 0x7F7FFFFF7F7FFFFFLL;
        v103 = -3.4028e38;
        v102 = 0xFF7FFFFFFF7FFFFFLL;
        v65 = *a5;
        if (v65)
        {
          v66 = 0;
          v67 = a6;
          do
          {
            for (j = 0; j != 3; ++j)
            {
              v69 = v67->var0.var0[j];
              if (v69 < v104.f32[j])
              {
                v104.f32[j] = v69;
              }

              if (v69 > v102.f32[j])
              {
                v102.f32[j] = v69;
              }
            }

            ++v66;
            ++v67;
          }

          while (v66 != v65);
          v70 = v102.f32[1];
          v71 = v102.f32[0];
          v72 = v104.f32[1];
          v73 = v104.f32[0];
          v74 = v103;
          v75 = v105;
        }

        else
        {
          v74 = -3.4028e38;
          v75 = 3.4028e38;
          v72 = 3.4028e38;
          v70 = -3.4028e38;
          v73 = 3.4028e38;
          v71 = -3.4028e38;
        }

        v80 = v71 - v73;
        v81 = v70 - v72;
        v82 = v74 - v75;
        if (v65 < 3 || v80 < 0.000001 || v81 < 0.000001 || v82 < 0.000001)
        {
          v83 = v73 + (v80 * 0.5);
          v84 = v72 + (v81 * 0.5);
          v85 = v75 + (v82 * 0.5);
          if (v80 >= 0.000001 && v80 < 3.4028e38)
          {
            v86 = v80;
          }

          else
          {
            v86 = 3.4028e38;
          }

          if (v81 >= 0.000001 && v81 < v86)
          {
            v86 = v81;
          }

          if (v82 >= 0.000001 && v82 < v86)
          {
            v86 = v82;
          }

          if (v86 == 3.4028e38)
          {
            v80 = 0.01;
            v81 = 0.01;
            v87 = 0.01;
          }

          else
          {
            v87 = v86 * 0.05;
            if (v80 < 0.000001)
            {
              v80 = v87;
            }

            if (v81 < 0.000001)
            {
              v81 = v87;
            }

            if (v82 >= 0.000001)
            {
              v87 = v82;
            }
          }

          v94 = v83 - v80;
          v95 = v80 + v83;
          v96 = v84 - v81;
          a6->var0.var0[0] = v94;
          a6->var0.var0[1] = v84 - v81;
          v97 = v81 + v84;
          v98 = v85 - v87;
          a6->var0.var0[2] = v85 - v87;
          v93 = v87 + v85;
          a6[1].var0.var0[0] = v95;
          a6[1].var0.var0[1] = v96;
          a6[1].var0.var0[2] = v98;
          a6[2].var0.var0[0] = v95;
          a6[2].var0.var0[1] = v97;
          a6[2].var0.var0[2] = v98;
          a6[3].var0.var0[0] = v94;
          a6[3].var0.var0[1] = v97;
          a6[3].var0.var0[2] = v98;
          a6[4].var0.var0[0] = v94;
          a6[4].var0.var0[1] = v96;
          a6[4].var0.var0[2] = v93;
          a6[5].var0.var0[0] = v95;
          a6[5].var0.var0[1] = v96;
          a6[5].var0.var0[2] = v93;
          a6[6].var0.var0[0] = v95;
          a6[6].var0.var0[1] = v97;
          a6[6].var0.var0[2] = v93;
          a6[7].var0.var0[0] = v94;
          a6[7].var0.var0[1] = v97;
          goto LABEL_100;
        }

        return v8 != 0;
      }
    }

    v54 = v54;
    v62 = v60;
    v63 = *(this + 6);
    do
    {
      v64 = *v63++;
      *v62++ = v64;
      --v54;
    }

    while (v54);
LABEL_47:
    if (*(this + 56) == 1)
    {
      btAlignedFreeInternal(v61);
      LODWORD(a7) = LODWORD(v101);
    }

    goto LABEL_49;
  }

  if (v26.f32[0] > 0.000001 && v26.f32[0] < 3.4028e38)
  {
    v76 = v26.f32[0];
  }

  else
  {
    v76 = 3.4028e38;
  }

  if (v26.f32[1] > 0.000001 && v26.f32[1] < v76)
  {
    v76 = v26.f32[1];
  }

  if (v27 > 0.000001 && v27 < v76)
  {
    v76 = v103 - v105;
  }

  if (v76 == 3.4028e38)
  {
    v77 = 0.01;
    v78 = 0.01;
    v79 = 0.01;
  }

  else
  {
    v77 = v76 * 0.05;
    if (v26.f32[0] >= 0.000001)
    {
      v79 = v26.f32[0];
    }

    else
    {
      v79 = v77;
    }

    if (v26.f32[1] >= 0.000001)
    {
      v78 = v26.f32[1];
    }

    else
    {
      v78 = v77;
    }

    if (v27 >= 0.000001)
    {
      v77 = v103 - v105;
    }
  }

  v88 = v28.f32[0] - v79;
  v89 = v79 + v28.f32[0];
  v90 = v28.f32[1] - v78;
  a6->var0.var0[0] = v28.f32[0] - v79;
  a6->var0.var0[1] = v28.f32[1] - v78;
  v91 = v78 + v28.f32[1];
  v92 = *v29.i32 - v77;
  a6->var0.var0[2] = *v29.i32 - v77;
  v93 = v77 + *v29.i32;
  a6[1].var0.var0[0] = v89;
  a6[1].var0.var0[1] = v90;
  a6[1].var0.var0[2] = v92;
  a6[2].var0.var0[0] = v89;
  a6[2].var0.var0[1] = v91;
  a6[2].var0.var0[2] = v92;
  a6[3].var0.var0[0] = v88;
  a6[3].var0.var0[1] = v91;
  a6[3].var0.var0[2] = v92;
  a6[4].var0.var0[0] = v88;
  a6[4].var0.var0[1] = v90;
  a6[4].var0.var0[2] = v93;
  a6[5].var0.var0[0] = v89;
  a6[5].var0.var0[1] = v90;
  a6[5].var0.var0[2] = v93;
  a6[6].var0.var0[0] = v89;
  a6[6].var0.var0[1] = v91;
  a6[6].var0.var0[2] = v93;
  a6[7].var0.var0[0] = v88;
  a6[7].var0.var0[1] = v91;
LABEL_100:
  a6[7].var0.var0[2] = v93;
  *a5 = 8;
  return v8 != 0;
}

void HullLibrary::BringOutYourDead(HullLibrary *this, const btVector3 *a2, unsigned int a3, btVector3 *a4, unsigned int *a5, unsigned int *a6, int a7)
{
  v14 = *(this + 9);
  if (v14 < 1)
  {
    v16 = 0;
  }

  else
  {
    v15 = 4 * v14;
    v16 = btAlignedAllocInternal(4 * v14, 16);
    bzero(v16, v15);
    if (*(this + 9) >= 1)
    {
      v17 = 0;
      v18 = *(this + 6);
      do
      {
        *(v16 + v17) = *(v18 + 4 * v17);
        ++v17;
      }

      while (v17 < *(this + 9));
    }
  }

  if (a3 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = btAlignedAllocInternal(4 * a3, 16);
    bzero(v19, 4 * a3);
  }

  bzero(v19, 4 * a3);
  *a5 = 0;
  if (a7 < 1)
  {
    if (!v19)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v20 = 0;
    do
    {
      v21 = a6[v20];
      v22 = *(v19 + v21);
      if (v22)
      {
        a6[v20] = v22 - 1;
      }

      else
      {
        v23 = *a5;
        a6[v20] = v23;
        v24 = &a2[v21];
        v25 = &a4[v23];
        v25->var0.var0[0] = v24->var0.var0[0];
        v25->var0.var0[1] = v24->var0.var0[1];
        v25->var0.var0[2] = v24->var0.var0[2];
        v26 = *(this + 9);
        if (v26 >= 1)
        {
          for (i = 0; i < v26; ++i)
          {
            if (*(v16 + i) == v21)
            {
              *(*(this + 6) + 4 * i) = v23;
              v26 = *(this + 9);
            }
          }
        }

        v28 = v23 + 1;
        *a5 = v28;
        *(v19 + v21) = v28;
      }

      ++v20;
    }

    while (v20 != a7);
  }

  btAlignedFreeInternal(v19);
LABEL_24:
  if (v16)
  {

    btAlignedFreeInternal(v16);
  }
}

uint64_t HullLibrary::ReleaseResult(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 12))
  {
    *(a2 + 4) = 0;
    v3 = *(a2 + 24);
    if (v3 && *(a2 + 32) == 1)
    {
      btAlignedFreeInternal(v3);
    }

    *(a2 + 32) = 1;
    *(a2 + 24) = 0;
    *(a2 + 12) = 0;
    *(a2 + 16) = 0;
  }

  if (*(a2 + 52))
  {
    *(a2 + 44) = 0;
    v4 = *(a2 + 64);
    if (v4 && *(a2 + 72) == 1)
    {
      btAlignedFreeInternal(v4);
    }

    *(a2 + 72) = 1;
    *(a2 + 64) = 0;
    *(a2 + 52) = 0;
    *(a2 + 56) = 0;
  }

  return 0;
}

unint64_t btConvexHullInternal::Int128::operator*(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 0)
  {
    v3 = *a1;
  }

  else
  {
    v3 = -*a1;
  }

  if (a2 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = -a2;
  }

  v5 = v2 ^ a2;
  result = btConvexHullInternal::Int128::mul(v3, v4);
  if (v5 < 0)
  {
    return -result;
  }

  return result;
}

unint64_t btConvexHullInternal::Int128::mul(uint64_t this, uint64_t a2)
{
  if (this >= 0)
  {
    v2 = this;
  }

  else
  {
    v2 = -this;
  }

  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = -a2;
  }

  if ((a2 ^ this) >= 0)
  {
    return v3 * v2 + (((HIDWORD(v3) * v2) + (v3 * HIDWORD(v2))) << 32);
  }

  else
  {
    return -(v3 * v2 + (((HIDWORD(v3) * v2) + (v3 * HIDWORD(v2))) << 32));
  }
}

uint64_t btConvexHullInternal::Rational64::compare(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  result = (v3 - v4);
  if (v3 == v4)
  {
    if (v3)
    {
      v7 = btConvexHullInternal::Int128::mul(*a1, *(a2 + 8));
      v9 = v8;
      v10 = btConvexHullInternal::Int128::mul(*(a1 + 8), *a2);
      if (v7 >= v10)
      {
        v12 = v7 > v10;
      }

      else
      {
        v12 = -1;
      }

      if (v9 <= v11)
      {
        v13 = v12;
      }

      else
      {
        v13 = 1;
      }

      if (v9 >= v11)
      {
        v14 = v13;
      }

      else
      {
        v14 = -1;
      }

      return (v14 * v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t btConvexHullInternal::Rational128::compare(btConvexHullInternal::Rational128 *this, const btConvexHullInternal::Rational128 *a2)
{
  v4 = *(this + 8);
  v5 = *(a2 + 8);
  if (v4 != v5)
  {
    return (v4 - v5);
  }

  if (!v4)
  {
    return 0;
  }

  v18 = v2;
  v19 = v3;
  if (*(this + 36) == 1)
  {
    return -btConvexHullInternal::Rational128::compare(a2, *this * v4);
  }

  btConvexHullInternal::DMul<btConvexHullInternal::Int128,unsigned long long>::mul(*this, *(this + 1), *(a2 + 2), *(a2 + 3), &v16, &v14);
  btConvexHullInternal::DMul<btConvexHullInternal::Int128,unsigned long long>::mul(*(this + 2), *(this + 3), *a2, *(a2 + 1), &v12, &v10);
  if (v15 < v11)
  {
    goto LABEL_8;
  }

  if (v15 > v11)
  {
LABEL_10:
    v9 = 1;
    return (*(this + 8) * v9);
  }

  if (v14 >= v10)
  {
    if (v14 > v10)
    {
      goto LABEL_10;
    }

    if (v17 >= v13)
    {
      if (v17 <= v13)
      {
        v9 = v16 > v12;
        if (v16 < v12)
        {
          v9 = -1;
        }

        return (*(this + 8) * v9);
      }

      goto LABEL_10;
    }
  }

LABEL_8:
  v9 = -1;
  return (*(this + 8) * v9);
}

uint64_t btConvexHullInternal::Rational128::compare(btConvexHullInternal::Rational128 *this, uint64_t a2)
{
  if (*(this + 36) == 1)
  {
    v3 = *this * *(this + 8);
    v4 = v3 <= a2;
    if (v3 >= a2)
    {
      v5 = 0;
    }

    else
    {
      v5 = -1;
    }

    if (v4)
    {
      return v5;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (a2 < 1)
    {
      v6 = *(this + 8);
      if ((a2 & 0x8000000000000000) == 0)
      {
        return v6;
      }

      if ((v6 & 0x80000000) == 0)
      {
        return 1;
      }

      a2 = -a2;
    }

    else
    {
      LODWORD(v6) = *(this + 8);
      if (v6 < 1)
      {
        return 0xFFFFFFFFLL;
      }
    }

    v7 = btConvexHullInternal::Int128::operator*(this + 16, a2);
    v9 = *(this + 1);
    if (v9 >= v8)
    {
      if (v9 > v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = *this > v7;
        if (*this < v7)
        {
          v10 = -1;
        }
      }
    }

    else
    {
      v10 = -1;
    }

    return (v6 * v10);
  }
}

unint64_t btConvexHullInternal::DMul<btConvexHullInternal::Int128,unsigned long long>::mul(btConvexHullInternal::Int128 *a1, btConvexHullInternal::Int128 *a2, uint64_t a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v12 = btConvexHullInternal::Int128::mul(a1, a3);
  v14 = v13;
  v15 = btConvexHullInternal::Int128::mul(a1, a4);
  v17 = v16;
  v18 = btConvexHullInternal::Int128::mul(a2, a3);
  v20 = v19;
  result = btConvexHullInternal::Int128::mul(a2, a4);
  v23 = result + v17;
  v24 = __CFADD__(result, v17);
  v25 = __CFADD__(__CFADD__(v18, v15), v23);
  v26 = __CFADD__(v18, v15) + v23;
  v25 |= __CFADD__(v20, v26);
  v26 += v20;
  v27 = v24 + v25 + v22;
  v28 = v26 == -1;
  v29 = __CFADD__(v18 + v15, v14);
  if (__CFADD__(v18 + v15, v14))
  {
    ++v26;
  }

  *a5 = v12;
  a5[1] = v18 + v15 + v14;
  *a6 = v26;
  a6[1] = v27 + (v29 & v28);
  return result;
}

uint64_t btConvexHullInternal::newEdgePair(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  btConvexHullInternal::Pool<btConvexHullInternal::Edge>::newObject((a1 + 16));
  v7 = v6;
  btConvexHullInternal::Pool<btConvexHullInternal::Edge>::newObject((a1 + 16));
  v8 = a1[40];
  *(v7 + 40) = v8;
  *(v9 + 40) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = a3;
  *(v9 + 16) = v7;
  *(v9 + 24) = a2;
  *(v7 + 32) = 0;
  *(v9 + 32) = 0;
  v10 = a1[44];
  v11 = a1[45];
  a1[44] = v10 + 1;
  if (v10 >= v11)
  {
    a1[45] = v10 + 1;
  }

  return v7;
}

double btConvexHullInternal::Pool<btConvexHullInternal::Edge>::newObject(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      *(a1 + 8) = *(v3 + 16);
      v2 = *v3;
    }

    else
    {
      v3 = btAlignedAllocInternal(24, 16);
      v4 = *(a1 + 24);
      *(v3 + 8) = v4;
      *(v3 + 16) = 0;
      v2 = btAlignedAllocInternal(48 * v4, 16);
      *v3 = v2;
      *(v3 + 16) = *a1;
      *a1 = v3;
    }

    v5 = *(v3 + 8);
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = vdupq_n_s64(v5 - 1);
      v8 = 0x100000000;
      v9 = (v2 + 48);
      do
      {
        v10 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v6), xmmword_21C27F640)));
        v11 = vadd_s32(v8, 0x100000001);
        if (v10.i8[0])
        {
          if (v11.i32[0] >= v5)
          {
            v12 = 0;
          }

          else
          {
            v12 = v9;
          }

          *(v9 - 6) = v12;
        }

        if (v10.i8[4])
        {
          v13 = v9 + 6;
          if (v11.i32[1] >= v5)
          {
            v13 = 0;
          }

          *v9 = v13;
        }

        v6 += 2;
        v8 = vadd_s32(v8, 0x200000002);
        v9 += 12;
      }

      while (((v5 + 1) & 0xFFFFFFFE) != v6);
    }
  }

  *(a1 + 16) = *v2;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = 0u;
  return result;
}

uint64_t btConvexHullInternal::mergeProjection(uint64_t a1, uint64_t *a2, uint64_t **a3, uint64_t ***a4, uint64_t **a5)
{
  v5 = a2[3];
  v6 = a3[2];
  if (*(v5 + 104) == *(v6 + 26) && *(v5 + 108) == *(v6 + 27))
  {
    v7 = v6[1];
    if (v7 == v6)
    {
      *a4 = v5;
      v67 = v6[2];
      result = 0;
      if (v67)
      {
        v6 = *(v67 + 24);
      }

      goto LABEL_78;
    }

    v8 = *v6;
    *v7 = *v6;
    v8[1] = v7;
    if (v6 == *a3)
    {
      v9 = *(v8 + 26);
      v10 = *(v7 + 26);
      v11 = v8;
      if (v9 >= v10)
      {
        if (v9 != v10 || (v11 = v8, *(v8 + 27) >= *(v7 + 27)))
        {
          v11 = v7;
        }
      }

      *a3 = v11;
    }

    if (v6 == a3[1])
    {
      v12 = *(v8 + 26);
      v13 = *(v7 + 26);
      if (v12 <= v13 && (v12 != v13 || *(v8 + 27) <= *(v7 + 27)))
      {
        v8 = v7;
      }

      a3[1] = v8;
    }
  }

  v14 = 0;
  v15 = 0;
  v17 = *a2;
  v16 = a2[1];
  v18 = 1;
  v20 = *a3;
  v19 = a3[1];
  v21 = v16;
  v22 = v19;
  v23 = 1;
  do
  {
    v24 = v23;
    v6 = v15;
    v25 = v14;
    v26 = *(v21 + 104);
    v27 = (*(v22 + 26) - v26) * v18;
    if (v27 < 1)
    {
      if (v27 < 0)
      {
        v51 = (v24 & 1) == 0;
LABEL_57:
        v52 = *(v22 + 27);
        v53 = v22[v51];
        v54 = v21;
        while (1)
        {
          v21 = v54;
          v55 = v27;
          v56 = *(v54 + 108);
          v57 = v52 - v56;
          if (v53 != v22)
          {
            v58 = *(v53 + 108) - v52;
            if (v58 >= 0)
            {
              v59 = *(v53 + 104);
              v60 = *(v22 + 26);
              if (v59 == v60 || (v61 = (v59 - v60) * v18, v61 < 0) && v58 * v55 <= v61 * v57)
              {
                v27 = (v59 - *(v21 + 104)) * v18;
                v22 = v22[v51];
                goto LABEL_57;
              }
            }
          }

          v54 = *(v21 + v51 * 8);
          if (v54 == v21)
          {
            break;
          }

          v62 = *(v54 + 104);
          v27 = (*(v22 + 26) - v62) * v18;
          if ((v27 & 0x80000000) == 0)
          {
            break;
          }

          v63 = *(v54 + 108) - v56;
          if (v63 < 1)
          {
            break;
          }

          v64 = *(v21 + 104);
          if (v62 != v64)
          {
            v65 = (v62 - v64) * v18;
            if ((v65 & 0x80000000) == 0 || v63 * v55 >= v65 * v57)
            {
              break;
            }
          }
        }

        v15 = v22;
        v14 = v21;
      }

      else
      {
        v44 = *(v21 + 108);
        if (v24)
        {
          v45 = 8;
        }

        else
        {
          v45 = 0;
        }

        v46 = v21;
        do
        {
          v14 = v46;
          v46 = *(v46 + v45);
          if (v46 == v21)
          {
            break;
          }

          if (*(v46 + 104) != v26)
          {
            break;
          }

          v47 = *(v46 + 108) <= v44;
          v44 = *(v46 + 108);
        }

        while (v47);
        v48 = *(v22 + 27);
        v49 = (v24 & 1) == 0;
        v50 = v22;
        do
        {
          v15 = v50;
          v50 = v50[v49];
          if (v50 == v22)
          {
            break;
          }

          if (*(v50 + 26) != v26)
          {
            break;
          }

          v47 = *(v50 + 27) < v48;
          v48 = *(v50 + 27);
        }

        while (!v47);
      }
    }

    else
    {
      v28 = (v24 & 1) != 0;
      v14 = v21;
      while (1)
      {
        v15 = v22;
        v29 = *(v22 + 27);
        v30 = v27;
        while (1)
        {
          v31 = *(v14 + 108);
          v32 = v29 - v31;
          v33 = *(v14 + v28 * 8);
          if (v33 == v14)
          {
            break;
          }

          v34 = *(v33 + 108);
          v35 = __OFSUB__(v34, v31);
          v36 = v34 - v31;
          if (!((v36 < 0) ^ v35 | (v36 == 0)))
          {
            break;
          }

          v37 = *(v33 + 104);
          v38 = *(v14 + 104);
          if (v37 != v38)
          {
            v39 = (v37 - v38) * v18;
            if ((v39 & 0x80000000) == 0 || v36 * v30 > v39 * v32)
            {
              break;
            }
          }

          v30 = (*(v15 + 26) - v37) * v18;
          v14 = *(v14 + v28 * 8);
        }

        v22 = v15[v28];
        if (v22 == v15)
        {
          break;
        }

        v40 = *(v22 + 26);
        v27 = (v40 - *(v14 + 104)) * v18;
        if (v27 < 1)
        {
          break;
        }

        v41 = *(v22 + 27) - v29;
        if ((v41 & 0x80000000) == 0)
        {
          break;
        }

        v42 = *(v15 + 26);
        if (v40 != v42)
        {
          v43 = (v40 - v42) * v18;
          if ((v43 & 0x80000000) == 0 || v41 * v30 >= v43 * v32)
          {
            break;
          }
        }
      }
    }

    v23 = 0;
    v18 = -1;
    v21 = *a2;
    v22 = *a3;
  }

  while ((v24 & 1) != 0);
  *(v14 + 8) = v15;
  *v15 = v14;
  *v25 = v6;
  v6[1] = v25;
  if (*(v20 + 26) < *(v17 + 104))
  {
    *a2 = v20;
  }

  if (*(v19 + 26) >= *(v16 + 104))
  {
    a2[1] = v19;
  }

  a2[3] = a3[3];
  *a4 = v25;
  result = 1;
LABEL_78:
  *a5 = v6;
  return result;
}

void btConvexHullInternal::computeInternal(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v5 = a3 - a2;
  if (a3 == a2)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else if (v5 == 2)
  {
    v7 = *(*(a1 + 144) + 8 * a2);
    v8 = v7 + 128;
    v10 = *(v7 + 104);
    v9 = *(v7 + 108);
    v12 = *(v7 + 232);
    v11 = *(v7 + 236);
    if (v10 == v12 && v9 == v11)
    {
      v33 = *(v7 + 112);
      v34 = *(v7 + 240);
      v35 = v33 <= v34;
      if (v33 == v34)
      {
        goto LABEL_5;
      }

      v36 = v33 > v34;
      if (v35)
      {
        v22 = *(*(a1 + 144) + 8 * a2);
      }

      else
      {
        v22 = v7 + 128;
      }

      *(v7 + (v36 << 7)) = v7 + (v36 << 7);
      *(v22 + 8) = v22;
      if (!v35)
      {
        v8 = v7;
      }

      *a4 = v22;
      *(a4 + 8) = v22;
      v23 = v22;
      v7 = v22;
    }

    else
    {
      v14 = v10 == v12;
      if (v9 >= v11)
      {
        v14 = 0;
      }

      v17 = v10 < v12;
      v15 = v10 < v12;
      v16 = v17 || v14;
      v17 = v9 < v11;
      *v7 = v8;
      *(v7 + 8) = v8;
      *(v7 + 128) = v7;
      *(v7 + 136) = v7;
      v18 = v9 == v11 && v15;
      if (v17)
      {
        v18 = 1;
      }

      if (v16)
      {
        v19 = v7;
      }

      else
      {
        v19 = v7 + 128;
      }

      if (v16)
      {
        v20 = v7 + 128;
      }

      else
      {
        v20 = v7;
      }

      *a4 = v19;
      *(a4 + 8) = v20;
      v21 = v18 == 0;
      if (v18)
      {
        v22 = v7;
      }

      else
      {
        v22 = v7 + 128;
      }

      if (v21)
      {
        v23 = v7;
      }

      else
      {
        v23 = v7 + 128;
      }
    }

    *(a4 + 16) = v22;
    *(a4 + 24) = v23;
    v37 = btConvexHullInternal::newEdgePair(a1, v7, v8);
    *v37 = v37;
    v37[1] = v37;
    *(v7 + 16) = v37;
    v38 = v37[2];
    *v38 = v38;
    v38[1] = v38;
    *(v8 + 16) = v38;
  }

  else
  {
    if (v5 == 1)
    {
      v7 = *(*(a1 + 144) + 8 * a2);
LABEL_5:
      *(v7 + 8) = v7;
      *(v7 + 16) = 0;
      *v7 = v7;
      *a4 = v7;
      *(a4 + 8) = v7;
      *(a4 + 16) = v7;
      *(a4 + 24) = v7;
      return;
    }

    v25 = ((v5 + (v5 >> 31)) >> 1) + a2;
    if (v5 / 2 + a2 < a3)
    {
      v26 = *(a1 + 144);
      v27 = *(v26 + 8 * v25 - 8);
      v28 = v27[26];
      v29 = v27[27];
      v30 = v27[28];
      v31 = v25;
      do
      {
        v32 = *(v26 + 8 * v31);
        if (v32[26] != v28)
        {
          break;
        }

        if (v32[27] != v29)
        {
          break;
        }

        if (v32[28] != v30)
        {
          break;
        }

        ++v31;
      }

      while (v31 < a3);
    }

    btConvexHullInternal::computeInternal(a1);
    memset(v39, 0, sizeof(v39));
    btConvexHullInternal::computeInternal(a1);
    btConvexHullInternal::merge(a1, a4, v39);
  }
}

void btConvexHullInternal::merge(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    return;
  }

  if (!*(a2 + 8))
  {
    v32 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v32;
    return;
  }

  --a1[40];
  v127 = 0;
  v128 = 0;
  if (btConvexHullInternal::mergeProjection(a1, a2, a3, &v128, &v127))
  {
    v4 = v127;
    v96 = *(v127 + 26);
    v5 = v96;
    v7 = *(v128 + 26);
    v6 = *(v128 + 27);
    v8 = v96 - v7;
    v111 = *(v127 + 27);
    v9 = v111;
    v10 = v111 - v6;
    v94 = *(v127 + 28);
    v11 = *(v128 + 28);
    v12 = v94 - v11;
    v13 = v7 - v96;
    v14 = v8 * v12;
    v123 = (v96 - v7) | (v10 << 32);
    v124 = v12 | 0xFFFFFFFF00000000;
    v15 = v10 * v12;
    v16 = -(v8 * v8) - v10 * v10;
    v101 = v128;
    v17 = v128[2];
    v118 = 0;
    v18 = &xmmword_21C2A4000;
    v106 = v14;
    if (v17)
    {
      v99 = v127;
      v19 = 0;
      v20 = v17;
      v103 = v6;
      do
      {
        v21 = v20[3];
        v22 = v21[26] - v7;
        v23 = v21[27] - v6;
        if (!(v23 * v13 + v10 * v22) && v22 * v14 + v15 * v23 + v16 * (v21[28] - v11) >= 1)
        {
          if (!v19 || (v121 = xmmword_21C2A4790, v24 = v10, v25 = v13, v26 = v19, v27 = v16, v28 = v15, v29 = v11, Orientation = btConvexHullInternal::getOrientation(v19, v20, &v123, &v121), v19 = v26, v13 = v25, v10 = v24, v11 = v29, v15 = v28, v16 = v27, v14 = v106, v9 = v111, v5 = v96, v83 = Orientation == 1, v6 = v103, v83))
          {
            v19 = v20;
          }
        }

        v20 = *v20;
      }

      while (v20 != v17);
      v118 = v19;
      v31 = v19 != 0;
      v4 = v99;
      v18 = &xmmword_21C2A4000;
    }

    else
    {
      v31 = 0;
    }

    v36 = v4[2];
    v115 = 0;
    if (v36)
    {
      v37 = v4;
      v38 = 0;
      v104 = v18[121];
      v39 = v36;
      do
      {
        v40 = v39[3];
        v41 = v40[26] - v5;
        v42 = v40[27] - v9;
        if (!(v42 * v13 + v10 * v41) && v41 * v14 + v15 * v42 + v16 * (v40[28] - v94) >= 1)
        {
          if (!v38 || (v121 = v104, v43 = btConvexHullInternal::getOrientation(v38, v39, &v123, &v121), v14 = v106, v9 = v111, v5 = v96, v43 == 2))
          {
            v38 = v39;
          }
        }

        v39 = *v39;
      }

      while (v39 != v36);
      v115 = v38;
      v44 = v38 != 0;
      v4 = v37;
    }

    else
    {
      v44 = 0;
    }

    v33 = v101;
    v35 = v96;
    if (!v31 && !v44)
    {
      goto LABEL_32;
    }

    btConvexHullInternal::findEdgeForCoplanarFaces(a1, v101, v4, &v118, &v115, 0, 0);
    if (v118)
    {
      v33 = v118[3];
      v128 = v33;
    }

    if (v115)
    {
      v4 = v115[3];
      v127 = v4;
      v35 = *(v4 + 26);
      v111 = *(v4 + 27);
      v45 = *(v4 + 28);
    }

    else
    {
LABEL_32:
      v45 = v94;
    }

    v34 = (v45 + 1);
  }

  else
  {
    v4 = v127;
    v33 = v128;
    v111 = *(v127 + 27);
    v34 = *(v127 + 28);
    v35 = (*(v127 + 26) + 1);
  }

  v107 = 0;
  v108 = 0;
  v95 = 0;
  v97 = 0;
  v109 = 0;
  v110 = 0;
  v102 = v33;
  v105 = 0;
  v98 = 0;
  v46 = 1;
  v47 = v33;
  v100 = v4;
  v48 = v4;
  while (1)
  {
    v49 = *(v47 + 26);
    v50 = *(v47 + 27);
    v51 = *(v48 + 26) - v49;
    v52 = *(v48 + 27) - v50;
    v53 = *(v47 + 28);
    v54 = *(v48 + 28) - v53;
    v55 = v35;
    LODWORD(v49) = v35 - v49;
    LODWORD(v50) = v111 - v50;
    v56 = v34;
    LODWORD(v53) = v34 - v53;
    v126[0] = v51 | (v52 << 32);
    v126[1] = v54 | 0xFFFFFFFF00000000;
    v123 = v54 * v50 - v52 * v53;
    v124 = v51 * v53 - v54 * v49;
    v125 = v52 * v49 - v51 * v50;
    *&v121 = v125 * v52 - v124 * v54;
    *(&v121 + 1) = v123 * v54 - v125 * v51;
    v122 = v124 * v51 - v123 * v52;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    MaxAngle = btConvexHullInternal::findMaxAngle(a1, 0, v47, v126, &v123, &v121, &v118);
    v115 = 0;
    v116 = 0;
    v117 = 0;
    v58 = btConvexHullInternal::findMaxAngle(a1, 1, v48, v126, &v123, &v121, &v115);
    if (!(MaxAngle | v58))
    {
      v84 = btConvexHullInternal::newEdgePair(a1, v47, v48);
      *v84 = v84;
      v84[1] = v84;
      v47[2] = v84;
      v85 = v84[2];
      *v85 = v85;
      v85[1] = v85;
      v48[2] = v85;
      return;
    }

    v59 = v58;
    if (MaxAngle)
    {
      v60 = -1;
    }

    else
    {
      v60 = 1;
    }

    if (MaxAngle && v58)
    {
      v60 = btConvexHullInternal::Rational64::compare(&v118, &v115);
    }

    if ((v46 & 1) == 0)
    {
      if (v60 < 0)
      {
        if (v120 < 0 && !v119)
        {
          v114 = MaxAngle;
          v63 = v105;
          v35 = v55;
          v65 = v107;
          v62 = v109;
          v73 = v110;
          goto LABEL_70;
        }
      }

      else if (v117 < 0 && !v116)
      {
        v64 = v108;
        v62 = v109;
        v63 = v105;
        v65 = v107;
        goto LABEL_48;
      }
    }

    v61 = btConvexHullInternal::newEdgePair(a1, v47, v48);
    v62 = v61;
    v63 = v61;
    if (v109)
    {
      v109[1] = v61;
      v63 = v105;
    }

    *v61 = v109;
    v64 = v61[2];
    v65 = v64;
    if (v108)
    {
      *v108 = v64;
      v65 = v107;
    }

    v64[1] = v108;
LABEL_48:
    v113 = v59;
    v114 = MaxAngle;
    v66 = v59;
    if (v60)
    {
      if (v60 < 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v67 = v65;
      v68 = v63;
      btConvexHullInternal::findEdgeForCoplanarFaces(a1, v128, v127, &v114, &v113, 0, 0);
      v63 = v68;
      v65 = v67;
      v66 = v113;
    }

    if (v66)
    {
      v69 = v110;
      if (v110)
      {
        v112 = v63;
        v70 = v65;
        v71 = *v110;
        if (*v110 != v59)
        {
          do
          {
            v72 = *v71;
            btConvexHullInternal::removeEdgePair(a1, v71);
            v71 = v72;
          }

          while (v72 != v59);
        }

        v65 = v70;
        v63 = v112;
        if (!v64)
        {
          goto LABEL_69;
        }

LABEL_68:
        *v69 = v65;
        v65[1] = v69;
        v65 = 0;
        *v64 = v59;
        *(v59 + 8) = v64;
        v66 = v113;
      }

      else
      {
        if (v64)
        {
          v69 = *(v59 + 8);
          v95 = v65;
          goto LABEL_68;
        }

        v95 = v59;
      }

LABEL_69:
      v108 = 0;
      v35 = *(v127 + 26);
      v111 = *(v127 + 27);
      v56 = *(v127 + 28);
      v73 = *(v66 + 16);
      v127 = *(v66 + 24);
      goto LABEL_70;
    }

LABEL_62:
    v108 = v64;
    v35 = v55;
    v73 = v110;
LABEL_70:
    if (v60 > 0 || (v74 = v114) == 0)
    {
      v47 = v128;
      v81 = v100;
      v80 = v102;
      v34 = v56;
      goto LABEL_84;
    }

    if (v98)
    {
      v75 = v63;
      v76 = v65;
      v78 = (v98 + 8);
      v77 = *(v98 + 8);
      if (v77 != MaxAngle)
      {
        do
        {
          v79 = v77[1];
          btConvexHullInternal::removeEdgePair(a1, v77);
          v77 = v79;
        }

        while (v79 != MaxAngle);
      }

      if (!v62)
      {
        v80 = v102;
        v65 = v76;
        v63 = v75;
        goto LABEL_83;
      }

      v63 = v75;
      *v75 = v98;
      v80 = v102;
      v65 = v76;
    }

    else
    {
      if (!v62)
      {
        v97 = MaxAngle;
        v80 = v102;
        goto LABEL_83;
      }

      v82 = *MaxAngle;
      *v63 = *MaxAngle;
      v78 = (v82 + 1);
      v97 = v63;
      v80 = v102;
    }

    *v78 = v63;
    *MaxAngle = v62;
    v62[1] = MaxAngle;
    v74 = v114;
    v63 = 0;
LABEL_83:
    v62 = 0;
    v35 = *(v128 + 26);
    v111 = *(v128 + 27);
    v34 = *(v128 + 28);
    v47 = *(v74 + 24);
    v98 = *(v74 + 16);
    v128 = v47;
    v81 = v100;
LABEL_84:
    v48 = v127;
    v83 = v47 == v80 && v127 == v81;
    if (v83)
    {
      break;
    }

    v109 = v62;
    v110 = v73;
    v107 = v65;
    v46 = 0;
    v105 = v63;
  }

  if (!v98)
  {
    *v63 = v62;
    v62[1] = v63;
    v128[2] = v62;
    if (v73)
    {
      goto LABEL_97;
    }

    goto LABEL_102;
  }

  v86 = v63;
  v87 = v65;
  v88 = *(v98 + 8);
  if (v88 != v97)
  {
    do
    {
      v89 = v88[1];
      btConvexHullInternal::removeEdgePair(a1, v88);
      v88 = v89;
    }

    while (v89 != v97);
  }

  v65 = v87;
  if (v62)
  {
    *v86 = v98;
    *(v98 + 8) = v86;
    *v97 = v62;
    v62[1] = v97;
  }

  if (!v73)
  {
LABEL_102:
    *v108 = v65;
    v65[1] = v108;
    v127[2] = v108;
    return;
  }

LABEL_97:
  v90 = v65;
  v91 = v73;
  v92 = *v73;
  if (*v73 != v95)
  {
    do
    {
      v93 = *v92;
      btConvexHullInternal::removeEdgePair(a1, v92);
      v92 = v93;
    }

    while (v93 != v95);
  }

  if (v108)
  {
    *v91 = v90;
    v90[1] = v91;
    *v108 = v95;
    v95[1] = v108;
  }
}

uint64_t btConvexHullInternal::getOrientation(void *a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v4 = a1[1];
  if (*a1 != a2)
  {
    return v4 == a2;
  }

  if (v4 != a2)
  {
    return 2;
  }

  v7 = a3[1];
  v6 = a3[2];
  v8 = a4[1];
  v9 = a4[2];
  v10 = v6 * v8 - v7 * v9;
  v11 = *a3 * v9 - *a4 * v6;
  v12 = *a4 * v7 - *a3 * v8;
  v13 = a1[3];
  v14 = *(a2 + 24);
  v15 = *(*(a2 + 16) + 24);
  v16 = v15[26];
  v17 = v15[27];
  LODWORD(v15) = v15[28];
  if (((v14[28] - v15) * (v13[27] - v17) - (v14[27] - v17) * (v13[28] - v15)) * v10 + ((v14[27] - v17) * (v13[26] - v16) - (v14[26] - v16) * (v13[27] - v17)) * v12 + ((v14[26] - v16) * (v13[28] - v15) - (v14[28] - v15) * (v13[26] - v16)) * v11 <= 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void *btConvexHullInternal::findMaxAngle(uint64_t a1, int a2, uint64_t a3, _DWORD *a4, void *a5, void *a6, uint64_t a7)
{
  v7 = *(a3 + 16);
  if (v7)
  {
    v15 = 0;
    v16 = *(a3 + 16);
    while (*(v16 + 40) <= *(a1 + 160))
    {
LABEL_19:
      v16 = *v16;
      if (v16 == v7)
      {
        return v15;
      }
    }

    v17 = *(v16 + 24);
    v18 = v17[26] - *(a3 + 104);
    v19 = v17[27] - *(a3 + 108);
    v20 = v17[28] - *(a3 + 112);
    v29[0] = v18 | (v19 << 32);
    v29[1] = v20 | 0xFFFFFFFF00000000;
    v21 = *a6 * v18 + a6[1] * v19 + a6[2] * v20;
    if (v21 < 1)
    {
      if (v21 < 0)
      {
        v22 = 0;
        v28 = -1;
        v21 = -v21;
        v23 = 1;
      }

      else
      {
        v21 = 0;
        v23 = 0;
        v28 = 0;
        v22 = 1;
      }
    }

    else
    {
      v22 = 0;
      v28 = 1;
      v23 = -1;
    }

    v24 = *a5 * v18 + a5[1] * v19 + a5[2] * v20;
    *&v27 = v21;
    if (v24 <= 0)
    {
      if ((v24 & 0x8000000000000000) == 0)
      {
        *(&v27 + 1) = 0;
        if (v22)
        {
LABEL_18:
          v7 = *(a3 + 16);
          goto LABEL_19;
        }

LABEL_11:
        if (!v15 || (v25 = btConvexHullInternal::Rational64::compare(&v27, a7), v25 < 0))
        {
          *a7 = v27;
          *(a7 + 16) = v28;
          v15 = v16;
        }

        else if (!v25 && (btConvexHullInternal::getOrientation(v15, v16, a4, v29) != 2) != a2)
        {
          v15 = v16;
        }

        goto LABEL_18;
      }

      v28 = v23;
      v24 = -v24;
    }

    *(&v27 + 1) = v24;
    goto LABEL_11;
  }

  return 0;
}

uint64_t btConvexHullInternal::findEdgeForCoplanarFaces(uint64_t a1, int *a2, int *a3, uint64_t *a4, uint64_t *a5, unsigned int *a6, unsigned int *a7)
{
  v9 = *a5;
  v10 = a2;
  if (*a4)
  {
    v10 = *(*a4 + 24);
  }

  v148 = *a4;
  v11 = v10[26];
  v12 = v10[27];
  v13 = v10[28];
  v14 = a3;
  if (v9)
  {
    v14 = *(v9 + 24);
  }

  v15 = v14[26];
  v16 = v14[27];
  v17 = v14[28];
  v18 = a2[26];
  v19 = a2[27];
  v20 = a3[26] - v18;
  v21 = a3[27] - v19;
  v22 = a2[28];
  v23 = a3[28] - v22;
  if (v148)
  {
    v24 = v148;
  }

  else
  {
    v24 = v9;
  }

  v25 = *(v24 + 24);
  v26 = v25[26] - v18;
  v27 = v25[27] - v19;
  LODWORD(v25) = v25[28] - v22;
  v28 = v27 * v23 - v25 * v21;
  v29 = v25 * v20 - v26 * v23;
  result = (v26 * v21 - v27 * v20);
  v31 = result;
  v32 = v22 * result + v18 * v28 + v19 * v29;
  v33 = result * v21 - v29 * v23;
  v34 = v28 * v23 - result * v20;
  v35 = v29 * v20 - v28 * v21;
  v36 = v33 * v11 + v34 * v12 + v35 * v13;
  v157 = v35;
  v147 = a5;
  if (!v148 || *(v148 + 24) == a6)
  {
    v42 = v9;
  }

  else
  {
    v37 = *(*(v148 + 16) + 8);
    v39 = *(v37 + 24);
    v38 = (v37 + 24);
    v40 = v39[26];
    v41 = v39[27];
    result = v39[28];
    if (v40 * v28 + v41 * v29 + result * v31 >= v32)
    {
      v94 = *(a1 + 160);
      do
      {
        v95 = v33 * v40 + v34 * v41 + v35 * result;
        if (*(v37 + 40) == v94 || v95 <= v36)
        {
          break;
        }

        v36 = v95;
        *a4 = v37;
        v97 = *v38;
        v11 = v97[26];
        v12 = v97[27];
        v13 = v97[28];
        if (v97 == a6)
        {
          break;
        }

        v37 = *(*(v37 + 16) + 8);
        v38 = (v37 + 24);
        v98 = *(v37 + 24);
        v40 = v98[26];
        v41 = v98[27];
        result = v98[28];
      }

      while (v40 * v28 + v41 * v29 + result * v31 >= v32);
    }

    v42 = *a5;
    v35 = v29 * v20 - v28 * v21;
  }

  v43 = v33 * v15 + v34 * v16 + v35 * v17;
  if (v42)
  {
    if (*(v42 + 24) == a7 || (v44 = **(v42 + 16), v46 = *(v44 + 24), v45 = (v44 + 24), v47 = v46[26], v48 = v46[27], result = v47 * v28 + v48 * v29, v49 = v46[28], result + v49 * v31 < v32))
    {
LABEL_16:
      v50 = v42;
    }

    else
    {
      v99 = *(a1 + 160);
      do
      {
        v50 = v42;
        v42 = v44;
        if (*(v44 + 40) == v99 || v33 * v47 + v34 * v48 + v35 * v49 <= v43)
        {
          break;
        }

        v43 = v33 * v47 + v34 * v48 + v35 * v49;
        *v147 = v44;
        v101 = *v45;
        v15 = v101[26];
        v16 = v101[27];
        v17 = v101[28];
        if (v101 == a7)
        {
          goto LABEL_16;
        }

        v44 = **(v44 + 16);
        v102 = **(v42 + 16);
        v103 = *(v102 + 24);
        v45 = (v102 + 24);
        v47 = v103[26];
        v48 = v103[27];
        v49 = v103[28];
        result = v47 * v28 + v48 * v29 + v49 * v31;
        v50 = v42;
      }

      while (result >= v32);
    }
  }

  else
  {
    v50 = 0;
  }

  v51 = v43 - v36;
  v153 = v21;
  v154 = v20;
  v151 = v33;
  v152 = v23;
  v145 = v29;
  v146 = v28;
  v144 = v31;
  v150 = v34;
  if (v43 - v36 < 1)
  {
    if ((v51 & 0x8000000000000000) == 0)
    {
      return result;
    }

    v104 = v15;
    v105 = v17;
    v106 = v16;
    v107 = v43 - v36;
    v143 = v9;
LABEL_97:
    v159 = v105;
    v161 = v104;
    v156 = v106;
    while (1)
    {
      v108 = (v104 - v11) * v20 + (v106 - v12) * v21 + (v105 - v13) * v23;
      if (v50)
      {
        if (*(v50 + 24) != a7)
        {
          v109 = *(*(v50 + 8) + 16);
          if (*(v109 + 40) > *(a1 + 160))
          {
            v110 = *(v109 + 24);
            v111 = v110[26];
            v112 = v110[27];
            v113 = v110[28];
            v114 = v33 * (v111 - v104) + v34 * (v112 - v106) + v35 * (v113 - v105);
            v115 = (v111 - v104) * v20 + (v112 - v106) * v21 + (v113 - v105) * v23;
            if (v114)
            {
              if (v114 < 0)
              {
                v116 = v115 <= 0;
                if ((v115 & 0x80000000) != 0)
                {
                  v117 = -v115;
                }

                else
                {
                  v117 = 0;
                }

                v118 = (v115 >> 31) & 1;
                if (v115 <= 0)
                {
                  v115 = v117;
                }

                if (v116)
                {
                  v119 = v118;
                }

                else
                {
                  v119 = -1;
                }

                v170 = v119;
                v168 = v115;
                v169 = -v114;
                v149 = (v104 - v11) * v20 + (v106 - v12) * v21 + (v105 - v13) * v23;
                if (v108 < 1)
                {
                  v122 = v107;
                  if ((v108 & 0x80000000) != 0)
                  {
                    v167 = -1;
                    v121 = -v108;
                    v120 = 1;
                  }

                  else
                  {
                    v121 = 0;
                    v120 = 0;
                    v167 = 0;
                  }
                }

                else
                {
                  v167 = 1;
                  v120 = -1;
                  v121 = (v104 - v11) * v20 + (v106 - v12) * v21 + (v105 - v13) * v23;
                  v122 = v107;
                }

                v123 = v50;
                v165 = v121;
                v124 = v122;
                if (v122 <= 0)
                {
                  if (v122 < 0)
                  {
                    v167 = v120;
                    v124 = -v122;
                  }

                  else
                  {
                    v124 = 0;
                  }
                }

                v166 = v124;
                result = btConvexHullInternal::Rational64::compare(&v168, &v165);
                LODWORD(v21) = v153;
                LODWORD(v20) = v154;
                v33 = v151;
                LODWORD(v23) = v152;
                v35 = v157;
                v105 = v159;
                v104 = v161;
                v106 = v156;
                v50 = v123;
                v108 = v149;
                v34 = v150;
                if (result < 1)
                {
LABEL_151:
                  v107 = v33 * (v111 - v11) + v34 * (v112 - v12) + v35 * (v113 - v13);
                  if (v50 == v143)
                  {
                    v50 = 0;
                  }

                  else
                  {
                    v50 = v109;
                  }

                  *v147 = v50;
                  v104 = v111;
                  v106 = v112;
                  v105 = v113;
                  goto LABEL_97;
                }
              }
            }

            else if (v115 > 0)
            {
              goto LABEL_151;
            }
          }
        }
      }

      v125 = *a4;
      if (!*a4)
      {
        return result;
      }

      if (*(v125 + 24) == a6)
      {
        return result;
      }

      v126 = *(*(v125 + 16) + 8);
      if (*(v126 + 40) <= *(a1 + 160))
      {
        return result;
      }

      v127 = *(v126 + 24);
      v128 = v127[26];
      v129 = v127[27];
      v130 = v128 - v11;
      v131 = v129 - v12;
      v132 = v127[28];
      if (v146 * (v128 - v11) + v145 * (v129 - v12) + v144 * (v132 - v13))
      {
        return result;
      }

      v133 = v33 * (v104 - v128) + v34 * (v106 - v129) + v35 * (v105 - v132);
      if ((v133 & 0x8000000000000000) == 0)
      {
        return result;
      }

      v134 = v33 * v130 + v34 * v131 + v35 * (v132 - v13);
      v135 = v130 * v20 + v131 * v21 + (v132 - v13) * v23;
      if (v134)
      {
        if ((v134 & 0x8000000000000000) == 0)
        {
          return result;
        }

        v136 = v135 <= 0;
        if ((v135 & 0x80000000) != 0)
        {
          v137 = -v135;
        }

        else
        {
          v137 = 0;
        }

        v138 = (v135 >> 31) & 1;
        if (v135 <= 0)
        {
          v135 = v137;
        }

        if (v136)
        {
          v139 = v138;
        }

        else
        {
          v139 = -1;
        }

        v170 = v139;
        v168 = v135;
        v169 = -v134;
        if (v108 < 1)
        {
          if ((v108 & 0x80000000) != 0)
          {
            v167 = -1;
            v108 = -v108;
            v140 = 1;
          }

          else
          {
            v108 = 0;
            v140 = 0;
            v167 = 0;
          }
        }

        else
        {
          v167 = 1;
          v140 = -1;
        }

        v165 = v108;
        if (v107 <= 0)
        {
          if (v107 < 0)
          {
            v167 = v140;
            v107 = -v107;
          }

          else
          {
            v107 = 0;
          }
        }

        v166 = v107;
        result = btConvexHullInternal::Rational64::compare(&v168, &v165);
        LODWORD(v21) = v153;
        LODWORD(v20) = v154;
        v33 = v151;
        LODWORD(v23) = v152;
        v34 = v150;
        v35 = v157;
        v105 = v159;
        v104 = v161;
        v106 = v156;
        if ((result & 0x80000000) == 0)
        {
          return result;
        }
      }

      else if (v135 <= 0)
      {
        return result;
      }

      *a4 = v126;
      v141 = *(v126 + 24);
      LODWORD(v11) = v141[26];
      LODWORD(v12) = v141[27];
      LODWORD(v13) = v141[28];
      v50 = *v147;
      v107 = v133;
    }
  }

  v142 = a7;
  v52 = v15;
  v53 = v17;
  v54 = v16;
  v55 = v148;
  while (1)
  {
    v56 = *a4;
    v155 = v54;
    while (1)
    {
      v57 = ((v52 - v11) * v20 + (v54 - v12) * v21 + (v53 - v13) * v23);
      if (!v56)
      {
        break;
      }

      if (v56[3] == a6)
      {
        break;
      }

      v58 = *(*v56 + 16);
      if (*(v58 + 40) <= *(a1 + 160))
      {
        break;
      }

      v59 = *(v58 + 24);
      v60 = v59[26];
      v61 = v59[27];
      v62 = v59[28];
      v63 = v33 * (v60 - v11) + v34 * (v61 - v12) + v35 * (v62 - v13);
      v64 = (v60 - v11) * v20 + (v61 - v12) * v21 + (v62 - v13) * v23;
      if (v63)
      {
        if ((v63 & 0x8000000000000000) == 0)
        {
          break;
        }

        v158 = v12;
        v160 = v13;
        v65 = v64 <= 0;
        if ((v64 & 0x80000000) != 0)
        {
          v66 = -v64;
        }

        else
        {
          v66 = 0;
        }

        v67 = (v64 >> 31) & 1;
        if (v64 <= 0)
        {
          v64 = v66;
        }

        if (v65)
        {
          v68 = v67;
        }

        else
        {
          v68 = -1;
        }

        v170 = v68;
        v168 = v64;
        v169 = -v63;
        v69 = v11;
        if (v57 < 1)
        {
          if ((v57 & 0x80000000) != 0)
          {
            v167 = -1;
            v71 = -v57;
            v70 = 1;
          }

          else
          {
            v71 = 0;
            v70 = 0;
            v167 = 0;
          }
        }

        else
        {
          v167 = 1;
          v70 = -1;
          v71 = v57;
        }

        v72 = v53;
        v73 = v52;
        v165 = v71;
        v74 = v51;
        if (v51 <= 0)
        {
          if (v51 < 0)
          {
            v167 = v70;
            v74 = -v51;
          }

          else
          {
            v74 = 0;
          }
        }

        v166 = v74;
        v75 = v51;
        v76 = btConvexHullInternal::Rational64::compare(&v168, &v165);
        v51 = v75;
        LODWORD(v21) = v153;
        LODWORD(v20) = v154;
        v33 = v151;
        LODWORD(v23) = v152;
        v52 = v73;
        v11 = v69;
        v35 = v157;
        v12 = v158;
        v13 = v160;
        v54 = v155;
        v53 = v72;
        v55 = v148;
        v34 = v150;
        if (v76 < 0)
        {
          break;
        }
      }

      else if ((v64 & 0x80000000) == 0)
      {
        break;
      }

      v51 = v33 * (v52 - v60) + v34 * (v54 - v61) + v35 * (v53 - v62);
      if (v56 == v55)
      {
        v56 = 0;
      }

      else
      {
        v56 = v58;
      }

      *a4 = v56;
      v11 = v60;
      v12 = v61;
      v13 = v62;
    }

    result = v51;
    v77 = *v147;
    if (!*v147)
    {
      return result;
    }

    if (*(v77 + 24) == v142)
    {
      return result;
    }

    v78 = **(v77 + 16);
    if (*(v78 + 40) <= *(a1 + 160))
    {
      return result;
    }

    v79 = *(v78 + 24);
    v80 = v79[26];
    v81 = v79[27];
    v82 = v80 - v52;
    v83 = v81 - v54;
    v84 = v79[28];
    if (v146 * v82 + v145 * (v81 - v54) + v144 * (v84 - v53))
    {
      return result;
    }

    v85 = v33 * (v80 - v11) + v34 * (v81 - v12) + v35 * (v84 - v13);
    if (v85 < 1)
    {
      return result;
    }

    v86 = v33 * v82 + v34 * v83 + v35 * (v84 - v53);
    v87 = v82 * v20 + v83 * v21 + (v84 - v53) * v23;
    if (!v86)
    {
      if ((v87 & 0x80000000) != 0)
      {
        goto LABEL_77;
      }

      return result;
    }

    if ((v86 & 0x8000000000000000) == 0)
    {
      return result;
    }

    v88 = v87 <= 0;
    if ((v87 & 0x80000000) != 0)
    {
      v89 = -v87;
    }

    else
    {
      v89 = 0;
    }

    v90 = (v87 >> 31) & 1;
    if (v87 <= 0)
    {
      v87 = v89;
    }

    if (v88)
    {
      v91 = v90;
    }

    else
    {
      v91 = -1;
    }

    v170 = v91;
    v168 = v87;
    v169 = -v86;
    if (v57 < 1)
    {
      if ((v57 & 0x80000000) != 0)
      {
        v167 = -1;
        v57 = -v57;
        v92 = 1;
      }

      else
      {
        v57 = 0;
        v92 = 0;
        v167 = 0;
      }
    }

    else
    {
      v167 = 1;
      v92 = -1;
    }

    v165 = v57;
    if (v51 <= 0)
    {
      if (v51 < 0)
      {
        v167 = v92;
        result = -v51;
      }

      else
      {
        result = 0;
      }
    }

    v166 = result;
    result = btConvexHullInternal::Rational64::compare(&v168, &v165);
    LODWORD(v21) = v153;
    LODWORD(v20) = v154;
    v33 = v151;
    LODWORD(v23) = v152;
    v34 = v150;
    v35 = v157;
    if (result <= 0)
    {
      return result;
    }

LABEL_77:
    *v147 = v78;
    v93 = *(v78 + 24);
    v52 = v93[26];
    v54 = v93[27];
    v53 = v93[28];
    v51 = v85;
  }
}

double btConvexHullInternal::removeEdgePair(uint64_t a1, void *a2)
{
  v2 = *a2;
  v3 = a2[2];
  if (*a2 == a2)
  {
    v2 = 0;
  }

  else
  {
    v4 = a2[1];
    v2[1] = v4;
    *v4 = v2;
  }

  *(v3[3] + 16) = v2;
  v5 = *v3;
  if (*v3 == v3)
  {
    v5 = 0;
  }

  else
  {
    v6 = v3[1];
    v5[1] = v6;
    *v6 = v5;
  }

  *(a2[3] + 16) = v5;
  result = 0.0;
  a2[4] = 0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  *a2 = *(a1 + 80);
  *(a1 + 80) = a2;
  v3[4] = 0;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *v3 = *(a1 + 80);
  *(a1 + 80) = v3;
  --*(a1 + 176);
  return result;
}

void btConvexHullInternal::compute(float32x4_t *this, char *a2, char a3, int a4, int a5, double a6, double a7, double a8, int32x4_t a9, int32x4_t a10)
{
  if (a3)
  {
    if (a5 >= 1)
    {
      v15 = xmmword_21C2A47B0;
      v16 = xmmword_21C2A47A0;
      v17 = (a2 + 16);
      v18 = a5;
      do
      {
        *v19.f32 = vcvt_f32_f64(*(v17 - 1));
        a9.i64[0] = *v17;
        *a9.i32 = *v17;
        v19.i64[1] = a9.u32[0];
        v16 = vminq_f32(v16, v19);
        v15 = vmaxq_f32(v15, v19);
        v17 = (v17 + a4);
        --v18;
      }

      while (v18);
      goto LABEL_11;
    }
  }

  else if (a5 >= 1)
  {
    v15 = xmmword_21C2A47B0;
    v16 = xmmword_21C2A47A0;
    v20 = (a2 + 8);
    v21 = a5;
    do
    {
      v22.i64[0] = *(v20 - 1);
      v22.i32[2] = *v20;
      v20 = (v20 + a4);
      v22.i64[1] = v22.u32[2];
      v16 = vminq_f32(v16, v22);
      v15 = vmaxq_f32(v15, v22);
      --v21;
    }

    while (v21);
    goto LABEL_11;
  }

  v16 = xmmword_21C2A47A0;
  v15 = xmmword_21C2A47B0;
LABEL_11:
  v23 = vsubq_f32(v15, v16);
  v24 = v23.f32[1];
  if (v23.f32[0] >= v23.f32[1])
  {
    v25 = v23.f32[0];
  }

  else
  {
    v25 = v23.f32[1];
  }

  if (v23.f32[0] < v23.f32[1])
  {
    v24 = v23.f32[0];
  }

  v23.i32[3] = 0;
  v26 = v23.f32[0] >= v23.f32[1];
  v27 = v23.f32[0] < v23.f32[1];
  if (v25 < v23.f32[2])
  {
    v27 = 2;
  }

  if (v24 >= v23.f32[2])
  {
    v26 = 2;
  }

  if (v27 + 1 < 3)
  {
    v28 = v27 + 1;
  }

  else
  {
    v28 = v27 - 2;
  }

  if (v26 == v27)
  {
    v26 = v28;
  }

  this[10].i32[1] = v26;
  this[10].i32[2] = 3 - (v26 + v27);
  this[10].i32[3] = v27;
  a9.i32[0] = (4 - (v26 + v27)) % 3;
  a10.i32[0] = v27;
  v29 = vmulq_f32(vbslq_s8(vdupq_lane_s32(*&vceqq_s32(a9, a10), 0), vdupq_n_s32(0x38CD47F8u), vdupq_n_s32(0xB8CD47F8)), v23);
  *this = v29;
  v23.i64[0] = 0;
  v30 = v29;
  *v30.i32 = 1.0 / v29.f32[0];
  v31 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v29, v23)), 0), v30, v29);
  if (v31.f32[1] != 0.0)
  {
    v31.f32[1] = 1.0 / v31.f32[1];
  }

  if (v31.f32[2] != 0.0)
  {
    v31.f32[2] = 1.0 / v31.f32[2];
  }

  v32 = vaddq_f32(v16, v15);
  v33.i64[0] = 0x3F0000003F000000;
  v33.i64[1] = 0x3F0000003F000000;
  v34 = vmulq_f32(v32, v33);
  v34.i32[3] = 0;
  this[1] = v34;
  v64 = 1;
  v63 = 0;
  HIDWORD(v62) = 0;
  if ((a5 & 0x80000000) == 0)
  {
    if (!a5)
    {
      LODWORD(v62) = 0;
      goto LABEL_43;
    }

    v59 = v31;
    v35 = btAlignedAllocInternal(16 * a5, 16);
    v31 = v59;
    v64 = 1;
    v63 = v35;
    HIDWORD(v62) = a5;
  }

  LODWORD(v62) = a5;
  if (a3)
  {
    if (a5 < 1)
    {
      goto LABEL_43;
    }

    v36 = 0;
    v38 = this[10].i32[2];
    v37 = this[10].i32[3];
    v39 = this[10].i32[1];
    v40 = (a2 + 16);
    v41 = v63 + 8;
    do
    {
      *&v42 = *v40;
      *v60.f32 = vcvt_f32_f64(*(v40 - 2));
      v60.i64[1] = v42;
      v43 = vsubq_f32(v60, this[1]);
      v43.i32[3] = 0;
      v60 = vmulq_f32(v31, v43);
      *(v41 - 2) = v60.f32[v38];
      *(v41 - 1) = v60.f32[v37];
      *v41 = v60.f32[v39];
      v41[1] = v36;
      v41 += 4;
      ++v36;
      v40 = (v40 + a4);
    }

    while (a5 != v36);
  }

  else
  {
    if (a5 < 1)
    {
      goto LABEL_43;
    }

    v44 = 0;
    v46 = this[10].i32[2];
    v45 = this[10].i32[3];
    v47 = this[10].i32[1];
    v48 = (a2 + 8);
    v49 = v63 + 8;
    do
    {
      v60.i64[0] = *(v48 - 1);
      v60.i64[1] = *v48;
      v50 = vsubq_f32(v60, this[1]);
      v50.i32[3] = 0;
      v60 = vmulq_f32(v31, v50);
      *(v49 - 2) = v60.f32[v46];
      *(v49 - 1) = v60.f32[v45];
      *v49 = v60.f32[v47];
      v49[1] = v44;
      v49 += 4;
      ++v44;
      v48 = (v48 + a4);
    }

    while (a5 != v44);
  }

  if (a5 >= 2)
  {
    btAlignedObjectArray<btConvexHullInternal::Point32>::quickSortInternal<pointCmp>(v61, &v60, 0, a5 - 1);
  }

LABEL_43:
  this[2].i64[1] = this[2].i64[0];
  this[3].i64[0] = 0;
  this[3].i32[2] = a5;
  v51 = this[8].i32[1];
  if (v51 < a5)
  {
    v52 = v51;
    if (this[8].i32[2] < a5)
    {
      if (a5)
      {
        v53 = btAlignedAllocInternal(8 * a5, 16);
        v51 = this[8].i32[1];
      }

      else
      {
        v53 = 0;
      }

      if (v51 >= 1)
      {
        v54 = 0;
        v55 = 8 * v51;
        do
        {
          *(v53 + v54) = *(this[9].i64[0] + v54);
          v54 += 8;
        }

        while (v55 != v54);
      }

      v56 = this[9].i64[0];
      if (v56 && this[9].i8[8] == 1)
      {
        btAlignedFreeInternal(v56);
      }

      this[9].i8[8] = 1;
      this[9].i64[0] = v53;
      this[8].i32[2] = a5;
    }

    do
    {
      *(this[9].i64[0] + 8 * v52++) = 0;
    }

    while (a5 != v52);
  }

  this[8].i32[1] = a5;
  if (a5 >= 1)
  {
    v57 = 0;
    do
    {
      btConvexHullInternal::Pool<btConvexHullInternal::Vertex>::newObject(&this[2]);
      *(v58 + 16) = 0;
      *(v58 + 104) = *(v63 + v57);
      *(v58 + 120) = -1;
      *(this[9].i64[0] + 8 * v57++) = v58;
    }

    while (v57 != a5);
  }

  if (v63 && v64 == 1)
  {
    btAlignedFreeInternal(v63);
  }

  v64 = 1;
  v63 = 0;
  v62 = 0;
  this[4].i64[1] = this[4].i64[0];
  this[5].i64[0] = 0;
  this[5].i32[2] = 6 * a5;
  this[11].i64[0] = 0;
  this[10].i32[0] = -3;
  memset(&v60, 0, 32);
  btConvexHullInternal::computeInternal(this, 0, a5, &v60);
  this[11].i64[1] = v60.i64[0];
  if (v63)
  {
    if (v64 == 1)
    {
      btAlignedFreeInternal(v63);
    }
  }
}

double btConvexHullInternal::Pool<btConvexHullInternal::Vertex>::newObject(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      *(a1 + 8) = *(v3 + 16);
      v2 = *v3;
    }

    else
    {
      v3 = btAlignedAllocInternal(24, 16);
      v4 = *(a1 + 24);
      *(v3 + 8) = v4;
      *(v3 + 16) = 0;
      v2 = btAlignedAllocInternal(v4 << 7, 16);
      *v3 = v2;
      *(v3 + 16) = *a1;
      *a1 = v3;
    }

    v5 = *(v3 + 8);
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = vdupq_n_s64(v5 - 1);
      v8 = 0x100000000;
      v9 = (v2 + 128);
      do
      {
        v10 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v6), xmmword_21C27F640)));
        v11 = vadd_s32(v8, 0x100000001);
        if (v10.i8[0])
        {
          if (v11.i32[0] >= v5)
          {
            v12 = 0;
          }

          else
          {
            v12 = v9;
          }

          *(v9 - 16) = v12;
        }

        if (v10.i8[4])
        {
          v13 = v9 + 16;
          if (v11.i32[1] >= v5)
          {
            v13 = 0;
          }

          *v9 = v13;
        }

        v6 += 2;
        v8 = vadd_s32(v8, 0x200000002);
        v9 += 32;
      }

      while (((v5 + 1) & 0xFFFFFFFE) != v6);
    }
  }

  *(a1 + 16) = *v2;
  result = 0.0;
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 120) = -1;
  return result;
}

float32x4_t btConvexHullInternal::getBtNormal@<Q0>(float32x4_t *a1@<X0>, int *a2@<X1>, float32x4_t *a3@<X8>)
{
  v3 = a2[11];
  v5 = a1[10].i32[1];
  v4 = a1[10].i32[2];
  v16.f32[v4] = a2[10];
  v6 = a1[10].i32[3];
  v16.f32[v6] = v3;
  v16.f32[v5] = a2[12];
  v7 = v16;
  v8 = *a1;
  v9 = a2[15];
  v16.f32[v4] = a2[14];
  v10 = vmulq_f32(v8, v7);
  v16.f32[v6] = v9;
  v16.f32[v5] = a2[16];
  v11 = vmulq_f32(v16, v8);
  v12 = vmlaq_f32(vnegq_f32(vmulq_f32(v11, vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL))), v10, vextq_s8(vextq_s8(v11, v11, 0xCuLL), v11, 8uLL));
  v13 = vextq_s8(vextq_s8(v12, v12, 0xCuLL), v12, 8uLL);
  v13.i32[3] = 0;
  v14 = vmulq_f32(v13, v13);
  result = vmulq_n_f32(v13, 1.0 / sqrtf(vadd_f32(*&vextq_s8(v14, v14, 8uLL), vpadd_f32(*v14.i8, *v14.i8)).f32[0]));
  *a3 = result;
  return result;
}

double btConvexHullInternal::getCoordinates@<D0>(float32x4_t *a1@<X0>, int *a2@<X1>, float32x4_t *a3@<X8>)
{
  if ((a2[29] & 0x80000000) == 0)
  {
    v15.f32[a1[10].i32[2]] = a2[26];
LABEL_4:
    v15.f32[a1[10].i32[3]] = a2[27];
    goto LABEL_5;
  }

  v6 = btConvexHullInternal::Int128::toScalar((a2 + 10));
  v7 = btConvexHullInternal::Int128::toScalar((a2 + 22));
  v8 = a2[29];
  v15.f32[a1[10].i32[2]] = v6 / v7;
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v11 = btConvexHullInternal::Int128::toScalar((a2 + 14));
  v12 = btConvexHullInternal::Int128::toScalar((a2 + 22));
  v13 = a2[29];
  v15.f32[a1[10].i32[3]] = v11 / v12;
  if (v13 < 0)
  {
    v14 = btConvexHullInternal::Int128::toScalar((a2 + 18));
    v9 = v14 / btConvexHullInternal::Int128::toScalar((a2 + 22));
    goto LABEL_6;
  }

LABEL_5:
  v9 = a2[28];
LABEL_6:
  v15.f32[a1[10].i32[1]] = v9;
  result = *v15.i64;
  *a3 = vmlaq_f32(a1[1], v15, *a1);
  return result;
}