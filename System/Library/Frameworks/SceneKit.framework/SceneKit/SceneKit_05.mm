void __C3DCullingSystem::~__C3DCullingSystem(__C3DCullingSystem *this)
{
  free(*(this + 14));
  free(*(this + 12));
  free(*(this + 8));
  free(*(this + 13));
  free(*(this + 9));
  free(*(this + 10));
  free(*(this + 11));
  v2 = *(this + 17);
  if (v2)
  {
    CFRelease(v2);
    *(this + 17) = 0;
  }

  v3 = *(this + 15);
  if (v3)
  {
    dispatch_release(v3);
    dispatch_release(*(this + 16));
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }
}

void __C3DCullingSystem::__C3DCullingSystem(__C3DCullingSystem *this, __C3DTransformTree *a2)
{
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 14) = -1;
  *(this + 8) = 0;
  *(this + 12) = 0;
  v4 = C3DGetCPUCaps();
  if ((v4 & 0x20) != 0)
  {
    v5 = 8;
  }

  else
  {
    v5 = 4;
  }

  *(this + 6) = v5;
  *(this + 7) = v4;
  __C3DCullingSystem::_allocateData(this, 0x80u);
  v6 = *(this + 17);
  if (v6 != a2)
  {
    if (v6)
    {
      CFRelease(v6);
      *(this + 17) = 0;
    }

    if (a2)
    {
      v7 = CFRetain(a2);
    }

    else
    {
      v7 = 0;
    }

    *(this + 17) = v7;
  }

  if ((*(this + 7) & 0x20) != 0)
  {
    *(this + 19) = C3DParticleManagerGetUpdateQueue();
    *(this + 18) = C3DParticleManagerGetUpdateQueue();
    *(this + 22) = C3DParticleManagerGetUpdateQueue();
    *(this + 23) = C3DParticleManagerGetUpdateQueue();
    *(this + 24) = C3DParticleManagerGetUpdateQueue();
    *(this + 20) = C3DParticleManagerGetUpdateQueue();
    *(this + 21) = C3DParticleManagerGetUpdateQueue();
  }

  else
  {
    v8 = *(this + 6);
    if (v8 == 4)
    {
      v9 = C3DCullingSystem_AABBRange_x4;
    }

    else
    {
      v9 = C3DCullingSystem_AABBRange_x1;
    }

    v10 = C3DCullingSystem_AABBRange_x8;
    if (v8 == 4)
    {
      v11 = C3DCullingSystem_MergeAABBRange_x4;
    }

    else
    {
      v11 = C3DCullingSystem_MergeAABBRange_x1;
    }

    if (v8 == 4)
    {
      v12 = C3DCullingSystem_CullRange_x4<false,false>;
    }

    else
    {
      v12 = C3DCullingSystem_CullRange_x1<false,false>;
    }

    if (v8 == 4)
    {
      v13 = C3DCullingSystem_CullRange_x4<false,true>;
    }

    else
    {
      v13 = C3DCullingSystem_CullRange_x1<false,true>;
    }

    v14 = C3DCullingSystem_CullRange_x1<true,false>;
    if (v8 == 4)
    {
      v14 = C3DCullingSystem_CullRange_x4<true,false>;
    }

    if (v8 != 8)
    {
      v10 = v9;
    }

    *(this + 19) = v10;
    if (v8 == 8)
    {
      v15 = C3DCullingSystem_MergeAABBRange_x8;
    }

    else
    {
      v15 = v11;
    }

    *(this + 18) = v15;
    if (v8 == 8)
    {
      v16 = C3DCullingSystem_CullRange_x8<false,false>;
    }

    else
    {
      v16 = v12;
    }

    if (v8 == 8)
    {
      v17 = C3DCullingSystem_CullRange_x8<false,true>;
    }

    else
    {
      v17 = v13;
    }

    *(this + 22) = v16;
    *(this + 23) = v17;
    if (v8 == 8)
    {
      v18 = C3DCullingSystem_CullRange_x8<true,false>;
    }

    else
    {
      v18 = v14;
    }

    *(this + 24) = v18;
    v19 = C3DCullingSystem_RayRange_x8<true>;
    v20 = C3DCullingSystem_RayRange_x8<false>;
    if (v8 != 8)
    {
      if (v8 == 4)
      {
        v19 = C3DCullingSystem_RayRange_x4<true>;
        v20 = C3DCullingSystem_RayRange_x4<false>;
      }

      else
      {
        v19 = C3DCullingSystem_RayRange_x1<true>;
        v20 = C3DCullingSystem_RayRange_x1<false>;
      }
    }

    *(this + 20) = v20;
    *(this + 21) = v19;
  }
}

void __C3DCullingSystem::_allocateData(__C3DCullingSystem *this, unsigned int a2)
{
  v4 = *(this + 5);
  v5 = *(this + 6);
  if (v5 == 8)
  {
    v6 = 32;
  }

  else
  {
    v6 = 16;
  }

  if (v5 == 8)
  {
    v7 = 192;
  }

  else
  {
    v7 = 0;
  }

  if (v5 == 4)
  {
    v7 = 96;
  }

  v8 = v5 - 1;
  if (v5 == 1)
  {
    v9 = 32;
  }

  else
  {
    v9 = v7;
  }

  v10 = C3DLog2OfPowerOf2::deBruijnPosition[(125613361 * v5) >> 27];
  v11 = (v9 * (v8 + a2)) >> v10;
  v12 = (v4 + 7) >> 3;
  v13 = (a2 + 7) >> 3;
  if (*(this + 8))
  {
    v14 = ((v4 + v8) * v9) >> v10;
    *(this + 14) = malloc_type_realloc(*(this + 14), (a2 + 7) >> 3, 0x100004077774924uLL);
    *(this + 12) = _mm_realloc(*(this + 12), v14, v11, v6);
    *(this + 8) = _mm_realloc(*(this + 8), 32 * *(this + 5), 32 * a2, v6);
    *(this + 13) = _mm_realloc(*(this + 13), 8 * *(this + 5), 8 * a2, v6);
    *(this + 9) = _mm_realloc(*(this + 9), 4 * *(this + 5), 4 * a2, v6);
    *(this + 10) = _mm_realloc(*(this + 10), 4 * *(this + 5), 4 * a2, v6);
    *(this + 11) = _mm_realloc(*(this + 11), 2 * *(this + 5), 2 * a2, v6);
  }

  else
  {
    *(this + 14) = malloc_type_malloc((a2 + 7) >> 3, 0x100004077774924uLL);
    memptr = 0;
    v15 = malloc_type_posix_memalign(&memptr, v6, v11, 0xF60F032AuLL);
    v16 = memptr;
    if (v15)
    {
      v16 = 0;
    }

    *(this + 12) = v16;
    memptr = 0;
    v17 = malloc_type_posix_memalign(&memptr, v6, 32 * a2, 0xF60F032AuLL);
    v18 = memptr;
    if (v17)
    {
      v18 = 0;
    }

    *(this + 8) = v18;
    memptr = 0;
    v19 = malloc_type_posix_memalign(&memptr, v6, 8 * a2, 0xF60F032AuLL);
    v20 = memptr;
    if (v19)
    {
      v20 = 0;
    }

    *(this + 13) = v20;
    memptr = 0;
    v21 = malloc_type_posix_memalign(&memptr, v6, 4 * a2, 0xF60F032AuLL);
    v22 = memptr;
    if (v21)
    {
      v22 = 0;
    }

    *(this + 9) = v22;
    memptr = 0;
    v23 = malloc_type_posix_memalign(&memptr, v6, 4 * a2, 0xF60F032AuLL);
    v24 = memptr;
    if (v23)
    {
      v24 = 0;
    }

    *(this + 10) = v24;
    memptr = 0;
    v25 = malloc_type_posix_memalign(&memptr, v6, 2 * a2, 0xF60F032AuLL);
    v26 = memptr;
    if (v25)
    {
      v26 = 0;
    }

    *(this + 11) = v26;
  }

  v27 = v13 - v12;
  if (v27 >= 1)
  {
    bzero((*(this + 14) + v12), v27);
  }

  v28 = *(this + 5);
  v29 = a2 - v28;
  if ((a2 - v28) >= 1)
  {
    bzero((*(this + 13) + 8 * v28), 8 * (a2 - v28));
    bzero((*(this + 9) + 4 * *(this + 5)), 4 * v29);
    bzero((*(this + 10) + 4 * *(this + 5)), 4 * v29);
    bzero((*(this + 11) + 2 * *(this + 5)), 2 * v29);
    v30 = *(this + 5);
    if (v30 < a2)
    {
      v33 = *(MEMORY[0x277D860B8] + 48);
      v31 = 32 * v30;
      do
      {
        v32 = (*(this + 8) + v31);
        *v32 = v33;
        v32[1] = xmmword_21C27F650;
        __C3DCullingSystem::_setWorldAABBAtIndex(this, v30, v33, xmmword_21C27F650);
        LODWORD(v30) = v30 + 1;
        v31 += 32;
      }

      while (a2 != v30);
    }
  }

  *(this + 5) = a2;
}

uint64_t __C3DCullingSystem::_newHandle(__C3DCullingSystem *this, int a2)
{
  result = *(this + 14);
  if (result == -1)
  {
    v7 = *(this + 5);
    v6 = *(this + 6);
    if (v7 >= v6)
    {
      v9 = *(this + 4);
      v10 = v7 - v9;
      v11 = (v7 - v9) >> 2;
      v12 = v11 + 1;
      if ((v11 + 1) >> 62)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v13 = v6 - v9;
      if (v13 >> 1 > v12)
      {
        v12 = v13 >> 1;
      }

      v14 = v13 >= 0x7FFFFFFFFFFFFFFCLL;
      v15 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v14)
      {
        v15 = v12;
      }

      if (v15)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(this + 32, v15);
      }

      v16 = (v7 - v9) >> 2;
      v17 = (4 * v11);
      v18 = (4 * v11 - 4 * v16);
      *v17 = a2;
      v8 = v17 + 1;
      memcpy(v18, v9, v10);
      v19 = *(this + 4);
      *(this + 4) = v18;
      *(this + 5) = v8;
      *(this + 6) = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v7 = a2;
      v8 = v7 + 4;
    }

    *(this + 5) = v8;
    return ((v8 - *(this + 4)) >> 2) - 1;
  }

  else
  {
    v5 = *(this + 4);
    *(this + 14) = *(v5 + 4 * result);
    *(v5 + 4 * result) = a2;
  }

  return result;
}

uint64_t __C3DCullingSystem::_updateWorldAABBAtIndex(__C3DCullingSystem *this, unsigned int a2)
{
  if ((*(*(this + 11) + 2 * a2) & 0x10) != 0)
  {
    v10 = xmmword_21C27FE10;
    v8 = *(MEMORY[0x277D860B8] + 48);
  }

  else
  {
    WorldMatrix = C3DNodeGetWorldMatrix(*(*(this + 13) + 8 * a2));
    v5 = (*(this + 8) + 32 * a2);
    v6 = WorldMatrix[1];
    v7 = WorldMatrix[2];
    v8 = vaddq_f32(WorldMatrix[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v6, *v5->f32, 1), *WorldMatrix, COERCE_FLOAT(*v5)), v7, *v5, 2));
    v8.n128_u32[3] = 1.0;
    v9 = v5[1];
    v9.i32[1] = v9.i32[0];
    v9.i32[2] = v5[1];
    v10 = vaddq_f32(vaddq_f32(vabsq_f32(vmulq_f32(*WorldMatrix, v9)), vabsq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v5[1].f32, 1), v5[1]), v6))), vabsq_f32(vmulq_f32(vzip2q_s32(vtrn1q_s32(v5[1], v5[1]), v5[1]), v7)));
  }

  return __C3DCullingSystem::_setWorldAABBAtIndex(this, a2, v8, v10);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(HitResult const&,HitResult const&),HitResult*,false>(__int128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = &a2[-1];
  v10 = &a2[-2];
  v11 = &a2[-3];
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      break;
    }

    switch(v15)
    {
      case 3uLL:
        v34 = (*a3)(v12 + 1, v12);
        v35 = (*a3)(v9, v12 + 1);
        if (v34)
        {
          if (v35)
          {
            goto LABEL_77;
          }

          v66 = *v12;
          *v12 = v12[1];
          v12[1] = v66;
          if (!(*a3)(v9, v12 + 1))
          {
            return result;
          }

          result = v12[1];
          v12[1] = *v9;
LABEL_78:
          *v9 = result;
          return result;
        }

        if (!v35)
        {
          return result;
        }

        v40 = v12[1];
        v12[1] = *v9;
        *v9 = v40;
        goto LABEL_104;
      case 4uLL:
        v37 = (*a3)(v12 + 1, v12);
        v38 = (*a3)(v12 + 2, v12 + 1);
        if (v37)
        {
          if (v38)
          {
            v68 = *v12;
            *v12 = v12[2];
            v39 = v68;
            goto LABEL_100;
          }

          v70 = *v12;
          *v12 = v12[1];
          v12[1] = v70;
          if ((*a3)(v12 + 2, v12 + 1))
          {
            v39 = v12[1];
            v12[1] = v12[2];
LABEL_100:
            v12[2] = v39;
          }
        }

        else if (v38)
        {
          v41 = v12[1];
          v12[1] = v12[2];
          v12[2] = v41;
          if ((*a3)(v12 + 1, v12))
          {
            v69 = *v12;
            *v12 = v12[1];
            v12[1] = v69;
          }
        }

        if (!(*a3)(v9, v12 + 2))
        {
          return result;
        }

        v42 = v12[2];
        v12[2] = *v9;
        *v9 = v42;
        if (!(*a3)(v12 + 2, v12 + 1))
        {
          return result;
        }

        v43 = v12[1];
        v12[1] = v12[2];
        v12[2] = v43;
LABEL_104:
        if ((*a3)(v12 + 1, v12))
        {
          v71 = *v12;
          *v12 = v12[1];
          result = v71;
          v12[1] = v71;
        }

        return result;
      case 5uLL:

        result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(HitResult const&,HitResult const&),HitResult*,0>(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, a3).n128_u64[0];
        return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(HitResult const&,HitResult const&),HitResult*>(v12, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(HitResult const&,HitResult const&),HitResult*>(v12, a2, a3);
      }

      return result;
    }

    if (v14 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(HitResult const&,HitResult const&),HitResult*,HitResult*>(v12, a2, a2, a3, result);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = *a3;
    if (v15 >= 0x81)
    {
      v18 = v17(&v12[v15 >> 1], v12);
      v19 = (*a3)(a2 - 1, v16);
      if (v18)
      {
        if (v19)
        {
          v45 = *a1;
          *a1 = *v9;
          goto LABEL_27;
        }

        v51 = *a1;
        *a1 = *v16;
        *v16 = v51;
        if ((*a3)(a2 - 1, v16))
        {
          v45 = *v16;
          *v16 = *v9;
LABEL_27:
          *v9 = v45;
        }
      }

      else if (v19)
      {
        v47 = *v16;
        *v16 = *v9;
        *v9 = v47;
        if ((*a3)(v16, a1))
        {
          v48 = *a1;
          *a1 = *v16;
          *v16 = v48;
        }
      }

      v22 = &v16[-1];
      v23 = (*a3)(v16 - 1, a1 + 1);
      v24 = (*a3)(a2 - 2, v16 - 1);
      if (v23)
      {
        if (v24)
        {
          v25 = a1[1];
          a1[1] = *v10;
          goto LABEL_39;
        }

        v55 = a1[1];
        a1[1] = *v22;
        *v22 = v55;
        if ((*a3)(a2 - 2, v16 - 1))
        {
          v56 = *v22;
          *v22 = *v10;
          v25 = v56;
LABEL_39:
          *v10 = v25;
        }
      }

      else if (v24)
      {
        v52 = *v22;
        *v22 = *v10;
        *v10 = v52;
        if ((*a3)(v16 - 1, a1 + 1))
        {
          v53 = a1[1];
          a1[1] = *v22;
          *v22 = v53;
        }
      }

      v26 = (*a3)(v16 + 1, a1 + 2);
      v27 = (*a3)(a2 - 3, v16 + 1);
      if (v26)
      {
        if (v27)
        {
          v28 = a1[2];
          a1[2] = *v11;
          goto LABEL_48;
        }

        v59 = a1[2];
        a1[2] = v16[1];
        v16[1] = v59;
        if ((*a3)(a2 - 3, v16 + 1))
        {
          v60 = v16[1];
          v16[1] = *v11;
          v28 = v60;
LABEL_48:
          *v11 = v28;
        }
      }

      else if (v27)
      {
        v57 = v16[1];
        v16[1] = *v11;
        *v11 = v57;
        if ((*a3)(v16 + 1, a1 + 2))
        {
          v58 = a1[2];
          a1[2] = v16[1];
          v16[1] = v58;
        }
      }

      v29 = (*a3)(v16, v16 - 1);
      v30 = (*a3)(v16 + 1, v16);
      if (v29)
      {
        if (v30)
        {
          v61 = *v22;
          *v22 = v16[1];
          goto LABEL_57;
        }

        v64 = *v22;
        *v22 = *v16;
        *v16 = v64;
        if ((*a3)(v16 + 1, v16))
        {
          v61 = *v16;
          *v16 = v16[1];
LABEL_57:
          v16[1] = v61;
        }
      }

      else if (v30)
      {
        v62 = *v16;
        *v16 = v16[1];
        v16[1] = v62;
        if ((*a3)(v16, v16 - 1))
        {
          v63 = *v22;
          *v22 = *v16;
          *v16 = v63;
        }
      }

      v65 = *a1;
      *a1 = *v16;
      *v16 = v65;
      goto LABEL_59;
    }

    v20 = v17(v12, &v12[v15 >> 1]);
    v21 = (*a3)(a2 - 1, a1);
    if (v20)
    {
      if (v21)
      {
        v46 = *v16;
        *v16 = *v9;
LABEL_36:
        *v9 = v46;
        goto LABEL_59;
      }

      v54 = *v16;
      *v16 = *a1;
      *a1 = v54;
      if ((*a3)(a2 - 1, a1))
      {
        v46 = *a1;
        *a1 = *v9;
        goto LABEL_36;
      }
    }

    else if (v21)
    {
      v49 = *a1;
      *a1 = *v9;
      *v9 = v49;
      if ((*a3)(a1, v16))
      {
        v50 = *v16;
        *v16 = *a1;
        *a1 = v50;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && ((*a3)(a1 - 1, a1) & 1) == 0)
    {
      v12 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,HitResult *,BOOL (*&)(HitResult const&,HitResult const&)>(a1, a2, a3);
      goto LABEL_66;
    }

    v31 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,HitResult *,BOOL (*&)(HitResult const&,HitResult const&)>(a1, a2, a3);
    if ((v32 & 1) == 0)
    {
      goto LABEL_64;
    }

    v33 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(HitResult const&,HitResult const&),HitResult*>(a1, v31, a3);
    v12 = v31 + 1;
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(HitResult const&,HitResult const&),HitResult*>(v31 + 1, a2, a3))
    {
      a4 = -v14;
      a2 = v31;
      if (v33)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v33)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(HitResult const&,HitResult const&),HitResult*,false>(a1, v31, a3, -v14, a5 & 1);
      v12 = v31 + 1;
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  if (v15 < 2)
  {
    return result;
  }

  if (v15 != 2)
  {
    goto LABEL_10;
  }

  if ((*a3)(a2 - 1, v12))
  {
LABEL_77:
    v67 = *v12;
    *v12 = *v9;
    result = v67;
    goto LABEL_78;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(HitResult const&,HitResult const&),HitResult*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v14 = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = v14;
      goto LABEL_10;
    }

    v17 = *a1;
    *a1 = *a2;
    *a2 = v17;
    if ((*a6)(a3, a2))
    {
      v14 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v15 = *a2;
    *a2 = *a3;
    *a3 = v15;
    if ((*a6)(a2, a1))
    {
      v16 = *a1;
      *a1 = *a2;
      *a2 = v16;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v18 = *a3;
    *a3 = *a4;
    *a4 = v18;
    if ((*a6)(a3, a2))
    {
      v19 = *a2;
      *a2 = *a3;
      *a3 = v19;
      if ((*a6)(a2, a1))
      {
        v20 = *a1;
        *a1 = *a2;
        *a2 = v20;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v22 = *a4;
    *a4 = *a5;
    *a5 = v22;
    if ((*a6)(a4, a3))
    {
      v23 = *a3;
      *a3 = *a4;
      *a4 = v23;
      if ((*a6)(a3, a2))
      {
        v24 = *a2;
        *a2 = *a3;
        *a3 = v24;
        if ((*a6)(a2, a1))
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(HitResult const&,HitResult const&),HitResult*>(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void))
{
  if (result != a2)
  {
    v15 = v3;
    v16 = v4;
    v6 = result;
    v7 = (result + 16);
    if ((result + 16) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v14 = *v10;
          v12 = v9;
          while (1)
          {
            *(v6 + v12 + 16) = *(v6 + v12);
            if (!v12)
            {
              break;
            }

            v12 -= 16;
            result = (*a3)(&v14, v6 + v12);
            if ((result & 1) == 0)
            {
              v13 = (v6 + v12 + 16);
              goto LABEL_10;
            }
          }

          v13 = v6;
LABEL_10:
          *v13 = v14;
        }

        v7 = v10 + 1;
        v9 += 16;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(HitResult const&,HitResult const&),HitResult*>(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void))
{
  if (result != a2)
  {
    v13 = v3;
    v14 = v4;
    v6 = result;
    v7 = (result + 16);
    if ((result + 16) != a2)
    {
      v9 = result - 16;
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v12 = *v6;
          v11 = v9;
          do
          {
            *(v11 + 32) = *(v11 + 16);
            result = (*a3)(&v12, v11);
            v11 -= 16;
          }

          while ((result & 1) != 0);
          *(v11 + 32) = v12;
        }

        v7 = v6 + 1;
        v9 += 16;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,HitResult *,BOOL (*&)(HitResult const&,HitResult const&)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v11 = *a1;
  if ((*a3)(&v11, a2 - 1))
  {
    v6 = a1;
    do
    {
      ++v6;
    }

    while (((*a3)(&v11, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 1;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v11, v7);
      v7 = v6 + 1;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      --v4;
    }

    while (((*a3)(&v11, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v12 = *v6;
    *v6 = *v4;
    *v4 = v12;
    do
    {
      ++v6;
    }

    while (!(*a3)(&v11, v6));
    do
    {
      --v4;
    }

    while (((*a3)(&v11, v4) & 1) != 0);
  }

  v9 = v6 - 1;
  if (v6 - 1 != a1)
  {
    *a1 = *v9;
  }

  *v9 = v11;
  return v6;
}

__int128 *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,HitResult *,BOOL (*&)(HitResult const&,HitResult const&)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v13 = *a1;
  do
  {
    ++v6;
  }

  while (((*a3)(&a1[v6], &v13) & 1) != 0);
  v7 = &a1[v6];
  v8 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      --a2;
    }

    while (((*a3)(a2, &v13) & 1) == 0);
  }

  else
  {
    do
    {
      --a2;
    }

    while (!(*a3)(a2, &v13));
  }

  if (v7 < a2)
  {
    v9 = &a1[v6];
    v10 = a2;
    do
    {
      v14 = *v9;
      v11 = v14;
      *v9 = *v10;
      *v10 = v11;
      do
      {
        ++v9;
      }

      while (((*a3)(v9, &v13) & 1) != 0);
      do
      {
        --v10;
      }

      while (!(*a3)(v10, &v13));
    }

    while (v9 < v10);
    v8 = v9 - 1;
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v13;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(HitResult const&,HitResult const&),HitResult*>(__n128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v9 = a2 - 1;
      v10 = (*a3)(a1 + 1, a1);
      v11 = (*a3)(v9, a1 + 1);
      if (v10)
      {
        if (v11)
        {
          v12 = *a1;
          *a1 = *v9;
        }

        else
        {
          v26 = *a1;
          *a1 = a1[1];
          a1[1] = v26;
          if (!(*a3)(v9, a1 + 1))
          {
            return 1;
          }

          v12 = a1[1];
          a1[1] = *v9;
        }

        *v9 = v12;
        return 1;
      }

      if (!v11)
      {
        return 1;
      }

      v21 = a1[1];
      a1[1] = *v9;
      *v9 = v21;
LABEL_50:
      if ((*a3)(a1 + 1, a1))
      {
        v37 = *a1;
        *a1 = a1[1];
        a1[1] = v37;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(HitResult const&,HitResult const&),HitResult*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v17 = a2 - 1;
    v18 = (*a3)(a1 + 1, a1);
    v19 = (*a3)(a1 + 2, a1 + 1);
    if ((v18 & 1) == 0)
    {
      if (v19)
      {
        v24 = a1[1];
        a1[1] = a1[2];
        a1[2] = v24;
        if ((*a3)(a1 + 1, a1))
        {
          v25 = *a1;
          *a1 = a1[1];
          a1[1] = v25;
        }
      }

      goto LABEL_47;
    }

    if (v19)
    {
      v20 = *a1;
      *a1 = a1[2];
    }

    else
    {
      v34 = *a1;
      *a1 = a1[1];
      a1[1] = v34;
      if (!(*a3)(a1 + 2, a1 + 1))
      {
        goto LABEL_47;
      }

      v20 = a1[1];
      a1[1] = a1[2];
    }

    a1[2] = v20;
LABEL_47:
    if (!(*a3)(v17, a1 + 2))
    {
      return 1;
    }

    v35 = a1[2];
    a1[2] = *v17;
    *v17 = v35;
    if (!(*a3)(a1 + 2, a1 + 1))
    {
      return 1;
    }

    v36 = a1[1];
    a1[1] = a1[2];
    a1[2] = v36;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 1;
    if ((*a3)(a2 - 1, a1))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v14 = (*a3)(a1 + 1, a1);
  v15 = (*a3)(a1 + 2, a1 + 1);
  if (v14)
  {
    if (v15)
    {
      v16 = *a1;
      *a1 = *v13;
    }

    else
    {
      v27 = *a1;
      *a1 = a1[1];
      a1[1] = v27;
      if (!(*a3)(a1 + 2, a1 + 1))
      {
        goto LABEL_33;
      }

      v16 = a1[1];
      a1[1] = *v13;
    }

    *v13 = v16;
  }

  else if (v15)
  {
    v22 = a1[1];
    a1[1] = *v13;
    *v13 = v22;
    if ((*a3)(a1 + 1, a1))
    {
      v23 = *a1;
      *a1 = a1[1];
      a1[1] = v23;
    }
  }

LABEL_33:
  v28 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v29 = 0;
  v30 = 0;
  while (1)
  {
    if ((*a3)(v28, v13))
    {
      v39[0] = *v28;
      v31 = v29;
      while (1)
      {
        v32 = (a1 + v31);
        *(a1 + v31 + 48) = *(a1 + v31 + 32);
        if (v31 == -32)
        {
          break;
        }

        v31 -= 16;
        if (((*a3)(v39, v32 + 1) & 1) == 0)
        {
          v33 = (a1 + v31 + 48);
          goto LABEL_41;
        }
      }

      v33 = a1;
LABEL_41:
      *v33 = v39[0];
      if (++v30 == 8)
      {
        return &v28[1] == a2;
      }
    }

    v13 = v28;
    v29 += 16;
    if (++v28 == a2)
    {
      return 1;
    }
  }
}

__int128 *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(HitResult const&,HitResult const&),HitResult*,HitResult*>(__int128 *a1, __int128 *a2, __int128 *a3, unsigned int (**a4)(__int128 *, __int128 *), __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v9 = a2 - a1;
    if (v9 >= 2)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[v10];
      do
      {
        a5.n128_f64[0] = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(HitResult const&,HitResult const&),HitResult*>(a1, a4, v9, v12--);
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
          v14 = *v13;
          *v13 = *a1;
          *a1 = v14;
          a5.n128_f64[0] = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(HitResult const&,HitResult const&),HitResult*>(a1, a4, v9, a1);
        }

        ++v13;
      }

      while (v13 != a3);
    }

    if (v9 >= 2)
    {
      do
      {
        v24 = v7;
        v15 = 0;
        v25 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v15];
          v18 = v17 + 1;
          v19 = (2 * v15) | 1;
          v20 = 2 * v15 + 2;
          if (v20 < v9)
          {
            v21 = v17 + 2;
            if ((*a4)(v17 + 1, v17 + 2))
            {
              v18 = v21;
              v19 = v20;
            }
          }

          *v16 = *v18;
          v16 = v18;
          v15 = v19;
        }

        while (v19 <= ((v9 - 2) >> 1));
        v7 = v24 - 1;
        if (v18 == v24 - 1)
        {
          *v18 = v25;
        }

        else
        {
          *v18 = *v7;
          *v7 = v25;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(HitResult const&,HitResult const&),HitResult*>(a1, (v18 + 1), a4, v18 + 1 - a1);
        }
      }

      while (v9-- > 2);
    }

    return v13;
  }

  return a3;
}

double std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(HitResult const&,HitResult const&),HitResult*>(uint64_t a1, unsigned int (**a2)(__int128 *, __int128 *), uint64_t a3, __int128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v21 = v4;
    v22 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - a1) >> 4)
    {
      v12 = (a4 - a1) >> 3;
      v13 = v12 + 1;
      v14 = (a1 + 16 * (v12 + 1));
      v15 = v12 + 2;
      if (v12 + 2 < a3 && (*a2)(v14, v14 + 1))
      {
        ++v14;
        v13 = v15;
      }

      if (((*a2)(v14, v7) & 1) == 0)
      {
        v20 = *v7;
        do
        {
          v17 = v14;
          *v7 = *v14;
          if (v9 < v13)
          {
            break;
          }

          v18 = (2 * v13) | 1;
          v14 = (a1 + 16 * v18);
          v19 = 2 * v13 + 2;
          if (v19 < a3)
          {
            if ((*a2)((a1 + 16 * v18), v14 + 1))
            {
              ++v14;
              v18 = v19;
            }
          }

          v7 = v17;
          v13 = v18;
        }

        while (!(*a2)(v14, &v20));
        result = *&v20;
        *v17 = v20;
      }
    }
  }

  return result;
}

double std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(HitResult const&,HitResult const&),HitResult*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v15 = v4;
    v16 = v5;
    v9 = v6 >> 1;
    v10 = (a1 + 16 * (v6 >> 1));
    v11 = (a2 - 16);
    if ((*a3)(v10, (a2 - 16)))
    {
      v14 = *v11;
      do
      {
        v13 = v10;
        *v11 = *v10;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (a1 + 16 * v9);
        v11 = v13;
      }

      while (((*a3)(v10, &v14) & 1) != 0);
      result = *&v14;
      *v13 = v14;
    }
  }

  return result;
}

uint64_t C3DCullingSystem_CullRange_x8<false,true>(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v96 = *MEMORY[0x277D85DE8];
  if ((v3 & 7) != 0)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DCullingSystem_AABBRange_x8(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = v4 >> 3;
  v16 = (v2 + 7) >> 3;
  v17 = v6[110].u32[0];
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21.i64[0] = 0x8000000080000000;
    v21.i64[1] = 0x8000000080000000;
    v22 = v6;
    do
    {
      for (i = 0; i != 12; i += 2)
      {
        v24 = *v22[i].i8;
        v25 = vdupq_lane_s32(*v24.i8, 0);
        v26 = &v95[2 * v19 + 290];
        *v26 = v25;
        v26[1] = v25;
        v27 = vdupq_lane_s32(*v24.i8, 1);
        v26[2] = v27;
        v26[3] = v27;
        v28 = vdupq_laneq_s32(v24, 2);
        v29 = vdupq_laneq_s32(v24, 3);
        v26[4] = v28;
        v26[5] = v28;
        v26[6] = v29;
        v26[7] = v29;
        v30 = &v95[2 * v20 + 2];
        v31 = vandq_s8(v25, v21);
        *v30 = v31;
        v30[1] = v31;
        v32 = vandq_s8(v27, v21);
        v30[2] = v32;
        v30[3] = v32;
        v33 = vandq_s8(v28, v21);
        v30[4] = v33;
        v30[5] = v33;
        v19 += 4;
        v20 += 3;
      }

      ++v18;
      v22 += 12;
    }

    while (v18 != v17);
  }

  if (v15 >= v16)
  {
    return 0;
  }

  result = 0;
  v35 = v6[97];
  v36 = &v6[102];
  v37 = vdupq_n_s32(v6[104].i32[1] | (~v6[105].i32[0] << 8));
  v38 = vdupq_lane_s32(v6[104], 0);
  v39 = v6[98];
  v40 = &v6[102] + 1;
  v41 = vld1q_dup_f32(v36);
  v42 = &v6[103];
  v43 = &v6[103] + 1;
  v44 = vld1q_dup_f32(v42);
  v45 = vld1q_dup_f32(v40);
  v46 = v6[99];
  v47 = vld1q_dup_f32(v43);
  v48 = v4 & 0xFFFFFFF8;
  v49 = v6[96];
  v50 = v2;
  v93 = v38;
  v94 = v37;
  do
  {
    v51 = (*&v39 + 32 * v15);
    v52 = *v51;
    v53 = v51[1];
    v54 = vandq_s8(*v51, v41);
    v55 = (*&v46 + 32 * v15);
    v56 = v55[1];
    v57 = vuzp1q_s16(vceqzq_s32(vorrq_s8(vandq_s8(*v55, v45), v54)), vceqzq_s32(vorrq_s8(vandq_s8(v56, v45), vandq_s8(v53, v41))));
    v58 = *(*&v35 + 16 * v15);
    v59 = vmovl_u16(*v58.i8);
    v60 = vmovl_high_u16(v58);
    v61 = vmovn_s16(vandq_s8(vbicq_s8(vmvnq_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(v38, v59)), vceqzq_s32(vandq_s8(v38, v60)))), v57), vuzp1q_s16(vceqzq_s32(vorrq_s8(vorrq_s8(vandq_s8(*v55, v47), vandq_s8(v52, v44)), vandq_s8(v37, v59))), vceqzq_s32(vorrq_s8(vorrq_s8(vandq_s8(v56, v47), vandq_s8(v53, v44)), vandq_s8(v37, v60))))));
    if ((vmaxvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(vorr_s8(vzip1_s8(v61, *v37.i8), vzip2_s8(v61, *v37.i8))), 0x1FuLL))) & 0x80000000) != 0)
    {
      if (v17)
      {
        v62 = 0;
        v63 = 0;
        v64 = 0;
        v65 = (*&v49 + 192 * v15);
        v67 = *(v65 + 6);
        v66 = *(v65 + 7);
        v69 = *(v65 + 8);
        v68 = *(v65 + 9);
        v71 = *(v65 + 10);
        v70 = *(v65 + 11);
        v73 = *v65;
        v72 = *(v65 + 1);
        v75 = *(v65 + 2);
        v74 = *(v65 + 3);
        v77 = *(v65 + 4);
        v76 = *(v65 + 5);
        v78 = 0uLL;
        v79 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v61, *v37.i8)), 0x1FuLL));
        v80 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v61, *v37.i8)), 0x1FuLL));
        v81 = 0uLL;
        do
        {
          v82 = 0;
          v83 = v64 + 24;
          v84.i64[0] = -1;
          v84.i64[1] = -1;
          v85.i64[0] = -1;
          v85.i64[1] = -1;
          v86 = v63;
          do
          {
            v87 = &v95[2 * v86 + 2];
            v88 = &v95[2 * (v64 + v82) + 290];
            v85 = vandq_s8(v85, vmlaq_f32(vmlaq_f32(vmlaq_f32(v88[7], v88[1], vsubq_f32(v72, veorq_s8(v87[1], v66))), v88[3], vsubq_f32(v74, veorq_s8(v87[3], v68))), v88[5], vsubq_f32(v76, veorq_s8(v87[5], v70))));
            v84 = vandq_s8(v84, vmlaq_f32(vmlaq_f32(vmlaq_f32(v88[6], *v88, vsubq_f32(v73, veorq_s8(*v87, v67))), v88[2], vsubq_f32(v75, veorq_s8(v87[2], v69))), v88[4], vsubq_f32(v77, veorq_s8(v87[4], v71))));
            v86 += 3;
            v82 += 4;
          }

          while (v82 != 24);
          v63 += 18;
          v89 = (&unk_21C27FEE0 + 32 * v62);
          v81 = vorrq_s8(vandq_s8(vandq_s8(v89[1], v79), vcltzq_s32(v85)), v81);
          v78 = vorrq_s8(vandq_s8(vandq_s8(*v89, v80), vcltzq_s32(v84)), v78);
          ++v62;
          v64 = v83;
        }

        while (v62 != v17);
      }

      else
      {
        v78 = 0uLL;
        v81 = 0uLL;
      }

      if ((vminvq_u32(vceqzq_s32(vorrq_s8(v78, v81))) & 0x80000000) != 0)
      {
        v38 = v93;
        v37 = v94;
      }

      else
      {
        v38 = v93;
        v37 = v94;
        if (8 * v15 < v50)
        {
          v90 = 0;
          v91 = v48;
          do
          {
            v95[0] = v78;
            v95[1] = v81;
            v92 = *(v95 + (v90 & 7));
            if (v92)
            {
              *(*&v6[109] + result) = v92;
              *(*&v6[107] + 8 * result) = *(*&v6[101] + 8 * v91);
              result = (result + 1);
            }

            if (v90 > 6)
            {
              break;
            }

            ++v90;
            ++v91;
          }

          while (v91 < v50);
        }
      }
    }

    ++v15;
    v48 += 8;
  }

  while (v15 != v16);
  return result;
}

uint64_t C3DCullingSystem_CullRange_x4<false,true>(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v69 = *MEMORY[0x277D85DE8];
  if ((v3 & 3) != 0)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DCullingSystem_AABBRange_x8(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = v4 >> 2;
  v16 = (v2 + 3) >> 2;
  v17 = *(v6 + 880);
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21.i64[0] = 0x8000000080000000;
    v21.i64[1] = 0x8000000080000000;
    v22 = v6;
    do
    {
      for (i = 0; i != 96; i += 16)
      {
        v24 = *(v22 + i);
        v25 = &v68[v19 + 145];
        v26 = vdupq_lane_s32(*v24.i8, 0);
        v27 = vdupq_lane_s32(*v24.i8, 1);
        *v25 = v26;
        v25[1] = v27;
        v28 = vdupq_laneq_s32(v24, 2);
        v25[2] = v28;
        v25[3] = vdupq_laneq_s32(v24, 3);
        v29 = &v68[v20 + 1];
        *v29 = vandq_s8(v26, v21);
        v29[1] = vandq_s8(v27, v21);
        v29[2] = vandq_s8(v28, v21);
        v19 += 4;
        v20 += 3;
      }

      ++v18;
      v22 += 96;
    }

    while (v18 != v17);
  }

  if (v15 >= v16)
  {
    return 0;
  }

  result = 0;
  v31 = *(v6 + 768);
  v32 = *(v6 + 776);
  v33 = vdupq_n_s32(*(v6 + 836) | (~*(v6 + 840) << 8));
  v34 = (v6 + 816);
  v35 = (v6 + 832);
  v36 = vld1q_dup_f32(v35);
  v37 = *(v6 + 784);
  v38 = (v6 + 820);
  v39 = vld1q_dup_f32(v34);
  v40 = (v6 + 824);
  v41 = (v6 + 828);
  v42 = vld1q_dup_f32(v40);
  v43 = *(v6 + 792);
  v44 = vld1q_dup_f32(v38);
  v45 = vld1q_dup_f32(v41);
  v46 = v4 & 0xFFFFFFFC;
  v47 = v2;
  do
  {
    v48 = *(v37 + 16 * v15);
    v49 = *(v43 + 16 * v15);
    v50 = vceqzq_s32(vorrq_s8(vandq_s8(v49, v44), vandq_s8(v48, v39)));
    v51 = vorrq_s8(vandq_s8(v49, v45), vandq_s8(v48, v42));
    v52 = vmovl_u16(*(v32 + 8 * v15));
    v53 = vandq_s8(vbicq_s8(vtstq_s32(v36, v52), v50), vceqzq_s32(vorrq_s8(v51, vandq_s8(v33, v52))));
    if ((vmaxvq_u32(v53) & 0x80000000) != 0)
    {
      if (v17)
      {
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v57 = vmovn_s32(v53);
        v59 = 0uLL;
        v60 = vmovl_s16(v57);
        do
        {
          v61 = 0;
          v62.i64[0] = -1;
          v62.i64[1] = -1;
          v63 = v55;
          do
          {
            v64 = &v68[(v56 + v61) + 145];
            v58 = v31 + 96 * v15;
            v62 = vandq_s8(v62, vmlaq_f32(vmlaq_f32(vmlaq_f32(v64[3], *v64, vsubq_f32(*v58, veorq_s8(v68[v63 + 1], *(v58 + 48)))), v64[1], vsubq_f32(*(v58 + 16), veorq_s8(v68[v63 + 2], *(v58 + 64)))), v64[2], vsubq_f32(*(v58 + 32), veorq_s8(v68[v63 + 3], *(v58 + 80)))));
            v63 += 3;
            v61 += 4;
          }

          while (v61 != 24);
          v55 += 18;
          v59 = vorrq_s8(vandq_s8(vandq_s8(xmmword_21C27FFE0[v54++], v60), vcltzq_s32(v62)), v59);
          v56 += 24;
        }

        while (v54 != v17);
      }

      else
      {
        v59 = 0uLL;
      }

      if ((vminvq_u32(vceqzq_s32(v59)) & 0x80000000) == 0 && 4 * v15 < v47)
      {
        v65 = 0;
        v66 = v46;
        do
        {
          v68[0] = v59;
          v67 = *(v68 & 0xFFFFFFFFFFFFFFF3 | (4 * (v65 & 3)));
          if (v67)
          {
            *(*(v6 + 872) + result) = v67;
            *(*(v6 + 856) + 8 * result) = *(*(v6 + 808) + 8 * v66);
            result = (result + 1);
          }

          if (v65 > 2)
          {
            break;
          }

          ++v65;
          ++v66;
        }

        while (v66 < v47);
      }
    }

    ++v15;
    v46 += 4;
  }

  while (v15 != v16);
  return result;
}

uint64_t C3DCullingSystem_CullRange_x1<false,true>(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(a1 + 836) | (~*(a1 + 840) << 8);
  v5 = *(a1 + 832);
  v6 = a2;
  do
  {
    v7 = *(*(a1 + 776) + 2 * v6);
    v8 = v5 & v7;
    v9 = v4 & v7;
    if (v8)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v11 = *(*(a1 + 784) + 4 * v6) | (*(*(a1 + 792) + 4 * v6) << 32);
      if ((v11 & *(a1 + 816)) != 0 && (*(a1 + 824) & v11) == 0)
      {
        v12 = 0;
        v13 = 0;
        v14 = (*(a1 + 768) + 32 * v6);
        v15 = *v14;
        v16 = v14[1];
        do
        {
          v17 = 0;
          v18 = 0;
          v19 = *(a1 + 48);
          v26[2] = *(a1 + 32);
          v26[3] = v19;
          v20 = *(a1 + 80);
          v26[4] = *(a1 + 64);
          v26[5] = v20;
          v21 = *(a1 + 16);
          v26[0] = *a1;
          v26[1] = v21;
          do
          {
            v22 = v26[v17];
            v23 = vmulq_f32(v15, v22);
            *v23.i8 = vadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
            v24 = vmulq_f32(v16, vabsq_f32(v22));
            *v23.i8 = vadd_f32(vzip1_s32(*v23.i8, *v24.f32), vzip2_s32(*v23.i8, *v24.f32));
            if (*v23.i32 > (v24.f32[2] + *&v23.i32[1]))
            {
              break;
            }

            v18 = v17++ > 4;
          }

          while (v17 != 6);
          v13 |= (v18 << v12++);
        }

        while (v12 != 6);
        if (v13)
        {
          *(*(a1 + 872) + v3) = v13;
          *(*(a1 + 856) + 8 * v3) = *(*(a1 + 808) + 8 * v6);
          v3 = (v3 + 1);
        }
      }
    }

    ++v6;
  }

  while (v6 != a3);
  return v3;
}

uint64_t C3DCullingSystem_CullRange_x8<true,false>(int32x2_t *a1, unsigned int a2, unsigned int a3)
{
  v74 = *MEMORY[0x277D85DE8];
  if ((a2 & 7) != 0)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DCullingSystem_AABBRange_x8(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = a2 >> 3;
  v15 = (a3 + 7) >> 3;
  v16 = a1[110].u32[0];
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20.i64[0] = 0x8000000080000000;
    v20.i64[1] = 0x8000000080000000;
    v21 = a1;
    do
    {
      for (i = 0; i != 12; i += 2)
      {
        v23 = *v21[i].i8;
        v24 = vdupq_lane_s32(*v23.i8, 0);
        v25 = &v73[2 * v18 + 36];
        *v25 = v24;
        v25[1] = v24;
        v26 = vdupq_lane_s32(*v23.i8, 1);
        v25[2] = v26;
        v25[3] = v26;
        v27 = vdupq_laneq_s32(v23, 2);
        v28 = vdupq_laneq_s32(v23, 3);
        v25[4] = v27;
        v25[5] = v27;
        v25[6] = v28;
        v25[7] = v28;
        v29 = &v73[2 * v19];
        v30 = vandq_s8(v24, v20);
        *v29 = v30;
        v29[1] = v30;
        v31 = vandq_s8(v26, v20);
        v29[2] = v31;
        v29[3] = v31;
        v32 = vandq_s8(v27, v20);
        v29[4] = v32;
        v29[5] = v32;
        v18 += 4;
        v19 += 3;
      }

      ++v17;
      v21 += 12;
    }

    while (v17 != v16);
  }

  if (v14 >= v15)
  {
    return 0;
  }

  result = 0;
  v34 = a1[97];
  v35 = &a1[102];
  v36 = vdupq_n_s32(a1[104].i32[1] | (~a1[105].i32[0] << 8));
  v37 = vdupq_lane_s32(a1[104], 0);
  v38 = a1[98];
  v39 = &a1[102] + 1;
  v40 = vld1q_dup_f32(v35);
  v41 = &a1[103];
  v42 = &a1[103] + 1;
  v43 = vld1q_dup_f32(v41);
  v44 = vld1q_dup_f32(v39);
  v45 = a1[99];
  v46 = vld1q_dup_f32(v42);
  v47 = a1[96];
  do
  {
    v48 = (*&v38 + 32 * v14);
    v49 = *v48;
    v50 = v48[1];
    v51 = vandq_s8(*v48, v40);
    v52 = (*&v45 + 32 * v14);
    v53 = v52[1];
    v54 = vuzp1q_s16(vceqzq_s32(vorrq_s8(vandq_s8(*v52, v44), v51)), vceqzq_s32(vorrq_s8(vandq_s8(v53, v44), vandq_s8(v50, v40))));
    v55 = *(*&v34 + 16 * v14);
    v56 = vmovl_u16(*v55.i8);
    v57 = vmovl_high_u16(v55);
    v58 = vmovn_s16(vandq_s8(vbicq_s8(vmvnq_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(v37, v56)), vceqzq_s32(vandq_s8(v37, v57)))), v54), vuzp1q_s16(vceqzq_s32(vorrq_s8(vorrq_s8(vandq_s8(*v52, v46), vandq_s8(v49, v43)), vandq_s8(v36, v56))), vceqzq_s32(vorrq_s8(vorrq_s8(vandq_s8(v53, v46), vandq_s8(v50, v43)), vandq_s8(v36, v57))))));
    v59 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v58, *v36.i8)), 0x1FuLL));
    v60 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v58, *v36.i8)), 0x1FuLL));
    if ((vmaxvq_u32(vorrq_s8(v60, v59)) & 0x80000000) != 0)
    {
      if (v16)
      {
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v64 = *&v47 + 192 * v14;
        do
        {
          v65 = 0;
          v66 = v61;
          do
          {
            v67 = &v73[2 * v66];
            v68 = &v73[2 * (v62 + v65) + 36];
            v59 = vandq_s8(v59, vmlaq_f32(vmlaq_f32(vmlaq_f32(v68[7], v68[1], vsubq_f32(*(v64 + 16), veorq_s8(v67[1], *(v64 + 112)))), v68[3], vsubq_f32(*(v64 + 48), veorq_s8(v67[3], *(v64 + 144)))), v68[5], vsubq_f32(*(v64 + 80), veorq_s8(v67[5], *(v64 + 176)))));
            v60 = vandq_s8(v60, vmlaq_f32(vmlaq_f32(vmlaq_f32(v68[6], *v68, vsubq_f32(*v64, veorq_s8(*v67, *(v64 + 96)))), v68[2], vsubq_f32(*(v64 + 32), veorq_s8(v67[2], *(v64 + 128)))), v68[4], vsubq_f32(*(v64 + 64), veorq_s8(v67[4], *(v64 + 160)))));
            v66 += 3;
            v65 += 4;
          }

          while (v65 != 24);
          v61 += 18;
          ++v63;
          v62 += 24;
        }

        while (v63 != v16);
        v58 = vmovn_s16(vuzp1q_s16(vcltzq_s32(v60), vcltzq_s32(v59)));
      }

      v69 = vaddvq_s32(vorrq_s8(vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v58, *v36.i8)), 0x1FuLL)), xmmword_21C27FE30), vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v58, *v36.i8)), 0x1FuLL)), xmmword_21C27FE20)));
      v70 = 8 * v14;
      if (v69)
      {
        v71 = v70 >= a3;
      }

      else
      {
        v71 = 1;
      }

      if (!v71)
      {
        v72 = a1[108];
        do
        {
          if (v69)
          {
            *(*&v72 + 4 * result) = v70;
            result = (result + 1);
          }

          if (v69 < 2)
          {
            break;
          }

          LODWORD(v70) = v70 + 1;
          v69 >>= 1;
        }

        while (v70 < a3);
      }
    }

    ++v14;
  }

  while (v14 != v15);
  return result;
}

uint64_t C3DCullingSystem_CullRange_x4<true,false>(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v63 = *MEMORY[0x277D85DE8];
  if ((a2 & 3) != 0)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DCullingSystem_AABBRange_x8(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = a2 >> 2;
  v15 = (a3 + 3) >> 2;
  v16 = *(a1 + 880);
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20.i64[0] = 0x8000000080000000;
    v20.i64[1] = 0x8000000080000000;
    v21 = a1;
    do
    {
      for (i = 0; i != 96; i += 16)
      {
        v23 = *(v21 + i);
        v24 = &v62[v18 + 18];
        v25 = vdupq_lane_s32(*v23.i8, 0);
        v26 = vdupq_lane_s32(*v23.i8, 1);
        *v24 = v25;
        v24[1] = v26;
        v27 = vdupq_laneq_s32(v23, 2);
        v24[2] = v27;
        v24[3] = vdupq_laneq_s32(v23, 3);
        v28 = &v62[v19];
        *v28 = vandq_s8(v25, v20);
        v28[1] = vandq_s8(v26, v20);
        v28[2] = vandq_s8(v27, v20);
        v18 += 4;
        v19 += 3;
      }

      ++v17;
      v21 += 96;
    }

    while (v17 != v16);
  }

  if (v14 >= v15)
  {
    return 0;
  }

  result = 0;
  v30 = *(a1 + 768);
  v31 = *(a1 + 776);
  v32 = (a1 + 816);
  v33 = vdupq_n_s32(*(a1 + 836) | (~*(a1 + 840) << 8));
  v34 = (a1 + 832);
  v35 = vld1q_dup_f32(v34);
  v36 = *(a1 + 784);
  v37 = (a1 + 820);
  v38 = vld1q_dup_f32(v32);
  v39 = (a1 + 824);
  v40 = vld1q_dup_f32(v39);
  v41 = (a1 + 828);
  v42 = *(a1 + 792);
  v43 = vld1q_dup_f32(v37);
  v44 = vld1q_dup_f32(v41);
  do
  {
    v45 = *(v36 + 16 * v14);
    v46 = *(v42 + 16 * v14);
    v47 = vceqzq_s32(vorrq_s8(vandq_s8(v46, v43), vandq_s8(v45, v38)));
    v48 = vorrq_s8(vandq_s8(v46, v44), vandq_s8(v45, v40));
    v49 = vmovl_u16(*(v31 + 8 * v14));
    v50 = vandq_s8(vbicq_s8(vtstq_s32(v35, v49), v47), vceqzq_s32(vorrq_s8(v48, vandq_s8(v33, v49))));
    if ((vmaxvq_u32(v50) & 0x80000000) != 0)
    {
      if (v16)
      {
        v51 = 0;
        v52 = 0;
        v53 = 0;
        do
        {
          v55 = 0;
          v56 = v51;
          do
          {
            v57 = &v62[(v52 + v55) + 18];
            v54 = v30 + 96 * v14;
            v50 = vandq_s8(v50, vmlaq_f32(vmlaq_f32(vmlaq_f32(v57[3], *v57, vsubq_f32(*v54, veorq_s8(v62[v56], *(v54 + 48)))), v57[1], vsubq_f32(*(v54 + 16), veorq_s8(v62[v56 + 1], *(v54 + 64)))), v57[2], vsubq_f32(*(v54 + 32), veorq_s8(v62[v56 + 2], *(v54 + 80)))));
            v56 += 3;
            v55 += 4;
          }

          while (v55 != 24);
          v51 += 18;
          ++v53;
          v52 += 24;
        }

        while (v53 != v16);
        v50 = vcltzq_s32(v50);
      }

      v58 = vaddvq_s32(vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vmovn_s32(v50)), 0x1FuLL)), xmmword_21C27FE30));
      v59 = 4 * v14;
      if (v58)
      {
        v60 = v59 >= a3;
      }

      else
      {
        v60 = 1;
      }

      if (!v60)
      {
        v61 = *(a1 + 864);
        do
        {
          if (v58)
          {
            *(v61 + 4 * result) = v59;
            result = (result + 1);
          }

          if (v58 < 2)
          {
            break;
          }

          LODWORD(v59) = v59 + 1;
          v58 >>= 1;
        }

        while (v59 < a3);
      }
    }

    ++v14;
  }

  while (v14 != v15);
  return result;
}

uint64_t C3DCullingSystem_CullRange_x1<true,false>(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(a1 + 836) | (~*(a1 + 840) << 8);
  v5 = *(a1 + 832);
  v6 = *(a1 + 816);
  v7 = *(a1 + 824);
  v8 = *(a1 + 864);
  v9 = a2;
  do
  {
    v10 = *(*(a1 + 776) + 2 * v9);
    v11 = v5 & v10;
    v12 = v4 & v10;
    if (v11)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v14 = *(*(a1 + 784) + 4 * v9) | (*(*(a1 + 792) + 4 * v9) << 32);
      v15 = v14 & v6;
      v16 = v7 & v14;
      if (v15 && v16 == 0)
      {
        v18 = 0;
        v19 = *(a1 + 48);
        v27[2] = *(a1 + 32);
        v27[3] = v19;
        v20 = *(a1 + 80);
        v27[4] = *(a1 + 64);
        v27[5] = v20;
        v21 = *(a1 + 16);
        v27[0] = *a1;
        v27[1] = v21;
        v22 = (*(a1 + 768) + 32 * v9);
        while (1)
        {
          v23 = v27[v18];
          v24 = vmulq_f32(*v22, v23);
          *v24.i8 = vadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
          v25 = vmulq_f32(v22[1], vabsq_f32(v23));
          *v24.i8 = vadd_f32(vzip1_s32(*v24.i8, *v25.f32), vzip2_s32(*v24.i8, *v25.f32));
          if (*v24.i32 > (v25.f32[2] + *&v24.i32[1]))
          {
            break;
          }

          if (++v18 == 6)
          {
            *(v8 + 4 * v3) = v9;
            v3 = (v3 + 1);
            break;
          }
        }
      }
    }

    ++v9;
  }

  while (v9 != a3);
  return v3;
}

uint64_t C3DCullingSystem_CullRange_x8<false,false>(int32x2_t *a1, unsigned int a2, unsigned int a3)
{
  v75 = *MEMORY[0x277D85DE8];
  if ((a2 & 7) != 0)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DCullingSystem_AABBRange_x8(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = a2 >> 3;
  v15 = (a3 + 7) >> 3;
  v16 = a1[110].u32[0];
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20.i64[0] = 0x8000000080000000;
    v20.i64[1] = 0x8000000080000000;
    v21 = a1;
    do
    {
      for (i = 0; i != 12; i += 2)
      {
        v23 = *v21[i].i8;
        v24 = vdupq_lane_s32(*v23.i8, 0);
        v25 = &v74[2 * v18 + 36];
        *v25 = v24;
        v25[1] = v24;
        v26 = vdupq_lane_s32(*v23.i8, 1);
        v25[2] = v26;
        v25[3] = v26;
        v27 = vdupq_laneq_s32(v23, 2);
        v28 = vdupq_laneq_s32(v23, 3);
        v25[4] = v27;
        v25[5] = v27;
        v25[6] = v28;
        v25[7] = v28;
        v29 = &v74[2 * v19];
        v30 = vandq_s8(v24, v20);
        *v29 = v30;
        v29[1] = v30;
        v31 = vandq_s8(v26, v20);
        v29[2] = v31;
        v29[3] = v31;
        v32 = vandq_s8(v27, v20);
        v29[4] = v32;
        v29[5] = v32;
        v18 += 4;
        v19 += 3;
      }

      ++v17;
      v21 += 12;
    }

    while (v17 != v16);
  }

  if (v14 >= v15)
  {
    return 0;
  }

  result = 0;
  v34 = a1[97];
  v35 = vdupq_n_s32(a1[104].i32[1] | (~a1[105].i32[0] << 8));
  v36 = vdupq_lane_s32(a1[104], 0);
  v37 = &a1[102];
  v38 = a1[98];
  v39 = &a1[102] + 1;
  v40 = vld1q_dup_f32(v37);
  v41 = &a1[103];
  v42 = &a1[103] + 1;
  v43 = vld1q_dup_f32(v41);
  v44 = a1[99];
  v45 = vld1q_dup_f32(v39);
  v46 = vld1q_dup_f32(v42);
  v47 = a1[96];
  v48 = a2 & 0xFFFFFFF8;
  v49 = a3;
  do
  {
    v50 = (*&v38 + 32 * v14);
    v51 = *v50;
    v52 = v50[1];
    v53 = vandq_s8(*v50, v40);
    v54 = (*&v44 + 32 * v14);
    v55 = v54[1];
    v56 = vuzp1q_s16(vceqzq_s32(vorrq_s8(vandq_s8(*v54, v45), v53)), vceqzq_s32(vorrq_s8(vandq_s8(v55, v45), vandq_s8(v52, v40))));
    v57 = *(*&v34 + 16 * v14);
    v58 = vmovl_u16(*v57.i8);
    v59 = vmovl_high_u16(v57);
    v60 = vmovn_s16(vandq_s8(vbicq_s8(vmvnq_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(v36, v58)), vceqzq_s32(vandq_s8(v36, v59)))), v56), vuzp1q_s16(vceqzq_s32(vorrq_s8(vorrq_s8(vandq_s8(*v54, v46), vandq_s8(v51, v43)), vandq_s8(v35, v58))), vceqzq_s32(vorrq_s8(vorrq_s8(vandq_s8(v55, v46), vandq_s8(v52, v43)), vandq_s8(v35, v59))))));
    v61 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v60, *v35.i8)), 0x1FuLL));
    v62 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v60, *v35.i8)), 0x1FuLL));
    if ((vmaxvq_u32(vorrq_s8(v62, v61)) & 0x80000000) != 0)
    {
      if (v16)
      {
        v63 = 0;
        v64 = 0;
        v65 = 0;
        v66 = *&v47 + 192 * v14;
        do
        {
          v67 = 0;
          v68 = v63;
          do
          {
            v69 = &v74[2 * v68];
            v70 = &v74[2 * (v64 + v67) + 36];
            v61 = vandq_s8(v61, vmlaq_f32(vmlaq_f32(vmlaq_f32(v70[7], v70[1], vsubq_f32(*(v66 + 16), veorq_s8(v69[1], *(v66 + 112)))), v70[3], vsubq_f32(*(v66 + 48), veorq_s8(v69[3], *(v66 + 144)))), v70[5], vsubq_f32(*(v66 + 80), veorq_s8(v69[5], *(v66 + 176)))));
            v62 = vandq_s8(v62, vmlaq_f32(vmlaq_f32(vmlaq_f32(v70[6], *v70, vsubq_f32(*v66, veorq_s8(*v69, *(v66 + 96)))), v70[2], vsubq_f32(*(v66 + 32), veorq_s8(v69[2], *(v66 + 128)))), v70[4], vsubq_f32(*(v66 + 64), veorq_s8(v69[4], *(v66 + 160)))));
            v68 += 3;
            v67 += 4;
          }

          while (v67 != 24);
          v63 += 18;
          ++v65;
          v64 += 24;
        }

        while (v65 != v16);
        v60 = vmovn_s16(vuzp1q_s16(vcltzq_s32(v62), vcltzq_s32(v61)));
      }

      v71 = vaddvq_s32(vorrq_s8(vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v60, *v35.i8)), 0x1FuLL)), xmmword_21C27FE30), vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v60, *v35.i8)), 0x1FuLL)), xmmword_21C27FE20)));
      if (v71)
      {
        v72 = 8 * v14 >= v49;
      }

      else
      {
        v72 = 1;
      }

      v73 = v48;
      if (!v72)
      {
        do
        {
          if (v71)
          {
            *(*&a1[107] + 8 * result) = *(*&a1[101] + 8 * v73);
            result = (result + 1);
          }

          if (v71 < 2)
          {
            break;
          }

          ++v73;
          v71 >>= 1;
        }

        while (v73 < v49);
      }
    }

    ++v14;
    v48 += 8;
  }

  while (v14 != v15);
  return result;
}

uint64_t C3DCullingSystem_CullRange_x4<false,false>(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v64 = *MEMORY[0x277D85DE8];
  if ((a2 & 3) != 0)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DCullingSystem_AABBRange_x8(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = a2 >> 2;
  v15 = (a3 + 3) >> 2;
  v16 = *(a1 + 880);
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20.i64[0] = 0x8000000080000000;
    v20.i64[1] = 0x8000000080000000;
    v21 = a1;
    do
    {
      for (i = 0; i != 96; i += 16)
      {
        v23 = *(v21 + i);
        v24 = &v63[v18 + 18];
        v25 = vdupq_lane_s32(*v23.i8, 0);
        v26 = vdupq_lane_s32(*v23.i8, 1);
        *v24 = v25;
        v24[1] = v26;
        v27 = vdupq_laneq_s32(v23, 2);
        v24[2] = v27;
        v24[3] = vdupq_laneq_s32(v23, 3);
        v28 = &v63[v19];
        *v28 = vandq_s8(v25, v20);
        v28[1] = vandq_s8(v26, v20);
        v28[2] = vandq_s8(v27, v20);
        v18 += 4;
        v19 += 3;
      }

      ++v17;
      v21 += 96;
    }

    while (v17 != v16);
  }

  if (v14 >= v15)
  {
    return 0;
  }

  result = 0;
  v30 = *(a1 + 768);
  v31 = *(a1 + 776);
  v32 = vdupq_n_s32(*(a1 + 836) | (~*(a1 + 840) << 8));
  v33 = (a1 + 816);
  v34 = (a1 + 832);
  v35 = vld1q_dup_f32(v34);
  v36 = *(a1 + 784);
  v37 = (a1 + 820);
  v38 = vld1q_dup_f32(v33);
  v39 = (a1 + 824);
  v40 = (a1 + 828);
  v41 = vld1q_dup_f32(v39);
  v42 = *(a1 + 792);
  v43 = vld1q_dup_f32(v37);
  v44 = vld1q_dup_f32(v40);
  v45 = a2 & 0xFFFFFFFC;
  v46 = a3;
  do
  {
    v47 = *(v36 + 16 * v14);
    v48 = *(v42 + 16 * v14);
    v49 = vceqzq_s32(vorrq_s8(vandq_s8(v48, v43), vandq_s8(v47, v38)));
    v50 = vorrq_s8(vandq_s8(v48, v44), vandq_s8(v47, v41));
    v51 = vmovl_u16(*(v31 + 8 * v14));
    v52 = vandq_s8(vbicq_s8(vtstq_s32(v35, v51), v49), vceqzq_s32(vorrq_s8(v50, vandq_s8(v32, v51))));
    if ((vmaxvq_u32(v52) & 0x80000000) != 0)
    {
      if (v16)
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        do
        {
          v57 = 0;
          v58 = v53;
          do
          {
            v59 = &v63[(v54 + v57) + 18];
            v56 = v30 + 96 * v14;
            v52 = vandq_s8(v52, vmlaq_f32(vmlaq_f32(vmlaq_f32(v59[3], *v59, vsubq_f32(*v56, veorq_s8(v63[v58], *(v56 + 48)))), v59[1], vsubq_f32(*(v56 + 16), veorq_s8(v63[v58 + 1], *(v56 + 64)))), v59[2], vsubq_f32(*(v56 + 32), veorq_s8(v63[v58 + 2], *(v56 + 80)))));
            v58 += 3;
            v57 += 4;
          }

          while (v57 != 24);
          v53 += 18;
          ++v55;
          v54 += 24;
        }

        while (v55 != v16);
        v52 = vcltzq_s32(v52);
      }

      v60 = vaddvq_s32(vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vmovn_s32(v52)), 0x1FuLL)), xmmword_21C27FE30));
      if (v60)
      {
        v61 = 4 * v14 >= v46;
      }

      else
      {
        v61 = 1;
      }

      v62 = v45;
      if (!v61)
      {
        do
        {
          if (v60)
          {
            *(*(a1 + 856) + 8 * result) = *(*(a1 + 808) + 8 * v62);
            result = (result + 1);
          }

          if (v60 < 2)
          {
            break;
          }

          ++v62;
          v60 >>= 1;
        }

        while (v62 < v46);
      }
    }

    ++v14;
    v45 += 4;
  }

  while (v14 != v15);
  return result;
}

uint64_t C3DCullingSystem_CullRange_x1<false,false>(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(a1 + 836) | (~*(a1 + 840) << 8);
  v5 = *(a1 + 832);
  v6 = *(a1 + 816);
  v7 = *(a1 + 824);
  v8 = a2;
  do
  {
    v9 = *(*(a1 + 776) + 2 * v8);
    v10 = v5 & v9;
    v11 = v4 & v9;
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v13 = *(*(a1 + 784) + 4 * v8) | (*(*(a1 + 792) + 4 * v8) << 32);
      v14 = v13 & v6;
      v15 = v7 & v13;
      if (v14 && v15 == 0)
      {
        v17 = 0;
        v18 = *(a1 + 48);
        v26[2] = *(a1 + 32);
        v26[3] = v18;
        v19 = *(a1 + 80);
        v26[4] = *(a1 + 64);
        v26[5] = v19;
        v20 = *(a1 + 16);
        v26[0] = *a1;
        v26[1] = v20;
        v21 = (*(a1 + 768) + 32 * v8);
        while (1)
        {
          v22 = v26[v17];
          v23 = vmulq_f32(*v21, v22);
          *v23.i8 = vadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
          v24 = vmulq_f32(v21[1], vabsq_f32(v22));
          *v23.i8 = vadd_f32(vzip1_s32(*v23.i8, *v24.f32), vzip2_s32(*v23.i8, *v24.f32));
          if (*v23.i32 > (v24.f32[2] + *&v23.i32[1]))
          {
            break;
          }

          if (++v17 == 6)
          {
            *(*(a1 + 856) + 8 * v3) = *(*(a1 + 808) + 8 * v8);
            v3 = (v3 + 1);
            break;
          }
        }
      }
    }

    ++v8;
  }

  while (v8 != a3);
  return v3;
}

void OUTLINED_FUNCTION_2_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0x12u);
}

uint64_t C3D::RenderGraphResourceManager::get(C3D::RenderGraphResourceManager *this, uint64_t a2)
{
  v2 = (*(this + 7) - 1) & a2;
  v3 = *(*(this + 2) + 2 * v2);
  if (v3 < 2)
  {
    return 0;
  }

  while ((v3 & 2) == 0 || *(*this + 8 * v2) != a2)
  {
    ++v2;
    v4 = v3 >= 4;
    v3 >>= 1;
    if (!v4)
    {
      return 0;
    }
  }

  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  result = *(v6 + 8 * v2);
  *(result + 8) = 0;
  return result;
}

uint64_t C3D::RenderGraphResourceManager::set(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  C3D::Hash<std::unique_ptr<C3D::RenderGraphResource>,C3D::MallocAllocator>::insert(a1, a2, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_21BF5A330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    C3D::RenderGraphResourceManager::set(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t C3D::Hash<std::unique_ptr<C3D::RenderGraphResource>,C3D::MallocAllocator>::insert(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  while (1)
  {
    v6 = *(a1 + 28);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 16);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v6 + 15;
    if (v12 >= v7 + 496)
    {
      v12 = v7 + 496;
    }

    LODWORD(v13) = v7;
    v14 = v12 - v7;
    if (v12 > v7)
    {
      v13 = v7;
      while ((*(v8 + 2 * v13) & 1) != 0)
      {
        ++v13;
        if (!--v14)
        {
          goto LABEL_33;
        }
      }
    }

    if (v13 != v12)
    {
      v15 = *(v8 + 2 * v13) | 1;
      *(v8 + 2 * v13) = v15;
      if (v13 <= v7 + 14)
      {
        v32 = v13;
LABEL_36:
        v33 = *a3;
        *a3 = 0;
        v34 = *a1;
        *(*(a1 + 8) + 8 * v32) = v33;
        *(v34 + 8 * v32) = a2;
        *(v8 + 2 * v32) = v15;
        result = 1;
        *(v8 + 2 * v7) |= 1 << (v13 - v7 + 1);
        ++*(a1 + 24);
        return result;
      }

      while (1)
      {
        v16 = v13;
        v17 = v13 - 14;
        if (v13 < 0xF)
        {
          v17 = 0;
        }

        v18 = v17 - 1;
        v19 = v17 <= v13 ? v13 : v17;
        v20 = 1;
        while (1)
        {
          v13 = v18 + 1;
          if (v17 <= v13)
          {
            break;
          }

LABEL_25:
          ++v20;
          v18 = v13;
          if (v13 == v19)
          {
            goto LABEL_32;
          }
        }

        v21 = 1 << (v18 - v17 + 2);
        v22 = v20;
        v23 = v17;
        while (1)
        {
          v24 = v23;
          v25 = *(v8 + 2 * v23);
          if ((v21 & v25) != 0)
          {
            break;
          }

          v23 = v24 + 1;
          v21 = v21 >> 1;
          --v22;
          if (v24 + 1 > v13)
          {
            goto LABEL_25;
          }
        }

        if (v13 >= v16)
        {
          break;
        }

        v26 = *(a1 + 8);
        *(*a1 + 8 * v16) = *(*a1 + 8 * v13);
        v27 = *(v26 + 8 * v13);
        *(v26 + 8 * v13) = 0;
        *(v26 + 8 * v16) = v27;
        v28 = *(v26 + 8 * v13);
        *(v26 + 8 * v13) = 0;
        if (v28)
        {
          (*(*v28 + 8))(v28);
          v8 = *(a1 + 16);
          LOWORD(v25) = *(v8 + 2 * v24);
        }

        *(v8 + 2 * v24) = (v25 | (1 << (v16 - v24 + 1))) ^ (1 << v22);
        if (v13 <= v7 + 14)
        {
          v15 = *(v8 + 2 * v13) | 1;
          v32 = v13;
          goto LABEL_36;
        }
      }

LABEL_32:
      *(v8 + 2 * v16) ^= 1u;
    }

LABEL_33:
    C3D::Hash<std::unique_ptr<C3D::RenderGraphResource>,C3D::MallocAllocator>::_grow(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*a1 + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v29 = *(a1 + 8);
  v30 = *a3;
  *a3 = 0;
  result = *(v29 + 8 * v10);
  *(v29 + 8 * v10) = v30;
  if (result)
  {
    (*(*result + 8))(result);
    return 0;
  }

  return result;
}

void C3D::RenderGraphResourceManager::purgeIfNeeded(C3D::RenderGraphResourceManager *this)
{
  v18 = 0x2000000000;
  v19 = v20;
  v1 = *(this + 7);
  if (v1 != -15)
  {
    v3 = 0;
    do
    {
      if (*(*(this + 2) + 2 * v3))
      {
        v4 = *this;
        v5 = *(*(this + 1) + 8 * v3);
        v6 = *(v5 + 8);
        *(v5 + 8) = v6 + 1;
        if (v6 >= 0xA)
        {
          C3D::Array<unsigned long long,32u,C3D::MallocAllocator>::push_back<unsigned long long const&>(&v18, (v4 + 8 * v3));
          v1 = *(this + 7);
        }
      }

      ++v3;
    }

    while (v3 < (v1 + 15));
    v7 = v19;
    if (v18)
    {
      v8 = v19 + 8 * v18;
      do
      {
        v9 = (*(this + 7) - 1) & *v7;
        v10 = *(this + 2);
        v11 = *(v10 + 2 * v9);
        if (v11 >= 2)
        {
          v12 = 1;
          v13 = *(v10 + 2 * v9);
          while (1)
          {
            if ((v13 & 2) != 0)
            {
              v14 = v9 + v12 - 1;
              if (*v7 == *(*this + 8 * v14))
              {
                break;
              }
            }

            ++v12;
            v15 = v13 > 3;
            v13 >>= 1;
            if (!v15)
            {
              goto LABEL_18;
            }
          }

          *(v10 + 2 * v9) = v11 ^ (1 << v12);
          *(v10 + 2 * v14) ^= 1u;
          v16 = *(this + 1);
          v17 = *(v16 + 8 * v14);
          *(v16 + 8 * v14) = 0;
          if (v17)
          {
            (*(*v17 + 8))(v17);
          }

          --*(this + 6);
        }

LABEL_18:
        v7 += 8;
      }

      while (v7 != v8);
      v7 = v19;
    }

    if (v7 != v20)
    {
      free(v7);
    }
  }
}

void sub_21BF5A770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10 != v10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t C3D::Hash<std::unique_ptr<C3D::RenderGraphResource>,C3D::MallocAllocator>::~Hash(uint64_t a1)
{
  C3D::Hash<std::unique_ptr<C3D::RenderGraphResource>,C3D::MallocAllocator>::_destroy_values(*(a1 + 8), *(a1 + 16), *(a1 + 28) + 15);
  free(*(a1 + 8));
  free(*a1);
  free(*(a1 + 16));
  return a1;
}

uint64_t C3D::Hash<std::unique_ptr<C3D::RenderGraphResource>,C3D::MallocAllocator>::_destroy_values(uint64_t result, __int16 *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = a3;
    do
    {
      v6 = *a2++;
      if (v6)
      {
        result = *v4;
        *v4 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      ++v4;
      --v5;
    }

    while (v5);
  }

  return result;
}

void C3D::Hash<std::unique_ptr<C3D::RenderGraphResource>,C3D::MallocAllocator>::_grow(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 28);
  C3D::Hash<std::unique_ptr<C3D::RenderGraphResource>,C3D::MallocAllocator>::_allocate(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v5 != -15)
  {
    v7 = v3;
    v8 = v2;
    v9 = v4;
    do
    {
      v10 = *v9++;
      if (v10)
      {
        C3D::Hash<std::unique_ptr<C3D::RenderGraphResource>,C3D::MallocAllocator>::insert(a1, *v8, v7);
        v11 = *v7;
        *v7 = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }
      }

      ++v8;
      ++v7;
      --v6;
    }

    while (v6);
  }

  free(v3);
  free(v2);

  free(v4);
}

void C3D::Array<unsigned long long,32u,C3D::MallocAllocator>::push_back<unsigned long long const&>(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *a1 + 1;
  if (v5 > *(a1 + 4))
  {
    C3D::Array<unsigned long long,32u,C3D::MallocAllocator>::GrowCapacityBy(a1, 1, 0);
    v4 = *a1;
    v5 = *a1 + 1;
  }

  *(*(a1 + 8) + 8 * v4) = *a2;
  *a1 = v5;
}

void C3D::Array<unsigned long long,32u,C3D::MallocAllocator>::GrowCapacityBy(unsigned int *a1, int a2, int a3)
{
  v4 = *(a1 + 1);
  v5 = 1.5;
  if (a3)
  {
    v5 = 1.0;
  }

  v6 = (v5 * (a1[1] + a2));
  v7 = malloc_type_malloc(8 * v6, 0x5437EE60uLL);
  memcpy(v7, v4, 8 * *a1);
  *(a1 + 1) = v7;
  a1[1] = v6;
  if (v4 != a1 + 4)
  {

    free(v4);
  }
}

__CFString *C3DMeshSourceSemanticToSemanticString(int a1)
{
  result = 0;
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v4 = kC3DColorKey;
      }

      else
      {
        v4 = kC3DTexcoordKey;
      }
    }

    else if (a1)
    {
      if (a1 != 1)
      {
        return result;
      }

      v4 = kC3DNormalKey;
    }

    else
    {
      v4 = kC3DPositionKey;
    }

    return *v4;
  }

  if (a1 <= 5)
  {
    if (a1 == 4)
    {
      v4 = kC3DTexTangentKey;
    }

    else
    {
      v4 = kC3DSkinningJointsKey;
    }

    return *v4;
  }

  if (a1 == 6)
  {
    v4 = kC3DSkinningWeightsKey;
    return *v4;
  }

  v3 = @"edgeCrease";
  if (a1 != 8)
  {
    v3 = 0;
  }

  if (a1 == 7)
  {
    return @"vertexCrease";
  }

  else
  {
    return v3;
  }
}

uint64_t __GetSemanticFromSerializedSemanticString(const __CFString *a1)
{
  if (CFStringCompare(a1, @"vertex", 0))
  {
    if (CFStringCompare(a1, @"normal", 0))
    {
      if (CFStringCompare(a1, @"color", 0))
      {
        if (CFStringCompare(a1, @"texcoord", 0))
        {
          if (CFStringCompare(a1, @"textangent", 0))
          {
            if (CFStringCompare(a1, @"joints", 0))
            {
              if (CFStringCompare(a1, @"weights", 0))
              {
                return -1;
              }

              else
              {
                return 6;
              }
            }

            else
            {
              return 5;
            }
          }

          else
          {
            return 4;
          }
        }

        else
        {
          return 3;
        }
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t C3DMeshSourceGetTypeID()
{
  if (C3DMeshSourceGetTypeID_onceToken != -1)
  {
    C3DMeshSourceGetTypeID_cold_1();
  }

  return C3DMeshSourceGetTypeID_typeID;
}

double __C3DMeshSourceGetTypeID_block_invoke()
{
  C3DMeshSourceGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DMeshSourceContextClassSerializable;
  unk_281740BA0 = kC3DC3DMeshSourceContextClassSerializable;
  unk_281740BB0 = *off_282DC2F00;
  qword_281740B58 = _C3DMeshSourceCopyInstanceVariables;
  return result;
}

uint64_t _C3DMeshSourceCreate()
{
  if (C3DMeshSourceGetTypeID_onceToken != -1)
  {
    C3DMeshSourceGetTypeID_cold_1();
  }

  v1 = C3DMeshSourceGetTypeID_typeID;

  return C3DTypeCreateInstance_(v1, 88);
}

uint64_t C3DMeshSourceCreate(const void *a1, __int16 a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = C3DSizeOfBaseType(a5) * a4;

  return C3DMeshSourceCreateWithData(a2, a1, a5, a4, a3, v10, 0);
}

uint64_t C3DMeshSourceCreateWithData(__int16 a1, const void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithData_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if (a4 >= 5)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithData_cold_2(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  v30 = C3DSourceAccessorCreate(a3, a4, a5, a6, a7);
  v31 = C3DMeshSourceCreateWithAccessor(v30, a1);
  *(v31 + 72) = CFRetain(a2);
  C3DSourceAccessorSetSource(v30, v31);
  if (v30)
  {
    CFRelease(v30);
  }

  return v31;
}

uint64_t C3DMeshSourceCreateWithAccessor(const void *a1, __int16 a2)
{
  v4 = _C3DMeshSourceCreate();
  if (!v4)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithAccessor_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  C3DGenericSourceInit(v4, a1);
  *(v4 + 96) = a2;
  return v4;
}

uint64_t C3DMeshSourceCreateMutableWithMutableData(__int16 a1, const void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithData_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if (a4 >= 5)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithData_cold_2(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  v30 = C3DSourceAccessorCreate(a3, a4, a5, a6, a7);
  v31 = C3DMeshSourceCreateWithAccessor(v30, a1);
  *(v31 + 72) = CFRetain(a2);
  *(v31 + 88) |= 1u;
  C3DSourceAccessorSetSource(v30, v31);
  if (v30)
  {
    CFRelease(v30);
  }

  return v31;
}

uint64_t C3DMeshSourceCreateDeltaSource(uint64_t a1, uint64_t a2)
{
  v70 = 0u;
  v71 = 0u;
  C3DMeshSourceGetContent(a1, &v70);
  v68 = 0u;
  v69 = 0u;
  C3DMeshSourceGetContent(a2, &v68);
  v3 = v71;
  v4 = v69;
  if (v71 == v69)
  {
    v5 = v70;
    if (!v70)
    {
      v6 = scn_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        C3DMeshSourceCreateDeltaSource_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }

    v14 = v68;
    if (!v68)
    {
      v15 = scn_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        C3DMeshSourceCreateDeltaSource_cold_3(v15, v16, v17, v18, v19, v20, v21, v22);
      }
    }

    if (BYTE7(v69) == 1 && BYTE7(v71) == 1)
    {
      v23 = BYTE8(v69);
      if (BYTE8(v69) >= 3u)
      {
        v24 = 3;
      }

      else
      {
        v24 = BYTE8(v69);
      }

      v25 = malloc_type_malloc((4 * v24) * v3, 0xC89140F7uLL);
      v26 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v25, (4 * v24) * v3, *MEMORY[0x277CBECE8]);
      if (v3)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = BYTE6(v71);
        v31 = BYTE6(v69);
        do
        {
          if (v23)
          {
            v32 = (v14 + v28);
            v33 = v24;
            v34 = v25;
            v35 = (v5 + v27);
            do
            {
              v36 = *v32++;
              v37 = v36;
              v38 = *v35++;
              *v34++ = v37 - v38;
              --v33;
            }

            while (v33);
          }

          ++v29;
          v28 += v31;
          v27 += v30;
          v25 += 4 * v24;
        }

        while (v29 != v3);
      }

      Semantic = C3DMeshSourceGetSemantic(a2);
      v40 = C3DSizeOfBaseType(1);
      v41 = C3DMeshSourceCreateWithData(Semantic, v26, 1, v24, v3, v40 * v24, 0);
      v42 = v26;
    }

    else
    {
      v64 = a2;
      v44 = BYTE4(v71);
      v66 = C3DSizeOfBaseType(BYTE4(v71));
      v45 = malloc_type_malloc(v66 * v3, 0x16E166C7uLL);
      v63 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v45, v66 * v3, *MEMORY[0x277CBECE8]);
      v65 = v3;
      if (v3)
      {
        v49 = v14;
        v50 = v5;
        v51 = 0;
        v52 = 0;
        v53 = BYTE6(v71);
        v54 = BYTE4(v69);
        v55 = BYTE6(v69);
        do
        {
          *v56.i64 = C3DConvertFloatingTypeToFloat4(v44, (v50 + v51), v46, v47, v48);
          v67 = v56;
          *v59.i64 = C3DConvertFloatingTypeToFloat4(v54, (v49 + v52), v56, v57, v58);
          C3DConvertFloatingTypeFromFloat4(v44, v45, vsubq_f32(v59, v67));
          v52 += v55;
          v51 += v53;
          v45 += v66;
          --v3;
        }

        while (v3);
      }

      v60 = C3DMeshSourceGetSemantic(v64);
      v61 = C3DSizeOfBaseType(v44);
      v41 = C3DMeshSourceCreateWithData(v60, v63, v44, 1, v65, v61, 0);
      v42 = v63;
    }

    CFRelease(v42);
  }

  else
  {
    v43 = scn_default_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      C3DMeshSourceCreateDeltaSource_cold_1(v4, v3, v43);
    }

    return 0;
  }

  return v41;
}

uint64_t C3DMeshSourceGetContent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  Accessor = C3DGenericSourceGetAccessor(a1);
  Data = C3DSourceAccessorGetData(Accessor);
  Count = C3DSourceAccessorGetCount(Accessor);
  *(a2 + 16) = Count;
  Library = C3DSceneSourceGetLibrary(Accessor);
  *(a2 + 22) = Library;
  if (!Data || !Count)
  {
    goto LABEL_7;
  }

  if (C3DGenericSourceIsVolatile(a1))
  {
    *a2 = C3DSourceAccessorGetVolatileValuePtrAtIndex(Accessor, 0);
    *(a2 + 8) = Library * Count;
    goto LABEL_8;
  }

  BytePtr = CFDataGetBytePtr(Data);
  Length = CFDataGetLength(Data);
  Offset = C3DSourceAccessorGetOffset(Accessor);
  if (Length > Offset)
  {
    *a2 = &BytePtr[Offset];
    *(a2 + 8) = Length - Offset;
  }

  else
  {
LABEL_7:
    *a2 = 0;
    *(a2 + 8) = 0;
  }

LABEL_8:
  ComponentsValueType = C3DSourceAccessorGetComponentsValueType(Accessor);
  ComponentsCountPerValue = C3DSourceAccessorGetComponentsCountPerValue(Accessor);
  ComponentType = C3DBaseTypeGetComponentType(ComponentsValueType);
  *(a2 + 23) = ComponentType;
  v14 = ComponentsCountPerValue;
  if (ComponentsValueType != ComponentType)
  {
    v14 = C3DBaseTypeGetComponentCount(ComponentsValueType) * ComponentsCountPerValue;
  }

  *(a2 + 24) = v14;
  *(a2 + 20) = C3DBaseTypeGetCompoundType(ComponentsValueType, ComponentsCountPerValue);
  result = C3DSizeOfBaseType(ComponentsValueType);
  *(a2 + 21) = result * ComponentsCountPerValue;
  return result;
}

uint64_t C3DMeshSourceGetSemantic(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithAccessor_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 96);
}

uint64_t C3DMeshSourceCreateAbsoluteSource(uint64_t a1, uint64_t a2)
{
  v71 = 0u;
  v72 = 0u;
  C3DMeshSourceGetContent(a1, &v71);
  v3 = v71;
  if (!v71)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateDeltaSource_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v69 = 0u;
  v70 = 0u;
  C3DMeshSourceGetContent(a2, &v69);
  v12 = v69;
  if (!v69)
  {
    v13 = scn_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateAbsoluteSource_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  v21 = v72;
  if (v72 != v70)
  {
    return 0;
  }

  if (BYTE7(v70) == 1 && BYTE7(v72) == 1)
  {
    v22 = BYTE8(v70);
    if (BYTE8(v70) >= 3u)
    {
      v23 = 3;
    }

    else
    {
      v23 = BYTE8(v70);
    }

    v24 = malloc_type_malloc((4 * v23) * v72, 0xA595482FuLL);
    v25 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v24, (4 * v23) * v21, *MEMORY[0x277CBECE8]);
    if (v21)
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = BYTE6(v72);
      v30 = BYTE6(v70);
      do
      {
        if (v22)
        {
          v31 = (v3 + v27);
          v32 = v23;
          v33 = v24;
          v34 = (v12 + v26);
          do
          {
            v35 = *v31++;
            v36 = v35;
            v37 = *v34++;
            *v33++ = v36 + v37;
            --v32;
          }

          while (v32);
        }

        ++v28;
        v27 += v29;
        v26 += v30;
        v24 += 4 * v23;
      }

      while (v28 != v21);
    }

    Semantic = C3DMeshSourceGetSemantic(a2);
    v39 = C3DSizeOfBaseType(1) * v23;
    v40 = Semantic;
    v41 = v25;
    v42 = 1;
    v43 = v23;
    v44 = v21;
  }

  else
  {
    v65 = a2;
    v46 = BYTE4(v72);
    v67 = C3DSizeOfBaseType(BYTE4(v72));
    v47 = malloc_type_malloc(v67 * v21, 0x9DD6BBFAuLL);
    v64 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v47, v67 * v21, *MEMORY[0x277CBECE8]);
    v66 = v21;
    if (v21)
    {
      v51 = v12;
      v52 = v3;
      v53 = 0;
      v54 = 0;
      v55 = BYTE6(v72);
      v56 = BYTE4(v70);
      v57 = BYTE6(v70);
      do
      {
        *v58.i64 = C3DConvertFloatingTypeToFloat4(v46, (v52 + v53), v48, v49, v50);
        v68 = v58;
        *v61.i64 = C3DConvertFloatingTypeToFloat4(v56, (v51 + v54), v58, v59, v60);
        C3DConvertFloatingTypeFromFloat4(v46, v47, vaddq_f32(v68, v61));
        v54 += v57;
        v53 += v55;
        v47 += v67;
        --v21;
      }

      while (v21);
    }

    v62 = C3DMeshSourceGetSemantic(v65);
    v39 = C3DSizeOfBaseType(v46);
    v40 = v62;
    v25 = v64;
    v41 = v64;
    v42 = v46;
    v43 = 1;
    v44 = v66;
  }

  v45 = C3DMeshSourceCreateWithData(v40, v41, v42, v43, v44, v39, 0);
  CFRelease(v25);
  return v45;
}

uint64_t C3DMeshSourceGetCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithAccessor_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DSourceAccessorGetCount(*(a1 + 64));
}

uint64_t C3DMeshSourceCreatePackedCopy(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreatePackedCopy_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (!a2)
  {
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreatePackedCopy_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  v46 = 0u;
  C3DMeshElementGetContent(a2, a3, &v46);
  if (v47)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      LODWORD(v39) = 0;
      v45 = 0;
      v41 = v46;
      v42 = v47;
      v43 = v48;
      v44 = v49;
      C3DIndicesContentGetVertexIndicesForLinePrimitiveAtIndex(&v41, v22, &v39, &v45);
      v23 += (v45 - v39);
      ++v22;
    }

    while (v22 < v47);
  }

  else
  {
    v23 = 0;
  }

  v39 = 0u;
  v40 = 0u;
  C3DMeshSourceGetContent(a1, &v39);
  v24 = BYTE6(v40);
  if (C3DSizeOfBaseType(BYTE4(v40)) != v24)
  {
    v36 = scn_default_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      C3DMeshSourceCreatePackedCopy_cold_3();
    }

    return 0;
  }

  if (!(v23 * v24))
  {
    return 0;
  }

  v25 = malloc_type_malloc(v23 * v24, 0x605B113CuLL);
  if (v47)
  {
    v26 = 0;
    v27 = 0;
    v28 = v39;
    do
    {
      v45 = 0;
      v38 = 0;
      v41 = v46;
      v42 = v47;
      v43 = v48;
      v44 = v49;
      C3DIndicesContentGetVertexIndicesForLinePrimitiveAtIndex(&v41, v26, &v45, &v38);
      v29 = ((v38 - v45) * v24);
      memcpy(&v25[v27], (v28 + (v45 * v24)), v29);
      v27 += v29;
      ++v26;
    }

    while (v26 < v47);
  }

  v30 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v25, v23 * v24, *MEMORY[0x277CBECE8]);
  Semantic = C3DMeshSourceGetSemantic(a1);
  v32 = BYTE8(v40);
  v33 = BYTE7(v40);
  v34 = C3DSizeOfBaseType(BYTE7(v40));
  v35 = C3DMeshSourceCreateWithData(Semantic, v30, v33, v32, v23, v34 * v32, 0);
  CFRelease(v30);
  return v35;
}

void C3DIndicesContentGetVertexIndicesForLinePrimitiveAtIndex(uint64_t *a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a1 + 35;
  v7 = *(a1 + 35);
  v9 = a1[6];
  v10 = a1[7];
  v11 = v9 + v10 * 2 * a2;
  v12 = v10 * ((2 * (a2 & 0x3FFFFFFFFFFFFFFFLL)) | 1);
  if (v12 + v9 <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12 + v9;
  }

  if (a1[1] < (v7 + v7 * v13))
  {
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v20 = a1[1];
      v21 = *(a1 + 35);
      v22 = 136315650;
      v23 = "C3DIndicesContentGetVertexIndicesForLinePrimitiveAtIndex";
      v24 = 1024;
      v25 = v13;
      v26 = 2048;
      v27 = v20 / v21;
      _os_log_error_impl(&dword_21BEF7000, v14, OS_LOG_TYPE_ERROR, "Error: %s - index (%u) out of bounds (%lu)", &v22, 0x1Cu);
    }

    *a3 = 0;
    *a4 = 0;
    return;
  }

  switch(v7)
  {
    case 4:
      v18 = *a1;
      *a3 = *(*a1 + 4 * v11);
      v16 = *(v18 + 4 * v9 + 4 * v12);
      goto LABEL_14;
    case 2:
      v17 = *a1;
      *a3 = *(*a1 + 2 * v11);
      v16 = *(v17 + 2 * v9 + 2 * v12);
      goto LABEL_14;
    case 1:
      v15 = *a1;
      *a3 = *(*a1 + v11);
      v16 = *(v15 + v9 + v12);
LABEL_14:
      *a4 = v16;
      return;
  }

  *a3 = 0;
  *a4 = 0;
  v19 = scn_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex_cold_1_0(v8, v19);
  }
}

float32x4_t C3DMeshSourceGetAbsoluteMaxValue(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  C3DMeshSourceGetContent(a1, &v10);
  result = 0uLL;
  v4 = v11;
  if (v11)
  {
    v5 = BYTE4(v11);
    v6 = v10;
    v7 = BYTE6(v11);
    do
    {
      v9 = result;
      *v8.i64 = C3DConvertFloatingTypeToFloat4(v5, v6, result, v1.f32[0], v2);
      v1 = vmaxnmq_f32(v9, vabsq_f32(v8));
      result = v1;
      v6 = (v6 + v7);
      --v4;
    }

    while (v4);
  }

  return result;
}

BOOL C3DMeshSourceHasNonOpaqueColors(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  C3DMeshSourceGetContent(a1, &v10);
  v4 = v10;
  if (!v10 || !v11)
  {
    return 0;
  }

  v5 = BYTE4(v11);
  v6 = BYTE6(v11);
  v7 = v11 - 1;
  do
  {
    *v1.i64 = C3DConvertFloatingTypeToFloat4(v5, v4, v1, v2, v3);
    v1.i32[0] = v1.i32[3];
    result = v1.f32[3] < 1.0;
    v9 = v1.f32[3] < 1.0 || v7-- == 0;
    v4 = (v4 + v6);
  }

  while (!v9);
  return result;
}

uint64_t C3DMeshSourceCreateUnpackedCopy(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v57 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreatePackedCopy_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v55 = 0u;
  v56 = 0u;
  C3DMeshSourceGetContent(a1, &v55);
  v16 = v55;
  if (!v55)
  {
    return 0;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  C3DMeshElementGetContent(a2, a4, &v51);
  if (BYTE2(v53) != 2)
  {
    v17 = scn_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateUnpackedCopy_cold_2(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  v25 = C3DSizeOfBaseType(BYTE4(v56));
  v26 = v25 * a3;
  v27 = malloc_type_malloc(v25 * a3, 0x2C61A60EuLL);
  MEMORY[0x28223BE20](v27);
  bzero(&v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
  if (v52)
  {
    v46 = v25 * a3;
    v47 = &v45;
    v48 = a3;
    v28 = 0;
    LODWORD(v29) = 0;
    v30 = BYTE6(v56);
    do
    {
      v50 = 0;
      v49[0] = v51;
      v49[1] = v52;
      v49[2] = v53;
      v49[3] = v54;
      C3DIndicesContentGetVertexIndicesForLinePrimitiveAtIndex(v49, v28, &v50 + 1, &v50);
      v31 = HIDWORD(v50);
      if (HIDWORD(v50) > v29)
      {
        v32 = &v27[v25 * v29];
        v33 = HIDWORD(v50) - v29;
        do
        {
          memcpy(v32, &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
          v32 += v25;
          --v33;
        }

        while (v33);
      }

      v29 = v50;
      if (v50 > v31)
      {
        v34 = &v27[v25 * v31];
        v35 = v50 - v31;
        do
        {
          memcpy(v34, v16, v25);
          v16 += v30;
          v34 += v25;
          --v35;
        }

        while (v35);
      }

      ++v28;
    }

    while (v28 < v52);
    a3 = v48;
    v26 = v46;
  }

  else
  {
    v29 = 0;
  }

  v37 = a3 - v29;
  if (a3 > v29)
  {
    v38 = &v27[v25 * v29];
    do
    {
      memcpy(v38, &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
      v38 += v25;
      --v37;
    }

    while (v37);
  }

  v39 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v27, v26, *MEMORY[0x277CBECE8]);
  Semantic = C3DMeshSourceGetSemantic(a1);
  v41 = BYTE8(v56);
  v42 = BYTE7(v56);
  v43 = C3DSizeOfBaseType(BYTE7(v56));
  v36 = C3DMeshSourceCreateWithData(Semantic, v39, v42, v41, a3, v43 * v41, 0);
  CFRelease(v39);
  return v36;
}

uint64_t C3DMeshSourceCreateCopy(uint64_t a1)
{
  v2 = _C3DMeshSourceCreate();
  Copy = C3DSourceAccessorCreateCopy(*(a1 + 64));
  C3DGenericSourceInit(v2, Copy);
  C3DSourceAccessorSetSource(Copy, v2);
  CFRelease(Copy);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  if (v5)
  {
    C3DGenericSourceSetMTLBuffer(v2, v4, v5);
  }

  else
  {
    C3DGenericSourceSetData(v2, v4);
  }

  *(v2 + 96) = *(a1 + 96);
  return v2;
}

uint64_t C3DMeshSourceCreateDeepCopy(uint64_t a1)
{
  v2 = _C3DMeshSourceCreate();
  C3DGenericSourceInitDeepCopy(a1, v2);
  *(v2 + 96) = *(a1 + 96);
  return v2;
}

uint64_t C3DMeshSourceCreateMutableCopy(uint64_t a1)
{
  v2 = _C3DMeshSourceCreate();
  C3DGenericSourceInitMutableCopy(a1, v2);
  *(v2 + 96) = *(a1 + 96);
  return v2;
}

double C3DMeshSourceGetValueAtIndexAsVector3(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithAccessor_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 64);
  ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(v12, a2);
  if (!ValuePtrAtIndex)
  {
    return 0.0;
  }

  v14 = ValuePtrAtIndex;
  VectorType = C3DSourceAccessorGetVectorType(v12);
  return C3DConvertFloatingTypeToFloat4(VectorType, v14, v16, v17, v18);
}

double C3DMeshSourceGetValueAtIndexAsVector2(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithAccessor_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 64);
  ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(v12, a2);
  VectorType = C3DSourceAccessorGetVectorType(v12);
  return C3DConvertFloatingTypeToFloat4(VectorType, ValuePtrAtIndex, v15, v16, v17);
}

uint64_t C3DMeshSourceCreateCopyWithComponentsBaseType(uint64_t a1, int a2)
{
  Accessor = C3DGenericSourceGetAccessor(a1);
  if (C3DSourceAccessorGetComponentsValueType(Accessor) != 1)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      C3DMeshSourceCreateCopyWithComponentsBaseType_cold_1();
    }

    return 0;
  }

  if (C3DSourceAccessorIsInterleaved(Accessor))
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      C3DMeshSourceCreateCopyWithComponentsBaseType_cold_3();
    }

    return 0;
  }

  v7 = C3DSizeOfBaseType(a2);
  ComponentsCountPerValue = C3DSourceAccessorGetComponentsCountPerValue(Accessor);
  v9 = ComponentsCountPerValue * v7;
  if (((ComponentsCountPerValue * v7) & 3) != 0)
  {
    v10 = -(ComponentsCountPerValue * v7) & 3;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 + v9;
  v12 = (v10 + v9) * C3DSourceAccessorGetCount(Accessor);
  v13 = C3DMalloc(v12);
  bzero(v13, v12);
  v14 = CFDataCreateWithBytesNoCopy(0, v13, v12, 0);
  Semantic = C3DMeshSourceGetSemantic(a1);
  v16 = C3DSourceAccessorGetComponentsCountPerValue(Accessor);
  Count = C3DSourceAccessorGetCount(Accessor);
  v34 = C3DMeshSourceCreateWithData(Semantic, v14, a2, v16, Count, v11, 0);
  v18 = C3DGenericSourceGetAccessor(v34);
  C3DSourceAccessorSetPadding(v18, v10);
  if (C3DMeshSourceGetCount(a1) >= 1)
  {
    v19 = 0;
    while (1)
    {
      ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(Accessor, v19);
      if (C3DSourceAccessorGetComponentsCountPerValue(Accessor) >= 1)
      {
        break;
      }

LABEL_38:
      ++v19;
      v13 += v11;
      if (v19 >= C3DMeshSourceGetCount(a1))
      {
        goto LABEL_39;
      }
    }

    v21 = 0;
    while (1)
    {
      if (a2 > 14)
      {
        if (a2 == 15)
        {
          v26 = HIWORD(*ValuePtrAtIndex) & 0x8000;
          v27 = (*ValuePtrAtIndex >> 23);
          v28 = v27 - 112;
          v29 = v27 - 113;
          v30 = v26 | 0x7BFF;
          if ((*ValuePtrAtIndex & 0x7FFFFF) != 0)
          {
            LOWORD(v31) = v26 + 1;
          }

          else
          {
            v31 = HIWORD(*ValuePtrAtIndex) & 0x8000;
          }

          v32 = v31 | 0x7C00;
          if (v27 == 255)
          {
            v30 = v32;
          }

          if (v27 >= 0x71)
          {
            v33 = v30;
          }

          else
          {
            v33 = HIWORD(*ValuePtrAtIndex) & 0x8000;
          }

          v22 = HIWORD(*ValuePtrAtIndex) & 0x8000 | (*ValuePtrAtIndex >> 13) & 0x3FF | (v28 << 10);
          if (v29 > 0x1D)
          {
            LOWORD(v22) = v33;
          }

LABEL_36:
          *&v13[2 * v21] = v22;
          goto LABEL_37;
        }

        if (a2 != 16)
        {
LABEL_22:
          v25 = scn_default_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            C3DMeshSourceCreateCopyWithComponentsBaseType_cold_2(&buf, v37, v25);
          }

          goto LABEL_37;
        }

        v23 = *ValuePtrAtIndex;
        v24 = 255.0;
      }

      else
      {
        if (a2 != 4)
        {
          if (a2 != 14)
          {
            goto LABEL_22;
          }

          v22 = (*ValuePtrAtIndex * 32767.0);
          goto LABEL_36;
        }

        v23 = *ValuePtrAtIndex;
        v24 = 127.0;
      }

      v13[v21] = (v23 * v24);
LABEL_37:
      ++v21;
      ValuePtrAtIndex += 4;
      if (C3DSourceAccessorGetComponentsCountPerValue(Accessor) <= v21)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_39:
  CFRelease(v14);
  return v34;
}

uint64_t C3DMeshSourceCreateCopyWithBaseType(uint64_t a1, unsigned int a2, int a3)
{
  v23 = 0u;
  v24 = 0u;
  C3DMeshSourceGetContent(a1, &v23);
  CompoundType = C3DBaseTypeGetCompoundType(BYTE7(v24), BYTE8(v24));
  if (CompoundType != a2)
  {
    v8 = CompoundType;
    v9 = C3DSizeOfBaseType(a2);
    v10 = v9;
    if ((v9 & 3) != 0)
    {
      v11 = -v9 & 3;
    }

    else
    {
      v11 = 0;
    }

    if (C3DConvertIsConvertible(a2, v8))
    {
      v12 = v11 + v10;
      v13 = v24;
      v14 = v12 * v24;
      if (a3)
      {
        Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], v12 * v24);
        CFDataSetLength(Mutable, v14);
      }

      else
      {
        v18 = malloc_type_calloc(v12 * v24, 1uLL, 0x8CD1E755uLL);
        Mutable = CFDataCreateWithBytesNoCopy(0, v18, v14, 0);
      }

      BytePtr = CFDataGetBytePtr(Mutable);
      C3DConvertBatch(BytePtr, v12 | (a2 << 16) | (v13 << 32), v23, BYTE6(v24) | (BYTE4(v24) << 16) | (v13 << 32));
      Semantic = C3DMeshSourceGetSemantic(a1);
      if (a3)
      {
        MutableWithMutableData = C3DMeshSourceCreateMutableWithMutableData(Semantic, Mutable, a2, 1, v13, v12, 0);
      }

      else
      {
        MutableWithMutableData = C3DMeshSourceCreateWithData(Semantic, Mutable, a2, 1, v13, v12, 0);
      }

      v7 = MutableWithMutableData;
      CFRelease(Mutable);
      Accessor = C3DGenericSourceGetAccessor(v7);
      C3DSourceAccessorSetPadding(Accessor, v11);
    }

    else
    {
      v17 = scn_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        C3DMeshSourceCreateCopyWithBaseType_cold_1(v8, a2, v17);
      }

      return 0;
    }

    return v7;
  }

  if (a3)
  {
    v7 = _C3DMeshSourceCreate();
    C3DGenericSourceInitMutableCopy(a1, v7);
    *(v7 + 96) = *(a1 + 96);
    return v7;
  }

  return C3DMeshSourceCreateCopy(a1);
}

size_t C3DMeshSourcePrintData(uint64_t a1, uint64_t a2)
{
  v18 = 0u;
  v19 = 0u;
  result = C3DMeshSourceGetContent(a1, &v18);
  v5 = v18;
  if (v18)
  {
    Semantic = C3DMeshSourceGetSemantic(a1);
    v7 = C3DMeshSourceSemanticToSemanticString(Semantic);
    v8 = MEMORY[0x277D85E08];
    v9 = *MEMORY[0x277D85E08];
    CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
    result = fprintf(v9, "%s\n", CStringPtr);
    v11 = v19 >= a2 ? a2 : v19;
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = BYTE4(v19);
      v14 = BYTE6(v19);
      do
      {
        if (v13 <= 24)
        {
          switch(v13)
          {
            case 8:
              v17 = *v8;
              goto LABEL_25;
            case 9:
              v16 = *v8;
              goto LABEL_24;
            case 10:
              v15 = *v8;
LABEL_26:
              result = fprintf(v15, "%4d : %+.2f %+.2f %+.2f %+.2f\n");
              goto LABEL_27;
          }
        }

        else if (v13 > 43)
        {
          if (v13 == 44)
          {
            v16 = *v8;
LABEL_24:
            result = fprintf(v16, "%4d : %+.2f %+.2f %+.2f\n");
            goto LABEL_27;
          }

          if (v13 == 45)
          {
            v15 = *v8;
            goto LABEL_26;
          }
        }

        else
        {
          if (v13 == 25)
          {
            result = fprintf(*v8, "%4d : %3d %3d %3d %3d\n");
            goto LABEL_27;
          }

          if (v13 == 43)
          {
            v17 = *v8;
LABEL_25:
            result = fprintf(v17, "%4d : %+.2f %+.2f\n");
            goto LABEL_27;
          }
        }

        result = fwrite("type debugging not implemented\n", 0x1FuLL, 1uLL, *v8);
LABEL_27:
        ++v12;
        v5 += v14;
      }

      while (v11 != v12);
    }
  }

  return result;
}

uint64_t C3DMeshSourceGetModelKitSemantic(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithAccessor_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 99);
}

void C3DMeshSourceSetModelKitSemantic(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithAccessor_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 99) = a2;
}

id _C3DMeshSourceCFFinalize(const void *a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kC3DNotificationMeshSourceWillDie", a1, 0, 1u);

  return _C3DGenericSourceCFFinalize(a1);
}

__CFString *_C3DMeshSourceCFCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  ComponentsValueType = C3DSourceAccessorGetComponentsValueType(*(a1 + 64));
  ComponentsCountPerValue = C3DSourceAccessorGetComponentsCountPerValue(*(a1 + 64));
  Count = C3DMeshSourceGetCount(a1);
  MTLBuffer = C3DGenericSourceGetMTLBuffer(a1);
  IsMutable = C3DGenericSourceIsMutable(a1);
  v8 = *(a1 + 64);
  if (MTLBuffer)
  {
    Data = C3DGenericSourceGetMTLBuffer(a1);
  }

  else
  {
    Data = C3DGenericSourceGetData(a1);
  }

  v10 = Data;
  CompoundType = C3DBaseTypeGetCompoundType(ComponentsValueType, ComponentsCountPerValue);
  v12 = C3DMeshSourceSemanticToSemanticString(*(a1 + 96));
  v13 = C3DBaseTypeStringDescription(CompoundType);
  CFStringAppendFormat(Mutable, 0, @"<C3DMeshSource %p(%@) data:(%p) mut:%d count:%ld type:%@ divisor:%d mtl:%d offset:%zu stride:%zu", a1, v12, v10, IsMutable, Count, v13, *(a1 + 98), MTLBuffer != 0, *(v8 + 48), *(v8 + 40));
  CFStringAppend(Mutable, @">");
  return Mutable;
}

BOOL _C3DMeshSourceInitWithPropertyList(uint64_t a1, const __CFDictionary *a2, uint64_t a3, CFErrorRef *a4)
{
  result = _C3DGenericSourceInitWithPropertyList(a1, a2, a4, a4);
  if (!result)
  {
    return result;
  }

  if (!a2)
  {
    return 1;
  }

  if ((C3DCFTypeIsDictionary() & 1) == 0)
  {
    v12 = scn_default_log();
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    _C3DMeshSourceInitWithPropertyList_cold_1(v12);
    return 0;
  }

  Value = CFDictionaryGetValue(a2, @"semantic");
  if (Value)
  {
    SemanticFromSerializedSemanticString = __GetSemanticFromSerializedSemanticString(Value);
    *(a1 + 96) = SemanticFromSerializedSemanticString;
    if (SemanticFromSerializedSemanticString == 5)
    {
      Accessor = C3DGenericSourceGetAccessor(a1);
      if (*(Accessor + 24) == 26)
      {
        *(Accessor + 24) = 25;
      }
    }

    v11 = CFDictionaryGetValue(a2, @"mkSemantic");
    if (v11)
    {
      valuePtr = 0;
      CFNumberGetValue(v11, kCFNumberIntType, &valuePtr);
      C3DMeshSourceSetModelKitSemantic(a1, valuePtr);
    }

    return 1;
  }

  v13 = scn_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    _C3DMeshSourceInitWithPropertyList_cold_2();
    if (!a4)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (!a4)
  {
    return 0;
  }

LABEL_15:
  if (*a4)
  {
    return 0;
  }

  MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
  result = 0;
  *a4 = MalformedDocumentError;
  return result;
}

__CFDictionary *_C3DMeshSourceCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _C3DGenericSourceCopyPropertyList(a1, a2, a4, a4);
  if (!v5)
  {
    return v5;
  }

  v6 = *(a1 + 96);
  if (!v6)
  {
    v7 = @"vertex";
    if (@"vertex")
    {
      goto LABEL_4;
    }

LABEL_6:
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _C3DMeshSourceCopyPropertyList_cold_1();
    }

    goto LABEL_8;
  }

  v7 = C3DMeshSourceSemanticToSemanticString(v6);
  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_4:
  CFDictionarySetValue(v5, @"semantic", v7);
LABEL_8:
  if (*(a1 + 99))
  {
    valuePtr = *(a1 + 99);
    v9 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(v5, @"mkSemantic", v9);
    CFRelease(v9);
  }

  return v5;
}

__CFArray *_C3DMeshSourceCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v17 = 2;
  valuePtr = 5;
  v16 = a1 + 64;
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &v17);
  v6 = CFNumberCreate(0, kCFNumberLongType, &v16);
  CFDictionarySetValue(v3, @"name", @"accessor");
  CFDictionarySetValue(v3, @"type", v4);
  CFDictionarySetValue(v3, @"address", v6);
  CFDictionarySetValue(v3, @"semantic", v5);
  CFArrayAppendValue(Mutable, v3);
  CFRelease(v5);
  CFRelease(v3);
  CFRelease(v6);
  CFRelease(v4);
  v7 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v17 = 2;
  valuePtr = 5;
  v16 = a1 + 72;
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &v17);
  v10 = CFNumberCreate(0, kCFNumberLongType, &v16);
  CFDictionarySetValue(v7, @"name", @"data");
  CFDictionarySetValue(v7, @"type", v8);
  CFDictionarySetValue(v7, @"address", v10);
  CFDictionarySetValue(v7, @"semantic", v9);
  CFArrayAppendValue(Mutable, v7);
  CFRelease(v9);
  CFRelease(v7);
  CFRelease(v10);
  CFRelease(v8);
  v11 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v17 = 0;
  valuePtr = 2;
  v16 = a1 + 96;
  v12 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v13 = CFNumberCreate(0, kCFNumberSInt32Type, &v17);
  v14 = CFNumberCreate(0, kCFNumberLongType, &v16);
  CFDictionarySetValue(v11, @"name", @"semantic");
  CFDictionarySetValue(v11, @"type", v12);
  CFDictionarySetValue(v11, @"address", v14);
  CFDictionarySetValue(v11, @"semantic", v13);
  CFArrayAppendValue(Mutable, v11);
  CFRelease(v13);
  CFRelease(v11);
  CFRelease(v14);
  CFRelease(v12);
  return Mutable;
}

uint64_t SCNMTLComputeCommandEncoder::dispatchOne(SCNMTLComputeCommandEncoder *this, MTLComputePipelineState *a2)
{
  if (this->_computePipelineState != a2)
  {
    this->_computePipelineState = a2;
    [(MTLComputeCommandEncoder *)this->_encoder setComputePipelineState:a2];
  }

  SCNMTLComputeCommandEncoder::_bindPendingTextures(this);
  SCNMTLComputeCommandEncoder::_bindPendingBuffers(this);
  encoder = this->_encoder;
  v7 = vdupq_n_s64(1uLL);
  v8 = 1;
  v5 = v7;
  v6 = 1;
  return [(MTLComputeCommandEncoder *)encoder dispatchThreadgroups:&v7 threadsPerThreadgroup:&v5];
}

void C3D::CopyProbeFromOldTextureToNewTexture(C3D::Pass *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, C3D::RefCountedResource *a6, int a7)
{
  v49 = a1;
  v13 = *(a1 + 3);
  v14 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(a5 + 48) :"textureType" detail:? :?NSRetainFct];
  IsCube = SCNMTLTextureTypeIsCube(v14);
  v16 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(a3 + 48) :"textureType" detail:? :?NSRetainFct];
  v17 = SCNMTLTextureTypeIsCube(v16);
  v18 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(a5 + 48) :"textureType" detail:? :?NSRetainFct];
  v19 = SCNMTLTextureTypeIsCube(v18);
  if (v17 == v19)
  {
    if (IsCube)
    {
      v32 = 6;
    }

    else
    {
      v32 = 1;
    }

    LODWORD(v46) = v32 * a4;
    DWORD1(v46) = v32;
    *(&v46 + 1) = 0x500000000;
    v47 = v32 * a7;
    v48 = 0;
    v31 = C3D::RenderGraph::createPass<C3D::CopyTextureComputePass,C3D::Pass *&,C3D::CopyTextureComputePass::Parameters>(v13, &v49, &v46);
  }

  else
  {
    v20 = v19;
    if (a7 | a4)
    {
      v21 = scn_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        C3D::CopyProbeFromOldTextureToNewTexture(v21, v22, v23, v24, v25, v26, v27, v28);
      }
    }

    if (v17)
    {
      v29 = 0;
    }

    else
    {
      v29 = 2;
    }

    LOBYTE(v46) = v29;
    if (v20)
    {
      v30 = 0;
    }

    else
    {
      v30 = 2;
    }

    BYTE1(v46) = v30;
    v31 = C3D::RenderGraph::createPass<C3D::ConvertCubePass,C3D::Pass *&,C3D::ConvertCubePass::Parameters>(v13, &v49, &v46);
    *(C3D::Pass::descriptor(v31) + 10) = 5;
  }

  v33 = C3D::Pass::descriptor(v31);
  v34 = C3D::PassDescriptor::inputAtIndex(v33, 0);
  *(v34 + 66) |= 0x100u;
  v35 = C3D::Pass::descriptor(v31);
  v36 = C3D::PassDescriptor::outputAtIndex(v35, 0);
  *(v36 + 66) |= 0x100u;
  v37 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(a5 + 48);
  SCNMTLTextureDescFromMTLTexture(v37, &v46);
  v38 = C3D::Pass::descriptor(v31);
  v39 = C3D::PassDescriptor::outputAtIndex(v38, 0);
  *(v39 + 16) = v46;
  *(v39 + 32) = v47;
  v40 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(a3 + 48);
  PersistentResource = C3D::RenderGraph::createPersistentResource(v13, v40);
  v42 = C3D::Pass::resource(v31);
  C3D::PassResource::setInputAtIndex(v42, PersistentResource, 0);
  v43 = C3D::Pass::resource(v31);
  C3D::PassResource::setOutputAtIndex(v43, a6, 0);
  v44 = C3D::Pass::descriptor(v31);
  v45 = C3D::PassDescriptor::outputAtIndex(v44, 0);
  C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(a2, v45);
  C3D::Pass::addDependency(v49, v31);
}

C3D::CopyTextureComputePass *C3D::RenderGraph::createPass<C3D::CopyTextureComputePass,C3D::Pass *&,C3D::CopyTextureComputePass::Parameters>(uint64_t a1, C3D::Pass **a2, const Parameters *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 144, 8, 0);
  C3D::CopyTextureComputePass::CopyTextureComputePass(Aligned, a1, *a2, a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::ConvertCubePass *C3D::RenderGraph::createPass<C3D::ConvertCubePass,C3D::Pass *&,C3D::ConvertCubePass::Parameters>(uint64_t a1, C3D::Pass **a2, const Parameters *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 320, 16, 0);
  C3D::ConvertCubePass::ConvertCubePass(Aligned, a1, *a2, a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

double C3D::ComputeProbeFromTextureOrPreviousPass(C3D::Pass *a1, uint64_t a2, C3D::RefCountedResource *a3, __int16 a4, void **a5, C3D::Pass *a6, unsigned __int16 a7, uint64_t a8)
{
  v121 = *MEMORY[0x277D85DE8];
  v117 = a1;
  v15 = *(a1 + 3);
  v16 = *a3;
  v115 = 0uLL;
  v116 = 0;
  SCNMTLTextureDescFromMTLTexture(v16, &v115);
  IsCube = SCNMTLTextureTypeIsCube([v16 textureType]);
  C3D::PassIODescriptor::PassIODescriptor(v118, 0);
  v119 = v115;
  v120 = v116;
  ArrayElementType = SCNMTLTextureTypeGetArrayElementType(BYTE8(v115));
  v19 = 0;
  BYTE8(v119) = ArrayElementType;
  WORD3(v119) = 1;
  *(a8 + 16) = 0;
  v20 = *(a8 + 20);
  if (v20 != 1)
  {
    if (IsCube)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    *(a8 + 16) = v19;
  }

  LOBYTE(v113) = v19;
  *(&v113 + 4) = __PAIR64__(*a8, v20);
  v21 = C3D::RenderGraph::createPass<C3D::ComputeRadiancePass,C3D::Pass *&,C3D::ComputeRadiancePass::Parameters>(v15, &v117, &v113);
  if (a6)
  {
    v22 = C3D::Pass::descriptor(a6);
    v23 = C3D::PassDescriptor::outputAtIndex(v22, a7);
    v24 = C3D::Pass::descriptor(v21);
    v25 = C3D::PassDescriptor::inputAtIndex(v24, 0);
    *v25 = *v23;
    v26 = v23[4];
    v28 = v23[1];
    v27 = v23[2];
    v25[3] = v23[3];
    v25[4] = v26;
    v25[1] = v28;
    v25[2] = v27;
    C3D::Pass::addDependency(v21, a6);
  }

  else
  {
    if (!a5)
    {
      v29 = scn_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        C3D::ComputeProbeFromTextureOrPreviousPass(v29, v30, v31, v32, v33, v34, v35, v36);
      }
    }

    SCNMTLTextureDescFromMTLTexture(*a5, &v113);
    v37 = C3D::Pass::descriptor(v21);
    v38 = C3D::PassDescriptor::inputAtIndex(v37, 0);
    *(v38 + 16) = v113;
    *(v38 + 32) = v114;
    v39 = C3D::Pass::descriptor(v21);
    v40 = C3D::PassDescriptor::inputAtIndex(v39, 0);
    *(v40 + 66) |= 0x100u;
    v41 = C3D::Pass::resource(v21);
    C3D::PassResource::setInputAtIndex(v41, a5, 0);
  }

  if (*(a8 + 20) != 1)
  {
    if (!*(a8 + 16))
    {
      LODWORD(v113) = 1082130432;
      *(&v113 + 4) = 0x400000001;
      v42 = C3D::RenderGraph::createPass<C3D::CubeBlurPass,C3D::Pass *&,C3D::CubeBlurPass::Parameters>(v15, &v117, &v113);
      v75 = C3D::Pass::descriptor(v21);
      v76 = C3D::PassDescriptor::outputAtIndex(v75, 0);
      v77 = C3D::Pass::descriptor(v42);
      v78 = C3D::PassDescriptor::inputAtIndex(v77, 0);
      *v78 = *v76;
      v79 = v76[4];
      v81 = v76[1];
      v80 = v76[2];
      v78[3] = v76[3];
      v78[4] = v79;
      v78[1] = v81;
      v78[2] = v80;
      v82 = C3D::Pass::descriptor(v42);
      v83 = C3D::PassDescriptor::inputAtIndex(v82, 0);
      *(v83 + 66) |= 0x80u;
      v84 = C3D::Pass::descriptor(v21);
      v85 = C3D::PassDescriptor::outputAtIndex(v84, 0);
      v86 = C3D::Pass::descriptor(v42);
      v87 = C3D::PassDescriptor::outputAtIndex(v86, 0);
      *v87 = *v85;
      v88 = v85[4];
      v90 = v85[1];
      v89 = v85[2];
      v87[3] = v85[3];
      v87[4] = v88;
      v87[1] = v90;
      v87[2] = v89;
      v91 = C3D::Pass::descriptor(v21);
      v92 = C3D::PassDescriptor::outputAtIndex(v91, 0);
      v93 = C3D::Pass::descriptor(v42);
      v94 = C3D::PassDescriptor::outputAtIndex(v93, 1u);
      *v94 = *v92;
      v95 = v92[4];
      v97 = v92[1];
      v96 = v92[2];
      v94[3] = v92[3];
      v94[4] = v95;
      v94[1] = v97;
      v94[2] = v96;
      v98 = C3D::Pass::descriptor(v42);
      v99 = C3D::PassDescriptor::outputAtIndex(v98, 1u);
      *(v99 + 66) |= 8u;
      goto LABEL_19;
    }

    *&v113 = 0x4000100000005;
    v42 = C3D::RenderGraph::createPass<C3D::BoxBlurPass,C3D::Pass *&,C3D::BoxBlurPass::Parameters>(v15, &v117, &v113);
    v52 = C3D::Pass::descriptor(v21);
    v53 = C3D::PassDescriptor::outputAtIndex(v52, 0);
    v54 = C3D::Pass::descriptor(v42);
    v55 = C3D::PassDescriptor::inputAtIndex(v54, 0);
    *v55 = *v53;
    v56 = v53[4];
    v58 = v53[1];
    v57 = v53[2];
    v55[3] = v53[3];
    v55[4] = v56;
    v55[1] = v58;
    v55[2] = v57;
    v59 = C3D::Pass::descriptor(v42);
    *(C3D::PassDescriptor::inputAtIndex(v59, 0) + 26) = 1;
    if (IsCube)
    {
      v60 = C3D::Pass::descriptor(v21);
      v61 = C3D::PassDescriptor::outputAtIndex(v60, 0);
      v62 = C3D::Pass::descriptor(v42);
      v63 = C3D::PassDescriptor::outputAtIndex(v62, 0);
      *v63 = *v61;
      v64 = v61[4];
      v66 = v61[1];
      v65 = v61[2];
      v63[3] = v61[3];
      v63[4] = v64;
      v63[1] = v66;
      v63[2] = v65;
      v67 = C3D::Pass::descriptor(v42);
      *(C3D::PassDescriptor::outputAtIndex(v67, 0) + 26) = 4;
      C3D::Pass::addDependency(v42, v21);
      LOWORD(v113) = *(a8 + 16);
      v21 = C3D::RenderGraph::createPass<C3D::ConvertCubeComputePass,C3D::Pass *&,C3D::ConvertCubeComputePass::Parameters>(v15, &v117, &v113);
      v68 = C3D::Pass::descriptor(v42);
      v69 = C3D::PassDescriptor::outputAtIndex(v68, 0);
      v70 = C3D::Pass::descriptor(v21);
      v71 = C3D::PassDescriptor::inputAtIndex(v70, 0);
      *v71 = *v69;
      v72 = v69[4];
      v74 = v69[1];
      v73 = v69[2];
      v71[3] = v69[3];
      v71[4] = v72;
      v71[1] = v74;
      v71[2] = v73;
      a4 *= 6;
    }

    else
    {
      *(C3D::Pass::descriptor(v42) + 4) = a4;
      C3D::Pass::addDependency(v42, v21);
      if (*(a8 + 16) == 2)
      {
        goto LABEL_24;
      }

      LOBYTE(v113) = *(a8 + 16);
      BYTE1(v113) = 2;
      v21 = C3D::RenderGraph::createPass<C3D::ConvertCubePass,C3D::Pass *&,C3D::ConvertCubePass::Parameters>(v15, &v117, &v113);
      v100 = C3D::Pass::descriptor(v42);
      v101 = C3D::PassDescriptor::outputAtIndex(v100, 0);
      v102 = C3D::Pass::descriptor(v21);
      v103 = C3D::PassDescriptor::inputAtIndex(v102, 0);
      *v103 = *v101;
      v104 = v101[4];
      v106 = v101[1];
      v105 = v101[2];
      v103[3] = v101[3];
      v103[4] = v104;
      v103[1] = v106;
      v103[2] = v105;
      *(C3D::Pass::descriptor(v21) + 10) = 5;
      v107 = C3D::Pass::descriptor(v21);
      v108 = C3D::PassDescriptor::outputAtIndex(v107, 0);
      *(v108 + 66) &= 0xFFFCu;
    }

    *(C3D::Pass::descriptor(v21) + 4) = a4;
    C3D::Pass::addDependency(v21, v42);
LABEL_23:
    v42 = v21;
    goto LABEL_24;
  }

  if (IsCube)
  {
    goto LABEL_23;
  }

  LOBYTE(v113) = *(a8 + 16);
  BYTE1(v113) = 2;
  v42 = C3D::RenderGraph::createPass<C3D::ConvertCubePass,C3D::Pass *&,C3D::ConvertCubePass::Parameters>(v15, &v117, &v113);
  v43 = C3D::Pass::descriptor(v21);
  v44 = C3D::PassDescriptor::outputAtIndex(v43, 0);
  v45 = C3D::Pass::descriptor(v42);
  v46 = C3D::PassDescriptor::inputAtIndex(v45, 0);
  *v46 = *v44;
  v47 = v44[4];
  v49 = v44[1];
  v48 = v44[2];
  v46[3] = v44[3];
  v46[4] = v47;
  v46[1] = v49;
  v46[2] = v48;
  *(C3D::Pass::descriptor(v42) + 10) = 5;
  v50 = C3D::Pass::descriptor(v42);
  v51 = C3D::PassDescriptor::outputAtIndex(v50, 0);
  *(v51 + 66) &= 0xFFFCu;
  *(C3D::Pass::descriptor(v42) + 4) = a4;
LABEL_19:
  C3D::Pass::addDependency(v42, v21);
LABEL_24:
  C3D::Pass::addDependency(v117, v42);
  v109 = C3D::Pass::descriptor(v42);
  v110 = C3D::PassDescriptor::outputAtIndex(v109, 0);
  *(v110 + 16) = v115;
  *(v110 + 32) = v116;
  *(v110 + 66) |= 0x100u;
  v111 = C3D::Pass::resource(v42);
  C3D::PassResource::setOutputAtIndex(v111, a3, 0);
  *&result = C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(a2, v110).n128_u64[0];
  return result;
}

C3D::ComputeRadiancePass *C3D::RenderGraph::createPass<C3D::ComputeRadiancePass,C3D::Pass *&,C3D::ComputeRadiancePass::Parameters>(uint64_t a1, C3D::Pass **a2, const Parameters *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::ComputeRadiancePass::ComputeRadiancePass(Aligned, a1, *a2, a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::BoxBlurPass *C3D::RenderGraph::createPass<C3D::BoxBlurPass,C3D::Pass *&,C3D::BoxBlurPass::Parameters>(uint64_t a1, C3D::Pass **a2, const Parameters *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 256, 16, 0);
  C3D::BoxBlurPass::BoxBlurPass(Aligned, a1, *a2, a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::ConvertCubeComputePass *C3D::RenderGraph::createPass<C3D::ConvertCubeComputePass,C3D::Pass *&,C3D::ConvertCubeComputePass::Parameters>(uint64_t a1, C3D::Pass **a2, const Parameters *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 184, 8, 0);
  C3D::ConvertCubeComputePass::ConvertCubeComputePass(Aligned, a1, *a2, a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::CubeBlurPass *C3D::RenderGraph::createPass<C3D::CubeBlurPass,C3D::Pass *&,C3D::CubeBlurPass::Parameters>(uint64_t a1, C3D::Pass **a2, const Parameters *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::CubeBlurPass::CubeBlurPass(Aligned, a1, *a2, a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

double C3D::ComputeProbeFromEnvironmentTexture(C3D::Pass *a1, uint64_t a2, C3D::RefCountedResource *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v64 = a1;
  v12 = *(a1 + 3);
  v13 = *a3;
  v62 = 0uLL;
  v63 = 0;
  SCNMTLTextureDescFromMTLTexture(v13, &v62);
  v14 = *(a1 + 2);
  RenderContext = C3DEngineContextGetRenderContext(v14);
  v16 = [(SCNMTLRenderContext *)RenderContext resourceManager];
  if (!a5 || (v17 = [v16 renderResourceForEffectSlot:a5 withEngineContext:v14 didFallbackToDefaultTexture:0]) == 0 || (v18 = v17, objc_msgSend(v17, "textureType") != 5))
  {
    if (SCNMTLTextureTypeIsCube(BYTE8(v62)))
    {
      v26 = 6;
    }

    else
    {
      v26 = 1;
    }

    v60 = xmmword_21C27F610;
    v27 = C3D::RenderGraph::createPass<C3D::FillTexturePass,C3D::Pass *&,C3D::FillTexturePass::Parameters>(v12, &v64, &v60);
    v28 = C3D::Pass::descriptor(v27);
    v29 = C3D::PassDescriptor::outputAtIndex(v28, 0);
    *(v29 + 16) = v62;
    *(v29 + 32) = v63;
    v30 = C3D::Pass::descriptor(v27);
    v31 = C3D::PassDescriptor::outputAtIndex(v30, 0);
    *(v31 + 66) |= 0x100u;
    *(C3D::Pass::descriptor(v27) + 4) = v26 * a4;
    *(C3D::Pass::descriptor(v27) + 6) = v26;
    v32 = BYTE14(v62);
    *(C3D::Pass::descriptor(v27) + 10) = v32;
    v33 = C3D::Pass::resource(v27);
    C3D::PassResource::setOutputAtIndex(v33, a3, 0);
    C3D::Pass::addDependency(v64, v27);
    v34 = C3D::Pass::descriptor(v27);
    v35 = C3D::PassDescriptor::outputAtIndex(v34, 0);
    v36 = a2;
LABEL_12:
    *&result = C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(v36, v35).n128_u64[0];
    return result;
  }

  PersistentResource = C3D::RenderGraph::createPersistentResource(v12, v18);
  if ([*PersistentResource mipmapLevelCount] == 5 && objc_msgSend(*PersistentResource, "width") != 16)
  {
    if (SCNMTLTextureTypeIsCube([v13 textureType]))
    {
      a4 *= 6;
    }

    [*PersistentResource height];
    [*PersistentResource pixelFormat];
    v60 = 0uLL;
    v61 = a4;
    v51 = C3D::RenderGraph::createPass<C3D::CopyTextureComputePass,C3D::Pass *&,C3D::CopyTextureComputePass::Parameters>(v12, &v64, &v60);
    SCNMTLTextureDescFromMTLTexture(*PersistentResource, &v60);
    v52 = C3D::Pass::descriptor(v51);
    v53 = C3D::PassDescriptor::inputAtIndex(v52, 0);
    *(v53 + 16) = v60;
    *(v53 + 32) = v61;
    v54 = C3D::Pass::descriptor(v51);
    v55 = C3D::PassDescriptor::inputAtIndex(v54, 0);
    *(v55 + 66) |= 0x100u;
    v56 = C3D::Pass::resource(v51);
    C3D::PassResource::setInputAtIndex(v56, PersistentResource, 0);
    v57 = C3D::Pass::descriptor(v51);
    v58 = C3D::PassDescriptor::outputAtIndex(v57, 0);
    *(v58 + 16) = v62;
    *(v58 + 32) = v63;
    *(v58 + 66) |= 0x100u;
    v59 = C3D::Pass::resource(v51);
    C3D::PassResource::setOutputAtIndex(v59, a3, 0);
    C3D::Pass::addDependency(v64, v51);
    v36 = a2;
    v35 = v58;
    goto LABEL_12;
  }

  if ([*PersistentResource mipmapLevelCount] < 5)
  {
    LOBYTE(v60) = 1;
    v38 = C3D::RenderGraph::createPass<C3D::GenerateMipmapPass,C3D::Pass *&,C3D::GenerateMipmapPass::Parameters>(v12, &v64, &v60);
    SCNMTLTextureDescFromMTLTexture(*PersistentResource, &v60);
    v39 = C3D::Pass::descriptor(v38);
    v40 = C3D::PassDescriptor::inputAtIndex(v39, 0);
    *(v40 + 16) = v60;
    *(v40 + 32) = v61;
    v41 = C3D::Pass::descriptor(v38);
    v42 = C3D::PassDescriptor::inputAtIndex(v41, 0);
    *(v42 + 66) |= 0x100u;
    v43 = C3D::Pass::resource(v38);
    C3D::PassResource::setInputAtIndex(v43, PersistentResource, 0);
    SCNMTLTextureDescFromMTLTexture(*PersistentResource, &v60);
    v44 = C3D::Pass::descriptor(v38);
    v45 = C3D::PassDescriptor::outputAtIndex(v44, 0);
    *(v45 + 16) = v60;
    *(v45 + 32) = v61;
    v46 = C3D::Pass::descriptor(v38);
    v47 = C3D::PassDescriptor::outputAtIndex(v46, 0);
    v48 = *(v47 + 16);
    if (v48 <= *(v47 + 18))
    {
      v48 = *(v47 + 18);
    }

    v49 = (floorf(log2f(v48)) + 1.0);
    v50 = C3D::Pass::descriptor(v38);
    *(C3D::PassDescriptor::outputAtIndex(v50, 0) + 30) = v49;
    v20 = v64;
    v60 = *a6;
    v61 = *(a6 + 16);
    v21 = a2;
    v22 = a3;
    v23 = a4;
    v24 = 0;
    v25 = v38;
  }

  else
  {
    v20 = v64;
    v60 = *a6;
    v61 = *(a6 + 16);
    v21 = a2;
    v22 = a3;
    v23 = a4;
    v24 = PersistentResource;
    v25 = 0;
  }

  return C3D::ComputeProbeFromTextureOrPreviousPass(v20, v21, v22, v23, v24, v25, 0, &v60);
}

C3D::FillTexturePass *C3D::RenderGraph::createPass<C3D::FillTexturePass,C3D::Pass *&,C3D::FillTexturePass::Parameters>(uint64_t a1, C3D::Pass **a2, const Parameters *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 256, 16, 0);
  C3D::FillTexturePass::FillTexturePass(Aligned, a1, *a2, a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::GenerateMipmapPass *C3D::RenderGraph::createPass<C3D::GenerateMipmapPass,C3D::Pass *&,C3D::GenerateMipmapPass::Parameters>(uint64_t a1, C3D::Pass **a2, unsigned __int8 *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 112, 8, 0);
  *&v8.var0 = *a3;
  C3D::GenerateMipmapPass::GenerateMipmapPass(Aligned, a1, *a2, v8);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

double C3D::ComputeProbeFromProbeNode(C3D::Pass *a1, uint64_t a2, C3D::RefCountedResource *a3, __int16 a4, __C3DNode *a5, __int128 *a6)
{
  v34 = a5;
  v35 = a1;
  v10 = *(a1 + 3);
  v11 = C3D::RenderGraph::createPass<C3D::RenderProbePass,C3D::Pass *&,__C3DNode *&,unsigned int &,MTLPixelFormat &>(v10, &v35, &v34, a6, a6 + 1);
  v12 = C3D::RenderGraph::createPass<C3D::GenerateMipmapPass,C3D::DrawNodesPass *&>(v10, &v35);
  v13 = C3D::Pass::descriptor(v11);
  v14 = C3D::PassDescriptor::outputAtIndex(v13, 0);
  v15 = C3D::Pass::descriptor(v12);
  v16 = C3D::PassDescriptor::inputAtIndex(v15, 0);
  *v16 = *v14;
  v17 = v14[4];
  v19 = v14[1];
  v18 = v14[2];
  v16[3] = v14[3];
  v16[4] = v17;
  v16[1] = v19;
  v16[2] = v18;
  v20 = C3D::Pass::descriptor(v11);
  v21 = C3D::PassDescriptor::outputAtIndex(v20, 0);
  v22 = C3D::Pass::descriptor(v12);
  v23 = C3D::PassDescriptor::outputAtIndex(v22, 0);
  *v23 = *v21;
  v24 = v21[4];
  v26 = v21[1];
  v25 = v21[2];
  v23[3] = v21[3];
  v23[4] = v24;
  v23[1] = v26;
  v23[2] = v25;
  v27 = C3D::Pass::descriptor(v12);
  v28 = C3D::PassDescriptor::inputAtIndex(v27, 0);
  *(v28 + 66) |= 4u;
  v29 = C3D::Pass::descriptor(v12);
  v30 = C3D::PassDescriptor::inputAtIndex(v29, 0);
  *(v30 + 66) |= 0x80u;
  C3D::Pass::addDependency(v12, v11);
  *(a6 + 5) = 0;
  v32 = *a6;
  v33 = *(a6 + 2);
  return C3D::ComputeProbeFromTextureOrPreviousPass(v35, a2, a3, a4, 0, v12, 0, &v32);
}

C3D::RenderProbePass *C3D::RenderGraph::createPass<C3D::RenderProbePass,C3D::Pass *&,__C3DNode *&,unsigned int &,MTLPixelFormat &>(uint64_t a1, C3D::Pass **a2, __C3DNode **a3, unsigned int *a4, MTLPixelFormat *a5)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 5376, 16, 0);
  C3D::RenderProbePass::RenderProbePass(Aligned, a1, *a2, *a3, *a4, *a5);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

uint64_t CreateProbeArrayResourceIfNeeded(C3D::Pass *a1, uint64_t a2)
{
  v3 = a1;
  v61 = a1;
  v4 = *(a1 + 3);
  v5 = *(v4 + 8);
  RenderContext = C3DEngineContextGetRenderContext(v5);
  Scene = C3DEngineContextGetScene(v5);
  LightingSystem = C3DSceneGetLightingSystem(Scene);
  v44 = v4;
  v8 = *(v4 + 128);
  [(SCNMTLRenderContext *)RenderContext device];
  LODWORD(v4) = SCNMTLDeviceSupportsColorRenderingInPixelFormat();
  [(SCNMTLRenderContext *)RenderContext device];
  IsWritable = SCNMTLPixelFormatIsWritable();
  v10 = 115;
  if ((IsWritable & v4) != 0)
  {
    v10 = 93;
  }

  v47 = v10;
  if (([(SCNMTLRenderContext *)RenderContext features]& 0x100) != 0)
  {
    v11 = 256;
  }

  else
  {
    v11 = 128;
  }

  ReflectionProbesCount = C3DLightingSystemGetReflectionProbesCount(LightingSystem);
  if (ReflectionProbesCount || (v18 = C3DSceneGetLightingEnvironmentEffectSlot(Scene, 0)) != 0 && ((v19 = v18, C3DEffectSlotHasImageOrTexture(v18)) || C3DEffectSlotHasPrecomputedLightingEnvironment(v19)) || C3DEngineContextGetAllowsDefaultLightingEnvironmentFallback(v5))
  {
    v43 = v5;
    v48 = v11;
    v13 = ReflectionProbesCount + 1;
    v14 = C3D::RenderGraphResourceManager::get(v8, LightingSystem);
    v15 = v14;
    v45 = a2;
    if (!v14 || (v16 = v14 + 48, !*(v15 + 48)) || [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(v16) :"arrayLength" detail:? :?NSRetainFct] != v13)
    {
      operator new();
    }

    v17 = v15;
    v20 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(v15 + 48);
    PersistentResource = C3D::RenderGraph::createPersistentResource(v44, v20);
    LightingEnvironmentTimeStamp = C3DSceneGetLightingEnvironmentTimeStamp(Scene);
    if (*C3D::Array<unsigned int,0u,C3D::MallocAllocator>::operator[](v15 + 16, 0) == LightingEnvironmentTimeStamp)
    {
      HasImageOrTexture = 0;
      v24 = v48;
LABEL_30:
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __CreateProbeArrayResourceIfNeeded_block_invoke;
      v49[3] = &__block_descriptor_97_e53_v36__0I8_____C3DNode_12_____C3DLight_20________3___28l;
      v50 = v24;
      v51 = v47;
      v52 = HasImageOrTexture;
      v58 = 0;
      v53 = v15;
      v54 = v3;
      v55 = v45;
      v56 = v15;
      v57 = PersistentResource;
      C3DLightingSystemEnumerateRadianceProbes(LightingSystem, v49);
      return v17;
    }

    LightingEnvironmentEffectSlot = C3DSceneGetLightingEnvironmentEffectSlot(Scene, 0);
    v26 = LightingEnvironmentEffectSlot;
    if (LightingEnvironmentEffectSlot && ((HasImageOrTexture = C3DEffectSlotHasImageOrTexture(LightingEnvironmentEffectSlot), HasPrecomputedLightingEnvironment = C3DEffectSlotHasPrecomputedLightingEnvironment(v26), HasImageOrTexture) || HasPrecomputedLightingEnvironment))
    {
      if (!HasImageOrTexture)
      {
        goto LABEL_28;
      }

      v24 = v48;
      LODWORD(v59) = v48;
      *(&v59 + 1) = v47;
      HasImageOrTexture = 1;
      HIDWORD(v60) = 1;
      C3D::ComputeProbeFromEnvironmentTexture(v3, v45, PersistentResource, 0, v26, &v59);
    }

    else
    {
      AllowsDefaultLightingEnvironmentFallback = C3DEngineContextGetAllowsDefaultLightingEnvironmentFallback(v43);
      if (v13 <= 1 && AllowsDefaultLightingEnvironmentFallback)
      {
        v29 = [-[SCNMTLRenderContext resourceManager](RenderContext) defaultLightingEnvironmentRadianceTexture];
        v30 = C3D::RenderGraph::createPersistentResource(v44, v29);
        v59 = 0uLL;
        v60 = 0;
        v31 = C3D::RenderGraph::createPass<C3D::CopyTextureComputePass,C3D::Pass *&,C3D::CopyTextureComputePass::Parameters>(v44, &v61, &v59);
        v32 = C3D::Pass::descriptor(v31);
        v33 = C3D::PassDescriptor::inputAtIndex(v32, 0);
        *(v33 + 66) |= 0x100u;
        v34 = C3D::Pass::resource(v31);
        C3D::PassResource::setInputAtIndex(v34, v30, 0);
        v35 = C3D::Pass::descriptor(v31);
        v36 = C3D::PassDescriptor::outputAtIndex(v35, 0);
        *(v36 + 66) |= 0x100u;
        SCNMTLTextureDescFromMTLTexture(*PersistentResource, &v59);
        v37 = C3D::Pass::descriptor(v31);
        v38 = C3D::PassDescriptor::outputAtIndex(v37, 0);
        *(v38 + 16) = v59;
        *(v38 + 32) = v60;
        v39 = C3D::Pass::resource(v31);
        C3D::PassResource::setOutputAtIndex(v39, PersistentResource, 0);
        v40 = C3D::Pass::descriptor(v31);
        v41 = C3D::PassDescriptor::outputAtIndex(v40, 0);
        C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(v45, v41);
        C3D::Pass::addDependency(v61, v31);
        HasImageOrTexture = 0;
LABEL_28:
        v24 = v48;
        goto LABEL_29;
      }

      v24 = v48;
      LODWORD(v59) = v48;
      *(&v59 + 1) = v47;
      HIDWORD(v60) = 0;
      C3D::ComputeProbeFromEnvironmentTexture(v3, v45, PersistentResource, 0, v26, &v59);
      HasImageOrTexture = 0;
    }

LABEL_29:
    *C3D::Array<unsigned int,0u,C3D::MallocAllocator>::operator[](v15 + 16, 0) = LightingEnvironmentTimeStamp;
    *C3D::Array<void const*,0u,C3D::MallocAllocator>::operator[](v15 + 32, 0) = 0;
    v3 = v61;
    goto LABEL_30;
  }

  return 0;
}

void C3D::Array<unsigned int,0u,C3D::MallocAllocator>::resize(uint64_t a1, unsigned int a2)
{
  v2 = *a1;
  if (*a1 != a2)
  {
    if (v2 <= a2)
    {
      v5 = *(a1 + 4);
      v6 = a2 - v5;
      if (a2 > v5)
      {
        C3D::Array<unsigned int,0u,C3D::MallocAllocator>::GrowCapacityBy(a1, v6, 0);
        v2 = *a1;
      }

      bzero((*(a1 + 8) + 4 * v2), 4 * (a2 - v2));
    }

    *a1 = a2;
  }
}

void C3D::Array<void const*,0u,C3D::MallocAllocator>::resize(uint64_t a1, unsigned int a2)
{
  v2 = *a1;
  if (*a1 != a2)
  {
    if (v2 <= a2)
    {
      v5 = *(a1 + 4);
      v6 = a2 - v5;
      if (a2 > v5)
      {
        C3D::Array<unsigned long long,32u,C3D::MallocAllocator>::GrowCapacityBy(a1, v6, 0);
        v2 = *a1;
      }

      bzero((*(a1 + 8) + 8 * v2), 8 * (a2 - v2));
    }

    *a1 = a2;
  }
}

uint64_t C3D::Array<unsigned int,0u,C3D::MallocAllocator>::operator[](uint64_t a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3D::Array<unsigned int,0u,C3D::MallocAllocator>::operator[]();
    }
  }

  return *(a1 + 8) + 4 * a2;
}

uint64_t C3D::Array<void const*,0u,C3D::MallocAllocator>::operator[](uint64_t a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3D::Array<unsigned int,0u,C3D::MallocAllocator>::operator[]();
    }
  }

  return *(a1 + 8) + 8 * a2;
}

void __CreateProbeArrayResourceIfNeeded_block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v36 = *(a1 + 32);
  v37 = *(a1 + 48);
  if (a2)
  {
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = *(a4 + 8 * v7);
      if (C3DLightGetProbeType(v9) != 1)
      {
        v10 = scn_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          __CreateProbeArrayResourceIfNeeded_block_invoke_cold_1(&v34, &v35);
        }
      }

      RadianceProbeIndex = C3DLightGetRadianceProbeIndex(v9);
      if (RadianceProbeIndex == -1)
      {
        v12 = scn_default_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          __CreateProbeArrayResourceIfNeeded_block_invoke_cold_2(&v32, &v33);
        }
      }

      ProbeEnvironmentTimeStamp = C3DLightGetProbeEnvironmentTimeStamp(v9);
      ProbeUpdateType = C3DLightGetProbeUpdateType(v9);
      if (ProbeUpdateType == 1)
      {
        v20 = *(a1 + 64);
        v21 = *(a1 + 72);
        v22 = *(a3 + 8 * v7);
        v23 = *(a1 + 88);
        v29 = v36;
        v30 = v37;
        v31 = 0;
        C3D::ComputeProbeFromProbeNode(v20, v21, v23, RadianceProbeIndex, v22, &v29);
      }

      else if (!ProbeUpdateType)
      {
        if (*(a1 + 96) != 1)
        {
          goto LABEL_23;
        }

        v15 = *(a1 + 56);
        v16 = *(v15 + 40);
        v17 = *(v15 + 32);
        if (v17)
        {
          v18 = 8 * v17;
          v19 = *(v15 + 40);
          while (*v19 != v9)
          {
            ++v19;
            v18 -= 8;
            if (!v18)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {
          v19 = *(v15 + 40);
        }

        if (v19 == (v16 + 8 * v17) || (v24 = (v19 - v16) >> 3, v24 == -1) || *C3D::Array<unsigned int,0u,C3D::MallocAllocator>::operator[](v15 + 16, (v19 - v16) >> 3) != ProbeEnvironmentTimeStamp)
        {
LABEL_23:
          if (*C3D::Array<unsigned int,0u,C3D::MallocAllocator>::operator[](*(a1 + 80) + 16, RadianceProbeIndex) != ProbeEnvironmentTimeStamp || *C3D::Array<void const*,0u,C3D::MallocAllocator>::operator[](*(a1 + 80) + 32, RadianceProbeIndex) != v9)
          {
            *C3D::Array<unsigned int,0u,C3D::MallocAllocator>::operator[](*(a1 + 80) + 16, RadianceProbeIndex) = ProbeEnvironmentTimeStamp;
            *C3D::Array<void const*,0u,C3D::MallocAllocator>::operator[](*(a1 + 80) + 32, RadianceProbeIndex) = v9;
            v25 = *(a1 + 64);
            v26 = *(a1 + 72);
            v27 = *(a1 + 88);
            ProbeEnvironment = C3DLightGetProbeEnvironment(v9, 0);
            v29 = v36;
            v30 = v37;
            v31 = 0;
            C3D::ComputeProbeFromEnvironmentTexture(v25, v26, v27, RadianceProbeIndex, ProbeEnvironment, &v29);
          }
        }

        else
        {
          C3D::CopyProbeFromOldTextureToNewTexture(*(a1 + 64), *(a1 + 72), *(a1 + 56), v24, *(a1 + 80), *(a1 + 88), RadianceProbeIndex);
          *C3D::Array<unsigned int,0u,C3D::MallocAllocator>::operator[](*(a1 + 80) + 16, RadianceProbeIndex) = ProbeEnvironmentTimeStamp;
          *C3D::Array<void const*,0u,C3D::MallocAllocator>::operator[](*(a1 + 80) + 32, RadianceProbeIndex) = v9;
        }
      }

      ++v7;
    }

    while (v7 != v8);
  }
}

void C3D::ProbeArrayResource::~ProbeArrayResource(C3D::ProbeArrayResource *this)
{
  *this = &unk_282DC2F20;
  v3 = this + 48;
  v2 = *(this + 6);
  if (v2)
  {
  }

  v4 = *(this + 5);
  if (v4 != v3)
  {
    free(v4);
  }

  v5 = *(this + 3);
  if (v5 != this + 32)
  {
    free(v5);
  }
}

{
  *this = &unk_282DC2F20;
  v3 = this + 48;
  v2 = *(this + 6);
  if (v2)
  {
  }

  v4 = *(this + 5);
  if (v4 != v3)
  {
    free(v4);
  }

  v5 = *(this + 3);
  if (v5 != this + 32)
  {
    free(v5);
  }

  JUMPOUT(0x21CF07610);
}

void C3D::Array<unsigned int,0u,C3D::MallocAllocator>::GrowCapacityBy(unsigned int *a1, int a2, int a3)
{
  v4 = *(a1 + 1);
  v5 = 1.5;
  if (a3)
  {
    v5 = 1.0;
  }

  v6 = (v5 * (a1[1] + a2));
  v7 = malloc_type_malloc(4 * v6, 0x5437EE60uLL);
  memcpy(v7, v4, 4 * *a1);
  *(a1 + 1) = v7;
  a1[1] = v6;
  if (v4 != a1 + 4)
  {

    free(v4);
  }
}

uint64_t C3DFXPassSetup2PassesBlurCallbacks(uint64_t a1, int a2)
{
  v3 = a2 == 0;
  if (a2)
  {
    v4 = _initializeHorizontalBlur;
  }

  else
  {
    v4 = _initializeVerticalBlur;
  }

  if (v3)
  {
    v5 = _executeVerticalBlur;
  }

  else
  {
    v5 = _executeHorizontalBlur;
  }

  C3DFXPassSetInitializeCallback(a1, v4);

  return C3DFXPassSetWillExecuteCallback(a1, v5);
}

void __initialize2PassesBlur(uint64_t a1, int a2, int a3)
{
  if (!a3)
  {
    BuiltInProgramWithName = C3DFXMetalProgramCreateFromDefaultLibrary(@"GaussianBlur_vert", @"GaussianBlur_frag");
    C3DFXProgramSetClientProgram(BuiltInProgramWithName, *(a1 + 80));
LABEL_7:
    C3DFXPassSetProgram(a1, BuiltInProgramWithName);
    if (BuiltInProgramWithName)
    {

      CFRelease(BuiltInProgramWithName);
    }

    return;
  }

  if (a3 == 1)
  {
    BuiltInProgramWithName = C3DFXGLSLProgramCreateBuiltInProgramWithName(@"C3D-GaussianBlur");
    Shader = C3DFXGLSLProgramGetShader(BuiltInProgramWithName, 1);
    Source = C3DFXShaderGetSource(Shader);
    v8 = _create2PassesBlurProgramWithSampleCount_k++;
    v9 = 120;
    if (!a2)
    {
      v9 = 121;
    }

    v10 = CFStringCreateWithFormat(0, 0, @"#define unshareIndex %d\n#define MAX_SAMPLE %d\n#define COMPONENT %c\n%@", v8, 31, v9, Source);
    C3DFXShaderSetSource(Shader, v10);
    CFRelease(v10);
    goto LABEL_7;
  }

  C3DFXPassSetProgram(a1, 0);
}

void _execute2PassesBlur(uint64_t a1, uint64_t a2, __n128 *a3, unsigned int a4)
{
  v46 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v8 = @"C3D-blur-radiusH";
  }

  else
  {
    v8 = @"C3D-blur-radiusV";
  }

  ValueForSymbol = C3DFXTechniqueGetValueForSymbol(a2, v8, 0);
  v10 = *ValueForSymbol;
  v11 = ceilf(*ValueForSymbol * 0.5) * 4.0;
  if (v11 > 30.0)
  {
    v11 = 30.0;
  }

  v12 = (v11 + 1.0);
  v43 = (v11 + 1.0);
  v45 = 0;
  v13 = fminf(v10, 14.0);
  memset(&v44[1], 0, 112);
  MEMORY[0x28223BE20](ValueForSymbol);
  v15 = (&v41 - v14);
  Viewport = C3DEngineContextGetViewport(a3);
  v41 = *(a1 + 376);
  v16 = v13 * 6.28318531 * v13;
  v17 = 1.0 / sqrtf(v16);
  v18 = v13 * (v13 + v13);
  v20 = expf(-0.0 / v18) * v17;
  v44[0] = v20;
  *v15 = 0;
  if (v12 > 1)
  {
    __asm { FMOV            V2.2S, #1.0 }

    v26 = vdiv_f32(_D2, vmaxnm_f32(vcvt_f32_f64(vmulq_f64(v41, vcvt_hight_f64_f32(Viewport))), _D2));
    _D2.i32[0] = v26.i32[0];
    v26.i32[0] = 0;
    v19.n128_u64[0] = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(a4), 0x1FuLL)), _D2.u32[0], v26);
    v27 = vneg_f32(v19.n128_u64[0]);
    v28 = v12 >> 1;
    Viewport = v19;
    v29 = v19.n128_f32[1];
    v30 = v15 + 2;
    v31 = &v44[2];
    v32 = 2;
    do
    {
      v33 = (v32 - 1);
      v34 = v17 * expf(-(v33 * v33) / v18);
      v35 = v17 * expf(-(v32 * v32) / v18);
      v36 = v34 + v35;
      v37 = ((v35 * v32) + (v33 * v34)) / (v34 + v35);
      *(v31 - 1) = v36;
      *v31 = v36;
      v20 = v20 + (v36 * 2.0);
      v38.f32[0] = Viewport.n128_f32[0] * v37;
      v38.f32[1] = v29 * v37;
      v30[-1] = v38;
      *v30 = vmul_n_f32(v27, v37);
      v32 += 2;
      v30 += 2;
      v31 += 2;
      --v28;
    }

    while (v28);
  }

  if (v12 >= 1)
  {
    v39 = v44;
    v40 = v12;
    do
    {
      *v39 = *v39 / v20;
      ++v39;
      --v40;
    }

    while (v40);
  }

  C3DFXTechniqueSetValueForSymbolWithCount(a2, @"C3D-blur-offsets", v15, v12);
  C3DFXTechniqueSetValueForSymbolWithCount(a2, @"C3D-blur-weights", v44, v12);
  C3DFXTechniqueSetValueForSymbol(a2, @"C3D-blur-samples", &v43);
}

void _C3DConvexPolyhedronCFFinalize(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    a1[18] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    a1[9] = v5;
    operator delete(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;
    operator delete(v6);
  }

  v7 = a1[2];
  if (v7)
  {
    a1[3] = v7;

    operator delete(v7);
  }
}

uint64_t __C3DConvexPolyhedronGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DConvexPolyhedronGetTypeID::typeID = result;
  return result;
}

uint64_t C3DConvexPolyhedronCreate()
{
  if (C3DConvexPolyhedronGetTypeID::onceToken != -1)
  {
    C3DConvexPolyhedronCreate_cold_1();
  }

  v1 = C3DConvexPolyhedronGetTypeID::typeID;

  return C3DTypeCreateInstance_(v1, 144);
}

void _C3DConvexPolyhedronSet(uint64_t a1, _OWORD *a2, int a3, _DWORD *a4, int a5)
{
  LODWORD(v5) = a5;
  LODWORD(v7) = a3;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm((a1 + 16), 0);
  if (v7 >= 1)
  {
    v7 = v7;
    do
    {
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(a1 + 16, a2++);
      --v7;
    }

    while (v7);
  }

  std::vector<float>::resize((a1 + 40), 0);
  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      std::vector<int>::push_back[abi:nn200100]((a1 + 40), a4);
      std::vector<int>::push_back[abi:nn200100]((a1 + 40), a4 + 1);
      a4 += 2;
      --v5;
    }

    while (v5);
  }
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEm(a1, a2 - v2);
  }
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v10);
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

__n128 C3DConvexPolyhedronSetAABB(uint64_t a1, float32x4_t a2, float32x4_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = vsubq_f32(a2, a3);
  v4 = vaddq_f32(a3, a3);
  v5 = vdupq_laneq_s32(v4, 3);
  v5.i32[0] = v4.i32[0];
  v9 = v3;
  v10 = vaddq_f32(v3, v5);
  v11 = vaddq_f32(v3, vextq_s8(v4, vuzp2q_s32(v4, v4), 0xCuLL));
  v12 = vaddq_f32(v5, v11);
  v6 = vzip2q_s32(v4, v4);
  v7 = vextq_s8(v6, v6, 8uLL);
  v13 = vaddq_f32(v3, v7);
  v14 = vaddq_f32(v7, v10);
  v15 = vaddq_f32(v7, v11);
  v16 = vaddq_f32(v7, v12);
  _C3DConvexPolyhedronSet(a1, &v9, 8, kBoxEdges, 12);
  return result;
}

void C3DConvexPolyhedronSetFrustum(uint64_t a1, uint64_t *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  scn_plane_intersect_3_planes(a2[10], a2[11], a2[4], a2[5], a2[2], a2[3], &v4);
  scn_plane_intersect_3_planes(a2[10], a2[11], *a2, a2[1], a2[4], a2[5], &v5);
  scn_plane_intersect_3_planes(a2[10], a2[11], a2[2], a2[3], a2[6], a2[7], &v6);
  scn_plane_intersect_3_planes(a2[10], a2[11], a2[6], a2[7], *a2, a2[1], &v7);
  scn_plane_intersect_3_planes(a2[8], a2[9], a2[4], a2[5], a2[2], a2[3], &v8);
  scn_plane_intersect_3_planes(a2[8], a2[9], *a2, a2[1], a2[4], a2[5], &v9);
  scn_plane_intersect_3_planes(a2[8], a2[9], a2[2], a2[3], a2[6], a2[7], &v10);
  scn_plane_intersect_3_planes(a2[8], a2[9], a2[6], a2[7], *a2, a2[1], &v11);
  _C3DConvexPolyhedronSet(a1, &v4, 8, kBoxEdges, 12);
}

void C3DConvexPolyhedronClipPlane(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4.i64[0] = a2;
  v4.i64[1] = a3;
  v68 = v4;
  v5 = vmulq_f32(v4, v4);
  *&v6 = v5.f32[2] + vaddv_f32(*v5.f32);
  *v5.f32 = vrsqrte_f32(v6);
  *v5.f32 = vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32)));
  LODWORD(v65) = vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32))).u32[0];
  std::vector<float>::resize((a1 + 112), (*(a1 + 24) - *(a1 + 16)) >> 4);
  v7 = *(a1 + 24) - *(a1 + 16);
  if ((v7 >> 4) >= 1)
  {
    memset(*(a1 + 112), 255, (v7 >> 2) & 0x1FFFFFFFCLL);
  }

  v69 = vmulq_n_f32(v68, v65);
  std::vector<ClippedCorner>::resize((a1 + 136), 0);
  v9 = *(a1 + 48) - *(a1 + 40);
  if ((v9 >> 2) > 1)
  {
    v10 = 0;
    for (i = (v9 >> 3) & 0x7FFFFFFF; i; --i)
    {
      v12 = (*(a1 + 40) + v10);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a1 + 16);
      v16 = (v15 + 16 * v14);
      v17 = *(v15 + 16 * v13);
      v8 = *v16;
      v18 = vmulq_f32(v69, *v16);
      v19 = v69.f32[3] + (v18.f32[2] + vaddv_f32(*v18.f32));
      v20 = vmulq_f32(v69, v17);
      v21 = v69.f32[3] + (v20.f32[2] + vaddv_f32(*v20.f32));
      if (v19 > 0.0 || v21 > 0.0)
      {
        if (v19 <= 0.0 || v21 > 0.0)
        {
          if (v19 <= 0.0 && v21 > 0.0)
          {
            v63 = *(v15 + 16 * v13);
            v66 = *v16;
            v25 = *(*(a1 + 112) + 4 * v14);
            if (v25 == -1)
            {
              _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(a1 + 64, v16);
              v25 = ((*(a1 + 72) - *(a1 + 64)) >> 4) - 1;
              *(*(a1 + 112) + 4 * v14) = v25;
            }

            v71.i32[0] = v25;
            std::vector<int>::push_back[abi:nn200100]((a1 + 88), &v71);
            if ((v21 - v19) == 0.0)
            {
              v26 = v66;
            }

            else
            {
              v26 = vmlaq_n_f32(v66, vsubq_f32(v63, v66), -v19 / (v21 - v19));
            }

            v71 = v26;
            _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(a1 + 64, &v71);
            HIDWORD(v72) = ((*(a1 + 72) - *(a1 + 64)) >> 4) - 1;
            std::vector<int>::push_back[abi:nn200100]((a1 + 88), &v72 + 1);
            std::vector<ClippedCorner>::push_back[abi:nn200100](a1 + 136, &v72);
          }

          goto LABEL_18;
        }

        if ((v21 - v19) != 0.0)
        {
          v8 = vmlaq_n_f32(v8, vsubq_f32(v17, v8), -v19 / (v21 - v19));
        }

        v71 = v8;
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(a1 + 64, &v71);
        HIDWORD(v72) = ((*(a1 + 72) - *(a1 + 64)) >> 4) - 1;
        std::vector<int>::push_back[abi:nn200100]((a1 + 88), &v72 + 1);
        std::vector<ClippedCorner>::push_back[abi:nn200100](a1 + 136, &v72);
        v23 = *(a1 + 112);
      }

      else
      {
        v22 = *(*(a1 + 112) + 4 * v14);
        if (v22 == -1)
        {
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(a1 + 64, v16);
          v22 = ((*(a1 + 72) - *(a1 + 64)) >> 4) - 1;
          *(*(a1 + 112) + 4 * v14) = v22;
        }

        v71.i32[0] = v22;
        std::vector<int>::push_back[abi:nn200100]((a1 + 88), &v71);
        v23 = *(a1 + 112);
      }

      v24 = *(v23 + 4 * v13);
      if (v24 == -1)
      {
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(a1 + 64, (*(a1 + 16) + 16 * v13));
        v24 = ((*(a1 + 72) - *(a1 + 64)) >> 4) - 1;
        *(*(a1 + 112) + 4 * v13) = v24;
      }

      v71.i32[0] = v24;
      std::vector<int>::push_back[abi:nn200100]((a1 + 88), &v71);
LABEL_18:
      v10 += 8;
    }
  }

  v27 = *(a1 + 136);
  v28 = *(a1 + 144);
  v29 = v28 - v27;
  v30 = (v28 - v27) >> 3;
  if (v30 > 2)
  {
    if (v29 == 24)
    {
      goto LABEL_40;
    }

    v31 = v29 >> 3;
    v32 = *(a1 + 64);
    v33 = *(v32 + 16 * *(v27 + 4));
    v34 = (v29 >> 3) & 0x7FFFFFFF;
    if ((v29 >> 3) > 1)
    {
      v35 = (v27 + 12);
      v36 = v34 - 1;
      do
      {
        v37 = *v35;
        v35 += 2;
        v33 = vaddq_f32(v33, *(v32 + 16 * v37));
        --v36;
      }

      while (v36);
    }

    if (v31 >= 1)
    {
      v38 = vmulq_f32(v69, xmmword_21C27F600);
      v38.f32[0] = fabsf(v38.f32[2] + vaddv_f32(*v38.f32));
      v8.i32[0] = 1064514355;
      v39 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v38, v8), 0), xmmword_21C27F8C0, xmmword_21C27F600);
      v40 = vnegq_f32(v69);
      v41 = vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL);
      v42 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), v40), v39, v41);
      v43 = vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL);
      v44 = vmulq_f32(v69, v43);
      v44.f32[0] = v44.f32[2] + vaddv_f32(*v44.f32);
      v45 = vmlsq_lane_f32(v43, v69, *v44.f32, 0);
      v46 = vmulq_f32(v45, v45);
      *&v47 = v46.f32[2] + vaddv_f32(*v46.f32);
      *v46.f32 = vrsqrte_f32(v47);
      *v46.f32 = vmul_f32(*v46.f32, vrsqrts_f32(v47, vmul_f32(*v46.f32, *v46.f32)));
      v70 = vmulq_n_f32(v45, vmul_f32(*v46.f32, vrsqrts_f32(v47, vmul_f32(*v46.f32, *v46.f32))).f32[0]);
      v48 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL), v40), v70, v41);
      v49 = vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL);
      *v48.i32 = v30;
      v64 = vdivq_f32(v33, vdupq_lane_s32(*v48.i8, 0));
      v67 = v49;
      v50 = (v27 + 4);
      do
      {
        v51 = vsubq_f32(*(v32 + 16 * *v50), v64);
        v52 = vmulq_f32(v70, v51);
        v53 = vmulq_f32(v67, v51);
        *(v50 - 1) = atan2f(v52.f32[2] + vaddv_f32(*v52.f32), v53.f32[2] + vaddv_f32(*v53.f32));
        v50 += 2;
        --v34;
      }

      while (v34);
    }

    v54 = 126 - 2 * __clz(v30);
    v55 = v28 == v27 ? 0 : v54;
    std::__introsort<std::_ClassicAlgPolicy,CompareCornerAngle &,ClippedCorner *,false>(v27, v28, &v71, v55, 1);
    v27 = *(a1 + 136);
    if (((*(a1 + 144) - v27) >> 3) >= 1)
    {
LABEL_40:
      v56 = 0;
      v57 = 4;
      do
      {
        std::vector<int>::push_back[abi:nn200100]((a1 + 88), (v27 + v57));
        std::vector<int>::push_back[abi:nn200100]((a1 + 88), (*(a1 + 136) + 8 * (++v56 % ((*(a1 + 144) - *(a1 + 136)) >> 3)) + 4));
        v27 = *(a1 + 136);
        v57 += 8;
      }

      while (v56 < ((*(a1 + 144) - v27) >> 3));
    }
  }

  v58 = *(a1 + 64);
  v60 = *(a1 + 32);
  v59 = *(a1 + 48);
  v61 = *(a1 + 80);
  v62 = *(a1 + 16);
  *(a1 + 48) = *(a1 + 96);
  *(a1 + 64) = v62;
  *(a1 + 16) = v58;
  *(a1 + 32) = v61;
  *(a1 + 80) = v60;
  *(a1 + 96) = v59;
  std::vector<float>::resize((a1 + 88), 0);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm((a1 + 64), 0);
  std::vector<float>::resize((a1 + 112), 0);
  std::vector<ClippedCorner>::resize((a1 + 136), 0);
}

void std::vector<ClippedCorner>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<ClippedCorner>::__append(a1, a2 - v2);
  }
}

void std::vector<ClippedCorner>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
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

BOOL C3DConvexPolyhedronClipAABB(uint64_t a1, float32x4_t a2, float32x4_t a3)
{
  v19 = vaddq_f32(a2, a3);
  LODWORD(v4) = 1.0;
  *(&v4 + 1) = -v19.f32[2];
  C3DConvexPolyhedronClipPlane(a1, 0, v4);
  if (*(a1 + 40) == *(a1 + 48))
  {
    return 0;
  }

  __asm { FMOV            V0.4S, #1.0 }

  DWORD2(_Q0) = 0;
  *(&_Q0 + 3) = -v19.f32[0];
  C3DConvexPolyhedronClipPlane(a1, _Q0, *(&_Q0 + 1));
  if (*(a1 + 40) == *(a1 + 48))
  {
    return 0;
  }

  LODWORD(v10) = 0;
  v18 = vsubq_f32(a2, a3);
  HIDWORD(v10) = v18.i32[0];
  C3DConvexPolyhedronClipPlane(a1, 3212836864, v10);
  if (*(a1 + 40) == *(a1 + 48))
  {
    return 0;
  }

  LODWORD(v11) = 0;
  HIDWORD(v11) = 1.0;
  LODWORD(v12) = 0;
  *(&v12 + 1) = -v19.f32[1];
  C3DConvexPolyhedronClipPlane(a1, v11, v12);
  if (*(a1 + 40) == *(a1 + 48))
  {
    return 0;
  }

  LODWORD(v13) = 0;
  HIDWORD(v13) = v18.i32[1];
  C3DConvexPolyhedronClipPlane(a1, 0xBF80000000000000, v13);
  if (*(a1 + 40) == *(a1 + 48))
  {
    return 0;
  }

  LODWORD(v14) = -1082130432;
  HIDWORD(v14) = v18.i32[2];
  C3DConvexPolyhedronClipPlane(a1, 0, v14);
  return *(a1 + 40) != *(a1 + 48);
}

float32x4_t C3DConvexPolyhedronTransform(uint64_t a1, float32x4_t *a2)
{
  v2 = *(a1 + 24) - *(a1 + 16);
  if ((v2 >> 4) >= 1)
  {
    v3 = 0;
    v4 = (v2 >> 4) & 0x7FFFFFFF;
    do
    {
      v5 = *(a1 + 16);
      result = vaddq_f32(a2[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a2[1], *(v5 + 16 * v3), 1), *a2, COERCE_FLOAT(*(v5 + 16 * v3))), a2[2], *(v5 + 16 * v3), 2));
      *(v5 + 16 * v3++) = result;
    }

    while (v4 != v3);
  }

  return result;
}

double C3DConvexPolyhedronComputeBoxInSpace(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v5 = *(MEMORY[0x277D860B8] + 48);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24) - v6;
  v8 = xmmword_21C27F650;
  if ((v7 >> 4) >= 1)
  {
    v9 = (v7 >> 4) & 0x7FFFFFFF;
    v10.i64[0] = 0x3F0000003F000000;
    v10.i64[1] = 0x3F0000003F000000;
    do
    {
      v11 = *v6++;
      v12 = vsubq_f32(v5, v8);
      v12.i32[3] = 0;
      v13 = vaddq_f32(a5, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a3, *v11.f32, 1), a2, v11.f32[0]), a4, v11, 2));
      v13.i32[3] = 0;
      v14 = vminnmq_f32(v12, v13);
      v15 = vaddq_f32(v5, v8);
      v15.i32[3] = 0;
      v16 = vmaxnmq_f32(v15, v13);
      v5 = vmulq_f32(vaddq_f32(v14, v16), v10);
      v8 = vmulq_f32(vsubq_f32(v16, v14), v10);
      v5.i32[3] = 1.0;
      v8.i32[3] = 0;
      --v9;
    }

    while (v9);
  }

  return *v5.i64;
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEm(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<ClippedCorner>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

float *std::__introsort<std::_ClassicAlgPolicy,CompareCornerAngle &,ClippedCorner *,false>(float *result, float *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        if (*(a2 - 2) >= *v9)
        {
          return result;
        }

        v49 = *v9;
LABEL_81:
        *v9 = *(a2 - 1);
        goto LABEL_82;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v50 = *(v9 + 8);
      v51 = *v9;
      v52 = *(v9 + 16);
      if (v50 >= *v9)
      {
        if (v52 < v50)
        {
          v57 = *(v9 + 8);
          v56 = *(v9 + 16);
          *(v9 + 8) = v56;
          *(v9 + 16) = v57;
          v52 = *&v57;
          if (v51 > *&v56)
          {
            v58 = *v9;
            *v9 = v56;
            *(v9 + 8) = v58;
          }
        }
      }

      else
      {
        v53 = *v9;
        LODWORD(v54) = *v9;
        if (v52 < v50)
        {
          *v9 = *(v9 + 16);
          goto LABEL_110;
        }

        *v9 = *(v9 + 8);
        *(v9 + 8) = v53;
        if (v52 < v54)
        {
          *(v9 + 8) = *(v9 + 16);
LABEL_110:
          *(v9 + 16) = v53;
          v52 = v54;
        }
      }

      if (*(a2 - 2) < v52)
      {
        v66 = *(v9 + 16);
        *(v9 + 16) = *(a2 - 1);
        *(a2 - 1) = v66;
        if (*(v9 + 16) < *(v9 + 8))
        {
          v68 = *(v9 + 8);
          v67 = *(v9 + 16);
          *(v9 + 8) = v67;
          *(v9 + 16) = v68;
          if (*v9 > *&v67)
          {
            v69 = *v9;
            *v9 = v67;
            *(v9 + 8) = v69;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,CompareCornerAngle &,ClippedCorner *,0>(v9, (v9 + 8), (v9 + 16), (v9 + 24), a2 - 1);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,CompareCornerAngle &,ClippedCorner *>(v9, a2);
      }

      else if (v9 != a2)
      {
        v59 = (v9 + 8);
        while (v59 != a2)
        {
          v60 = v59;
          v61 = v8[2];
          if (v61 < *v8)
          {
            v62 = *(v8 + 3);
            v63 = v60;
            do
            {
              v64 = v63;
              v65 = *(v63 - 1);
              v63 -= 2;
              *v64 = v65;
            }

            while (*(v64 - 4) > v61);
            *v63 = v61;
            *(v63 + 1) = v62;
          }

          v59 = v60 + 2;
          v8 = v60;
        }
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,CompareCornerAngle &,ClippedCorner *,ClippedCorner *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = (v9 + 8 * (v12 >> 1));
    v14 = v13;
    v15 = *(a2 - 2);
    if (v12 >= 0x81)
    {
      v16 = *v13;
      if (*v13 >= *v9)
      {
        if (v15 < v16)
        {
          v20 = *v13;
          *v13 = *(a2 - 1);
          *(a2 - 1) = v20;
          if (*v13 < *v9)
          {
            v21 = *v9;
            *v9 = *v13;
            *v13 = v21;
          }
        }
      }

      else
      {
        v17 = *v9;
        if (v15 < v16)
        {
          *v9 = *(a2 - 1);
          goto LABEL_29;
        }

        *v9 = *v13;
        *v13 = v17;
        if (*(a2 - 2) < *&v17)
        {
          *v13 = *(a2 - 1);
LABEL_29:
          *(a2 - 1) = v17;
        }
      }

      v24 = v13 - 2;
      v25 = *(v13 - 2);
      v26 = *(a2 - 4);
      if (v25 >= *(v9 + 8))
      {
        if (v26 < v25)
        {
          v28 = *v24;
          *v24 = *(a2 - 2);
          *(a2 - 2) = v28;
          if (*v24 < *(v9 + 8))
          {
            v29 = *(v9 + 8);
            *(v9 + 8) = *v24;
            *v24 = v29;
          }
        }
      }

      else
      {
        v27 = *(v9 + 8);
        if (v26 < v25)
        {
          *(v9 + 8) = *(a2 - 2);
          goto LABEL_43;
        }

        *(v9 + 8) = *v24;
        *v24 = v27;
        if (*(a2 - 4) < *&v27)
        {
          *v24 = *(a2 - 2);
LABEL_43:
          *(a2 - 2) = v27;
        }
      }

      v31 = v13[2];
      v30 = (v13 + 2);
      v32 = v31;
      v33 = *(a2 - 6);
      if (v31 >= *(v9 + 16))
      {
        if (v33 < v32)
        {
          v35 = *v30;
          *v30 = *(a2 - 3);
          *(a2 - 3) = v35;
          if (*v30 < *(v9 + 16))
          {
            v36 = *(v9 + 16);
            *(v9 + 16) = *v30;
            *v30 = v36;
          }
        }
      }

      else
      {
        v34 = *(v9 + 16);
        if (v33 < v32)
        {
          *(v9 + 16) = *(a2 - 3);
          goto LABEL_52;
        }

        *(v9 + 16) = *v30;
        *v30 = v34;
        if (*(a2 - 6) < *&v34)
        {
          *v30 = *(a2 - 3);
LABEL_52:
          *(a2 - 3) = v34;
        }
      }

      v37 = *v14;
      v38 = *v24;
      v39 = *v30;
      if (*v14 >= *v24)
      {
        v40 = *v14;
        if (v39 < v37)
        {
          v41 = *v30;
          *v14 = *v30;
          *v30 = v40;
          if (v38 <= *&v41)
          {
            v40 = v41;
          }

          else
          {
            v40 = *v24;
            *v24 = v41;
            *v14 = v40;
          }
        }
      }

      else
      {
        v40 = *v24;
        if (v39 >= v37)
        {
          *v24 = *v14;
          *v14 = v40;
          if (v39 < *&v40)
          {
            v42 = *v30;
            *v14 = *v30;
            *v30 = v40;
            v40 = v42;
          }
        }

        else
        {
          *v24 = *v30;
          *v30 = v40;
          v40 = *v14;
        }
      }

      v43 = *v9;
      *v9 = v40;
      *v14 = v43;
      if (a5)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    v18 = *v9;
    if (*v9 < *v13)
    {
      v19 = *v13;
      if (v15 < v18)
      {
        *v14 = *(a2 - 1);
        goto LABEL_38;
      }

      *v14 = *v9;
      *v9 = v19;
      if (*(a2 - 2) < *&v19)
      {
        *v9 = *(a2 - 1);
LABEL_38:
        *(a2 - 1) = v19;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    if (v15 >= v18)
    {
      goto LABEL_39;
    }

    v22 = *v9;
    *v9 = *(a2 - 1);
    *(a2 - 1) = v22;
    if (*v9 >= *v14)
    {
      goto LABEL_39;
    }

    v23 = *v14;
    *v14 = *v9;
    *v9 = v23;
    if (a5)
    {
      goto LABEL_64;
    }

LABEL_63:
    if (*(v9 - 8) >= *v9)
    {
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,ClippedCorner *,CompareCornerAngle &>(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_64:
    v44 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,ClippedCorner *,CompareCornerAngle &>(v9, a2);
    if ((v45 & 1) == 0)
    {
      goto LABEL_67;
    }

    v46 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CompareCornerAngle &,ClippedCorner *>(v9, v44);
    v9 = (v44 + 2);
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CompareCornerAngle &,ClippedCorner *>((v44 + 2), a2);
    if (result)
    {
      a4 = -v11;
      a2 = v44;
      if (v46)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v46)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,CompareCornerAngle &,ClippedCorner *,false>(v8, v44, a3, -v11, a5 & 1);
      v9 = (v44 + 2);
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v47 = *(v9 + 8);
  v48 = *(a2 - 2);
  if (v47 < *v9)
  {
    v49 = *v9;
    if (v48 < v47)
    {
      goto LABEL_81;
    }

    *v9 = *(v9 + 8);
    *(v9 + 8) = v49;
    if (*(a2 - 2) >= *&v49)
    {
      return result;
    }

    *(v9 + 8) = *(a2 - 1);
LABEL_82:
    *(a2 - 1) = v49;
    return result;
  }

  if (v48 < v47)
  {
    v55 = *(v9 + 8);
    *(v9 + 8) = *(a2 - 1);
    *(a2 - 1) = v55;
    if (*(v9 + 8) < *v9)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }
  }

  return result;
}

float *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,CompareCornerAngle &,ClippedCorner *,0>(float *result, float *a2, float *a3, void *a4, void *a5)
{
  v5 = *a2;
  v6 = *a3;
  if (*a2 >= *result)
  {
    if (v6 < v5)
    {
      v7 = *a2;
      *a2 = *a3;
      *a3 = v7;
      if (*a2 >= *result)
      {
        goto LABEL_7;
      }

      v8 = *result;
      *result = *a2;
      *a2 = v8;
      v6 = *a3;
    }
  }

  else
  {
    v7 = *result;
    if (v6 < v5)
    {
      *result = *a3;
      *a3 = v7;
LABEL_7:
      v6 = *&v7;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v7;
    v6 = *a3;
    if (*a3 < *&v7)
    {
      *a2 = *a3;
      *a3 = v7;
      v6 = *&v7;
    }
  }

LABEL_10:
  if (*a4 < v6)
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    if (*a3 < *a2)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      if (*a2 < *result)
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
      }
    }
  }

  if (*a5 < *a4)
  {
    v12 = *a4;
    *a4 = *a5;
    *a5 = v12;
    if (*a4 < *a3)
    {
      v13 = *a3;
      *a3 = *a4;
      *a4 = v13;
      if (*a3 < *a2)
      {
        v14 = *a2;
        *a2 = *a3;
        *a3 = v14;
        if (*a2 < *result)
        {
          v15 = *result;
          *result = *a2;
          *a2 = v15;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,CompareCornerAngle &,ClippedCorner *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 8;
    if (result + 8 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 8);
        if (v6 < *v4)
        {
          v7 = *(v4 + 12);
          v8 = v3;
          while (1)
          {
            *(result + v8 + 8) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = *(result + v8 - 8);
            v8 -= 8;
            if (v9 <= v6)
            {
              v10 = result + v8 + 8;
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          *(v10 + 4) = v7;
        }

        v2 = v5 + 8;
        v3 += 8;
        v4 = v5;
      }

      while (v5 + 8 != a2);
    }
  }

  return result;
}

float *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,ClippedCorner *,CompareCornerAngle &>(float *a1, float *a2)
{
  v2 = *a1;
  if (*(a2 - 2) <= COERCE_FLOAT(*a1))
  {
    v5 = a1 + 2;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      v5 += 2;
    }

    while (*v3 <= *&v2);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[2];
      v3 += 2;
    }

    while (v4 <= *&v2);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *(a2 - 2);
      a2 -= 2;
    }

    while (v6 > *&v2);
  }

  while (v3 < a2)
  {
    v7 = *v3;
    *v3 = *a2;
    *a2 = v7;
    do
    {
      v8 = v3[2];
      v3 += 2;
    }

    while (v8 <= *&v2);
    do
    {
      v9 = *(a2 - 2);
      a2 -= 2;
    }

    while (v9 > *&v2);
  }

  if (v3 - 2 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

float *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,ClippedCorner *,CompareCornerAngle &>(float *a1, float *a2)
{
  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = a1[v2 + 2];
    v2 += 2;
  }

  while (v4 < *&v3);
  v5 = &a1[v2];
  v6 = &a1[v2 - 2];
  if (v2 == 2)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v8 = *(a2 - 2);
      a2 -= 2;
    }

    while (v8 >= *&v3);
  }

  else
  {
    do
    {
      v7 = *(a2 - 2);
      a2 -= 2;
    }

    while (v7 >= *&v3);
  }

  if (v5 < a2)
  {
    v9 = &a1[v2];
    v10 = a2;
    do
    {
      v11 = *v9;
      *v9 = *v10;
      *v10 = v11;
      do
      {
        v12 = v9[2];
        v9 += 2;
      }

      while (v12 < *&v3);
      do
      {
        v13 = *(v10 - 2);
        v10 -= 2;
      }

      while (v13 >= *&v3);
    }

    while (v9 < v10);
    v6 = v9 - 2;
  }

  if (v6 != a1)
  {
    *a1 = *v6;
  }

  *v6 = v3;
  return v6;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CompareCornerAngle &,ClippedCorner *>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = *(a1 + 8);
      v5 = *(a2 - 8);
      if (v4 >= *a1)
      {
        if (v5 < v4)
        {
          v16 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 8);
          *(a2 - 8) = v16;
          if (*(a1 + 8) < *a1)
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        return 1;
      }

      v3 = *a1;
      if (v5 >= v4)
      {
        *a1 = *(a1 + 8);
        *(a1 + 8) = v3;
        if (*(a2 - 8) >= *&v3)
        {
          return 1;
        }

        *(a1 + 8) = *(a2 - 8);
        goto LABEL_13;
      }

LABEL_12:
      *a1 = *(a2 - 8);
LABEL_13:
      *(a2 - 8) = v3;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,CompareCornerAngle &,ClippedCorner *,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), (a2 - 8));
        return 1;
      }

      goto LABEL_14;
    }

    v11 = *(a1 + 8);
    v12 = *a1;
    v13 = *(a1 + 16);
    if (v11 >= *a1)
    {
      if (v13 < v11)
      {
        v21 = *(a1 + 8);
        v20 = *(a1 + 16);
        *(a1 + 8) = v20;
        *(a1 + 16) = v21;
        v13 = *&v21;
        if (v12 > *&v20)
        {
          v22 = *a1;
          *a1 = v20;
          *(a1 + 8) = v22;
        }
      }

      goto LABEL_48;
    }

    v14 = *a1;
    LODWORD(v15) = *a1;
    if (v13 >= v11)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v14;
      if (v13 >= v15)
      {
LABEL_48:
        if (*(a2 - 8) < v13)
        {
          v31 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 8);
          *(a2 - 8) = v31;
          if (*(a1 + 16) < *(a1 + 8))
          {
            v33 = *(a1 + 8);
            v32 = *(a1 + 16);
            *(a1 + 8) = v32;
            *(a1 + 16) = v33;
            if (*a1 > *&v32)
            {
              v34 = *a1;
              *a1 = v32;
              *(a1 + 8) = v34;
            }
          }
        }

        return 1;
      }

      *(a1 + 8) = *(a1 + 16);
    }

    else
    {
      *a1 = *(a1 + 16);
    }

    *(a1 + 16) = v14;
    v13 = v15;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 8) < *a1)
    {
      v3 = *a1;
      goto LABEL_12;
    }

    return 1;
  }

LABEL_14:
  v6 = (a1 + 16);
  v7 = *(a1 + 16);
  v8 = *(a1 + 8);
  v9 = *a1;
  if (v8 >= *a1)
  {
    if (v7 < v8)
    {
      v18 = *(a1 + 8);
      v17 = *(a1 + 16);
      *(a1 + 8) = v17;
      *(a1 + 16) = v18;
      if (v9 > *&v17)
      {
        v19 = *a1;
        *a1 = v17;
        *(a1 + 8) = v19;
      }
    }
  }

  else
  {
    v10 = *a1;
    if (v7 >= v8)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v10;
      if (v7 >= *&v10)
      {
        goto LABEL_34;
      }

      *(a1 + 8) = *(a1 + 16);
    }

    else
    {
      *a1 = *(a1 + 16);
    }

    *(a1 + 16) = v10;
  }

LABEL_34:
  v23 = a1 + 24;
  if (a1 + 24 == a2)
  {
    return 1;
  }

  v24 = 0;
  v25 = 0;
  while (1)
  {
    v26 = *v23;
    if (*v23 < *v6)
    {
      v27 = *(v23 + 4);
      v28 = v24;
      while (1)
      {
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v29 = *(a1 + v28 + 8);
        v28 -= 8;
        if (v29 <= v26)
        {
          v30 = a1 + v28 + 24;
          goto LABEL_42;
        }
      }

      v30 = a1;
LABEL_42:
      *v30 = v26;
      *(v30 + 4) = v27;
      if (++v25 == 8)
      {
        return v23 + 8 == a2;
      }
    }

    v6 = v23;
    v24 += 8;
    v23 += 8;
    if (v23 == a2)
    {
      return 1;
    }
  }
}

float *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,CompareCornerAngle &,ClippedCorner *,ClippedCorner *>(float *a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,CompareCornerAngle &,ClippedCorner *>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (*v12 < *a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,CompareCornerAngle &,ClippedCorner *>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = v16;
          v18 = &v16[2 * v14];
          v16 = v18 + 2;
          v19 = 2 * v14;
          v14 = (2 * v14) | 1;
          v20 = v19 + 2;
          if (v20 < v8)
          {
            v22 = v18[4];
            v21 = v18 + 4;
            if (*(v21 - 2) < v22)
            {
              v16 = v21;
              v14 = v20;
            }
          }

          *v17 = *v16;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 2;
        if (v16 == v6)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v6;
          *v6 = v15;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,CompareCornerAngle &,ClippedCorner *>(a1, (v16 + 2), a4, ((v16 + 2) - a1) >> 3);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,CompareCornerAngle &,ClippedCorner *>(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && *v8 < v8[2])
      {
        v8 += 2;
        v7 = v9;
      }

      v10 = *a4;
      if (*v8 >= *a4)
      {
        v11 = *(a4 + 1);
        do
        {
          v12 = a4;
          a4 = v8;
          *v12 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 8 * v7);
          v14 = v13 + 2;
          if (v14 < a3 && *v8 < v8[2])
          {
            v8 += 2;
            v7 = v14;
          }
        }

        while (*v8 >= v10);
        *a4 = v10;
        *(a4 + 1) = v11;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,CompareCornerAngle &,ClippedCorner *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 8 * (v4 >> 1));
    v7 = (a2 - 8);
    v8 = *(a2 - 8);
    if (*v6 < v8)
    {
      v9 = *(a2 - 4);
      do
      {
        v10 = v7;
        v7 = v6;
        *v10 = *v6;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 8 * v5);
      }

      while (*v6 < v8);
      *v7 = v8;
      *(v7 + 1) = v9;
    }
  }

  return result;
}

uint64_t _configureStageInputOutputDescriptorWithDeformerFunction(void *a1, uint64_t a2, uint64_t a3)
{
  if ((*a3 & 1) == 0)
  {
    _configureStageInputOutputDescriptorWithDeformerFunction();
  }

  v6 = [objc_msgSend(a1 "attributes")];
  [v6 setFormat:*(a3 + 8)];
  [v6 setOffset:*(a3 + 16)];
  [v6 setBufferIndex:a2 + 10];
  v7 = [objc_msgSend(a1 "layouts")];
  [v7 setStepFunction:5];
  v8 = *(a3 + 24);

  return [v7 setStride:v8];
}

void OUTLINED_FUNCTION_0_5()
{
  v0[92] = v0[93];
  v0[94] = v0[95];
  v0[96] = v0[97];
}

double OUTLINED_FUNCTION_5()
{
  result = 0.0;
  v0[49] = 0u;
  v0[50] = 0u;
  v0[51] = 0u;
  return result;
}

void *OUTLINED_FUNCTION_8()
{
  *(v1 + 416) = v2;

  return memcpy((v1 + 432), (v0 + 736), 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return [v8 countByEnumeratingWithState:va objects:v9 - 200 count:16];
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{

  return [v28 countByEnumeratingWithState:&a9 objects:&a28 count:16];
}

uint64_t OUTLINED_FUNCTION_11(void *a1, const char *a2)
{

  return [a1 updateWithComputeContext:v2 buffers:v2 + 736];
}

double __C3DAnimationManagerGetTypeID_block_invoke()
{
  C3DAnimationManagerGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DAnimationManagerContextClassSerializable;
  unk_281741DC0 = kC3DC3DAnimationManagerContextClassSerializable;
  unk_281741DD0 = *&off_282DC2FA0;
  return result;
}

uint64_t C3DAnimationManagerCreate()
{
  if (C3DAnimationManagerGetTypeID_onceToken != -1)
  {
    C3DAnimationManagerCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DAnimationManagerGetTypeID_typeID, 160);
  if (Instance)
  {
    *(Instance + 24) = C3DArrayCreate(256, 64);
    *(Instance + 32) = CFDictionaryCreateMutable(0, 0, 0, 0);
    *(Instance + 48) = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
    *(Instance + 56) = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
    *(Instance + 80) = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    *(Instance + 112) = C3DAllocatorCreate(40, 64);
    *(Instance + 64) = 0;
  }

  return Instance;
}

uint64_t _C3DAnimationManagerAddAnimationNode(uint64_t a1, uint64_t a2, const void *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!a3)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_3(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  Animation = C3DAnimationNodeGetAnimation(a2);
  v31 = C3DAnimationSetup(Animation, a3);
  if (v31)
  {
    C3DAnimationNodeSetTarget(a2, a3);
    if (_C3DAnimationReadsDestinationBuffer(Animation))
    {
      v32 = 4096;
    }

    else
    {
      v32 = 0;
    }

    *(a2 + 121) = *(a2 + 121) & 0xFFFFEFFF | v32;
    if ((*(Animation + 84) & 4) != 0 && *(Animation + 76) > 1.0)
    {
      BaseType = C3DModelTargetGetBaseType(a3);
      v34 = C3DSizeOfBaseType(BaseType);
      v35 = C3DAnimationGetBaseType(Animation);
      if (v35 != BaseType)
      {
        v36 = scn_default_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v53 = *(a2 + 136);
          *buf = 138412802;
          v55 = v53;
          v56 = 2112;
          v57 = C3DBaseTypeStringDescription(v35);
          v58 = 2112;
          v59 = C3DBaseTypeStringDescription(BaseType);
          _os_log_error_impl(&dword_21BEF7000, v36, OS_LOG_TYPE_ERROR, "Error: type for key %@ is switching from %@ to %@, this will lead to improper animation", buf, 0x20u);
        }
      }

      v37 = C3DValueCreate(v35, 1);
      v38 = C3DValueCreate(v35, 1);
      v39 = malloc_type_calloc(0x20uLL, 1uLL, 0xA520C6B7uLL);
      *(a2 + 112) = v39;
      v39[2] = v37;
      v39[3] = v38;
      Bytes = C3DValueGetBytes(v37);
      if (C3DValueGetLength(v37) >= v34)
      {
        C3DModelTargetGetValue(a3, Bytes);
        C3DAnimationEvaluate(Animation);
      }
    }

    v41 = CFGetTypeID(a2);
    if (v41 == C3DAnimationClusterNodeGetTypeID())
    {
      v42 = scn_default_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        _C3DAnimationManagerAddAnimationNode_cold_4(v42, v43, v44, v45, v46, v47, v48, v49);
      }
    }

    TargetAddress = C3DModelTargetGetTargetAddress(a3);
    __C3DAnimationManagerAddAnimationNodeToAnimationStackWithKey(a1, a2, TargetAddress, a3);
  }

  else
  {
    v51 = scn_default_log();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BEF7000, v51, OS_LOG_TYPE_DEFAULT, "Warning: fail to setup the animation - won't be added to the animation stack", buf, 2u);
    }
  }

  return v31;
}

void __C3DAnimationManagerAddAnimationNodeToAnimationStackWithKey(uint64_t a1, void *a2, void *key, const void *a4)
{
  if (!a1 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  Value = CFDictionaryGetValue(*(a1 + 32), key);
  if (Value && (Count = Value - 1, (ValuePtrAtIndex = C3DArrayGetValuePtrAtIndex(*(a1 + 24), Value - 1)) != 0))
  {
    appended = ValuePtrAtIndex;
  }

  else
  {
    if (CFDictionaryContainsKey(*(a1 + 32), key))
    {
      v28 = scn_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        __C3DAnimationManagerAddAnimationNodeToAnimationStackWithKey_cold_3(v28, v29, v30, v31, v32, v33, v34, v35);
      }
    }

    Count = C3DArrayGetCount(*(a1 + 24));
    appended = C3DArrayAppendValue(*(a1 + 24), 0);
    CFDictionaryAddValue(*(a1 + 32), key, (Count + 1));
    C3DAnimationStackInit(appended);
    *(appended + 40) = key;
    C3DAnimationStackSetTarget(appended, a4);
    TypeID = C3DAnimationClusterNodeGetTypeID();
    v37 = CFGetTypeID(a2);
    *(appended + 48) = TypeID == v37;
    if (TypeID != v37)
    {
      Target = C3DAnimationStackGetTarget(appended);
      v39 = Target;
      if (*(Target + 37) == 1)
      {
        *(appended + 128) = 1;
        if (!*(a2[3] + 34))
        {
          v40 = scn_default_log();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
          {
            __C3DAnimationManagerAddAnimationNodeToAnimationStackWithKey_cold_4(v40, v41, v42, v43, v44, v45, v46, v47);
          }
        }

        *(v39 + 32) = 11;
        *(v39 + 36) = C3DSizeOfBaseType(11);
        *(v39 + 34) = 8;
        v48 = 11;
        TypeSemantic = 8;
      }

      else
      {
        *(appended + 128) = 0;
        BaseType = C3DModelTargetGetBaseType(Target);
        TypeSemantic = C3DModelTargetGetTypeSemantic(v39);
        v48 = BaseType;
      }

      *(appended + 248) = C3DKeyFrameInterpolatorForType(v48, TypeSemantic, 0, 0, 1);
      v51 = C3DModelTargetGetBaseType(v39);
      *(appended + 242) = C3DSizeOfBaseType(v51);
      ModelValueStorage = C3DAnimationManagerGetModelValueStorage(a1);
      if (!ModelValueStorage)
      {
        v53 = scn_default_log();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
        {
          __C3DAnimationManagerAddAnimationNodeToAnimationStackWithKey_cold_5(v53, v54, v55, v56, v57, v58, v59, v60);
        }
      }

      *(appended + 32) = C3DModelValueStorageAddAndRetainModelValue(ModelValueStorage, v39);
    }
  }

  if ((*(C3DAnimationNodeGetAnimation(a2) + 84) & 8) != 0)
  {
    ++*(a1 + 168);
  }

  else
  {
    ++*(a1 + 164);
  }

  a2[19] = Count;
  a2[20] = key;
  C3DAnimationStackAppendAnimationNode(appended, a2, a1);
}

void C3DAnimationManagerTriggerCallbacks(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 90))
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationManagerTriggerCallbacks_cold_2(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  Count = CFArrayGetCount(*(a1 + 80));
  if (Count >= 1)
  {
    v19 = Count;
    Copy = CFArrayCreateCopy(0, *(a1 + 80));
    CFArrayRemoveAllValues(*(a1 + 80));
    v21 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Copy, v21);
      Animation = C3DAnimationNodeGetAnimation(ValueAtIndex);
      v24 = Animation;
      v25 = *(ValueAtIndex + 121);
      *(ValueAtIndex + 121) = v25 & 0xFFFE1FFF;
      if ((v25 & 0x22000) == 0x2000)
      {
        *(ValueAtIndex + 121) = v25 & 0xFFFC1FFF | 0x20000;
        (*(Animation + 144))(ValueAtIndex);
      }

      if ((v25 & 0x8000) != 0)
      {
        v26 = *(ValueAtIndex + 121);
        if ((v26 & 0x80000) == 0)
        {
          *(ValueAtIndex + 121) = v26 | 0x80000;
          v27 = *(ValueAtIndex + 26);
          if (v27)
          {
            v27(ValueAtIndex);
          }

          if (C3DAnimationGetCommitWhenDone(v24))
          {
            if (!v24[19])
            {
              ModelValueStorage = C3DAnimationManagerGetModelValueStorage(a1);
              if (ModelValueStorage)
              {
                v29 = *(ValueAtIndex + 19);
                if (v29 != -1)
                {
                  v30 = ModelValueStorage;
                  ValuePtrAtIndex = C3DArrayGetValuePtrAtIndex(*(a1 + 24), v29);
                  C3DModelValueStorageUpdateModelValueFromPresentationValue(v30, *(ValuePtrAtIndex + 32));
                }
              }
            }
          }
        }
      }

      if ((v25 & 0x4000) == 0)
      {
        goto LABEL_34;
      }

      v32 = *(ValueAtIndex + 121);
      if ((v32 & 0x40000) != 0)
      {
        goto LABEL_34;
      }

      *(ValueAtIndex + 121) = v32 | 0x40000;
      CFRetain(v24);
      v33 = v24[19];
      if (v33 && (v33(ValueAtIndex, (v32 >> 10) & 1, a1, *(ValueAtIndex + 17)) & 1) != 0 || C3DIsRunningInEditor() && !C3DAnimationGetIsImplicit(*(ValueAtIndex + 2)) || *(ValueAtIndex + 11) == 0.0 && !C3DAnimationNodeGetRemovedOnCompletion(ValueAtIndex))
      {
        goto LABEL_33;
      }

      Owner = C3DAnimationNodeGetOwner(ValueAtIndex);
      if ((C3DAnimationGetIsImplicit(v24) & 1) == 0 && Owner && _C3DAnimationManagerGetAnimationNodeForKey(a1, Owner, *(ValueAtIndex + 17)) == ValueAtIndex)
      {
        break;
      }

      _C3DAnimationManagerAppendCallback(a1, ValueAtIndex, 8);
      CFRelease(v24);
LABEL_37:
      if (v19 == ++v21)
      {
        CFRelease(Copy);
        return;
      }
    }

    _C3DAnimationManagerRemoveAnimationForKey(a1, Owner, *(ValueAtIndex + 17));
LABEL_33:
    CFRelease(v24);
LABEL_34:
    if ((v25 & 0x10000) != 0)
    {
      v35 = *(ValueAtIndex + 121);
      if ((v35 & 0x100000) == 0)
      {
        *(ValueAtIndex + 121) = v35 | 0x100000;
        _C3DAnimationManagerDiscardAnimationNodeFromStack(a1, ValueAtIndex);
      }
    }

    goto LABEL_37;
  }
}

uint64_t C3DAnimationManagerGetModelValueStorage(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16);
}

const __CFDictionary *_C3DAnimationManagerGetAnimationNodeForKey(uint64_t a1, void *key, const void *a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!a3)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  result = _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject(a1, key, 0);
  if (result)
  {
    return CFDictionaryGetValue(result, a3);
  }

  return result;
}

void _C3DAnimationManagerAppendCallback(uint64_t a1, char *value, char a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (value)
    {
      goto LABEL_6;
    }
  }

  else if (value)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (*(a1 + 90))
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationManagerTriggerCallbacks_cold_2(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  v30 = *(value + 121);
  *(value + 121) = v30 | ((a3 & 0xF) << 13);
  if ((v30 & 0x1E000) == 0)
  {
    CFArrayAppendValue(*(a1 + 80), value);
  }
}

void _C3DAnimationManagerDiscardAnimationNodeFromStack(uint64_t a1, void *a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = a2[19];
  if (v20 != -1)
  {
    ValuePtrAtIndex = C3DArrayGetValuePtrAtIndex(*(a1 + 24), v20);
    Animation = C3DAnimationNodeGetAnimation(a2);
    if ((*(Animation + 84) & 8) != 0)
    {
      --*(a1 + 168);
    }

    else
    {
      --*(a1 + 164);
    }

    C3DAnimationStackRemoveAnimationNode(ValuePtrAtIndex, a2);
    if (*(ValuePtrAtIndex + 48) == 1)
    {
      C3DAnimationStackDiscardModelValueItemForAnimationClusterNode(ValuePtrAtIndex, a2, *(a1 + 16), (*(Animation + 84) & 0x20) == 0);
    }

    if (C3DAnimationStackIsEmpty(ValuePtrAtIndex))
    {
      v23 = a2[20];
      ModelValueStorage = C3DAnimationManagerGetModelValueStorage(a1);
      if (ModelValueStorage && (*(ValuePtrAtIndex + 48) & 1) == 0)
      {
        v25 = ModelValueStorage;
        C3DModelValueStorageUpdatePresentationValueFromModelValue(ModelValueStorage, *(ValuePtrAtIndex + 32));
        C3DModelValueStorageReleaseModelValue(v25, *(ValuePtrAtIndex + 32));
      }

      if (*(ValuePtrAtIndex + 241) == 1)
      {
        _C3DAnimationManagerUpdateConstantCount(a1, -1);
      }

      if (CFDictionaryContainsKey(*(a1 + 32), v23) != 1)
      {
        v26 = scn_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          _C3DAnimationManagerDiscardAnimationNodeFromStack_cold_3(v26, v27, v28, v29, v30, v31, v32, v33);
        }
      }

      Value = CFDictionaryGetValue(*(a1 + 32), v23);
      if (!Value)
      {
        v35 = scn_default_log();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          _C3DAnimationManagerDiscardAnimationNodeFromStack_cold_4(v35, v36, v37, v38, v39, v40, v41, v42);
        }
      }

      v43 = Value - 1;
      CFDictionaryRemoveValue(*(a1 + 32), v23);
      if (!C3DArrayGetCount(*(a1 + 24)))
      {
        v44 = scn_default_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
        {
          _C3DAnimationManagerDiscardAnimationNodeFromStack_cold_5(v44, v45, v46, v47, v48, v49, v50, v51);
        }
      }

      v52 = C3DArrayGetValuePtrAtIndex(*(a1 + 24), v43);
      C3DAnimationStackCleanup(v52, *(a1 + 16));
      v53 = *(a1 + 40);
      *(a1 + 40) = v53 + 1;
      if (v53 >= 511)
      {
        Count = C3DArrayGetCount(*(a1 + 24));
        if (Count < 1)
        {
          v55 = 0;
        }

        else
        {
          v55 = 0;
          for (i = 0; i != Count; ++i)
          {
            v57 = C3DArrayGetValuePtrAtIndex(*(a1 + 24), i);
            if (*v57 == 1)
            {
              if (v55)
              {
                v58 = v57;
                v59 = C3DArrayGetValuePtrAtIndex(*(a1 + 24), i - v55);
                v60 = v58[3];
                v62 = *v58;
                v61 = v58[1];
                *(v59 + 32) = v58[2];
                *(v59 + 48) = v60;
                *v59 = v62;
                *(v59 + 16) = v61;
                v63 = v58[7];
                v65 = v58[4];
                v64 = v58[5];
                *(v59 + 96) = v58[6];
                *(v59 + 112) = v63;
                *(v59 + 64) = v65;
                *(v59 + 80) = v64;
                v66 = v58[11];
                v68 = v58[8];
                v67 = v58[9];
                *(v59 + 160) = v58[10];
                *(v59 + 176) = v66;
                *(v59 + 128) = v68;
                *(v59 + 144) = v67;
                v69 = v58[15];
                v71 = v58[12];
                v70 = v58[13];
                *(v59 + 224) = v58[14];
                *(v59 + 240) = v69;
                *(v59 + 192) = v71;
                *(v59 + 208) = v70;
                v58[14] = 0u;
                v58[15] = 0u;
                v58[12] = 0u;
                v58[13] = 0u;
                v58[10] = 0u;
                v58[11] = 0u;
                v58[8] = 0u;
                v58[9] = 0u;
                v58[6] = 0u;
                v58[7] = 0u;
                v58[4] = 0u;
                v58[5] = 0u;
                v58[2] = 0u;
                v58[3] = 0u;
                *v58 = 0u;
                v58[1] = 0u;
                *v58 = 0;
                CFDictionarySetValue(*(a1 + 32), *(v59 + 40), (i - v55 + 1));
                for (j = *(v59 + 8); j; j = *(j + 176))
                {
                  *(j + 152) = i - v55;
                }
              }
            }

            else
            {
              ++v55;
            }
          }
        }

        v73 = Count - v55;
        C3DArraySetCount(*(a1 + 24), v73);
        if (v73 <= 64)
        {
          v74 = 64;
        }

        else
        {
          v74 = v73;
        }

        C3DArraySetCapacity(*(a1 + 24), v74);
        *(a1 + 40) = 0;
      }
    }
  }

  if (!C3DAnimationNodeGetParent(a2))
  {
    Player = C3DAnimationNodeGetPlayer(a2);
    if (Player)
    {
      C3DAnimationPlayerRemoveAnimationNode(Player, a2);
    }

    C3DAnimationNodeSetAnimationManager(a2, 0);
    CFSetRemoveValue(*(a1 + 56), a2);
  }
}

uint64_t C3DAnimationManagerPushEvent(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  Owner = C3DAnimationNodeGetOwner(a3);
  ObjCWrapper = Owner;
  if (Owner)
  {
    if (CFTypeIsC3DEntity(Owner))
    {
      ObjCWrapper = C3DEntityGetObjCWrapper(ObjCWrapper);
    }

    else
    {
      ObjCWrapper = 0;
    }
  }

  Animation = C3DAnimationNodeGetAnimation(a3);
  v11 = C3DEntityGetObjCWrapper(Animation);
  v12 = C3DAllocatorNew(a1[14]);
  result = [v11 userAnimation];
  *(v12 + 1) = result;
  *(v12 + 2) = ObjCWrapper;
  v12[24] = a4;
  *v12 = a2;
  *(v12 + 4) = 0;
  v14 = a1[13];
  if (v14)
  {
    v15 = (v14 + 32);
  }

  else
  {
    v15 = (a1 + 12);
  }

  *v15 = v12;
  a1[13] = v12;
  return result;
}

double C3DAnimationManagerGetSystemTime(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 144);
}

void C3DAnimationManagerSetSystemTime(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationManagerSetSystemTime_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 144) = a2;
}

void _C3DAnimationManagerUpdateConstantCount(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 172) + a2;
  *(a1 + 172) = v12;
  if (v12 < 0)
  {
    v13 = scn_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerUpdateConstantCount_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }
}

void C3DAnimationManagerApplyAnimations(uint64_t a1, double a2, double a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  *(a1 + 88) = 1;
  *(a1 + 136) = a3;
  *(a1 + 144) = a2;
  v14 = *(a1 + 24);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __C3DAnimationManagerApplyAnimations_block_invoke;
  v18[3] = &__block_descriptor_40_e13_v24__0q8r_v16l;
  v18[4] = a1;
  C3DArrayApply(v14, v18);
  CFSetApplyFunction(*(a1 + 56), _updateTopLevelAnimationTiming, a1);
  *(a1 + 88) = 0;
  v15 = *(a1 + 96);
  if (v15)
  {
    do
    {
      v16 = v15[4];
      *v17.i64 = (*(*v15 + 16))();
      v15[4] = 0;
      C3DAllocatorDelete(*(a1 + 112), v15, v17);
      *(a1 + 96) = v16;
      v15 = v16;
    }

    while (v16);
  }

  *(a1 + 104) = 0;
  C3DAnimationManagerTriggerCallbacks(a1);
}

void __C3DAnimationManagerApplyAnimations_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a3 == 1)
  {
    _C3DAnimationManagerApplyStack(*(a1 + 32), a3);
  }
}

void _C3DAnimationManagerApplyStack(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  *(&v79[1] + 4) = *MEMORY[0x277D85DE8];
  if (*(a2 + 48) == 1)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = 1;
      do
      {
        if ((*(v4 + 121) & 0x804) != 0)
        {
          v6 = 1;
        }

        else
        {
          v7 = *(v4 + 16);
          v6 = !_C3DAnimationManagerUpdateRelativeTimeOfAnimation(v3, v4);
          if ((*(v4 + 121) & 0x20) != 0)
          {
            WeightAtTime = C3DAnimationNodeGetWeightAtTime(v4, *(v4 + 60));
            *(v4 + 56) = WeightAtTime;
            if (WeightAtTime != 0.0)
            {
              v9 = *(v7 + 168);
              *buf = *(v4 + 72) * *(v7 + 72);
              v65 = *(v9 + 20);
              v10 = C3DPreviousKeyFrameIndexForTime(*(v9 + 56), *(v9 + 16), buf);
              if (v10 + 1 < *(v9 + 16) - 1)
              {
                v11 = v10 + 1;
              }

              else
              {
                v11 = *(v9 + 16) - 1;
              }

              v12 = *(v9 + 56);
              v13 = *(v12 + 4 * v10);
              v14 = *(v12 + 4 * v11) - v13;
              v61 = v6;
              v62 = v5;
              if (v14 == 0.0)
              {
                v15 = 0.0;
              }

              else
              {
                v15 = (*buf - v13) / v14;
              }

              *buf = v15;
              v16 = *(v9 + 64);
              v17 = *(v9 + 24);
              v76 = 0u;
              v77 = 0u;
              v74 = 0u;
              v75 = 0u;
              if (v65)
              {
                v18 = 0;
                v19 = v16 + v17 * v11;
                v20 = v16 + v17 * v10;
                do
                {
                  v21 = *(*(v4 + 224) + 4 * v18);
                  v22 = *(*(v9 + 40) + v18);
                  if (v21 != -1)
                  {
                    ValuePtrAtIndex = C3DArrayGetValuePtrAtIndex(*(v2 + 56), v21);
                    if (!*ValuePtrAtIndex)
                    {
                      v24 = scn_default_log();
                      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
                      {
                        _C3DAnimationManagerApplyStack_cold_2(v66, &v66[4], v24);
                      }
                    }

                    (*(*(v9 + 48) + 8 * v18))(v20, v19, 0, 0, 0, 0, &v74, *buf);
                    if (*(v4 + 56) < 1.0)
                    {
                      v72 = 0u;
                      v73 = 0u;
                      v70 = 0u;
                      v71 = 0u;
                      v25 = *ValuePtrAtIndex;
                      C3DModelValueStorageUpdatePresentationValueInNeeded(*(v3 + 16), *ValuePtrAtIndex);
                      v26 = *(v25 + 136);
                      v27 = v9;
                      Target = C3DModelTargetGetTarget(*(v25 + 24));
                      TargetAddress = C3DModelTargetGetTargetAddress(*(v25 + 24));
                      v30 = Target;
                      v9 = v27;
                      v26(v30, TargetAddress, &v70, v22, *(ValuePtrAtIndex + 8), *(ValuePtrAtIndex + 9));
                      v3 = a1;
                      v2 = a2;
                      (*(ValuePtrAtIndex + 16))(&v70, &v74, 0, 0, 0, 0, &v74, *(v4 + 56));
                    }

                    C3DModelValueStorageUpdatePresentationValueWithBytes(*(v3 + 16), *ValuePtrAtIndex, *(ValuePtrAtIndex + 8), *(ValuePtrAtIndex + 9), &v74, v22);
                  }

                  v31 = (v22 + 15) & 0xF0;
                  v20 += v31;
                  v19 += v31;
                  ++v18;
                }

                while (v65 != v18);
              }

              v6 = v61;
              v5 = v62;
            }
          }
        }

        v5 &= v6;
        v4 = *(v4 + 176);
      }

      while (v4);
    }

    else
    {
      v5 = 1;
    }

    if (*(v2 + 241) != v5)
    {
      *(v2 + 241) = v5;
      v58 = v5 == 0;
      goto LABEL_77;
    }

    return;
  }

  *(a2 + 240) = 0;
  v32 = *(a2 + 32);
  v33 = *(a2 + 128);
  if (v33 == 1)
  {
    v34 = v32[3];
    *(a2 + 144) = v32[2];
    *(a2 + 160) = v34;
    v35 = v32[4];
    v36 = v32[5];
    v37 = v32[7];
    *(a2 + 208) = v32[6];
    *(a2 + 224) = v37;
    *(a2 + 176) = v35;
    *(a2 + 192) = v36;
  }

  else
  {
    memcpy((a2 + 64), v32 + 2, *(v32 + 65));
  }

  v38 = *(v2 + 8);
  if (!v38)
  {
    LOBYTE(v40) = 1;
    goto LABEL_74;
  }

  v39 = 0;
  v40 = 1;
  do
  {
    if ((*(v38 + 121) & 0x804) == 0)
    {
      v40 &= !_C3DAnimationManagerUpdateRelativeTimeOfAnimation(v3, v38);
      if ((*(v38 + 121) & 0x20) != 0)
      {
        v41 = C3DAnimationNodeGetWeightAtTime(v38, *(v38 + 60));
        *(v38 + 56) = v41;
        if (v41 != 0.0)
        {
          v42.n128_u64[1] = 0;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v42.n128_u64[0] = *(v38 + 56);
          if (v42.n128_f32[0] >= 1.0)
          {
            v45 = a2;
          }

          else
          {
            if (v33)
            {
              C3DTransformGetMatrix(a2 + 144, v66);
              v43 = v67;
              *(a2 + 64) = *v66;
              *(a2 + 80) = v43;
              v44 = v69;
              *(a2 + 96) = v68;
              *(a2 + 112) = v44;
            }

            v45 = a2;
            __memcpy_chk();
            LOBYTE(v33) = 0;
          }

          if (*(v45 + 128) == 1 && ((*(*(v38 + 16) + 84) & 2) != 0 || (*(v38 + 122) & 0x10) != 0))
          {
            C3DTransformGetValue(a2 + 144, (a2 + 64), *(*(v38 + 24) + 36), *(*(v38 + 24) + 34), *(*(v38 + 24) + 35));
          }

          if (!v3)
          {
            v46 = scn_default_log();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
            {
              _C3DAnimationManagerApplyStack_cold_1(buf, v79, v46);
            }
          }

          if ((*(v38 + 121) & 0x20) != 0)
          {
            Animation = C3DAnimationNodeGetAnimation(v38);
            v49 = Animation;
            v50 = *(v38 + 112);
            if (v50 && *v50)
            {
              v51 = *(v50 + 24);
              C3DValueGetBytes(v51);
              Length = C3DValueGetLength(v51);
              if (Length >= 0x40)
              {
                C3DValueInitFrom(v51, (a2 + 64));
              }

              v47 = C3DAnimationEvaluate(v49);
              v42.n128_f32[0] = C3DValueConcat(*(v50 + 8), v51, v51);
              if (Length <= 0x40)
              {
                C3DValueCopyTo(v51, (a2 + 64));
              }
            }

            else
            {
              v47 = C3DAnimationEvaluate(Animation);
            }
          }

          else
          {
            v47 = 0;
          }

          v39 |= v47;
          if (v39)
          {
            v53 = a2;
            if (*(a2 + 128))
            {
              *(a2 + 240) |= *(v38 + 120);
              C3DTransformSetValue((a2 + 144), (a2 + 64), *(*(v38 + 24) + 36), *(*(v38 + 24) + 34), *(*(v38 + 24) + 35), v42);
              if (*(v38 + 56) >= 1.0)
              {
                LOBYTE(v33) = 1;
                goto LABEL_66;
              }
            }

            else
            {
              if (*(v38 + 56) >= 1.0)
              {
                goto LABEL_66;
              }

              v53 = a2;
              if ((v33 & 1) == 0)
              {
                goto LABEL_64;
              }
            }

            C3DTransformGetMatrix(v53 + 144, v66);
            v54 = v67;
            *(v53 + 64) = *v66;
            *(v53 + 80) = v54;
            v55 = v69;
            *(v53 + 96) = v68;
            *(v53 + 112) = v55;
LABEL_64:
            __memcpy_chk();
            (*(v53 + 248))(&v74, &v70, 0, 0, 0, 0, v53 + 64, *(v38 + 56));
            LOBYTE(v33) = 0;
            if (*(v53 + 128) == 1)
            {
              C3DTransformSetValue((a2 + 144), (a2 + 64), *(*(a2 + 24) + 36), *(*(a2 + 24) + 34), *(*(a2 + 24) + 35), v56);
              LOBYTE(v33) = 0;
            }
          }
        }
      }
    }

LABEL_66:
    v38 = *(v38 + 176);
  }

  while (v38);
  v2 = a2;
  v32 = *(a2 + 32);
  if ((v39 & 1) == 0)
  {
LABEL_74:
    C3DModelValueStorageUpdatePresentationValueFromModelValue(*(v3 + 16), v32);
    goto LABEL_75;
  }

  v57 = *(v3 + 16);
  if (*(a2 + 128) == 1)
  {
    C3DModelValueStorageUpdatePresentationValueWithTransform(v57, *(a2 + 32), (a2 + 144), *(a2 + 240));
  }

  else
  {
    C3DModelValueStorageUpdatePresentationValueWithBytes(v57, *(a2 + 32), 0, 0, a2 + 64, *(a2 + 242));
  }

LABEL_75:
  v59 = v40 & 1;
  if (*(v2 + 241) != v59)
  {
    *(v2 + 241) = v59;
    v58 = v59 == 0;
LABEL_77:
    if (v58)
    {
      v60 = -1;
    }

    else
    {
      v60 = 1;
    }

    _C3DAnimationManagerUpdateConstantCount(v3, v60);
  }
}

uint64_t _updateTopLevelAnimationTiming(uint64_t result, uint64_t a2)
{
  if (*(result + 152) == -1)
  {
    return _C3DAnimationManagerUpdateRelativeTimeOfAnimation(a2, result);
  }

  return result;
}

void C3DAnimationManagerApplyAnimationsForTarget(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_4;
    }
  }

  else if (a2)
  {
LABEL_4:
    *(a1 + 88) = 1;
    v12 = (a1 + 88);
    *(a1 + 90) = 1;
    v13 = (a1 + 90);
    goto LABEL_10;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_3(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  *(a1 + 88) = 1;
  v12 = (a1 + 88);
  *(a1 + 90) = 1;
  v13 = (a1 + 90);
  v22 = scn_default_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_3(v22, v23, v24, v25, v26, v27, v28, v29);
  }

LABEL_10:
  TargetAddress = C3DModelTargetGetTargetAddress(a2);
  Value = CFDictionaryGetValue(*(a1 + 32), TargetAddress);
  if (Value)
  {
    ValuePtrAtIndex = C3DArrayGetValuePtrAtIndex(*(a1 + 24), Value - 1);
    if (ValuePtrAtIndex)
    {
      *(*(ValuePtrAtIndex + 32) + 152) = 0;
      _C3DAnimationManagerApplyStack(a1, ValuePtrAtIndex);
    }
  }

  *v12 = 0;
  *v13 = 0;
}

BOOL C3DAnimationManagerIsEmpty(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationManagerSetSystemTime_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 24);
  return !v10 || C3DArrayGetCount(v10) <= *(a1 + 40);
}

BOOL C3DAnimationManagerNeedsRedraw(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationManagerSetSystemTime_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 160) < 1 || (v12 = C3DIsRunningInEditor(), result = 1, v12) && a2)
  {
    v14 = *(a1 + 24);
    if (v14)
    {
      v15 = C3DArrayGetCount(v14) - *(a1 + 40);
    }

    else
    {
      v15 = 0;
    }

    if (v15 < *(a1 + 172))
    {
      v16 = scn_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        C3DAnimationManagerNeedsRedraw_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
      }
    }

    return v15 > *(a1 + 172);
  }

  return result;
}

const void *_C3DAnimationManagerGetAnimationPerKeyDictionaryForObject(uint64_t a1, void *key, int a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  Value = CFDictionaryGetValue(*(a1 + 48), key);
  if (Value)
  {
    v23 = 1;
  }

  else
  {
    v23 = a3 == 0;
  }

  if (!v23)
  {
    Value = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionaryAddValue(*(a1 + 48), key, Value);
    CFRelease(Value);
  }

  return Value;
}

void C3DAnimationManagerAddAnimationPlayerForKey(uint64_t a1, uint64_t a2, float32x4_t *a3, const void *a4)
{
  Animation = C3DAnimationPlayerGetAnimation(a2);
  if (!Animation)
  {
    return;
  }

  v9 = Animation;
  v10 = CFGetTypeID(Animation);
  if (C3DAnimationGroupGetTypeID() == v10)
  {
    if (!a1 && (v11 = scn_default_log(), os_log_type_enabled(v11, OS_LOG_TYPE_FAULT)))
    {
      _C3DAnimationManagerAddAnimationNode_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
      if (a3)
      {
        goto LABEL_8;
      }
    }

    else if (a3)
    {
      goto LABEL_8;
    }

    v19 = scn_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject_cold_2(v19, v20, v21, v22, v23, v24, v25, v26);
    }

LABEL_8:
    if (!a4)
    {
      v27 = scn_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v27, v28, v29, v30, v31, v32, v33, v34);
      }
    }

    _C3DAnimationManagerRemoveAnimationForKey(a1, a3, a4);
    v35 = C3DAnimationNodeCreateWithAnimationGroupAndAddToAnimationManager(a1, v9, a3, a4);
    if (v35)
    {
      v36 = v35;
      C3DAnimationNodeSetOwner(v35, a3);
      C3DAnimationNodeSetAnimationManager(v36, a1);
      CFSetAddValue(*(a1 + 56), v36);
LABEL_24:
      AnimationPerKeyDictionaryForObject = _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject(a1, a3, 1);
      CFDictionarySetValue(AnimationPerKeyDictionaryForObject, a4, v36);
      if ((C3DAnimationGetIsSceneTimeBased(v9) & 1) == 0)
      {
        C3DTransactionAddAnimationNode(v36);
      }

      CFRelease(v36);
LABEL_27:
      C3DAnimationPlayerAddAnimationNode(a2, v36);
      if ((C3DAnimationPlayerGetPaused(a2) & 1) == 0)
      {
        C3DAnimationManagerPlayAnimationNode(a1, v36);
      }

      return;
    }

    return;
  }

  if (C3DAnimationClusterGetTypeID() != v10)
  {
    v63 = C3DAnimationCopyTarget(v9, a3);
    if (v63)
    {
      v64 = v63;
      v36 = _C3DAnimationManagerAddAnimationForKey(a1, v9, v63, a3, a4);
      CFRelease(v64);
      if (!v36)
      {
        return;
      }

      goto LABEL_27;
    }

    v65 = scn_default_log();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      C3DAnimationManagerAddAnimationPlayerForKey_cold_1(v9, v65);
    }

    return;
  }

  if (!a1 && (v37 = scn_default_log(), os_log_type_enabled(v37, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v37, v38, v39, v40, v41, v42, v43, v44);
    if (a3)
    {
      goto LABEL_19;
    }
  }

  else if (a3)
  {
    goto LABEL_19;
  }

  v45 = scn_default_log();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject_cold_2(v45, v46, v47, v48, v49, v50, v51, v52);
  }

LABEL_19:
  if (!a4)
  {
    v53 = scn_default_log();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v53, v54, v55, v56, v57, v58, v59, v60);
    }
  }

  _C3DAnimationManagerRemoveAnimationForKey(a1, a3, a4);
  v61 = C3DAnimationNodeCreateWithAnimationCluster(a1, v9, a3, a4);
  if (v61)
  {
    v36 = v61;
    C3DAnimationNodeSetOwner(v61, a3);
    C3DAnimationNodeSetAnimationManager(v36, a1);
    __C3DAnimationManagerAddAnimationNodeToAnimationStackWithKey(a1, v36, a3, 0);
    goto LABEL_24;
  }
}

void *_C3DAnimationManagerAddAnimationForKey(uint64_t a1, const void *a2, const void *a3, void *key, const void *a5)
{
  if (!a1 && (v10 = scn_default_log(), os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v18 = scn_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationForKey_cold_2(v18, v19, v20, v21, v22, v23, v24, v25);
  }

LABEL_6:
  if (!a3 && (v26 = scn_default_log(), os_log_type_enabled(v26, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_3(v26, v27, v28, v29, v30, v31, v32, v33);
    if (key)
    {
      goto LABEL_11;
    }
  }

  else if (key)
  {
    goto LABEL_11;
  }

  v34 = scn_default_log();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject_cold_2(v34, v35, v36, v37, v38, v39, v40, v41);
  }

LABEL_11:
  if (!a5)
  {
    v42 = scn_default_log();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v42, v43, v44, v45, v46, v47, v48, v49);
    }
  }

  _C3DAnimationManagerRemoveAnimationForKey(a1, key, a5);
  v50 = C3DAnimationNodeCreateWithAnimationAndAddToAnimationManager(a1, a2, a3, a5);
  v51 = v50;
  if (v50)
  {
    C3DAnimationNodeSetOwner(v50, key);
    C3DAnimationNodeSetAnimationManager(v51, a1);
    AnimationPerKeyDictionaryForObject = _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject(a1, key, 1);
    CFDictionarySetValue(AnimationPerKeyDictionaryForObject, a5, v51);
    if ((C3DAnimationGetIsSceneTimeBased(a2) & 1) == 0)
    {
      C3DTransactionAddAnimationNode(v51);
    }

    CFRelease(v51);
  }

  return v51;
}