void CA::ScalerUtil::ScalerLimits::limits(CA::ScalerUtil::ScalerLimits *this)
{
  {
  }

  if (CA::ScalerUtil::ScalerLimits::limits(void)::onceToken[0] != -1)
  {

    dispatch_once(CA::ScalerUtil::ScalerLimits::limits(void)::onceToken, &__block_literal_global_478);
  }
}

BOOL CA::WindowServer::IOSurface::check_alignment(CA::WindowServer::IOSurface *this, unint64_t a2, unint64_t a3)
{
  v3 = *(this + 79);
  v4 = v3 % a2;
  v5 = (a2 - 1) & v3;
  if ((a2 & (a2 - 1)) != 0)
  {
    v5 = v4;
  }

  if (v5)
  {
    return 0;
  }

  v7 = *(this + 80);
  if ((a3 & (a3 - 1)) != 0)
  {
    v8 = v7 % a3;
  }

  else
  {
    v8 = (a3 - 1) & v7;
  }

  return v8 == 0;
}

uint64_t CA::WindowServer::IOSurface::color_primaries(IOSurfaceRef *this)
{
  result = *(this + 74);
  if (!result)
  {
    v3 = IOSurfaceCopyValue(this[33], *MEMORY[0x1E696CEC0]);
    if (v3)
    {
      v4 = v3;
      if (CFEqual(v3, *MEMORY[0x1E696CED0]))
      {
        v5 = 2;
      }

      else if (CFEqual(v4, *MEMORY[0x1E696CED8]))
      {
        v5 = 4;
      }

      else
      {
        if (!CFEqual(v4, *MEMORY[0x1E696CEC8]))
        {
LABEL_13:
          CFRelease(v4);
          return *(this + 74);
        }

        v5 = 8;
      }

      *(this + 74) = v5;
      goto LABEL_13;
    }

    BulkAttachments = IOSurfaceGetBulkAttachments();
    result = 2;
    if (!BulkAttachments)
    {
      result = 2;
    }

    *(this + 74) = 2;
  }

  return result;
}

uint64_t CA::WindowServer::Display::clones_support_detaching(CA::WindowServer::Display *this)
{
  if (!this)
  {
    return 1;
  }

  v1 = this;
  while (1)
  {
    if ((*(**(*v1 + 96) + 680))(*(*v1 + 96)))
    {
      v2 = *(*v1 + 96);
      if ((*(v2 + 905) & 1) == 0 && (*(v2 + 640) & 2) != 0)
      {
        break;
      }
    }

    v1 = *(v1 + 1);
    if (!v1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t CAEmitterCell_setter(CA::Transaction *a1, const void *a2, int a3, unsigned __int8 *a4)
{
  v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v8)
  {
    v8 = CA::Transaction::create(a1);
  }

  String = CAAtomGetString(a2);
  [(CA::Transaction *)a1 willChangeValueForKey:String];
  v10 = *(v8 + 29);
  *(v8 + 29) = v10 + 1;
  if (!v10)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v11 = *(a1 + 1);
  if (!v11)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v11 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x10uLL, 0x1020040EDED9539uLL);
  }

  *(a1 + 1) = CA::AttrList::set(v11, a2, a3, a4);
  CA::Transaction::unlock(v8);
  v12 = *(a1 + 3);
  if (v12 && CAAtomIndexInArray(56, &CAEmitterCell_setter(CAEmitterCell *,unsigned int,_CAValueType,void const*)::atoms, a2) != -1)
  {
    if (atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v12 + 16))(v12);
    }

    v13 = 0;
    *(a1 + 3) = 0;
    while (CAEmitterCell_setter(CAEmitterCell *,unsigned int,_CAValueType,void const*)::timing_atoms[v13] != a2)
    {
      if (++v13 == 9)
      {
        goto LABEL_18;
      }
    }

    CAMediaTimingInvalidate(a1);
  }

LABEL_18:

  return [(CA::Transaction *)a1 didChangeValueForKey:String];
}

BOOL CA::WindowServer::AppleDisplay::supports_pq(CA::WindowServer::AppleDisplay *this)
{
  if ((*(this + 336) & 0x1C00) == 0x800)
  {
    return ((*(this + 82) >> 55) & 0x1E) - 16 < 0xA;
  }

  else
  {
    return HIBYTE(*(this + 14984)) & 1;
  }
}

uint64_t CA::WindowServer::Display::all_clones_support_pq(CA::WindowServer::Display *this)
{
  if (!this)
  {
    return 1;
  }

  v1 = this;
  do
  {
    result = (*(**(*v1 + 96) + 176))(*(*v1 + 96));
    if ((result & 1) == 0)
    {
      break;
    }

    v1 = *(v1 + 1);
  }

  while (v1);
  return result;
}

uint64_t CA::WindowServer::IOSurface::cache_mode(CA::WindowServer::IOSurface *this)
{
  result = *(this + 71);
  if (result == -1)
  {
    result = IOSurfaceGetCacheMode();
    *(this + 71) = result;
  }

  return result;
}

int32x4_t *CA::Bounds::set_both(int32x4_t *this, const Rect *a2, CA::Bounds *a3, CA::Bounds *a4, float64x2_t a5, float64x2_t a6)
{
  v6 = vceqzq_f64(a6);
  if ((vorrq_s8(vdupq_laneq_s64(v6, 1), v6).u64[0] & 0x8000000000000000) != 0 || (v7 = vceqq_f64(a6, a6), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v7), 1), v7).u64[0] & 0x8000000000000000) != 0))
  {
    this->i64[0] = 0;
    this->i64[1] = 0;
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v8 = vmaxnmq_f64(a5, vdupq_n_s64(0xC1BFFFFFFF000000));
    v9 = vminnmq_f64(vaddq_f64(a5, a6), vdupq_n_s64(0x41C0000000000000uLL));
    v10 = vcvtmq_s64_f64(v8);
    *this = vuzp1q_s32(v10, vsubq_s64(vcvtpq_s64_f64(v9), v10));
    v11 = vcvtpq_s64_f64(v8);
    *&a2->top = vuzp1q_s32(v11, vsubq_s64(vcvtmq_s64_f64(v9), v11));
  }

  return this;
}

uint64_t CA::ScalerStatistics::should_enhance(CA::ScalerStatistics *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = NSSelectorFromString(&cfstr_Shouldenhancew.isa);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = ___ZN2CA16ScalerStatistics14should_enhanceEmmmm_block_invoke;
  v13 = &__block_descriptor_40_e5_v8__0l;
  v14 = v8;
  if (CA::ScalerStatistics::should_enhance(unsigned long,unsigned long,unsigned long,unsigned long)::once != -1)
  {
    dispatch_once(&CA::ScalerStatistics::should_enhance(unsigned long,unsigned long,unsigned long,unsigned long)::once, &v10);
  }

  if (CA::ScalerStatistics::should_enhance(unsigned long,unsigned long,unsigned long,unsigned long)::exists == 1)
  {
    return [objc_opt_class() v8];
  }

  else
  {
    return 1;
  }
}

double CA::WindowServer::Display::minmax_clone_scale(CA::WindowServer::Display *this)
{
  v1 = *(this + 5);
  if (!v1)
  {
    return 1.79769313e308;
  }

  v3 = 0.0;
  v4 = 1.79769313e308;
  v5 = 0.0;
  v6 = 1.79769313e308;
  do
  {
    v7 = *v1;
    v8 = 0.0;
    v9 = 0.0;
    if ((*(*(*v1 + 96) + 640) & 2) != 0)
    {
      pthread_mutex_lock((v7 + 24));
      v9 = (*(**(v7 + 96) + 672))(*(v7 + 96), this);
      v8 = v10;
      pthread_mutex_unlock((v7 + 24));
    }

    if (v9 > v5)
    {
      v5 = v9;
    }

    if (v8 > v3)
    {
      v3 = v8;
    }

    if (v9 < v6)
    {
      v6 = v9;
    }

    if (v8 < v4)
    {
      v4 = v8;
    }

    v1 = v1[1];
  }

  while (v1);
  return v6;
}

uint64_t CA::WindowServer::AppleInternalDisplay::display_supports_rotation_p(CA::WindowServer::AppleInternalDisplay *this, int a2, CA::WindowServer::Surface *a3)
{
  v4 = this + 28672;
  if (a3 && (a2 & 4) != 0)
  {
    if ((*(this + 14984) & 0x1000) != 0)
    {
      v9 = *(this + 3729);
      v11 = *(a3 + 14);
      v10 = *(a3 + 15);
      if ((*(*this + 64))(this) >= v10)
      {
        v12 = *(a3 + 16);
        if (CA::Render::fourcc_compressed_of_type(v12, 0, 0) != v12 && v9 - 1 >= ((((v10 + 31) & 0xFFFFFFE0) * ((v11 + 31) & 0xFFFFFFE0)) & 0xFFFFFC00))
        {
          v8 = byte_1ED4E9888 ^ 1;
          return v8 & 1;
        }
      }
    }

    else
    {
      v6 = *(this + 3722);
      if (!v6)
      {
        goto LABEL_9;
      }

      v7 = *(a3 + 16);
      if (CA::Render::fourcc_compressed_of_type(v7, 0, 0) == v7)
      {
        goto LABEL_9;
      }

      if (CADeviceSupportsUniversalCompression::once != -1)
      {
        dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
      }

      if (CADeviceSupportsUniversalCompression::universal)
      {
        goto LABEL_9;
      }

      HIDWORD(v15) = a2 - 2;
      LODWORD(v15) = a2 - 2;
      v14 = v15 >> 1;
      if (v14 < 4 || v14 == 6)
      {
        v8 = (v6 >= *(a3 + 15)) & (byte_1ED4E9888 ^ 1);
        return v8 & 1;
      }
    }

    v8 = 0;
    return v8 & 1;
  }

LABEL_9:
  v8 = ((a2 & 4) == 0) | v4[838];
  return v8 & 1;
}

void *x_new0<CA::WindowServer::IOMFBDisplay::DetachedLayer>()
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v1 = malloc_zone;

  return malloc_type_zone_calloc(v1, 1uLL, 0x128uLL, 0x1020040EAB59DF5uLL);
}

uint64_t CA::WindowServer::IOMFBDisplay::exceeds_disp_bandwidth_limits_p(CA::WindowServer::IOMFBDisplay *this, CA::WindowServer::Surface *a2, uint64_t a3, float64x2_t *a4, const CA::Rect *a5)
{
  if (BYTE2(xmmword_1ED4E988C))
  {
    return 0;
  }

  if (*(this + 27240) == 1)
  {
    if (CA::WindowServer::IOMFBDisplay::detach_exceeds_display_bandwidth_limits_p(this, a2, a4, a5, a5))
    {
      return 1;
    }

    v11 = *(this + 5);
    if (v11)
    {
      while (!(*(**(*v11 + 96) + 680))(*(*v11 + 96)) || ((*(**(*v11 + 96) + 688))(*(*v11 + 96), this, a2, a3, a4, a5) & 1) == 0)
      {
        v11 = v11[1];
        if (!v11)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return 0;
}

float64x2_t CA::Rect::round_center(float64x2_t *this)
{
  result = this[1];
  v2 = this[1].f64[1];
  if (result.f64[0] <= v2)
  {
    v3 = this[1].f64[1];
  }

  else
  {
    v3 = this[1].f64[0];
  }

  if (v3 < 1.79769313e308)
  {
    if (result.f64[0] < v2)
    {
      v2 = this[1].f64[0];
    }

    if (v2 > 0.0)
    {
      v4 = vrndaq_f64(*this);
      result = vsubq_f64(vrndaq_f64(vaddq_f64(*this, result)), v4);
      *this = v4;
      this[1] = result;
    }
  }

  return result;
}

CA::Shape **CA::Render::updater_mark_detached_layer(CA::Shape **this, CA::Render::LayerNode *a2)
{
  if (this)
  {
    v2 = this;
    do
    {
      v3 = v2[4];
      v4 = *(v3 + 19);
      if (v4)
      {
        if (a2)
        {
          this = CA::Render::Handle::lock_context(*(v3 + 19));
          if (this)
          {
            v6 = this;
            CA::Render::Context::invalidate(this, v4 + 15, v5);
            this = CA::Render::Handle::unlock_context(v6, v7);
          }
        }

        v8 = v4[13];
        if ((v8.i32[0] & 0x20000) != 0)
        {
          return this;
        }

        LOBYTE(a2) = 0;
        v4[13] = (*&v8 | 0x20020);
      }

      v2 = v2[11];
    }

    while (v2);
  }

  return this;
}

void CAEmitterCell_getter(CA::Transaction *a1, unsigned int a2, const CGAffineTransform *a3, CA::Mat4Impl *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v8)
  {
    v8 = CA::Transaction::create(a1);
  }

  v17 = 0;
  v9 = *(v8 + 29);
  *(v8 + 29) = v9 + 1;
  if (!v9)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v10 = *(a1 + 1);
  if (!v10)
  {
    goto LABEL_9;
  }

  if (CA::AttrList::get(v10, a2, a3, this))
  {
    goto LABEL_15;
  }

  v11 = *(a1 + 1);
  if (!v11 || (CA::AttrList::get(v11, 692, 1, &v17) & 1) == 0)
  {
LABEL_9:
    v12 = objc_opt_class();
    CAObject_defaultValueForAtom(v12, 692, 1, &v17);
  }

  if (v17 && (String = CAAtomGetString(a2), (v14 = v17) != 0))
  {
    while (1)
    {
      v15 = [v14 objectForKey:{String, v17, v18}];
      if (v15)
      {
        break;
      }

      v14 = [v17 objectForKey:@"style"];
      v17 = v14;
      if (!v14)
      {
        goto LABEL_14;
      }
    }

    if (v15 == *MEMORY[0x1E695E738])
    {
      v15 = 0;
    }

    CAValueObjCUnbox(v15, a3, this);
  }

  else
  {
LABEL_14:
    v16 = objc_opt_class();
    CAObject_defaultValueForAtom(v16, a2, a3, this);
  }

LABEL_15:
  CA::Transaction::unlock(v8);
}

void CA::shape_subtract(CA::Shape **this, CA::Shape **a2, const CA::Bounds *a3)
{
  v4 = *this;
  if (*this)
  {
    if (v4 == 1)
    {
      return;
    }

    goto LABEL_5;
  }

  if (*(v4 + 1) != 6)
  {
LABEL_5:
    v5 = CA::Shape::subtract(*this, a2);
    CA::Shape::unref(v4);
    *this = v5;
  }
}

void CA::OGL::anonymous namespace::capture_detached(uint64_t a1, uint64_t a2, uint32x2_t *a3, uint64_t a4, float64x2_t *a5, int a6, uint64_t *a7)
{
  v97 = *MEMORY[0x1E69E9840];
  v89 = a3;
  v88 = a6;
  v87 = a7;
  if (!a3)
  {
    return;
  }

  v9 = a3;
  v10 = *a7;
  if (a3[1].i8[4] == 57)
  {
    v11 = a5[1];
    v12 = vceqzq_f64(v11);
    v85 = 0u;
    if ((vorrq_s8(vdupq_laneq_s64(v12, 1), v12).u64[0] & 0x8000000000000000) == 0)
    {
      v13 = vceqq_f64(v11, v11);
      if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v13), 1), v13).u64[0] & 0x8000000000000000) == 0)
      {
        v14 = vcvtmq_s64_f64(vmaxnmq_f64(*a5, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v85 = vuzp1q_s32(v14, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(*a5, v11), vdupq_n_s64(0x41C0000000000000uLL))), v14));
      }
    }

    v96 = 0uLL;
    v15 = a7[1];
    v94 = 0;
    v95 = 0;
    v93 = v15;
    if ((*(*a3 + 304))(a3))
    {
      v16 = vextq_s8(v85, v85, 8uLL).u64[0];
      v17 = vclez_s32(v16);
      v18 = vadd_s32(*v85.i8, v16);
      v86 = vpmax_u32(v17, v17).u32[0];
      while (1)
      {
        do
        {
          if (!CA::ShapeIterator::iterate(&v93, &v96))
          {
            goto LABEL_31;
          }

          v19 = vclez_s32(*&v96.u32[2]);
        }

        while ((vpmax_u32(v19, v19).u32[0] & 0x80000000) != 0);
        if ((v86 & 0x80000000) == 0)
        {
          *v20.f32 = vmax_s32(*v96.f32, *v85.i8);
          v21 = vsub_s32(vmin_s32(vadd_s32(*v96.f32, *&v96.u32[2]), v18), *v20.f32);
          v22 = vclez_s32(v21);
          if ((vpmax_u32(v22, v22).u32[0] & 0x80000000) == 0)
          {
            break;
          }
        }

        v96.i64[1] = 0;
      }

      *&v20.u32[2] = v21;
      v96 = v20;
      v24 = &v9[22];
      v23 = v9[22];
      if (v23)
      {
LABEL_30:
        v89 = v23;
        v9 = v23;
        goto LABEL_31;
      }

      if (byte_1ED4E983D == 1)
      {
        if (x_log_get_ogl(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
        }

        v83 = x_log_get_ogl(void)::log;
        if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_DEBUG))
        {
          v84 = v9[15].i32[0];
          *buf = 67109120;
          *&buf[4] = v84;
          _os_log_debug_impl(&dword_183AA6000, v83, OS_LOG_TYPE_DEBUG, "Cannot Display TM (capture_detached), OnDemand MSR/GPU TM on surface (0x%x)", buf, 8u);
        }
      }

      memset(buf, 0, sizeof(buf));
      v25 = v9[23];
      if (v25)
      {
        atomic_fetch_add(v25 + 4, 1u);
        v26 = *v9[34].i8;
        *&buf[72] = *v9[32].i8;
        v27 = *v9[28].i8;
        *&buf[56] = *v9[30].i8;
        *&buf[40] = v27;
        v28 = *v9[24].i8;
        *&buf[24] = *v9[26].i8;
        v29 = *v9[38].i8;
        *&buf[136] = *v9[40].i8;
        v30 = *v9[36].i8;
        *&buf[120] = v29;
        *&buf[104] = v30;
        *&buf[88] = v26;
        *buf = v25;
        *&buf[8] = v28;
        v31 = *(v10 + 624);
        v32 = (*(*v25 + 56))(v25, v31);
        v33 = *&buf[148];
        v34 = buf[144];
        v35 = (*(*v9 + 280))(v9);
        v36 = (*(*v25 + 24))(v25, v9, v31, &buf[8], v32, 0, v34, v35, 1.0, v33, 1);
        if (v36)
        {
          v37 = v36;
          X::Ref<CA::Render::Surface>::operator=(&v9[22], v36);
          if (atomic_fetch_add(v37 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v37 + 16))(v37);
          }

          goto LABEL_26;
        }

        if (x_log_get_ogl(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
        }

        v46 = x_log_get_ogl(void)::log;
        if (!os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }

        v82 = v9[15].i32[0];
        *v90 = 67109120;
        *&v90[4] = v82;
        v43 = "Failed to tonemap surface 0x%x";
        v44 = v46;
        v45 = 8;
      }

      else
      {
        v38 = *v9[32].i8;
        *&buf[88] = *v9[34].i8;
        v39 = *v9[38].i8;
        *&buf[104] = *v9[36].i8;
        *&buf[120] = v39;
        *&buf[136] = *v9[40].i8;
        v40 = *v9[24].i8;
        *&buf[24] = *v9[26].i8;
        v41 = *v9[30].i8;
        *&buf[40] = *v9[28].i8;
        *&buf[56] = v41;
        *&buf[72] = v38;
        *&buf[8] = v40;
        if (x_log_get_ogl(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
        }

        v42 = x_log_get_ogl(void)::log;
        if (!os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }

        *v90 = 0;
        v43 = "Could not tonemap surface because of invalid configuration";
        v44 = v42;
        v45 = 2;
      }

      _os_log_error_impl(&dword_183AA6000, v44, OS_LOG_TYPE_ERROR, v43, v90, v45);
LABEL_26:
      v47 = *buf;
      if (*buf && atomic_fetch_add((*buf + 16), 0xFFFFFFFF) == 1)
      {
        (*(*v47 + 8))(v47);
      }

      v23 = *v24;
      if (*v24)
      {
        goto LABEL_30;
      }

      if (x_log_get_ogl(void)::once != -1)
      {
        dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
      }

      v80 = x_log_get_ogl(void)::log;
      if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR))
      {
        v81 = v9[15].i32[0];
        *buf = 67109120;
        *&buf[4] = v81;
        _os_log_error_impl(&dword_183AA6000, v80, OS_LOG_TYPE_ERROR, "No valid tonemapped surface available for 0x%x", buf, 8u);
      }
    }
  }

LABEL_31:
  v96 = 0uLL;
  v48 = CA::OGL::Context::bind_image(v10, 0, v9, 63, 1u, 1, 0, 0, 0.0, &v96, 0);
  if (v48)
  {
    v49 = v48;
    *buf = v10;
    *&buf[8] = a5;
    *&buf[16] = &v87;
    *&buf[24] = &v88;
    *&buf[32] = a4;
    *&buf[40] = &v89;
    v50 = v87;
    if (*(v87 + 56) == 1)
    {
      *(*(v10 + 16) + 16) = 0;
      *(v10 + 144) = 0;
      *(v10 + 112) = v10 + 1386;
      *(v10 + 120) = xmmword_183E20E50;
      *v90 = 0;
      v91 = 0;
      v51 = v50[1];
      v94 = 0;
      v95 = 0;
      v93 = v51;
      while (CA::ShapeIterator::iterate(&v93, v90))
      {
        v53 = *v90;
        v52 = *&v90[4];
        v55 = v91;
        v54 = HIDWORD(v91);
        if (*(v10 + 108))
        {
          v56 = 6;
        }

        else
        {
          v56 = 4;
        }

        if ((*(v10 + 144) + 4) > *(v10 + 152) || (v57 = *(v10 + 128)) != 0 && *(v10 + 120) + v56 > v57)
        {
          *(v10 + 1384) |= 0x20u;
          CA::OGL::Context::array_flush(v10);
          *(v10 + 144) = 0;
          *(v10 + 112) = v10 + 1386;
          *(v10 + 120) = xmmword_183E20E50;
        }

        CA::OGL::Context::array_rect(v10, *(v87 + 4) * v53, *(v87 + 4) * v52, *(v87 + 4) * (v55 + v53), *(v87 + 4) * (v54 + v52));
        v58 = *(v10 + 136) + 48 * *(v10 + 144);
        *(v58 - 160) = 0;
        *(v58 - 112) = 0;
        *(v58 - 64) = 0;
        *(v58 - 16) = 0;
      }

      CA::OGL::Context::array_flush(v10);
    }

    if (*&v89[7] == *(v10 + 560))
    {
      v59 = 1;
    }

    else
    {
      v59 = CGColorSpaceEqualToColorSpaceIgnoringRange();
    }

    v60 = (*(v87 + 4) < 0.5) & v59;
    v61 = *(v10 + 16);
    if (v60 == 1)
    {
      *(v61 + 16) = 0;
      *(*(v10 + 16) + 497) |= 1u;
      v62 = *(v10 + 16);
      *(v62 + 496) = 22;
      v63 = v87;
      v64.i32[0] = *(v87 + 4);
      if (*v64.i32 >= 0.25)
      {
        *v64.i32 = sqrtf(fminf((*v64.i32 * -4.0) + 2.0, 1.0));
        v74 = v89[2];
        v75.i64[0] = v74.u32[0];
        v75.i64[1] = v74.u32[1];
        __asm { FMOV            V3.2D, #1.0 }

        v77 = vdivq_f64(_Q3, vcvtq_f64_u64(v75));
        *&v64.i32[1] = -*v64.i32;
        v78 = vmulq_f32(vzip1q_s32(v64, v64), vcvt_hight_f32_f64(vcvt_f32_f64(v77), v77));
        v79 = vextq_s8(v78, v78, 8uLL).u64[0];
        *&v77.f64[0] = __PAIR64__(HIDWORD(v79), v78.u32[0]);
        *(v62 + 16) = 27;
        *(v10 + 168) = v78;
        v78.i32[0] = v79;
        *(v10 + 160) = v78.i64[0];
        *(v10 + 184) = v77.f64[0];
      }

      else
      {
        *(v62 + 16) = 29;
        v65 = v89[2];
        v66.i64[0] = v65.u32[0];
        v66.i64[1] = v65.u32[1];
        v67 = vcvt_f32_f64(vdivq_f64(vdupq_lane_s64(COERCE__INT64(((sqrtf(fminf((*(v63 + 4) * -8.0) + 2.0, 1.0)) * 0.5) + 0.5)), 0), vcvtq_f64_u64(v66)));
        __asm { FMOV            V1.2S, #3.0 }

        v73 = vmul_f32(v67, _D1);
        *(v10 + 160) = v67;
        *(v10 + 168) = v67.i32[0];
        *(v10 + 172) = vrev64_s32(v73);
        *(v10 + 180) = v67.i32[1];
        *(v10 + 184) = v73;
      }
    }

    else
    {
      *(v61 + 16) = 1;
    }

    {
      *v87[8] = 1;
    }

    (*(*v10 + 560))(v10, v49, 0);
    if (v60)
    {
      *(*(v10 + 16) + 497) &= ~1u;
    }
  }
}

float16x4_t *CA::OGL::Context::paint_region(float16x4_t *result, uint64_t a2, uint64_t *a3, int a4)
{
  v7 = result;
  v29[126] = *MEMORY[0x1E69E9840];
  if (*a3 || (*(*&result[84] + 147) & 0x60) == 0)
  {
    bzero(v29, 0x3F0uLL);
    v28 = 0u;
    v25 = 0x3C003C003C003C00;
    v27 = 0u;
    v26 = 0u;
    *&v28 = 0;
    v23[0] = 0;
    v24 = 0u;
    DWORD2(v27) = 1065353216;
    WORD4(v28) = 1025;
    v23[1] = &CA::Shape::_infinite_shape;
    v9 = *(v7 + 656);
    if (v9)
    {
      v10 = *(v7 + 16);
      memcpy(v29, v10, 0x1F8uLL);
      v29[0] = v10;
      *(v7 + 16) = v29;
      v23[0] = CA::OGL::Context::set_gstate(v7, v23);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v8);
      bzero(v18, 0xF00uLL);
      *(v7 + 136) = v18;
      *(v7 + 152) = 80;
      CA::OGL::Context::prepare_context(v7, v29);
      (*(*v7 + 1088))(v7, v23);
    }

    v12 = v7 + 16;
    v11 = *(v7 + 16);
    if (a4)
    {
      *(v11 + 497) |= 1u;
      v11 = *v12;
      *(*v12 + 496) = 3;
    }

    *(v11 + 16) = 0;
    *(v7 + 144) = 0;
    *(v7 + 112) = v7 + 1386;
    v19 = xmmword_183E20E50;
    *(v7 + 120) = xmmword_183E20E50;
    v22[1] = 0;
    v22[2] = 0;
    v21 = 0;
    v22[0] = a2;
    v20 = 0;
    while (CA::ShapeIterator::iterate(v22, &v20))
    {
      if (*(v7 + 108))
      {
        v13 = 6;
      }

      else
      {
        v13 = 4;
      }

      if ((*(v7 + 144) + 4) > *(v7 + 152) || (v14 = *(v7 + 128)) != 0 && *(v7 + 120) + v13 > v14)
      {
        *(v7 + 1384) |= 0x20u;
        CA::OGL::Context::array_flush(v7);
        *(v7 + 144) = 0;
        *(v7 + 112) = v7 + 1386;
        *(v7 + 120) = v19;
      }

      CA::OGL::Context::array_rect(v7, v20, SHIDWORD(v20), (v21 + v20), (HIDWORD(v21) + HIDWORD(v20)));
      v15 = *a3;
      v16 = *(v7 + 136) + 48 * *(v7 + 144);
      *(v16 - 160) = *a3;
      *(v16 - 112) = v15;
      *(v16 - 64) = v15;
      *(v16 - 16) = v15;
    }

    CA::OGL::Context::array_flush(v7);
    if (v9)
    {
      result = CA::OGL::Context::set_gstate(v7, **(v7 + 656));
      *(v7 + 16) = v29[0];
      v29[0] = 0;
    }

    else
    {
      result = (*(*v7 + 1096))(v7, v23);
      *v12 = 0;
      *(v7 + 24) = 0;
      *(v7 + 136) = 0;
      *(v7 + 152) = 0;
    }

    for (i = 63; i != -63; i -= 63)
    {
      if (v29[i])
      {
        __assert_rtn("~ContextState", "ogl-context.h", 613, "!next && Imbalanced ContextState push/pop");
      }
    }
  }

  return result;
}

void CA::Render::ShapeLayer::stroke_path(CA::Render::ShapeLayer *this, double a2, uint64_t a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&CA::Render::ShapeLayer::_stroke_lock);
  if (*(a3 + 152) && vabdd_f64(*(a3 + 160), a2) <= 0.1)
  {
    goto LABEL_39;
  }

  v6 = *(a3 + 16);
  if (!v6)
  {
    goto LABEL_39;
  }

  v7 = *(a3 + 128);
  if (v7 && (v8 = *(v7 + 16), v8))
  {
    if (v8 > 0x200)
    {
      v10 = malloc_type_malloc(8 * v8, 0xB6690E64uLL);
      v7 = *(a3 + 128);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v6);
      v10 = v24 - ((v9 + 15) & 0xFFFFFFFF0);
      bzero(v10, v9);
    }

    for (i = 0; i != v8; ++i)
    {
      *&v10[8 * i] = *(v7 + 24 + 8 * i);
    }

    v6 = *(a3 + 16);
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v12 = fmax(*(a3 + 88), 0.0);
  v13 = fmin(*(a3 + 96), 1.0);
  if (v12 >= v13)
  {
    v19 = 0;
LABEL_26:
    v18 = 0;
    goto LABEL_27;
  }

  v14 = *(a3 + 104);
  v15 = *(a3 + 136);
  if (v12 == 0.0 && v13 == 1.0)
  {
    v19 = CA::Render::Path::stroke(v6, *(a3 + 104), BYTE2(v15), BYTE1(v15), v8);
  }

  else
  {
    v17 = CA::Render::Path::copy_subpath(v6, v12, v13);
    v18 = v17;
    if (!v17)
    {
      v19 = 0;
      goto LABEL_27;
    }

    v19 = CA::Render::Path::stroke(v17, v14, BYTE2(v15), BYTE1(v15), v8);
    if (atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v18 + 16))(v18);
    }
  }

  if (!v19)
  {
    goto LABEL_26;
  }

  if (atomic_fetch_add(v19 + 2, 1u))
  {
    v18 = v19;
  }

  else
  {
    v18 = 0;
    atomic_fetch_add(v19 + 2, 0xFFFFFFFF);
  }

LABEL_27:
  if (v8 >= 0x201 && v10)
  {
    free(v10);
  }

  v20 = *(a3 + 144);
  if (v20 && !*(v20 + 152))
  {
    *(v20 + 152) = v18;
    *(v20 + 160) = a2;
    v21 = *(a3 + 152);
    *(a3 + 152) = v19;
    *(a3 + 160) = a2;
    if (!v21)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v21 = *(a3 + 152);
  *(a3 + 152) = v19;
  *(a3 + 160) = a2;
  if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v18 + 16))(v18);
  }

  if (v21)
  {
LABEL_36:
    if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v21 + 16))(v21);
    }
  }

LABEL_39:
  v22 = *(a3 + 152);
  if (v22)
  {
    v23 = (v22 + 8);
    if (!atomic_fetch_add((v22 + 8), 1u))
    {
      v22 = 0;
      atomic_fetch_add(v23, 0xFFFFFFFF);
    }
  }

  *this = v22;
  os_unfair_lock_unlock(&CA::Render::ShapeLayer::_stroke_lock);
}

atomic_uint *CA::Render::Path::stroke(atomic_uint *result, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    CA::Render::Path::cg_path(result);
    result = CGPathCreateDashedPath();
    if (!result)
    {
      return result;
    }

    v7 = result;
    if (a2 <= 0.0)
    {
      goto LABEL_5;
    }

    StrokedPath = CGPathCreateStrokedPath();
    CGPathRelease(v7);
    v7 = StrokedPath;
    if (StrokedPath)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (a2 > 0.0)
  {
    CA::Render::Path::cg_path(result);
    v7 = CGPathCreateStrokedPath();
    if (v7)
    {
LABEL_5:
      v9 = CA::Render::Path::new_path(v7, v6);
      CGPathRelease(v7);
      return v9;
    }

    return 0;
  }

  if (result)
  {
    v10 = result + 2;
    if (!atomic_fetch_add(result + 2, 1u))
    {
      result = 0;
      atomic_fetch_add(v10, 0xFFFFFFFF);
    }
  }

  return result;
}

uint64_t CA::Render::Path::cg_path(CA::Render::Path *this)
{
  if (*(this + 13))
  {
    return *(this + 13);
  }

  Mutable = CGPathCreateMutable();
  v4 = *(this + 4);
  for (i = *(this + 5); ; ++i)
  {
    v5 = *i;
    if (v5 <= 2)
    {
      if (*i)
      {
        if (v5 == 1)
        {
          CGPathMoveToPoint(Mutable, 0, *v4, v4[1]);
        }

        else if (v5 == 2)
        {
          CGPathAddLineToPoint(Mutable, 0, *v4, v4[1]);
        }
      }

      else
      {
        CGPathCloseSubpath(Mutable);
      }

      goto LABEL_15;
    }

    if (v5 == 3)
    {
      CGPathAddQuadCurveToPoint(Mutable, 0, *v4, v4[1], v4[2], v4[3]);
      goto LABEL_15;
    }

    if (v5 == 4)
    {
      CGPathAddCurveToPoint(Mutable, 0, *v4, v4[1], v4[2], v4[3], v4[4], v4[5]);
      goto LABEL_15;
    }

    if (v5 == 5)
    {
      break;
    }

LABEL_15:
    v6 = *i;
    v4 += 2 * CA::Render::path_counts[v6];
  }

  v7 = 0;
  atomic_compare_exchange_strong(this + 13, &v7, Mutable);
  if (v7)
  {
    CGPathRelease(Mutable);
  }

  return *(this + 13);
}

uint64_t CA::Render::ReplicatorLayer::get_property(CA::Render::ReplicatorLayer *this, uint64_t a2, const unsigned int *a3, unint64_t a4, float64x2_t *a5, float64x2_t **a6)
{
  if (a4 < 4)
  {
    return 0;
  }

  if (a6)
  {
    *a6 = a5;
  }

  if (!a2)
  {
    return a2;
  }

  if (a2 != 1)
  {
    if (*a3 == 445)
    {
      return CA::Render::get_transform_property(*(this + 3), (a2 - 1), a3 + 1, a5, a5->f64);
    }

    return 0;
  }

  a2 = 0;
  v6 = *a3;
  if (*a3 > 441)
  {
    if (v6 > 443)
    {
      if (v6 != 444)
      {
        if (v6 != 445)
        {
          return a2;
        }

        if (a4 >= 0x10)
        {
          v9 = *(this + 3);
          v10 = *(v9 + 40);
          v11 = *(v9 + 56);
          v12 = *(v9 + 72);
          *a5 = *(v9 + 24);
          a5[1] = v10;
          a5[2] = v11;
          a5[3] = v12;
          v13 = *(v9 + 104);
          v14 = *(v9 + 120);
          v15 = *(v9 + 136);
          a5[4] = *(v9 + 88);
          a5[5] = v13;
          a5[6] = v14;
          a5[7] = v15;
          return 16;
        }

        return 0;
      }

      a2 = 5;
    }

    else if (v6 != 442)
    {
      if (v6 != 443)
      {
        return a2;
      }

      a2 = 6;
    }

    goto LABEL_28;
  }

  if (v6 <= 439)
  {
    if (v6 == 438)
    {
      a2 = 8;
    }

    else
    {
      if (v6 != 439)
      {
        return a2;
      }

      a2 = 7;
    }

LABEL_28:
    v8 = *(this + a2 + 8);
    goto LABEL_29;
  }

  if (v6 == 440)
  {
    v16 = vcvtq_f64_f32(*(this + 44));
    *a5 = vcvtq_f64_f32(*(this + 36));
    a5[1] = v16;
    return 4;
  }

  if (v6 == 441)
  {
    v8 = *(this + 4);
LABEL_29:
    a5->f64[0] = v8;
    return 1;
  }

  return a2;
}

_DWORD *CA::Render::ReplicatorLayer::copy@<X0>(CA::Render::ReplicatorLayer *this@<X0>, void *a2@<X8>)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x48uLL, 0xDEEC3011uLL);
  if (result)
  {
    result[2] = 1;
    result[3] = 46;
    ++dword_1ED4EAAF0;
    *result = &unk_1EF1F4F88;
    result[4] = *(this + 4);
    v5 = *(this + 3);
    if (v5)
    {
      v6 = (v5 + 8);
      if (!atomic_fetch_add((v5 + 8), 1u))
      {
        v5 = 0;
        atomic_fetch_add(v6, 0xFFFFFFFF);
      }
    }

    v7 = 0;
    *(result + 3) = v5;
    result[3] |= *(this + 3) & 0xFFFFFF00;
    do
    {
      result[v7 + 8] = *(this + v7 * 4 + 32);
      ++v7;
    }

    while (v7 != 9);
  }

  *a2 = result;
  return result;
}

float CA::Render::ReplicatorLayer::set_property(CA::Render::ReplicatorLayer *this, uint64_t a2, const unsigned int *a3, const double *a4, unint64_t a5, const double *a6, const double *a7)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return *v11.f64;
  }

  if (a2 == 1)
  {
    v8 = *a3;
    if (*a3 > 441)
    {
      if (v8 > 443)
      {
        if (v8 != 444)
        {
          if (v8 == 445 && a5 >= 0x10)
          {
            memset(v18, 0, sizeof(v18));
            if (a4)
            {
              v14 = *(this + 3);
              if (v14)
              {
                CA::Mat4Impl::mat4_concat(v18, (v14 + 24), a6, a4);
                a6 = v18;
              }
            }

            v15 = CA::Render::Vector::new_vector(0x10, a6, a3);
            v16 = *(this + 3);
            *(this + 3) = v15;
            if (v16 && atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v16 + 16))(v16);
            }
          }

          return *v11.f64;
        }

        v9 = 5;
      }

      else if (v8 == 442)
      {
        v9 = 0;
      }

      else
      {
        if (v8 != 443)
        {
          return *v11.f64;
        }

        v9 = 6;
      }

LABEL_36:
      if (a5)
      {
        *v11.f64 = *a6;
        *(this + v9 + 8) = LODWORD(v11.f64[0]);
      }

      return *v11.f64;
    }

    if (v8 <= 439)
    {
      if (v8 == 438)
      {
        v9 = 8;
      }

      else
      {
        if (v8 != 439)
        {
          return *v11.f64;
        }

        v9 = 7;
      }

      goto LABEL_36;
    }

    if (v8 == 440)
    {
      if (a5 >= 4)
      {
        v11 = *(a6 + 2);
        *(this + 36) = vcvt_hight_f32_f64(vcvt_f32_f64(*a6), v11);
      }
    }

    else if (v8 == 441 && a5)
    {
      v11.f64[0] = floor(*a6) + 0.5;
      *(this + 4) = v11.f64[0];
    }
  }

  else if (*a3 == 445)
  {
    v10 = CA::Render::set_transform_property(*(this + 3), (a2 - 1), a3 + 1, a4, a5, a6, a7);
    v12 = *(this + 3);
    *(this + 3) = v10;
    if (v12)
    {
      if (atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
      {
        v13 = *(*v12 + 16);

        v13();
      }
    }
  }

  return *v11.f64;
}

double *CA::Render::set_rect_property(double *this, CA::Rect *a2, int *a3, const unsigned int *a4, unint64_t a5, double *a6, const double *a7)
{
  v7 = *a3;
  if (a2 == 1)
  {
    if (a5 >= 2 && v7 == 547)
    {
      v8 = *a6;
      if (a4)
      {
        v9 = this[1];
        *this = *this + v8;
        v10 = v9 + a6[1];
      }

      else
      {
        *this = v8;
        v10 = a6[1];
      }

      this[1] = v10;
    }

    else if (a5 >= 2 && v7 == 654)
    {
      v14 = *a6;
      if (a4)
      {
        v15 = this[3];
        this[2] = this[2] + v14;
        v16 = v15 + a6[1];
      }

      else
      {
        this[2] = v14;
        v16 = a6[1];
      }

      this[3] = v16;
    }
  }

  else if (v7 == 654)
  {
    v17 = this[2];
    v18 = this[3];
    if (a2 == 2)
    {
      v19 = a3[1];
      if (a5 && v19 == 753)
      {
        v17 = *a6 + v17;
        if (!a4)
        {
          v17 = *a6;
        }
      }

      else if (a5)
      {
        if (v19 == 295)
        {
          v18 = *a6 + v18;
          if (!a4)
          {
            v18 = *a6;
          }
        }
      }
    }

    this[2] = v17;
    this[3] = v18;
  }

  else if (v7 == 547)
  {
    v11 = *this;
    v12 = this[1];
    if (a2 == 2)
    {
      v13 = a3[1];
      if (a5 && v13 == 756)
      {
        v11 = *a6 + v11;
        if (!a4)
        {
          v11 = *a6;
        }
      }

      else if (a5)
      {
        if (v13 == 760)
        {
          v12 = *a6 + v12;
          if (!a4)
          {
            v12 = *a6;
          }
        }
      }
    }

    *this = v11;
    this[1] = v12;
  }

  return this;
}

double CA::Render::get_position_range(int a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t a5, unint64_t a6, float64x2_t a7, float64x2_t a8, float64x2_t a9)
{
  if (a2 == 1 && a5 && a6)
  {
    if (a1 > 755)
    {
      if (a1 != 760)
      {
        if (a1 != 756)
        {
          return INFINITY;
        }

        goto LABEL_14;
      }
    }

    else if (a1 != 295)
    {
      if (a1 != 753)
      {
        return INFINITY;
      }

LABEL_14:
      *&a8.f64[0] = *a4;
      *&a9.f64[0] = *a3;
      goto LABEL_17;
    }

    a9.f64[0] = 0.0;
    a8.f64[0] = 0.0;
    *&a8.f64[1] = *a4;
    *&a9.f64[1] = *a3;
    goto LABEL_17;
  }

  if (a2 || a5 < 2 || a6 < 2)
  {
    return INFINITY;
  }

  a9 = *a3;
  a8 = *a4;
LABEL_17:
  v10 = vmulq_f64(vsubq_f64(a8, a9), a7);
  return sqrt(vaddvq_f64(vmulq_f64(v10, v10)));
}

uint64_t CA::Render::Texture::mix@<X0>(atomic_uint *this@<X0>, atomic_uint *a2@<X1>, const CA::Render::ValueInterpolator *a3@<X2>, void *a4@<X8>)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_malloc(malloc_zone, 0xA8uLL, 0x165299FDuLL);
  if (result)
  {
    result = CA::Render::Interpolator::Interpolator(result, this, a2, *a3);
  }

  *a4 = result;
  return result;
}

uint64_t CA::Render::Interpolator::Interpolator(uint64_t this, atomic_uint *a2, atomic_uint *a3, double a4)
{
  *(this + 8) = 1;
  *(this + 12) = 26;
  ++dword_1ED4EAAA0;
  *this = &unk_1EF1F3D70;
  *(this + 16) = 0;
  if (a2)
  {
    v4 = a2 + 2;
    if (!atomic_fetch_add(a2 + 2, 1u))
    {
      a2 = 0;
      atomic_fetch_add(v4, 0xFFFFFFFF);
    }
  }

  *(this + 24) = a2;
  if (a3)
  {
    v5 = a3 + 2;
    if (!atomic_fetch_add(a3 + 2, 1u))
    {
      a3 = 0;
      atomic_fetch_add(v5, 0xFFFFFFFF);
    }
  }

  *(this + 32) = a3;
  *(this + 40) = 0;
  *(this + 48) = a4;
  *(this + 56) = 0;
  *(this + 160) = 0;
  return this;
}

dispatch_queue_t ___ZN2CA12MachPortUtil11reply_queueEv_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  result = dispatch_queue_create("com.apple.coreanimation.CAMachPortUtilReplyQueue", v0);
  CA::MachPortUtil::reply_queue(void)::queue = result;
  return result;
}

double *CA::Render::Path::copy_subpath(CA::Render::Path *this, double a2, double a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = CA::Render::Path::keyframe_lengths(this);
  if (v6)
  {
    if (!*(this + 14))
    {
      CA::Render::Path::keyframe_lengths(this);
    }

    v8 = *(this + 15);
    v9 = *(this + 4);
    v10 = *(this + 5);
    v11 = *(this + 5);
    v30 = 0u;
    memset(v31, 0, sizeof(v31));
    v28 = 0u;
    v29 = 0u;
    *&v31[6] = *MEMORY[0x1E695F040];
    *&v31[10] = *&v31[6];
    if (v11)
    {
      v12 = 0;
      v13 = v8 * a2;
      v14 = v8 * a3;
      v15 = &v10[v11];
      v16 = 0.0;
      do
      {
        v17 = *v10;
        if (v17 == 1)
        {
          *&v31[2] = *v9;
          v18 = *v9++;
          v7.n128_u64[1] = *(&v18 + 1);
          *&v31[6] = v18;
          LOBYTE(v31[14]) = 1;
        }

        else
        {
          v19 = v6[v12];
          v7.n128_u64[0] = 0;
          if (v13 > v16)
          {
            v7.n128_f64[0] = (v13 - v16) / v19;
          }

          if (v14 >= v19 + v16)
          {
          }

          else
          {
            v20 = (v14 - v16) / v19;
            if (v20 < 1.0)
            {
              break;
            }
          }

          v9 += CA::Render::path_counts[*v10];
          v21 = v6[v12++];
          v16 = v21 + v16;
        }

        ++v10;
      }

      while (v10 < v15);
      v22 = v28;
      v23 = *(&v29 + 1);
      v24 = v30;
      v25 = CA::Render::Path::new_path((DWORD2(v28) - v28 + 1), (v30 - *(&v29 + 1)) >> 4, v31[0]);
      v6 = v25;
      if (v25)
      {
        if (*(&v22 + 1) != v22)
        {
          memmove(*(v25 + 5), v22, *(&v22 + 1));
        }

        *(*(v6 + 5) + *(&v22 + 1) - v22) = 5;
        if (v24 != v23)
        {
          memmove(*(v6 + 4), v23, v24 - v23);
        }
      }

      if (v23)
      {
        operator delete(v23);
      }

      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      v26 = CA::Render::Path::new_path(1, 0, 0);
      v6 = v26;
      if (v26)
      {
        **(v26 + 5) = 5;
      }
    }
  }

  return v6;
}

double *CA::Render::Path::keyframe_lengths(CA::Render::Path *this)
{
  v83 = *MEMORY[0x1E69E9840];
  v1 = *(this + 14);
  if (!v1)
  {
    v3 = *(this + 4);
    if (!v3)
    {
      return 0;
    }

    v5 = *(this + 4);
    v4 = *(this + 5);
    if (*v4 != 1 || v5 == 0)
    {
      return 0;
    }

    else
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v1 = malloc_type_zone_malloc(malloc_zone, 8 * v3, 0x100004000313F17uLL);
      if (v1)
      {
        v7 = *(this + 4);
        if (v7)
        {
          v8 = 0;
          v9 = v5 + 1;
          v10 = 0.0;
          __asm { FMOV            V1.2D, #2.0 }

          v15 = vdupq_n_s64(0x3FD5555555555555uLL);
          _D5 = 2.0;
          v17 = v5;
          while (1)
          {
            v19 = *++v4;
            v18 = v19;
            if (v19 <= 1)
            {
              if (!v18)
              {
                v53 = vsubq_f64(*v5, *v17);
                v53.f64[0] = vaddvq_f64(vmulq_f64(v53, v53));
                v54 = sqrt(v53.f64[0]);
                if (v53.f64[0] == 1.0)
                {
                  v55 = 1.0;
                }

                else
                {
                  v55 = v54;
                }

                v1[v8++] = v55;
                v10 = v55 + v10;
                v25 = v9;
                goto LABEL_59;
              }

              if (v18 != 1)
              {
                goto LABEL_62;
              }

              v25 = v9 + 1;
              v17 = v9;
            }

            else
            {
              if (v18 != 2)
              {
                if (v18 == 3)
                {
                  v20 = *v5;
                  v5 = v9 + 1;
                  v23 = v9[1];
                  _Q17 = vmulq_f64(vmlaq_f64(v23, _Q1, *v9), v15);
                  v22 = vmulq_f64(vmlaq_f64(v20, _Q1, *v9), v15);
                  v24 = 2;
                }

                else
                {
                  if (v18 != 4)
                  {
                    goto LABEL_62;
                  }

                  v20 = *v5;
                  v22 = *v9;
                  _Q17 = v9[1];
                  v5 = v9 + 2;
                  v23 = v9[2];
                  v24 = 3;
                }

                v82 = 0;
                memset(v81, 0, sizeof(v81));
                v80 = 0;
                memset(v79, 0, sizeof(v79));
                v78 = 0;
                memset(v77, 0, sizeof(v77));
                v76 = 0;
                memset(v75, 0, sizeof(v75));
                v74 = 0;
                memset(v73, 0, sizeof(v73));
                v72 = 0;
                memset(v71, 0, sizeof(v71));
                v70 = 0;
                memset(v69, 0, sizeof(v69));
                v68 = 0;
                memset(v67, 0, sizeof(v67));
                v66 = 0;
                memset(v65, 0, sizeof(v65));
                v64 = 0;
                memset(v63, 0, sizeof(v63));
                v62 = 0;
                v26 = vsubq_f64(v22, v20);
                v27 = vaddvq_f64(vmulq_f64(v26, v26));
                memset(v61, 0, sizeof(v61));
                if (v27 <= 0.0)
                {
                  v28 = 1.79769313e308;
                }

                else
                {
                  v28 = 1.0 / sqrt(v27);
                }

                v29 = (v23.f64[1] - _Q17.f64[1]) * (v23.f64[1] - _Q17.f64[1]) + (v23.f64[0] - _Q17.f64[0]) * (v23.f64[0] - _Q17.f64[0]);
                if (v29 <= 0.0)
                {
                  v30 = 1.79769313e308;
                }

                else
                {
                  v30 = 1.0 / sqrt(v29);
                }

                v31 = v28 * v27;
                v32 = v30 * v29;
                v33 = 0.0;
                if (COERCE__INT64(fabs(v32 + v31)) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  LODWORD(j) = 0;
                  for (i = 1.0; ; i = *(v61 + j))
                  {
                    for (j = j; ; ++j)
                    {
                      v36 = vsubq_f64(_Q17, v22);
                      v37 = vaddvq_f64(vmulq_f64(v36, v36));
                      v38 = v37 <= 0.0 ? 1.79769313e308 : 1.0 / sqrt(v37);
                      v39 = vsubq_f64(v23, v20);
                      v40 = vaddvq_f64(vmulq_f64(v39, v39));
                      v41 = v40 <= 0.0 ? 1.79769313e308 : 1.0 / sqrt(v40);
                      v42 = v32 + v31 + v38 * v37;
                      v43 = v42 - v41 * v40 > i && j < 29;
                      if (!v43)
                      {
                        break;
                      }

                      i = i * 0.5;
                      *(v61 + j) = i;
                      *(v75 + j) = *&v23.f64[0];
                      *(v63 + j) = *&v23.f64[1];
                      *(v77 + j) = 0.5 * vaddq_f64(v23, _Q17).f64[0];
                      *(v65 + j) = (v23.f64[1] + _Q17.f64[1]) * 0.5;
                      *(v79 + j) = (v22.f64[0] + _Q17.f64[0] * 2.0 + v23.f64[0]) * 0.25;
                      __asm { FMLA            D24, D5, V17.D[1] }

                      *(v67 + j) = (_D24 + v23.f64[1]) * 0.25;
                      *(v71 + j) = v32 * 0.5;
                      __asm { FMOV            V22.2D, #3.0 }

                      v46 = vaddq_f64(vmlaq_f64(v23, _Q22, vaddq_f64(_Q17, v22)), v20);
                      __asm { FMOV            V22.2D, #0.125 }

                      v23 = vmulq_f64(v46, _Q22);
                      *(v81 + j) = *&v23.f64[0];
                      *(v69 + j) = *&v23.f64[1];
                      __asm { FMOV            V22.2D, #0.25 }

                      _Q17 = vmulq_f64(vaddq_f64(vmlaq_f64(_Q17, _Q1, v22), v20), _Q22);
                      v49 = vsubq_f64(v23, _Q17);
                      v50 = vaddvq_f64(vmulq_f64(v49, v49));
                      if (v50 <= 0.0)
                      {
                        v51 = 1.79769313e308;
                      }

                      else
                      {
                        v51 = 1.0 / sqrt(v50);
                      }

                      __asm { FMOV            V24.2D, #0.5 }

                      v22 = vmulq_f64(vaddq_f64(v20, v22), _Q24);
                      v31 = v31 * 0.5;
                      v32 = v51 * v50;
                      *(v73 + j) = v32;
                    }

                    v33 = v33 + (v41 * v40 + v42) * 0.5;
                    if (!j)
                    {
                      break;
                    }

                    j = j - 1;
                    v31 = *(v73 + j);
                    v23.f64[0] = *(v75 + j);
                    v23.f64[1] = *(v63 + j);
                    v20.f64[0] = *(v81 + j);
                    v20.f64[1] = *(v69 + j);
                    _Q17.f64[0] = *(v77 + j);
                    _Q17.f64[1] = *(v65 + j);
                    v22.f64[0] = *(v79 + j);
                    v22.f64[1] = *(v67 + j);
                    v32 = *(v71 + j);
                  }
                }

                v25 = &v9[v24];
                v1[v8++] = v33;
                v10 = v33 + v10;
                goto LABEL_59;
              }

              v25 = v9 + 1;
              v56 = vsubq_f64(*v9, *v5);
              v56.f64[0] = vaddvq_f64(vmulq_f64(v56, v56));
              v57 = sqrt(v56.f64[0]);
              if (v56.f64[0] == 1.0)
              {
                v58 = 1.0;
              }

              else
              {
                v58 = v57;
              }

              v1[v8++] = v58;
              v10 = v58 + v10;
            }

            v5 = v9;
LABEL_59:
            v9 = v25;
            if (v8 >= v7)
            {
              goto LABEL_62;
            }
          }
        }

        v8 = 0;
        v10 = 0.0;
LABEL_62:
        v43 = v7 > v8;
        v59 = v7 - v8;
        if (v43)
        {
          bzero(&v1[v8], 8 * v59);
        }

        *(this + 14) = v1;
        *(this + 15) = v10;
      }
    }
  }

  return v1;
}

__n128 CA::Render::anonymous namespace::PathAccumulator::add_segment(uint64_t a1, int a2, uint64_t a3, __n128 result, double a5)
{
  v5 = result.n128_f64[0];
  v43 = *MEMORY[0x1E69E9840];
  result.n128_f64[0] = fmax(result.n128_f64[0], 0.0);
  v9 = fmin(a5, 1.0);
  if (*(a1 + 104) == 1)
  {
    *(a1 + 105) = v5 > 0.0;
    *(a1 + 104) = 0;
  }

  if (result.n128_f64[0] >= v9)
  {
    if ((a2 - 2) > 2)
    {
      result = *(a1 + 56);
    }

    else
    {
      result = *(a3 + 16 * CA::Render::path_counts[a2] - 16);
    }

    *(a1 + 72) = result;
  }

  else if (a2 > 2)
  {
    if (a2 == 3)
    {
      v33 = vaddq_f64(*a3, *a3);
      v34 = vdupq_n_s64(0x3FD5555555555555uLL);
      v35 = vmulq_f64(vaddq_f64(*(a1 + 72), v33), v34);
      v36 = vmulq_f64(vaddq_f64(*(a3 + 16), v33), v34);
      v42[0] = v35;
      v42[1] = v36;
      v42[2] = *(a3 + 16);
    }

    else if (a2 == 4)
    {
      _ZF = result.n128_f64[0] == 0.0 && v9 == 1.0;
      if (!_ZF)
      {
        v42[0] = *(a1 + 72);
        v19 = *a3;
        v39 = *(a3 + 16);
        v40 = v19;
        v38 = *(a3 + 32);
        v19.f64[0] = *v42;
        __asm
        {
          FMOV            V3.2D, #3.0
          FMOV            V2.2D, #-3.0
        }

        if (!(_NF ^ _VF | _ZF))
        {
          v19.f64[1] = *(v42 + 1);
          v19 = vmlaq_n_f64(v19, vmlaq_n_f64(vmulq_f64(vsubq_f64(v40, v19), _Q3), vmlaq_n_f64(vmulq_f64(vaddq_f64(vsubq_f64(v19, vaddq_f64(v40, v40)), v39), _Q3), vsubq_f64(v38, vmlaq_f64(v19, _Q2, vsubq_f64(v40, v39))), result.n128_f64[0]), result.n128_f64[0]), result.n128_f64[0]);
          v42[0] = v19;
          v25 = vsubq_f64(v38, v39);
          v26 = vmlsq_lane_f64(v38, vmlaq_n_f64(vaddq_f64(v25, v25), vsubq_f64(vsubq_f64(vaddq_f64(v39, v39), v40), v38), 1.0 - result.n128_f64[0]), 1.0 - result.n128_f64[0], 0);
          v39 = vmlsq_lane_f64(v38, v25, 1.0 - result.n128_f64[0], 0);
          v40 = v26;
          v9 = (v9 - result.n128_f64[0]) / (1.0 - result.n128_f64[0]);
        }

        if (fabs(v9 + -1.0) > 0.001)
        {
          v28 = v39;
          v27 = v40;
          v29.f64[0] = v19.f64[0];
          v29.f64[1] = *(v42 + 1);
          v30 = vsubq_f64(v40, v29);
          __asm { FMOV            V16.2D, #-2.0 }

          v32 = vaddq_f64(v39, vmlaq_f64(v29, _Q16, v40));
          v39 = vmlaq_n_f64(v29, vmlaq_n_f64(vaddq_f64(v30, v30), v32, v9), v9);
          v40 = vmlaq_n_f64(v29, v30, v9);
          v38 = vmlaq_n_f64(v29, vmlaq_n_f64(vmulq_f64(v30, _Q3), vmlaq_n_f64(vmulq_f64(v32, _Q3), vsubq_f64(v38, vmlaq_f64(v29, _Q2, vsubq_f64(v27, v28))), v9), v9), v9);
        }

        v16 = (a1 + 88);
        if (*(a1 + 88) != v19.f64[0] || *(a1 + 96) != *(v42 + 1))
        {
          v41 = 1;
          std::vector<unsigned char>::push_back[abi:nn200100](a1, &v41);
          std::vector<CA::Vec2<double>>::push_back[abi:nn200100](a1 + 24, v42);
        }

        v41 = 4;
        std::vector<unsigned char>::push_back[abi:nn200100](a1, &v41);
        std::vector<CA::Vec2<double>>::push_back[abi:nn200100](a1 + 24, &v40);
        std::vector<CA::Vec2<double>>::push_back[abi:nn200100](a1 + 24, &v39);
        std::vector<CA::Vec2<double>>::push_back[abi:nn200100](a1 + 24, &v38);
        result = v38;
        *(a1 + 72) = v38;
        goto LABEL_35;
      }

      if (*(a1 + 88) != *(a1 + 72) || *(a1 + 96) != *(a1 + 80))
      {
        LOBYTE(v42[0]) = 1;
        std::vector<unsigned char>::push_back[abi:nn200100](a1, v42);
        std::vector<CA::Vec2<double>>::push_back[abi:nn200100](a1 + 24, (a1 + 72));
      }

      LOBYTE(v42[0]) = 4;
      std::vector<unsigned char>::push_back[abi:nn200100](a1, v42);
      std::vector<CA::Vec2<double>>::push_back[abi:nn200100](a1 + 24, a3);
      std::vector<CA::Vec2<double>>::push_back[abi:nn200100](a1 + 24, (a3 + 16));
      std::vector<CA::Vec2<double>>::push_back[abi:nn200100](a1 + 24, (a3 + 32));
      *(a1 + 72) = *(a3 + 32);
      result = *(a3 + 32);
      *(a1 + 88) = result;
    }
  }

  else if (!a2 || a2 == 2)
  {
    v10 = (a1 + 72);
    v11 = *(a1 + 72);
    v12 = (a1 + 56);
    v13 = (a2 ? a3 : a1 + 56);
    v14 = vsubq_f64(*v13, v11);
    v15 = vmlaq_n_f64(v11, v14, result.n128_f64[0]);
    v42[0] = v15;
    v37 = v9;
    v40 = vmlaq_n_f64(v11, v14, v9);
    v16 = (a1 + 88);
    if (*(a1 + 88) != v15.f64[0] || *(a1 + 96) != v15.f64[1])
    {
      LOBYTE(v39.f64[0]) = 1;
      std::vector<unsigned char>::push_back[abi:nn200100](a1, &v39);
      std::vector<CA::Vec2<double>>::push_back[abi:nn200100](a1 + 24, v42);
    }

    LOBYTE(v39.f64[0]) = 2;
    std::vector<unsigned char>::push_back[abi:nn200100](a1, &v39);
    std::vector<CA::Vec2<double>>::push_back[abi:nn200100](a1 + 24, &v40);
    result = v40;
    *v10 = v40;
    *v16 = result;
    if (!a2)
    {
      result.n128_u64[0] = 1.0;
      if (v37 == 1.0 && (*(a1 + 105) & 1) == 0)
      {
        v17 = *(a1 + 8);
        if (v17 != *a1)
        {
          if (*(v17 - 1))
          {
            LOBYTE(v39.f64[0]) = 0;
            std::vector<unsigned char>::push_back[abi:nn200100](a1, &v39);
            result = *v12;
            *v10 = *v12;
LABEL_35:
            *v16 = result;
          }
        }
      }
    }
  }

  return result;
}

void std::vector<unsigned char>::push_back[abi:nn200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

_DWORD *CA::Render::Path::new_path(CA::Render::Path *this, unsigned int a2, int a3)
{
  v5 = this;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_malloc(malloc_zone, (v5 + 1) + 16 * a2 + 160, 0x10F10403F876FEAuLL);
  if (result)
  {
    result[2] = 1;
    result[3] = 38;
    ++dword_1ED4EAAD0;
    *result = &unk_1EF1FBE10;
    result[4] = a3;
    result[5] = v5;
    result[6] = a2;
    *(result + 4) = result + 40;
    *(result + 5) = &result[4 * a2 + 40];
    *(result + 6) = 0;
    *(result + 13) = 0;
    *(result + 14) = 0;
  }

  return result;
}

void CA::Render::Interpolator::~Interpolator(CA::Render::Interpolator *this, const CA::Render::Object *a2)
{
  *this = &unk_1EF1F3D70;
  v3 = *(this + 5);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 4);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 3);
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 16))(v5);
  }

  v6 = *(this + 2);
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v6 + 16))(v6);
  }

  --dword_1ED4EAAA0;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v7 = malloc_zone;

  malloc_zone_free(v7, this);
}

{
  *this = &unk_1EF1F3D70;
  v3 = *(this + 5);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 4);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 3);
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 16))(v5);
  }

  v6 = *(this + 2);
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v6 + 16))(v6);
  }

  --dword_1ED4EAAA0;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

void _XImageQueueDidPresent(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 64)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 36);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    pthread_mutex_lock(&presented_mutex);
    v8 = presented_list;
    if (presented_list)
    {
      while (1)
      {
        v9 = *v8;
        if (*(*v8 + 7) == v4)
        {
          break;
        }

        v8 = v8[1];
        if (!v8)
        {
          goto LABEL_6;
        }
      }

      CFRetain(*v8);
      pthread_mutex_unlock(&presented_mutex);
      v10 = malloc_type_malloc(0x28uLL, 0x102004012755DA7uLL);
      *v10 = v9;
      v10[2] = v3;
      *(v10 + 2) = v5;
      *(v10 + 3) = v6;
      *(v10 + 4) = v7;
      if (CA::MachPortUtil::reply_queue(void)::once[0] != -1)
      {
        v11 = v10;
        dispatch_once(CA::MachPortUtil::reply_queue(void)::once, &__block_literal_global_10344);
        v10 = v11;
      }

      dispatch_async_f(CA::MachPortUtil::reply_queue(void)::queue, v10, invoke_presented_callback);
    }

    else
    {
LABEL_6:
      pthread_mutex_unlock(&presented_mutex);
    }

    *(a2 + 32) = 0;
  }
}

void __CADeviceSupportsLossyUniversalCompression_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    Value = CFDictionaryGetValue(v0, @"universal-lossy-buffer-compression");
    if (Value)
    {
      LOBYTE(Value) = CA_CFBoolValue(Value);
    }

    CADeviceSupportsLossyUniversalCompression::lossy = Value;

    CFRelease(v1);
  }
}

CA::Render::EmitterLayer *CA::Render::EmitterLayer::EmitterLayer(CA::Render::EmitterLayer *this, CA::Render::Decoder *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 15;
  ++dword_1ED4EAA74;
  *v4 = &unk_1EF1FE230;
  *(this + 2) = CA::Render::Decoder::decode_size_t(a2);
  *(this + 3) = 0;
  v6 = 14;
  *(this + 4) = CA::Render::Decoder::decode_array_object(a2, 1, &v6, 0);
  v6 = 13;
  *(this + 5) = CA::Render::Decoder::decode_array_object(a2, 1, &v6, 0);
  *(this + 6) = CA::Render::Decoder::decode_object(a2, 38);
  *(this + 7) = CA::Render::Decoder::decode_object(a2, 62);
  *(this + 16) = CA::Render::Decoder::decode_atom(a2);
  *(this + 17) = CA::Render::Decoder::decode_atom(a2);
  *(this + 18) = CA::Render::Decoder::decode_atom(a2);
  *(this + 38) = CA::Render::Decoder::decode_int32(a2);
  *(this + 20) = fmax(COERCE_DOUBLE(CA::Render::Decoder::decode_int64(a2)), 0.0);
  CA::Render::Decoder::decode_bytes(a2, this + 76, 0x4CuLL);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-emitter-layer.cpp", 380);
  return this;
}

CA::Render::EmitterCell *CA::Render::EmitterCell::EmitterCell(atomic_uint **this, CA::Render::Decoder *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 14;
  ++dword_1ED4EAA70;
  *v4 = &unk_1EF1FE338;
  this[2] = CA::Render::Decoder::decode_object(a2, 54);
  this[3] = CA::Render::Decoder::decode_object(a2, 6, &CA::Render::texture_types);
  this[4] = CA::Render::Decoder::decode_object(a2, 62);
  v9 = 14;
  this[5] = CA::Render::Decoder::decode_array_object(a2, 1, &v9, 0);
  v9 = 13;
  this[6] = CA::Render::Decoder::decode_array_object(a2, 1, &v9, 0);
  this[7] = CA::Render::Decoder::decode_object(a2, 58);
  *(this + 16) = CA::Render::Decoder::decode_atom(a2);
  *(this + 17) = CA::Render::Decoder::decode_atom(a2);
  CA::Render::Decoder::decode_bytes(a2, this + 9, 0xA0uLL);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-emitter-layer.cpp", 826);
  v5 = this[4];
  if (v5)
  {
    v6 = v5[4];
    if (v6 <= 3)
    {
      CA::Render::Decoder::set_fatal_error(a2, "%s - _contentsRect size %u", "EmitterCell", v6);
      v7 = this[4];
      if (v7)
      {
        if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v7 + 16))(v7);
        }

        this[4] = 0;
      }
    }
  }

  return this;
}

CA::Render::EmitterBehavior *CA::Render::EmitterBehavior::EmitterBehavior(CA::Render::EmitterBehavior *this, CA::Render::Decoder *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 13;
  ++dword_1ED4EAA6C;
  *v4 = &unk_1EF1FE418;
  *(this + 4) = CA::Render::Decoder::decode_atom(a2);
  *(this + 3) = CA::Render::Decoder::decode_object(a2, 54);
  v9 = 29;
  v5 = CA::Render::Decoder::decode_array_object(a2, 1, &v9, 0);
  if (v5)
  {
    v6 = v5 + 2;
    v7 = v5;
    if (!atomic_fetch_add(v5 + 2, 1u))
    {
      v7 = 0;
      atomic_fetch_add(v6, 0xFFFFFFFF);
    }

    *(this + 4) = v7;
    if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      (*(*v5 + 16))(v5);
    }
  }

  else
  {
    *(this + 4) = 0;
  }

  *(this + 5) = 0;
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-emitter-layer.cpp", 2479);
  return this;
}

void CA::OGL::Renderer::update_detached_layer(CA::OGL::Renderer *this, CA::Render::Handle *a2, CA::Render::Texture *a3, os_unfair_lock_s **a4, void *a5)
{
  v6 = *a4;
  if ((*(this + 106) & 1) == 0)
  {
    *(CA::OGL::Context::lookup_image(*a4, a3, 1) + 5) = v6[159];
    return;
  }

  v9 = *&v6[150]._os_unfair_lock_opaque;
  if (!*(this + 2) || (v11 = CA::Render::Handle::lock_context(this)) == 0)
  {
    v19 = 0;
    goto LABEL_10;
  }

  v15 = v11;
  v16 = *(this + 2);
  if (v16)
  {
    v17 = *(v16 + 104);
    if (v17)
    {
      v18 = v17 + 2;
      if (!atomic_fetch_add(v17 + 2, 1u))
      {
        v17 = 0;
        atomic_fetch_add(v18, 0xFFFFFFFF);
      }
    }
  }

  else
  {
    v17 = 0;
  }

  v21 = *(this + 5);
  if (v21)
  {
    v22 = CA::Render::LayerNode::clear_above_and_black_below(v21, 0, v13, v14);
  }

  else
  {
    v22 = 0;
  }

  v19 = *(v15 + 384);
  if (v19)
  {
    atomic_fetch_add((v19 + 16), 1u);
  }

  CA::Render::Handle::unlock_context(v15, v12);
  if (!v17)
  {
    v25 = 0;
    v24 = 0;
    if (!v19)
    {
      goto LABEL_47;
    }

LABEL_39:
    if (!v24)
    {
      v36 = v22;
      v28 = *(v19 + 48);
      if (v25 == v28)
      {
        v28 = v25;
        if (v25)
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v17 && atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v25 + 16))(v25);
        }

        if (v28)
        {
          if (!atomic_fetch_add(v28 + 2, 1u))
          {
            v17 = 0;
            atomic_fetch_add(v28 + 2, 0xFFFFFFFF);
            goto LABEL_11;
          }

LABEL_50:
          v24 = (*(*v28 + 80))(v28);
          v17 = v28;
          v22 = v36;
          if (!v24)
          {
            goto LABEL_11;
          }

          goto LABEL_51;
        }
      }

LABEL_10:
      v17 = 0;
      goto LABEL_11;
    }

LABEL_47:
    v17 = v25;
    if (!v24)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

  v23 = (*(*v17 + 80))(v17);
  if (!v23)
  {
    v26 = *(v17 + 12);
    if (v26 == 26)
    {
      v23 = (*(**(v17 + 4) + 80))(*(v17 + 4));
      if (v23)
      {
        goto LABEL_28;
      }

      v26 = *(v17 + 12);
    }

    if (v26 == 25 && (v27 = *(v17 + 4)) != 0)
    {
      v24 = (*(**(v27 + 32) + 80))(*(v27 + 32));
    }

    else
    {
      v24 = 0;
    }

    v25 = v17;
    if (!v19)
    {
      goto LABEL_47;
    }

    goto LABEL_39;
  }

LABEL_28:
  v24 = v23;
LABEL_51:
  if (*(v24 + 4) == *(a3 + 4) && *(v24 + 5) == *(a3 + 5))
  {
    v29 = CA::OGL::Context::lookup_image(v6, v24, 1);
    v30 = (*(*v9 + 24))(v9, v6, v29, v24);
    if (v30)
    {
      *(v29 + 5) = v6[159];
    }

    v31 = *(v24 + 3);
    v32 = (v31 >> 8) & 0x200;
    v33 = (v31 >> 20) & 0x20 | (v31 >> 13) & 0x4000 | (v31 >> 15) & 0x800 | v32;
    if (*(v24 + 3) != 57)
    {
      v33 = v32;
    }

    if (v22)
    {
      if ((~a4[1][76]._os_unfair_lock_opaque & 0xC0) != 0)
      {
        v34 = 256;
      }

      else
      {
        v34 = 4352;
      }

      v33 |= v34;
    }

    if (v17)
    {
      if (*(v17 + 12) == 25)
      {
        v35 = atomic_load((*(*(v17 + 2) + 24) + 8));
        v33 |= (v35 >> 35) & 0x8000;
        if (v17[138] == v6[159]._os_unfair_lock_opaque)
        {
          v33 |= 0x2000u;
        }
      }
    }

    (*(*v9 + 64))(v9, this, a2, v24, v30, (*&a4[1][344]._os_unfair_lock_opaque >> 36) & 0x10000 | v33);
    *(this + 13) &= ~0x10000uLL;
    LOWORD(v6[346]._os_unfair_lock_opaque) |= 0x100u;
    if (!v17)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_11:
  (*(*v9 + 56))(v9, this, a2);
  *(this + 13) &= ~0x8000uLL;
  if (v17)
  {
LABEL_12:
    if (atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v17 + 16))(v17);
    }
  }

LABEL_14:
  if (v19 && atomic_fetch_add((v19 + 16), 0xFFFFFFFF) == 1)
  {

    CA::Render::LayerNode::delete_node(v19, v20);
  }
}

uint64_t CA::Render::EmitterLayer::commit_layer(uint64_t this, CA::Render::Context *a2, CA::Render::Layer *a3, CA::Render::Handle *a4)
{
  if (!*(this + 24))
  {
    v5 = this;
    v6 = *(this + 16);
    os_unfair_lock_lock(&CA::Render::EmitterState::_list_lock);
    v7 = CA::Render::EmitterState::_list;
    if (CA::Render::EmitterState::_list)
    {
      do
      {
        if (*(v7 + 13) == a2 && *(v7 + 12) == v6)
        {
          if (atomic_fetch_add(v7 + 2, 1u))
          {
            goto LABEL_11;
          }

          atomic_fetch_add(v7 + 2, 0xFFFFFFFF);
        }

        v7 = *(v7 + 2);
      }

      while (v7);
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v7 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xB8uLL, 0xDEEC3011uLL);
    *(v7 + 120) = 0u;
    *(v7 + 168) = 0u;
    *(v7 + 152) = 0u;
    *(v7 + 136) = 0u;
    *(v7 + 104) = 0u;
    *(v7 + 88) = 0u;
    *(v7 + 72) = 0u;
    *(v7 + 56) = 0u;
    *(v7 + 40) = 0u;
    *(v7 + 24) = 0u;
    *(v7 + 2) = 1;
    *(v7 + 3) = 16;
    ++dword_1ED4EAA78;
    *v7 = &unk_1EF1FE3A8;
    *(v7 + 6) = 0;
    *(v7 + 19) = 0;
    *(v7 + 20) = 0;
    *(v7 + 18) = 0;
    *(v7 + 12) = v6;
    *(v7 + 13) = a2;
    *(v7 + 2) = CA::Render::EmitterState::_list;
    CA::Render::EmitterState::_list = v7;
LABEL_11:
    os_unfair_lock_unlock(&CA::Render::EmitterState::_list_lock);
    this = *(v5 + 24);
    *(v5 + 24) = v7;
    if (this)
    {
      if (atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
      {
        this = (*(*this + 16))(this);
      }

      v7 = *(v5 + 24);
    }

    if (!*(v7 + 7))
    {
      *(v7 + 7) = *(v5 + 152);
    }
  }

  return this;
}

void CA::Render::EmitterLayer::update(CA::Render::EmitterLayer *this@<X0>, CA::Render::Update *a2@<X1>, double a3@<D0>, double a4@<D1>, uint64_t a5@<X8>, double a6@<D2>)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!*(this + 3) || (*(a2 + 344) & 1) != 0)
  {
    v9 = INFINITY;
    goto LABEL_52;
  }

  v10 = a4;
  v13 = *(a2 + 24);
  if (v13)
  {
    v14 = *(this + 20);
    if (v14 == 0.0)
    {
      if (CAPrefers60HzAPT(void)::once != -1)
      {
        dispatch_once(&CAPrefers60HzAPT(void)::once, &__block_literal_global_3);
      }

      LODWORD(a6) = 1123024896;
      LODWORD(v14) = 1114636288;
      if (!CAPrefers60HzAPT(void)::enabled)
      {
        *&v14 = 120.0;
      }

      LODWORD(a4) = 1117782016;
      if (CAPrefers60HzAPT(void)::enabled)
      {
        *&a6 = 0.0;
      }

      else
      {
        *&a4 = 120.0;
      }

      v13 = *(a2 + 24);
      goto LABEL_28;
    }

    HIDWORD(a4) = 1065982361;
    if (v14 == 0.0125)
    {
      goto LABEL_15;
    }

    if (v14 >= 0.0)
    {
      v16 = 0x3F8999999999999ALL - *&v14;
      if (*&v14 - 0x3F8999999999999ALL >= 0)
      {
        v16 = *&v14 - 0x3F8999999999999ALL;
      }

      if (v16 <= 3)
      {
LABEL_15:
        v15 = 1117782016;
LABEL_27:
        LODWORD(v14) = v15;
        LODWORD(a4) = v15;
        LODWORD(a6) = v15;
LABEL_28:
        [v13 addFrameRateRange:{v14, a4, a6}];
        goto LABEL_29;
      }

      HIDWORD(a4) = 1065423121;
      if (v14 != 0.00833333333)
      {
        v17 = 0x3F81111111111111 - *&v14;
        if (*&v14 - 0x3F81111111111111 >= 0)
        {
          v17 = *&v14 - 0x3F81111111111111;
        }

        if (v17 > 3)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      HIDWORD(a4) = 1065423121;
      if (v14 != 0.00833333333)
      {
        goto LABEL_29;
      }
    }

    v15 = 1123024896;
    goto LABEL_27;
  }

LABEL_29:
  v18 = *(this + 3);
  v27 = INFINITY;
  v19 = *(this + 20) + v10 * -0.00416666667;
  os_unfair_lock_lock((v18 + 24));
  v20 = *(v18 + 88);
  if (vabdd_f64(a3, v20) <= v19)
  {
    v9 = v20 + v19;
  }

  else
  {
    *(v18 + 80) = 0;
    *(v18 + 32) = CA::Volume::null;
    *(v18 + 48) = unk_183E317B0;
    *(v18 + 64) = xmmword_183E317C0;
    if (v20 != a3)
    {
      *(v18 + 129) = v20 < a3;
    }

    *(v18 + 168) = 0;
    *(v18 + 136) = this;
    v28 = 0u;
    v29 = 0u;
    v21 = *(this + 33);
    v22 = *(this + 36);
    if ((*(this + 32) & 0x7FFFFFFFu) < 0x7F800000 || (*(this + 33) & 0x7FFFFFFFu) <= 0x7F7FFFFF || (*(this + 36) & 0x7FFFFFFFu) <= 0x7F7FFFFF || (*(this + 37) & 0x7FFFFFFFu) < 0x7F800000 || (*(this + 35) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      LODWORD(v28) = *(this + 32);
      *(&v28 + 4) = __PAIR64__(v22, v21);
      *&v29 = *(this + 17);
      DWORD2(v29) = *(this + 37);
      v23 = &v28;
    }

    else
    {
      v23 = 0;
    }

    v24 = *(v18 + 144);
    *(v18 + 176) = v23;
    if (*(v18 + 152) != v24)
    {
      *(v18 + 152) = v24;
    }

    *(v18 + 128) = CA::Render::EmitterState::update_cells(v18, &v27, *(this + 4), v18 + 112, 0, a3, *(this + 19));
    if ((*(this + 13) & 1) == 0)
    {
      *(v18 + 72) = 0;
      *(v18 + 48) = 0;
    }

    v25 = *(v18 + 144);
    if (*(v18 + 152) != v25)
    {
      *(v18 + 152) = v25;
    }

    *(v18 + 136) = 0;
    *(v18 + 176) = 0;
    *(v18 + 88) = a3;
    v26 = v19 + a3;
    if (v27 > v19 + a3)
    {
      v26 = v27;
    }

    if (*(this + 20) == 0.0)
    {
      v9 = v27;
    }

    else
    {
      v9 = v26;
    }
  }

  os_unfair_lock_unlock((v18 + 24));
LABEL_52:
  *a5 = v9;
  *(a5 + 8) = vdupq_n_s64(0x400000000uLL);
}

void CA::OGL::emit_n_part_rect_occluded(CA::OGL::Context *a1, uint64_t a2, int a3, int a4, float64_t *a5, uint64_t a6, __int32 *a7, uint64_t a8, __int32 *a9, uint64_t a10, unint64_t a11)
{
  v90 = a2;
  v93 = *MEMORY[0x1E69E9840];
  if (a3 <= 8 && a4 < 9)
  {
    v83 = a3;
    v87 = a3 + 1;
    v85 = (a4 + 1);
    v17 = (v85 * v87);
    v86 = *(a1 + 17);
    v89 = a1;
    v82 = *(a1 + 19);
    if (v17 <= v82)
    {
      v84 = (v85 * v87);
      v88 = (a4 * a3);
      MEMORY[0x1EEE9AC00](a1);
      v23 = &v82 - v22;
      bzero(&v82 - v22, v24);
      MEMORY[0x1EEE9AC00](v25);
      v88 = (&v82 - v26);
      bzero(&v82 - v26, v27);
      v19 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = v86;
    }

    else
    {
      v18 = malloc_type_malloc(80 * v17 + 8 * (a4 * a3), 0x10000403C748740uLL);
      if (!v18)
      {
        return;
      }

      v19 = &v18[3 * v17];
      v88 = &v19[2 * v17];
      v20 = v89;
      *(v89 + 17) = v18;
      v84 = v17;
      *(v20 + 19) = v17;
      v21 = v18;
    }

    v28 = v85;
    if ((a4 & 0x80000000) == 0)
    {
      v29 = 0;
      v30 = v87;
      v31 = &v19->f64[1];
      v32 = 32 * v87;
      v33 = &v21[1].i32[3];
      v34 = 48 * v87;
      do
      {
        v35 = v33;
        v36 = v31;
        v37 = a5;
        v38 = a7;
        v39 = a9;
        v40 = v30;
        if ((a3 & 0x80000000) == 0)
        {
          do
          {
            *(v36 - 1) = *v37;
            *v36 = *(a6 + 8 * v29);
            *(v36 + 1) = xmmword_183E20E60;
            if (a7)
            {
              *(v35 - 3) = *v38;
              *(v35 - 2) = *(a8 + 4 * v29);
            }

            if (a9)
            {
              *(v35 - 1) = *v39;
              *v35 = *(a10 + 4 * v29);
            }

            ++v39;
            ++v38;
            ++v37;
            v36 += 4;
            v35 += 12;
            --v40;
          }

          while (v40);
        }

        ++v29;
        v31 = (v31 + v32);
        v33 = (v33 + v34);
      }

      while (v29 != v28);
    }

    if (a3 <= 0)
    {
      v42 = a4 - 1;
      v45 = v88;
      v43 = v87;
      v46 = v84;
    }

    else
    {
      v41 = 0;
      v42 = a4 - 1;
      v43 = v87;
      v44 = (a4 - 1) * v87;
      v45 = v88;
      v46 = v84;
      do
      {
        if (((a11 >> v41) & 1) == 0)
        {
          *v45 = v41;
          v45[1] = v41 + 1;
          v45[2] = a3 + v41 + 2;
          v45[3] = a3 + v41 + 1;
          v45 += 4;
        }

        if (a4 >= 2 && ((a11 >> ((a4 - 1) * a3 + v41)) & 1) == 0)
        {
          *v45 = v44 + v41;
          v45[1] = v44 + v41 + 1;
          v45[2] = v43 * a4 + v41 + 1;
          v45[3] = v43 * a4 + v41;
          v45 += 4;
        }

        ++v41;
      }

      while (a3 != v41);
    }

    if (a4 < 3)
    {
      v53 = v45;
    }

    else
    {
      v47 = 0;
      v48 = v42 - 1;
      v49 = 2 * a3;
      v50 = a3;
      v51 = 3 * a3;
      do
      {
        if (((a11 >> v50) & 1) == 0)
        {
          *v45 = v43 + v47;
          v45[1] = v43 + v47 + 1;
          v45[2] = v49 + v47 + 3;
          v45[3] = v49 + v47 + 2;
          v45 += 4;
        }

        if (a3 >= 2 && ((a11 >> (a3 - 1 + v50)) & 1) == 0)
        {
          *v45 = v49 + v47;
          v45[1] = v49 + v47 + 1;
          v45[2] = v51 + v47 + 2;
          v45[3] = v51 + v47 + 1;
          v45 += 4;
        }

        v47 += v43;
        v50 += a3;
        --v48;
      }

      while (v48);
      v52 = 1;
      v53 = v45;
      do
      {
        if (a3 <= 2)
        {
          ++v52;
        }

        else
        {
          v54 = v52 * a3;
          v55 = v52++ * v43;
          v56 = 1;
          v57 = v52 * v43;
          do
          {
            if ((a11 >> (v56 + v54)))
            {
              ++v56;
            }

            else
            {
              *v53 = v56 + v55;
              v58 = v56++ + v57;
              v53[1] = v56 + v55;
              v53[2] = v56 + v57;
              v53[3] = v58;
              v53 += 4;
            }
          }

          while (v56 != a3 - 1);
        }
      }

      while (v52 != v42);
    }

    v59 = v90;
    if (v46)
    {
      v60 = *(*(v89 + 2) + 8);
      v61 = (v46 + 1) & 0x1FFFFFFFELL;
      v62 = vdupq_n_s64(v46 - 1);
      v63 = xmmword_183E20FF0;
      v64 = v21 + 5;
      v65 = vdupq_n_s64(2uLL);
      do
      {
        v66 = vmovn_s64(vcgeq_u64(v62, v63));
        if (v66.i8[0])
        {
          v64[-3].i64[0] = v60;
        }

        if (v66.i8[4])
        {
          v64->i64[0] = v60;
        }

        v63 = vaddq_s64(v63, v65);
        v64 += 6;
        v61 -= 2;
      }

      while (v61);
    }

    v67 = *(v59 + 24);
    if (v67)
    {
      v68 = v19;
      v67(v59, v19, v21, v46);
      v19 = v68;
    }

    CA::OGL::transform_vertices(v19, v21, v46, *(v59 + 8));
    v69 = *(v59 + 32);
    if (v69)
    {
      v69(v59, v21, v46);
    }

    v70 = *(v59 + 20);
    if ((v70 & 0xF) == 0 || (*(v59 + 16) & 9) == 0)
    {
      goto LABEL_67;
    }

    if ((v70 & 4) != 0)
    {
      CA::OGL::aa_adjust_vertices(v21, &v21[3 * v43], 48, v43);
      v70 = *(v59 + 20);
      if ((v70 & 8) == 0)
      {
LABEL_64:
        if ((v70 & 1) == 0)
        {
          goto LABEL_65;
        }

        goto LABEL_74;
      }
    }

    else if ((v70 & 8) == 0)
    {
      goto LABEL_64;
    }

    CA::OGL::aa_adjust_vertices(&v21[3 * v43 * a4], &v21[3 * (v42 * v43)], 48, v43);
    v70 = *(v59 + 20);
    if ((v70 & 1) == 0)
    {
LABEL_65:
      if ((v70 & 2) == 0)
      {
LABEL_67:
        v71 = v89;
        v72 = CA::OGL::Context::need_transparent_source(v89);
        CA::OGL::emit_mesh_with_center(v71, v59, v88, v53 - v88, v53 - v45, v46, 0);
        if (v72)
        {
          v73 = vcvtq_f64_f32(*&v21->u32[2]);
          v92[0] = vcvtq_f64_f32(*v21->f32);
          v92[1] = v73;
          v74 = &v21[3 * v83];
          v75 = vcvtq_f64_f32(v74[1]);
          v92[2] = vcvtq_f64_f32(*v74);
          v92[3] = v75;
          v76 = &v21[3 * v43 * a4 + 3 * a3];
          v77 = vcvtq_f64_f32(v76[1]);
          v92[4] = vcvtq_f64_f32(*v76);
          v92[5] = v77;
          v78 = &v21[3 * v43 * a4];
          v79 = vcvtq_f64_f32(v78[1]);
          v92[6] = vcvtq_f64_f32(*v78);
          v92[7] = v79;
          v91 = 0;
          CA::OGL::emit_quad_surround(v89, v92, &v91);
        }

        if (v21 != v86)
        {
          v80 = v82;
          v81 = v89;
          *(v89 + 17) = v86;
          *(v81 + 19) = v80;
          free(v21);
        }

        return;
      }

LABEL_66:
      CA::OGL::aa_adjust_vertices(&v21[3 * v83], &v21[3 * v83 - 3], 48 * v43, v85);
      goto LABEL_67;
    }

LABEL_74:
    CA::OGL::aa_adjust_vertices(v21, v21 + 3, 48 * v43, v85);
    if ((*(v59 + 20) & 2) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  CA::OGL::emit_n_part_rect(a1, v90, a3, a4, a5, a6, a7, a8, a9, a10, 0);
}

uint64_t CA::Render::EmitterLayer::get_bounds(CA::Render::EmitterLayer *this, const CA::Render::Layer *a2, int64x2_t *a3, CA::Rect *a4)
{
  v4 = *(this + 3);
  if (!v4 || !*(v4 + 124))
  {
    return 0;
  }

  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = *(v4 + 56) - v5;
  v8 = *(v4 + 64) - v6;
  if (v7 >= v8)
  {
    v9 = *(v4 + 64) - v6;
  }

  else
  {
    v9 = *(v4 + 56) - v5;
  }

  if (v9 > 0.0)
  {
    if (v7 <= v8)
    {
      v10 = *(v4 + 64) - v6;
    }

    else
    {
      v10 = *(v4 + 56) - v5;
    }

    if (v10 >= 1.79769313e308)
    {
      *a3 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      a3[1] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      if (!a4)
      {
        return 1;
      }
    }

    else
    {
      *a3->i64 = v5;
      *&a3->i64[1] = v6;
      *a3[1].i64 = v7;
      *&a3[1].i64[1] = v8;
      if (!a4)
      {
        return 1;
      }
    }

    goto LABEL_15;
  }

  *a3 = 0u;
  a3[1] = 0u;
  if (a4)
  {
LABEL_15:
    *a4 = 0u;
    *(a4 + 1) = 0u;
  }

  return 1;
}

uint64_t CA::OGL::emitter_cells_have_offscreens(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = 8 * v1;
      for (i = result + 24; (*(*i + 13) & 4) == 0 && !CA::OGL::emitter_cells_have_offscreens(*(*i + 40)); i += 8)
      {
        v2 -= 8;
        if (!v2)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CA::OGL::prepare_layer_image(CA::OGL::Renderer &,CA::OGL::Layer *,CA::OGL::Gstate const&)::visitor::visit_subclass(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = **(a1 + 8);
  if (*(a2 + 13))
  {
    v3[4] |= 0x2000000uLL;
  }

  v5 = *(a2 + 24);
  if (v5 && *(v5 + 124))
  {
    v6 = v3[4];
    v3[4] = v6 | 0x2000;
    v7 = *(a2 + 72);
    if (v7 > 511)
    {
      if (v7 == 512 || v7 == 624)
      {
LABEL_17:
        v3[4] = v6 | 0x802000;
        v10 = v3;
LABEL_18:
        *(v10 + 97) |= 0x8000000u;
        goto LABEL_19;
      }
    }

    else
    {
      if ((v7 - 92) < 4)
      {
        goto LABEL_19;
      }

      if (v7 == 3)
      {
        if (!(*(*v4 + 232))(v4, 33) || (v8 = v3[2]) != 0 && (*(v8 + 25) & 4) != 0)
        {
          v9 = 12;
        }

        else
        {
          v9 = 60;
        }

        v10 = v3;
        while (v9 == *(v10[22] + 136))
        {
          v10 = *v10;
          if (!v10)
          {
            goto LABEL_19;
          }
        }

        v10[4] |= 0x800000uLL;
        goto LABEL_18;
      }
    }

    if ((v6 & 4) != 0 && (v4[872] & 4) == 0 || (v6 & 0x100000) != 0)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  result = CA::OGL::emitter_cells_have_offscreens(*(a2 + 32));
  if (result)
  {
    *(v3[22] + 236) |= 0x200000u;
  }

  return result;
}

uint64_t CA::Shape::coalesce(CA::Shape *this, CA::Bounds *a2, unint64_t a3)
{
  v53[3] = *MEMORY[0x1E69E9840];
  v4 = a3 - 1;
  if (a3 == 1)
  {
LABEL_53:
    CA::Shape::get_bounds(this, a2);
    return 1;
  }

  v6 = 0;
  v52 = 0uLL;
  v53[1] = 0;
  v53[2] = 0;
  v53[0] = this;
  if (a3 + 1 > 2)
  {
    v7 = a3 + 1;
  }

  else
  {
    v7 = 2;
  }

  v51 = a3 - 2;
  v49 = this;
  v50 = a2 + 32;
  v8 = -1;
  while ((CA::ShapeIterator::iterate(v53, &v52) & 1) != 0)
  {
    if (v6 < a3)
    {
      *(a2 + v6++) = v52;
      ++v8;
      continue;
    }

    v10 = 0;
    v11 = 0uLL;
    v12 = 1;
    v9.f64[0] = INFINITY;
    do
    {
      if (a3)
      {
        v13 = a2 + 28;
        v14 = 1;
        while (2)
        {
          v15 = (v13 - 12);
          if (v14 >= a3)
          {
            v15 = &v52;
          }

          v16 = *(v13 - 6);
          if (v12)
          {
            v17 = v15->i32[1];
            if (v16 != v17)
            {
              v18 = v14 >= a3 ? (&v52 | 0xC) : v13;
              if (*(v13 - 4) + v16 != *v18 + v17)
              {
                goto LABEL_34;
              }
            }
          }

          v19 = *(v13 - 7);
          v20 = *(v13 - 20);
          v21.i32[0] = v19;
          v21.i32[1] = *(v13 - 6);
          v21.u64[1] = v20;
          v22 = v15[1];
          v23 = vclez_s32(v20);
          v24 = vpmax_u32(v23, v23).u32[0];
          v25 = vclez_s32(v22);
          v26 = vpmax_u32(v25, v25).u32[0];
          if ((v24 & 0x80000000) != 0)
          {
            if ((v26 & 0x80000000) == 0)
            {
              v27 = vextq_s8(v21, v21, 8uLL);
              *v28.i8 = *v15;
LABEL_24:
              v28.i64[1] = __PAIR64__(v27.u32[1], v22.u32[0]);
              v21 = v28;
              v21.i32[3] = v22.i32[1];
            }
          }

          else if ((v26 & 0x80000000) == 0)
          {
            v27 = vextq_s8(v21, v21, 8uLL);
            *v28.i8 = vmin_s32(__PAIR64__(v16, v19), *v15);
            v22 = vsub_s32(vmax_s32(vadd_s32(__PAIR64__(v16, v19), v20), vadd_s32(*v15, v22)), *v28.i8);
            goto LABEL_24;
          }

          if (v14 >= a3)
          {
            v29 = (&v52 | 0xC);
          }

          else
          {
            v29 = v13;
          }

          v30 = vextq_s8(v21, v21, 8uLL);
          *&v30.f64[0] = vmul_s32(vzip2_s32(*&v30.f64[0], v20), vzip1_s32(*&v30.f64[0], v20));
          v30.f64[0] = ((LODWORD(v30.f64[0]) - (HIDWORD(v30.f64[0]) + *v29 * *&v15[1])) & ~((LODWORD(v30.f64[0]) - (HIDWORD(v30.f64[0]) + *v29 * *&v15[1])) >> 31));
          if ((v24 & 0x80000000) == 0)
          {
            v31 = v15[1];
            v32 = vclez_s32(v31);
            if ((vpmax_u32(v32, v32).u32[0] & 0x80000000) == 0)
            {
              v33 = vclez_s32(vsub_s32(vmin_s32(vadd_s32(*(v13 - 28), v20), vadd_s32(*v15, v31)), vmax_s32(*(v13 - 28), *v15)));
              if (vpmax_u32(v33, v33).i32[0] >= 0)
              {
                v30.f64[0] = 0.0;
              }
            }
          }

          v11 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(v9, v30).i64[0], 0), v21, v11);
          if (v30.f64[0] < v9.f64[0])
          {
            v10 = v14 - 1;
            v9.f64[0] = v30.f64[0];
          }

LABEL_34:
          ++v14;
          v13 += 16;
          if (v7 == v14)
          {
            break;
          }

          continue;
        }
      }

      v34 = (v9.f64[0] == INFINITY) & v12;
      v12 = 0;
    }

    while ((v34 & 1) != 0);
    *(a2 + v10) = v11;
    if (v10 != v4)
    {
      if (v10 + 2 < a3)
      {
        v35 = v51 - v10;
        v36 = &v50[16 * v10];
        do
        {
          *(v36 - 1) = *v36;
          v36 += 16;
          --v35;
        }

        while (v35);
      }

      *(a2 + v4) = v52;
    }
  }

  if (v6)
  {
    v37 = 0;
    v38 = (a2 + 24);
    while (1)
    {
      v39 = v37 + 1;
      if (v37 + 1 < v6)
      {
        break;
      }

LABEL_50:
      v38 += 2;
      --v8;
      v37 = v39;
      if (v39 == v6)
      {
        return v6;
      }
    }

    v40 = (a2 + 16 * v37);
    v41 = v40[1];
    v42 = vclez_s32(v41);
    v43 = vpmax_u32(v42, v42).u32[0];
    v44 = v8;
    v45 = v38;
    while (1)
    {
      if ((v43 & 0x80000000) == 0)
      {
        v46 = vclez_s32(*v45);
        if ((vpmax_u32(v46, v46).u32[0] & 0x80000000) == 0)
        {
          v47 = vclez_s32(vsub_s32(vmin_s32(vadd_s32(*v40, v41), vadd_s32(v45[-1], *v45)), vmax_s32(*v40, v45[-1])));
          if ((vpmax_u32(v47, v47).u32[0] & 0x80000000) == 0)
          {
            break;
          }
        }
      }

      v45 += 2;
      if (!--v44)
      {
        goto LABEL_50;
      }
    }

    this = v49;
    goto LABEL_53;
  }

  return v6;
}

void CA::OGL::anonymous namespace::tile_rect_tex9_(unint64_t a1, uint64_t *a2, uint64_t a3, double *a4, float *a5, double *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *(*a2 + 16);
  if (v7 > 0.0)
  {
    v8 = v6[3];
    if (v8 > 0.0)
    {
      v16 = *v6;
      v15 = v6[1];
      v24 = 0.0;
      v25 = 0.0;
      CA::Transform::get_scale_recip(a2[1], &v25, &v24);
      memset(v29, 0, sizeof(v29));
      memset(v28, 0, sizeof(v28));
      v27[0] = 0.0;
      v27[1] = 0.0;
      v26[0] = 0.0;
      v26[1] = 0.0;
      v18 = *(a1 + 16);
      v19 = *(v18 + 16) & 0xFFFFFF00FF00FF00;
      if (*(v18 + 8) == 0x3C003C003C003C00)
      {
        v20 = 1;
      }

      else
      {
        v20 = 3;
      }

      *(v18 + 16) = v20 | v19;
      *(v18 + 20) = HIDWORD(v19);
      *(*(a1 + 16) + 16) = 0;
    }
  }
}

BOOL CA::Shape::rect_count(CA::Shape *this)
{
  if (this)
  {
    return this != 1;
  }

  v1 = *(this + 1);
  if (v1 == 6)
  {
    return 0;
  }

  if (v1 == 12)
  {
    return 1;
  }

  v4 = *(this + 3);
  v3 = (this + 12);
  if (v4 == 0x7FFFFFFF)
  {
    return 0;
  }

  LODWORD(v2) = 0;
  do
  {
    v5 = v3[1];
    v2 = (v2 + ((v5 - 2) >> 1));
    v3 += v5;
  }

  while (*v3 != 0x7FFFFFFF);
  return v2;
}

void CA::OGL::anonymous namespace::tile_n_part_rect(unint64_t a1, uint64_t a2, float *a3, double *a4, unsigned int a5, unsigned int a6, float64_t *a7, uint64_t a8, __int32 *a9, uint64_t a10)
{
  v86 = *MEMORY[0x1E69E9840];
  v10 = *(*a2 + 16) * (a3[2] - *a3);
  v11 = -v10;
  if (v10 >= 0.0)
  {
    v11 = *(*a2 + 16) * (a3[2] - *a3);
  }

  if (v11 > 0.0)
  {
    v12 = (a3[3] - a3[1]);
    v13 = *(*a2 + 24) * v12;
    v14 = -v13;
    if (v13 >= 0.0)
    {
      v14 = *(*a2 + 24) * v12;
    }

    if (v14 > 0.0)
    {
      v73 = a2;
      v16 = 0;
      v81 = (a5 >> 1) + 1;
      v78 = &a7[v81];
      v79 = a7;
      v17 = *v78;
      v18 = a5 >> 1;
      v74 = (a6 >> 1) + 1;
      v75 = &a7[v18];
      v19 = a4[1];
      *&v20 = (v17 - *v75) * *a4 / v11;
      v82 = (a8 + 8 * v74);
      v83 = a8;
      v21 = *v82;
      v22 = a6 >> 1;
      v80 = (a8 + 8 * v22);
      v23 = (v21 - *v80) * v19 / v14;
      v85[0] = 0;
      v85[1] = v20;
      v84[0] = 0;
      *&v84[1] = v23;
      v76 = a6;
      v77 = a5;
      v24 = a5 + 1;
      v25 = 1.1755e-38;
      v26 = 3.4028e38;
      v27 = a6 + 1;
      do
      {
        v28 = *&a9[v16];
        if (v26 >= v28)
        {
          v26 = *&a9[v16];
        }

        if (v25 <= v28)
        {
          v25 = *&a9[v16];
        }

        ++v16;
      }

      while (v24 != v16);
      v29 = 0;
      v30 = 1.1755e-38;
      v31 = 3.4028e38;
      do
      {
        v32 = *(a10 + 4 * v29);
        if (v31 >= v32)
        {
          v31 = *(a10 + 4 * v29);
        }

        if (v30 <= v32)
        {
          v30 = *(a10 + 4 * v29);
        }

        ++v29;
      }

      while (v27 != v29);
      v33 = 0.0;
      v34 = 1.0;
      if (v26 >= 0.0 && v25 <= 1.0)
      {
        v37 = 0;
        v39 = 1.0;
        v26 = 0.0;
      }

      else
      {
        MEMORY[0x1EEE9AC00](a1);
        v37 = (&v69 - ((v36 + 15) & 0x7FFFFFFF0));
        bzero(v37, v36);
        v38 = 0;
        v39 = v25 - v26;
        do
        {
          *&v37[v38] = (*&a9[v38] - v26) * (1.0 / v39);
          ++v38;
        }

        while (v24 != v38);
      }

      if (v31 >= 0.0 && v30 <= 1.0)
      {
        v42 = 0;
      }

      else
      {
        MEMORY[0x1EEE9AC00](a1);
        v42 = &v69 - ((v41 + 15) & 0x7FFFFFFF0);
        bzero(v42, v41);
        v43 = 0;
        v34 = v30 - v31;
        do
        {
          *&v42[4 * v43] = (*(a10 + 4 * v43) - v31) * (1.0 / (v30 - v31));
          ++v43;
        }

        while (v27 != v43);
        v33 = v31;
      }

      *(*(a1 + 16) + 19) = 3;
      v44 = &a9[v81];
      v70 = v18;
      v45 = *&a9[v18];
      v46 = *v44;
      v72 = v44;
      v47 = v74;
      v71 = (a10 + 4 * v74);
      v48 = *(a10 + 4 * v22);
      v49 = *v71 - v48;
      v50 = *(a1 + 16);
      v50[96] = v46 - v45;
      v50[97] = v49;
      v50[98] = v45;
      v50[99] = v48;
      v51 = v73;
      v52 = v75;
      CA::OGL::emit_n_part_rect(a1, v73, 1, 1, v75, v80, v85, v84, 0, 0, 0);
      v53 = *v44;
      v54 = v70;
      v55 = *&a9[v70];
      v56 = *(a1 + 16);
      v56[96] = v53 - v55;
      v56[97] = v34;
      v56[98] = v55;
      v56[99] = v33;
      if (!v42)
      {
        v42 = a10;
      }

      CA::OGL::emit_n_part_rect(a1, v51, 1, v22, v52, v83, v85, v42, 0, 0, 0);
      CA::OGL::emit_n_part_rect(a1, v51, 1, v76 - v47, v52, v82, v85, &v42[4 * v47], 0, 0, 0);
      v57 = v71;
      v58 = *(a10 + 4 * v22);
      v59 = *v71 - v58;
      v60 = *(a1 + 16);
      v60[96] = v39;
      v60[97] = v59;
      v60[98] = v26;
      v60[99] = v58;
      if (!v37)
      {
        v37 = a9;
      }

      v62 = v79;
      v61 = v80;
      CA::OGL::emit_n_part_rect(a1, v51, v54, 1, v79, v80, v37, v84, 0, 0, 0);
      v63 = &v37[v81];
      v64 = v78;
      CA::OGL::emit_n_part_rect(a1, v51, v77 - v81, 1, v78, v61, v63, v84, 0, 0, 0);
      *(*(a1 + 16) + 19) = 0;
      v65 = v83;
      CA::OGL::emit_n_part_rect(a1, v51, v54, v22, v62, v83, a9, a10, 0, 0, 0);
      v66 = v65;
      v67 = v72;
      CA::OGL::emit_n_part_rect(a1, v51, v54, v22, v64, v66, v72, a10, 0, 0, 0);
      v68 = v82;
      CA::OGL::emit_n_part_rect(a1, v51, v54, v22, v62, v82, a9, v57, 0, 0, 0);
      CA::OGL::emit_n_part_rect(a1, v51, v54, v22, v64, v68, v67, v57, 0, 0, 0);
    }
  }
}

float16x4_t *CA::OGL::render_emitter_cells(float16x4_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v191 = a3;
  v214 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = a5;
    if (*(a4 + 16) == *(a5 + 8))
    {
      v6 = result;
      v7 = *result;
      *(*(*result + 16) + 16) = 3;
      if (*(a5 + 8))
      {
        v8 = a2;
        v9 = 0;
        v10 = a4 + 24;
        v171 = *(*(a2 + 16) + 24);
        v185 = v7 + 1386;
        v183 = &v210.i64[1];
        __asm { FMOV            V0.4S, #1.0 }

        v192 = _Q0;
        v190 = vdupq_n_s32(0x437F0000u);
        v184 = xmmword_183E20E50;
        v172 = a5;
        v173 = result;
        v174 = a2;
        v177 = a4 + 24;
        while (1)
        {
          v186 = *(v10 + 8 * v9);
          if (*(v186 + 13))
          {
            break;
          }

LABEL_183:
          if (++v9 >= *(v5 + 8))
          {
            goto LABEL_189;
          }
        }

        v182 = *(*v5 + 8 * v9);
        if (BYTE6(xmmword_1ED4E97EC) == 1)
        {
          PerfHud = CA::OGL::GetPerfHud(result);
          if (PerfHud)
          {
            ++*(PerfHud + 528);
          }
        }

        result = *(v186 + 24);
        if (!result)
        {
          goto LABEL_177;
        }

        result = (*(*result + 80))(result);
        if (!result)
        {
          goto LABEL_177;
        }

        v16 = result;
        v179 = v9;
        v17 = *(v186 + 12);
        LODWORD(v188) = CA::OGL::texture_filter(CA::Render::ImageFilter)::filters[(v17 >> 9) & 3];
        v18 = CA::OGL::texture_filter(CA::Render::ImageFilter)::filters[(v17 >> 11) & 3];
        v187 = *(v186 + 212);
        if ((*(v7 + 872) & 2) != 0)
        {
          v19 = 2111;
        }

        else
        {
          v19 = 63;
        }

        v20 = ((*(*(v8 + 16) + 24) & 1) << 11) ^ v19;
        v21 = result[2];
        v22.i64[0] = v21.u32[0];
        v22.i64[1] = v21.u32[1];
        v23 = vcvtq_f64_u64(v22);
        v209 = 0uLL;
        v24 = *(v186 + 32);
        if (v24)
        {
          v25 = vcvt_f32_f64(*(v24 + 40));
          *v209.f32 = vcvt_f32_f64(*(v24 + 24));
          *&v209.u32[2] = v25;
          v15 = vcvtq_f64_f32(vsub_f32(v25, *v209.f32));
          v23 = vmulq_f64(v15, v23);
          v20 = v20 | 0x400;
        }

        *&v15.f64[0] = vcvt_f32_f64(v23);
        v26 = *(v186 + 216);
        _ZF = v26 == 1.0;
        v27 = COERCE_DOUBLE(vmul_n_f32(*&v15.f64[0], 1.0 / v26));
        if (!_ZF)
        {
          v15.f64[0] = v27;
        }

        v189 = v15;
        v207 = 0;
        v208 = 0;
        v203 = 0x3C003C003C003C00;
        v205 = 0;
        v206 = 1065353216;
        v204 = 0uLL;
        v201 = 0uLL;
        v200 = 0;
        v28 = vceqzq_f64(v23);
        if ((vorrq_s8(vdupq_laneq_s64(v28, 1), v28).u64[0] & 0x8000000000000000) != 0 || (v29 = vceqq_f64(v23, v23), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v29), 1), v29).u64[0] & 0x8000000000000000) != 0))
        {
          v194 = 0uLL;
        }

        else
        {
          v30 = vcvtmq_s64_f64(0);
          v194 = vuzp1q_s32(v30, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(v23, vdupq_n_s64(0x41C0000000000000uLL))), v30));
        }

        memset(v199, 0, 48);
        CA::Shape::operator=(v199, v194.i32);
        *&v201 = v199;
        v202 = &CA::identity_transform;
        LOWORD(v208) = 1283;
        v200 = CA::OGL::Context::set_gstate(v7, &v200);
        v31 = CA::OGL::Context::bind_image(v7, 0, v16, v20, v188, v18, 0, 0, *&v187, &v209, 0);
        result = CA::OGL::Context::set_gstate(v7, **(v7 + 656));
        v9 = v179;
        v10 = v177;
        if (!v31)
        {
LABEL_177:
          if (*(v186 + 40))
          {
            v166 = *(v182 + 16);
            if (v166)
            {
              v167 = *(v182 + 8);
              do
              {
                if (*(v167 + 24) != 0.0)
                {
                  --v166;
                  result = CA::OGL::render_emitter_cells(v6, v8, v191, *(v186 + 40), v167);
                }

                v167 += 128;
              }

              while (v166);
            }
          }

          goto LABEL_183;
        }

        v32 = *(v7 + 656);
        v201 = *(v32 + 8);
        v33 = *(v32 + 32);
        v202 = *(v32 + 24);
        v203 = v33;
        v204 = *(v32 + 40);
        v205 = *(v32 + 56);
        LOWORD(v208) = *(v32 + 80) | (BYTE1(v208) << 8);
        LODWORD(v206) = *(v32 + 64);
        LOWORD(v208) = *(v32 + 80) & 0x100 | v208 & 0xFEFF;
        v34 = v208 & 0xFBFF | *(v32 + 80) & 0x400;
        LOWORD(v208) = v34;
        v207 = *(v32 + 72);
        v35 = *(v191 + 72);
        if (v35 <= 93)
        {
          if (v35 == 3 || v35 == 92)
          {
            LOWORD(v208) = v34 & 0xFF00 | 0xC;
            if ((v171 & 0x400) != 0 || !(*(**v6 + 232))(*v6, 33))
            {
LABEL_38:
              v37 = CA::OGL::Context::set_gstate(v7, &v200);
              v200 = v37;
              v178 = *(v182 + 16);
              v38 = *(v191 + 72);
              if ((v38 - 535) < 2 || v38 == 59)
              {
                if (v178 > 0x80)
                {
                  v40 = malloc_type_malloc(32 * v178, 0xA749590AuLL);
                  if (!v40)
                  {
LABEL_176:
                    CA::OGL::Context::set_gstate(v7, **(v7 + 656));
                    result = (*(*v7 + 560))(v7, v31, 0);
                    goto LABEL_177;
                  }
                }

                else
                {
                  MEMORY[0x1EEE9AC00](v37);
                  v40 = &v170 - ((v39 + 15) & 0x3FFFFFFFF0);
                  bzero(v40, v39);
                }

                v41 = *(v182 + 16);
                v180 = v40;
                v42 = v40;
                if (v41)
                {
                  v43 = *(v182 + 8);
                  v42 = v180;
                  do
                  {
                    if (*(v43 + 24) != 0.0)
                    {
                      v44 = *(v191 + 72);
                      if (v44 == 535)
                      {
                        v45 = *(v43 + 16);
                      }

                      else if (v44 == 59)
                      {
                        v45 = *(v43 + 40);
                      }

                      else
                      {
                        v46 = *(v43 + 16);
                        v45 = -v46;
                      }

                      --v41;
                      *v42 = ((SLODWORD(v45) >> 31) | 0x80000000) ^ LODWORD(v45);
                      *(v42 + 1) = v43;
                      v42 += 16;
                    }

                    v43 += 128;
                  }

                  while (v41);
                }

                v47 = (v42 - v180) >> 4;
                CA::radix_sort(v47);
                if (!v47)
                {
LABEL_173:
                  if (v180 && v178 >= 0x81)
                  {
                    free(v180);
                  }

                  goto LABEL_176;
                }
              }

              else
              {
                v180 = 0;
                v47 = v178;
                if (!v178)
                {
                  goto LABEL_173;
                }
              }

              v181 = v47;
              v175 = v31;
              v48 = *(v186 + 64);
              v49 = (*(*v191 + 176))(v191);
              if (v48 == 567)
              {
                v50 = 3;
                v53 = 1;
                v51 = 1;
              }

              else if (v48 == 678)
              {
                v50 = v49;
                v51 = v49 ^ 1;
                if (v181 < 0x81)
                {
                  v52 = 1;
                }

                else
                {
                  v52 = v49;
                }

                if (v52)
                {
                  v176 = 0;
                  v53 = 0;
LABEL_68:
                  v54 = *(v7 + 16);
                  if (*(v54 + 496) >= 2u)
                  {
                    *(v54 + 497) |= 1u;
                  }

                  v193[0] = 0;
                  v193[1] = 0;
                  if (v53 && (*(*v7 + 232))(v7, 11))
                  {
                    v55 = v181;
                    v56 = 768;
                    if (v181 < 0x300)
                    {
                      v56 = v181;
                    }

                    v188 = v56;
                    if (x_malloc_get_zone::once != -1)
                    {
                      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
                    }

                    rect = malloc_type_zone_malloc(malloc_zone, 16 * v188, 0x1000040451B5BE8uLL);
                    if (rect)
                    {
                      v58 = rect;
                      v59 = *(v182 + 8);
                      v60 = *(v186 + 224);
                      v61 = *(v7 + 16);
                      v61[12] = vsub_f32(*&v209.u32[2], *v209.f32);
                      v61[13].i32[0] = v60;
                      v61[13].i32[1] = 0;
                      if ((LOBYTE(v202[9].f64[0]) & 0x10) != 0)
                      {
                        v148 = vaddvq_f64(vmulq_f64(*v202, *v202));
                        v149 = vaddvq_f64(vmulq_f64(v202[2], v202[2]));
                        v150 = v202[7].f64[1];
                        v63 = 0uLL;
                        v64 = v180;
                        if (v150 != 1.0)
                        {
                          v151 = 1.0 / (v150 * v150);
                          v148 = v151 * v148;
                          v149 = v151 * v149;
                        }

                        _ZF = v149 == 1.0 && v148 == 1.0;
                        v62 = (sqrt(v149) + sqrt(v148)) * 0.5;
                        if (_ZF)
                        {
                          v62 = 1.0;
                        }
                      }

                      else
                      {
                        v62 = v202[8].f64[0];
                        v63 = 0uLL;
                        v64 = v180;
                      }

                      v66 = 0;
                      v153 = v62 * *v189.f64;
                      *v189.f64 = v153;
                      v154 = v64;
                      do
                      {
                        v155 = 0;
                        while (v55)
                        {
                          v156 = v59;
                          while (1)
                          {
                            if (v154)
                            {
                              v59 = v156;
                              v156 = *(v154 + 1);
                              v154 += 16;
                              v181 = v55 - 1;
                              goto LABEL_158;
                            }

                            v59 = v156 + 8;
                            v157 = v156[1].f32[2];
                            if (v157 != 0.0)
                            {
                              --v55;
                              if (v156[3].f32[3] < v157)
                              {
                                break;
                              }
                            }

                            v154 = 0;
                            v156 += 8;
                            if (!v55)
                            {
                              v154 = 0;
                              goto LABEL_162;
                            }
                          }

                          v181 = v55;
                          v154 = 0;
LABEL_158:
                          v158 = (v58 + 16 * v155);
                          v159 = v203;
                          *v158 = v156[2].i64[0];
                          v158[2] = v156[5].f32[1] * *v189.f64;
                          v160 = vmaxq_f32(vminq_f32(v156[4], v192), v63);
                          v161 = vdupq_laneq_s32(v160, 3);
                          v161.i32[3] = 1.0;
                          v162.i64[0] = 0x3F0000003F000000;
                          v162.i64[1] = 0x3F0000003F000000;
                          *v160.i8 = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v162, v161, vmulq_f32(v160, v190))));
                          v163 = vuzp1_s8(*v160.i8, *v160.i8).u32[0];
                          if (*&v159 != 0x3C003C003C003C00)
                          {
                            rect = CA::OGL::ExtendedColor::word32(rect, v159);
                            v63 = 0uLL;
                            v164 = vand_s8(vmul_s32(vand_s8(vdup_n_s32(v163 >> 8), 0xFF0000FF00), vadd_s32(vand_s8(vshl_u32(vdup_n_s32(rect), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL), 0x100000001)), 0x1FF0001FF0000);
                            v163 = (((v163 >> 8) & 0xFF0000) + ((v163 >> 8) & 0xFF0000) * (rect >> 24)) & 0xFF000000 | ((v163 * rect + v163) >> 8) | v164.i32[0] | v164.i32[1];
                          }

                          ++v155;
                          *(v158 + 3) = v163;
                          v55 = v181;
                          if (v155 == v188)
                          {
                            v155 = v188;
                            break;
                          }
                        }

LABEL_162:
                        v212 = 0uLL;
                        v213.i64[0] = 0;
                        v165 = *(*(v7 + 656) + 8);
                        v210.i64[0] = v7;
                        v210.i64[1] = v165;
                        v211 = 0uLL;
                        CA::OGL::Context::ClippedArray::start(&v210);
                        while (1)
                        {
                          rect = CA::OGL::Context::ClippedArray::next_rect(&v210, v193);
                          if (!rect)
                          {
                            break;
                          }

                          (*(*v7 + 368))(v7, 0, v155, v58);
                        }

                        v66 += v155;
                        v63 = 0uLL;
                      }

                      while (v55);
                      if (x_malloc_get_zone::once != -1)
                      {
                        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
                      }

                      v5 = v172;
                      v9 = v179;
                      v10 = v177;
                      malloc_zone_free(malloc_zone, v58);
                    }

                    else
                    {
                      v66 = 0;
                    }

                    goto LABEL_169;
                  }

                  v197 = 0;
                  v198 = 0;
                  v195[3] = 0;
                  v196 = 0;
                  v65 = *(*(v7 + 656) + 8);
                  v195[0] = v7;
                  v195[1] = v65;
                  v195[2] = 0;
                  BYTE1(v196) = 1;
                  CA::OGL::Context::ClippedArray::start(v195);
                  v66 = 0;
                  v67 = v176;
                  if (v50 != 1)
                  {
                    v67 = 1;
                  }

                  v187 = v51 & (v176 ^ 1);
                  LODWORD(v188) = v67;
LABEL_82:
                  rect = CA::OGL::Context::ClippedArray::next_rect(v195, v193);
                  if (!rect)
                  {
                    v5 = v172;
                    v9 = v179;
                    v10 = v177;
LABEL_169:
                    v31 = v175;
                    if (BYTE6(xmmword_1ED4E97EC) == 1)
                    {
                      v169 = CA::OGL::GetPerfHud(rect);
                      if (v169)
                      {
                        *(v169 + 536) += v66;
                      }
                    }

                    if (v176)
                    {
                      *(v7 + 1368) = 0;
                      ++*(v7 + 664);
                    }

                    *(*(v7 + 16) + 497) &= ~1u;
                    v6 = v173;
                    v8 = v174;
                    goto LABEL_173;
                  }

                  v70 = v181;
                  v71 = *(v182 + 8);
                  v72 = v180;
                  v73 = 0uLL;
                  while (!v72)
                  {
                    v74 = v71 + 8;
                    v88 = v71[1].f32[2];
                    v72 = 0;
                    if (v88 != 0.0)
                    {
                      --v70;
                      if (v71[3].f32[3] < v88)
                      {
                        goto LABEL_86;
                      }
                    }

LABEL_135:
                    v71 = v74;
                    if (!v70)
                    {
                      goto LABEL_82;
                    }
                  }

                  v74 = v71;
                  v71 = *(v72 + 1);
                  v72 += 16;
                  --v70;
LABEL_86:
                  v75 = 4;
                  if (*(v7 + 108))
                  {
                    v75 = 6;
                  }

                  v76 = *(v7 + 144);
                  if ((v76 + 4) > *(v7 + 152) || (v77 = *(v7 + 128)) != 0 && *(v7 + 120) + v75 > v77)
                  {
                    *(v7 + 1384) |= 0x20u;
                    rect = CA::OGL::Context::array_flush(v7);
                    v73 = 0uLL;
                    LODWORD(v76) = 0;
                    *(v7 + 144) = 0;
                    *(v7 + 112) = v185;
                    *(v7 + 120) = v184;
                  }

                  v78 = *(v7 + 136);
                  v212 = v73;
                  v213 = v73;
                  v210 = v73;
                  v211 = v73;
                  v69.i64[0] = v71[2].i64[0];
                  v79 = 1.0;
                  v80.i64[0] = v69.i64[0];
                  v80.i32[2] = v71[2].i32[2];
                  v80.i32[3] = 1.0;
                  if ((v188 & 1) == 0)
                  {
                    v81 = LOBYTE(v202[9].f64[0]);
                    if ((v81 & 0x10) != 0)
                    {
                      v68 = vcvt_hight_f32_f64(vcvt_f32_f64(*v202), v202[1]);
                      v80 = vmlaq_laneq_f32(vmlaq_lane_f32(vmlaq_n_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v202[6]), v202[7]), v68, *v69.i32), vcvt_hight_f32_f64(vcvt_f32_f64(v202[2]), v202[3]), *v69.i8, 1), vcvt_hight_f32_f64(vcvt_f32_f64(v202[4]), v202[5]), v80, 2);
                    }

                    else
                    {
                      if ((LOBYTE(v202[9].f64[0]) & 8) != 0)
                      {
                        v69 = vcvtq_f64_f32(*v69.i8);
                        *v68.i8 = vcvt_f32_f64(vmulq_n_f64(v69, v202[8].f64[0]));
                        v68.i64[1] = vextq_s8(v80, v80, 8uLL).u64[0];
                        v80 = v68;
                      }

                      v68.i32[0] = 0;
                      v69.i32[0] = v81 & 4;
                      v82 = vdupq_lane_s32(*&vceqq_s32(v69, v68), 0);
                      v83.i64[1] = v80.i64[1];
                      *v83.i32 = -*&v80.i32[1];
                      v83.i32[1] = v80.i32[0];
                      v84 = vbslq_s8(v82, v80, v83);
                      v82.i32[0] = v81 & 2;
                      v85 = v84;
                      *v85.i32 = -*v84.i32;
                      v86 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v82, v68), 0), v84, v85);
                      v87 = *&v86.i32[1];
                      if (LOBYTE(v202[9].f64[0]))
                      {
                        v87 = -*&v86.i32[1];
                      }

                      v69 = vextq_s8(v86, v86, 8uLL);
                      *&v86.i32[1] = v87;
                      v68 = v202[6];
                      *v80.i8 = vcvt_f32_f64(vaddq_f64(v68, vcvtq_f64_f32(*v86.i8)));
                      v80.i64[1] = v69.i64[0];
                    }

                    v79 = v80.i32[3];
                  }

                  v89 = v71[5].f32[2];
                  v90 = vmul_n_f32(*&v189.f64[0], v71[5].f32[1]);
                  *v210.f32 = vmul_f32(v90, 0xBF000000BF000000);
                  v210.i32[3] = v79;
                  v91 = vmul_f32(v90, 0x3F0000003F000000);
                  *v212.f32 = v91;
                  v91.i32[1] = v210.i32[1];
                  v211.i32[3] = v79;
                  *v211.f32 = v91;
                  v212.i32[3] = v79;
                  *v213.f32 = vmul_f32(v90, COERCE_FLOAT32X2_T(--0.0000305175998));
                  v213.i32[3] = v79;
                  v92 = *(v191 + 124) + v89;
                  if (fabsf(v92) > 3.1416)
                  {
                    v92 = ((((v92 * 0.15915) + 0.5) - floorf((v92 * 0.15915) + 0.5)) * 6.2832) + -3.1416;
                  }

                  v93 = v92 * v92;
                  v94 = (((((v92 * v92) * 0.0054654) + -0.15346) * (v92 * v92)) + 0.98442) * v92;
                  v95 = ((((v93 * -0.00096967) + 0.039228) * v93) + -0.49535) * v93;
                  v96 = v95 + 0.99861;
                  if (v50 == 2 && ((v98 = v71[7].f32[0], v97 = v71[7].f32[1], v99 = v71[7].f32[2], fabsf(v98) >= 0.001) || fabsf(v97) >= 0.001 || fabsf(v99 + -1.0) >= 0.001))
                  {
                    v107.i64[0] = v71[7].i64[0];
                    v107.i64[1] = LODWORD(v99);
                    v108 = vmulq_f32(v107, v107);
                    v109 = vmlaq_n_f32(v108, vsubq_f32(v192, v108), v96);
                    v110 = 0.0013933 - v95;
                    v111 = (v97 * v98) * v110;
                    v112 = (v99 * v97) * v110;
                    v113 = (v99 * v98) * v110;
                    v114 = v94 * v98;
                    v115 = v94 * v97;
                    v116 = v94 * v99;
                    v117 = v111 + v116;
                    v118 = v113 - v115;
                    *v68.i32 = v111 - v116;
                    *v69.i32 = v113 + v115;
                    v68.i32[1] = v109.i32[1];
                    *&v69.i32[1] = v112 - v114;
                    v69.i32[2] = v109.i32[2];
                    v119 = v109;
                    v119.f32[1] = v117;
                    v119.f32[2] = v118;
                    *&v68.i32[2] = v112 + v114;
                    v120 = &v210;
                    v121 = 4;
                    do
                    {
                      v122 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v119, v120->f32[0]), v68, v120->f32[1]), v69, v120->f32[2]);
                      v122.i32[3] = v120->i32[3];
                      *v120++ = v122;
                      --v121;
                    }

                    while (v121);
                  }

                  else
                  {
                    v100 = 0;
                    v101 = v94;
                    do
                    {
                      v102 = vcvtq_f64_f32(*&v210.f32[v100]);
                      v103 = vmulq_n_f64(v102, v101);
                      v104 = vextq_s8(v103, v103, 8uLL);
                      v105 = vmulq_n_f64(v102, v96);
                      *&v106.f64[0] = *&vsubq_f64(v105, v104);
                      v106.f64[1] = vaddq_f64(v105, v104).f64[1];
                      *&v210.f32[v100] = vcvt_f32_f64(v106);
                      v100 += 4;
                    }

                    while (v100 != 16);
                  }

                  v80.i32[3] = 0;
                  v210 = vaddq_f32(v210, v80);
                  v211 = vaddq_f32(v211, v80);
                  v123 = (v78 + 48 * v76);
                  v212 = vaddq_f32(v212, v80);
                  v213 = vaddq_f32(v213, v80);
                  if (v187)
                  {
                    rect = v202;
                    if ((LOBYTE(v202[9].f64[0]) & 0x1F) != 0)
                    {
                      rect = CA::Transform::apply_to_point4(v202, &v210, &v210, 0x10, 4);
                      v73 = 0uLL;
                      v124 = 0;
                      v125 = v123;
                      do
                      {
                        *v125 = *(&v210 + v124);
                        v125 += 3;
                        v124 += 16;
                      }

                      while (v124 != 64);
                    }

                    else
                    {
                      v128 = v202[6];
                      v129 = (v78 + 48 * v76 + 8);
                      v130 = v183;
                      v131 = 4;
                      do
                      {
                        *(v129 - 1) = vcvt_f32_f64(vaddq_f64(v128, vcvtq_f64_f32(*(v130 - 1))));
                        v132 = *v130;
                        v130 += 2;
                        *v129 = v132;
                        v129 += 6;
                        --v131;
                      }

                      while (v131);
                    }
                  }

                  else
                  {
                    v126 = 0;
                    v127 = v123;
                    do
                    {
                      *v127 = *(&v210 + v126);
                      v127 += 3;
                      v126 += 16;
                    }

                    while (v126 != 64);
                  }

                  v123[1].i64[0] = v209.i64[0];
                  v123[4].i32[0] = v209.i32[2];
                  v123[4].i32[1] = v209.i32[1];
                  v123[7].i64[0] = v209.i64[1];
                  v123[10].i32[0] = v209.i32[0];
                  v133 = v209.i32[3];
                  v123[10].i32[1] = v209.i32[3];
                  v134 = v71[5].f32[0];
                  if (v134 != 0.0)
                  {
                    v135 = *(v186 + 224);
                    v136 = floorf(v134 / v135);
                    v137 = v134 - (v136 * v135);
                    v138 = __PAIR64__(v133, v209.u32[2]);
                    v139.f32[0] = floorf(v137);
                    v139.f32[1] = v136;
                    v140 = vmul_f32(v139, vsub_f32(v138, *v209.f32));
                    for (i = 1; i != 13; i += 3)
                    {
                      *v123[i].f32 = vadd_f32(*v123[i].f32, v140);
                    }
                  }

                  v142 = vmaxq_f32(vminq_f32(v71[4], v192), v73);
                  v143 = vdupq_laneq_s32(v142, 3);
                  v143.i32[3] = 1.0;
                  v144.i64[0] = 0x3F0000003F000000;
                  v144.i64[1] = 0x3F0000003F000000;
                  v145 = vcvtq_s32_f32(vmlaq_f32(v144, v143, vmulq_f32(v142, v190)));
                  *v145.i8 = vmovn_s32(v145);
                  v146 = vuzp1_s8(*v145.i8, *v145.i8).u32[0];
                  if (*&v203 != 0x3C003C003C003C00)
                  {
                    rect = CA::OGL::ExtendedColor::word32(rect, v203);
                    *v145.i8 = vand_s8(vmul_s32(vand_s8(vdup_n_s32(v146 >> 8), 0xFF0000FF00), vadd_s32(vand_s8(vshl_u32(vdup_n_s32(rect), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL), 0x100000001)), 0x1FF0001FF0000);
                    v146 = (((v146 >> 8) & 0xFF0000) + ((v146 >> 8) & 0xFF0000) * (rect >> 24)) & 0xFF000000 | ((v146 * rect + v146) >> 8) | v145.i32[0] | v145.i32[1];
                  }

                  v145.i32[0] = v146;
                  v145.i32[1] = v146 >> 8;
                  v145.i32[2] = HIWORD(v146);
                  v69.i64[0] = 0xFF000000FFLL;
                  v69.i64[1] = 0xFF000000FFLL;
                  v147 = vandq_s8(v145, v69);
                  v147.i32[3] = vshrq_n_u32(vdupq_n_s32(v146), 0x18uLL).i32[3];
                  v68 = vdupq_n_s32(0x3B808081u);
                  *v147.i8 = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(v147), v68));
                  v123[2].i64[0] = v147.i64[0];
                  v123[5].i64[0] = v147.i64[0];
                  v123[8].i64[0] = v147.i64[0];
                  v123[11].i64[0] = v147.i64[0];
                  if (!v50)
                  {
                    v123[9].i32[2] = 0;
                    v123[6].i32[2] = 0;
                    v123[3].i32[2] = 0;
                    v123->i32[2] = 0;
                  }

                  if (*(v7 + 112))
                  {
                    rect = CA::OGL::Context::array_indices(v7, *(v7 + 144));
                  }

                  *(v7 + 144) += 4;
                  ++v66;
                  v73 = 0uLL;
                  goto LABEL_135;
                }

                v53 = 0;
                v50 = 0;
              }

              else
              {
                v53 = 0;
                v176 = 0;
                v50 = 2;
                v51 = 1;
                if (v181 < 0x81)
                {
                  goto LABEL_68;
                }
              }

              *(v7 + 1368) = v202;
              ++*(v7 + 664);
              v176 = 1;
              goto LABEL_68;
            }

            v36 = 60;
            v34 = v208;
            goto LABEL_37;
          }

          if (v35 == 93)
          {
            v36 = 32;
            goto LABEL_37;
          }
        }

        else
        {
          v36 = 16;
          if (v35 <= 511)
          {
            if (v35 != 94)
            {
              if (v35 != 95)
              {
                goto LABEL_36;
              }

LABEL_37:
              LOWORD(v208) = v34 & 0xFF00 | v36;
              goto LABEL_38;
            }

LABEL_32:
            v36 = 18;
            goto LABEL_37;
          }

          if (v35 == 624)
          {
            goto LABEL_37;
          }

          if (v35 == 512)
          {
            goto LABEL_32;
          }
        }

LABEL_36:
        v36 = 3;
        goto LABEL_37;
      }

LABEL_189:
      *(*(v7 + 16) + 16) = 0;
    }
  }

  return result;
}

float32x4_t CA::Mat4Impl::mat4_concat(float32x4_t *this, float *a2, const double *a3, const float *a4)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 20);
  v7 = *(a2 + 24);
  v6 = *(a2 + 28);
  v8 = *(a3 + 2);
  v9 = vcvt_hight_f64_f32(*a3);
  v10 = vcvtq_f64_f32(*a3);
  v11 = vcvtq_f64_f32(*v8.f32);
  v12 = vcvt_hight_f64_f32(v8);
  v13 = *(a3 + 4);
  v14 = *(a3 + 6);
  v15 = vcvt_hight_f64_f32(v13);
  v16 = vcvtq_f64_f32(*v13.f32);
  v17 = vcvtq_f64_f32(*v14.f32);
  v18 = vcvt_hight_f64_f32(v14);
  v19 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v10, *(a2 + 4)), v11, *(a2 + 8), 1), v16, *(a2 + 6)), v17, *(a2 + 12), 1)), vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v9, *(a2 + 4)), v12, *(a2 + 8), 1), v15, *(a2 + 6)), v18, *(a2 + 12), 1));
  *this = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v10, *a2), v11, *a2, 1), v16, *(a2 + 2)), v17, *(a2 + 4), 1)), vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v9, *a2), v12, *a2, 1), v15, *(a2 + 2)), v18, *(a2 + 4), 1));
  this[1] = v19;
  result = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v10, v7.f64[0]), v11, v7, 1), v16, v6.f64[0]), v17, v6, 1)), vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v9, v7.f64[0]), v12, v7, 1), v15, v6.f64[0]), v18, v6, 1));
  this[2] = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v10, v5.f64[0]), v11, v5, 1), v16, v4.f64[0]), v17, v4, 1)), vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v9, v5.f64[0]), v12, v5, 1), v15, v4.f64[0]), v18, v4, 1));
  this[3] = result;
  return result;
}

uint64_t CA::Transform::apply_to_point4(uint64_t this, float32x2_t *a2, float32x2_t *a3, const float *a4, uint64_t a5)
{
  if ((*(this + 144) & 0x10) != 0)
  {
    for (; a5; --a5)
    {
      *a2->f32 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vcvt_hight_f32_f64(vcvt_f32_f64(*this), *(this + 16)), COERCE_FLOAT(*a3->f32)), vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 32)), *(this + 48)), *a3, 1), vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 64)), *(this + 80)), *a3->f32, 2), vcvt_hight_f32_f64(vcvt_f32_f64(*(this + 96)), *(this + 112)), *a3->f32, 3);
      a2 += 2;
      a3 = (a4 + a3);
    }
  }

  else
  {
    v5 = *(this + 96);
    v6.f64[0] = *this;
    v7.f64[1] = *(this + 40);
    if (a2 == a3)
    {
      if (a5)
      {
        v6.f64[1] = *(this + 8);
        v7.f64[0] = *(this + 32);
        do
        {
          *a2 = vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(v5, v6, COERCE_FLOAT(*a2)), v7, COERCE_FLOAT(HIDWORD(*a2))));
          a2 += 2;
          --a5;
        }

        while (a5);
      }
    }

    else if (a5)
    {
      v6.f64[1] = *(this + 8);
      v7.f64[0] = *(this + 32);
      v8 = a3 + 1;
      do
      {
        *a2 = vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(v5, v6, COERCE_FLOAT(*&v8[-1])), v7, COERCE_FLOAT(HIDWORD(*&v8[-1]))));
        a2[1] = *v8;
        a2 += 2;
        v8 = (a4 + v8);
        --a5;
      }

      while (a5);
    }
  }

  return this;
}

CATransform3D *__cdecl CATransform3DRotate_(CATransform3D *__return_ptr retstr, CATransform3D *t, CGFloat angle, CGFloat x, CGFloat y, CGFloat z)
{
  v10[16] = *MEMORY[0x1E69E9840];
  CA::Mat4Impl::mat4_set_rotation(v10, v6, angle, x, y, z);
  CA::Mat4Impl::mat4_concat(t, v10, &t->m11, v8);
  return result;
}

void CA::Render::anonymous namespace::push_behaviors(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v206 = *MEMORY[0x1E69E9840];
  if (a1 && *(a1 + 16))
  {
    v6 = 0;
    v7 = 0xBF80000000000000;
    __asm { FMOV            V0.4S, #1.0 }

    v203 = _Q0;
    v12 = 0.174532925;
    v13 = 0.5;
    v14 = 1.0;
    do
    {
      v15 = *(a1 + 24 + 8 * v6);
      if ((*(v15 + 13) & 1) == 0)
      {
        goto LABEL_119;
      }

      v16 = *(v15 + 40);
      if (v16)
      {
        goto LABEL_105;
      }

      v17 = *(v15 + 16);
      if (v17 > 473)
      {
        if (v17 <= 733)
        {
          if (v17 == 474)
          {
            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            v43 = malloc_type_zone_malloc(malloc_zone, 0x50uLL, 0x165299FDuLL);
            if (v43)
            {
              v16 = v43;
              v44 = *(v15 + 32);
              *(v43 + 2) = 1;
              *v43 = &unk_1EF1FE578;
              v45 = v203;
              if (v44)
              {
                v46 = v44[4];
                v45 = v203;
                if (v46)
                {
                  v47 = 0;
                  while (1)
                  {
                    v48 = *&v44[2 * v47 + 6];
                    if (*(v48 + 16) == 101)
                    {
                      break;
                    }

                    if (v46 == ++v47)
                    {
                      v45 = v203;
                      goto LABEL_127;
                    }
                  }

                  v45 = v203;
                  if ((v47 & 0x80000000) == 0)
                  {
                    v82 = *(v48 + 24);
                    v45 = v203;
                    if (v82)
                    {
                      v45 = v203;
                      if (*(v82 + 12) == 62)
                      {
                        v45 = v203;
                        if (*(v82 + 16) >= 4u)
                        {
                          v45 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v82 + 24)), *(v82 + 40));
                        }
                      }
                    }
                  }
                }
              }

LABEL_127:
              *(v43 + 12) = v45;
              float_key = CA::Render::KeyValueArray::get_float_key(v44, 31, 0.0);
              v16[3].f32[1] = float_key;
              v84 = CA::Render::KeyValueArray::get_float_key(v44, 192, 1.0);
              v16[4].f32[0] = v84;
              v204 = 0;
              v205 = 0;
              vec2_key = CA::Render::KeyValueArray::get_vec2_key(v44, 569, &v204);
              *&v86 = v86;
              v16[4].f32[1] = vec2_key;
              v16[5].i32[0] = LODWORD(v86);
              v16[5].i32[1] = 0;
              if (CA::Render::KeyValueArray::get_int_key(v44, 42, 1))
              {
                v16[1].i32[0] = 3;
              }

              v87 = CA::Render::KeyValueArray::get_float_key(v44, 764, 0.0);
              v16[5].f32[1] = v87;
              v88 = CA::Render::KeyValueArray::get_float_key(v44, 243, 0.0);
              v89 = CA::Render::KeyValueArray::get_float_key(v44, 242, INFINITY);
              v90 = 0.0;
              if (v88 >= 0.0)
              {
                v91.f32[0] = v88;
              }

              else
              {
                v91.f32[0] = 0.0;
              }

              if ((LODWORD(v89) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
              {
                if (v89 >= 0.00001)
                {
                  v92 = v89;
                }

                else
                {
                  v92 = 0.00001;
                }

                v90 = v14 / v92;
              }

              v91.f32[1] = v90;
              v16[6] = vmul_f32(v91, v91);
              int_key = CA::Render::KeyValueArray::get_int_key(v44, 676, 0);
              v16[7].i8[0] = int_key != 0;
              if (int_key)
              {
                v94 = v7;
                v95 = CA::Render::KeyValueArray::get_float_key(v44, 194, 1.57079633);
                if (fabsf(v95) >= 0.00001)
                {
                  v99 = CA::Render::KeyValueArray::get_float_key(v44, 195, -1.57079633);
                  v100 = __sincosf_stret(v99);
                  v101 = __sincosf_stret(v95);
                  cosval = v101.__cosval;
                  v97 = v101.__sinval * v100.__cosval;
                  v98 = v101.__sinval * v100.__sinval;
                  v13 = 0.5;
                }

                else
                {
                  cosval = 1.0;
                  v97 = 0.0;
                  v98 = 0.0;
                }

                v16[7].f32[1] = v97;
                v16[8].f32[0] = v98;
                v16[8].f32[1] = cosval;
                v102 = CA::Render::KeyValueArray::get_float_key(v44, 126, 1.57079633);
                v103 = CA::Render::KeyValueArray::get_float_key(v44, 127, v12);
                v104 = v102 * v13;
                v105 = v12;
                v106 = cosf(v104);
                v107 = cosf(v104 + v103);
                v108 = v106 - v107;
                v12 = v105;
                v13 = 0.5;
                if (v108 < 0.001)
                {
                  v108 = 0.001;
                }

                v16[9].f32[0] = v107;
                v16[9].f32[1] = 1.0 / v108;
                v7 = v94;
                v14 = 1.0;
              }

              goto LABEL_104;
            }

LABEL_99:
            *(v15 + 40) = 0;
            goto LABEL_100;
          }

          if (v17 == 652)
          {
            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            v29 = malloc_type_zone_malloc(malloc_zone, 0x28uLL, 0x165299FDuLL);
            if (v29)
            {
              v16 = v29;
              v30 = *(v15 + 32);
              v29[1].i32[0] = 0;
              *v29 = &unk_1EF1FE518;
              v204 = 0;
              v205 = 0;
              v31 = CA::Render::KeyValueArray::get_vec2_key(v30, 569, &v204);
              *&v32 = v32;
              v16[1].f32[1] = v31;
              v16[2].i32[0] = LODWORD(v32);
              v33 = CA::Render::KeyValueArray::get_float_key(v30, 685, 1.0);
              v16[2].f32[1] = v33;
              v34 = CA::Render::KeyValueArray::get_float_key(v30, 588, 0.0);
              v16[3].f32[0] = v33 * v34;
              v35.f32[0] = CA::Render::KeyValueArray::get_float_key(v30, 242, INFINITY);
              _CF = ((v35.i32[0] & 0x7FFFFFFFu) - 0x800000) >> 24 >= 0x7F && (v35.i32[0] & 0x7FFFFFFFu) - 1 >= 0x7FFFFF;
              v37 = v14 / v35.f32[0];
              if (_CF)
              {
                v37 = 0.0;
              }

              v35.f32[1] = v37;
              *(v16 + 28) = vmul_f32(v35, v35);
              goto LABEL_104;
            }

            goto LABEL_99;
          }
        }

        else
        {
          switch(v17)
          {
            case 734:
              if (x_malloc_get_zone::once != -1)
              {
                dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
              }

              v55 = malloc_type_zone_malloc(malloc_zone, 0x60uLL, 0x165299FDuLL);
              if (v55)
              {
                v16 = v55;
                v56 = *(v15 + 32);
                *(v55 + 2) = 0;
                *v55 = &unk_1EF1FE638;
                CA::Render::EmitterBehaviors::DistanceFunction::DistanceFunction((v55 + 12), v56);
                v16[10] = 0;
                CA::Render::EmitterBehaviors::ValueMutator::ValueMutator(&v16[11], v56);
                if (v16[11].i32[0] < 0)
                {
                  goto LABEL_104;
                }

                if (!v56)
                {
                  goto LABEL_171;
                }

                v57 = v56[4];
                if (!v57)
                {
                  goto LABEL_171;
                }

                v58 = 0;
                while (1)
                {
                  v59 = *&v56[2 * v58 + 6];
                  if (v59[2].i32[0] == 278)
                  {
                    break;
                  }

                  if (v57 == ++v58)
                  {
                    goto LABEL_171;
                  }
                }

                if ((v58 & 0x80000000) == 0)
                {
                  v120 = v59[3];
                }

                else
                {
LABEL_171:
                  v120 = 0;
                }

                v121 = v16[10];
                if (*&v121 != *&v120)
                {
                  if (*&v121 && atomic_fetch_add((*&v121 + 8), 0xFFFFFFFF) == 1)
                  {
                    (*(**&v121 + 16))(v121);
                  }

                  if (v120)
                  {
                    v122 = (*&v120 + 8);
                    if (!atomic_fetch_add((*&v120 + 8), 1u))
                    {
                      v120 = 0;
                      atomic_fetch_add(v122, 0xFFFFFFFF);
                    }
                  }

                  v16[10] = v120;
                  v121 = v120;
                }

                if (v121)
                {
                  if (*(*&v121 + 12) != 18)
                  {
                    v16[10] = 0;
                    goto LABEL_187;
                  }

                  v123 = (*(**&v121 + 104))(v121);
                  v121 = v16[10];
                  if (v123 != 1 || (v124 = (*(**&v121 + 112))(v121), v121 = v16[10], v124 != 1))
                  {
                    v16[10] = 0;
                    if (!*&v121)
                    {
                      goto LABEL_191;
                    }

LABEL_187:
                    if (atomic_fetch_add((*&v121 + 8), 0xFFFFFFFF) == 1)
                    {
                      (*(**&v121 + 16))(v121);
                    }

                    v121 = v16[10];
                  }

                  if (!*&v121)
                  {
                    goto LABEL_191;
                  }

LABEL_104:
                  *(v15 + 40) = v16;
LABEL_105:
                  if ((*(*v16 + 16))(v16))
                  {
                    v73 = *(a2 + 8);
                    v72 = *(a2 + 16);
                    if (v73 >= v72)
                    {
                      v75 = (v73 - *a2) >> 3;
                      if ((v75 + 1) >> 61)
                      {
                        std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
                      }

                      v76 = v72 - *a2;
                      v77 = v76 >> 2;
                      if (v76 >> 2 <= (v75 + 1))
                      {
                        v77 = v75 + 1;
                      }

                      if (v76 >= 0x7FFFFFFFFFFFFFF8)
                      {
                        v78 = 0x1FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v78 = v77;
                      }

                      if (v78)
                      {
                        std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Render::EmitterBehavior::Eval const*>>(v78);
                      }

                      *(8 * v75) = v16;
                      v74 = 8 * v75 + 8;
                      v79 = *(a2 + 8) - *a2;
                      v80 = (8 * v75 - v79);
                      memcpy(v80, *a2, v79);
                      v81 = *a2;
                      *a2 = v80;
                      *(a2 + 8) = v74;
                      *(a2 + 16) = 0;
                      if (v81)
                      {
                        operator delete(v81);
                      }
                    }

                    else
                    {
                      *v73 = v16;
                      v74 = (v73 + 1);
                    }

                    *(a2 + 8) = v74;
                    *a3 |= v16[1].u32[0];
                  }

                  goto LABEL_119;
                }

LABEL_191:
                if (!v56)
                {
                  goto LABEL_104;
                }

                v125 = v56[4];
                if (!v125)
                {
                  goto LABEL_104;
                }

                v126 = 0;
                v127 = v56 + 6;
                while (1)
                {
                  v128 = *&v127[2 * v126];
                  if (*(v128 + 16) == 736)
                  {
                    break;
                  }

                  if (v125 == ++v126)
                  {
                    goto LABEL_227;
                  }
                }

                if ((v126 & 0x80000000) == 0)
                {
                  v138 = *(v128 + 24);
                  goto LABEL_228;
                }

LABEL_227:
                v138 = 0;
LABEL_228:
                v139 = 0;
                while (1)
                {
                  v140 = *&v127[2 * v139];
                  if (*(v140 + 16) == 490)
                  {
                    break;
                  }

                  if (v125 == ++v139)
                  {
                    goto LABEL_241;
                  }
                }

                if ((v139 & 0x80000000) == 0)
                {
                  v144 = *(v140 + 24);
                  goto LABEL_242;
                }

LABEL_241:
                v144 = 0;
LABEL_242:
                if (!v138 || *(v138 + 12) != 62)
                {
                  goto LABEL_104;
                }

                if (v144 && (*(v144 + 12) != 62 || *(v144 + 16) != *(v138 + 16)))
                {
                  v144 = 0;
                }

                v195 = *(v138 + 16);
                v199 = v144;
                if (x_malloc_get_zone::once != -1)
                {
                  dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
                }

                v145 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x38uLL, 0xDEEC3011uLL);
                v146 = v145;
                if (v145)
                {
                  CA::Render::InterpolatedFunction::InterpolatedFunction(v145, v195, 1, 2 * (v199 != 0));
                  v147 = *(v146 + 32);
                  if (v147)
                  {
                    v148 = *(v146 + 16) * *(v146 + 24);
                    if (v148)
                    {
                      v149 = (v138 + 24);
                      v150 = 8 * v148;
                      do
                      {
                        v151 = *v149++;
                        v152 = v151;
                        *v147++ = v152;
                        v150 -= 8;
                      }

                      while (v150);
                    }
                  }
                }

                else
                {
                  v182 = MEMORY[0x20];
                  if (MEMORY[0x20])
                  {
                    v183 = MEMORY[0x10] * MEMORY[0x18];
                    if (v183)
                    {
                      v184 = (v138 + 24);
                      v185 = 8 * v183;
                      do
                      {
                        v186 = *v184++;
                        v187 = v186;
                        *v182++ = v187;
                        v185 -= 8;
                      }

                      while (v185);
                    }
                  }
                }

                if (v199)
                {
                  v172 = (v199 + 24);
LABEL_346:
                  CA::Render::InterpolatedFunction::set_locations(v146, v172);
                }

LABEL_347:
                v188 = v16[10];
                v16[10] = v146;
                if (!v188)
                {
                  goto LABEL_104;
                }

LABEL_357:
                if (atomic_fetch_add(v188 + 2, 0xFFFFFFFF) == 1)
                {
                  (*(*v188 + 16))(v188);
                }

                goto LABEL_104;
              }

              goto LABEL_99;
            case 735:
              if (x_malloc_get_zone::once != -1)
              {
                dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
              }

              v66 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
              if (v66)
              {
                v16 = v66;
                v67 = *(v15 + 32);
                v66[1].i32[0] = 0;
                *v66 = &unk_1EF1FE668;
                v66[2] = 0;
                CA::Render::EmitterBehaviors::ValueMutator::ValueMutator(&v66[3], v67);
                if (v16[3].i32[0] < 0)
                {
                  goto LABEL_104;
                }

                if (!v67)
                {
                  goto LABEL_199;
                }

                v68 = v67[4];
                if (!v68)
                {
                  goto LABEL_199;
                }

                v69 = 0;
                while (1)
                {
                  v70 = *&v67[2 * v69 + 6];
                  if (v70[2].i32[0] == 278)
                  {
                    break;
                  }

                  if (v68 == ++v69)
                  {
                    goto LABEL_199;
                  }
                }

                if ((v69 & 0x80000000) == 0)
                {
                  v129 = v70[3];
                }

                else
                {
LABEL_199:
                  v129 = 0;
                }

                v130 = v16[2];
                if (*&v130 != *&v129)
                {
                  if (*&v130 && atomic_fetch_add((*&v130 + 8), 0xFFFFFFFF) == 1)
                  {
                    (*(**&v130 + 16))(v130);
                  }

                  if (v129)
                  {
                    v131 = (*&v129 + 8);
                    if (!atomic_fetch_add((*&v129 + 8), 1u))
                    {
                      v129 = 0;
                      atomic_fetch_add(v131, 0xFFFFFFFF);
                    }
                  }

                  v16[2] = v129;
                  v130 = v129;
                }

                if (v130)
                {
                  if (*(*&v130 + 12) != 18)
                  {
                    v16[2] = 0;
                    goto LABEL_215;
                  }

                  v132 = (*(**&v130 + 104))(v130);
                  v130 = v16[2];
                  if (v132 != 1 || (v133 = (*(**&v130 + 112))(v130), v130 = v16[2], v133 != 1))
                  {
                    v16[2] = 0;
                    if (!*&v130)
                    {
                      goto LABEL_219;
                    }

LABEL_215:
                    if (atomic_fetch_add((*&v130 + 8), 0xFFFFFFFF) == 1)
                    {
                      (*(**&v130 + 16))(v130);
                    }

                    v130 = v16[2];
                  }

                  if (v130)
                  {
                    goto LABEL_104;
                  }
                }

LABEL_219:
                if (!v67)
                {
                  goto LABEL_104;
                }

                v134 = v67[4];
                if (!v134)
                {
                  goto LABEL_104;
                }

                v135 = 0;
                v136 = v67 + 6;
                while (1)
                {
                  v137 = *&v136[2 * v135];
                  if (*(v137 + 16) == 736)
                  {
                    break;
                  }

                  if (v134 == ++v135)
                  {
                    goto LABEL_234;
                  }
                }

                if ((v135 & 0x80000000) == 0)
                {
                  v141 = *(v137 + 24);
                  goto LABEL_235;
                }

LABEL_234:
                v141 = 0;
LABEL_235:
                v142 = 0;
                while (1)
                {
                  v143 = *&v136[2 * v142];
                  if (*(v143 + 16) == 490)
                  {
                    break;
                  }

                  if (v134 == ++v142)
                  {
                    goto LABEL_258;
                  }
                }

                if ((v142 & 0x80000000) == 0)
                {
                  v153 = *(v143 + 24);
                  goto LABEL_259;
                }

LABEL_258:
                v153 = 0;
LABEL_259:
                if (!v141 || *(v141 + 12) != 62)
                {
                  goto LABEL_104;
                }

                if (v153 && (*(v153 + 12) != 62 || *(v153 + 16) != *(v141 + 16)))
                {
                  v153 = 0;
                }

                v196 = *(v141 + 16);
                v200 = v153;
                if (x_malloc_get_zone::once != -1)
                {
                  dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
                }

                v154 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x38uLL, 0xDEEC3011uLL);
                v155 = v154;
                if (v154)
                {
                  v156 = CA::Render::InterpolatedFunction::InterpolatedFunction(v154, v196, 1, 2 * (v200 != 0));
                  v157 = v200;
                  v155 = v156;
                  v158 = *(v156 + 4);
                  if (v158)
                  {
                    v159 = *(v156 + 2) * *(v156 + 6);
                    if (v159)
                    {
                      v160 = (v141 + 24);
                      v161 = 8 * v159;
                      do
                      {
                        v162 = *v160++;
                        v163 = v162;
                        *v158++ = v163;
                        v161 -= 8;
                      }

                      while (v161);
                    }
                  }
                }

                else
                {
                  v189 = MEMORY[0x20];
                  v157 = v200;
                  if (MEMORY[0x20])
                  {
                    v190 = MEMORY[0x10] * MEMORY[0x18];
                    if (v190)
                    {
                      v191 = (v141 + 24);
                      v192 = 8 * v190;
                      do
                      {
                        v193 = *v191++;
                        v194 = v193;
                        *v189++ = v194;
                        v192 -= 8;
                      }

                      while (v192);
                    }
                  }
                }

                if (v157)
                {
                  v181 = (v157 + 24);
LABEL_355:
                  CA::Render::InterpolatedFunction::set_locations(v155, v181);
                }

LABEL_356:
                v188 = v16[2];
                v16[2] = v155;
                if (!v188)
                {
                  goto LABEL_104;
                }

                goto LABEL_357;
              }

              goto LABEL_99;
            case 752:
              if (x_malloc_get_zone::once != -1)
              {
                dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
              }

              v21 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
              if (v21)
              {
                v16 = v21;
                v22 = *(v15 + 32);
                v16[1].i32[0] = 0;
                *v16 = &unk_1EF1FE488;
                v23 = 0.0;
                if (!v22)
                {
                  goto LABEL_158;
                }

                v24 = v22[4];
                if (!v24)
                {
                  goto LABEL_158;
                }

                v25 = 0;
                while (1)
                {
                  v26 = *&v22[2 * v25 + 6];
                  if (*(v26 + 16) == 264)
                  {
                    break;
                  }

                  if (v24 == ++v25)
                  {
                    goto LABEL_158;
                  }
                }

                if ((v25 & 0x80000000) == 0 && (v113 = *(v26 + 24)) != 0 && *(v113 + 12) == 62)
                {
                  v114 = 1148846080;
                  if (*(v113 + 16) >= 3u)
                  {
                    v114 = vcvt_f32_f64(*(v113 + 24));
                    v23 = *(v113 + 40);
                  }
                }

                else
                {
LABEL_158:
                  v114 = 1148846080;
                }

                *(v16 + 12) = v114;
                v16[2].f32[1] = v23;
                v115 = CA::Render::KeyValueArray::get_float_key(v22, 270, 1.0);
                v16[3].f32[0] = v115;
                goto LABEL_104;
              }

              goto LABEL_99;
          }
        }
      }

      else if (v17 <= 114)
      {
        if (v17 == 4)
        {
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          v38 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
          if (v38)
          {
            v16 = v38;
            v39 = *(v15 + 32);
            v38[1].i32[0] = 0;
            *v38 = &unk_1EF1FE548;
            v40 = CA::Render::KeyValueArray::get_float_key(v39, 616, 0.0);
            v16[1].f32[1] = v40;
            v41 = CA::Render::KeyValueArray::get_int_key(v39, 580, 0);
            v16[2].i8[0] = v41 != 0;
            *(&v16[2] + 4) = v7;
            v16[3].i32[1] = 0;
            if (v41 && v40 != 0.0)
            {
              v42 = __sincosf_stret(v40);
              v16[2].i32[1] = LODWORD(v42.__sinval);
              v16[3].f32[0] = -v42.__cosval;
            }

            goto LABEL_104;
          }

          goto LABEL_99;
        }

        if (v17 == 52)
        {
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          v27 = malloc_type_zone_malloc(malloc_zone, 0x50uLL, 0x165299FDuLL);
          if (v27)
          {
            v16 = v27;
            v28 = *(v15 + 32);
            *(v27 + 2) = 0;
            *v27 = &unk_1EF1FE4E8;
            CA::Render::EmitterBehaviors::DistanceFunction::DistanceFunction((v27 + 12), v28);
            goto LABEL_104;
          }

          goto LABEL_99;
        }
      }

      else
      {
        switch(v17)
        {
          case 115:
            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            v49 = malloc_type_zone_malloc(malloc_zone, 0x58uLL, 0x165299FDuLL);
            if (v49)
            {
              v16 = v49;
              v50 = *(v15 + 32);
              *(v49 + 2) = 0;
              *v49 = &unk_1EF1FE5D8;
              CA::Render::EmitterBehaviors::DistanceFunction::DistanceFunction((v49 + 12), v50);
              v16[10] = 0;
              if (!v50)
              {
                goto LABEL_104;
              }

              v51 = v50[4];
              if (!v51)
              {
                goto LABEL_104;
              }

              v52 = 0;
              v53 = v50 + 6;
              while (1)
              {
                v54 = *&v53[2 * v52];
                if (*(v54 + 16) == 278)
                {
                  break;
                }

                if (v51 == ++v52)
                {
                  goto LABEL_278;
                }
              }

              if ((v52 & 0x80000000) == 0)
              {
                v109 = *(v54 + 24);
                if (v109)
                {
                  if (atomic_fetch_add(v109 + 2, 1u))
                  {
                    v16[10] = v109;
                    if (*(v109 + 12) != 18)
                    {
                      v16[10] = 0;
                      goto LABEL_274;
                    }

                    v110 = (*(*v109 + 104))(v109);
                    v109 = v16[10];
                    if (v110 != 1 || (v111 = (*(*v109 + 112))(v109), v109 = v16[10], v111 != 4) && (v112 = (*(*v109 + 112))(v109), v109 = v16[10], v112 != 5))
                    {
                      v16[10] = 0;
                      if (!v109)
                      {
                        goto LABEL_278;
                      }

LABEL_274:
                      if (atomic_fetch_add(v109 + 2, 0xFFFFFFFF) == 1)
                      {
                        (*(*v109 + 16))(v109);
                      }

                      v109 = v16[10];
                    }

                    if (v109)
                    {
                      goto LABEL_104;
                    }
                  }

                  else
                  {
                    atomic_fetch_add(v109 + 2, 0xFFFFFFFF);
                    v16[10] = 0;
                  }
                }
              }

LABEL_278:
              v164 = v50[4];
              if (!v164)
              {
                goto LABEL_104;
              }

              v165 = 0;
              while (1)
              {
                v166 = *&v53[2 * v165];
                if (*(v166 + 16) == 121)
                {
                  break;
                }

                if (v164 == ++v165)
                {
                  goto LABEL_286;
                }
              }

              if ((v165 & 0x80000000) != 0)
              {
LABEL_286:
                if (!v50[4])
                {
                  goto LABEL_104;
                }

                v167 = 0;
                goto LABEL_288;
              }

              v167 = *(v166 + 24);
              if (!v50[4])
              {
                goto LABEL_294;
              }

LABEL_288:
              v168 = 0;
              while (1)
              {
                v169 = *&v53[2 * v168];
                if (*(v169 + 16) == 490)
                {
                  break;
                }

                if (v164 == ++v168)
                {
                  goto LABEL_294;
                }
              }

              if ((v168 & 0x80000000) == 0)
              {
                v170 = *(v169 + 24);
                goto LABEL_295;
              }

LABEL_294:
              v170 = 0;
LABEL_295:
              if (!v167 || *(v167 + 12) != 62)
              {
                goto LABEL_104;
              }

              if (v170 && (*(v170 + 12) != 62 || *(v170 + 16) != *(v167 + 16) / 5u))
              {
                v170 = 0;
              }

              v197 = *(v167 + 16) / 5uLL;
              v201 = v167;
              if (x_malloc_get_zone::once != -1)
              {
                dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
              }

              v171 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x38uLL, 0xDEEC3011uLL);
              v146 = v171;
              if (v171)
              {
                v171 = CA::Render::InterpolatedFunction::InterpolatedFunction(v171, v197, 5, 2 * (v170 != 0));
                *v146 = &unk_1EF1FBF20;
              }

              CA::Render::Gradient::set_colors(v171, (v201 + 24));
              if (v170)
              {
                v172 = (v170 + 24);
                goto LABEL_346;
              }

              goto LABEL_347;
            }

            goto LABEL_99;
          case 116:
            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            v60 = malloc_type_zone_malloc(malloc_zone, 0x18uLL, 0x165299FDuLL);
            if (v60)
            {
              v16 = v60;
              v61 = *(v15 + 32);
              v60[1].i32[0] = 0;
              *v60 = &unk_1EF1FE608;
              v60[2] = 0;
              if (!v61)
              {
                goto LABEL_104;
              }

              v62 = *(v61 + 16);
              if (!v62)
              {
                goto LABEL_104;
              }

              v63 = 0;
              v64 = v61 + 24;
              while (1)
              {
                v65 = *(v64 + 8 * v63);
                if (*(v65 + 16) == 278)
                {
                  break;
                }

                if (v62 == ++v63)
                {
                  goto LABEL_312;
                }
              }

              if ((v63 & 0x80000000) == 0)
              {
                v116 = *(v65 + 24);
                if (v116)
                {
                  if (atomic_fetch_add(v116 + 2, 1u))
                  {
                    v16[2] = v116;
                    if (*(v116 + 12) != 18)
                    {
                      v16[2] = 0;
                      goto LABEL_308;
                    }

                    v117 = (*(*v116 + 104))(v116);
                    v116 = v16[2];
                    if (v117 != 1 || (v118 = (*(*v116 + 112))(v116), v116 = v16[2], v118 != 4) && (v119 = (*(*v116 + 112))(v116), v116 = v16[2], v119 != 5))
                    {
                      v16[2] = 0;
                      if (!v116)
                      {
                        goto LABEL_312;
                      }

LABEL_308:
                      if (atomic_fetch_add(v116 + 2, 0xFFFFFFFF) == 1)
                      {
                        (*(*v116 + 16))(v116);
                      }

                      v116 = v16[2];
                    }

                    if (v116)
                    {
                      goto LABEL_104;
                    }
                  }

                  else
                  {
                    atomic_fetch_add(v116 + 2, 0xFFFFFFFF);
                    v16[2] = 0;
                  }
                }
              }

LABEL_312:
              v173 = *(v61 + 16);
              if (!v173)
              {
                goto LABEL_104;
              }

              v174 = 0;
              while (1)
              {
                v175 = *(v64 + 8 * v174);
                if (*(v175 + 16) == 121)
                {
                  break;
                }

                if (v173 == ++v174)
                {
                  goto LABEL_319;
                }
              }

              if ((v174 & 0x80000000) == 0)
              {
                v176 = *(v175 + 24);
                goto LABEL_321;
              }

LABEL_319:
              if (!*(v61 + 16))
              {
                goto LABEL_104;
              }

              v176 = 0;
LABEL_321:
              v177 = 0;
              while (1)
              {
                v178 = *(v64 + 8 * v177);
                if (*(v178 + 16) == 490)
                {
                  break;
                }

                if (v173 == ++v177)
                {
                  goto LABEL_327;
                }
              }

              if ((v177 & 0x80000000) == 0)
              {
                v179 = *(v178 + 24);
                goto LABEL_328;
              }

LABEL_327:
              v179 = 0;
LABEL_328:
              if (!v176 || *(v176 + 12) != 62)
              {
                goto LABEL_104;
              }

              if (v179 && (*(v179 + 12) != 62 || *(v179 + 16) != *(v176 + 16) / 5u))
              {
                v179 = 0;
              }

              v198 = *(v176 + 16) / 5uLL;
              v202 = v179;
              if (x_malloc_get_zone::once != -1)
              {
                dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
              }

              v180 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x38uLL, 0xDEEC3011uLL);
              v155 = v180;
              if (v180)
              {
                v180 = CA::Render::InterpolatedFunction::InterpolatedFunction(v180, v198, 5, 2 * (v202 != 0));
                *v155 = &unk_1EF1FBF20;
              }

              CA::Render::Gradient::set_colors(v180, (v176 + 24));
              if (v202)
              {
                v181 = (v202 + 24);
                goto LABEL_355;
              }

              goto LABEL_356;
            }

            goto LABEL_99;
          case 207:
            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            v18 = malloc_type_zone_malloc(malloc_zone, 0x10uLL, 0x165299FDuLL);
            if (v18)
            {
              v16 = v18;
              v19 = *(v15 + 32);
              v16[1].i32[0] = 0;
              *v16 = &unk_1EF1FE4B8;
              v20 = CA::Render::KeyValueArray::get_float_key(v19, 207, 1.0);
              v16[1].f32[1] = v20;
              goto LABEL_104;
            }

            goto LABEL_99;
        }
      }

LABEL_100:
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v71 = malloc_type_zone_malloc(malloc_zone, 0x10uLL, 0x165299FDuLL);
      if (v71)
      {
        v16 = v71;
        v71[1].i32[0] = 0;
        *v71 = &unk_1EF1FE5A8;
        goto LABEL_104;
      }

      *(v15 + 40) = 0;
LABEL_119:
      ++v6;
    }

    while (v6 < *(a1 + 16));
  }
}

CA::Render::EmitterBehaviors::ValueMutator *CA::Render::EmitterBehaviors::ValueMutator::ValueMutator(CA::Render::EmitterBehaviors::ValueMutator *this, const CA::Render::KeyValueArray *a2)
{
  *this = -1;
  *(this + 2) = 0;
  *(this + 6) = 0;
  if (!a2)
  {
    return this;
  }

  v3 = *(a2 + 4);
  if (!v3)
  {
    return this;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(a2 + v4 + 3);
    if (*(v5 + 16) == 461)
    {
      break;
    }

    if (v3 == ++v4)
    {
      return this;
    }
  }

  if ((v4 & 0x80000000) != 0)
  {
    return this;
  }

  v6 = *(v5 + 24);
  if (!v6 || *(v6 + 12) != 54)
  {
    return this;
  }

  int_key = CA::Render::KeyValueArray::get_int_key(a2, 3, 0);
  v8 = int_key != 0;
  if (!strcmp((v6 + 28), "position.x"))
  {
    v11 = 8;
LABEL_33:
    *this = v11;
    return this;
  }

  if (!strcmp((v6 + 28), "position.y"))
  {
    v11 = 9;
    goto LABEL_33;
  }

  if (!strcmp((v6 + 28), "position.z"))
  {
    v11 = 10;
    goto LABEL_33;
  }

  if (!strcmp((v6 + 28), "velocity.x"))
  {
    v11 = 12;
    goto LABEL_33;
  }

  if (!strcmp((v6 + 28), "velocity.y"))
  {
    v11 = 13;
    goto LABEL_33;
  }

  if (!strcmp((v6 + 28), "velocity.z"))
  {
    v11 = 14;
    goto LABEL_33;
  }

  if (!strcmp((v6 + 28), "mass"))
  {
    *this = 7;
    *(this + 4) = 1;
    return this;
  }

  if (!strcmp((v6 + 28), "rotation"))
  {
    v13 = 22;
LABEL_40:
    *this = v13;
LABEL_41:
    *(this + 6) = v8;
    return this;
  }

  if (!strcmp((v6 + 28), "spin"))
  {
    v13 = 23;
    goto LABEL_40;
  }

  if (!strcmp((v6 + 28), "scale"))
  {
    v14 = 21;
LABEL_43:
    *this = v14;
    *(this + 5) = v8;
    return this;
  }

  if (!strcmp((v6 + 28), "scaleSpeed"))
  {
    v13 = 31;
    goto LABEL_40;
  }

  if (!strcmp((v6 + 28), "birthRate"))
  {
    v14 = 11;
    goto LABEL_43;
  }

  if (!strcmp((v6 + 28), "color.red"))
  {
    v9 = int_key == 0;
    v10 = 16;
    goto LABEL_47;
  }

  if (!strcmp((v6 + 28), "color.green"))
  {
    v9 = int_key == 0;
    v10 = 17;
    goto LABEL_47;
  }

  if (!strcmp((v6 + 28), "color.blue"))
  {
    v9 = int_key == 0;
    v10 = 18;
    goto LABEL_47;
  }

  if (!strcmp((v6 + 28), "color.alpha"))
  {
    v9 = int_key == 0;
    v10 = 19;
LABEL_47:
    *this = v10;
    v15 = v9;
    *(this + 5) = v15;
    goto LABEL_41;
  }

  return this;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Render::EmitterBehavior::Eval const*>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
}

float32_t CA::OGL::get_filter_color_float(CA::OGL *this, float32x2_t *a2, unsigned int a3, float *a4)
{
  if (CA::Render::KeyValueArray::get_float_color_key(this, 360, a2))
  {
    result = a2[1].f32[1];
    if (result > 0.0)
    {
      v6 = 1.0 / result;
      *a2 = vmul_n_f32(*a2, v6);
      result = a2[1].f32[0] * v6;
      a2[1].f32[0] = result;
    }
  }

  return result;
}

uint64_t CA::Render::InterpolatedFunction::set_locations(uint64_t this, const double *a2)
{
  v2 = *(this + 40);
  if (v2)
  {
    v3 = *(this + 16);
    if (v3)
    {
      v4 = 0;
      v5 = 1;
LABEL_4:
      v6 = (v2 + 4 * v4);
      do
      {
        v7 = a2[v4];
        *v6 = v7;
        if (v4 && *(v6 - 1) > v7)
        {
          v5 = 0;
          if (++v4 != v3)
          {
            goto LABEL_4;
          }

          goto LABEL_13;
        }

        ++v4;
        ++v6;
      }

      while (v3 != v4);
      if (v5)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 = *(this + 12) & 0xFFFFFEFF;
    }

    else
    {
LABEL_12:
      v8 = *(this + 12) | 0x100;
    }

    *(this + 12) = v8 | 0x200;
  }

  return this;
}

uint64_t CA::Render::EmitterState::update_cells(CA::Render::EmitterState *a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, float a7)
{
  v68 = a2;
  v8 = a1;
  block[11] = *MEMORY[0x1E69E9840];
  if (!a3 || (v10 = *(a3 + 16), !v10))
  {
    CA::Render::EmitterState::free_cells_state(a1, a4);
    result = 0;
    *a4 = 0;
    *(a4 + 8) = 0;
    return result;
  }

  v67 = a5;
  v13 = *(a4 + 8);
  v14 = 8 * v10;
  if (v13 != v10)
  {
    v15 = *a4;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    a1 = malloc_type_zone_malloc(malloc_zone, 8 * v10, 0x2004093837F09uLL);
    if (v13 >= v10)
    {
      v16 = v10;
    }

    else
    {
      v16 = v13;
    }

    if (v13)
    {
      v17 = v15;
      v18 = a1;
      v19 = v16;
      do
      {
        v20 = *v17++;
        *v18 = v20;
        v18 = (v18 + 8);
        --v19;
      }

      while (v19);
    }

    v66 = a1;
    if (v13 < v10)
    {
      v64 = v15;
      v65 = 8 * v10;
      v21 = v10 - v16;
      v22 = (v66 + 8 * v16);
      do
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        a1 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x28uLL, 0x10200401F44B2F2uLL);
        *v22++ = a1;
        *(a1 + 6) = 1176256512;
        --v21;
      }

      while (v21);
      v16 = v10;
      v14 = v65;
      v15 = v64;
    }

    v24 = v13 - v16;
    if (v13 > v16)
    {
      v25 = &v15[v16];
      do
      {
        v26 = *v25++;
        CA::Render::EmitterState::free_cell_state(v8, v26);
        --v24;
      }

      while (v24);
    }

    if (v13)
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v15);
    }

    *(a4 + 8) = v10;
    *a4 = v66;
  }

  v27 = a3 + 24;
  if (v10 > 0x200)
  {
    v28 = malloc_type_malloc(v14, 0x100004000313F17uLL);
    v30 = malloc_type_malloc(v14, 0x100004000313F17uLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v28 = &v64 - ((v14 + 15) & 0xFFFFFFFF0);
    bzero(v28, v14);
    MEMORY[0x1EEE9AC00](v29);
    v30 = v28;
    bzero(v28, v14);
  }

  v31 = 0;
  v32 = 0.0;
  do
  {
    v33 = *(v27 + 8 * v31);
    v34 = *(*a4 + 8 * v31);
    v35 = *(v33 + 72);
    v36 = &v30[v31];
    *v36 = a6;
    v37 = *(v33 + 56);
    if (v37 && (CA::Render::Timing::map_time(v37, &v30[v31], 0) & 1) == 0)
    {
      *v36 = -1.0;
      v60 = *(*(v33 + 56) + 40);
      if (v60 > a6)
      {
        *v68 = fmin(*v68, v60);
      }

LABEL_65:
      *&v28[8 * v31] = 0;
      *v34 = 0;
      goto LABEL_66;
    }

    v38 = v35 * a7;
    if ((v35 * a7) <= 0.0)
    {
      goto LABEL_65;
    }

    if (v32 <= v38)
    {
      v32 = v35 * a7;
    }

    v39 = (1.0 / v38);
    *&v28[8 * v31] = v39;
    v40 = *(v8 + 129);
    if ((v40 & 1) == 0)
    {
      v39 = -v39;
      *&v28[8 * v31] = v39;
    }

    if (*(v34 + 36) != v40 && *(v34 + 16))
    {
      v41 = INFINITY;
      if (v40)
      {
        v41 = -INFINITY;
      }

      v42 = *(v34 + 20);
      if (v42)
      {
        v43 = (*(v34 + 8) + 24);
        do
        {
          if (*v43 != 0.0)
          {
            v44 = *(v43 - 1);
            if (v40)
            {
              v41 = fmax(v41, v44);
            }

            else
            {
              v41 = fmin(v41, v44 + *v43);
            }
          }

          v43 += 32;
          --v42;
        }

        while (v42);
      }

      v45 = *(v33 + 56);
      if (v45)
      {
        v41 = (v41 - *(v45 + 40)) * *(v45 + 16);
      }

      *v34 = v39 + v41;
      *(v34 + 36) = v40;
    }

    v46 = fmaxf(v38, 0.0);
    v47 = (fabsf(*(v33 + 80)) + *(v33 + 76)) * *(*(v8 + 17) + 80);
    v48 = *v36;
    v49 = *v34 - *v36;
    v50 = v49;
    v51 = fabsf(v50);
    if (v51 > v47 && (v51 * v46) > 32.0)
    {
      v53 = v47;
      v54 = v46;
      v55 = floor((v48 + v47) * v54);
      v56 = ceil((v48 - v53) * v54);
      if (!v40)
      {
        v56 = v55;
      }

      v57 = v56 / v54;
      *v34 = v57;
      v48 = *v36;
      v49 = v57 - *v36;
    }

    v58 = *&v28[8 * v31];
    v59 = *(v34 + 24);
    if (fabs(v49) > fabs(v58) * v59)
    {
      *v34 = v48 - v58 * v59;
      if (v59 > 100.0)
      {
        *(v34 + 24) = v59 * 0.5;
      }

LABEL_62:
      *(v34 + 28) = 15;
      goto LABEL_66;
    }

    v61 = *(v34 + 28);
    v62 = __OFSUB__(v61, 1);
    v63 = v61 - 1;
    if (v63 < 0 == v62)
    {
      *(v34 + 28) = v63;
      if (!v63)
      {
        *(v34 + 24) = v59 + v59;
        if ((v59 + v59) < 10000.0)
        {
          goto LABEL_62;
        }

        *(v34 + 24) = 1176256512;
      }
    }

LABEL_66:
    ++v31;
  }

  while (v31 != v10);
  if (v32 == 0.0 && !*(a4 + 12))
  {
    if (v10 >= 0x201)
    {
      free(v28);
      free(v30);
    }

    return 0;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CA6Render12EmitterState12update_cellsEdRdPNS0_10TypedArrayINS0_11EmitterCellEEEPNS1_5CellsEPNS1_8ParticleEf_block_invoke;
    block[3] = &__block_descriptor_tmp_11732;
    block[4] = v8;
    block[5] = v27;
    block[6] = a4;
    block[7] = v30;
    block[8] = v28;
    *&block[9] = a6;
    block[10] = v67;
    dispatch_apply(v10, 0, block);
    if (v10 >= 0x201)
    {
      free(v28);
      free(v30);
    }

    *v68 = a6;
    return 1;
  }
}

float CA::ColorMatrix::set_color_monochrome(CA::ColorMatrix *this, float a2, float a3, float32x2_t *a4, double a5, double a6, double a7, double a8, int32x2_t a9)
{
  v9 = a4[1].f32[0];
  v10 = a4[1].f32[1];
  v11 = 1.0 - a3;
  _D5 = vmul_n_f32(*a4, a3);
  a9.i32[0] = 1046066128;
  *this = (1.0 - a3) + (_D5.f32[0] * 0.2126);
  *(this + 4) = vmul_n_f32(0x3D93DD983F371759, _D5.f32[0]);
  *(this + 3) = 0;
  _D6 = vdup_lane_s32(a9, 0);
  _D6.f32[0] = a2;
  *(this + 2) = vmul_f32(_D5, _D6);
  _D6.i32[0] = 1060575065;
  v14 = v9 * a3;
  v15 = (1.0 - a3) + (v10 * a3);
  v16 = v11 + (v14 * 0.0722);
  __asm { FMLA            S4, S6, V5.S[1] }

  *(this + 6) = _S4;
  *(this + 7) = vmuls_lane_f32(0.0722, _D5, 1);
  *(this + 8) = 0;
  *(this + 9) = vmuls_lane_f32(a2, _D5, 1);
  *(this + 5) = vmul_n_f32(0x3F3717593E59B3D0, v14);
  *(this + 12) = v16;
  *(this + 13) = 0;
  result = v14 * a2;
  *(this + 14) = result;
  *(this + 8) = 0;
  *(this + 15) = 0;
  *(this + 18) = v15;
  *(this + 19) = 0;
  return result;
}

void ___ZN2CA6Render12EmitterState12update_cellsEdRdPNS0_10TypedArrayINS0_11EmitterCellEEEPNS1_5CellsEPNS1_8ParticleEf_block_invoke(uint64_t a1, uint64_t a2)
{
  v249 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 8 * a2);
  v6 = *(**(a1 + 48) + 8 * a2);
  v7 = *(*(a1 + 56) + 8 * a2);
  memset(__p, 0, sizeof(__p));
  v9 = *(v4 + 144);
  v8 = *(v4 + 152);
  v10 = v8 - v9;
  if (v8 != v9)
  {
    if (!((v10 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Render::EmitterBehavior::Eval const*>>(v10 >> 3);
    }

    std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
  }

  v243 = *(v4 + 168);
  if (v7 < 0.0 || *(*(a1 + 64) + 8 * a2) == 0.0)
  {
    if (*(v4 + 129))
    {
      v11 = INFINITY;
    }

    else
    {
      v11 = -INFINITY;
    }
  }

  else
  {
    v11 = *v6;
  }

  v242 = a2;
  v12.i64[0] = 0x80000000800000;
  v12.i64[1] = 0x80000000800000;
  v13 = vnegq_f32(v12);
  v247 = v13;
  v248 = v12;
  v14 = *(v6 + 8);
  v240 = *(v6 + 16);
  v15 = v14 + (*(v6 + 20) << 7);
  v241 = v6;
  while (v240 || (*(v4 + 129) ? v11 < v7 : v11 > v7))
  {
    if (v14 == v15)
    {
      v17 = *(v6 + 20);
      if (v17)
      {
        v18 = (2 * v17);
      }

      else
      {
        v18 = 16;
      }

      if (v18 > 0x20000)
      {
        break;
      }

      v19 = v18 + (*(v4 + 84) - v17);
      if (v19 > 0x80000)
      {
        break;
      }

      v20 = v18 << 7;
      v21 = malloc_type_malloc(v18 << 7, 0x1080040F72ECE51uLL);
      if (!v21)
      {
        break;
      }

      v22 = v21;
      v23 = *(v6 + 20);
      if (v23)
      {
        memcpy(v21, *(v6 + 8), v23 << 7);
        free(*(v6 + 8));
        v24 = *(v6 + 20);
      }

      else
      {
        v24 = 0;
      }

      if (v24 < v18)
      {
        v25 = 0;
        v26 = (v22 + (v24 << 7));
        v27 = v26 + 128;
        if ((v26 + 128) <= v20 + v22)
        {
          v27 = (v20 + v22);
        }

        v28 = &v27[~v22 + -128 * v24] >> 7;
        v29 = vdupq_n_s64(v28);
        v30 = v26 + 280;
        do
        {
          v31 = vdupq_n_s64(v25);
          v32 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_183E20FF0)));
          if (vuzp1_s16(v32, *v29.i8).u8[0])
          {
            *(v30 - 64) = 0;
          }

          if (vuzp1_s16(v32, *&v29).i8[2])
          {
            *(v30 - 32) = 0;
          }

          v33 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_183E21240)));
          if (vuzp1_s16(*&v29, v33).i32[1])
          {
            *v30 = 0;
          }

          *v13.f32 = vuzp1_s16(*v29.i8, v33);
          if (v13.i8[6])
          {
            v30[32] = 0;
          }

          v25 += 4;
          v30 += 128;
        }

        while (((v28 + 4) & 0x3FFFFFFFFFFFFFCLL) != v25);
      }

      *(v6 + 8) = v22;
      *(v6 + 20) = v18;
      *(v4 + 84) = v19;
      v14 = v22 + (*(v6 + 16) << 7);
      v15 = v22 + (v18 << 7);
    }

    v34 = *(v14 + 24);
    if (v34 == 0.0)
    {
      v38 = v242;
    }

    else
    {
      --v240;
      v35 = *(a1 + 72) - *(v14 + 16);
      if (*(v14 + 12) || (v35 >= 0.0 ? (v36 = v34 <= v35) : (v36 = 1), !v36))
      {
        if (CA::Render::EmitterState::update_particle(v4, v5, v14, &v247, __p, v243, v35))
        {
          goto LABEL_225;
        }
      }

      v37 = *(a1 + 48);
      *(v14 + 24) = 0;
      --*(v6 + 16);
      --*(v37 + 12);
      if (*(v14 + 8))
      {
        CA::Render::EmitterState::free_cells_state(v4, v14);
      }

      v38 = v242;
    }

    if (*(v4 + 129))
    {
      v39 = v11 < v7;
    }

    else
    {
      v39 = v11 > v7;
    }

    if (!v39)
    {
      goto LABEL_225;
    }

    v238 = v15;
    v40 = (v14 + 32);
    while (1)
    {
      v41 = *(a1 + 80);
      v42 = *(v5 + 76);
      v43 = *(v5 + 80);
      if (v43 != 0.0)
      {
        v44 = 214013 * *(v4 + 28) + 2531011;
        *(v4 + 28) = v44;
        v42 = v42 + (((HIWORD(v44) * 0.000015259) + -0.5) * v43);
      }

      *(v14 + 24) = v42;
      v45 = *(v4 + 136);
      *(v14 + 24) = v45[10].f32[0] * v42;
      if (v41)
      {
        v46 = *(v41 + 32);
        *(v14 + 40) = *(v41 + 40);
        *v40 = v46;
        *(v14 + 84) = *(v41 + 84);
        v47 = *(v41 + 112);
        *(v14 + 120) = *(v41 + 120);
        *(v14 + 112) = v47;
        *(v14 + 64) = *(v41 + 64);
        v48 = *(v41 + 48);
        v49 = *(v41 + 56);
        v50 = 1.0 / sqrtf(vaddv_f32(vmul_f32(v48, v48)) + (v49 * v49));
        v245 = vmul_n_f32(v48, v50);
        v246 = v50 * v49;
        goto LABEL_165;
      }

      v51 = v45[11];
      *(v14 + 40) = v45[12].i32[0];
      *v40 = v51;
      v245 = 1065353216;
      v246 = 0.0;
      v52 = *(v4 + 136);
      v53 = *(v52 + 68);
      v54 = 0.0;
      if (v53 == 635)
      {
        v55 = *(v52 + 84);
        v54 = fmod(v11, v55);
        if (v55 >= 0.0)
        {
          if (v54 < 0.0)
          {
            goto LABEL_65;
          }
        }

        else
        {
          if (v54 <= 0.0)
          {
            goto LABEL_66;
          }

LABEL_65:
          v54 = v54 + v55;
        }

LABEL_66:
        v56 = v54;
        *&v54 = v56 / v55;
      }

      v57 = *(v52 + 64);
      if (v57 <= 553)
      {
        switch(v57)
        {
          case 98:
            if (v53 == 635)
            {
              goto LABEL_95;
            }

            if (v53 != 568)
            {
              if (v53 != 548)
              {
                v80 = *(v52 + 100) * 0.5;
                v81 = 214013 * *(v4 + 28) + 2531011;
                v82 = HIWORD(v81) * 0.000015259;
                v83 = 214013 * v81 + 2531011;
                *(v4 + 28) = v83;
                CA::Render::EmitterState::point_on_circle((v14 + 32), &v245, HIWORD(v83) * 0.000015259, (v82 * v80) / sqrtf(v82));
                goto LABEL_154;
              }

              v65 = 214013 * *(v4 + 28) + 2531011;
              *(v4 + 28) = v65;
              *&v54 = HIWORD(v65) * 0.000015259;
LABEL_95:
              CA::Render::EmitterState::point_on_circle((v14 + 32), &v245, *&v54, *(v52 + 100) * 0.5);
            }

            break;
          case 171:
            v68.i32[0] = *(v52 + 100);
            switch(v53)
            {
              case 548:
                v116 = *(v52 + 108);
                v117 = 214013 * *(v4 + 28) + 2531011;
                *(v4 + 28) = v117;
                v118 = HIWORD(v117) * 0.00018311;
                v119 = vcvtms_s32_f32(v118);
                if (v119 >= 11)
                {
                  v119 = 11;
                }

                v120 = v118 - v119;
                v121 = 9 * v119;
                v122 = vadd_f32(*(&CA::Render::EmitterState::point_on_cuboid_outline(CA::Vec3<float> &,CA::Vec3<float> &,float,float,float)::outlines + 4 * v121), 0xBF000000BF000000);
                v123 = &CA::Render::EmitterState::point_on_cuboid_outline(CA::Vec3<float> &,CA::Vec3<float> &,float,float,float)::outlines + 4 * v121;
                v68.i32[1] = *(v52 + 104);
                *(v14 + 32) = vmla_f32(*(v14 + 32), v68, vmla_n_f32(v122, *(v123 + 12), v120));
                *(v14 + 40) = *(v14 + 40) + (((*(v123 + 2) + -0.5) + (*(v123 + 5) * v120)) * v116);
                v245 = *(v123 + 24);
                v94 = *(v123 + 8);
                goto LABEL_146;
              case 701:
                v84 = *(v52 + 108);
                v85 = 214013 * *(v4 + 28) + 2531011;
                v86 = HIWORD(v85) * 0.000091554;
                v87 = vcvtms_s32_f32(v86);
                if (v87 >= 5)
                {
                  v87 = 5;
                }

                v88 = v86 - v87;
                v89 = 12 * v87;
                v90 = 214013 * v85 + 2531011;
                *(v4 + 28) = v90;
                v91 = HIWORD(v90) * 0.000015259;
                v92 = 4 * v89;
                v93 = &CA::Render::EmitterState::point_on_cuboid_surface(CA::Vec3<float> &,CA::Vec3<float> &,float,float,float)::surfaces + 4 * v89;
                v68.i32[1] = *(v52 + 104);
                *(v14 + 32) = vmla_f32(*(v14 + 32), v68, vmla_n_f32(vmla_n_f32(vadd_f32(*(&CA::Render::EmitterState::point_on_cuboid_surface(CA::Vec3<float> &,CA::Vec3<float> &,float,float,float)::surfaces + v92), 0xBF000000BF000000), *(v93 + 24), v91), *(v93 + 12), v88));
                *(v14 + 40) = *(v14 + 40) + ((((*(v93 + 2) + -0.5) + (*(v93 + 5) * v88)) + (*(v93 + 8) * v91)) * v84);
                v245 = *(v93 + 36);
                v94 = *(v93 + 11);
LABEL_146:
                v246 = v94;
                goto LABEL_164;
              case 568:
                v69 = *(v14 + 36);
                v70 = *(v14 + 32) - (v68.f32[0] * 0.5);
                *(v14 + 32) = v70;
                v71 = v69 - (*(v52 + 104) * 0.5);
                *(v14 + 36) = v71;
                v72 = *(v14 + 40) - (*(v52 + 108) * 0.5);
                *(v14 + 40) = v72;
                v73 = 214013 * *(v4 + 28) + 2531011;
                if ((HIWORD(v73) * 0.000015259) > 0.5)
                {
                  v40->f32[0] = *(v52 + 100) + v70;
                }

                v74 = 214013 * v73 + 2531011;
                if ((HIWORD(v74) * 0.000015259) > 0.5)
                {
                  *(v14 + 36) = *(v52 + 104) + v71;
                }

                v75 = 214013 * v74 + 2531011;
                *(v4 + 28) = v75;
                if ((HIWORD(v75) * 0.000015259) <= 0.5)
                {
                  goto LABEL_164;
                }

                v76 = *(v52 + 108);
                break;
              default:
                v134 = 0.0;
                v135.i32[0] = 0;
                if (v68.f32[0] != 0.0)
                {
                  v136 = 214013 * *(v4 + 28) + 2531011;
                  *(v4 + 28) = v136;
                  v135.f32[0] = ((HIWORD(v136) * 0.000015259) + -0.5) * v68.f32[0];
                }

                v137 = *(v52 + 104);
                if (v137 != 0.0)
                {
                  v138 = 214013 * *(v4 + 28) + 2531011;
                  *(v4 + 28) = v138;
                  v134 = ((HIWORD(v138) * 0.000015259) + -0.5) * v137;
                }

                v139 = *(v52 + 108);
                v72 = 0.0;
                if (v139 != 0.0)
                {
                  v140 = 214013 * *(v4 + 28) + 2531011;
                  *(v4 + 28) = v140;
                  v72 = ((HIWORD(v140) * 0.000015259) + -0.5) * v139;
                }

                v135.f32[1] = v134;
                *(v14 + 32) = vadd_f32(*(v14 + 32), v135);
                v76 = *(v14 + 40);
                break;
            }

            *(v14 + 40) = v76 + v72;
            break;
          case 478:
            if (v53 != 635)
            {
              if (v53 == 568)
              {
                v63 = v40->f32[0] - (*(v52 + 100) * 0.5);
                v40->f32[0] = v63;
                v64 = 214013 * *(v4 + 28) + 2531011;
                *(v4 + 28) = v64;
                if ((HIWORD(v64) * 0.000015259) > 0.5)
                {
                  v40->f32[0] = *(v52 + 100) + v63;
                }

                break;
              }

              v77 = *(v52 + 100);
              v78 = 0.0;
              if (v77 != 0.0)
              {
                v79 = 214013 * *(v4 + 28) + 2531011;
                *(v4 + 28) = v79;
                v78 = ((HIWORD(v79) * 0.000015259) + -0.5) * v77;
              }

              v40->f32[0] = v40->f32[0] + v78;
              v245 = 0xBF80000000000000;
              goto LABEL_155;
            }

            v40->f32[0] = v40->f32[0] + (*(v52 + 100) * (*&v54 + -0.5));
            v245 = 0xBF80000000000000;
            break;
        }
      }

      else if (v57 > 594)
      {
        if (v57 == 595)
        {
          if (v53 == 635)
          {
            goto LABEL_105;
          }

          if (v53 != 568)
          {
            if (v53 != 548)
            {
              v104 = *(v52 + 56);
              if (!v104)
              {
                goto LABEL_164;
              }

              v105 = *(v104 + 16);
              v106 = v105 / 5uLL;
              _ZF = v105 >= 5 && 5 * (v105 / 5uLL) == v105;
              if (!_ZF)
              {
                goto LABEL_164;
              }

              v108 = 0;
              v109 = *(v52 + 100);
              v110 = v104 + 24;
              v111 = v110 + 32 * v106;
              v112 = *(v111 + 8 * v106 - 8);
              v113 = 214013 * *(v4 + 28) + 2531011;
              *(v4 + 28) = v113;
              *&v112 = v112 * (HIWORD(v113) * 0.000015259);
              v114 = *&v112;
              while (*(v111 + 8 * v108) <= v114)
              {
                if (v106 == ++v108)
                {
                  goto LABEL_164;
                }
              }

              v191 = (v110 + 32 * v108);
              v192 = 214013 * v113 + 2531011;
              *(v4 + 28) = 214013 * v192 + 2531011;
              v193.i32[0] = v192;
              v193.i32[1] = 214013 * v192 + 2531011;
              __asm { FMOV            V4.2D, #-0.5 }

              v130 = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(*v40), vcvtq_f64_f32(v109), vmlaq_f64(vaddq_f64(*v191, _Q4), vcvtq_f64_f32(vmul_f32(vcvt_f32_u32(vshr_n_u32(v193, 0x10uLL)), vdup_n_s32(0x37800080u))), v191[1])));
              goto LABEL_152;
            }

            v67 = 214013 * *(v4 + 28) + 2531011;
            *(v4 + 28) = v67;
            *&v54 = HIWORD(v67) * 0.000015259;
LABEL_105:
            v13.i32[0] = *(v52 + 100);
            CA::Render::EmitterState::point_on_rectangles(*(v52 + 56), (v14 + 32), &v245, *&v54, *v13.f32, *(v52 + 104));
          }
        }

        else if (v57 == 672)
        {
          if (v53 == 701)
          {
            goto LABEL_90;
          }

          if (v53 != 568)
          {
            if (v53 != 548)
            {
              v131 = *(v52 + 100) * 0.5;
              v132 = 214013 * *(v4 + 28) + 2531011;
              *(v4 + 28) = v132;
              v133 = powf(HIWORD(v132) * 0.000015259, 0.33333);
              CA::Render::EmitterState::point_on_sphere(v4, v14 + 32, &v245, v133 * v131);
LABEL_154:
              v245 = 1065353216;
LABEL_155:
              v246 = 0.0;
              goto LABEL_164;
            }

LABEL_90:
            CA::Render::EmitterState::point_on_sphere(v4, v14 + 32, &v245, *(v52 + 100) * 0.5);
          }
        }
      }

      else if (v57 == 554)
      {
        if (v53 == 635)
        {
          goto LABEL_100;
        }

        if (v53 != 568)
        {
          if (v53 != 548)
          {
            v95 = *(v52 + 48);
            if (!v95)
            {
              goto LABEL_164;
            }

            v96 = *(v52 + 100);
            v97 = CA::Render::Path::bounding_rect(*(v52 + 48));
            v98 = *(v97 + 16);
            if (v98 >= *(v97 + 24))
            {
              v98 = *(v97 + 24);
            }

            if (v98 <= 0.0)
            {
              goto LABEL_164;
            }

            v99 = v97;
            v100 = 1000;
            while (1)
            {
              v101 = 214013 * *(v4 + 28) + 2531011;
              *(v4 + 28) = 214013 * v101 + 2531011;
              v102.i32[0] = v101;
              v102.i32[1] = 214013 * v101 + 2531011;
              point = vmlaq_f64(*v99, vcvtq_f64_f32(vmul_f32(vcvt_f32_u32(vshr_n_u32(v102, 0x10uLL)), vdup_n_s32(0x37800080u))), v99[1]);
              v103 = CA::Render::Path::cg_path(v95);
              if (CGPathContainsPoint(v103, 0, point, 0))
              {
                break;
              }

              if (!--v100)
              {
                goto LABEL_164;
              }
            }

            __asm { FMOV            V1.2D, #-0.5 }

            v130 = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(*v40), vcvtq_f64_f32(v96), vaddq_f64(point, _Q1)));
LABEL_152:
            *v40 = v130;
            goto LABEL_164;
          }

          v66 = 214013 * *(v4 + 28) + 2531011;
          *(v4 + 28) = v66;
          *&v54 = HIWORD(v66) * 0.000015259;
LABEL_100:
          CA::Render::EmitterState::point_on_path(*(v52 + 48), (v14 + 32), &v245, *&v54, *(v52 + 100), *(v52 + 104));
        }
      }

      else if (v57 == 594)
      {
        switch(v53)
        {
          case 548:
            v115 = 214013 * *(v4 + 28) + 2531011;
            *(v4 + 28) = v115;
            *&v54 = HIWORD(v115) * 0.000015259;
            break;
          case 635:
            break;
          case 568:
            v58 = *(v14 + 36);
            v59 = *(v14 + 32) - (*(v52 + 100) * 0.5);
            *(v14 + 32) = v59;
            v60 = v58 - (*(v52 + 104) * 0.5);
            *(v14 + 36) = v60;
            v61 = 214013 * *(v4 + 28) + 2531011;
            if ((HIWORD(v61) * 0.000015259) > 0.5)
            {
              v40->f32[0] = *(v52 + 100) + v59;
            }

            v62 = 214013 * v61 + 2531011;
            *(v4 + 28) = v62;
            if ((HIWORD(v62) * 0.000015259) > 0.5)
            {
              *(v14 + 36) = *(v52 + 104) + v60;
            }

            goto LABEL_164;
          default:
            v124 = *(v52 + 100);
            v125 = 0.0;
            v126.i32[0] = 0;
            if (v124 != 0.0)
            {
              v127 = 214013 * *(v4 + 28) + 2531011;
              *(v4 + 28) = v127;
              v126.f32[0] = ((HIWORD(v127) * 0.000015259) + -0.5) * v124;
            }

            v128 = *(v52 + 104);
            if (v128 != 0.0)
            {
              v129 = 214013 * *(v4 + 28) + 2531011;
              *(v4 + 28) = v129;
              v125 = ((HIWORD(v129) * 0.000015259) + -0.5) * v128;
            }

            v126.f32[1] = v125;
            v130 = vadd_f32(*v40, v126);
            goto LABEL_152;
        }

        CA::Render::EmitterState::point_on_rectangle((v14 + 32), &v245, *&v54, *(v52 + 100), *(v52 + 104));
      }

LABEL_164:
      *(v14 + 88) = 0;
      *(v14 + 112) = 0;
      *(v14 + 120) = 1065353216;
      *(v14 + 84) = *(*(v4 + 136) + 116);
      __asm { FMOV            V0.4S, #1.0 }

      *(v14 + 64) = _Q0;
      v6 = v241;
      v38 = v242;
LABEL_165:
      CA::Render::EmitterState::adjust_vector(v4, &v245, *(v5 + 88), *(v5 + 84), *(v5 + 92));
      v144 = *(v5 + 92);
      if (v144 != 0.0)
      {
        CA::Render::EmitterState::apply_random_deviation(v4, &v245, v144);
      }

      v145 = *(v5 + 96);
      v146 = *(v5 + 100);
      if (v146 != 0.0)
      {
        v147 = 214013 * *(v4 + 28) + 2531011;
        *(v4 + 28) = v147;
        v145 = v145 + (((HIWORD(v147) * 0.000015259) + -0.5) * v146);
      }

      v148 = *(*(v4 + 136) + 112) * v145;
      v149 = v246 * v148;
      *(v14 + 48) = vmul_n_f32(v245, v148);
      *(v14 + 56) = v149;
      if (*(v5 + 64) == 557)
      {
        CA::Render::EmitterState::adjust_vector(v4, (v14 + 112), *(v5 + 140), *(v5 + 136), *(v5 + 144));
      }

      else
      {
        *(v14 + 112) = 0;
        *(v14 + 120) = 1065353216;
      }

      *(v14 + 44) = 1065353216;
      v150 = *(v5 + 148);
      v151 = *(v5 + 152);
      if (v151 != 0.0)
      {
        v152 = 214013 * *(v4 + 28) + 2531011;
        *(v4 + 28) = v152;
        v150 = v150 + (((HIWORD(v152) * 0.000015259) + -0.5) * v151);
      }

      *(v14 + 88) = *(v14 + 88) + v150;
      v153 = *(v5 + 156);
      v154 = *(v5 + 160);
      if (v154 != 0.0)
      {
        v155 = 214013 * *(v4 + 28) + 2531011;
        *(v4 + 28) = v155;
        v153 = v153 + (((HIWORD(v155) * 0.000015259) + -0.5) * v154);
      }

      *(v14 + 92) = v153;
      v156 = *(v5 + 124);
      v157 = *(v5 + 128);
      if (v157 != 0.0)
      {
        v158 = 214013 * *(v4 + 28) + 2531011;
        *(v4 + 28) = v158;
        v156 = v156 + (((HIWORD(v158) * 0.000015259) + -0.5) * v157);
      }

      *(v14 + 84) = *(v14 + 84) * v156;
      *(v14 + 124) = *(v5 + 132);
      v159 = *(v5 + 68);
      if (v159 == 589)
      {
        v164 = *(v5 + 220);
        if (v164 < 1.0)
        {
          v164 = 1.0;
        }

        v165 = 214013 * *(v4 + 28) + 2531011;
        *(v4 + 28) = v165;
        *(v14 + 80) = (v164 * 0.000015259) * HIWORD(v165);
      }

      else if (v159 == 635)
      {
        v160 = fmaxf(*(v5 + 220), 1.0);
        v161 = *(v6 + 32);
        if (v161 >= v160 || v161 < 0.0)
        {
          v161 = 0.0;
        }

        *(v14 + 80) = v161;
        v163 = fmodf(v161 + 1.0, v160);
        if (v163 < 0.0)
        {
          v163 = v163 + v160;
        }

        *(v6 + 32) = v163;
      }

      else
      {
        *(v14 + 80) = 0;
      }

      v166.i32[0] = *(v5 + 164);
      v167 = *(v5 + 180);
      if (v167 != 0.0)
      {
        v168 = 214013 * *(v4 + 28) + 2531011;
        *(v4 + 28) = v168;
        v166.f32[0] = v166.f32[0] + (((HIWORD(v168) * 0.000015259) + -0.5) * v167);
      }

      v169 = *(v5 + 168);
      v170 = *(v5 + 184);
      if (v170 != 0.0)
      {
        v171 = 214013 * *(v4 + 28) + 2531011;
        *(v4 + 28) = v171;
        v169 = v169 + (((HIWORD(v171) * 0.000015259) + -0.5) * v170);
      }

      v172 = *(v5 + 172);
      v173 = *(v5 + 188);
      if (v173 != 0.0)
      {
        v174 = 214013 * *(v4 + 28) + 2531011;
        *(v4 + 28) = v174;
        v172 = v172 + (((HIWORD(v174) * 0.000015259) + -0.5) * v173);
      }

      v175 = *(v5 + 176);
      v176 = *(v5 + 192);
      if (v176 != 0.0)
      {
        v177 = 214013 * *(v4 + 28) + 2531011;
        *(v4 + 28) = v177;
        v175 = v175 + (((HIWORD(v177) * 0.000015259) + -0.5) * v176);
      }

      v166.f32[1] = v169;
      v13 = *(v14 + 64);
      v166.i64[1] = __PAIR64__(LODWORD(v175), LODWORD(v172));
      *(v14 + 64) = vmulq_f32(v13, v166);
      *(v14 + 96) = *(v14 + 64);
      v178 = *(v5 + 116);
      v13.i32[0] = *(v5 + 120);
      if (v13.f32[0] != 0.0)
      {
        v179 = 214013 * *(v4 + 28) + 2531011;
        *(v4 + 28) = v179;
        v178 = v178 + (((HIWORD(v179) * 0.000015259) + -0.5) * v13.f32[0]);
      }

      *(v14 + 28) = 1.0 / v178;
      *v14 = 0;
      *(v14 + 8) = 0;
      v180 = *(v4 + 129);
      v13.i32[0] = *(v14 + 24);
      v181 = v11 - v13.f32[0];
      if (v180)
      {
        v181 = v11;
        v182 = v11 + v13.f32[0];
      }

      else
      {
        v182 = v11;
      }

      v183 = *(*(a1 + 64) + 8 * v38);
      v184 = *(v5 + 56);
      if (v184)
      {
        v185 = *(v184 + 16);
        if (v185 != 1.0)
        {
          v186 = (1.0 / v185);
          v181 = v181 * v186;
          v182 = v182 * v186;
        }

        v13.i64[0] = *(v184 + 40);
        v187 = v182 - v181;
        v181 = *v13.i64 + v181;
        v13.f32[0] = v187;
        *(v14 + 24) = v13.i32[0];
      }

      v11 = v183 + v11;
      *(v14 + 16) = v181;
      *(v14 + 60) = 0;
      if (v181 <= 0.0)
      {
        goto LABEL_216;
      }

      if (v13.f32[0] <= 0.0)
      {
        goto LABEL_216;
      }

      v188 = *(a1 + 72) - v181;
      if (v188 < 0.0 || v13.f32[0] <= v188)
      {
        goto LABEL_216;
      }

      if (CA::Render::EmitterState::update_particle(v4, v5, v14, &v247, __p, v243, v188))
      {
        break;
      }

      v180 = *(v4 + 129);
LABEL_216:
      *(v14 + 24) = 0;
      if (v180)
      {
        v189 = v11 < v7;
      }

      else
      {
        v189 = v11 > v7;
      }

      if (!v189)
      {
        goto LABEL_224;
      }
    }

    ++*(v6 + 16);
    ++*(*(a1 + 48) + 12);
LABEL_224:
    v15 = v238;
LABEL_225:
    v14 += 128;
  }

  if (v7 >= 0.0 && *(*(a1 + 64) + 8 * v242) != 0.0)
  {
    *v6 = v11;
  }

  if (*(v6 + 16))
  {
    v195 = *(v5 + 24);
    v196.f64[0] = 0.0;
    if (v195)
    {
      v197 = (*(*v195 + 80))(v195);
      v196.f64[0] = 0.0;
      if (v197)
      {
        v198 = COERCE_DOUBLE(vcvt_f32_u32(v197[2]));
        v199 = *(v5 + 216);
        _ZF = v199 == 1.0;
        v200 = COERCE_DOUBLE(vmul_n_f32(*&v198, 1.0 / v199));
        if (!_ZF)
        {
          v198 = v200;
        }

        v201 = *(v5 + 32);
        if (v201)
        {
          v202 = 0uLL;
          if (*(v201 + 16) >= 4u)
          {
            v196 = *(v201 + 40);
            v202 = vsubq_f64(v196, *(v201 + 24));
          }

          v198 = COERCE_DOUBLE(vcvt_f32_f64(vmulq_f64(v202, vcvtq_f64_f32(*&v198))));
        }

        if (*&v198 <= *(&v198 + 1))
        {
          *&v198 = *(&v198 + 1);
        }

        *v196.f64 = *&v198 * *(v4 + 80);
        v203 = vdup_lane_s32(*&v196.f64[0], 0);
        *v247.f32 = vsub_f32(*v247.f32, v203);
        *v248.f32 = vadd_f32(*v248.f32, v203);
        v247.f32[2] = v247.f32[2] - *v196.f64;
      }
    }

    v204 = v247.f32[2] - *v196.f64;
    v205 = v248.f32[2] + *v196.f64;
    if ((v247.f32[2] - *v196.f64) <= (v248.f32[2] + *v196.f64))
    {
      v206 = vdup_lane_s32(*&v196.f64[0], 0);
      v207 = vcvtq_f64_f32(vsub_f32(*v247.f32, v206));
      v208 = vcvtq_f64_f32(vadd_f32(*v248.f32, v206));
      v209 = v204;
      v210 = v205;
      v211 = *(v4 + 72);
      v212 = *(v4 + 48);
      if (v211 < v212)
      {
        *(v4 + 32) = v207;
        *(v4 + 48) = v209;
        *(v4 + 56) = v208;
        goto LABEL_255;
      }

      if (v207.f64[0] < *(v4 + 32))
      {
        *(v4 + 32) = v207.f64[0];
      }

      if (v207.f64[1] < *(v4 + 40))
      {
        *(v4 + 40) = v207.f64[1];
      }

      if (v212 > v209)
      {
        *(v4 + 48) = v209;
      }

      if (v208.f64[0] > *(v4 + 56))
      {
        *(v4 + 56) = v208.f64[0];
      }

      if (v208.f64[1] > *(v4 + 64))
      {
        *(v4 + 64) = v208.f64[1];
      }

      if (v211 < v210)
      {
LABEL_255:
        *(v4 + 72) = v210;
      }
    }
  }

  v213 = *(v6 + 20);
  if (v213)
  {
    v214 = *(v241 + 16);
    if (!v214)
    {
      *(v4 + 84) -= v213;
      free(*(v241 + 8));
      v213 = 0;
      *(v241 + 8) = 0;
      *(v241 + 20) = 0;
      v214 = *(v241 + 16);
    }

    v215 = v213;
    do
    {
      v216 = v215;
      v215 >>= 1;
    }

    while (v215 > v214);
    if (v216 != v213 && v216 >= 0x10)
    {
      v217 = v216 + *(v4 + 84) - v213;
      if (v217 <= 0x80000)
      {
        v218 = v216 << 7;
        v219 = malloc_type_malloc(v216 << 7, 0x1080040F72ECE51uLL);
        if (v219)
        {
          v220 = v219;
          v221 = *(v241 + 20);
          v222 = v219;
          if (v221)
          {
            v223 = *(v241 + 8);
            v222 = v219;
            do
            {
              if (v223[6] != 0.0)
              {
                v224 = *v223;
                v225 = *(v223 + 1);
                v226 = *(v223 + 3);
                *(v222 + 32) = *(v223 + 2);
                *(v222 + 48) = v226;
                *v222 = v224;
                *(v222 + 16) = v225;
                v227 = *(v223 + 4);
                v228 = *(v223 + 5);
                v229 = *(v223 + 7);
                *(v222 + 96) = *(v223 + 6);
                *(v222 + 112) = v229;
                *(v222 + 64) = v227;
                *(v222 + 80) = v228;
                v222 += 128;
              }

              v223 += 32;
              --v221;
            }

            while (v221);
          }

          if (v222 < &v219[8 * v216])
          {
            v230 = 0;
            v231 = (v219 + v218);
            if (v219 + v218 <= v222 + 128)
            {
              v231 = (v222 + 128);
            }

            v232 = (v231 + ~v222) >> 7;
            v233 = vdupq_n_s64(v232);
            v234 = (v222 + 280);
            do
            {
              v235 = vdupq_n_s64(v230);
              v236 = vmovn_s64(vcgeq_u64(v233, vorrq_s8(v235, xmmword_183E20FF0)));
              if (vuzp1_s16(v236, *v233.i8).u8[0])
              {
                *(v234 - 64) = 0;
              }

              if (vuzp1_s16(v236, *&v233).i8[2])
              {
                *(v234 - 32) = 0;
              }

              if (vuzp1_s16(*&v233, vmovn_s64(vcgeq_u64(v233, vorrq_s8(v235, xmmword_183E21240)))).i32[1])
              {
                *v234 = 0;
                v234[32] = 0;
              }

              v230 += 4;
              v234 += 128;
            }

            while (((v232 + 4) & 0x3FFFFFFFFFFFFFCLL) != v230);
          }

          free(*(v241 + 8));
          *(v241 + 8) = v220;
          *(v241 + 20) = v216;
          *(v4 + 84) = v217;
        }
      }
    }
  }

  v237 = __p[0];
  if (__p[0])
  {

    operator delete(v237);
  }
}

void CA::Render::EmitterState::adjust_vector(uint64_t a1, float *a2, float a3, float a4, float a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3 != 0.0 || a4 != 0.0)
  {
    v8 = a4 + 1.5708;
    if (fabsf(a4 + 1.5708) >= 0.00001)
    {
      v12 = __sincosf_stret(a3);
      v13 = __sincosf_stret(v8);
      cosval = v13.__cosval;
      v10 = v13.__sinval * v12.__cosval;
      v11 = v13.__sinval * v12.__sinval;
    }

    else
    {
      cosval = 1.0;
      v10 = 0.0;
      v11 = 0.0;
    }

    v16 = __PAIR64__(LODWORD(v11), LODWORD(v10));
    v17 = cosval;
    v14 = 1065353216;
    v15 = 0;
  }

  if (a5 != 0.0)
  {

    CA::Render::EmitterState::apply_random_deviation(a1, a2, a5);
  }
}

void CA::Render::EmitterState::apply_random_deviation(uint64_t a1, float *a2, float a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = 214013 * *(a1 + 28) + 2531011;
  v5 = 214013 * v4 + 2531011;
  *(a1 + 28) = v5;
  v6 = HIWORD(v5);
  v7 = cosf(a3 * 0.5);
  cosval = 1.0;
  v9 = acosf((((v7 * 0.000015259) + -0.000015259) * v6) + 1.0);
  v10 = 0.0;
  v11 = 0.0;
  if (fabsf(v9) >= 0.00001)
  {
    v12 = ((HIWORD(v4) * 0.000015259) + -0.5) * 6.28318531;
    v13 = __sincosf_stret(v12);
    v14 = __sincosf_stret(v9);
    cosval = v14.__cosval;
    v10 = v14.__sinval * v13.__cosval;
    v11 = v14.__sinval * v13.__sinval;
  }

  v17 = __PAIR64__(LODWORD(v11), LODWORD(v10));
  v18 = cosval;
  v15 = 0;
  v16 = 1065353216;
}

void CA::Render::anonymous namespace::rotate_vector(float *a1, float32x2_t *a2, float *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = a3[1];
  v7 = *a1;
  v8 = a1[1];
  v9 = a3[2];
  v10 = a1[2];
  v11 = ((*a1 * *a3) + (v8 * v6)) + (v10 * v9);
  if (v11 > 1.0)
  {
    v11 = 1.0;
  }

  if (v11 < -1.0)
  {
    v11 = -1.0;
  }

  if (fabsf(v11 + -1.0) <= 0.00001)
  {
    v22 = *a2;
    a1[2] = a2[1].f32[0];
    *a1 = v22;
    return;
  }

  v13 = acosf(v11);
  v14 = -((v9 * v8) - (v10 * v6));
  v15 = -((v10 * v5) - (v9 * v7));
  v16 = -((v6 * v7) - (v8 * v5));
  if (fabsf(((v16 * v16) + (v14 * v14)) + (v15 * v15)) <= 0.00001)
  {
    if (fabsf(v13) <= 1.5708)
    {
      return;
    }

    v21 = -a2[1].f32[0];
    *a1 = vneg_f32(*a2);
  }

  else
  {
    v29 = 0u;
    *v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    CA::Mat4Impl::mat4_set_rotation(&v23, v12, v13, v14, v15, v16);
    v17 = a2[1].f32[0];
    v18 = vcvtq_f64_f32(*a2);
    v19 = v24;
    v20 = v26;
    *a1 = vcvt_f32_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmlaq_n_f64(v29, v23, v18.f64[0]), v25, v18, 1), v27, v17));
    v21 = vaddvq_f64(vmulq_f64(vzip1q_s64(v19, v20), v18)) + *&v28 * v17 + v30[0];
  }

  a1[2] = v21;
}

uint64_t CA::Render::EmitterState::update_particle(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, void *a5, char a6, float a7)
{
  v10 = a7;
  v52 = *MEMORY[0x1E69E9840];
  v12 = a7 - *(a3 + 60);
  *(a3 + 60) = a7;
  *(a3 + 44) = 1065353216;
  *(a3 + 64) = *(a3 + 96);
  v51 = 0.0;
  v50 = 0;
  v13 = a5[1] - *a5;
  if (v13)
  {
    v46 = v12;
    v15 = v13 >> 3;
    v49 = 0uLL;
    v16 = v15 - 1;
    if (v15 >= 1)
    {
      do
      {
        (*(**(*a5 + 8 * v16) + 24))(*(*a5 + 8 * v16), a3, &v50, &v49);
        v18 = v16-- + 1;
      }

      while (v18 > 1);
    }

    if (a6)
    {
      __asm { FMOV            V1.4S, #1.0 }

      *(a3 + 64) = vmulq_f32(*(a3 + 64), vmaxq_f32(vminq_f32(v49, _Q1), 0));
    }

    v24 = v50;
    v25 = v51;
    v12 = v46;
    v10 = a7;
  }

  else
  {
    v24 = 0;
    v25 = 0.0;
  }

  *v26.f32 = vadd_f32(v24, *(a2 + 104));
  v50 = v26.i64[0];
  v51 = v25 + *(a2 + 112);
  v26.i64[1] = LODWORD(v51);
  v27 = vmulq_n_f32(v26, *(a3 + 28));
  v28 = vmlaq_n_f32(*(a3 + 48), v27, v12);
  v29 = vmlaq_n_f32(*(a3 + 32), vmlaq_n_f32(*(a3 + 48), v27, v12 * 0.5), v12);
  v30 = *(a3 + 64);
  *(a3 + 32) = v29;
  v31 = *(a2 + 196);
  *(a3 + 48) = v28;
  v32 = vmlaq_n_f32(v30, v31, v10);
  v33 = *a4;
  v34 = a4[1];
  *(a3 + 64) = v32;
  v35 = *(a1 + 176);
  if (!v35 || *(a2 + 40) || (result = 0, v37 = vorrq_s8(vcgtq_f32(v29, v35[1]), vcgtq_f32(*v35, v29)), !v37.i32[0]) && (v38 = vceqz_s32(*&vextq_s8(v37, v37, 4uLL)), (v38.i8[0] & 1) != 0) && (v38.i8[4] & 1) != 0)
  {
    *a4 = vminq_f32(v33, v29);
    a4[1] = vmaxq_f32(v34, v29);
    v39.i32[0] = *(a3 + 124);
    v39.i32[1] = *(a3 + 92);
    v40 = vmla_n_f32(*(a3 + 84), v39, v12);
    *(a3 + 84) = v40;
    v41 = *(a2 + 228);
    if (v41 != 0.0)
    {
      v47 = v40.i32[0];
      v42 = fmaxf(*(a2 + 220), 1.0);
      v43 = fmodf(*(a3 + 80) + (v41 * v12), v42);
      if (v43 < 0.0)
      {
        v43 = v43 + v42;
      }

      v40.i32[0] = v47;
      v10 = a7;
      *(a3 + 80) = v43;
    }

    if (v40.f32[0] > *(a1 + 80))
    {
      *(a1 + 80) = v40.i32[0];
    }

    if (*(a2 + 40))
    {
      v44 = 0.0;
      if (v10 >= 0.0)
      {
        v44 = 0.0;
        if (*(a3 + 24) > v10)
        {
          v44 = 1.0;
        }
      }

      v45 = *(a3 + 44) * v44;
      v49.i64[0] = 0;
      CA::Render::EmitterState::update_cells(a1, &v49, v10, v45);
    }

    return 1;
  }

  return result;
}

BOOL CA::Render::InterpolatedFunction::apply(CA::Render::InterpolatedFunction *this, uint64_t a2, const double *a3, uint64_t a4, double *a5, uint64_t a6, double (*a7)(unsigned int, const unsigned int *, unint64_t, void *), void *a8)
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = *(this + 6);
  if (v8 <= 0x40)
  {
    MEMORY[0x1EEE9AC00](this);
    v15 = &v44 - ((v14 + 15) & 0x7FFFFFFF0);
    v46 = v16;
    bzero(v15, v14);
    v17 = v46;
    if (a2)
    {
      v18 = 0;
      v19 = *(this + 2);
      v44 = v19 - 1;
      v45 = v19 - 2;
      v20 = v8;
      v21 = v8;
      v22 = v8;
      v23 = v8;
      v24 = v8;
      while (1)
      {
        if (v19 < 2)
        {
          goto LABEL_40;
        }

        v25 = *a3;
        v26 = *(this + 5);
        if (!v26)
        {
          break;
        }

        if (*v26 < v25)
        {
          if (*(this + 13))
          {
            v27 = 1;
            if (v45 >= 3)
            {
              v28 = v44;
              v29 = v45;
              v27 = 1;
              do
              {
                v30 = v27 + (v29 >> 1);
                if (v26[v30] <= v25)
                {
                  v27 = v30;
                }

                else
                {
                  v28 = v30;
                }

                v29 = v28 - v27;
              }

              while (v28 - v27 > 2);
            }
          }

          else
          {
            v27 = 1;
          }

          if (v27 < v19)
          {
            while (v26[v27] <= v25)
            {
              if (v19 == ++v27)
              {
                v31 = v44;
                goto LABEL_32;
              }
            }
          }

          v31 = v27 - 1;
          if (v27 == v19)
          {
LABEL_32:
            if (v23)
            {
              v32 = (*(this + 4) + 4 * v31 * v23);
              v24 = v23;
LABEL_34:
              memmove(v15, v32, 4 * v24);
              v17 = v46;
LABEL_40:
              v20 = 0;
              if (v8)
              {
                v41 = v15;
                do
                {
                  v42 = *v41++;
                  *(a5 + v20) = v42;
                  v20 += 8;
                }

                while (8 * v8 != v20);
                v20 = v8;
                v21 = v8;
                v22 = v8;
                v23 = v8;
                v24 = v8;
                goto LABEL_48;
              }

LABEL_44:
              v21 = 0;
LABEL_45:
              v22 = 0;
LABEL_46:
              v23 = 0;
            }

            v24 = 0;
            goto LABEL_48;
          }

          v25 = (v25 - v26[v31]) / (v26[v27] - v26[v31]);
          if (!v20)
          {
            goto LABEL_44;
          }

          goto LABEL_38;
        }

        if (v24)
        {
          v32 = *(this + 4);
          goto LABEL_34;
        }

LABEL_48:
        a3 = (a3 + a4);
        a5 = (a5 + v17);
        if (++v18 == a2)
        {
          return v8 < 0x41;
        }
      }

      if (v25 <= 0.0)
      {
        if (v22)
        {
          v32 = *(this + 4);
          v24 = v22;
          goto LABEL_34;
        }

        goto LABEL_46;
      }

      if (v25 >= 1.0)
      {
        if (v21)
        {
          v32 = (*(this + 4) + 4 * v44 * v21);
          v24 = v21;
          goto LABEL_34;
        }

        goto LABEL_45;
      }

      if (v19 == 2)
      {
        v31 = 0;
        if (!v20)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v33 = *(this + 7) * v25;
        v31 = v33;
        v25 = v33 - truncf(v33);
        if (!v20)
        {
          goto LABEL_44;
        }
      }

LABEL_38:
      v34 = *(this + 4);
      v35 = (v34 + 4 * v31 * v20);
      v36 = (v34 + (4 * v31 + 4) * v20);
      v37 = v15;
      do
      {
        v38 = *v35++;
        v39 = v38;
        v40 = *v36++;
        *v37++ = v39 + ((v40 - v39) * v25);
        --v20;
      }

      while (v20);
      goto LABEL_40;
    }
  }

  return v8 < 0x41;
}

uint64_t CA::Render::EmitterBehaviors::ValueOver<CA::Render::EmitterBehaviors::LifeFunction>::operator()(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = (*(a2 + 60) / *(a2 + 24));
  v7 = 0.0;
  result = (*(**(a1 + 16) + 128))(*(a1 + 16), 1, v8, 0, &v7, 0, 0, 0);
  if (result)
  {
    v5 = v7;
    if (*(a1 + 28))
    {
      v5 = 1.0 / v5;
    }

    v6 = *(a1 + 24);
    if (*(a1 + 29) == 1)
    {
      v5 = *(a2 + 4 * v6) * v5;
    }

    if (*(a1 + 30) == 1)
    {
      v5 = *(a2 + 4 * v6) + v5;
    }

    *(a2 + 4 * v6) = v5;
  }

  return result;
}

float32_t CA::Render::EmitterBehaviors::Wave::operator()(uint64_t a1, uint64_t a2, float32x2_t *a3)
{
  v3 = *(a1 + 20);
  v4 = *(a1 + 24) * *(a2 + 60);
  v5 = v4 - floorf(v4);
  if (v5 > 0.5)
  {
    v5 = 1.0 - v5;
  }

  v6 = (((v5 + v5) * (v5 + v5)) * ((v5 * -8.0) + 6.0)) + -1.0;
  *a3 = vmla_n_f32(*a3, *(a1 + 12), v6);
  result = a3[1].f32[0] + (v6 * v3);
  a3[1].f32[0] = result;
  return result;
}

void *CA::Render::EmitterLayer::encode(CA::Render::EmitterLayer *this, CA::Render::Encoder *a2)
{
  CA::Render::Object::encode(this, a2);
  v4 = *(this + 2);
  v5 = *(a2 + 4);
  if ((v5 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 8);
    v5 = *(a2 + 4);
  }

  *v5 = v4;
  *(a2 + 4) += 8;
  CA::Render::Encoder::encode_object(a2, *(this + 4));
  CA::Render::Encoder::encode_object(a2, *(this + 5));
  CA::Render::Encoder::encode_object(a2, *(this + 6));
  CA::Render::Encoder::encode_object(a2, *(this + 7));
  CA::Render::Encoder::encode_atom(a2, *(this + 16));
  CA::Render::Encoder::encode_atom(a2, *(this + 17));
  CA::Render::Encoder::encode_atom(a2, *(this + 18));
  v6 = *(this + 38);
  v7 = *(a2 + 4);
  if ((v7 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v7 = *(a2 + 4);
  }

  *v7 = v6;
  v8 = *(a2 + 4);
  v9 = *(a2 + 5);
  v10 = (v8 + 4);
  *(a2 + 4) = v8 + 4;
  v11 = *(this + 20);
  if (v8 + 12 > v9)
  {
    CA::Render::Encoder::grow(a2, 8);
    v10 = *(a2 + 4);
  }

  *v10 = v11;
  v12 = *(a2 + 4);
  v13 = *(a2 + 5);
  v14 = (v12 + 8);
  *(a2 + 4) = v12 + 8;
  if (v12 + 84 > v13)
  {
    CA::Render::Encoder::grow(a2, 76);
    v14 = *(a2 + 4);
  }

  *v14 = *(this + 76);
  v15 = *(this + 92);
  v16 = *(this + 108);
  v17 = *(this + 124);
  *(v14 + 60) = *(this + 136);
  v14[2] = v16;
  v14[3] = v17;
  v14[1] = v15;
  *(a2 + 4) += 76;

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void *CA::Render::EmitterCell::encode(CA::Render::EmitterCell *this, CA::Render::Encoder *a2)
{
  CA::Render::Object::encode(this, a2);
  CA::Render::Encoder::encode_object(a2, *(this + 2));
  CA::Render::Encoder::encode_object(a2, *(this + 3));
  CA::Render::Encoder::encode_object(a2, *(this + 4));
  CA::Render::Encoder::encode_object(a2, *(this + 5));
  CA::Render::Encoder::encode_object(a2, *(this + 6));
  CA::Render::Encoder::encode_object(a2, *(this + 7));
  CA::Render::Encoder::encode_atom(a2, *(this + 16));
  CA::Render::Encoder::encode_atom(a2, *(this + 17));
  v4 = *(a2 + 4);
  if ((v4 + 10) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 160);
    v4 = *(a2 + 4);
  }

  v5 = *(this + 88);
  *v4 = *(this + 72);
  v4[1] = v5;
  v6 = *(this + 104);
  v7 = *(this + 120);
  v8 = *(this + 152);
  v4[4] = *(this + 136);
  v4[5] = v8;
  v4[2] = v6;
  v4[3] = v7;
  v9 = *(this + 168);
  v10 = *(this + 184);
  v11 = *(this + 216);
  v4[8] = *(this + 200);
  v4[9] = v11;
  v4[6] = v9;
  v4[7] = v10;
  *(a2 + 4) += 160;

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void *CA::Render::EmitterBehavior::encode(CA::Render::EmitterBehavior *this, CA::Render::Encoder *a2)
{
  CA::Render::Object::encode(this, a2);
  CA::Render::Encoder::encode_atom(a2, *(this + 4));
  CA::Render::Encoder::encode_object(a2, *(this + 3));
  CA::Render::Encoder::encode_object(a2, *(this + 4));

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void CA::Render::EmitterLayer::~EmitterLayer(CA::Render::EmitterLayer *this, const CA::Render::Object *a2)
{
  *this = &unk_1EF1FE230;
  v3 = *(this + 7);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 6);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 5);
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 16))(v5);
  }

  v6 = *(this + 4);
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v6 + 16))(v6);
  }

  v7 = *(this + 3);
  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v7 + 16))(v7);
  }

  --dword_1ED4EAA74;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v8 = malloc_zone;

  malloc_zone_free(v8, this);
}

{
  *this = &unk_1EF1FE230;
  v3 = *(this + 7);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 6);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 5);
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 16))(v5);
  }

  v6 = *(this + 4);
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v6 + 16))(v6);
  }

  v7 = *(this + 3);
  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v7 + 16))(v7);
  }

  --dword_1ED4EAA74;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

uint64_t CA::Render::GradientLayer::get_property(CA::Render::GradientLayer *this, uint64_t a2, unsigned int *a3, unint64_t a4, float64x2_t *a5, double **a6)
{
  if (a4 < 4)
  {
    return 0;
  }

  if (a6)
  {
    *a6 = a5;
  }

  result = 0;
  v8 = *a3;
  if (*a3 <= 489)
  {
    if (v8 == 121)
    {
      return CA::Render::Gradient::get_values((this + 16), a2, a3, a4, a5, a6);
    }

    if (v8 != 237)
    {
      if (v8 != 446)
      {
        return result;
      }

      return CA::Render::Gradient::get_values((this + 16), a2, a3, a4, a5, a6);
    }

    goto LABEL_13;
  }

  switch(v8)
  {
    case 0x1EAu:
      return CA::Render::Gradient::get_values((this + 16), a2, a3, a4, a5, a6);
    case 0x214u:
      v12 = *(this + 27);
      goto LABEL_20;
    case 0x2ABu:
LABEL_13:
      v9 = v8 == 683;
      v10 = 88;
      if (v9)
      {
        v10 = 72;
      }

      v11 = (this + v10);
      if (a2 != 2)
      {
        if (a2 == 1)
        {
          a5->f64[0] = *v11;
          a5->f64[1] = v11[1];
          return 2;
        }

        return 0;
      }

      v13 = a3[1];
      if (v13 == 760)
      {
        v12 = v11[1];
      }

      else
      {
        if (v13 != 756)
        {
          return 0;
        }

        v12 = *v11;
      }

LABEL_20:
      a5->f64[0] = v12;
      return 1;
  }

  return result;
}

uint64_t CA::Render::Gradient::get_values(CA::Render::Gradient *this, uint64_t a2, const unsigned int *a3, unint64_t a4, float64x2_t *a5, double **a6)
{
  v7 = a5;
  v8 = a4;
  v10 = *a3;
  if (*a3 != 490)
  {
    if (v10 == 446)
    {
      goto LABEL_15;
    }

    if (v10 != 121)
    {
      return 0;
    }
  }

  if (a2 != 2)
  {
    if (a2 == 1)
    {
      v11 = *(this + 2);
      if (v10 == 121)
      {
        if (!is_mul_ok(v11, 5uLL))
        {
          return 0;
        }

        v12 = (this + 32);
        v11 *= 5;
      }

      else
      {
        v12 = (this + 40);
      }

      if (!(v11 >> 61))
      {
        v24 = *v12;
        v25 = a5;
        if (v11 > a4)
        {
          v25 = malloc_type_malloc(8 * v11, 0x100004000313F17uLL);
        }

        if (v25)
        {
          v26 = v25;
        }

        else
        {
          v26 = v7;
        }

        if (v25)
        {
          v8 = v11;
        }

        if (v24)
        {
          if (v8)
          {
            v27 = v26;
            v28 = v8;
            do
            {
              v29 = *v24++;
              *v27++ = v29;
              --v28;
            }

            while (v28);
          }
        }

        else if (v8)
        {
          v33 = (v8 + 1) & 0xFFFFFFFFFFFFFFFELL;
          v34 = vdupq_n_s64(v8 - 1);
          v35 = 1.0 / v8;
          v36 = xmmword_183E20FF0;
          v37 = v26 + 1;
          v38 = 1;
          v39 = vdupq_n_s64(2uLL);
          do
          {
            v40 = vmovn_s64(vcgeq_u64(v34, v36));
            if (v40.i8[0])
            {
              *(v37 - 1) = v35 * (v38 - 1);
            }

            if (v40.i8[4])
            {
              *v37 = v35 * v38;
            }

            v36 = vaddq_s64(v36, v39);
            v37 += 2;
            v38 += 2;
            v33 -= 2;
          }

          while (v33);
        }

        *a6 = v26;
        return v8;
      }

      return 0;
    }

    goto LABEL_14;
  }

  v13 = a3[1];
  if ((v13 & 0x40000000) == 0 || (v14 = v13 & 0xFFFFFFFFBFFFFFFFLL, *(this + 2) <= v14))
  {
LABEL_14:
    if (v10 != 446)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (a4 >= 5 && v10 == 121)
  {
    v15 = (*(this + 4) + 4 * (5 * v14));
    v16 = vcvtq_f64_f32(v15[1]);
    *a5 = vcvtq_f64_f32(*v15);
    a5[1] = v16;
    a5[2].f64[0] = v15[2].f32[0];
    return 5;
  }

  if (v10 != 446)
  {
    if (v10 == 490)
    {
      v41 = *(this + 5);
      if (v41)
      {
        a5->f64[0] = *(v41 + 4 * v14);
        return 1;
      }
    }

    return 0;
  }

LABEL_15:
  v17 = *(this + 2);
  if (v17 < 2)
  {
    return 0;
  }

  if (a2 == 2)
  {
    v30 = a3[1];
    if ((v30 & 0x40000000) != 0 && v17 - 1 > (v30 & 0xFFFFFFFFBFFFFFFFLL))
    {
      v31 = *(this + 6);
      if (v31)
      {
        v32 = (v31 + 8 * (4 * v30));
        a5->f64[0] = *v32;
        a5->f64[1] = v32[1];
        a5[1].f64[0] = v32[2];
        a5[1].f64[1] = v32[3];
      }

      else
      {
        a5->f64[0] = 0.0;
        a5->f64[1] = 0.0;
        __asm { FMOV            V0.2D, #1.0 }

        a5[1] = _Q0;
      }

      return 4;
    }

    return 0;
  }

  if (a2 != 1)
  {
    return 0;
  }

  v18 = v17 - 1;
  if (v18 >> 62)
  {
    return 0;
  }

  v19 = 4 * v18;
  if ((4 * v18) >> 61)
  {
    return 0;
  }

  v20 = *(this + 6);
  v21 = 32 * v18;
  v22 = v20;
  v23 = a5;
  if (v19 > a4)
  {
    v23 = malloc_type_malloc(v21, 0x100004000313F17uLL);
    v22 = *(this + 6);
  }

  if (v23)
  {
    v8 = v19;
    v7 = v23;
  }

  if (v22)
  {
    memcpy(v7, v20, v21);
  }

  else if (v8)
  {
    v43 = 0;
    v44 = v7 + 2;
    __asm { FMOV            V0.2D, #1.0 }

    do
    {
      *(v44 - 2) = 0;
      *(v44 - 1) = 0;
      *v44 = _Q0;
      v44 += 2;
      v43 += 4;
    }

    while (v43 < v8);
  }

  *a6 = v7;
  return v8;
}

void ___ZL36cons_CALayer_kCAValueRetainedPointerjb_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  *&v4[0] = a3;
  CA::Layer::setter(*(a2 + 16), v3, 2, v4);
}

id ___ZL36cons_CALayer_kCAValueRetainedPointerjb_block_invoke(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4[0] = 0;
  CA::Layer::getter(*(a2 + 16), v2, 2, v4);
  return v4[0];
}

double CA::WindowServer::Server::context_transform(CA::WindowServer::Server *this, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a2 + 340));
  v6 = *(a2 + 344);
  if (v6)
  {
    atomic_fetch_add(v6, 1u);
    os_unfair_lock_unlock((a2 + 340));
    *this = xmmword_183E20E00;
    *(this + 1) = 0u;
    *(this + 2) = xmmword_183E20E60;
    *(this + 3) = 0u;
    *(this + 4) = 0u;
    *(this + 5) = xmmword_183E20E00;
    *(this + 6) = 0u;
    *(this + 7) = xmmword_183E20E60;
    CA::Render::HitTestTree::context_transform(v6, a3, this, v7);

    CA::Render::HitTestTree::unref(v6);
  }

  else
  {
    os_unfair_lock_unlock((a2 + 340));
    result = 1.0;
    *this = xmmword_183E20E00;
    *(this + 1) = 0u;
    *(this + 2) = xmmword_183E20E60;
    *(this + 3) = 0u;
    *(this + 4) = 0u;
    *(this + 5) = xmmword_183E20E00;
    *(this + 6) = 0u;
    *(this + 7) = xmmword_183E20E60;
  }

  return result;
}

uint64_t CA::Render::HitTestTree::context_transform(uint64_t a1, uint64_t a2, uint64_t a3, const double *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 4);
  if (v4)
  {
    v7 = *(a1 + 16);
    v8 = (v7 + v4);
    do
    {
      v9 = *(v7 + 1);
      if (v7[8] == a2 && (v9 & 0x1000000000000000) == 0)
      {
        v12 = *v7;
        v13 = v7 - v12;
        if ((v9 & 0x800000000000000) != 0)
        {
          if (v12)
          {
            v14 = *(v13 + 2);
            if (v14)
            {
              v15 = *(v14 + 136);
              if (v15)
              {
                v16 = *v15;
                if (v16)
                {
                  if ((*(v16 + 12) & 0x80FF) == 0x802A)
                  {
LABEL_33:
                    v25 = 1;
                    CA::Render::HitTestTree::Node::relative_transform_product(v34, v13, 1, a4);
                    v27 = v34[1];
                    v28 = v34[2];
                    v29 = v34[3];
                    *a3 = v34[0];
                    *(a3 + 16) = v27;
                    *(a3 + 32) = v28;
                    *(a3 + 48) = v29;
                    v30 = v34[5];
                    v31 = v34[6];
                    v32 = v34[7];
                    *(a3 + 64) = v34[4];
                    *(a3 + 80) = v30;
                    *(a3 + 96) = v31;
                    *(a3 + 112) = v32;
                    return v25;
                  }
                }
              }
            }
          }
        }

        else if (v12)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v11 = *(v7 + 3);
        if (v11)
        {
          if (CA::Render::HitTestTree::context_transform(v11, a2, a3))
          {
            v25 = 1;
            CA::Render::HitTestTree::Node::relative_transform_product(v34, v7, 1, a4);
            CA::Mat4Impl::mat4_concat(a3, a3, v34, v26);
            return v25;
          }
        }

        else
        {
          v17 = *(v7 + 2);
          if (v17)
          {
            v18 = (v9 & 0x800000000000000) == 0;
          }

          else
          {
            v18 = 0;
          }

          if (v18)
          {
            v19 = *(v17 + 136);
            if (v19)
            {
              v20 = *v19;
              if (*v19)
              {
                if (*(v20 + 12) == 31)
                {
                  v21 = CA::Render::LayerHost::retain_async_hit_test_tree(v20);
                  if (v21)
                  {
                    v22 = v21;
                    if (CA::Render::HitTestTree::context_transform(v21, a2, a3))
                    {
                      v25 = 1;
                      CA::Render::HitTestTree::Node::relative_transform_product(v34, v7, 1, v23);
                      CA::Mat4Impl::mat4_concat(a3, a3, v34, v33);
                      CA::Render::HitTestTree::unref(v22);
                      return v25;
                    }

                    CA::Render::HitTestTree::unref(v22);
                  }
                }
              }
            }
          }
        }
      }

      v7 = (v7 + ((v9 >> 30) & 0x3FC));
    }

    while (v7 < v8);
  }

  return 0;
}

atomic_uint *CA::Render::LayerHost::retain_async_hit_test_tree(CA::Render::LayerHost *this)
{
  if (!*(this + 6))
  {
    return 0;
  }

  os_unfair_lock_lock(&CA::Render::LayerHost::_lock);
  v2 = *(this + 6);
  if (v2 && (v3 = *(v2 + 24)) != 0)
  {
    os_unfair_lock_lock((v3 + 212));
    v4 = *(v3 + 216);
    if (v4)
    {
      atomic_fetch_add(v4, 1u);
    }

    os_unfair_lock_unlock((v3 + 212));
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&CA::Render::LayerHost::_lock);
  return v4;
}

void CA::Render::HitTestTree::Node::relative_transform_product(CA::Mat4Impl *this, unsigned int *a2, char a3, const double *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  *this = xmmword_183E20E00;
  *(this + 1) = 0u;
  *(this + 2) = xmmword_183E20E60;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = xmmword_183E20E00;
  *(this + 6) = 0u;
  *(this + 7) = xmmword_183E20E60;
  if (a2)
  {
    v5 = a2;
    while (1)
    {
      v7 = *(v5 + 2);
      if (v7)
      {
        if ((a3 & 1) == 0)
        {
          v8 = *(v7 + 136);
          if (v8)
          {
            v9 = *v8;
            if (v9)
            {
              if ((*(v9 + 12) & 0x20FF) == 0x201F)
              {
                return;
              }
            }
          }
        }
      }

      v20 = xmmword_183E20E00;
      v21 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = xmmword_183E20E60;
      v25 = xmmword_183E20E00;
      v26 = 0u;
      v27 = xmmword_183E20E60;
      v10 = *(v5 + 1);
      if ((v10 & 0x8000000000000) != 0)
      {
        break;
      }

      if ((v10 & 0x10000000000000) != 0)
      {
        v11 = *(v5 + 11);
        v12 = *(v5 + 12);
        v13 = vmlaq_n_f64(vmulq_n_f64(xmmword_183E20E60, v12), xmmword_183E20E00, v11);
        v14 = vmlaq_n_f64(vmlaq_n_f64(xmmword_183E20E60, 0, v11), 0, v12);
LABEL_12:
        v26 = v13;
        v27 = v14;
      }

      CA::Mat4Impl::mat4_concat(this, this, &v20, a4);
      v19 = *v5;
      v5 = (v5 - v19);
      if (!v19)
      {
        return;
      }
    }

    v15 = *(v5 + 26);
    v16 = *(v5 + 30);
    v17 = *(v5 + 34);
    v20 = *(v5 + 22);
    v21 = v15;
    v22 = v16;
    v23 = v17;
    v18 = *(v5 + 42);
    v13 = *(v5 + 46);
    v14 = *(v5 + 50);
    v24 = *(v5 + 38);
    v25 = v18;
    goto LABEL_12;
  }
}