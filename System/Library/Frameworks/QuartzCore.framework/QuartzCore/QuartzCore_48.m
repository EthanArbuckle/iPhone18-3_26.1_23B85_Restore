uint64_t CA::CG::IOSurfaceContext::invalidate_surface()
{
  Info = CGContextDelegateGetInfo();
  result = (*(*Info + 16))(Info);
  if (result)
  {
    v2 = *(*result + 16);

    return v2();
  }

  return result;
}

uint64_t CA::CG::IOSurfaceContext::get_gpu_registry_id()
{
  Info = CGContextDelegateGetInfo();
  result = (*(*Info + 16))(Info);
  if (result)
  {
    return *(result + 192);
  }

  return result;
}

uint64_t CA::CG::IOSurfaceContext::set_gpu_registry_id(uint64_t a1, uint64_t a2)
{
  Info = CGContextDelegateGetInfo();
  result = (*(*Info + 16))(Info);
  if (result)
  {
    *(result + 192) = a2;
  }

  return result;
}

uint64_t CA::CG::IOSurfaceContext::get_surface_limits(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = MEMORY[0x1865EA1D0](*MEMORY[0x1E696D130]);
  v6 = MEMORY[0x1865EA1D0](*MEMORY[0x1E696CF58]);
  v7 = 0x2000;
  if (v6 < 0x2000)
  {
    v7 = v6;
  }

  if (a2)
  {
    v8 = 0x2000;
    if (v5 < 0x2000)
    {
      v8 = v5;
    }

    *a2 = v8;
  }

  if (a3)
  {
    *a3 = v7;
  }

  return 1;
}

CGImageRef CA::CG::IOSurfaceContext::create_image_by_reference()
{
  v0 = *(CGContextDelegateGetInfo() + 344);

  return CA::CG::IOSurfaceDrawable::copy_cgimage_iosurface(v0);
}

CGImageRef CA::CG::IOSurfaceContext::create_image()
{
  v0 = *(CGContextDelegateGetInfo() + 344);
  v1 = *(v0 + 4);
  if (v1 > 0x23 || ((0x1FFFFFF2FuLL >> v1) & 1) != 0)
  {

    return CA::CG::IOSurfaceDrawable::copy_cgimage(v0);
  }

  else
  {

    return CA::CG::IOSurfaceDrawable::copy_cgimage_iosurface(v0);
  }
}

uint64_t CA::CG::IOSurfaceContext::create_delegate(uint64_t a1)
{
  if (CAIsAppSuspended::once != -1)
  {
    dispatch_once_f(&CAIsAppSuspended::once, 0, init_suspended);
  }

  atomic_load(is_suspended);
  if (CA::Render::memory_once != -1)
  {
    dispatch_once_f(&CA::Render::memory_once, 0, CA::Render::init_memory_warnings_);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(v2);
  }

  else
  {
    NumberOfComponents = 0;
  }

  v4 = CA::Render::coregraphics_image_format(NumberOfComponents, *(a1 + 32), *(a1 + 24), *(a1 + 48)) - 1;
  if (v4 > 0x14)
  {
    v5 = -1;
  }

  else
  {
    v5 = dword_183E31864[v4];
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    PixelFormat = IOSurfaceGetPixelFormat(v6);
    v8 = CA::Render::fourcc_compressed_of_type(PixelFormat, 0, 0);
    if (v8 == 1999843442 || v8 == 1647534392)
    {
      v5 = CA::Render::fourcc_to_format(v8);
    }
  }

  if (v5 != -1)
  {
    operator new();
  }

  CGPostError();
  return 0;
}

void CA::AttrList::append_description(CA::AttrList *this, CFMutableStringRef theString)
{
  if (this)
  {
    v3 = this;
    v4 = 1;
    do
    {
      if ((v4 & 1) == 0)
      {
        CFStringAppend(theString, @"; ");
      }

      String = CAAtomGetString(*(v3 + 2) & 0xFFFFFF);
      CFStringAppendFormat(theString, 0, @"%@ = ", String);
      switch(*(v3 + 11) & 0x7F)
      {
        case 1:
          v6 = **(v3 + 2);
          goto LABEL_19;
        case 2:
        case 3:
          v6 = *(v3 + 2);
          goto LABEL_19;
        case 4:
          v8 = *(v3 + 2);
          if (*(v8 + 8) == 1)
          {
            Weak = objc_loadWeak(v8);
          }

          else
          {
            Weak = *v8;
          }

          v12 = Weak;
          goto LABEL_20;
        case 5:
          CFStringAppendFormat(theString, 0, @"^%p", *(v3 + 2), v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
          break;
        case 6:
          v6 = @"YES";
          if (!*(v3 + 2))
          {
            v6 = @"NO";
          }

LABEL_19:
          v12 = v6;
LABEL_20:
          CFStringAppendFormat(theString, 0, @"%@", v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
          break;
        case 7:
        case 9:
        case 0xB:
        case 0xD:
          CFStringAppendFormat(theString, 0, @"%ld", *(v3 + 2), v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
          break;
        case 8:
        case 0xA:
        case 0xC:
        case 0xE:
          CFStringAppendFormat(theString, 0, @"%lu", *(v3 + 2), v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
          break;
        case 0xF:
          CFStringAppendFormat(theString, 0, @"%lld", *(v3 + 2), v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
          break;
        case 0x10:
          CFStringAppendFormat(theString, 0, @"%llu", *(v3 + 2), v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
          break;
        case 0x11:
        case 0x12:
          CFStringAppendFormat(theString, 0, @"%g", *(v3 + 2), v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
          break;
        case 0x13:
          CFStringAppendFormat(theString, 0, @"CGPoint (%g %g)", **(v3 + 2), *(*(v3 + 2) + 8), v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
          break;
        case 0x14:
          CFStringAppendFormat(theString, 0, @"CGSize (%g %g)", **(v3 + 2), *(*(v3 + 2) + 8), v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
          break;
        case 0x15:
          CFStringAppendFormat(theString, 0, @"CGRect (%g %g; %g %g)", **(v3 + 2), *(*(v3 + 2) + 8), *(*(v3 + 2) + 16), *(*(v3 + 2) + 24), v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
          break;
        case 0x16:
          v10 = *(v3 + 2);
          CFStringAppendFormat(theString, 0, @"CATransform3D (%g %g %g %g; %g %g %g %g; %g %g %g %g; %g %g %g %g)", *v10, v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10], v10[11], v10[12], v10[13], v10[14], v10[15]);
          break;
        case 0x17:
          v11 = *(v3 + 2);
          CFStringAppendFormat(theString, 0, @"CGAffineTransform (%g %g; %g %g; %g %g)", *v11, v11[1], v11[2], v11[3], v11[4], v11[5], v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
          break;
        case 0x18:
          CFStringAppendFormat(theString, 0, @"CAPoint3D (%g %g %g)", **(v3 + 2), *(*(v3 + 2) + 8), *(*(v3 + 2) + 16), v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
          break;
        case 0x19:
          v7 = *(v3 + 2);
          CFStringAppendFormat(theString, 0, @"CACornerRadii (%g %g; %g %g; %g %g; %g %g)", *v7, v7[1], v7[2], v7[3], v7[4], v7[5], v7[6], v7[7], v20, v21, v22, v23, v24, v25, v26, v27);
          break;
        default:
          CFStringAppend(theString, @"<undefined>");
          break;
      }

      v4 = 0;
      v3 = *v3;
    }

    while (v3);
  }
}

void CA::CG::DrawFocusRing::draw_focus_ring(CA::CG::DrawFocusRing *this, CA::CG::Renderer *a2)
{
  v133[63] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 1);
  v5 = *(a2 + 10);
  v127 = 0uLL;
  bounds = CA::Shape::get_bounds(*(*(v4 + 656) + 8), &v127);
  v10 = *(v4 + 672);
  if (v10)
  {
    v11 = v10 + 6;
  }

  else
  {
    v11 = (v4 + 608);
  }

  v12 = v127.u64[1];
  v13 = vclez_s32(v127.u64[1]);
  *v7.i8 = vpmax_u32(v13, v13);
  if ((v7.i32[0] & 0x80000000) == 0)
  {
    *v7.i8 = v11[1];
    v14 = vclez_s32(*v7.i8);
    *v8.i8 = vpmax_u32(v14, v14);
    if (v8.i32[0] < 0 || (v15 = vadd_s32(*v11, *v7.i8), *v7.i8 = vmax_s32(*v127.i8, *v11), v12 = vsub_s32(vmin_s32(vadd_s32(*v127.i8, v127.u64[1]), v15), *v7.i8), v16 = vclez_s32(v12), *v8.i8 = vpmax_u32(v16, v16), v8.i32[0] < 0))
    {
      v12 = 0;
    }

    else
    {
      v7.u64[1] = v12;
      v127 = v7;
    }
  }

  v17 = v12.i32[0];
  if (v12.i32[0] <= v12.i32[1])
  {
    v17 = v12.i32[1];
  }

  v7.i32[0] = v17;
  v8.i32[0] = 1073741822;
  v18.i64[0] = v127.i32[0];
  v18.i64[1] = v127.i32[1];
  v19 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v7, v8), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v18));
  v18.i64[0] = v12.i32[0];
  v18.i64[1] = v12.i32[1];
  v20 = vcvtq_f64_s64(v18);
  v21 = vdup_n_s32(v17 > 1073741822);
  v18.i64[0] = v21.u32[0];
  v18.i64[1] = v21.u32[1];
  v22 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v18, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v20);
  v23 = *(this + 15);
  v24 = (*(v23 + 76) * v5);
  v25 = v22.f64[1];
  if (v22.f64[0] <= v22.f64[1])
  {
    v26 = v22.f64[1];
  }

  else
  {
    v26 = v22.f64[0];
  }

  if (v26 < 1.79769313e308)
  {
    if (v22.f64[0] < v22.f64[1])
    {
      v25 = v22.f64[0];
    }

    if (v25 > 0.0)
    {
      v27 = vaddq_f64(vdupq_lane_s64(COERCE__INT64(v24 + v24), 0), v22);
      v28 = vmovn_s64(vmvnq_s8(vclezq_f64(v27)));
      v19 = vaddq_f64(v19, vdupq_lane_s64(COERCE__INT64(-v24), 0));
      v29 = vdup_lane_s32(vand_s8(v28, vdup_lane_s32(v28, 1)), 0);
      v30.i64[0] = v29.i32[0];
      v30.i64[1] = v29.i32[1];
      v22 = vandq_s8(v27, v30);
    }
  }

  v31 = *(this + 8);
  v32 = *(this + 9);
  v33 = v32;
  v34 = v31;
  if (v5 != 1.0)
  {
    v35 = v5;
    v9.f64[0] = 1.79769313e308;
    v36 = vdupq_lane_s64(vcgtq_f64(v9, v32).i64[0], 0);
    v37.i64[1] = *&v31.f64[1];
    *v37.i64 = v5 * v31.f64[0];
    v34 = vbslq_s8(v36, v37, v31);
    v38.i64[1] = *(this + 19);
    *v38.i64 = v5 * v32.f64[0];
    v33 = vbslq_s8(v36, v38, v32);
    if (v33.f64[1] < 1.79769313e308)
    {
      v34.f64[1] = vmuld_lane_f64(v35, v34, 1);
      v33.f64[1] = v33.f64[1] * v35;
    }
  }

  if ((*(v23 + 84) & 0x80000000) == 0)
  {
    v39 = vceqzq_f64(v32);
    v40 = 0uLL;
    if ((vorrq_s8(vdupq_laneq_s64(v39, 1), v39).u64[0] & 0x8000000000000000) == 0)
    {
      v41 = vceqq_f64(v32, v32);
      if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v41), 1), v41).u64[0] & 0x8000000000000000) == 0)
      {
        v42 = vmaxnmq_f64(v31, vdupq_n_s64(0xC1BFFFFFFF000000));
        v43 = vminnmq_f64(vaddq_f64(v31, v32), vdupq_n_s64(0x41C0000000000000uLL));
        v44 = vcvtmq_s64_f64(v42);
        v40 = vuzp1q_s32(v44, vsubq_s64(vcvtpq_s64_f64(v43), v44));
      }
    }

    v119 = v22;
    v120 = v19;
    v118 = v40;
    MEMORY[0x1EEE9AC00](bounds);
    v46 = &v113.i8[-v45];
    bzero(&v113 - v45, v47);
    memset(v133, 0, 56);
    CA::CG::ClipOp::ClipOp(v133, a2, *(this + 14), v46, v118, v48, v49, v50, v51, v52, v53);
    v57 = v133[0];
    v56.n128_u64[0] = v133[1];
    v58 = v133[1].i32[1];
    if (v133[1].i32[0] > v133[1].i32[1])
    {
      v58 = v133[1].i32[0];
    }

    v54.i32[0] = v58;
    v55.i32[0] = 1073741822;
    v59 = vdup_n_s32(v58 > 1073741822);
    v60.i64[0] = v59.u32[0];
    v60.i64[1] = v59.u32[1];
    v61 = v60;
    if (v133[3])
    {
      v62 = *(**&v133[3] + 8);
      v117 = v61;
      v118 = v56;
      v115 = v55;
      v116 = v54;
      v62(*&v133[3]);
      v55 = v115;
      v54 = v116;
      v61 = v117;
      v56.n128_u64[0] = v118.n128_u64[0];
    }

    v63.i64[0] = v57.i32[0];
    v63.i64[1] = v57.i32[1];
    v64 = v63;
    v65 = vcgtq_s32(v54, v55);
    v63.i64[0] = v56.n128_i32[0];
    v63.i64[1] = v56.n128_i32[1];
    v66 = v63;
    v67 = vshlq_n_s64(v61, 0x3FuLL);
    if (v133[4])
    {
      v68 = *(**&v133[4] + 8);
      v117 = v66;
      v118 = v64;
      v115 = v67;
      v116 = v65;
      v68(*&v133[4]);
      v67 = v115;
      v65.i64[0] = v116.i64[0];
      v66 = v117;
      v64 = v118;
    }

    v69 = vdupq_lane_s32(*v65.i8, 0);
    v70 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    v71 = vcvtq_f64_s64(v64);
    v72 = vcvtq_f64_s64(v66);
    v73 = vcltzq_s64(v67);
    v74 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    if (v133[2])
    {
      v117 = v70;
      v118 = v69;
      v115 = v72;
      v116 = v71;
      v113 = v74;
      v114 = v73;
      CA::Shape::unref(*&v133[2]);
      v74 = v113;
      v73 = v114;
      v72 = v115;
      v71 = v116;
      v70 = v117;
      v69 = v118;
    }

    v34 = vbslq_s8(v69, v70, v71);
    v33 = vbslq_s8(v73, v74, v72);
    v22 = v119;
    v19 = v120;
  }

  v75 = vclezq_f64(v22);
  if ((vorrq_s8(vdupq_laneq_s64(v75, 1), v75).u64[0] & 0x8000000000000000) == 0)
  {
    v76 = vclezq_f64(v33);
    if ((vorrq_s8(vdupq_laneq_s64(v76, 1), v76).u64[0] & 0x8000000000000000) == 0)
    {
      v77 = vmaxnmq_f64(v19, v34);
      v78 = vminnmq_f64(vaddq_f64(v19, v22), vaddq_f64(v34, v33));
      v79 = vsubq_f64(v78, v77);
      v80 = vclezq_f64(v79);
      if ((vorrq_s8(vdupq_laneq_s64(v80, 1), v80).u64[0] & 0x8000000000000000) == 0)
      {
        v81 = vceqzq_f64(v79);
        if ((vorrq_s8(vdupq_laneq_s64(v81, 1), v81).u64[0] & 0x8000000000000000) != 0 || (v82 = vceqq_f64(v79, v79), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v82), 1), v82).u64[0] & 0x8000000000000000) != 0))
        {
          v126 = 0uLL;
          v86 = 0;
          v85 = -1;
        }

        else
        {
          v83 = vcvtmq_s64_f64(vmaxnmq_f64(v77, vdupq_n_s64(0xC1BFFFFFFF000000)));
          v84 = vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(v78, vdupq_n_s64(0x41C0000000000000uLL))), v83);
          v126 = vuzp1q_s32(v83, v84);
          v85 = vadd_s32(vmovn_s64(v83), -1);
          v86 = vmovn_s64(v84);
        }

        v87 = v86.i32[1];
        if (v86.i32[0] <= v86.i32[1])
        {
          v88 = v86.i32[1];
        }

        else
        {
          v88 = v86.i32[0];
        }

        if (v86.i32[0] < v86.i32[1])
        {
          v87 = v86.i32[0];
        }

        if (v88 <= 1073741822 && v87 >= 1)
        {
          v89 = vadd_s32(v86, 0x200000002);
          v90 = vclez_s32(v89);
          if (vorr_s8(v90, vdup_lane_s32(v90, 1)).u8[0])
          {
            v91 = -1;
          }

          else
          {
            v91 = 0;
          }

          *v126.i8 = v85;
          v126.u64[1] = vbic_s8(v89, vdup_n_s32(v91));
        }

        v92 = (*(*v4 + 696))(v4, 1, &v126, 8200, @"draw-focus-ring");
        if (v92)
        {
          v93 = v92;
          v94 = *(v4 + 1384);
          v95 = v94 & 0x7000;
          if ((v94 & 0x7000) == 0x3000)
          {
            v96 = v94 & 0xAFFF;
            v94 &= 0xAAAAAAAA;
            *(v4 + 1384) = v96;
          }

          v97 = v94 >> 12;
          if ((v97 & 4) != 0)
          {
            v98 = 0;
          }

          else
          {
            v98 = (0x22231800u >> (8 * (v97 & 7)) << 8) & 0xFF00;
          }

          *(v92 + 144) = v98 | *(v92 + 144) & 0xFFFFC0FF;
          v99 = *(v4 + 16);
          memcpy(v133, v99, 0x1F8uLL);
          v133[0] = v99;
          *(v4 + 16) = v133;
          v132 = 0;
          v130[1] = 0u;
          v131 = 0u;
          v129[1] = 0u;
          v130[0] = 0u;
          v129[0] = 0u;
          v100 = *(v4 + 656);
          *(v129 + 8) = *(v100 + 8);
          v101 = *(v100 + 32);
          *(&v129[1] + 1) = *(v100 + 24);
          *&v130[0] = v101;
          *(v130 + 8) = *(v100 + 40);
          *(&v130[1] + 1) = *(v100 + 56);
          v102 = *(v100 + 80);
          LODWORD(v131) = *(v100 + 64);
          v132 = v102 & 0x5FF;
          *(&v131 + 1) = *(v100 + 72);
          memset(v128, 0, sizeof(v128));
          CA::Shape::operator=(v128, v126.i32);
          *(&v129[0] + 1) = v128;
          if ((*(*v4 + 232))(v4, 25))
          {
            (*(*v4 + 760))(v4, v93, (v24 + v24), (v24 + v24));
          }

          *&v129[0] = CA::OGL::Context::set_gstate(v4, v129);
          CA::OGL::Context::push_surface(v4, v93, 1u, 64, 0);
          CA::CG::DrawOp::render_alpha(*(this + 14), a2, 0);
          CA::OGL::Context::pop_surface(v4);
          CA::OGL::Context::set_gstate(v4, **(v4 + 656));
          *(v4 + 16) = v133[0];
          v133[0] = 0;
          v105 = v126.i32[2];
          v106 = v126.i32[3];
          if (v126.i32[2] <= v126.i32[3])
          {
            v107 = v126.i32[3];
          }

          else
          {
            v107 = v126.i32[2];
          }

          v103.i32[0] = 1073741822;
          v104.i32[0] = v107;
          *(v4 + 1384) = *(v4 + 1384) & 0x8FFF | v95;
          v108.i64[0] = v126.i32[0];
          v108.i64[1] = v126.i32[1];
          v109 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v104, v103), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v108));
          v110 = v105;
          v111 = v106;
          if (v107 > 1073741822)
          {
            v110 = 1.79769313e308;
            v111 = 1.79769313e308;
          }

          v123 = v109;
          v124 = v110;
          v125 = v111;
          v112 = *(this + 88);
          v121 = 0;
          v122 = v112;
          CA::OGL::emit_large_brim(v4, v93, &v123, &v122, &v121, &CA::identity_transform, 1, 0, v24, 0.0, 0.0, *(*(this + 15) + 80));
          CA::OGL::Context::release_surface(v4, v93);
          if (v133[0])
          {
            __assert_rtn("~ContextState", "ogl-context.h", 613, "!next && Imbalanced ContextState push/pop");
          }
        }
      }
    }
  }
}

void *CA::CG::DrawFocusRing::draw_shape_and_color(void *this, CA::CG::Renderer *a2)
{
  if (*(this[15] + 84) <= 0)
  {
    return (*(*this + 184))(this, a2);
  }

  return this;
}

void *CA::CG::DrawFocusRing::draw_shape(void *this, CA::CG::Renderer *a2)
{
  if (*(this[15] + 84) <= 0)
  {
    return (*(*this + 184))(this, a2);
  }

  return this;
}

uint64_t CA::CG::DrawFocusRing::set_op(uint64_t this, CA::CG::DrawOp *a2)
{
  v2 = *(this + 112);
  if (v2)
  {
    *(v2 + 104) = 0;
  }

  *(this + 112) = a2;
  return this;
}

uint64_t CA::CG::DrawFocusRing::compute_dod(CA::CG::DrawFocusRing *this, CA::Rect *a2)
{
  result = (*(**(this + 14) + 24))(*(this + 14), this + 128);
  v5 = *(*(this + 15) + 76);
  v6 = *(this + 8);
  *a2 = v6;
  v7 = *(this + 9);
  *(a2 + 1) = v7;
  if (*&v7 <= *(&v7 + 1))
  {
    v8 = *(&v7 + 1);
  }

  else
  {
    v8 = *&v7;
  }

  if (v8 < 1.79769313e308)
  {
    if (*&v7 >= *(&v7 + 1))
    {
      v9 = *(&v7 + 1);
    }

    else
    {
      v9 = *&v7;
    }

    if (v9 > 0.0)
    {
      v10 = ~vcvtms_s32_f32(v5 + 0.5);
      *a2 = vaddq_f64(v6, vdupq_lane_s64(COERCE__INT64(v10), 0));
      v11 = v10 * -2.0;
      *(a2 + 2) = v11 + *&v7;
      *(a2 + 3) = v11 + *(&v7 + 1);
      if (v11 + *&v7 <= 0.0 || v11 + *(&v7 + 1) <= 0.0)
      {
        *(a2 + 2) = 0;
        *(a2 + 3) = 0;
      }
    }
  }

  return result;
}

void CA::CG::DrawFocusRing::~DrawFocusRing(CA::CG::DrawFocusRing *this)
{
  *this = &unk_1EF2021C0;
  v2 = *(this + 15);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF2021C0;
  v2 = *(this + 15);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
}

void CA::CG::DrawFocusRingTransparencyLayer::draw_shape_and_color(CA::CG::DrawFocusRingTransparencyLayer *this, CA::CG::Renderer *a2)
{
  v106 = *MEMORY[0x1E69E9840];
  v2 = *(*(this + 20) + 72);
  if (v2)
  {
    v5 = *(a2 + 1);
    v6 = *(a2 + 10);
    v105 = 0uLL;
    bounds = CA::Shape::get_bounds(*(*(v5 + 656) + 8), &v105);
    v11 = *(v5 + 672);
    if (v11)
    {
      v12 = v11 + 6;
    }

    else
    {
      v12 = (v5 + 608);
    }

    v13 = v105.u64[1];
    v14 = vclez_s32(v105.u64[1]);
    *v8.i8 = vpmax_u32(v14, v14);
    if ((v8.i32[0] & 0x80000000) == 0)
    {
      *v8.i8 = v12[1];
      v15 = vclez_s32(*v8.i8);
      *v9.i8 = vpmax_u32(v15, v15);
      if (v9.i32[0] < 0 || (v16 = vadd_s32(*v12, *v8.i8), *v8.i8 = vmax_s32(*v105.i8, *v12), v13 = vsub_s32(vmin_s32(vadd_s32(*v105.i8, v105.u64[1]), v16), *v8.i8), v17 = vclez_s32(v13), *v9.i8 = vpmax_u32(v17, v17), v9.i32[0] < 0))
      {
        v13 = 0;
      }

      else
      {
        v8.u64[1] = v13;
        v105 = v8;
      }
    }

    v18 = v13.i32[0];
    if (v13.i32[0] <= v13.i32[1])
    {
      v18 = v13.i32[1];
    }

    v8.i32[0] = v18;
    v9.i32[0] = 1073741822;
    v19.i64[0] = v105.i32[0];
    v19.i64[1] = v105.i32[1];
    v20 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v8, v9), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v19));
    v19.i64[0] = v13.i32[0];
    v19.i64[1] = v13.i32[1];
    v21 = vcvtq_f64_s64(v19);
    v22 = vdup_n_s32(v18 > 1073741822);
    v19.i64[0] = v22.u32[0];
    v19.i64[1] = v22.u32[1];
    v23 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v19, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v21);
    v24 = *(this + 15);
    v25 = (*(v24 + 76) * v6);
    v26 = v23.f64[1];
    if (v23.f64[0] <= v23.f64[1])
    {
      v27 = v23.f64[1];
    }

    else
    {
      v27 = v23.f64[0];
    }

    if (v27 < 1.79769313e308)
    {
      if (v23.f64[0] < v23.f64[1])
      {
        v26 = v23.f64[0];
      }

      if (v26 > 0.0)
      {
        v28 = vaddq_f64(vdupq_lane_s64(COERCE__INT64(v25 + v25), 0), v23);
        v29 = vmovn_s64(vmvnq_s8(vclezq_f64(v28)));
        v20 = vaddq_f64(v20, vdupq_lane_s64(COERCE__INT64(-v25), 0));
        v30 = vdup_lane_s32(vand_s8(v29, vdup_lane_s32(v29, 1)), 0);
        v31.i64[0] = v30.i32[0];
        v31.i64[1] = v30.i32[1];
        v23 = vandq_s8(v28, v31);
      }
    }

    v32 = *(this + 8);
    v33 = *(this + 9);
    v34 = v33;
    v35 = v32;
    if (v6 != 1.0)
    {
      v36 = v6;
      v10.f64[0] = 1.79769313e308;
      v37 = vdupq_lane_s64(vcgtq_f64(v10, v33).i64[0], 0);
      v38.i64[1] = *&v32.f64[1];
      *v38.i64 = v6 * v32.f64[0];
      v35 = vbslq_s8(v37, v38, v32);
      v39.i64[1] = *(this + 19);
      *v39.i64 = v6 * v33.f64[0];
      v34 = vbslq_s8(v37, v39, v33);
      if (v34.f64[1] < 1.79769313e308)
      {
        v35.f64[1] = vmuld_lane_f64(v36, v35, 1);
        v34.f64[1] = v34.f64[1] * v36;
      }
    }

    if ((*(v24 + 84) & 0x80000000) == 0)
    {
      v40 = vceqzq_f64(v33);
      v41 = 0uLL;
      if ((vorrq_s8(vdupq_laneq_s64(v40, 1), v40).u64[0] & 0x8000000000000000) == 0)
      {
        v42 = vceqq_f64(v33, v33);
        if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v42), 1), v42).u64[0] & 0x8000000000000000) == 0)
        {
          v43 = vmaxnmq_f64(v32, vdupq_n_s64(0xC1BFFFFFFF000000));
          v44 = vminnmq_f64(vaddq_f64(v32, v33), vdupq_n_s64(0x41C0000000000000uLL));
          v45 = vcvtmq_s64_f64(v43);
          v41 = vuzp1q_s32(v45, vsubq_s64(vcvtpq_s64_f64(v44), v45));
        }
      }

      v97 = v23;
      v98 = v20;
      v96 = v41;
      MEMORY[0x1EEE9AC00](bounds);
      v47 = &v91.i8[-v46];
      bzero(&v91 - v46, v48);
      v104 = 0;
      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      CA::CG::ClipOp::ClipOp(&v101, a2, *(this + 14), v47, v96, v49, v50, v51, v52, v53, v54);
      v57.n128_u64[0] = *&v101.f64[1];
      v58 = v101.f64[0];
      v59 = HIDWORD(v101.f64[1]);
      if (SLODWORD(v101.f64[1]) > SHIDWORD(v101.f64[1]))
      {
        v59 = LODWORD(v101.f64[1]);
      }

      v55.i32[0] = v59;
      v56.i32[0] = 1073741822;
      v60 = vdup_n_s32(v59 > 1073741822);
      v61.i64[0] = v60.u32[0];
      v61.i64[1] = v60.u32[1];
      v62 = v61;
      if (*(&v102 + 1))
      {
        v63 = *(**(&v102 + 1) + 8);
        v95 = v62;
        v96 = v57;
        v94 = v55;
        v93 = v56;
        v63(*(&v102 + 1));
        v56 = v93;
        v55 = v94;
        v62 = v95;
        v57.n128_u64[0] = v96.n128_u64[0];
      }

      v64.i64[0] = SLODWORD(v58);
      v64.i64[1] = SHIDWORD(v58);
      v65 = v64;
      v66 = vcgtq_s32(v55, v56);
      v64.i64[0] = v57.n128_i32[0];
      v64.i64[1] = v57.n128_i32[1];
      v67 = v64;
      v68 = vshlq_n_s64(v62, 0x3FuLL);
      if (v103)
      {
        v69 = *(*v103 + 8);
        v95 = v67;
        v96 = v65;
        v94 = v66;
        v93 = v68;
        v69(v103);
        v68 = v93;
        v66.i64[0] = v94.i64[0];
        v67 = v95;
        v65 = v96;
      }

      v70 = vdupq_lane_s32(*v66.i8, 0);
      v71 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      v72 = vcvtq_f64_s64(v65);
      v73 = vcvtq_f64_s64(v67);
      v74 = vcltzq_s64(v68);
      v75 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      if (v102)
      {
        v95 = v71;
        v96 = v70;
        v94 = v72;
        v93 = v73;
        v92 = v74;
        v91 = v75;
        CA::Shape::unref(v102);
        v75 = v91;
        v74 = v92;
        v73 = v93;
        v72 = v94;
        v71 = v95;
        v70 = v96;
      }

      v35 = vbslq_s8(v70, v71, v72);
      v34 = vbslq_s8(v74, v75, v73);
      v23 = v97;
      v20 = v98;
    }

    v76 = vclezq_f64(v23);
    if ((vorrq_s8(vdupq_laneq_s64(v76, 1), v76).u64[0] & 0x8000000000000000) == 0)
    {
      v77 = vclezq_f64(v34);
      if ((vorrq_s8(vdupq_laneq_s64(v77, 1), v77).u64[0] & 0x8000000000000000) == 0)
      {
        v78 = vclezq_f64(vsubq_f64(vminnmq_f64(vaddq_f64(v20, v23), vaddq_f64(v35, v34)), vmaxnmq_f64(v20, v35)));
        v79 = vdupq_laneq_s64(v78, 1);
        v80 = vorrq_s8(v79, v78);
        if ((v80.i64[0] & 0x8000000000000000) == 0)
        {
          v81 = *(v2 + 56);
          v82 = *(v2 + 60);
          if (v81 <= v82)
          {
            v83 = *(v2 + 60);
          }

          else
          {
            v83 = *(v2 + 56);
          }

          v80.i32[0] = 1073741822;
          v79.i32[0] = v83;
          v84 = vdupq_lane_s32(*&vcgtq_s32(v79, v80), 0);
          v85 = *(v2 + 48);
          v86.i64[0] = v85;
          v86.i64[1] = SHIDWORD(v85);
          v87 = vbslq_s8(v84, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v86));
          v88 = v81;
          v89 = v82;
          if (v83 > 1073741822)
          {
            v88 = 1.79769313e308;
            v89 = 1.79769313e308;
          }

          v101 = v87;
          *&v102 = v88;
          *(&v102 + 1) = v89;
          v90 = *(this + 88);
          v99 = 0;
          v100 = v90;
          CA::OGL::emit_large_brim(v5, v2, &v101, &v100, &v99, &CA::identity_transform, 1, 0, v25, 0.0, 0.0, *(*(this + 15) + 80));
        }
      }
    }
  }
}

void CA::CG::DrawFocusRingTransparencyLayer::~DrawFocusRingTransparencyLayer(CA::CG::DrawFocusRingTransparencyLayer *this)
{
  *this = &unk_1EF202290;
  v2 = *(this + 20);
  if (v2)
  {
    CA::CG::TransparencyLayer::unref(v2);
  }

  *this = &unk_1EF2021C0;
  v3 = *(this + 15);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  CA::CG::DrawOp::~DrawOp(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v4 = malloc_zone;

  malloc_zone_free(v4, this);
}

{
  *this = &unk_1EF202290;
  v2 = *(this + 20);
  if (v2)
  {
    CA::CG::TransparencyLayer::unref(v2);
  }

  *this = &unk_1EF2021C0;
  v3 = *(this + 15);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  CA::CG::DrawOp::~DrawOp(this);
}

float16x4_t *CA::CG::DrawFocusRing::DrawFocusRing(float16x4_t *a1, const double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Color = CGStyleGetColor();
  CA::CG::DrawOp::DrawOp(a1, a2, a3, a4, a5, Color, 2048);
  *a1 = &unk_1EF2021C0;
  a1[14] = a3;
  atomic_fetch_add((a6 + 8), 1u);
  a1[15] = a6;
  Data = CGStyleGetData();
  a1[7].i32[0] = 2;
  v14 = *(Data + 16);
  if (v14 != 1.0)
  {
    a1[11] = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(a1[11]), v14));
  }

  if ((*(*&a1[15] + 84) & 0x80000000) == 0)
  {
    v15 = CGStyleGetData();
    v16 = *(v15 + 56);
    v17.f64[0] = 0.0;
    v18 = vdupq_lane_s64(vcgtq_f64(v17, v16).i64[0], 0);
    v19.i64[1] = *(v15 + 64);
    *v19.i64 = -v16.f64[0];
    v20 = vbslq_s8(v18, v19, v16);
    v21 = vdupq_lane_s64(vcgtq_f64(v17, vdupq_laneq_s64(v16, 1)).i64[0], 0);
    v24 = vnegq_f64(v16);
    v22.i64[0] = v20.i64[0];
    v22.i64[1] = *&v24.f64[1];
    v23 = vbslq_s8(v21, v22, v20);
    *&v24.f64[0] = v23.i64[1];
    if (*v23.i64 < *&v23.i64[1])
    {
      v24.f64[0] = *v23.i64;
    }

    v25 = vdupq_lane_s64(vmvnq_s8(vcgtq_f64(v24, v17)).i64[0], 0);
    v26 = vbslq_s8(v25, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v23);
    v27 = *&v26.i64[1];
    if (*v26.i64 > *&v26.i64[1])
    {
      v27 = *v26.i64;
    }

    if (v27 < 1.79769313e308)
    {
      v28 = *(v15 + 40);
      v29 = vaddq_f64(v16, v28);
      v30.i64[0] = vbslq_s8(v18, v29, v28).u64[0];
      v31.i64[0] = v30.i64[0];
      v31.i64[1] = *(v15 + 48);
      v30.i64[1] = v29.i64[1];
      v38 = vbslq_s8(v25, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vbslq_s8(v21, v30, v31));
      v39 = v26;
      v32 = malloc_type_malloc(0x38uLL, 0x100004021716A34uLL);
      v33 = v32;
      *v32 = 1;
      *(v32 + 8) = v38;
      *(v32 + 24) = v39;
      v34 = vceqzq_f64(v39);
      if ((vorrq_s8(vdupq_laneq_s64(v34, 1), v34).u64[0] & 0x8000000000000000) != 0 || (v35 = vceqq_f64(v39, v39), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v35), 1), v35).u64[0] & 0x8000000000000000) != 0))
      {
        *(v32 + 5) = 0;
        *(v32 + 6) = 0;
      }

      else
      {
        v36 = vcvtmq_s64_f64(vmaxnmq_f64(v38, vdupq_n_s64(0xC1BFFFFFFF000000)));
        *(v32 + 40) = vuzp1q_s32(v36, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v38, v39), vdupq_n_s64(0x41C0000000000000uLL))), v36));
      }

      *(v32 + 1) = 0;
      CA::CG::DrawOp::set_clip_stack(a1, v32);
      if (atomic_fetch_add(v33, 0xFFFFFFFF) == 1)
      {
        CA::CG::ClipStack::destroy_clip_stack(v33);
      }
    }

    else
    {
      CA::CG::DrawOp::set_clip_stack(a1, 0);
    }
  }

  return a1;
}

void CA::CG::FillRects::draw_shape_and_color(CA::CG::FillRects *this, CA::CG::Renderer *a2, const CA::Bounds *a3, double a4, float64x2_t a5, double a6, double a7, double a8, double a9, double a10, float64x2_t a11)
{
  v80 = *MEMORY[0x1E69E9840];
  if (*(this + 10))
  {
    v13 = *(a2 + 1);
    v14 = 88;
    if ((*(this + 100) & 4) == 0)
    {
      v14 = 32;
    }

    v15 = (a2 + v14);
    v16 = *(this + 14);
    if (v16 == 1)
    {
      v17 = *(this + 136);
      a5.f64[0] = 0.0;
      v18 = vdupq_lane_s64(vcgtq_f64(a5, v17).i64[0], 0);
      v19 = *(this + 120);
      v20.i64[1] = *(this + 18);
      *v20.i64 = -v17.f64[0];
      v21 = vaddq_f64(v17, v19);
      v22.i64[0] = vbslq_s8(v18, v21, v19).u64[0];
      v23.i64[0] = v22.i64[0];
      v23.i64[1] = *(this + 16);
      v24 = vbslq_s8(v18, v20, v17);
      v25 = vdupq_lane_s64(vcgtq_f64(a5, vdupq_laneq_s64(v17, 1)).i64[0], 0);
      v22.i64[1] = v21.i64[1];
      v26 = vbslq_s8(v25, v22, v23);
      v21.i64[0] = v24.i64[0];
      v21.i64[1] = *&vnegq_f64(v17).f64[1];
      v27 = vbslq_s8(v25, v21, v24);
      v28 = v27.f64[1];
      if (v27.f64[0] > v27.f64[1])
      {
        v28 = v27.f64[0];
      }

      if (v28 < 1.79769313e308)
      {
        v29 = v15[1];
        v30 = vmlaq_laneq_f64(vmulq_n_f64(*v15, v26.f64[0]), v29, v26, 1);
        v31 = vmulq_n_f64(*v15, v27.f64[0]);
        v32 = vaddq_f64(v30, v31);
        v33 = vminnmq_f64(v30, v32);
        v34 = vmaxnmq_f64(v30, v32);
        v35 = vmlaq_laneq_f64(v30, v29, v27, 1);
        v36 = vaddq_f64(v35, v31);
        v37 = vminnmq_f64(v33, vminnmq_f64(v35, v36));
        v26 = vaddq_f64(v37, v15[2]);
        v27 = vsubq_f64(vmaxnmq_f64(v34, vmaxnmq_f64(v35, v36)), v37);
      }

      v38 = vceqzq_f64(v27);
      if ((vorrq_s8(vdupq_laneq_s64(v38, 1), v38).u64[0] & 0x8000000000000000) != 0 || (v39 = vceqq_f64(v27, v27), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v39), 1), v39).u64[0] & 0x8000000000000000) != 0))
      {
        *v76 = 0;
        *&v76[8] = 0;
      }

      else
      {
        v40 = vminnmq_f64(vaddq_f64(v26, v27), vdupq_n_s64(0x41C0000000000000uLL));
        v41 = vcvtmq_s64_f64(vmaxnmq_f64(v26, vdupq_n_s64(0xC1BFFFFFFF000000)));
        *v76 = vuzp1q_s32(v41, vsubq_s64(vcvtpq_s64_f64(v40), v41));
      }

      v69 = CA::Shape::intersect(*(*(v13 + 656) + 8), v76);
    }

    else
    {
      v75 = 1;
      if (v16)
      {
        v43 = 0;
        v44 = this + 136;
        v73 = vdupq_n_s64(0x41C0000000000000uLL);
        v74 = vdupq_n_s64(0xC1BFFFFFFF000000);
        do
        {
          a11.f64[0] = 0.0;
          v45 = vdupq_lane_s64(vcgtq_f64(a11, *v44).i64[0], 0);
          v46.i64[1] = *(v44 + 1);
          *v46.i64 = -*v44;
          v47 = *(v44 - 1);
          v48 = vaddq_f64(*v44, v47);
          v49.i64[0] = vbslq_s8(v45, v48, v47).u64[0];
          v50.i64[0] = v49.i64[0];
          v50.i64[1] = *(v44 - 1);
          v51 = vbslq_s8(v45, v46, *v44);
          v52 = vdupq_lane_s64(vcgtq_f64(a11, vdupq_laneq_s64(*v44, 1)).i64[0], 0);
          v49.i64[1] = v48.i64[1];
          v48.i64[0] = v51.i64[0];
          v48.i64[1] = *&vnegq_f64(*v44).f64[1];
          v53 = vbslq_s8(v52, v49, v50);
          v54 = vbslq_s8(v52, v48, v51);
          v55 = v54.f64[1];
          if (v54.f64[0] > v54.f64[1])
          {
            v55 = v54.f64[0];
          }

          if (v55 < 1.79769313e308)
          {
            v56 = v15[1];
            v57 = vmlaq_laneq_f64(vmulq_n_f64(*v15, v53.f64[0]), v56, v53, 1);
            v58 = vmulq_n_f64(*v15, v54.f64[0]);
            v59 = vaddq_f64(v57, v58);
            v60 = vminnmq_f64(v57, v59);
            v61 = vmaxnmq_f64(v57, v59);
            v62 = vmlaq_laneq_f64(v57, v56, v54, 1);
            v63 = vaddq_f64(v62, v58);
            v64 = vminnmq_f64(v60, vminnmq_f64(v62, v63));
            v53 = vaddq_f64(v64, v15[2]);
            v54 = vsubq_f64(vmaxnmq_f64(v61, vmaxnmq_f64(v62, v63)), v64);
          }

          v65 = vceqzq_f64(v54);
          if ((vorrq_s8(vdupq_laneq_s64(v65, 1), v65).u64[0] & 0x8000000000000000) != 0 || (v66 = vceqq_f64(v54, v54), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v66), 1), v66).u64[0] & 0x8000000000000000) != 0))
          {
            *v76 = 0;
            *&v76[8] = 0;
          }

          else
          {
            v67 = vminnmq_f64(vaddq_f64(v53, v54), v73);
            v68 = vcvtmq_s64_f64(vmaxnmq_f64(v53, v74));
            *v76 = vuzp1q_s32(v68, vsubq_s64(vcvtpq_s64_f64(v67), v68));
          }

          CA::shape_union(&v75, v76, a3);
          ++v43;
          v44 += 32;
        }

        while (v43 < *(this + 14));
      }

      CA::shape_intersect(&v75, *(*(v13 + 656) + 8), a3);
      v69 = v75;
    }

    v79 = 0;
    *&v77[16] = 0u;
    v78 = 0u;
    *&v76[16] = 0u;
    *v77 = 0u;
    *v76 = 0u;
    v70 = *(v13 + 656);
    *&v76[8] = *(v70 + 8);
    v71 = *(v70 + 32);
    *&v76[24] = *(v70 + 24);
    *v77 = v71;
    v72 = *(v70 + 40);
    *&v77[24] = *(v70 + 56);
    LOWORD(v71) = *(v70 + 80) & 0x5FF;
    *&v77[8] = v72;
    LODWORD(v78) = *(v70 + 64);
    LOWORD(v79) = v71;
    *(&v78 + 1) = *(v70 + 72);
    *&v76[8] = v69;
    *v76 = CA::OGL::Context::set_gstate(v13, v76);
    (*(*this + 168))(this, a2);
    CA::OGL::Context::set_gstate(v13, **(v13 + 656));
    if (v69)
    {
      CA::Shape::unref(v69);
    }
  }

  else
  {
    v42 = *(*this + 160);

    v42();
  }
}

void CA::CG::FillRects::draw_shape(CA::CG::FillRects *this, CA::CG::Renderer *a2, int8x16_t a3, int8x16_t a4, int8x16_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 1);
  v8 = *(this + 25);
  v9 = 88;
  if ((v8 & 4) == 0)
  {
    v9 = 32;
  }

  v10 = (a2 + v9);
  v28 = CA::CG::mat2_filter_bits(a2 + v9, a3, a4, a5);
  if ((v8 & 1) == 0)
  {
    goto LABEL_4;
  }

  if ((*(a2 + 136) & 4) == 0)
  {
    goto LABEL_10;
  }

  if (fabs(v10[1]) < 0.000001 && fabs(v10[2]) < 0.000001)
  {
LABEL_4:
    v11 = 1;
    goto LABEL_11;
  }

  if (fabs(*v10) < 0.000001)
  {
    v11 = fabs(v10[3]) < 0.000001;
  }

  else
  {
LABEL_10:
    v11 = 0;
  }

LABEL_11:
  if (*(this + 14))
  {
    v12 = 0;
    v13 = *(*(v7 + 16) + 14);
    while (1)
    {
      v14 = (this + 32 * v12 + 120);
      v15 = *v14;
      v16 = v14[1];
      v29 = *v14;
      v30 = v16;
      if (*&v16 >= 0.0)
      {
        v17 = *&v16;
      }

      else
      {
        v17 = -*&v16;
        *&v29 = *&v16 + *&v15;
        *&v30 = -*&v16;
      }

      *&v16 = *(&v16 + 1);
      if (*(&v16 + 1) < 0.0)
      {
        *&v16 = -*(&v16 + 1);
        *(&v29 + 1) = *(&v16 + 1) + *(&v15 + 1);
        *(&v30 + 1) = -*(&v16 + 1);
      }

      v18 = v17 <= *&v16 ? *&v16 : v17;
      v19 = v18 < 1.79769313e308 ? CA::CG::rect_filter_bits(&v29, v10, v28) : 0;
      v20 = (v19 & 9) == 0 || v11;
      v21 = v20 ? 0 : 255;
      v22 = *(v7 + 16);
      if ((*(v22 + 497) & 1) != 0 && ((v23 = *(v22 + 496), v23 < 2) || v23 == 3 && v13 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) && v20))
      {
        *(v22 + 497) &= ~1u;
        v24 = 1;
      }

      else
      {
        v24 = 0;
      }

      if (v18 < 1.79769313e308)
      {
        break;
      }

      v25 = *(*(v7 + 656) + 8);
      v31[0] = 0uLL;
      CA::OGL::emit_combine(v7, 0, 0, 0, v25, v31);
      if (v24)
      {
        goto LABEL_38;
      }

LABEL_39:
      if (++v12 >= *(this + 14))
      {
        return;
      }
    }

    v26 = v19 | 0x100000;
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    memset(v31, 0, sizeof(v31));
    CA::Transform::set_affine(v31, *v10, v10[1], v10[2], v10[3], v10[4], v10[5]);
    *(&v32 + 1) = &v29;
    *&v33 = v31;
    *(&v33 + 1) = __PAIR64__(v21, v26);
    v35 = 0;
    v34 = 0uLL;
    CA::OGL::fill_rect(v7, &v32 + 8, v27);
    if (!v24)
    {
      goto LABEL_39;
    }

LABEL_38:
    *(*(v7 + 16) + 497) |= 1u;
    goto LABEL_39;
  }
}

uint64_t CA::CG::FillRects::color_type(CA::CG::FillRects *this, CA::CG::Renderer *a2, float64x2_t a3)
{
  v4 = *(this + 10);
  v5 = 9;
  if (v4)
  {
    if (*(this + 14))
    {
      v5 = 10;
    }

    else
    {
      v5 = 9;
    }
  }

  if (*(this + 47) == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) && v4 == 0)
  {
    result = v5 | 4;
  }

  else
  {
    result = v5;
  }

  if ((result & 2) != 0)
  {
    if (!v4)
    {
      return result & 0xD;
    }

    v8 = 88;
    if ((*(this + 100) & 4) == 0)
    {
      v8 = 32;
    }

    v9 = (a2 + v8);
    if ((fabs(v9->f64[1]) >= 0.000001 || fabs(v9[1].f64[0]) >= 0.000001) && (fabs(v9->f64[0]) >= 0.000001 || fabs(v9[1].f64[1]) >= 0.000001))
    {
      return result;
    }

    v10 = *(this + 14);
    if (!v10)
    {
      return result & 0xD;
    }

    v11 = this + 136;
    a3.f64[0] = 0.0;
    while (1)
    {
      v12 = vdupq_lane_s64(vcgtq_f64(a3, *v11).i64[0], 0);
      v13.i64[1] = *(v11 + 1);
      *v13.i64 = -*v11;
      v14 = *(v11 - 1);
      v15 = vaddq_f64(*v11, v14);
      v16.i64[0] = vbslq_s8(v12, v15, v14).u64[0];
      v17.i64[0] = v16.i64[0];
      v17.i64[1] = *(v11 - 1);
      v18 = vbslq_s8(v12, v13, *v11);
      v19 = vdupq_lane_s64(vcgtq_f64(a3, vdupq_laneq_s64(*v11, 1)).i64[0], 0);
      v16.i64[1] = v15.i64[1];
      v15.i64[0] = v18.i64[0];
      v15.i64[1] = *&vnegq_f64(*v11).f64[1];
      v20 = vbslq_s8(v19, v16, v17);
      v21 = vbslq_s8(v19, v15, v18);
      v22 = v21.f64[1];
      if (v21.f64[0] > v21.f64[1])
      {
        v22 = v21.f64[0];
      }

      if (v22 < 1.79769313e308)
      {
        v23 = v9[1];
        v24 = vmlaq_laneq_f64(vmulq_n_f64(*v9, v20.f64[0]), v23, v20, 1);
        v25 = vmulq_n_f64(*v9, v21.f64[0]);
        v26 = vaddq_f64(v24, v25);
        v27 = vminnmq_f64(v24, v26);
        v28 = vmaxnmq_f64(v24, v26);
        v29 = vmlaq_laneq_f64(v24, v23, v21, 1);
        v30 = vaddq_f64(v29, v25);
        v31 = vminnmq_f64(v27, vminnmq_f64(v29, v30));
        v20 = vaddq_f64(v31, v9[2]);
        v21 = vsubq_f64(vmaxnmq_f64(v28, vmaxnmq_f64(v29, v30)), v31);
      }

      v32 = trunc(v20.f64[1]);
      v33 = trunc(v21.f64[0]);
      v34 = v20.f64[0] == trunc(v20.f64[0]) && v20.f64[1] == v32;
      v35 = v34 && v21.f64[0] == v33;
      v36 = trunc(v21.f64[1]);
      if (!v35 || v21.f64[1] != v36)
      {
        break;
      }

      v11 += 32;
      if (!--v10)
      {
        return result & 0xD;
      }
    }
  }

  return result;
}

BOOL CA::CG::rects_intersect(CA::CG *this, const CGRect *a2, double a3)
{
  *v5.i64 = MEMORY[0x1EEE9AC00](this);
  v39[508] = *MEMORY[0x1E69E9840];
  if (v4 >= 2)
  {
    v8 = *v5.i64;
    v9 = v4;
    v5.i64[0] = 0;
    v31 = v5;
    v37[0] = 0;
    v37[1] = v39;
    *&v10.f64[1] = 0x4000;
    v38 = xmmword_183E21150;
    v35[1] = v37;
    v36 = v37;
    v34 = 0;
    v35[0] = 0;
    v32 = v35;
    v33 = 0;
    v10.f64[0] = -v8;
    v29 = vdupq_lane_s64(*&vaddq_f64(v10, v10), 0);
    v30 = vdupq_lane_s64(COERCE__INT64(-v8), 0);
    v11 = v3 + 16;
    v12 = 1;
    v13 = v4;
    v7 = 1;
    do
    {
      v14 = *(v11 - 16);
      v6.f64[0] = 0.0;
      v15 = vdupq_lane_s64(vcgtq_f64(v6, *v11).i64[0], 0);
      v16.i64[1] = *(v11 + 8);
      *v16.i64 = -*v11;
      v17 = vbslq_s8(v15, v16, *v11);
      v18 = vaddq_f64(*v11, v14);
      v19.i64[0] = vbslq_s8(v15, v18, v14).u64[0];
      v20.i64[0] = v19.i64[0];
      v20.i64[1] = *(v11 - 8);
      v21 = vdupq_lane_s64(vcgtq_f64(v6, vdupq_laneq_s64(*v11, 1)).i64[0], 0);
      v22 = vnegq_f64(*v11);
      v15.i64[0] = v17.n128_u64[0];
      v15.i64[1] = v22.n128_i64[1];
      v23 = vbslq_s8(v21, v15, v17);
      v19.i64[1] = v18.i64[1];
      v24 = vbslq_s8(v21, v19, v20);
      if (v8 > 0.0)
      {
        v25 = v23.f64[1];
        if (v23.f64[0] > v23.f64[1])
        {
          v25 = v23.f64[0];
        }

        if (v25 < 1.79769313e308)
        {
          v24 = vaddq_f64(v24, v30);
          v22 = vsubq_f64(v23, v29);
          v26 = vclezq_f64(v22);
          v17.n128_u64[1] = v31.u64[1];
          v23 = vandq_s8(v22, vdupq_lane_s64(vmvnq_s8(vcgtq_s64(v31, vorrq_s8(vdupq_laneq_s64(v26, 1), v26))).i64[0], 0));
        }
      }

      v22.n128_u64[0] = *&v24.f64[1];
      v27 = vaddq_f64(v23, v24);
      v17.n128_u64[0] = v27.n128_u64[1];
      CA::GenericRectTree<CA::Rect>::insert_node(&v32, &v33, v24.f64[0], v22, v27, v17);
      if (v34)
      {
        break;
      }

      v7 = v12 < v9;
      v11 += 32;
      ++v12;
      --v13;
    }

    while (v13);
    if (v33)
    {
      CA::GenericRectTree<CA::Rect>::Pool::delete_node(v32, v33);
    }

    x_heap_free(v36);
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t CA::CG::FillRects::shape_extent_contains(CA::CG::FillRects *this, CA::CG::Renderer *a2, const CA::Shape *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(this + 14) != 1)
  {
    return 0;
  }

  v5 = *(this + 15);
  v4 = *(this + 16);
  v14.f64[0] = v5;
  v14.f64[1] = v4;
  v7 = *(this + 17);
  v6 = *(this + 18);
  v15.f64[0] = v7;
  v15.f64[1] = v6;
  if (v7 < 0.0)
  {
    v14.f64[0] = v7 + v5;
    v15.f64[0] = -v7;
  }

  if (v6 < 0.0)
  {
    v14.f64[1] = v6 + v4;
    v15.f64[1] = -v6;
  }

  v8 = 88;
  if ((*(this + 25) & 4) == 0)
  {
    v8 = 32;
  }

  CA::Mat2Impl::mat2_apply_to_rect_interior((a2 + v8), &v14, a3);
  v9 = vceqzq_f64(v15);
  if ((vorrq_s8(vdupq_laneq_s64(v9, 1), v9).u64[0] & 0x8000000000000000) != 0 || (v10 = vceqq_f64(v15, v15), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v10), 1), v10).u64[0] & 0x8000000000000000) != 0))
  {
    v13 = 0uLL;
  }

  else
  {
    v11 = vcvtpq_s64_f64(vmaxnmq_f64(v14, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v13 = vuzp1q_s32(v11, vsubq_s64(vcvtmq_s64_f64(vminnmq_f64(vaddq_f64(v14, v15), vdupq_n_s64(0x41C0000000000000uLL))), v11));
  }

  return CA::Bounds::contains(&v13, a3);
}

BOOL CA::CG::FillRects::can_coalesce(CA::CG::FillRects *this, const CA::CG::FillRects *a2)
{
  v2 = *(this + 25);
  if ((v2 & 0x1000000) == 0)
  {
    return 0;
  }

  v3 = *(a2 + 25);
  if ((v3 & 0x1000000) == 0)
  {
    return 0;
  }

  if (*(this + 1) != *(a2 + 1))
  {
    return 0;
  }

  if (*(this + 2) != *(a2 + 2))
  {
    return 0;
  }

  if (*(this + 3) != *(a2 + 3))
  {
    return 0;
  }

  if (*(this + 4) != *(a2 + 4))
  {
    return 0;
  }

  if (*(this + 5) != *(a2 + 5))
  {
    return 0;
  }

  if (*(this + 6) != *(a2 + 6))
  {
    return 0;
  }

  v4 = *(this + 14);
  if (v4 != *(a2 + 14) || *(this + 8) != *(a2 + 8) || *(this + 9) != *(a2 + 9) || *(this + 11) != *(a2 + 11))
  {
    return 0;
  }

  v5 = *(this + 10);
  v6 = *(a2 + 10);
  if (v5 && v6)
  {
    v7 = CA::CG::DeviceColor::Pattern::operator==(*(this + 10), v6);
    result = 0;
    if (!v7)
    {
      return result;
    }

    goto LABEL_21;
  }

  result = 0;
  if (!v5 && !v6)
  {
LABEL_21:
    if (v2 == v3)
    {
      return v4 != 0;
    }
  }

  return result;
}

void *CA::CG::FillRects::styled_op(uint64_t a1, const double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 80))
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v10 = malloc_type_zone_malloc(malloc_zone, 0xA0uLL, 0x165299FDuLL);
    if (v10)
    {
      Color = CGStyleGetColor();
      CA::CG::DrawOp::DrawOp(v10, a2, a1, a4, a5, Color, 2048);
      *v10 = &unk_1EF1FED10;
      v10[14] = a1;
      atomic_fetch_add((a3 + 8), 1u);
      v10[15] = a3;
    }
  }

  else
  {
    BaseCTM = CGRenderingStateGetBaseCTM();
    v22 = BaseCTM[1];
    v23 = *BaseCTM;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v13 = malloc_type_zone_malloc(malloc_zone, 0x60uLL, 0x165299FDuLL);
    v14 = v13;
    if (v13)
    {
      v15 = vaddvq_f64(vmulq_f64(vextq_s8(v22, v22, 8uLL), v23));
      if (v15 < 0.0)
      {
        v15 = -v15;
      }

      v16 = *(a3 + 80) * sqrtf(v15);
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = &unk_1EF201148;
      v18 = *(MEMORY[0x1E695EFD0] + 16);
      v17 = *(MEMORY[0x1E695EFD0] + 32);
      *(v13 + 24) = *MEMORY[0x1E695EFD0];
      *(v13 + 40) = v18;
      *(v13 + 56) = v17;
      *(v13 + 18) = 0;
      *(v13 + 2) = 1;
      *v13 = &unk_1EF2025C0;
      *&v16 = v16;
      *(v13 + 19) = LODWORD(v16);
      *(v13 + 10) = 0;
      *(v13 + 44) = 0;
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v19 = malloc_type_zone_malloc(malloc_zone, 0xA0uLL, 0x165299FDuLL);
    v10 = v19;
    if (v19)
    {
      CA::CG::FillRectsShadow::FillRectsShadow(v19, a2, a1, a4, a5, v14, 0);
    }

    v10[11] = *(a1 + 88);
    add = atomic_fetch_add(v14 + 2, 0xFFFFFFFF);
    if (v14 && add == 1)
    {
      (*(*v14 + 8))(v14);
    }
  }

  return v10;
}

{
  v10 = vmulq_f64(*(a1 + 8), *(a1 + 8));
  v11 = vmulq_f64(*(a1 + 24), *(a1 + 24));
  if (fabs(vsubq_f64(vaddq_f64(vdupq_laneq_s64(v10, 1), v10), vaddq_f64(vdupq_laneq_s64(v11, 1), v11)).f64[0]) < 0.001 && ((v12 = *(a1 + 100), (v12 & 0x1000000) != 0) || !CA::CG::rects_intersect((a1 + 120), *(a1 + 112), *(a3 + 76))))
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    result = malloc_type_zone_malloc(malloc_zone, 0xA0uLL, 0x165299FDuLL);
    if (result)
    {
      return CA::CG::FillRectsShadow::FillRectsShadow(result, a2, a1, a4, a5, a3, v12 & 4);
    }
  }

  else
  {

    return CA::CG::DrawOp::styled_op(a1, a2, a3, a4, a5);
  }

  return result;
}

uint64_t CA::CG::FillRectsShadow::FillRectsShadow(void *a1, const double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  Color = CGStyleGetColor();
  result = CA::CG::DrawOp::DrawOp(a1, a2, a3, a4, a5, Color, a7 | 0x840u);
  *a1 = &unk_1EF203CE0;
  a1[18] = a3;
  atomic_fetch_add((a6 + 8), 1u);
  a1[19] = a6;
  *a1 = &unk_1EF2024F0;
  return result;
}

uint64_t CA::CG::FillRects::compute_dod_corners(uint64_t a1, float64x2_t *a2, float64x2_t a3)
{
  v3 = *(a1 + 120);
  v4 = *(a1 + 136);
  a3.f64[0] = 0.0;
  v5 = vdupq_lane_s64(vcgtq_f64(a3, v4).i64[0], 0);
  v6.i64[1] = *(a1 + 144);
  *v6.i64 = -v4.f64[0];
  v7 = vbslq_s8(v5, v6, v4);
  v8 = vaddq_f64(v4, v3);
  v5.i64[0] = vbslq_s8(v5, v8, v3).u64[0];
  v9.i64[0] = v5.i64[0];
  v9.i64[1] = *(a1 + 128);
  v10 = vdupq_lane_s64(vcgtq_f64(a3, vdupq_laneq_s64(v4, 1)).i64[0], 0);
  v11.i64[0] = v7.i64[0];
  v11.i64[1] = *&vnegq_f64(v4).f64[1];
  v12 = vbslq_s8(v10, v11, v7);
  v5.i64[1] = v8.i64[1];
  v13 = vbslq_s8(v10, v5, v9);
  v14 = *(a1 + 112);
  if (v14 >= 2)
  {
    v15 = v14 - 1;
    v16 = a1 + 168;
    while (1)
    {
      v17 = vdupq_lane_s64(vcgtq_f64(a3, *v16).i64[0], 0);
      v18.i64[1] = *(v16 + 8);
      *v18.i64 = -*v16;
      v19 = *(v16 - 16);
      v20 = vaddq_f64(*v16, v19);
      v21.i64[0] = vbslq_s8(v17, v20, v19).u64[0];
      v22.i64[0] = v21.i64[0];
      v22.i64[1] = *(v16 - 8);
      v23 = vbslq_s8(v17, v18, *v16);
      v24 = vdupq_lane_s64(vcgtq_f64(a3, vdupq_laneq_s64(*v16, 1)).i64[0], 0);
      v21.i64[1] = v20.i64[1];
      v18.i64[0] = v23.i64[0];
      v18.i64[1] = *&vnegq_f64(*v16).f64[1];
      v25 = vbslq_s8(v24, v21, v22);
      v26 = vbslq_s8(v24, v18, v23);
      v27 = vclezq_f64(v12);
      v28 = vclezq_f64(v26);
      v29 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v28, v27), vzip2q_s64(v28, v27))));
      if (v29.i8[4])
      {
        break;
      }

      if ((v29.i8[0] & 1) == 0)
      {
        v30 = vaddq_f64(v25, v26);
        v25 = vminnmq_f64(v13, v25);
        v26 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v13, v12), v30), v25);
LABEL_8:
        v12 = v26;
        v13 = v25;
      }

LABEL_9:
      v16 += 32;
      if (!--v15)
      {
        goto LABEL_10;
      }
    }

    if (v29.i8[0])
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v31 = vaddq_f64(v12, v13);
  v32.f64[0] = v31.f64[0];
  v32.f64[1] = v13.f64[1];
  *a2 = v13;
  a2[1] = v32;
  v13.f64[1] = v31.f64[1];
  a2[2] = v31;
  a2[3] = v13;
  if ((*(a1 + 100) & 4) == 0)
  {
    v33 = 0;
    v34 = (a1 + 48);
    v35 = (a1 + 32);
    v36 = (a1 + 16);
    v37 = (a1 + 40);
    v38 = (a1 + 24);
    v39 = (a1 + 8);
    v40 = vld1q_dup_f64(v39);
    v41 = vld1q_dup_f64(v38);
    v42 = vld1q_dup_f64(v37);
    v43 = vld1q_dup_f64(v36);
    v44 = vld1q_dup_f64(v35);
    v45 = vld1q_dup_f64(v34);
    do
    {
      f64 = a2[v33].f64;
      v48 = vld2q_f64(f64);
      v49.val[0] = vmlaq_f64(vmlaq_f64(v42, v48.val[0], v40), v48.val[1], v41);
      v49.val[1] = vmlaq_f64(vmlaq_f64(v45, v48.val[0], v43), v48.val[1], v44);
      vst2q_f64(f64, v49);
      v33 += 2;
    }

    while (v33 != 4);
  }

  return 1;
}

float64_t CA::CG::FillRects::compute_dod(CA::CG::FillRects *this, float64x2_t *a2)
{
  v4.f64[0] = CA::Rect::operator=(a2->f64, this + 15);
  v5 = *(this + 14);
  if (v5 >= 2)
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = v5 - 1;
    v9 = this + 168;
    v4.f64[0] = 0.0;
    while (1)
    {
      v10 = vdupq_lane_s64(vcgtq_f64(v4, *v9).i64[0], 0);
      v11.i64[1] = *(v9 + 1);
      *v11.i64 = -*v9;
      v12 = *(v9 - 1);
      v13 = vaddq_f64(*v9, v12);
      v14.i64[0] = vbslq_s8(v10, v13, v12).u64[0];
      v15.i64[0] = v14.i64[0];
      v15.i64[1] = *(v9 - 1);
      v16 = vbslq_s8(v10, v11, *v9);
      v17 = vdupq_lane_s64(vcgtq_f64(v4, vdupq_laneq_s64(*v9, 1)).i64[0], 0);
      v14.i64[1] = v13.i64[1];
      v11.i64[0] = v16.i64[0];
      v11.i64[1] = *&vnegq_f64(*v9).f64[1];
      v18 = vbslq_s8(v17, v14, v15);
      v19 = vbslq_s8(v17, v11, v16);
      v20 = vclezq_f64(v7);
      v21 = vclezq_f64(v19);
      v22 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v21, v20), vzip2q_s64(v21, v20))));
      if (v22.i8[4])
      {
        break;
      }

      if ((v22.i8[0] & 1) == 0)
      {
        v23 = vaddq_f64(v18, v19);
        v18 = vminnmq_f64(v6, v18);
        v19 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v6, v7), v23), v18);
LABEL_8:
        *a2 = v18;
        a2[1] = v19;
        v7 = v19;
        v6 = v18;
      }

LABEL_9:
      v9 += 32;
      if (!--v8)
      {
        goto LABEL_10;
      }
    }

    if (v22.i8[0])
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  if ((*(this + 100) & 4) == 0)
  {

    *&v4.f64[0] = *&CA::Rect::apply_transform(a2, (this + 8));
  }

  return v4.f64[0];
}

void CA::CG::FillRects::~FillRects(CA::CG::FillRects *this)
{
  CA::CG::DrawOp::~DrawOp(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

void CA::CG::StrokeRects::draw_shape(CA::CG::StrokeRects *this, CA::CG::Renderer *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  if (*(this + 17))
  {
    goto LABEL_3;
  }

  v4 = *(a2 + 1);
  v5 = *(this + 25);
  CA::CG::DrawOp::shape_line_width(this, a2, *(this + 15));
  if (*v6.i64 < 0.0)
  {
    goto LABEL_3;
  }

  v23 = *v6.i64;
  if (*v6.i64 < 0.001)
  {
    return;
  }

  if (!*(this + 39))
  {
    if (*v6.i64 <= 1.5 || *(this + 18) >= 1.41421356)
    {
      goto LABEL_24;
    }

LABEL_3:
    Mutable = CGPathCreateMutable();
    if (*(this + 14))
    {
      v10 = 0;
      v11 = (this + 184);
      v8.i64[0] = 0x3F50624DD2F1A9FCLL;
      v49 = v8;
      v12.f64[0] = NAN;
      v12.f64[1] = NAN;
      v13 = vnegq_f64(v12);
      v47 = v13;
      do
      {
        v14 = *(v11 - 3);
        v15 = *(v11 - 2);
        v13.i64[0] = *(v11 - 1);
        v9.i64[0] = *v11;
        v16 = -*v13.i64;
        if (*v13.i64 >= 0.0)
        {
          v16 = *(v11 - 1);
        }

        *&v17 = vbslq_s8(v47, v49, v13).u64[0];
        if (v16 < *v49.i64)
        {
          *v13.i64 = v17;
        }

        v18 = -*v9.i64;
        if (*v9.i64 >= 0.0)
        {
          v18 = *v11;
        }

        v19 = vbslq_s8(v47, v49, v9).u64[0];
        if (v18 >= *v49.i64)
        {
          v20 = *v11;
        }

        else
        {
          v20 = *&v19;
        }

        v21 = *v13.i64 + v14;
        CGPathMoveToPoint(Mutable, 0, *v13.i64 + v14, *(v11 - 2));
        CGPathAddLineToPoint(Mutable, 0, v14, v15);
        v22 = v20 + v15;
        CGPathAddLineToPoint(Mutable, 0, v14, v22);
        CGPathAddLineToPoint(Mutable, 0, v21, v22);
        CGPathCloseSubpath(Mutable);
        ++v10;
        v11 += 4;
      }

      while (v10 < *(this + 14));
    }

    CA::CG::stroke_path(a2, Mutable, 0, this + 8, this + 120);

    CFRelease(Mutable);
    return;
  }

  if (*v6.i64 > 1.5)
  {
    goto LABEL_3;
  }

LABEL_24:
  v24 = 32;
  if ((v5 & 4) != 0)
  {
    v24 = 88;
  }

  v25 = *(this + 14);
  if (v25)
  {
    v6.i64[0] = 0;
    v50 = v6;
    v26 = 0;
    v27 = (v5 << 31 >> 31);
    v28 = (a2 + v24);
    __asm { FMOV            V0.2D, #-2.0 }

    v46 = _Q0;
    v48 = vdupq_lane_s64(COERCE__INT64(v23 * -0.5), 0);
    do
    {
      v34 = (this + 32 * v26 + 160);
      v36 = *v34;
      v35 = v34[1];
      v51 = *v34;
      v52 = v35;
      if (v35.f64[0] >= 0.0)
      {
        _Q0.i64[0] = *&v35.f64[0];
      }

      else
      {
        *_Q0.i64 = -v35.f64[0];
        v51.f64[0] = v35.f64[0] + v36.f64[0];
        v52.f64[0] = -v35.f64[0];
      }

      v35.f64[0] = v35.f64[1];
      if (v35.f64[1] < 0.0)
      {
        v35.f64[0] = -v35.f64[1];
        v51.f64[1] = v35.f64[1] + v36.f64[1];
        v52.f64[1] = -v35.f64[1];
      }

      if (*_Q0.i64 <= v35.f64[0])
      {
        v37 = v35.f64[0];
      }

      else
      {
        v37 = *_Q0.i64;
      }

      if (v37 < 1.79769313e308)
      {
        v38 = v52;
        v39 = v52.f64[1];
        if (v52.f64[0] > v52.f64[1])
        {
          v39 = v52.f64[0];
        }

        if (v39 < 1.79769313e308)
        {
          *&v35.f64[1] = _Q0.i64[0];
          v40 = vbicq_s8(v48, vceqzq_f64(v35));
          v35 = vaddq_f64(v51, v40);
          v38 = vmlaq_f64(v52, v46, v40);
          v41 = vclezq_f64(v38);
          _Q0 = vandq_s8(v38, vdupq_lane_s64(vmvnq_s8(vcgtq_s64(v50, vorrq_s8(vdupq_laneq_s64(v41, 1), v41))).i64[0], 0));
          v51 = v35;
          v52 = _Q0;
        }

        v42 = CA::CG::mat2_filter_bits(v28, _Q0, v35, v38);
        v43 = CA::CG::rect_filter_bits(v51.f64, v28, v42);
        v57 = 0;
        v44 = v43 | 0x100000;
        v55 = 0u;
        v56 = 0u;
        v54 = 0u;
        memset(v53, 0, sizeof(v53));
        CA::Transform::set_affine(v53, *v28, v28[1], v28[2], v28[3], v28[4], v28[5]);
        *(&v54 + 1) = &v51;
        *&v55 = v53;
        *(&v55 + 1) = __PAIR64__(v27, v44);
        v57 = 0;
        v56 = 0uLL;
        CA::OGL::stroke_rect(v4, &v54 + 1, v45, v23);
        v25 = *(this + 14);
      }

      ++v26;
    }

    while (v26 < v25);
  }
}

float64x2_t CA::CG::StrokeRects::compute_dod(CA::CG::StrokeRects *this, CA::Rect *a2, float64x2_t result)
{
  if (!*(this + 14))
  {
    *a2 = 0u;
    *(a2 + 1) = 0u;
    v24 = (a2 + 16);
LABEL_15:
    *v24 = 0.000001;
    goto LABEL_16;
  }

  CA::Rect::operator=(a2, this + 20);
  v5 = *(this + 14);
  v6 = v5 > 1;
  v7 = v5 - 1;
  if (v6)
  {
    v8 = *a2;
    v25 = *(a2 + 1);
    v9 = (this + 208);
    result.f64[0] = 0.0;
    v10 = v25;
    while (1)
    {
      v11 = v9[-1];
      v12 = vdupq_lane_s64(vcgtq_f64(result, *v9).i64[0], 0);
      v13.i64[1] = *&v9->f64[1];
      *v13.i64 = -v9->f64[0];
      v14 = vaddq_f64(*v9, v11);
      v15.i64[0] = vbslq_s8(v12, v14, v11).u64[0];
      v16.i64[0] = v15.i64[0];
      v16.i64[1] = *&v9[-1].f64[1];
      v15.i64[1] = v14.i64[1];
      v17 = vdupq_lane_s64(vcgtq_f64(result, vdupq_laneq_s64(*v9, 1)).i64[0], 0);
      v18 = vbslq_s8(v12, v13, *v9);
      v19 = vbslq_s8(v17, v15, v16);
      v13.i64[0] = v18.i64[0];
      v13.i64[1] = *&vnegq_f64(*v9).f64[1];
      v20 = vbslq_s8(v17, v13, v18);
      v21 = fmin(v20.f64[0], v20.f64[1]) < 0.0;
      if (v10.f64[0] < 0.0 || v10.f64[1] < 0.0)
      {
        if (!v21)
        {
          goto LABEL_10;
        }
      }

      else if (!v21)
      {
        v22 = vaddq_f64(v8, v10);
        v23 = vaddq_f64(v19, v20);
        v19 = vbslq_s8(vcgtq_f64(v19, v8), v8, v19);
        v20 = vsubq_f64(vbslq_s8(vcgtq_f64(v22, v23), v22, v23), v19);
LABEL_10:
        *a2 = v19;
        *(a2 + 1) = v20;
        v25.f64[0] = v20.f64[0];
        v8 = v19;
        v10 = v20;
      }

      v9 += 2;
      if (!--v7)
      {
        goto LABEL_14;
      }
    }
  }

  v25.f64[0] = *(a2 + 2);
LABEL_14:
  v24 = (a2 + 16);
  if (v25.f64[0] == 0.0)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (*(a2 + 3) == 0.0)
  {
    *(a2 + 3) = 0x3EB0C6F7A0B5ED8DLL;
  }

  if ((*(this + 100) & 4) == 0)
  {
    CA::Rect::apply_transform(a2, (this + 8));
  }

  result.f64[0] = v24[1];
  if (*v24 > result.f64[0])
  {
    result.f64[0] = *v24;
  }

  if (result.f64[0] < 1.79769313e308)
  {
    v37 = *v24;
    v26.f64[0] = CA::CG::stroke_radius(this + 120, *(this + 8), *(this + 24));
    v27.i64[0] = 0;
    v26.f64[1] = v28;
    v29 = vsubq_f64(*a2, v26);
    __asm { FMOV            V3.2D, #2.0 }

    v35 = vmlaq_f64(v37, _Q3, v26);
    v36 = vclezq_f64(v35);
    result = vandq_s8(v35, vdupq_lane_s64(vmvnq_s8(vcgtq_s64(v27, vorrq_s8(vdupq_laneq_s64(v36, 1), v36))).i64[0], 0));
    *a2 = v29;
    *(a2 + 1) = result;
  }

  return result;
}

void CA::CG::StrokeRects::~StrokeRects(CA::CG::StrokeRects *this)
{
  *this = &unk_1EF202428;
  if (*(this + 17))
  {
    CGDashRelease();
  }

  CA::CG::DrawOp::~DrawOp(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF202428;
  if (*(this + 17))
  {
    CGDashRelease();
  }

  CA::CG::DrawOp::~DrawOp(this);
}

uint64_t CA::CG::DrawTransparencyLayer::draw_color(CA::CG::DrawTransparencyLayer *this, CA::CG::Renderer *a2, const CA::Shape *a3)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 1);
  v4 = *(v3 + 2);
  if ((*(v4 + 497) & 1) != 0 && *(v4 + 496) <= 1u)
  {
    *(v4 + 497) &= ~1u;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 14);
  v7 = *(v6 + 72);
  if (v7)
  {
    v8 = *(v6 + 80) * *(a2 + 10);
    *v30 = v8;
    v30[1] = 0;
    v30[2] = 0;
    *&v30[3] = v8;
    v30[4] = 0;
    v30[5] = 0;
    if (v8 == 1.0)
    {
      v13 = 1;
      v14 = 5;
      while (v13 != 6)
      {
        v15 = *&v30[v13];
        v16 = CA::Mat2Impl::mat2_identity_double[v13++];
        if (v15 != v16)
        {
          v14 = v13 - 2;
          break;
        }
      }

      v9 = v14 < 5;
    }

    else
    {
      v9 = 1;
    }

    CA::OGL::Context::bind_surface(v3, v7, 0, v9, v9, 0.0);
    v19 = *(v7 + 56);
    v20 = *(v7 + 60);
    if (v19 <= v20)
    {
      v21 = *(v7 + 60);
    }

    else
    {
      v21 = *(v7 + 56);
    }

    v17.i32[0] = 1073741822;
    v18.i32[0] = v21;
    v22 = vdupq_lane_s32(*&vcgtq_s32(v18, v17), 0);
    v23 = *(v7 + 48);
    v24.i64[0] = v23;
    v24.i64[1] = SHIDWORD(v23);
    v25 = vbslq_s8(v22, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v24));
    v26 = v19;
    if (v21 > 1073741822)
    {
      v26 = 1.79769313e308;
    }

    v28 = v25;
    if (v21 <= 1073741822)
    {
      v27 = v20;
    }

    else
    {
      v27 = 1.79769313e308;
    }

    v29.f64[0] = v26;
    v29.f64[1] = v27;
    v32[0] = 0;
    v32[1] = vcvt_f32_f64(v29);
    memset(v31, 0, sizeof(v31));
    CA::Transform::set_affine(v31, v8, 0.0, 0.0, v8, 0.0, 0.0);
    *&v31[152] = &v28;
    *&v31[160] = v31;
    memset(&v31[168], 0, 32);
    CA::OGL::fill_rect_tex(v3, &v31[152], v32);
    result = CA::OGL::Context::unbind_surface(v3, v7, 0);
    if (v5)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v10 = *(v3 + 2);
    v11 = *(v10 + 8);
    *(v10 + 8) = 0;
    result = CA::OGL::emit_shape(v3, *(*(v3 + 82) + 8), a3);
    *(*(v3 + 2) + 8) = v11;
    if (v5)
    {
LABEL_24:
      *(*(v3 + 2) + 497) |= 1u;
    }
  }

  return result;
}

uint64_t CA::CG::DrawTransparencyLayer::shape_extent_contains(CA::CG::DrawTransparencyLayer *this, CA::CG::Renderer *a2, const CA::Shape *a3)
{
  v3 = *(*(this + 14) + 72);
  if (v3)
  {
    return CA::Bounds::contains(v3 + 6, a3);
  }

  else
  {
    return 0;
  }
}

void *CA::CG::DrawTransparencyLayer::styled_op(uint64_t a1, const double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v10 = malloc_type_zone_malloc(malloc_zone, 0xA8uLL, 0x165299FDuLL);
  if (v10)
  {
    v11 = *(a1 + 112);
    Color = CGStyleGetColor();
    CA::CG::DrawOp::DrawOp(v10, a2, a1, a4, a5, Color, 2048);
    *v10 = &unk_1EF1FE7C0;
    v10[14] = a1;
    atomic_fetch_add((a3 + 8), 1u);
    v10[15] = a3;
    *v10 = &unk_1EF1FE888;
    atomic_fetch_add(v11, 1u);
    v10[20] = v11;
  }

  return v10;
}

{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v10 = malloc_type_zone_malloc(malloc_zone, 0xA8uLL, 0x165299FDuLL);
  if (v10)
  {
    v11 = *(a1 + 112);
    Color = CGStyleGetColor();
    CA::CG::DrawOp::DrawOp(v10, a2, a1, a4, a5, Color, 2048);
    *v10 = &unk_1EF1FED10;
    v10[14] = a1;
    atomic_fetch_add((a3 + 8), 1u);
    v10[15] = a3;
    *v10 = &unk_1EF1FEDD8;
    atomic_fetch_add(v11, 1u);
    v10[20] = v11;
  }

  return v10;
}

float16x4_t *CA::CG::DrawTransparencyLayer::styled_op(uint64_t a1, const double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_malloc(malloc_zone, 0xA8uLL, 0x165299FDuLL);
  if (result)
  {
    v11 = *(a1 + 112);
    result = CA::CG::DrawFocusRing::DrawFocusRing(result, a2, a1, a4, a5, a3);
    *result = &unk_1EF202290;
    atomic_fetch_add(v11, 1u);
    result[20] = v11;
  }

  return result;
}

__n128 CA::CG::DrawTransparencyLayer::compute_dod(CA::CG::DrawTransparencyLayer *this, __n128 *a2)
{
  v2 = *(this + 14);
  if (*(v2 + 72) || (v3 = *(this + 14), v3 <= 9) && ((0x164u >> v3) & 1) == 0)
  {
    *a2 = *(v2 + 40);
    result = *(v2 + 56);
    a2[1] = result;
  }

  return result;
}

void CA::CG::DrawTransparencyLayer::invalidate(CA::CG::DrawTransparencyLayer *this, CA::CG::Renderer *a2)
{
  v4 = *(this + 13);
  if (v4)
  {
    (*(*v4 + 16))(v4, a2);
  }

  v5 = *(this + 14);
  v6 = *(v5 + 72);
  if (v6)
  {
    CA::OGL::Context::release_surface(*(a2 + 1), v6);
    *(v5 + 72) = 0;
    atomic_fetch_add(a2 + 1057, 0xFFFFFFFF);
  }
}

void CA::CG::DrawTransparencyLayer::~DrawTransparencyLayer(CA::CG::DrawTransparencyLayer *this)
{
  *this = &unk_1EF202600;
  v2 = *(this + 14);
  if (v2)
  {
    CA::CG::TransparencyLayer::unref(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF202600;
  v2 = *(this + 14);
  if (v2)
  {
    CA::CG::TransparencyLayer::unref(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
}

void *CA::emit_error(void *result, uint64_t a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    if (!*result)
    {
      v3 = *MEMORY[0x1E696A578];
      v4[0] = a2;
      result = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v4, &v3, 1)}];
      *v2 = result;
    }
  }

  return result;
}

CALayer *recursively_prepare_contents(CALayer *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [(CALayer *)a1 prepareContents];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(CALayer *)a1 sublayers];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        recursively_prepare_contents(*(*(&v9 + 1) + 8 * v6++));
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v4);
  }

  result = [(CALayer *)a1 mask];
  if (result)
  {
    return recursively_prepare_contents(result);
  }

  return result;
}

void sub_183DBCC24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 16))(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

void CA::CG::MetalQueue::~MetalQueue(CA::CG::MetalQueue *this)
{
  CA::CG::AccelQueue::~AccelQueue(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

os_log_t ___Z20x_log_get_frame_ratev_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "FrameRate");
  x_log_get_frame_rate(void)::log = result;
  return result;
}

float CA::OGL::BackdropBuffer::get_size(CA::OGL::BackdropBuffer *this, unsigned int *a2, unsigned int *a3, float *a4)
{
  v4 = *(this + 4);
  if (v4)
  {
    *a2 = *(v4 + 56);
    *a3 = *(v4 + 60);
  }

  else
  {
    *a3 = 0;
    *a2 = 0;
  }

  result = *(this + 6);
  *a4 = result;
  return result;
}

uint64_t CA::OGL::anonymous namespace::collect_mesh_surfaces(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float64x2_t *a5)
{
  v9 = *(a1 + 672);
  if (v9)
  {
    while (1)
    {
      v10 = *(v9 + 148);
      if ((v10 & 4) != 0)
      {
        break;
      }

      v9 = *(v9 + 8);
      if (!v9)
      {
        goto LABEL_4;
      }
    }

    v11 = (v10 >> 2) & 1;
  }

  else
  {
LABEL_4:
    v11 = 0;
  }

  v12 = (a1 + 656);
  do
  {
    v12 = *v12;
    if (!v12)
    {
      return 0;
    }
  }

  while ((v12[10] & 0x200) == 0);
  if (!v11)
  {
    return 0;
  }

  v13 = *(v9 + 8);
  while (1)
  {
    v14 = *(a2 + 176);
    if (v14)
    {
      if ((*(*v14 + 32))(v14))
      {
        break;
      }
    }

    a2 = *(a2 + 8);
    if (!a2)
    {
      return 0;
    }
  }

  v16 = *(a2 + 176);
  if (!v16)
  {
    return 0;
  }

  v17 = *(v16 + 80);
  v18 = *v17;
  v19 = v17[2];
  a5[2] = v17[6];
  v20 = 1.0 / *(v16 + 256);
  *a5 = vmulq_n_f64(v18, v20);
  a5[1] = vmulq_n_f64(v19, v20);
  if (!v13)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (*(v13 + 144) >> 29 == 4)
    {
      *(a3 + 8 * result) = v13;
      *(a4 + 16 * result) = *(v13 + 48);
      result = (result + 1);
    }

    if ((*(v13 + 148) & 4) != 0)
    {
      break;
    }

    v13 = *(v13 + 8);
  }

  while (v13 && result < 8);
  return result;
}

int32x2_t *CA::OGL::anonymous namespace::collect_surfaces(int32x2_t *result, uint64_t a2, uint64_t a3, int a4, _BYTE *a5)
{
  if (result)
  {
    v5 = result;
    result = 0;
    while (result >= 1)
    {
      v6 = *(a2 - 8 + 8 * result);
      if (v6)
      {
        if ((v6[18].i16[2] & 0x10) == 0)
        {
          break;
        }

        v7 = v6[7];
        v8 = v5[7];
        v9 = vorr_s8(vcltz_s32(v8), vclez_s32(v7));
        if ((vpmax_u32(v9, v9).u32[0] & 0x80000000) != 0)
        {
          break;
        }

        v10 = vand_s8(vcge_s32(vadd_s32(v6[6], v7), vadd_s32(v5[6], v8)), vcge_s32(v5[6], v6[6]));
        LODWORD(v6) = vpmin_u32(v10, v10).u32[0] >> 31;
      }

LABEL_9:
      v11 = v5[18].i32[0];
      if (v11 < 0 && !(((v11 & 0x60000000) != 0) & ~a4 | v6 & 1))
      {
        a4 = 0;
        *(a2 + 8 * result) = v5;
        *(a3 + 16 * result) = *v5[6].i8;
        result = (result + 1);
      }

      if ((v5[18].i16[2] & 4) != 0)
      {
        *a5 = 1;
        return result;
      }

      v5 = v5[1];
      if (!v5 || result >= 8)
      {
        return result;
      }
    }

    LOBYTE(v6) = 0;
    goto LABEL_9;
  }

  return result;
}

uint64_t CA::OGL::anonymous namespace::replicate_backdrop_edges(uint64_t a1, uint64_t a2, CA::Shape **a3, int32x2_t *a4, uint64_t *a5, float a6, float a7)
{
  v102[3] = *MEMORY[0x1E69E9840];
  *(a1 + 144) = 0;
  v10 = a1 + 1386;
  *(a1 + 112) = a1 + 1386;
  *(a1 + 120) = xmmword_183E20E50;
  v11 = (16.0 / a6 + 1.0);
  v12 = a7;
  if (v11 > a7)
  {
    v12 = (16.0 / a6 + 1.0);
  }

  if (v11 < a7)
  {
    v11 = v12;
  }

  v51 = v11;
  v59 = 0;
  v60 = 0;
  v102[1] = 0;
  v102[2] = 0;
  v102[0] = a2;
  __asm
  {
    FMOV            V1.2D, #0.5
    FMOV            V0.4S, #-1.0
  }

  v49 = _Q0;
  v50 = _Q1;
  while (CA::ShapeIterator::iterate(v102, &v59))
  {
    v20 = 0;
    v77[6] = v51;
    v101 = v51;
    v21 = vsub_s32(v59, *a4);
    v22.i64[0] = v21.i32[0];
    v22.i64[1] = v21.i32[1];
    v23 = vaddq_f64(vcvtq_f64_s64(v22), v50);
    v24 = vcvt_f32_f64(v23);
    *v25.f32 = vadd_f32(v24, vcvt_f32_s32(v60));
    v77[5] = v59.i32[1];
    v26 = v59;
    v83 = HIDWORD(*&v26);
    v77[0] = v26;
    v27 = v25.f32[0] + -0.5;
    v25.i64[1] = v25.i64[0];
    v28 = vaddq_f32(v25, v49);
    v77[1] = v59.i32[1] - v51;
    v29 = v60;
    v85 = HIDWORD(*&v29);
    v77[2] = v29;
    v80 = v60.i32[0];
    v77[3] = v51;
    v77[4] = v59.i32[0] - v51;
    v78 = vext_s8(v60, v59, 4uLL);
    v79 = v60.i32[1] + v59.i32[1];
    v81 = v51;
    v82 = v60.i32[0] + v59.i32[0];
    v84 = v51;
    v86 = v59.i32[0] - v51;
    v88 = v51;
    v87 = v59.i32[1] - v51;
    v89 = v51;
    v90 = v59.i32[0] - v51;
    v92 = v51;
    v91 = v60.i32[1] + v59.i32[1];
    v93 = v51;
    v94 = v60.i32[0] + v59.i32[0];
    v96 = v51;
    v95 = v60.i32[1] + v59.i32[1];
    v97 = v51;
    v98 = v60.i32[0] + v59.i32[0];
    v100 = v51;
    v99 = v59.i32[1] - v51;
    v30 = vcvt_hight_f32_f64(v24, v23);
    v63 = v25.f32[0] + -0.5;
    v64 = vrev64_s32(v24);
    v65 = v24.f32[1] + -0.5;
    v66 = v24.i32[0];
    *v25.f32 = vadd_f32(vext_s8(*v25.f32, v24, 4uLL), 0xBF000000BF000000);
    LODWORD(v31) = vdup_lane_s32(*v25.f32, 1).u32[0];
    HIDWORD(v31) = v24.i32[1];
    v62 = v31;
    v67 = v25.i64[0];
    v68 = v28.i32[1];
    v69 = v27;
    v70 = vrev64_s32(*v28.i8);
    v71 = v24.f32[1] + -0.5;
    v72 = vzip1_s32(*v28.i8, *v25.f32);
    v73 = v30;
    v30.i32[2] = v28.i32[1];
    v75 = v28;
    v28.i32[2] = v24.i32[1];
    v74 = vuzp1q_s32(v30, v30);
    v76 = vuzp1q_s32(v28, v28);
    do
    {
      v58 = CA::Shape::new_shape(&v77[4 * v20], v19);
      CA::shape_subtract(&v58, a3, v32, v33);
      v56 = 0;
      v57 = 0;
      v54 = v58;
      v55 = v20;
      v61[0] = v58;
      v61[1] = 0;
      v61[2] = 0;
      v34 = &v62 + 2 * v20;
      while (CA::ShapeIterator::iterate(v61, &v56))
      {
        v36 = v56;
        v35 = HIDWORD(v56);
        v37 = v57;
        v38 = HIDWORD(v57);
        v39 = 6;
        if (!*(a1 + 108))
        {
          v39 = 4;
        }

        if ((*(a1 + 144) + 4) > *(a1 + 152) || (v40 = *(a1 + 128)) != 0 && *(a1 + 120) + v39 > v40)
        {
          *(a1 + 1384) |= 0x20u;
          CA::OGL::Context::array_flush(a1);
          *(a1 + 144) = 0;
          *(a1 + 112) = v10;
          *(a1 + 120) = xmmword_183E20E50;
        }

        CA::OGL::Context::array_rect(a1, v36 * a6, v35 * a6, (v37 + v36) * a6, (v38 + v35) * a6);
        v41 = *a5;
        v42 = *(a1 + 136) + 48 * *(a1 + 144);
        *(v42 - 160) = *a5;
        *(v42 - 112) = v41;
        *(v42 - 64) = v41;
        *(v42 - 16) = v41;
        v43 = *v34;
        v44 = *(v34 + 1);
        v45 = *(v34 + 2);
        v46 = *(v34 + 3);
        v47 = *(a1 + 136) + 48 * *(a1 + 144);
        *(v47 - 176) = *v34;
        *(v47 - 172) = v44;
        *(v47 - 128) = v45;
        *(v47 - 124) = v44;
        *(v47 - 80) = v45;
        *(v47 - 76) = v46;
        *(v47 - 32) = v43;
        *(v47 - 28) = v46;
      }

      CA::Shape::unref(v54);
      v20 = v55 + 1;
    }

    while (v55 != 7);
  }

  return CA::OGL::Context::array_flush(a1);
}

uint64_t CA::OGL::anonymous namespace::filter_has_displacement(void *a1, uint64_t a2)
{
  v2 = a1[78];
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      if (*(*(v2 + 24) + 13))
      {
        goto LABEL_17;
      }

      v4 = 0;
      while (v3 - 1 != v4)
      {
        v5 = *(v2 + 8 * v4++ + 32);
        if (*(v5 + 13))
        {
          if (v4 < v3)
          {
            goto LABEL_17;
          }

          break;
        }
      }
    }
  }

  if (a1[10] - a1[9] != 192)
  {
    return 0;
  }

  v6 = *(a2 + 136);
  if (!v6)
  {
    return 0;
  }

  v2 = *(v6 + 96);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  if ((*(*(v2 + 24) + 13) & 1) == 0)
  {
    v7 = 0;
    while (v3 - 1 != v7)
    {
      v8 = *(v2 + 8 * v7++ + 32);
      if (*(v8 + 13))
      {
        if (v7 >= v3)
        {
          return 0;
        }

        goto LABEL_17;
      }
    }

    return 0;
  }

LABEL_17:
  v9 = 8 * v3;
  v10 = v2 + 24;
  result = 1;
  while (1)
  {
    v12 = *(*v10 + 24);
    if ((v12 - 283) < 2 || v12 == 97 || v12 == 202)
    {
      break;
    }

    v10 += 8;
    v9 -= 8;
    if (!v9)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CA::OGL::anonymous namespace::capture_detached(CA::Render::Handle *,long,CA::Render::Texture *,CA::Rect,CA::Rect,unsigned int,void *)::$_0::operator()(uint64_t *a1, int a2)
{
  v85[3] = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  *(v5 + 112) = *a1 + 1386;
  *(v5 + 144) = 0;
  *(v5 + 120) = xmmword_183E20E50;
  v6 = v4[1];
  v7 = vceqzq_f64(v6);
  v82 = 0u;
  if ((vorrq_s8(vdupq_laneq_s64(v7, 1), v7).u64[0] & 0x8000000000000000) == 0)
  {
    v8 = vceqq_f64(v6, v6);
    if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v8), 1), v8).u64[0] & 0x8000000000000000) == 0)
    {
      v9 = vcvtmq_s64_f64(vmaxnmq_f64(*v4, vdupq_n_s64(0xC1BFFFFFFF000000)));
      v82 = vuzp1q_s32(v9, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(*v4, v6), vdupq_n_s64(0x41C0000000000000uLL))), v9));
    }
  }

  v10 = 0;
  v84 = 0uLL;
  v11 = *(*a1[2] + 8);
  v85[1] = 0;
  v85[2] = 0;
  v85[0] = v11;
  v12 = vextq_s8(v82, v82, 8uLL).u64[0];
  v13 = vclez_s32(v12);
  v14 = vadd_s32(*v82.i8, v12);
  v83 = vpmax_u32(v13, v13).u32[0];
  v15 = 1.0;
  while (CA::ShapeIterator::iterate(v85, &v84))
  {
    v16 = vclez_s32(*(&v84 + 8));
    if ((vpmax_u32(v16, v16).u32[0] & 0x80000000) == 0)
    {
      if ((v83 & 0x80000000) != 0 || (v17 = vmax_s32(*&v84, *v82.i8), v18 = vmin_s32(vadd_s32(*&v84, *(&v84 + 8)), v14), v19 = vsub_s32(v18, v17), v20 = vclez_s32(v19), (vpmax_u32(v20, v20).u32[0] & 0x80000000) != 0))
      {
        *(&v84 + 1) = 0;
      }

      else
      {
        *&v21 = v17;
        *(&v21 + 1) = v19;
        v84 = v21;
        v22 = v17.i32[1];
        v23 = v17.i32[0];
        v24 = vcvt_f32_s32(v18);
        v25 = *a1[2];
        v26 = *(v25 + 16);
        if (v26 == v15)
        {
          v37 = v24.f32[1];
        }

        else
        {
          v27 = v15 / v26;
          v28 = floorf(v26 * v23) * (v15 / v26);
          v29 = floorf(v26 * v22) * (v15 / v26);
          v30 = vmul_n_f32(v24, v26);
          if (*(v25 + 24) == v28)
          {
            v23 = v28 - (v15 / v26);
          }

          else
          {
            v23 = v28;
          }

          v31 = vmul_n_f32(vrndp_f32(v30), v27);
          v32 = *(v25 + 32);
          if (v32.f64[0] == v29)
          {
            v22 = v29 - v27;
          }

          else
          {
            v22 = v29;
          }

          v33.f64[1] = *(v25 + 24);
          v33.f64[0] = *(v25 + 48);
          v34 = vaddq_f64(v32, v33);
          v35 = vmovn_s64(vceqq_f64(vextq_s8(v34, v34, 8uLL), vcvtq_f64_f32(v31)));
          if (v35.i8[0])
          {
            v24.f32[0] = v31.f32[0] + v27;
          }

          else
          {
            v24.f32[0] = v31.f32[0];
          }

          v36 = v31.f32[1] + v27;
          if (v35.i8[4])
          {
            v37 = v36;
          }

          else
          {
            v37 = v31.f32[1];
          }
        }

        v38 = a1[1];
        v39 = v38[1];
        v40 = v38[2];
        v41 = v38[3];
        v42 = (v23 - *v38) / v40;
        *&v42 = v42;
        v43 = (v22 - v39) / v41;
        v81 = v24.f32[0];
        v44 = (v24.f32[0] - *v38) / v40;
        v45 = (v37 - v39) / v41;
        v46 = *a1[3];
        v47 = v15 - v45;
        if (v46)
        {
          v48 = v15 - v43;
        }

        else
        {
          v48 = v43;
        }

        if ((v46 & 1) == 0)
        {
          v47 = v45;
        }

        if ((v46 & 2) != 0)
        {
          v49 = v15 - *&v42;
        }

        else
        {
          v49 = *&v42;
        }

        if ((v46 & 2) != 0)
        {
          v44 = v15 - v44;
        }

        if ((v46 & 4) != 0)
        {
          v50 = v15 - v49;
          v49 = v48;
          v48 = v15 - v44;
          v44 = v47;
          v47 = v50;
        }

        v51 = a1[4];
        v52 = *a1[5];
        v54 = *v51;
        v53 = v51[1];
        LODWORD(v42) = *(v52 + 16);
        v75 = *&v42;
        LODWORD(v42) = *(v52 + 20);
        v76 = *&v42;
        v77 = v51[2];
        v78 = v51[3];
        v55 = *a1;
        if (*(*a1 + 108))
        {
          v56 = 6;
        }

        else
        {
          v56 = 4;
        }

        v79 = v47;
        v80 = v44;
        if ((*(v55 + 144) + 4) > *(v55 + 152) || (v57 = *(v55 + 128)) != 0 && *(v55 + 120) + v56 > v57)
        {
          *(v55 + 1384) |= 0x20u;
          CA::OGL::Context::array_flush(v55);
          *(v55 + 144) = 0;
          *(v55 + 112) = v55 + 1386;
          *(v55 + 120) = xmmword_183E20E50;
          v55 = *a1;
          v26 = *(*a1[2] + 16);
        }

        CA::OGL::Context::array_rect(v55, v26 * v23, v26 * v22, v26 * v81, v26 * v37);
        v58 = *a1;
        if (a2)
        {
          v59 = v54 / v75;
          v60 = v53 / v76;
          v61 = (v77 + v54) / v75;
          v62 = (v78 + v53) / v76;
          v63 = v61 - v59;
          v64 = v59 + (v63 * v49);
          v65 = v62 - v60;
          v66 = v60 + (v65 * v48);
          v67 = v60 + (v65 * v79);
          if ((v46 & 4) != 0)
          {
            v68 = v67;
          }

          else
          {
            v68 = v66;
          }

          v69 = *(v58 + 136) + 48 * *(v58 + 144);
          *(v69 - 176) = v64;
          *(v69 - 172) = v68;
          v70 = v59 + (v63 * v80);
          if ((v46 & 4) != 0)
          {
            v71 = v64;
          }

          else
          {
            v71 = v70;
          }

          if ((v46 & 4) != 0)
          {
            v72 = v66;
          }

          else
          {
            v72 = v67;
          }

          *(v69 - 128) = v71;
          *(v69 - 124) = v66;
          *(v69 - 80) = v70;
          *(v69 - 76) = v72;
          if ((v46 & 4) == 0)
          {
            v70 = v64;
          }

          *(v69 - 32) = v70;
          *(v69 - 28) = v67;
        }

        else
        {
          v73 = *(v58 + 136) + 48 * *(v58 + 144);
          *(v73 - 160) = 0x3C00000000000000;
          *(v73 - 112) = 0x3C00000000000000;
          *(v73 - 64) = 0x3C00000000000000;
          *(v73 - 16) = 0x3C00000000000000;
        }

        v10 = 1;
        v15 = 1.0;
      }
    }
  }

  CA::OGL::Context::array_flush(*a1);
  return v10 & 1;
}

__n128 CA::OGL::anonymous namespace::measure_detached(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    *a7 = *a5;
    result = *(a5 + 16);
    *(a7 + 16) = result;
  }

  return result;
}

void CA::OGL::capture_in_place_backdrop(CA::OGL *this, CA::OGL::Renderer *a2)
{
  v2 = a2;
  v167 = *MEMORY[0x1E69E9840];
  v4 = *this;
  v137 = 0;
  v5 = *(v4 + 672);
  if (v5)
  {
    v6 = *(v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  memset(v142, 0, sizeof(v142));
  memset(v143, 0, sizeof(v143));
  v8 = v137;
  if (v137 == 1 && v2)
  {
    v9 = *this;
    *(*(*this + 16) + 8) = 0x3C003C003C003C00;
    *(*(v9 + 16) + 497) &= ~1u;
    *(*(v9 + 16) + 16) = 1;
    v138 = 0uLL;
    CA::Shape::get_bounds(*(*(v9 + 656) + 8), &v138);
    v10 = *(v9 + 672);
    if (v10)
    {
      v11 = v10 + 6;
    }

    else
    {
      v11 = (v9 + 608);
    }

    v12 = vclez_s32(*(&v138 + 8));
    if ((vpmax_u32(v12, v12).u32[0] & 0x80000000) == 0)
    {
      v13 = v11[1];
      v14 = vclez_s32(v13);
      if ((vpmax_u32(v14, v14).u32[0] & 0x80000000) != 0 || (*&v15 = vmax_s32(*&v138, *v11), v16 = vsub_s32(vmin_s32(vadd_s32(*&v138, *(&v138 + 8)), vadd_s32(*v11, v13)), *&v15), v17 = vclez_s32(v16), (vpmax_u32(v17, v17).u32[0] & 0x80000000) != 0))
      {
        *(&v138 + 1) = 0;
      }

      else
      {
        *(&v15 + 1) = v16;
        v138 = v15;
      }
    }

    v48 = 0uLL;
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v141 = 0;
    __asm { FMOV            V1.2D, #1.0 }

    v139 = 0u;
    v140 = _Q1;
    if (v6)
    {
      v133 = _Q1;
      v54 = 0;
      v55 = 0;
      memset(&v164, 0, 64);
      if (SDWORD2(v138) <= SHIDWORD(v138))
      {
        v56 = HIDWORD(v138);
      }

      else
      {
        v56 = DWORD2(v138);
      }

      v48.i32[0] = 1073741822;
      _Q1.i32[0] = v56;
      v124 = v138;
      v57.i64[0] = v138;
      v57.i64[1] = SDWORD1(v138);
      v127 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      v58 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(_Q1, v48), 0), v127, vcvtq_f64_s64(v57));
      v136 = v58;
      *v58.i64 = SDWORD2(v138);
      v130 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      if (v56 <= 1073741822)
      {
        v59 = SDWORD2(v138);
      }

      else
      {
        v59 = 1.79769313e308;
      }

      if (v56 <= 1073741822)
      {
        v60 = SHIDWORD(v138);
      }

      else
      {
        v60 = 1.79769313e308;
      }

      v61 = 0.0;
      v58.i32[0] = 1073741822;
      v125 = v58;
      v62 = 0.0;
      do
      {
        v165 = v136;
        *v166.i64 = v59;
        *&v166.i64[1] = v60;
        CA::Rect::apply_transform(v165.f64, &v139);
        v64.i64[0] = *(v6 + 56);
        v65 = v64.i32[1];
        if (v64.i32[0] > v64.i32[1])
        {
          v65 = v64.i32[0];
        }

        if ((*(v6 + 144) & 0x80000000) != 0)
        {
          v69.i64[0] = v64.i32[0];
          v69.i64[1] = v64.i32[1];
          v70 = vcvtq_f64_s64(v69);
          v71 = vdup_n_s32(v65 > 1073741822);
          v69.i64[0] = v71.u32[0];
          v69.i64[1] = v71.u32[1];
          v72 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v69, 0x3FuLL)), v130, v70);
          v64 = vclezq_f64(v72);
          v63 = vorrq_s8(vdupq_laneq_s64(v64, 1), v64);
          if ((v63.i64[0] & 0x8000000000000000) == 0)
          {
            v63 = v166;
            v73 = vclezq_f64(v166);
            v74 = vdupq_laneq_s64(v73, 1);
            if ((vorrq_s8(v74, v73).u64[0] & 0x8000000000000000) == 0)
            {
              v75 = *(v6 + 48);
              v76.i64[0] = v75;
              v76.i64[1] = SHIDWORD(v75);
              v74.i32[0] = v65;
              v77 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v74, v125), 0), v127, vcvtq_f64_s64(v76));
              v78 = v165;
              v79 = vaddq_f64(v77, v72);
              v80 = vaddq_f64(v165, v166);
              v81 = vclezq_f64(vsubq_f64(vminnmq_f64(v79, v80), vmaxnmq_f64(v77, v165)));
              if ((vorrq_s8(vdupq_laneq_s64(v81, 1), v81).u64[0] & 0x8000000000000000) == 0)
              {
                v164.i64[v55] = v6;
                v82 = (&v144 + 40 * v55);
                v83 = v140;
                *v82 = v139;
                v82[1] = v83;
                LOBYTE(v82[2].f64[0]) = v141;
                ++v55;
                if ((*(v6 + 148) & 0x10) != 0)
                {
                  v84 = vorrq_s8(vcltzq_f64(v63), v64);
                  v63 = vdupq_laneq_s64(v84, 1);
                  v64 = vorrq_s8(v63, v84);
                  if ((v64.i64[0] & 0x8000000000000000) == 0)
                  {
                    v85 = vandq_s8(vcgeq_f64(v79, v80), vcgeq_f64(v78, v77));
                    v63 = vdupq_laneq_s64(v85, 1);
                    v64 = vandq_s8(v63, v85);
                    if (v64.i64[0] < 0)
                    {
                      break;
                    }
                  }
                }
              }
            }
          }
        }

        v66 = *(v6 + 148);
        if ((v66 & 4) != 0)
        {
          v67 = *(v6 + 136);
          if ((v67 & 8) != 0)
          {
            v68 = *(v6 + 120);
            v62 = v62 * v68;
            v61 = v61 * v68;
          }

          *v64.i64 = -v61;
          if ((*(v6 + 136) & 4) != 0)
          {
            *v63.i64 = v62;
          }

          else
          {
            *v63.i64 = v61;
          }

          if ((*(v6 + 136) & 4) == 0)
          {
            *v64.i64 = v62;
          }

          if ((*(v6 + 136) & 2) != 0)
          {
            *v64.i64 = -*v64.i64;
          }

          if (*(v6 + 136))
          {
            *v63.i64 = -*v63.i64;
          }

          v62 = *v64.i64 + *(v6 + 104);
          v61 = *v63.i64 + *(v6 + 112);
          v139.f64[0] = v62;
          v139.f64[1] = v61;
          if ((v67 & 8) != 0)
          {
            v64 = *(v6 + 120);
            v63 = vmulq_f64(v133, v64);
            v140 = v63;
            v133 = v63;
            v54 = v54 & 0xFFFFFFF7 | (8 * (*v63.i64 != 1.0));
          }

          v54 = v54 & 0xFFFFFFF8 | concat_table[v54 & 7 | (8 * (v67 & 7))] & 7;
          LOBYTE(v141) = v54;
        }

        if ((v66 & 8) != 0)
        {
          break;
        }

        v6 = *(v6 + 8);
        if (!v6)
        {
          break;
        }
      }

      while (v55 < 8);
      v86 = (v55 - 1);
      if (v55 >= 1)
      {
        v64.i32[0] = 1073741822;
        v63.i32[0] = v56;
        v87.i64[0] = v124;
        v87.i64[1] = SHIDWORD(v124);
        v128 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
        v134 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v63, v64), 0), v128, vcvtq_f64_s64(v87));
        v88 = v9 + 1386;
        v89 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        v131 = v89;
        v89.i32[0] = 1073741822;
        v126 = v89;
        v90 = (v55 - 1);
        do
        {
          if (v90 < v86)
          {
            *(*(v9 + 16) + 497) |= 1u;
            *(*(v9 + 16) + 496) = 3;
          }

          v91 = v164.i64[v90];
          CA::OGL::Context::bind_surface(v9, v91, 0, 0, 0, 0.0);
          *(v9 + 144) = 0;
          *(v9 + 112) = v88;
          *(v9 + 120) = xmmword_183E20E50;
          if (*(v9 + 152) <= 3uLL)
          {
            *(v9 + 1384) |= 0x20u;
            CA::OGL::Context::array_flush(v9);
            *(v9 + 144) = 0;
            *(v9 + 112) = v88;
            *(v9 + 120) = xmmword_183E20E50;
          }

          v139 = v134;
          v92 = &v144 + 5 * v90;
          v140.f64[0] = v59;
          v140.f64[1] = v60;
          CA::Rect::apply_transform(v139.f64, v92);
          v93 = v91[7];
          v94 = v93.i32[0];
          if (v93.i32[0] <= v93.i32[1])
          {
            v94 = v93.i32[1];
          }

          v95 = vclezq_f64(v140);
          if ((vorrq_s8(vdupq_laneq_s64(v95, 1), v95).u64[0] & 0x8000000000000000) == 0)
          {
            v96.i64[0] = v93.i32[0];
            v96.i64[1] = v93.i32[1];
            v97 = vcvtq_f64_s64(v96);
            v98 = vdup_n_s32(v94 > 1073741822);
            v96.i64[0] = v98.u32[0];
            v96.i64[1] = v98.u32[1];
            v99 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v96, 0x3FuLL)), v131, v97);
            v100 = vclezq_f64(v99);
            v101 = vdupq_laneq_s64(v100, 1);
            if ((vorrq_s8(v101, v100).u64[0] & 0x8000000000000000) == 0)
            {
              v102 = v91[6];
              v103.i64[0] = v102.i32[0];
              v103.i64[1] = v102.i32[1];
              v101.i32[0] = v94;
              v104 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v101, v126), 0), v128, vcvtq_f64_s64(v103));
              v105 = vmaxnmq_f64(v139, v104);
              v106 = vsubq_f64(vminnmq_f64(vaddq_f64(v139, v140), vaddq_f64(v104, v99)), v105);
              v107 = vclezq_f64(v106);
              if ((vorrq_s8(vdupq_laneq_s64(v107, 1), v107).u64[0] & 0x8000000000000000) == 0)
              {
                v139 = v105;
                v140 = v106;
                CA::Rect::unapply_transform(v139.f64, &v144 + 40 * v90);
                v108 = v139.f64[0];
                v109 = v139.f64[1];
                v110 = v140.f64[0] + v139.f64[0];
                v111 = v140.f64[1] + v139.f64[1];
                CA::OGL::Context::array_rect(v9, v108, v109, v110, v111);
                v112 = 0;
                v113 = *(v92 + 32);
                v114 = vcvt_f32_f64(v139);
                *&v165.f64[0] = v114;
                v115 = vadd_f32(vcvt_f32_f64(v140), v114);
                *&v165.f64[1] = __PAIR64__(v114.u32[1], v115.u32[0]);
                *v166.i8 = v115;
                v114.i32[1] = v115.i32[1];
                v166.u64[1] = v114;
                v116 = *v92;
                v117 = vcvt_f32_s32(v91[6]);
                v118 = vceqz_s32(vand_s8(vdup_n_s32(v113), 0x100000002));
                v119 = vcltz_s32(vshl_n_s32(vdup_n_s32((v113 & 4) == 0), 0x1FuLL));
                do
                {
                  v120 = *&v165.f64[v112];
                  if ((v113 & 8) != 0)
                  {
                    v120 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v120), v92[2]));
                  }

                  v121 = vdup_lane_s32(v120, 0);
                  *v121.i32 = -v120.f32[1];
                  v122 = vbsl_s8(v119, v120, v121);
                  *&v165.f64[v112++] = vsub_f32(vcvt_f32_f64(vaddq_f64(v116, vcvtq_f64_f32(vbsl_s8(v118, v122, vneg_f32(v122))))), v117);
                }

                while (v112 != 4);
                v123 = *(v9 + 136) + 48 * *(v9 + 144);
                *(v123 - 176) = v165.f64[0];
                *(v123 - 128) = v165.f64[1];
                *(v123 - 80) = v166.i64[0];
                *(v123 - 32) = v166.i64[1];
                CA::OGL::Context::array_flush(v9);
                CA::OGL::Context::unbind_surface(v9, v91, 0);
              }
            }
          }

          v46 = v90-- <= 0;
        }

        while (!v46);
      }
    }

    *(*(v9 + 16) + 497) |= 1u;
  }

  else
  {
    *(*(v4 + 16) + 8) = 0x3C003C003C003C00;
    *(*(v4 + 16) + 497) &= ~1u;
    *(*(v4 + 16) + 16) = 1;
    v164 = 0uLL;
    CA::Shape::get_bounds(*(*(v4 + 656) + 8), &v164);
    v18 = *(v4 + 672);
    if (v18)
    {
      v19 = v18 + 6;
    }

    else
    {
      v19 = (v4 + 608);
    }

    v20 = vclez_s32(v164.u64[1]);
    if ((vpmax_u32(v20, v20).u32[0] & 0x80000000) == 0)
    {
      v21 = v19[1];
      v22 = vclez_s32(v21);
      if ((vpmax_u32(v22, v22).u32[0] & 0x80000000) != 0 || (*v23.i8 = vmax_s32(*v164.i8, *v19), v24 = vsub_s32(vmin_s32(vadd_s32(*v164.i8, v164.u64[1]), vadd_s32(*v19, v21)), *v23.i8), v25 = vclez_s32(v24), (vpmax_u32(v25, v25).u32[0] & 0x80000000) != 0))
      {
        v164.i64[1] = 0;
      }

      else
      {
        v23.u64[1] = v24;
        v164 = v23;
      }
    }

    LOBYTE(v139.f64[0]) = 0;
    v26 = *(v4 + 600);
    if (v26 && (v8 & 1) == 0 && (*(*(this + 1) + 1376) & 1) == 0)
    {
      v146 = 0u;
      v147 = 0u;
      v145 = 0u;
      v27 = *(*(v4 + 656) + 8);
      *&v144 = v4;
      *(&v144 + 1) = v27;
      LODWORD(v145) = 1065353216;
      BYTE8(v147) = 1;
      *&v148 = &v139;
    }

    v28 = (v7 - 1);
    if (v7 >= 1)
    {
      v29 = v4 + 1386;
      v30 = vextq_s8(v164, v164, 8uLL).u64[0];
      v31 = vclez_s32(v30);
      v32 = vpmax_u32(v31, v31).u32[0];
      v129 = *v164.i8;
      v33 = vadd_s32(*v164.i8, v30);
      v34 = (&v142[v28] | 8);
      v35 = v28;
      do
      {
        if ((LOBYTE(v139.f64[0]) & 1) != 0 || v35 < v28)
        {
          *(*(v4 + 16) + 497) |= 1u;
          *(*(v4 + 16) + 496) = 3;
        }

        if ((v32 & 0x80000000) == 0)
        {
          v36 = vclez_s32(*v34);
          if ((vpmax_u32(v36, v36).u32[0] & 0x80000000) == 0)
          {
            v37 = v34[-1];
            v38 = vmin_s32(v33, vadd_s32(v37, *v34));
            *&v135.f64[0] = vmax_s32(v129, v37);
            v39 = vsub_s32(v38, *&v135.f64[0]);
            v40 = vclez_s32(v39);
            if ((vpmax_u32(v40, v40).u32[0] & 0x80000000) == 0)
            {
              v132 = v38;
              v41 = v143[v35];
              CA::OGL::Context::bind_surface(v4, v41, 0, 0, 0, 0.0);
              *(v4 + 144) = 0;
              *(v4 + 112) = v29;
              *(v4 + 120) = xmmword_183E20E50;
              if (*(v4 + 152) <= 3uLL)
              {
                *(v4 + 1384) |= 0x20u;
                CA::OGL::Context::array_flush(v4);
                *(v4 + 144) = 0;
                *(v4 + 112) = v29;
                *(v4 + 120) = xmmword_183E20E50;
              }

              CA::OGL::Context::array_rect(v4, SLODWORD(v135.f64[0]), SHIDWORD(v135.f64[0]), v132.i32[0], v132.i32[1]);
              v42 = *(v4 + 136) + 48 * *(v4 + 144);
              v43 = vsub_s32(*&v135.f64[0], v37);
              v44 = vcvt_f32_s32(v43);
              v45 = vcvt_f32_s32(vadd_s32(v43, v39));
              *(v42 - 176) = v44;
              *(v42 - 128) = __PAIR64__(v44.u32[1], v45.u32[0]);
              *(v42 - 80) = v45;
              v44.i32[1] = v45.i32[1];
              *(v42 - 32) = v44;
              CA::OGL::Context::array_flush(v4);
              CA::OGL::Context::unbind_surface(v4, v41, 0);
            }
          }
        }

        v34 -= 2;
        v46 = v35-- <= 0;
      }

      while (!v46);
    }

    *(*(v4 + 16) + 497) |= 1u;
    if (v8)
    {
      v47 = 0;
    }

    else
    {
      v47 = ~(8 * *(v4 + 1384)) & 0x10;
    }

    *(*(v4 + 672) + 148) = *(*(v4 + 672) + 148) & 0xFFEF | v47;
  }
}

os_log_t ___Z13x_log_get_oglv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "OGL");
  x_log_get_ogl(void)::log = result;
  return result;
}

double CA::Render::Vector::distance_to(CA::Render::Vector *this, const CA::Render::Object *a2)
{
  LODWORD(v2) = *(this + 4);
  v3 = *(a2 + 4);
  if (v2 >= v3)
  {
    v2 = v3;
  }

  else
  {
    v2 = v2;
  }

  if (v2)
  {
    v4 = (a2 + 24);
    v5 = (this + 24);
    v6 = 0.0;
    do
    {
      v7 = *v4++;
      v8 = v7;
      v9 = *v5++;
      v6 = v6 + (v8 - v9) * (v8 - v9);
      --v2;
    }

    while (v2);
  }

  else
  {
    v6 = 0.0;
  }

  return sqrt(v6);
}

void CA::Render::Vector::mix(CA::Render::Vector *this@<X0>, CA::Render::Object *a2@<X1>, CA::Render::Object *a3@<X2>, CA::Render::Object *a4@<X3>, float64x2_t *a5@<X4>, double **a6@<X8>)
{
  v12 = *(this + 4);
  v13 = *(a3 + 4);
  if (v12 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (a2)
  {
    v15 = *(a2 + 4);
    if (v14 >= v15)
    {
      v14 = v15;
    }

    else
    {
      v14 = v14;
    }
  }

  if (a4)
  {
    v16 = *(a4 + 4);
    if (v14 >= v16)
    {
      v14 = v16;
    }

    else
    {
      v14 = v14;
    }
  }

  v17 = CA::Render::Vector::new_vector(v14, 0, a3);
  v18 = v17;
  if (v17)
  {
    if (a2)
    {
      v19 = (a2 + 24);
    }

    else
    {
      v19 = 0;
    }

    if (a4)
    {
      v20 = (a4 + 24);
    }

    else
    {
      v20 = 0;
    }

    CA::Render::ValueInterpolator::mix_n<double>(a5, v14, v17 + 3, v19, this + 3, a3 + 3, v20);
  }

  *a6 = v18;
}

_DWORD *CA::Render::Vector::mix@<X0>(CA::Render::Vector *this@<X0>, CA::Render::Object *a2@<X1>, const CA::Render::ValueInterpolator *a3@<X2>, void *a4@<X8>)
{
  v8 = *(this + 4);
  v9 = *(a2 + 4);
  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  result = CA::Render::Vector::new_vector(v10, 0, a3);
  if (result)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = (a2 + 24);
    v14 = (this + 24);
    v15 = (result + 6);
    do
    {
      v16 = *v14++;
      v17 = v16;
      v18 = *v13++;
      *v15++ = v17 + *a3 * (v18 - v17);
      --v10;
    }

    while (v10);
  }

  *a4 = result;
  return result;
}

char *CA::Render::Vector::show(char *result, X::Stream *this, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    v5 = result;
    X::Stream::printf(this, "(vector");
    if (*(v5 + 16))
    {
      v6 = 0;
      do
      {
        X::Stream::printf(this, " %.10g", *(v5 + 24 + 8 * v6++));
      }

      while (v6 < *(v5 + 16));
    }

    return X::Stream::printf(this, ")");
  }

  return result;
}

char *CA::Render::SecureIndicatorLayer::show(uint64_t a1, X::Stream *this, int a3, char a4)
{
  if (a4)
  {
    v9 = "secure-indicator-layer";
  }

  else
  {
    X::Stream::printf(this, "(secure-indicator-layer");
    v7 = 2 * a3;
    v8 = 2 * a3 + 2;
    X::Stream::printf(this, "\n%*s", v7 + 2, "");
    X::Stream::printf(this, "(privacy-indicator %u)", *(a1 + 16));
    if (*(a1 + 16) >= 3u)
    {
      X::Stream::printf(this, "\n%*s", v8, "");
      X::Stream::printf(this, "(frame-number %hu)", *(a1 + 24));
    }

    v9 = ")";
  }

  return X::Stream::printf(this, v9);
}

char *CA::Render::Animation::show(char *result, X::Stream *this, int a3, char a4)
{
  v4 = *(result + 3);
  if ((v4 & 0x20000) != 0)
  {
    return result;
  }

  v7 = result;
  v8 = *(result + 3);
  if (*(result + 3) > 0x3Fu || (v9 = CA::Render::type_names[v8], !*v9))
  {
    v9 = "<unknown>";
  }

  if (a4)
  {
    return X::Stream::printf(this, "%s;", v9);
  }

  X::Stream::printf(this, "(%s", v9);
  if (*(v7 + 40))
  {
    X::Stream::printf(this, "\n%*s", 2 * (a3 + 1), "");
    CA::Render::show_object(this, *(v7 + 40));
  }

  v10 = 2 * a3;
  if (*(v7 + 24) != 0.0)
  {
    X::Stream::printf(this, "\n%*s", v10 + 2, "");
    X::Stream::printf(this, "(frameInterval %f)", 1.0 / *(v7 + 32));
  }

  if ((*(v7 + 13) & 0x80) != 0)
  {
    X::Stream::printf(this, "\n%*s", v10 + 2, "");
    X::Stream::printf(this, "(discretizesTime true)");
  }

  if (*(v7 + 48))
  {
    X::Stream::printf(this, "\n%*s", 2 * (a3 + 1), "");
    X::Stream::printf(this, "(timingFunction ");
    CA::Render::show_object(this, *(v7 + 48));
    X::Stream::printf(this, ")");
  }

  v11 = *(v7 + 12);
  if ((v11 & 0x100) != 0)
  {
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    X::Stream::printf(this, "\n%*s", v10 + 2, "");
    X::Stream::printf(this, "(enabled false)");
    v11 = *(v7 + 12);
    if ((v11 & 0x200) == 0)
    {
LABEL_16:
      if ((v11 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_34;
    }
  }

  X::Stream::printf(this, "\n%*s", v10 + 2, "");
  X::Stream::printf(this, "(additive true)");
  v11 = *(v7 + 12);
  if ((v11 & 0x400) == 0)
  {
LABEL_17:
    if ((v11 & 0x800) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_34:
  X::Stream::printf(this, "\n%*s", v10 + 2, "");
  X::Stream::printf(this, "(cumulative true)");
  if ((*(v7 + 12) & 0x800) == 0)
  {
LABEL_18:
    X::Stream::printf(this, "\n%*s", v10 + 2, "");
    X::Stream::printf(this, "(removedOnCompletion false)");
  }

LABEL_19:
  if (CA::Render::Animation::affects_velocity(v7))
  {
    X::Stream::printf(this, "\n%*s", v10 + 2, "");
    X::Stream::printf(this, "(affectsVelocity true)");
  }

  if (v4 <= 0x1Au)
  {
    if (v4 != 5)
    {
      if (v4 != 21)
      {
        goto LABEL_75;
      }

      v16 = 2 * (a3 + 1);
LABEL_44:
      X::Stream::printf(this, "\n%*s", v16, "");
      v15 = *(v7 + 96);
LABEL_45:
      CA::Render::show_object(this, v15);
      goto LABEL_75;
    }

LABEL_39:
    v17 = a3 + 1;
    v16 = 2 * v17;
    X::Stream::printf(this, "\n%*s", 2 * v17, "");
    X::Stream::printf(this, "(keyPath ");
    v19 = CA::Render::key_path_copy_string(*(v7 + 96), v18);
    CA::Render::show_cfstring(this, v19);
    CFRelease(v19);
    X::Stream::printf(this, ")");
    if (*(v7 + 104))
    {
      X::Stream::printf(this, "\n%*s", 2 * v17, "");
      X::Stream::printf(this, "(function ");
      CA::Render::show_object(this, *(v7 + 104));
      X::Stream::printf(this, ")");
    }

    if (v4 > 0x1Au)
    {
      if (v4 == 27)
      {
        if (*(v7 + 144) <= 4u)
        {
          X::Stream::printf(this, "\n%*s", 2 * v17, "");
          X::Stream::printf(this, "(calculationMode %s)", CA::Render::Animation::show(x_stream_struct *,unsigned int,unsigned int)const::calc_modes[*(v7 + 144)]);
        }

        if (*(v7 + 112))
        {
          X::Stream::printf(this, "\n%*s", 2 * v17, "");
          X::Stream::printf(this, "(values ");
          CA::Render::show_object(this, *(v7 + 112));
          X::Stream::printf(this, ")");
        }

        if (*(v7 + 120))
        {
          X::Stream::printf(this, "\n%*s", 2 * v17, "");
          X::Stream::printf(this, "(keyTimes ");
          CA::Render::show_object(this, *(v7 + 120));
          X::Stream::printf(this, ")");
        }

        if (*(v7 + 128))
        {
          X::Stream::printf(this, "\n%*s", 2 * v17, "");
          X::Stream::printf(this, "(timingFunctions ");
          CA::Render::show_object(this, *(v7 + 128));
          X::Stream::printf(this, ")");
        }

        if (*(v7 + 136))
        {
          X::Stream::printf(this, "\n%*s", 2 * v17, "");
          X::Stream::printf(this, "(path ");
          CA::Render::show_object(this, *(v7 + 136));
          X::Stream::printf(this, ")");
        }

        goto LABEL_75;
      }

      if (v4 != 53)
      {
        goto LABEL_75;
      }
    }

    else if (v4 != 5)
    {
      if (v4 != 21)
      {
        goto LABEL_75;
      }

      goto LABEL_44;
    }

    if (*(v7 + 112))
    {
      X::Stream::printf(this, "\n%*s", 2 * v17, "");
      X::Stream::printf(this, "(from ");
      CA::Render::show_object(this, *(v7 + 112));
      X::Stream::printf(this, ")");
    }

    if (*(v7 + 120))
    {
      X::Stream::printf(this, "\n%*s", 2 * v17, "");
      X::Stream::printf(this, "(to ");
      CA::Render::show_object(this, *(v7 + 120));
      X::Stream::printf(this, ")");
    }

    if (*(v7 + 128))
    {
      X::Stream::printf(this, "\n%*s", 2 * v17, "");
      X::Stream::printf(this, "(by ");
      CA::Render::show_object(this, *(v7 + 128));
      X::Stream::printf(this, ")");
    }

    if (v8 == 53)
    {
      if (*(v7 + 152) != 1.0)
      {
        X::Stream::printf(this, "\n%*s", 2 * v17, "");
        X::Stream::printf(this, "(mass %g)", *(v7 + 152));
      }

      if (*(v7 + 160) != 100.0)
      {
        X::Stream::printf(this, "\n%*s", 2 * v17, "");
        X::Stream::printf(this, "(stiffness %g)", *(v7 + 160));
      }

      if (*(v7 + 168) != 10.0)
      {
        X::Stream::printf(this, "\n%*s", 2 * v17, "");
        X::Stream::printf(this, "(damping %g)", *(v7 + 168));
      }

      if (*(v7 + 176) != 0.0)
      {
        X::Stream::printf(this, "\n%*s", 2 * v17, "");
        X::Stream::printf(this, "(velocity %g)", *(v7 + 176));
      }

      if (*(v7 + 184) == 1)
      {
        X::Stream::printf(this, "\n%*s", 2 * v17, "");
        X::Stream::printf(this, "(allowsOverdamping true)");
      }
    }

    goto LABEL_75;
  }

  if (v4 == 27 || v4 == 53)
  {
    goto LABEL_39;
  }

  if (v4 == 61)
  {
    v12 = a3 + 1;
    X::Stream::printf(this, "\n%*s", 2 * v12, "");
    v13 = [(__CFString *)CAAtomGetString(*(v7 + 96)) cStringUsingEncoding:4];
    X::Stream::printf(this, "(type %s)", v13);
    if (*(v7 + 100))
    {
      X::Stream::printf(this, "\n%*s", 2 * v12, "");
      v14 = [(__CFString *)CAAtomGetString(*(v7 + 100)) cStringUsingEncoding:4];
      X::Stream::printf(this, "(subtype %s)", v14);
    }

    if (*(v7 + 112))
    {
      X::Stream::printf(this, "(filter ");
      X::Stream::printf(this, "\n%*s", 2 * v12, "");
      CA::Render::show_object(this, *(v7 + 112));
      X::Stream::printf(this, ")");
    }

    if (*(v7 + 120))
    {
      X::Stream::printf(this, "(options ");
      X::Stream::printf(this, "\n%*s", 2 * v12, "");
      CA::Render::show_object(this, *(v7 + 120));
      X::Stream::printf(this, ")");
    }

    X::Stream::printf(this, "\n%*s", 2 * v12, "");
    v15 = *(v7 + 128);
    goto LABEL_45;
  }

LABEL_75:

  return X::Stream::printf(this, ")");
}

uint64_t CA::Render::anonymous namespace::add_transforms(float64x2_t *this, double *a2, double *a3, const double *a4, int a5)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a4 == 6)
  {
    v21 = *a2;
    v20 = *(a2 + 2);
    v22 = *(a2 + 4);
    v23 = *a3;
    v24 = *(a3 + 2);
    *v37 = *a3;
    *&v37[16] = v24;
    v25 = *(a3 + 4);
    if (a5)
    {
      v26.f64[1] = *&v37[16];
      v26.f64[0] = v24.f64[1];
      v27 = vdupq_lane_s64(*&v37[8], 0);
      v27.f64[0] = v23.f64[0];
      v28 = vmulq_f64(v26, v27);
      v29 = vsubq_f64(v28, vdupq_laneq_s64(v28, 1)).f64[0];
      if (v29 != 0.0)
      {
        v30 = 1.0 / v29;
        v31 = vmulq_n_f64(*&v37[8], v30);
        v32 = vmulq_n_f64(vextq_s8(v24, v23, 8uLL), v30);
        *v37 = v32.f64[0];
        *&v37[8] = vnegq_f64(v31);
        *&v37[24] = v32.f64[1];
        v33 = vmulq_f64(v25, v31);
        v34 = vmlsq_f64(vextq_s8(v33, v33, 8uLL), v32, v25);
        v23 = *v37;
        v24 = *&v37[16];
        v25 = v34;
      }
    }

    *this = vmlaq_laneq_f64(vmulq_n_f64(v23, v21.f64[0]), v24, v21, 1);
    this[1] = vmlaq_laneq_f64(vmulq_n_f64(v23, v20.f64[0]), v24, v20, 1);
    this[2] = vmlaq_laneq_f64(vmlaq_n_f64(v25, v23, v22.f64[0]), v24, v22, 1);
    return 1;
  }

  if (a4 == 16)
  {
    v6 = *(a2 + 10);
    v40 = *(a2 + 8);
    v41 = v6;
    v7 = *(a2 + 14);
    v42 = *(a2 + 12);
    v43 = v7;
    v8 = *(a2 + 1);
    *v37 = *a2;
    *&v37[16] = v8;
    v9 = *(a2 + 6);
    v38 = *(a2 + 4);
    v39 = v9;
    v10 = *a3;
    v11 = *(a3 + 2);
    v12 = *(a3 + 6);
    v36[2] = *(a3 + 4);
    v36[3] = v12;
    v36[0] = v10;
    v36[1] = v11;
    v13 = *(a3 + 8);
    v14 = *(a3 + 10);
    v15 = *(a3 + 14);
    v36[6] = *(a3 + 12);
    v36[7] = v15;
    v36[4] = v13;
    v36[5] = v14;
    if (a5)
    {
      CA::Mat4Impl::mat4_invert(v36, v36, a3);
    }

    CA::Mat4Impl::mat4_concat(v37, v37, v36[0].f64, a4);
    v16 = v41;
    this[4] = v40;
    this[5] = v16;
    v17 = v43;
    this[6] = v42;
    this[7] = v17;
    v18 = *&v37[16];
    *this = *v37;
    this[1] = v18;
    v19 = v39;
    this[2] = v38;
    this[3] = v19;
    return 1;
  }

  return 0;
}

float64_t CA::Render::animation_get_function_param(CA::Render *this, const unsigned int *a2, const unsigned int *a3, uint64_t a4, void *a5)
{
  v9 = *MEMORY[0x1E69E9840];
  result = 0.0;
  if (this == 1)
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    property_value = CA::Render::Layer::get_property_value(*(a4 + 8), a2, a3, 5uLL, v7, 0, 0.0);
    result = v7[0].f64[0];
    if (!property_value)
    {
      return 0.0;
    }
  }

  return result;
}

void CA::Render::BasicAnimation0::~BasicAnimation0(CA::Render::BasicAnimation0 *this, void **a2)
{
  *this = &unk_1EF202BA8;
  v3 = *(this + 16);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 15);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 14);
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 16))(v5);
  }

  CA::Render::PropertyAnimation::~PropertyAnimation(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v6 = malloc_zone;

  malloc_zone_free(v6, this);
}

{
  *this = &unk_1EF202BA8;
  v3 = *(this + 16);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 15);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 14);
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 16))(v5);
  }

  CA::Render::PropertyAnimation::~PropertyAnimation(this, a2);
}

void ___ZNK2CA6Render17KeyframeAnimation9next_timeEdfPKvNS0_26AnimationFrameRateOverrideEjbRdPKNS0_5LayerEPKNS_4Vec2IdEERj_block_invoke(uint64_t a1, const double *a2, double a3)
{
  v3 = (a3 - *(a1 + 32)) / (*(a1 + 40) - *(a1 + 32));
  if (v3 > 1.0)
  {
    v3 = 1.0;
  }

  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  if (*(a1 + 64) == 1)
  {
    CA::Render::TimingFunction::evaluate(*(a1 + 48), a2, v3, 0.001 / *(a1 + 56));
  }
}

double ___ZNK2CA6Render17KeyframeAnimation9next_timeEdfPKvNS0_26AnimationFrameRateOverrideEjbRdPKNS0_5LayerEPKNS_4Vec2IdEERj_block_invoke_2(uint64_t a1, const double *a2, double a3)
{
  if (*(a1 + 64) == 1)
  {
    a3 = CA::Render::TimingFunction::evaluate_inverse(*(a1 + 32), a2, a3, 0.001 / *(a1 + 40));
    if (a3 > 1.0)
    {
      a3 = 1.0;
    }

    if (a3 < 0.0)
    {
      a3 = 0.0;
    }
  }

  result = *(a1 + 56) + (*(a1 + 48) - *(a1 + 56)) * a3;
  if (result > 1.0)
  {
    result = 1.0;
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

char *CA::Render::PresentationModifier::show(char *result, X::Stream *this, int a3, char a4)
{
  if (a4)
  {
    v22 = "presentation modifier;";
  }

  else
  {
    v5 = result;
    v6 = *(result + 2);
    v7 = *(v6 + 16);
    v8 = v7 - 40;
    if (v7 < 0x28)
    {
      return result;
    }

    v9 = *(result + 6);
    if (v9 >= v8 >> 3)
    {
      return result;
    }

    v10 = *(v6 + 24);
    v11 = v10 + v7 - 8 * v9;
    v12 = *(v11 - 8);
    if (!v12)
    {
      return result;
    }

    v13 = (16 * v12) | 8;
    v14 = *(v11 - 4);
    if (3 * v13 + v14 > v8)
    {
      return result;
    }

    v16 = (v10 + v14 + 2 * v13 + 40);
    X::Stream::printf(this, "(modifier");
    v17 = 2 * a3 + 2;
    X::Stream::printf(this, "\n%*s", v17, "");
    X::Stream::printf(this, "(keyPath ");
    v19 = CA::Render::key_path_copy_string(*(v5 + 32), v18);
    CA::Render::show_cfstring(this, v19);
    CFRelease(v19);
    X::Stream::printf(this, ")");
    if (*(v5 + 13))
    {
      X::Stream::printf(this, "\n%*s", v17, "");
      X::Stream::printf(this, "(additive true)");
    }

    if (!*v16)
    {
      X::Stream::printf(this, "\n%*s", v17, "");
      X::Stream::printf(this, "(enabled false)");
    }

    X::Stream::printf(this, "\n%*s", v17, "");
    X::Stream::printf(this, "(values");
    v20 = (v16 + 4);
    do
    {
      v21 = *v20++;
      X::Stream::printf(this, " %.10g", v21);
      --v12;
    }

    while (v12);
    v22 = ")";
    X::Stream::printf(this, ")");
  }

  return X::Stream::printf(this, v22);
}

void CA::Render::KeyframeAnimation::update_paced_key_times(CA::Render::KeyframeAnimation *this)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = *(this + 14);
  if (v2)
  {
    v3 = (*(v2 + 16) - 1);
    if (v3 >= 0x201)
    {
      v5 = malloc_type_malloc(8 * (*(v2 + 16) - 1), 0x100004000313F17uLL);
      if (!v5)
      {
        return;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](this);
      v5 = v25 - ((v4 + 15) & 0xFFFFFFFF0);
      bzero(v5, v4);
      if (!v3)
      {
LABEL_8:
        MEMORY[0x1EEE9AC00](v6);
        v10 = &v25[-2];
        v3 = 0;
        v25[-2] = 0;
        v11 = 1;
LABEL_26:
        v23 = CA::Render::Vector::new_vector(v11, v10, v9);
        v24 = *(this + 15);
        *(this + 15) = v23;
        if (v3 >= 0x200)
        {
          free(v10);
        }

        *(this + 3) |= 0x8000000u;
        if (v24 && atomic_fetch_add(v24 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v24 + 16))(v24);
        }

        goto LABEL_31;
      }
    }

    v12 = (v2 + 32);
    v13 = v3;
    v14 = v5;
    do
    {
      v6 = *(v12 - 1);
      v15 = *v12;
      v7.n128_u64[0] = 0;
      if (v6)
      {
        v16 = v15 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (!v16 && *(v15 + 12) == v6[12])
      {
        v7.n128_f64[0] = (*(*v6 + 72))(v6, v7);
      }

      *v14++ = v7.n128_u64[0];
      ++v12;
      --v13;
    }

    while (v13);
  }

  else
  {
    v8 = *(this + 17);
    if (!v8)
    {
      return;
    }

    v3 = v8[4];
    v6 = CA::Render::Path::keyframe_lengths(v8);
    if (!v6)
    {
      return;
    }

    v5 = v6;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  v17 = 0;
  v18 = 0.0;
  do
  {
    v18 = *&v5[8 * v17++] + v18;
  }

  while (v3 != v17);
  v11 = v3 + 1;
  if (v3 < 0x200)
  {
    MEMORY[0x1EEE9AC00](v6);
    v10 = (v25 - ((v19 + 15) & 0x1FFFFFFFF0));
    bzero(v10, v19);
    goto LABEL_24;
  }

  v20 = malloc_type_malloc(8 * (v3 + 1), 0xC691A053uLL);
  if (v20)
  {
    v10 = v20;
LABEL_24:
    *v10 = 0;
    v21 = 0;
    v22 = 0.0;
    do
    {
      v22 = *&v5[8 * v21] + v22;
      *&v10[++v21] = v22 * (1.0 / v18);
    }

    while (v3 != v21);
    goto LABEL_26;
  }

LABEL_31:
  if (v2)
  {
    if (v3 >= 0x201)
    {
      free(v5);
    }
  }
}

void ___ZN2CA6Render18AnimationEvaluator13velocity_passENS_4Vec2IdEES3_bRNS2_IfEERf_block_invoke()
{
  if (initialize_velocity_thresholds(void)::once != -1)
  {
    dispatch_once(&initialize_velocity_thresholds(void)::once, &__block_literal_global_19_18974);
  }

  if (has_velocity_thresholds == 1)
  {
    CA::Render::AnimationEvaluator::velocity_pass(CA::Vec2<double>,CA::Vec2<double>,BOOL,CA::Vec2<float> &,float &)::thresholds = velocity_thresholds;
  }

  CA::Render::AnimationEvaluator::velocity_pass(CA::Vec2<double>,CA::Vec2<double>,BOOL,CA::Vec2<float> &,float &)::has_thresholds = has_velocity_thresholds;
}

void sub_183DC50F4(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

CGColorRef black(void)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = xmmword_183E31A48;
  v2[1] = unk_183E31A58;
  v0 = CAGetColorSpace(36);
  return CGColorCreate(v0, v2);
}

void CA::CG::AccelDrawable::destroy(CGColorSpaceRef *this)
{
  CA::CG::AccelDrawable::detach(this, 1);
  v2 = this[9];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  CGColorSpaceRelease(this[3]);
  *(this + 70) = 1;
}

void CA::CG::AccelDrawable::detach(CA::CG::AccelDrawable *this, int a2)
{
  v4 = *(this + 9);
  if (v4)
  {
    CA::CG::Queue::flush(v4, 3, 1);
  }

  CA::CG::AccelDrawable::detach_providers(this, 1);
  if (!a2)
  {
    goto LABEL_7;
  }

  v5 = &CA::CG::AccelRenderer::_list_lock;
  os_unfair_lock_lock(&CA::CG::AccelRenderer::_list_lock);
  for (i = CA::CG::AccelRenderer::_list; i; i = *(i + 4320))
  {
    v7 = *(i + 8);
    v8 = (*(*this + 24))(this);
    (*(*v7 + 48))(v7, v8);
  }

  while (1)
  {
    os_unfair_lock_unlock(v5);
LABEL_7:
    os_unfair_lock_lock(&CA::CG::AccelRenderer::_list_lock);
    v9 = CA::CG::AccelRenderer::_list;
    if (!CA::CG::AccelRenderer::_list)
    {
      break;
    }

    while (*(v9 + 4312) != this)
    {
      v9 = *(v9 + 4320);
      if (!v9)
      {
        goto LABEL_10;
      }
    }

    v5 = (v9 + 4272);
    os_unfair_lock_lock((v9 + 4272));
    os_unfair_lock_unlock(&CA::CG::AccelRenderer::_list_lock);
    if (*(v9 + 4312) == this)
    {
      CA::CG::AccelRenderer::detach_surface(v9, a2);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(&CA::CG::AccelRenderer::_list_lock);
}

void CA::CG::AccelDrawable::detach_providers(CA::CG::AccelDrawable *this, char a2)
{
  if (*(this + 10) || *(this + 11))
  {
    os_unfair_lock_lock(this + 3);
    v4 = *(this + 10);
    *(this + 10) = 0;
    os_unfair_lock_unlock(this + 3);
    if (v4)
    {
      CGImageRelease(v4);
    }

    os_unfair_lock_lock(this + 3);
    v5 = *(this + 11);
    *(this + 11) = 0;
    os_unfair_lock_unlock(this + 3);
    if (v5)
    {
      v6 = v5;
      while (1)
      {
        v7 = *v6;
        os_unfair_lock_lock(*v6 + 2);
        v8 = *&v7[4]._os_unfair_lock_opaque;
        os_unfair_lock_unlock(v7 + 2);
        if (!v8)
        {
          break;
        }

        if ((a2 & 1) == 0)
        {
          v9 = *(this + 9);
          if (v9)
          {
            if (v9[4])
            {
              CA::CG::Queue::flush_queue(*(this + 9));
            }

            else
            {
              (*(*v9 + 16))(*(this + 9));
            }

            if (CA::CG::Queue::_disable_async)
            {
              if (CA::CG::Queue::queue(void)::once != -1)
              {
                dispatch_once_f(&CA::CG::Queue::queue(void)::once, 0, CA::CG::Queue::create_queue);
              }

              dispatch_sync_f(CA::CG::Queue::_queue, v7, CA::CG::detach_provider_callback);
            }

            else
            {
              v13 = v9[1];
              if (!v13)
              {
                v13 = dispatch_group_create();
                v9[1] = v13;
              }

              if (CA::CG::Queue::queue(void)::once != -1)
              {
                dispatch_once_f(&CA::CG::Queue::queue(void)::once, 0, CA::CG::Queue::create_queue);
              }

              dispatch_group_async_f(v13, CA::CG::Queue::_queue, v7, CA::CG::detach_provider_callback);
            }

            goto LABEL_21;
          }
        }

        CA::CG::AccelDataProvider::detach(v7);
        add = atomic_fetch_add(&v7[3], 0xFFFFFFFF);
        if (v7 && add == 1)
        {
          goto LABEL_20;
        }

LABEL_21:
        v6 = v6[1];
        if (!v6)
        {
          do
          {
            v14 = v5[1];
            free(v5);
            v5 = v14;
          }

          while (v14);
          return;
        }
      }

      v11 = atomic_fetch_add(&v7[3], 0xFFFFFFFF);
      if (v7)
      {
        v12 = v11 == 1;
      }

      else
      {
        v12 = 0;
      }

      if (!v12)
      {
        goto LABEL_21;
      }

LABEL_20:
      (*(*&v7->_os_unfair_lock_opaque + 16))(v7);
      goto LABEL_21;
    }
  }
}

void CA::CG::detach_provider_callback(os_unfair_lock_s *this, void *a2)
{
  CA::CG::AccelDataProvider::detach(this);
  add = atomic_fetch_add(&this[3], 0xFFFFFFFF);
  if (this && add == 1)
  {
    v4 = *(*&this->_os_unfair_lock_opaque + 16);

    v4(this);
  }
}

uint64_t CA::CG::AccelDrawable::unref(uint64_t this)
{
  if (atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
  {
    v2 = this;
    (**this)(this);
    v3 = *(*v2 + 16);

    return v3(v2);
  }

  return this;
}

uint64_t CA::CG::AccelDrawable::set_volatile(os_unfair_lock_s *this, uint64_t a2)
{
  if (LOBYTE(this[17]._os_unfair_lock_opaque) == a2)
  {
    return 1;
  }

  if (a2)
  {
    CA::CG::AccelDrawable::detach(this, 0);
  }

  os_unfair_lock_lock(this + 3);
  LOBYTE(this[17]._os_unfair_lock_opaque) = a2;
  v5 = (*(*&this->_os_unfair_lock_opaque + 88))(this, a2);
  os_unfair_lock_unlock(this + 3);
  return v5;
}

void set_attr(CA::Transaction *a1, uint64_t a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = a2;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v5)
  {
    v5 = CA::Transaction::create(a1);
  }

  v6 = CAInternAtom(a1, 1);
  v7 = *(v5 + 29);
  *(v5 + 29) = v7 + 1;
  if (!v7)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v8 = *(a3 + 24);
  if (!v8)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v8 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x10uLL, 0x1020040EDED9539uLL);
  }

  *(a3 + 24) = CA::AttrList::set(v8, v6, 2, v9);

  CA::Transaction::unlock(v5);
}

atomic_uint *copy_attr(atomic_uint *result, id *a2, int a3, uint64_t *a4)
{
  if ((a3 - 1) <= 3)
  {
    v5 = result;
    result = [*a2 CA_copyRenderValue];
    if (result)
    {
      v6 = result;
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x20uLL, 0xDEEC3011uLL);
      if (result)
      {
        result[2] = 1;
        result[3] = 29;
        ++dword_1ED4EAAAC;
        *result = &unk_1EF203140;
        result[4] = v5;
        v7 = v6;
        if (!atomic_fetch_add(v6 + 2, 1u))
        {
          v7 = 0;
          atomic_fetch_add(v6 + 2, 0xFFFFFFFF);
        }

        *(result + 3) = v7;
      }

      v9 = *a4;
      v8 = a4[1];
      ++*a4;
      *(v8 + 8 * v9) = result;
      if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
      {
        v10 = *(*v6 + 16);

        return v10(v6);
      }
    }
  }

  return result;
}

uint64_t CA::OGL::Mosaic::purge(CA::OGL::Mosaic *this)
{
  if ((*(this + 36) & 0x80000000) == 0)
  {
    __assert_rtn("purge", "ogl-mosaic.cpp", 158, "_image_unit < 0");
  }

  v2 = this + 48;
  v3 = *(this + 7);
  if (v3 != this + 48)
  {
    do
    {
      v4 = *(v3 + 1);
      v5 = *(v3 + 4);
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v3);
      v3 = v4;
    }

    while (v4 != v2);
    *(this + 6) = this + 48;
    *(this + 7) = v2;
  }

  v6 = this + 96;
  v7 = *(this + 13);
  if (v7 != this + 96)
  {
    do
    {
      v9 = *(v7 + 1);
      v8 = *(v7 + 2);
      if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v8 + 16))(v8);
      }

      v10 = *(v7 + 3);
      if (v10)
      {
        MEMORY[0x1865EA980](v10, 0x1020C8062D53EE8);
      }

      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v7);
      v7 = v9;
    }

    while (v9 != v6);
    *(this + 12) = this + 96;
    *(this + 13) = v6;
    *(this + 22) = 0;
    *(this + 14) = 0;
  }

  result = *(this + 9);
  if (result)
  {
    result = MEMORY[0x1865EA980](result, 0x20C8093837F09);
    *(this + 8) = 0;
    *(this + 9) = 0;
    *(this + 10) = 0;
  }

  return result;
}

void CA::OGL::Mosaic::delete_image(uint64_t a1, _DWORD *ptr)
{
  v3 = ptr[7];
  if (v3)
  {
    v4 = (*(a1 + 72) + 8 * ((*(a1 + 64) - 1) & v3));
    v5 = *v4;
    if (*v4)
    {
      if (v5 == ptr)
      {
LABEL_7:
        *v4 = v5[2];
        --*(a1 + 80);
      }

      else
      {
        while (1)
        {
          v6 = v5;
          v5 = v5[2];
          if (!v5)
          {
            break;
          }

          if (v5 == ptr)
          {
            v4 = (v6 + 2);
            goto LABEL_7;
          }
        }
      }
    }
  }

  v8 = *ptr;
  v7 = *(ptr + 1);
  *(v8 + 8) = v7;
  *v7 = v8;
  *ptr = ptr;
  *(ptr + 1) = ptr;
  v9 = *(ptr + 5);
  if (v9)
  {
    do
    {
      v10 = *v9;
      v11 = v9[1];
      *v9 = 0;
      v12 = v11 + 4;
      v13 = v11[6];
      if (v11[5])
      {
        v12 = v11[5];
      }

      *v12 = v9;
      v11[5] = v9;
      v11[6] = v13 - 1;
      v9 = v10;
    }

    while (v10);
  }

  v14 = *(ptr + 4);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v15 = malloc_zone;

  malloc_zone_free(v15, ptr);
}

uint64_t CA::OGL::Mosaic::bind_buffer(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(result + 112) != a3)
  {
    v6 = result;
    if (*(result + 160))
    {
      (*(*a4 + 48))(a4);
      (*(*a2 + 560))(a2, *&v6[20], v6[18].u32[0]);
      v6[20] = 0;
      v6[19].i32[0] = -1;
    }

    v6[14] = a3;
    v9 = 0uLL;
    v7 = CA::OGL::Context::bind_image(a2, v6[18].u32[0], *(a3 + 16), 4159, v6[18].u8[4], v6[18].u8[5], 0, 0, 0.0, &v9, 0);
    v6[20] = v7;
    if (v7)
    {
      v8 = vsub_f32(*&v9.u32[2], *v9.f32);
      v6[22] = *v9.f32;
      v6[23] = v8;
      result = CA::OGL::state_image_texture_unit(a2[2], v6[18].u32[0]);
    }

    else
    {
      v6[14] = 0;
      result = 0xFFFFFFFFLL;
    }

    v6[19].i32[0] = result;
  }

  return result;
}

void CA::OGL::Mosaic::draw(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, unsigned int a10)
{
  v132 = *MEMORY[0x1E69E9840];
  v128 = a6;
  if (!(a7 | a6) || (*(a1 + 144) & 0x80000000) != 0)
  {
    return;
  }

  v14 = *(a1 + 4);
  v15 = *(a1 + 8);
  v102 = a4;
  v16 = (v128 + v14 - 1) / v14;
  v17 = a4;
  v125 = a7;
  v18 = (a7 + v15 - 1) / v15;
  v129 = a2;
  if (a4)
  {
    v19 = *(a1 + 64);
    if (v19)
    {
      v20 = *(*(a1 + 72) + 8 * ((v19 - 1) & a4));
      if (v20)
      {
        while (1)
        {
          if (*(v20 + 7) == v17 && *(v20 + 6) == a3 && v16 == *(v20 + 24) && v18 == *(v20 + 25))
          {
            if (!a5)
            {
              break;
            }

            v21 = (*(*a5 + 16))(a5, v20[4]);
            v17 = v102;
            a2 = v129;
            if (v21)
            {
              break;
            }
          }

          v20 = v20[2];
          if (!v20)
          {
            goto LABEL_13;
          }
        }

        v100 = *v20;
        v99 = v20[1];
        *(v100 + 8) = v99;
        *v99 = v100;
        *v20 = v20;
        v20[1] = v20;
        ++*(a1 + 120);
        v23 = v125;
        v73 = v128;
        goto LABEL_104;
      }
    }
  }

LABEL_13:
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v22 = malloc_type_zone_malloc(malloc_zone, 0x38uLL, 0x165299FDuLL);
  v20 = v22;
  v23 = v125;
  v24 = v102;
  if (v22)
  {
    v22[2] = 0;
    *(v22 + 6) = a3;
    *(v22 + 7) = v24;
    if (a5)
    {
      v22 = (*(*a5 + 24))(a5);
    }

    else
    {
      v22 = 0;
    }

    v20[4] = v22;
    v20[5] = 0;
    *(v20 + 24) = v16;
    *(v20 + 25) = v18;
    *v20 = v20;
    v20[1] = v20;
  }

  v25 = *(a1 + 20);
  if (v25 > 0x25)
  {
    v108 = 0;
    if (!a8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v108 = dword_183E22690[v25];
    if (!a8)
    {
LABEL_22:
      v26 = 0;
      goto LABEL_25;
    }
  }

  v26 = *a1;
LABEL_25:
  v124 = (*(a1 + 4) + v26) * v108;
  MEMORY[0x1EEE9AC00](v22);
  v112 = &v101[-v27];
  bzero(&v101[-v27], v28);
  v29 = *(v20 + 25);
  a2 = v129;
  if (v29 < 1)
  {
LABEL_91:
    v73 = v128;
    if (v102)
    {
      v74 = *(a1 + 64);
      if (*(a1 + 80) + 1 > (2 * v74) && (2 * v74) <= 0x400)
      {
        operator new[]();
      }

      if (v74)
      {
        v77 = (v74 - 1) & v102;
        v78 = *(a1 + 72);
        v20[2] = *(v78 + 8 * v77);
        *(v78 + 8 * v77) = v20;
        ++*(a1 + 80);
      }
    }

    ++*(a1 + 128);
LABEL_104:
    if (v23 >= 1)
    {
      v79 = 0;
      v80 = v20[5];
      v81 = *(a1 + 8);
      v122 = v20;
      do
      {
        if (v81 >= v23 - v79)
        {
          v82 = v23 - v79;
        }

        else
        {
          v82 = v81;
        }

        if (v73 >= 1)
        {
          v83 = 0;
          v84 = (4 * (v79 == 0)) | (8 * (v82 + v79 == v23));
          v85 = *(a1 + 4);
          do
          {
            if (v85 >= v73 - v83)
            {
              v86 = v73 - v83;
            }

            else
            {
              v86 = v85;
            }

            v87.i32[0] = *(v80 + 8);
            v87.i32[1] = *(v80 + 9);
            *v88.f32 = vcvt_f32_s32(v87);
            v89.i64[0] = *(a1 + 40);
            v89.i64[1] = v89.i64[0];
            v90.i64[0] = v88.i64[0];
            v90.u64[1] = vcvt_f32_s32(vadd_s32(__PAIR64__(v82, v86), v87));
            v88.i64[1] = v88.i64[0];
            v91.i64[0] = 0x3F0000003F000000;
            v91.i64[1] = 0x3F0000003F000000;
            v92 = vaddq_f32(v88, v91);
            v88.i16[0] = v86 == 1;
            v88.i16[1] = v82 == 1;
            v93 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s32(*v88.f32, 0)), 0x1FuLL)), v92, v90);
            v88.i64[0] = *(a1 + 176);
            v90.i64[0] = *(a1 + 184);
            v88.i64[1] = v88.i64[0];
            v90.i64[1] = v90.i64[0];
            v131 = vmlaq_f32(v88, v90, vmulq_f32(v93, v89));
            v94 = v80[1];
            if (v94 != *(a1 + 112))
            {
              CA::OGL::Mosaic::bind_buffer(a1, v129, v80[1], a9);
              a2 = v129;
            }

            *(v94 + 56) = *(a2 + 159);
            v130[0] = v83;
            v130[1] = v79;
            v130[2] = v86;
            v130[3] = v82;
            v73 = v128;
            if (a10 && (v83 ? (v95 = v84) : (v95 = v84 + 1), v96 = v95 | (2 * (v86 + v83 == v128)), a4 = v96 & a10, (v96 & a10) != 0))
            {
              (*(*a9 + 32))(a9, v130, &v131, a4);
            }

            else
            {
              (*(*a9 + 24))(a9, v130, &v131, a4);
            }

            a2 = v129;
            *(v80 + 5) = *(v129 + 159);
            v80 = *v80;
            v85 = *(a1 + 4);
            v83 += v85;
          }

          while (v83 < v73);
          v81 = *(a1 + 8);
          v20 = v122;
          v23 = v125;
        }

        v79 += v81;
      }

      while (v79 < v23);
    }

    v98 = *(a1 + 48);
    v97 = (a1 + 48);
    v20[1] = v97;
    *v97 = v20;
    *v20 = v98;
    *(v98 + 8) = v20;
    *(v20 + 13) = *(a2 + 159);
    return;
  }

  v109 = 0;
  v113 = 0;
  v30 = v20 + 5;
  v31 = (a1 + 96);
  v32 = v124 + v108;
  if (!v26)
  {
    v32 = 0;
  }

  v105 = -v124;
  v104 = &v112[v32 + v105];
  v123 = &v112[v32];
  v121 = &v112[v32 - v108];
  v103 = &v121[v105];
  v110 = v26 >> 1;
  v33 = *(v20 + 24);
  v107 = a1 + 48;
  v122 = v20;
  v106 = v26;
  v111 = a1 + 96;
  while (v33 < 1)
  {
LABEL_90:
    if (++v113 >= v29)
    {
      goto LABEL_91;
    }
  }

  v34 = 0;
LABEL_31:
  for (i = *(a1 + 104); i != v31; i = i[1])
  {
    if (i[4])
    {
LABEL_49:
      v39 = i[4];
      v40 = *v39;
      i[4] = *v39;
      if (!v40)
      {
        i[5] = 0;
      }

      ++i[6];
      if (*(a1 + 104) != i)
      {
        v42 = *i;
        v41 = i[1];
        *(v42 + 8) = v41;
        *v41 = v42;
        i[1] = i;
        v43 = *(a1 + 104);
        *(a1 + 104) = i;
        *i = v31;
        *v43 = i;
        i[1] = v43;
      }

      *v30 = v39;
      v127 = v39;
      *v39 = 0;
      v45 = *(a1 + 4);
      v44 = *(a1 + 8);
      v46 = v44 * v113;
      v126 = v34;
      v47 = v45 * v34;
      if (v45 >= v128 - v47)
      {
        v48 = v128 - v47;
      }

      else
      {
        v48 = v45;
      }

      if (v44 >= (v23 - v46))
      {
        v49 = v23 - v46;
      }

      else
      {
        v49 = v44;
      }

      v131.i32[0] = v47;
      v131.i32[1] = v44 * v113;
      v131.i64[1] = __PAIR64__(v49, v48);
      (*(*a9 + 16))(a9, v25, &v131, v123, v124);
      if (v26)
      {
        v50 = v25;
        if (v47)
        {
          v51 = -1;
        }

        else
        {
          v51 = 0;
        }

        LODWORD(v115) = v51;
        v52 = v48 + v47;
        if (v46)
        {
          v53 = -1;
        }

        else
        {
          v53 = 0;
        }

        v54 = v49 + v46;
        if (v49 + v46 == v23)
        {
          v55 = -1;
        }

        else
        {
          v55 = 0;
        }

        v118 = v55;
        v119 = v48 + v47;
        v56 = v48;
        if (v52 == v128)
        {
          v57 = -1;
        }

        else
        {
          v57 = 0;
        }

        v116 = v57;
        if (v52 != v128)
        {
          v56 = *(a1 + 4);
        }

        v120 = v49;
        v58 = v49;
        if (v54 != v125)
        {
          v58 = *(a1 + 8);
        }

        v114 = v56 * v108;
        v59 = v124;
        v60 = v58 * v124;
        v117 = v58 * v124;
        HIDWORD(v115) = v46 + v53;
        v131.i32[0] = v47;
        v131.i32[1] = v46 + v53;
        v131.i64[1] = v48 | 0x100000000;
        v61 = v50;
        (*(*a9 + 16))(a9, v50, &v131, v104, v124);
        v118 += v54;
        v131.i64[0] = __PAIR64__(v118, v47);
        v131.i64[1] = v48 | 0x100000000;
        v62 = v123;
        (*(*a9 + 16))(a9, v61, &v131, &v123[v60], v59);
        LODWORD(v115) = v47 + v115;
        v131.i64[0] = __PAIR64__(v46, v115);
        v63 = v120;
        v131.i32[2] = 1;
        v131.i32[3] = v120;
        (*(*a9 + 16))(a9, v61, &v131, v121, v59);
        v64 = v119 + v116;
        v131.i32[0] = v119 + v116;
        *(v131.i64 + 4) = v46 | 0x100000000;
        v131.i32[3] = v63;
        v65 = &v62[v114];
        (*(*a9 + 16))(a9, v61, &v131, v65, v59);
        LODWORD(v62) = v115;
        v66 = HIDWORD(v115);
        v131.i64[0] = v115;
        v131.i64[1] = 0x100000001;
        (*(*a9 + 16))(a9, v61, &v131, v103, v59);
        v131.i64[0] = __PAIR64__(v66, v64);
        v131.i64[1] = 0x100000001;
        (*(*a9 + 16))(a9, v61, &v131, &v65[v105], v59);
        v131.i64[0] = __PAIR64__(v118, v62);
        v67 = v117;
        LODWORD(v62) = v118;
        v131.i64[1] = 0x100000001;
        (*(*a9 + 16))(a9, v61, &v131, &v121[v117], v59);
        v131.i64[0] = __PAIR64__(v62, v64);
        v25 = v61;
        v131.i64[1] = 0x100000001;
        (*(*a9 + 16))(a9, v61, &v131, &v65[v67], v59);
        v23 = v125;
        v26 = v106;
      }

      v68 = v129;
      if (i != *(a1 + 112))
      {
        CA::OGL::Mosaic::bind_buffer(a1, v129, i, a9);
        v68 = v129;
      }

      v69 = v127;
      v70 = *(v127 + 5);
      v31 = v111;
      v71 = v126;
      if (v70 && v70 > *(v68 + 160))
      {
        if ((v109 & 1) == 0)
        {
          (*(*a9 + 48))(a9);
          v69 = v127;
        }

        if ((*(*(a1 + 160) + 59) & 4) != 0)
        {
          (*(*a9 + 40))(a9, *(v69 + 5));
          v69 = v127;
        }

        v109 = 1;
      }

      if (*(a1 + 8) + v26 != 1)
      {
        v48 = *(a1 + 4);
      }

      (*(*v129 + 640))(v129, *(a1 + 160), i[2], *(a1 + 152), *(v69 + 8) - v110, *(v69 + 9) - v110, v48 + v26);
      v72 = v127;
      *(v127 + 5) = 0;
      v34 = v71 + 1;
      v20 = v122;
      v30 = v72;
      if (v34 >= *(v122 + 24))
      {
        v33 = *(v122 + 24);
        LOWORD(v29) = *(v122 + 25);
        v30 = v72;
        a2 = v129;
        goto LABEL_90;
      }

      goto LABEL_31;
    }
  }

  if (*(a1 + 88) <= 7u)
  {
    v36 = *(a1 + 56);
    if (v36 == v107 || (v37 = *(v129 + 159)) != 0 && *(v36 + 52) >= v37)
    {
LABEL_45:
      if (*(a1 + 88) <= 7u)
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_type_zone_malloc(malloc_zone, 0x40uLL, 0x165299FDuLL);
        is_mul_ok(*(a1 + 16) * *(a1 + 12), 0x18uLL);
        operator new[]();
      }

      goto LABEL_95;
    }

LABEL_41:
    *(a1 + 136) += *(v36 + 50) * *(v36 + 48);
    v38 = *(v36 + 40);
    if (v38)
    {
      i = *(v38 + 8);
      CA::OGL::Mosaic::delete_image(a1, v36);
      if (i)
      {
        goto LABEL_49;
      }
    }

    else
    {
      CA::OGL::Mosaic::delete_image(a1, v36);
    }

    goto LABEL_45;
  }

  v36 = *(a1 + 56);
  if (v36 != v107)
  {
    goto LABEL_41;
  }

LABEL_95:
  v75 = v122;
  v76 = v122[4];
  if (v76)
  {
    (*(*v76 + 8))(v76);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  malloc_zone_free(malloc_zone, v75);
}

char *CA::Render::Array::show(char *result, X::Stream *this, int a3, uint64_t a4)
{
  v7 = result;
  if (a4)
  {
    if (*(result + 4))
    {
      v10 = 0;
      do
      {
        if (*(v7 + 13))
        {
          result = X::Stream::printf(this, "%p", *(v7 + 24 + 8 * v10));
        }

        else
        {
          result = (*(**(v7 + 24 + 8 * v10) + 40))(*(v7 + 24 + 8 * v10), this, (a3 + 1), a4);
        }

        ++v10;
      }

      while (v10 < *(v7 + 16));
    }
  }

  else
  {
    X::Stream::printf(this, "(array");
    if (*(v7 + 16))
    {
      v8 = 0;
      v9 = (a3 + 1);
      do
      {
        X::Stream::printf(this, "\n%*s", 2 * v9, "");
        if (*(v7 + 13))
        {
          X::Stream::printf(this, "%p", *(v7 + 24 + 8 * v8));
        }

        else
        {
          (*(**(v7 + 24 + 8 * v8) + 40))(*(v7 + 24 + 8 * v8), this, v9, a4);
        }

        ++v8;
      }

      while (v8 < *(v7 + 16));
    }

    return X::Stream::printf(this, ")");
  }

  return result;
}

void CA::CG::IOSurfaceQueue::~IOSurfaceQueue(CA::CG::IOSurfaceQueue *this)
{
  CA::CG::AccelQueue::~AccelQueue(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

uint64_t CA::CG::anonymous namespace::iosurface_max_init(CA::CG::_anonymous_namespace_ *this)
{
  result = MEMORY[0x1865EA1D0](*MEMORY[0x1E696CF58]);
  return result;
}

CA::Render::Texture *CA::OGL::TiledImageGeometry::lanczos_image(CA::OGL::Context **this, CA::Render::Texture *a2, double a3, double a4, double a5, unsigned int *a6, float32x4_t *a7)
{
  v8 = a2;
  if (a5 < 1.0 && *(a2 + 12) == 23)
  {
    v15 = CA::OGL::Context::tile_cache(this[1]);
    LODWORD(v16) = *(v8 + 4);
    LODWORD(v17) = *(v8 + 5);
    v18 = v16 * a5;
    v19 = v17 * a5;
    v28 = a4 - floor(a4);
    v29 = a3 - floor(a3);
    image = CA::Render::TileCache::get_image(v15, v8, v29, v28, v18, v19, *(this[1] + 81));
    if (image)
    {
      v21 = *a6 & 0xFFFFFFC0;
      *a6 = v21;
      v22.f64[0] = v29;
      v23.f64[0] = v18 + v29;
      v24 = image[2];
      v25.i64[0] = v24;
      v25.i64[1] = HIDWORD(v24);
      v26 = vcvtq_f64_u64(v25);
      v22.f64[1] = v28;
      v23.f64[1] = v19 + v28;
      *a7 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v22, v26)), vdivq_f64(v23, v26));
      *a6 = v21 | 0x400;
      return image;
    }
  }

  return v8;
}

uint64_t CA::OGL::TiledImageGeometry::TiledImageGeometry(uint64_t a1, CA::Render::TiledTexture *a2, uint64_t a3, int a4, char a5, char a6, CA::OGL::ContentsGeometry *this, float a8)
{
  v110 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 20) = a5;
  *(a1 + 21) = a6;
  *(a1 + 24) = this;
  *(a1 + 146) = 1;
  v13 = *(a3 + 656);
  if (!this)
  {
    v17 = *(v13 + 24);
    if ((*(v17 + 144) & 0x10) != 0)
    {
      v18 = vaddvq_f64(vmulq_f64(*v17, *v17));
      v19 = vaddvq_f64(vmulq_f64(*(v17 + 32), *(v17 + 32)));
      v20 = *(v17 + 120);
      if (v20 != 1.0)
      {
        v21 = 1.0 / (v20 * v20);
        v18 = v21 * v18;
        v19 = v21 * v19;
      }

      _ZF = v19 == 1.0 && v18 == 1.0;
      v23 = (sqrt(v19) + sqrt(v18)) * 0.5;
      if (_ZF)
      {
        v15 = 1.0;
      }

      else
      {
        v15 = v23;
      }
    }

    else
    {
      v15 = *(v17 + 128);
    }

    goto LABEL_14;
  }

  CA::OGL::ContentsGeometry::scale(this, a2, a3);
  v15 = v14;
  *(a1 + 32) = v14;
  v16 = *(this + 33);
  if (v16 != 1.0)
  {
    v15 = v15 / v16;
LABEL_14:
    *(a1 + 32) = v15;
  }

  v25 = *(a2 + 30);
  v24 = *(a2 + 31);
  if (__PAIR64__(v24, v25) == 1)
  {
    __asm { FMOV            V0.2D, #1.0 }

    *(a1 + 40) = _Q0;
    *(a1 + 72) = 1065353216;
    if (v15 >= 1.0)
    {
      v30 = 0;
    }

    else
    {
      v30 = (*(a1 + 20) == 11) << 8;
    }

    *(a1 + 144) = v30;
    if (v15 <= 0.999)
    {
      *(a1 + 56) = v15;
      *(a1 + 64) = v15;
    }

    else
    {
      *(a1 + 56) = _Q0;
    }
  }

  else
  {
    if (v24)
    {
      if (v25 < 1)
      {
        v33 = 0.0;
      }

      else
      {
        v31 = *(a2 + 4);
        if (v24 >= 1)
        {
          v32 = v31 << v24;
        }

        else
        {
          v32 = v31 >> -v24;
        }

        v33 = v32 / v31;
      }
    }

    else
    {
      v33 = 1.0;
    }

    if (v15 >= v33)
    {
      v34 = 0;
    }

    else
    {
      v34 = (*(a1 + 20) == 2) | ((*(a1 + 20) == 11) << 8);
    }

    *(a1 + 144) = v34;
    v35 = 0.0;
    if (v15 != 1.0)
    {
      v35 = -log2(v15);
    }

    v36 = v35 + a8;
    v37 = *(a2 + 30);
    v38 = *(a2 + 31);
    v39 = -v38;
    v40 = (v37 - v38);
    if (v36 <= v40)
    {
      if (v36 >= v39)
      {
        v39 = v36;
      }
    }

    else if (v40 >= v39)
    {
      v39 = (v37 - v38);
    }

    if (v34)
    {
      v41 = 1.0 - v39 + floor(v39);
      *(a1 + 72) = v41;
      if (v41 > 0.999)
      {
        v34 &= 0x100u;
        *(a1 + 144) = v34;
        *(a1 + 72) = 1065353216;
        v37 = *(a2 + 30);
        v38 = *(a2 + 31);
      }
    }

    else
    {
      *(a1 + 72) = 1065353216;
    }

    v42 = vcvtmd_s64_f64(v39 + v38);
    if (v37 <= v42)
    {
      if (v37 <= 0)
      {
        v43 = 0;
      }

      else
      {
        v43 = v37 - 1;
      }
    }

    else
    {
      v43 = v42 & ~(v42 >> 31);
    }

    *(a1 + 76) = v43;
    *_Q0.i64 = CA::Render::TiledTexture::lod_scale(a2, v43);
    v44 = 1.0 / *_Q0.i64;
    *(a1 + 40) = _Q0.i64[0];
    *(a1 + 48) = 1.0 / *_Q0.i64;
    if (!v43 && v15 > *_Q0.i64 * 0.999)
    {
      *(a1 + 144) = v34 & 0x100;
      v15 = *_Q0.i64;
    }

    *_Q0.i64 = v15 * v44;
    *(a1 + 56) = v15;
    *(a1 + 64) = v15 * v44;
  }

  _Q0.i32[0] = 1073741822;
  v107 = _Q0;
  v105 = vdupq_n_s64(0xC1BFFFFFFF000000);
  v106 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
  v104 = vdupq_n_s64(0x41C0000000000000uLL);
  while (1)
  {
    CA::Shape::get_bounds(*(*(a3 + 656) + 8), (a1 + 80));
    v45 = *(a3 + 672);
    if (v45)
    {
      v46 = v45 + 6;
    }

    else
    {
      v46 = (a3 + 608);
    }

    CA::BoundsImpl::intersect((a1 + 80), *v46, v46[1]);
    v49 = *(a1 + 88);
    v50 = *(a1 + 92);
    if (v49 <= v50)
    {
      v51 = *(a1 + 92);
    }

    else
    {
      v51 = *(a1 + 88);
    }

    v48.i32[0] = v51;
    v52 = *(a1 + 80);
    v53.i64[0] = v52;
    v53.i64[1] = SHIDWORD(v52);
    v54 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v48, v107), 0), v106, vcvtq_f64_s64(v53));
    v55 = v49;
    v56 = v50;
    if (v51 > 1073741822)
    {
      v55 = 1.79769313e308;
      v56 = 1.79769313e308;
    }

    v108 = v54;
    v109.f64[0] = v55;
    v109.f64[1] = v56;
    v57 = *(a1 + 24);
    if (v57)
    {
      CA::Rect::unapply_transform(&v108, (this + 104), v47);
      v59 = v109;
      v60 = vclezq_f64(v109);
      if ((vorrq_s8(vdupq_laneq_s64(v60, 1), v60).u64[0] & 0x8000000000000000) == 0)
      {
        v61 = *(v57 + 24);
        v62 = vclezq_f64(v61);
        if ((vorrq_s8(vdupq_laneq_s64(v62, 1), v62).u64[0] & 0x8000000000000000) != 0 || (v63 = *(v57 + 8), v64 = vaddq_f64(v63, v61), v65 = vmaxnmq_f64(v108, v63), v59 = vsubq_f64(vminnmq_f64(vaddq_f64(v108, v109), v64), v65), v66 = vclezq_f64(v59), (vorrq_s8(vdupq_laneq_s64(v66, 1), v66).u64[0] & 0x8000000000000000) != 0))
        {
          v109 = 0uLL;
          v59 = 0uLL;
        }

        else
        {
          v108 = v65;
          v109 = v59;
        }
      }

      v67 = vsubq_f64(v108, *(v57 + 8));
      v108 = v67;
      v68 = *(v57 + 264);
      if (v68 != 1.0)
      {
        v67 = vmulq_n_f64(v67, v68);
        v108 = v67;
        v109 = vmulq_n_f64(v59, v68);
      }

      if ((*(v57 + 309) & 4) != 0)
      {
        v108 = vaddq_f64(v67, vcvtq_f64_f32(vmul_f32(*(v57 + 276), vcvt_f32_s32(*v57))));
      }
    }

    else
    {
      CA::Rect::unapply_transform(&v108, *(v13 + 24), v47);
    }

    v69 = *(a1 + 40);
    v70 = v109;
    if (v69 != 1.0)
    {
      v71 = v109.f64[1];
      if (v109.f64[0] > v109.f64[1])
      {
        v71 = v109.f64[0];
      }

      if (v71 < 1.79769313e308)
      {
        v70 = vmulq_n_f64(v109, v69);
        v108 = vmulq_n_f64(v108, v69);
        v109 = v70;
      }
    }

    v72 = vceqzq_f64(v70);
    if ((vorrq_s8(vdupq_laneq_s64(v72, 1), v72).u64[0] & 0x8000000000000000) != 0 || (v73 = vceqq_f64(v70, v70), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v73), 1), v73).u64[0] & 0x8000000000000000) != 0))
    {
      v78 = 0;
      v79 = 0;
      v76 = 0;
      v77 = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
    }

    else
    {
      v74 = vcvtmq_s64_f64(vmaxnmq_f64(v108, v105));
      v75 = vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v108, v70), v104)), v74);
      *(a1 + 80) = vuzp1q_s32(v74, v75);
      v76 = v74.u32[2];
      v77 = v74.i32[0];
      v78 = v75.i32[2];
      v79 = v75.i32[0];
    }

    v80 = *(a1 + 76);
    if (v80 < 0 || (v81 = *a1, *(*a1 + 120) <= v80))
    {
      v86 = 0;
      v88 = 0;
      *(a1 + 96) = 0;
    }

    else
    {
      v82 = v81[31];
      _VF = __OFSUB__(v80, v82);
      v83 = v80 - v82;
      v85 = v81[4];
      v84 = v81[5];
      v86 = v85 >> v83;
      v87 = v85 << -v83;
      if (v83 < 0 != _VF)
      {
        v86 = v87;
      }

      *(a1 + 96) = v86;
      v88 = v83 < 0 ? v84 << -v83 : v84 >> v83;
    }

    *(a1 + 100) = v88;
    if ((v77 & 0x80000000) != 0)
    {
      v79 += v77;
      *(a1 + 88) = v79;
      *(a1 + 80) = 0;
      v77 = 0;
      if ((v76 & 0x80000000) == 0)
      {
        goto LABEL_92;
      }
    }

    else if ((v76 & 0x80000000) == 0)
    {
      goto LABEL_92;
    }

    v78 += v76;
    *(a1 + 92) = v78;
    *(a1 + 84) = 0;
    v76 = 0;
LABEL_92:
    if ((v79 + v77) > v86)
    {
      v79 = v86 - v77;
      *(a1 + 88) = v86 - v77;
    }

    if ((v78 + v76) > v88)
    {
      v78 = v88 - v76;
      *(a1 + 92) = v88 - v76;
    }

    if (v79 < 1 || v78 <= 0)
    {
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v79 = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
    }

    if (v80 >= *(a2 + 30) - 1)
    {
      break;
    }

    v89 = *(a1 + 64);
    if (v89 * v79 <= 4096.0 || v89 * v78 <= 4096.0)
    {
      break;
    }

    *(a1 + 76) = v80 + 1;
    v91 = CA::Render::TiledTexture::lod_scale(a2, v80 + 1);
    v92 = 1.0 / v91;
    *(a1 + 40) = v91;
    *(a1 + 48) = 1.0 / v91;
    v93 = *(a1 + 32);
    *(a1 + 56) = v93;
    *(a1 + 64) = v93 * v92;
  }

  v94 = *(a2 + 28);
  v95 = *(a2 + 29);
  *(a1 + 104) = v77 / v94;
  *(a1 + 108) = v76 / v95;
  v96 = (v94 + v77 + v79 - 1) / v94;
  v97 = (v95 + v76 + v78 - 1) / v95;
  *(a1 + 112) = v96;
  *(a1 + 116) = v97;
  *(a1 + 120) = v77 / v94 + ((v96 - v77 / v94) >> 1);
  *(a1 + 124) = v76 / v95 + ((v97 - v76 / v95) >> 1);
  v98 = *(a1 + 20);
  if (v98 == 2 || v98 == 11)
  {
    v99 = *(a1 + 21);
    *(a1 + 20) = 1;
    if (v99 != 3)
    {
      goto LABEL_115;
    }

LABEL_114:
    *(a1 + 21) = 1;
  }

  else if (*(a1 + 21) == 3)
  {
    *(a1 + 20) = 1;
    goto LABEL_114;
  }

LABEL_115:
  if ((*(a1 + 144) & 0x100) != 0 && ((v100 = *(v13 + 24), (*(v100 + 144) & 0x10) == 0) || CA::Mat4Impl::mat4_is_rectilinear(*(v13 + 24), v58)))
  {
    v101 = *(v100 + 96);
    *(a1 + 128) = v101;
    v102 = *(v100 + 104) - floor(*(v100 + 104));
    *(a1 + 128) = v101 - floor(v101);
    *(a1 + 136) = v102;
  }

  else
  {
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
  }

  return a1;
}

uint64_t CA::OGL::TiledImageGeometry::draw_tiles(uint64_t this, int a2, int a3)
{
  v185 = *MEMORY[0x1E69E9840];
  v3 = *(this + 112) - *(this + 104);
  if (v3 > 1024)
  {
    return this;
  }

  v4 = this;
  v5 = *(this + 116) - *(this + 108);
  if (v5 > 1024 || v5 * v3 > 0x2000)
  {
    return this;
  }

  v6 = a2;
  v7 = *this;
  v8 = *(this + 8);
  if (a2)
  {
    v9 = 10752;
  }

  else
  {
    v9 = 10761;
  }

  v10 = *(v8 + 16);
  v155 = (*(v10 + 497) & 1) != 0 && *(v10 + 496) == 3;
  v11 = *(this + 16);
  v166 = v7[14];
  v12 = v7[17];
  if (*&v12 && (*(*&v12 + 12) & 0x300) == 0x100 && (this = (*(*v8 + 648))(v8, *(*&v12 + 128), 1), this))
  {
    v147 = *(*v4 + 136);
  }

  else
  {
    v147 = 0;
  }

  v13 = v4[27];
  v14 = v4[29];
  if (v13 < v14)
  {
    v15 = v11 & v9;
    if (a3)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    v162 = 0;
    v163 = v16;
    v150 = v15 | 0x100;
    v160 = v15 | 0x124;
    if (v147)
    {
      v17 = a3;
    }

    else
    {
      v17 = 1;
    }

    v152 = v17;
    v149 = v8 + 1386;
    v18 = v4[28];
    v165 = (v8 + 648);
    v146 = (v11 >> 11) & 1;
    v144 = vdupq_n_s32(0x3B808081u);
    v153 = v6;
    v164 = v8;
    while (1)
    {
      v19 = v4[26];
      if (v19 >= v18)
      {
        goto LABEL_148;
      }

      v154 = v13 * v166.i32[1] + v166.i32[1];
      v158 = (v13 * v166.i32[1]);
      v145 = v13 * v166.i32[1];
      v151 = (v13 * v166.i32[1]);
      v159 = v13;
      do
      {
        v20 = *(v4 + 24);
        v183 = 0u;
        v184 = 0u;
        v181 = 0u;
        v182 = 0u;
        v21 = 1.0;
        v22 = (v4 + 16);
        memset(v180, 0, sizeof(v180));
        if ((v6 & 1) == 0)
        {
          v21 = *(v4 + 5);
          v22 = (v4 + 8);
        }

        if (*v22 >= v21 * 0.999)
        {
          if (*v22 <= v21 * 1.001)
          {
            v167 = 0;
            goto LABEL_34;
          }

          v23 = 36;
        }

        else
        {
          v23 = 18;
        }

        v167 = v23;
LABEL_34:
        v24 = 0;
        v156 = v19 * v166.i32[0];
        v25.i32[0] = v19 * v166.i32[0] + v166.i32[0];
        v25.i32[1] = v154;
        v157 = vmin_u32(v25, v20);
        v26 = v4[19];
        v27 = 1;
        v28 = 0.0;
        v29 = v13;
        v161 = v19;
        while (v26 < *(*v4 + 120))
        {
          v30 = v4[19];
          if (v26 == v30 || (v31 = 0xFFFFFFFFLL, (v4[36] & 1) != 0) && v26 == v30 + 1)
          {
            v31 = (v161 - v4[30]) * (v161 - v4[30]) + (v159 - v4[31]) * (v159 - v4[31]);
          }

          v32 = *(v8 + 624);
          v33 = (v32 + 80);
          _ZF = v32 == 0;
          v34 = v165;
          if (!_ZF)
          {
            v34 = v33;
          }

          v35 = &v180[4 * v24];
          v36 = (*(**v4 + 280))(*v4, v26, v19, v29, v31, v27, v24 != 0, *(v8 + 636), *v34, v35 + 1, v35 + 5);
          *v35 = v36;
          if (v36)
          {
            if (!v24 || ((v37 = *(v35 + 5), v37 != DWORD1(v180[1])) ? (_ZF = v37 == 0) : (_ZF = 1), !_ZF ? (v39 = DWORD1(v180[1]) == 0) : (v39 = 1), v39))
            {
              v40 = v35[4];
              if (v26 == v4[19])
              {
                v40 = *(v4 + 18) * v40;
              }

              v8 = v164;
              v28 = v40 + v28;
              *(v35 + 6) = v26;
              *(v35 + 7) = v27;
              *(v35 + 32) = 1;
              ++v24;
              *(v35 + 9) = v19;
              *(v35 + 10) = v29;
              goto LABEL_58;
            }

            if (atomic_fetch_add(v36 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v36 + 16))(v36);
            }
          }

          *v35 = 0;
          v162 |= v31 >= 0;
          v8 = v164;
LABEL_58:
          if (v24 < v163)
          {
            v26 = (v26 + 1);
            v27 = (2 * v27);
            v19 = v19 >> 1;
            v29 = v29 >> 1;
            if (v28 < 1.0)
            {
              continue;
            }
          }

          break;
        }

        if (v24)
        {
LABEL_65:
          v48 = 0;
          v49 = v167 | v150;
          v50.f32[0] = v156;
          v50.f32[1] = v151;
          *&v50.u32[2] = vcvt_f32_u32(v157);
          v168 = v50;
          v51 = &v180[1] + 8;
          do
          {
            v52 = *(v51 - 3);
            v172 = 0uLL;
            v53 = *v51;
            if (*v51 == v4[19])
            {
              LODWORD(v178.f64[0]) = v49;
              if ((v4[36] & 0x100) != 0 && v51[8] == 1)
              {
                v52 = CA::OGL::TiledImageGeometry::lanczos_image(v4, v52, *(v4 + 16) + *(v4 + 8) * v156, *(v4 + 17) + *(v4 + 8) * v158, *(v4 + 8), &v178, &v172);
                v54 = LODWORD(v178.f64[0]);
                v53 = *v51;
              }

              else
              {
                v54 = v49;
              }
            }

            else
            {
              v54 = v160;
            }

            v55 = *(v4 + 20);
            if (!v53)
            {
              v55 = *(v4 + 21);
            }

            v56 = CA::OGL::Context::bind_image(v8, v48, v52, v54, *(v4 + 20), v55, 0, 0, 0.0, &v172, 0);
            *(v51 - 2) = v56;
            if (v56)
            {
              v57 = *(v4 + 3);
              if (v57 && *(*(v8 + 16) + 8 * v48 + 40))
              {
                *(v57 + 495) = 1;
              }

              v58.i32[0] = *(v51 + 3);
              v58.i32[1] = *(v51 + 1);
              v59.i32[0] = v58.i32[1];
              v59.i32[1] = *(v51 + 4);
              *v60.f32 = vcvt_f32_u32(vmul_s32(vmul_s32(v58, v166), v59));
              v60.i64[1] = v60.i64[0];
              *_Q1.i8 = vcvt_f32_u32(vmul_s32(v52[2], vdup_n_s32(*(v51 + 1))));
              _Q1.i64[1] = _Q1.i64[0];
              v61.i64[0] = v172.i64[0];
              *v62.f32 = vsub_f32(*&v172.u32[2], *v172.f32);
              v62.i64[1] = v62.i64[0];
              v61.i64[1] = v172.i64[0];
              _Q0 = vaddq_f32(vdivq_f32(vmulq_f32(v62, vsubq_f32(v168, v60)), _Q1), v61);
              *(v51 + 20) = _Q0;
            }

            ++v48;
            v51 += 64;
          }

          while (v24 != v48);
          _Q1.i32[0] = v180[1];
          if (v24 == 2)
          {
            v6 = v153;
            v13 = v159;
            v44 = v161;
            if (DWORD2(v180[1]) == v4[19])
            {
              _Q0.i32[0] = v4[18];
              *_Q1.i32 = _Q0.f32[0] * *&v180[1];
            }

            v63 = 2;
          }

          else
          {
            v63 = 1;
            v6 = v153;
            v13 = v159;
            v44 = v161;
          }
        }

        else
        {
          v41 = *(v8 + 624);
          v42 = (v41 + 80);
          _ZF = v41 == 0;
          v43 = v165;
          if (!_ZF)
          {
            v43 = v42;
          }

          v44 = v161;
          v13 = v159;
          *&v180[0] = (*(**v4 + 288))(*v4, v4[19], v161, v159, v146, *(v8 + 636), &v180[1] + 4, *v43);
          if (*&v180[0])
          {
            v47 = v4[19];
            LODWORD(v180[1]) = 1065353216;
            *(&v180[1] + 1) = v47 | 0x100000000;
            LOBYTE(v180[2]) = 0;
            *(&v180[2] + 4) = __PAIR64__(v159, v161);
            v24 = 1;
            goto LABEL_65;
          }

          v63 = 0;
          _Q1.i32[0] = 1.0;
          v6 = v153;
        }

        if (v152)
        {
LABEL_98:
          if (v63 == 2)
          {
LABEL_105:
            *(*(v8 + 16) + 16) = 7;
            __asm { FCVT            H0, S1 }

            *(*(v8 + 16) + 8) = vdup_lane_s16(*_Q0.f32, 0);
            if ((*(*&v180[0] + 13) & 0x10) == 0)
            {
              LODWORD(v63) = 2;
              goto LABEL_117;
            }

            v83 = v181;
            LODWORD(v63) = 2;
            goto LABEL_116;
          }

          if (v63 == 1)
          {
            goto LABEL_107;
          }

          if (v63)
          {
            goto LABEL_117;
          }

          *(*(v8 + 16) + 16) = 0;
          if (a3)
          {
            goto LABEL_117;
          }

          LODWORD(v63) = 0;
          v73 = bswap32(*(*v4 + 128));
          _Q1.i32[0] = v73;
          _Q1.i32[1] = v73 >> 8;
          _Q1.i32[2] = HIWORD(v73);
          v74.i64[0] = 0xFF000000FFLL;
          v74.i64[1] = 0xFF000000FFLL;
          v75 = vandq_s8(_Q1, v74);
          v75.i32[3] = vshrq_n_u32(vdupq_n_s32(v73), 0x18uLL).i32[3];
          *(*(v8 + 16) + 8) = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(v75), v144));
          v76 = *(*v4 + 128);
          goto LABEL_103;
        }

        if (!v63)
        {
          goto LABEL_90;
        }

        if (v63 != 1)
        {
          goto LABEL_105;
        }

        if (*_Q1.i32 <= 0.999)
        {
LABEL_90:
          v169 = _Q1;
          v64 = *(v147 + 128);
          v65 = &v180[4 * v63];
          *v65 = v64;
          v172 = 0uLL;
          v66 = CA::OGL::Context::bind_image(v8, v63, v64, 256, 0, 0, 1, 0, 0.0, &v172, 0);
          *(v65 + 1) = v66;
          if (v66)
          {
            v67 = *(v4 + 3);
            if (v67 && *(*(v8 + 16) + 8 * v63 + 40))
            {
              *(v67 + 495) = 1;
            }

            v68 = (*v65 + 8);
            if (!atomic_fetch_add(v68, 1u))
            {
              atomic_fetch_add(v68, 0xFFFFFFFF);
            }

            *(v65 + 4) = 1065353216;
            *(v65 + 5) = 0;
            *(v65 + 6) = 0;
            *(v65 + 7) = 1;
            *(v65 + 32) = 0;
            *(v65 + 9) = v44;
            *(v65 + 10) = v13;
            v69 = *(v4 + 6) * *(v4 + 4);
            v70.f64[0] = v156;
            v70.f64[1] = v158;
            v71 = vsub_s32(v157, __PAIR64__(v145, v156));
            v72.i64[0] = v71.u32[0];
            v72.i64[1] = v71.u32[1];
            _Q0.f32[0] = CA::OGL::pattern_texcoords(v147, v172.f32, (v65 + 44), vmulq_n_f64(v70, v69), vmulq_n_f64(vcvtq_f64_u64(v72), v69), 0);
            LODWORD(v63) = v63 + 1;
          }

          _Q1 = v169;
          goto LABEL_98;
        }

LABEL_107:
        if ((a3 & 1) == 0)
        {
          _D0 = *_Q1.i32;
          if (*_Q1.i32 > 0.999)
          {
            LODWORD(v63) = 1;
            *(*(v8 + 16) + 16) = 1;
            v83 = *&v180[0];
LABEL_116:
            if ((*(v83 + 13) & 0x10) == 0)
            {
              goto LABEL_117;
            }

LABEL_132:
            if (v155)
            {
              *(*(v8 + 16) + 497) &= ~1u;
            }

            v85 = 1;
            if (v6)
            {
              goto LABEL_118;
            }

LABEL_135:
            v101 = *(v8 + 656);
            v171[0] = 0;
            v171[1] = 0;
            v102 = *(v4 + 6);
            v103 = *(v4 + 3);
            if (v103)
            {
              v104 = *(v103 + 264);
              if (v104 != 1.0)
              {
                v102 = v102 / v104;
              }
            }

            v105 = v102 * v156;
            v106 = v102 * v158;
            v178.f64[0] = v105;
            v178.f64[1] = v102 * v158;
            v107.i64[0] = v157.u32[0];
            v107.i64[1] = v157.u32[1];
            v108 = vmulq_n_f64(vcvtq_f64_u64(v107), v102);
            v179 = v108;
            if (v103)
            {
              v109 = *(v103 + 8);
              v110 = *(v103 + 16) + v106;
              v178.f64[0] = v109.f64[0] + v105;
              v178.f64[1] = v110;
              v179 = vaddq_f64(v109, v108);
              v111 = v103 + 104;
            }

            else
            {
              v111 = *(v101 + 24);
            }

            v175 = 0;
            v176 = 0;
            v177 = 0;
            v112 = ((*(v111 + 144) >> 4) & 1) == 0;
            v113 = *(v101 + 8);
            v172.i64[0] = v8;
            v172.i64[1] = v113;
            v173 = 0;
            v174 = 0;
            LOBYTE(v175) = v112;
            BYTE1(v175) = 1;
            CA::OGL::Context::ClippedArray::start(&v172);
            while (1)
            {
              this = CA::OGL::Context::ClippedArray::next_rect(&v172, v171);
              if (!this)
              {
                break;
              }

              CA::OGL::emit_quad(v8, &v178, v171, v111, (&v180[2] + 12), &v183 + 3, v114);
            }

            goto LABEL_122;
          }

          v115 = *(v8 + 16);
          if (!*(*v4 + 128))
          {
            *(v115 + 16) = 3;
            __asm { FCVT            H0, S1 }

            *(*(v8 + 16) + 8) = vdup_lane_s16(*&_D0, 0);
            goto LABEL_112;
          }

          *(v115 + 16) = 8;
          v116 = *(v8 + 16);
          *(v116 + 24) = vdupq_lane_s32(*_Q1.i8, 0);
          v117 = bswap32(*(*v4 + 128));
          _Q1.i32[0] = v117;
          _Q1.i32[1] = v117 >> 8;
          _Q1.i32[2] = HIWORD(v117);
          v118.i64[0] = 0xFF000000FFLL;
          v118.i64[1] = 0xFF000000FFLL;
          v119 = vandq_s8(_Q1, v118);
          v119.i32[3] = vshrq_n_u32(vdupq_n_s32(v117), 0x18uLL).i32[3];
          *(v116 + 8) = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(v119), v144));
          if ((*(*&v180[0] + 13) & 0x10) == 0)
          {
            goto LABEL_112;
          }

          v76 = *(*v4 + 128);
          LODWORD(v63) = 1;
LABEL_103:
          if (v76 != 0xFF)
          {
            goto LABEL_117;
          }

          goto LABEL_132;
        }

        v80 = *(v8 + 16);
        v81 = *(v80 + 16) & 0xFFFFFF00FF00FF00;
        if (*(v80 + 8) == 0x3C003C003C003C00)
        {
          v82 = 1;
        }

        else
        {
          v82 = 3;
        }

        *(v80 + 16) = v82 | v81;
        *(v80 + 20) = HIDWORD(v81);
LABEL_112:
        LODWORD(v63) = 1;
LABEL_117:
        v85 = 0;
        *(v4 + 146) = 0;
        if (!v6)
        {
          goto LABEL_135;
        }

LABEL_118:
        *(v8 + 144) = 0;
        *(v8 + 112) = v149;
        *(v8 + 120) = xmmword_183E20E50;
        v86 = *(v4 + 8);
        v87 = *(v4 + 16);
        v88 = *(v4 + 17);
        v89 = v87 + v86 * v156;
        v90 = v88 + v86 * v158;
        *&v87 = v87 + v86 * v157.u32[0];
        *&v86 = v88 + v86 * v157.u32[1];
        CA::OGL::Context::array_rect(v8, v89, v90, *&v87, *&v86);
        v91 = *(*(v8 + 16) + 8);
        v92 = *(v8 + 136) + 48 * *(v8 + 144);
        *(v92 - 160) = v91;
        *(v92 - 112) = v91;
        *(v92 - 64) = v91;
        *(v92 - 16) = v91;
        if (v63 >= 1)
        {
          v93 = HIDWORD(v180[2]);
          v94 = *&v180[3];
          v95 = DWORD2(v180[3]);
          v96 = *(v8 + 136) + 48 * *(v8 + 144);
          *(v96 - 176) = HIDWORD(v180[2]);
          *(v96 - 172) = v94;
          *(v96 - 128) = HIDWORD(v94);
          *(v96 - 124) = v94;
          *(v96 - 80) = HIDWORD(v94);
          *(v96 - 76) = v95;
          *(v96 - 32) = v93;
          *(v96 - 28) = v95;
          if (v63 != 1)
          {
            v97 = HIDWORD(v183);
            v98 = v184;
            v99 = DWORD2(v184);
            *(v96 - 168) = HIDWORD(v183);
            *(v96 - 164) = v98;
            *(v96 - 120) = HIDWORD(v98);
            *(v96 - 116) = v98;
            *(v96 - 72) = HIDWORD(v98);
            *(v96 - 68) = v99;
            *(v96 - 24) = v97;
            *(v96 - 20) = v99;
          }
        }

        this = CA::OGL::Context::array_flush(v8);
LABEL_122:
        if ((v85 & v155) == 1)
        {
          *(*(v8 + 16) + 497) |= 1u;
        }

        if (v63 < 2)
        {
          if (v63 == 1)
          {
            goto LABEL_128;
          }
        }

        else
        {
          (*(*v8 + 560))(v8, *(&v181 + 1), 1);
          v100 = v181;
          if (atomic_fetch_add((v181 + 8), 0xFFFFFFFF) == 1)
          {
            (*(*v100 + 16))(v100);
          }

LABEL_128:
          (*(*v8 + 560))(v8, *(&v180[0] + 1), 0);
          this = *&v180[0];
          if (atomic_fetch_add((*&v180[0] + 8), 0xFFFFFFFF) == 1)
          {
            this = (*(*this + 16))(this);
          }
        }

        v19 = v44 + 1;
        v18 = v4[28];
      }

      while (v19 < v18);
      v14 = v4[29];
LABEL_148:
      v13 = (v13 + 1);
      if (v13 >= v14)
      {
        *(*(v8 + 16) + 16) = 0;
        if ((v162 & 1) == 0)
        {
          goto LABEL_152;
        }

        return this;
      }
    }
  }

  *(*(v8 + 16) + 16) = 0;
LABEL_152:
  this = (*(**v4 + 304))(*v4);
  if (this >= 1)
  {
    v120 = v8;
    v121 = v4[26];
    LODWORD(v180[0]) = v121 - (*(**v4 + 304))(*v4);
    v122 = v4[28];
    DWORD1(v180[0]) = (*(**v4 + 304))() + v122;
    v123 = v4[27];
    v124 = v123 - (*(**v4 + 304))();
    v125 = v4[26];
    *(&v180[0] + 1) = __PAIR64__(v4[27], v124);
    LODWORD(v180[1]) = v125 - (*(**v4 + 304))();
    v126 = v4[28];
    v127 = (*(**v4 + 304))() + v126;
    v128 = v4[29];
    *(&v180[1] + 4) = __PAIR64__(v128, v127);
    HIDWORD(v180[1]) = (*(**v4 + 304))() + v128;
    v129 = v4[26];
    v130 = v129 - (*(**v4 + 304))();
    v131 = v120;
    LODWORD(v180[2]) = v130;
    v170 = *(v4 + 26);
    v132 = vrev64q_s32(v170);
    v132.i64[0] = *(v4 + 13);
    *(&v180[2] + 4) = v132;
    this = (*(**v4 + 304))();
    v133 = 0;
    v134 = v4[27];
    DWORD1(v180[3]) = this + v170.i32[2];
    DWORD2(v180[3]) = v134;
    HIDWORD(v180[3]) = v4[29];
    v135 = (v120 + 648);
    do
    {
      v136 = &v180[v133];
      v137 = v136[2];
      v138 = v136[3];
      if (v137 < v138)
      {
        v139 = *v136;
        v140 = v136[1];
        do
        {
          v141 = v139;
          if (v139 < v140)
          {
            do
            {
              v142 = *(v131 + 624);
              if (v142)
              {
                v143 = (v142 + 80);
              }

              else
              {
                v143 = v135;
              }

              this = (*(**v4 + 296))(*v4, v4[19], v141, v137, ((v141 - v4[30]) * (v141 - v4[30]) + (v137 - v4[31]) * (v137 - v4[31])), *(v131 + 636), *v143);
              v141 = (v141 + 1);
            }

            while (v140 != v141);
          }

          v137 = (v137 + 1);
        }

        while (v137 != v138);
      }
    }

    while (v133++ < 3);
  }

  return this;
}

_OWORD *CA::OGL::TiledImageGeometry::bind_image(int32x2_t **this, uint64_t a2, float32x4_t *a3)
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = *(this + 22);
  if (v3 < 1)
  {
    return 0;
  }

  v5 = *(this + 23);
  if (v5 < 1)
  {
    return 0;
  }

  v8 = this[1];
  v9 = *(v8 + 656);
  if ((this[18] & 1) != 0 || *(this + 26) != *(this + 28) - 1 || *(this + 27) != *(this + 29) - 1)
  {
    goto LABEL_30;
  }

  v10 = *this;
  v11 = (*this)[14];
  LODWORD(__dst[0]) = 0;
  LODWORD(v63[0]) = 0;
  v12 = *(v8 + 624);
  if (v12)
  {
    v13 = (v12 + 80);
  }

  else
  {
    v13 = (v8 + 648);
  }

  v14 = (*(*v10 + 280))(v10, *(this + 19), *v13);
  v15 = v14;
  if ((*(v8 + 872) & 0x40) != 0)
  {
    LODWORD(__dst[0]) = 1065353216;
    v16 = 1;
  }

  else
  {
    v16 = *__dst == 1.0;
  }

  if (v14)
  {
    v18 = !v16;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v19 = this[2] & 0x2B3F;
    v76[0] = this[2] & 0x2B3F;
    v20 = v14;
    if (*(this + 145))
    {
      v20 = CA::OGL::TiledImageGeometry::lanczos_image(this, v14, 0.0, 0.0, *(this + 6) * *(this + 4), v76, a3);
      v19 = v76[0];
    }

    v21 = 20;
    if (*(this + 4) > 1.001)
    {
      v21 = 21;
    }

    v22 = CA::OGL::Context::bind_image(v8, a2, v20, v19, *(this + v21), *(this + v21), 0, 0, 0.0, a3, 0);
    if (v22)
    {
      v17 = v22;
      v23 = v15[2];
      *v24.f32 = vdiv_f32(vsub_f32(*&vextq_s8(*a3, *a3, 8uLL), *a3->f32), vcvt_f32_u32(v23));
      *v25.i8 = vmul_s32(this[13], v11);
      v24.i64[1] = v24.i64[0];
      v25.u64[1] = vsub_s32(this[12], vadd_s32(*v25.i8, v23));
      v26 = vmulq_f32(v24, vcvtq_f32_u32(v25));
      v27.i64[0] = vsubq_f32(*a3, v26).u64[0];
      v27.i64[1] = vaddq_f32(*a3, v26).i64[1];
      *a3 = v27;
      if (atomic_fetch_add(&v15[1], 0xFFFFFFFF) == 1)
      {
        (*(*v15 + 16))(v15);
      }

      return v17;
    }

    goto LABEL_27;
  }

  if (v14)
  {
LABEL_27:
    if (atomic_fetch_add(&v15[1], 0xFFFFFFFF) == 1)
    {
      (*(*v15 + 16))(v15);
    }
  }

  v3 = *(this + 22);
  v5 = *(this + 23);
LABEL_30:
  v28 = *(this + 20);
  v29 = *(this + 21);
  v30 = *(this + 8);
  v60 = __PAIR64__(vcvtmd_s64_f64(v30 * v29), vcvtmd_s64_f64(v30 * v28));
  v61 = vcvtpd_s64_f64(v30 * (v3 + v28)) - v60.i32[0];
  v62 = vcvtpd_s64_f64(v30 * (v5 + v29)) - v60.i32[1];
  v78 = 0;
  v82 = 0u;
  v83 = 0u;
  v77 = 0u;
  v79 = 0x3C003C003C003C00;
  v80 = 0;
  v81 = 0;
  *&v82 = 0;
  *v76 = 0;
  if (v9)
  {
    v77 = *(v9 + 8);
    v78 = *(v9 + 24);
    v31 = *(v9 + 64);
    v32 = *(v9 + 80) & 0x500 | 1;
  }

  else
  {
    v77 = 0uLL;
    v78 = 0;
    v32 = 1025;
    v31 = 1.0;
  }

  *(&v82 + 2) = v31;
  WORD4(v83) = v32;
  v73 = 0;
  v33 = *(this + 7);
  v63[1] = 0u;
  v67 = 0u;
  v64 = 0;
  v66 = 0u;
  v69 = 0u;
  v70 = xmmword_183E20E60;
  v63[0] = *&v33;
  v65 = v33;
  v68 = 0x3FF0000000000000uLL;
  v71 = v33;
  v72 = 1.0 / v33;
  v73 = (8 * (v33 != 1.0));
  *(&v77 + 1) = 0;
  v78 = v63;
  memset(v75, 0, sizeof(v75));
  CA::Shape::operator=(v75, &v60);
  *&v77 = v75;
  *v76 = CA::OGL::Context::set_gstate(v8, v76);
  v34 = *(v8 + 16);
  memcpy(__dst, v34, sizeof(__dst));
  __dst[0] = v34;
  *(v8 + 16) = __dst;
  LOBYTE(__dst[2]) = 0;
  BYTE1(__dst[62]) &= ~1u;
  v35 = (*(*v8 + 696))(v8, 1, &v60, 15, @"tile-image-geometry-bind-image");
  if (v35)
  {
    v36 = v35;
    CA::OGL::Context::push_surface(v8, v35, 1u, 4, 0);
    CA::OGL::TiledImageGeometry::draw_tiles(this, 1, 0);
    if (BYTE1(xmmword_1ED4E97DC) == 1)
    {
      if (v61 <= v62)
      {
        v48 = v62;
      }

      else
      {
        v48 = v61;
      }

      v37.i32[0] = 1073741822;
      v38.i32[0] = v48;
      v49 = vdupq_lane_s32(*&vcgtq_s32(v38, v37), 0);
      v50.i64[0] = v60.i32[0];
      v50.i64[1] = v60.i32[1];
      v52 = vcvtq_f64_s64(v50);
      v51 = vbslq_s8(v49, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), v52);
      *v52.i64 = v61;
      v53 = v62;
      if (v48 > 1073741822)
      {
        *v52.i64 = 1.79769313e308;
        v53 = 1.79769313e308;
      }

      v57 = v51;
      v58 = v52.i64[0];
      v59 = v53;
      v54[0] = &v57;
      v54[1] = v78;
      v55 = 0u;
      v56 = 0u;
      CA::OGL::fill_color_rect(v8, v54, 0x80800080, 0.0, v52);
    }

    CA::OGL::Context::pop_surface(v8);
    *(v8 + 16) = __dst[0];
    __dst[0] = 0;
    CA::OGL::Context::set_gstate(v8, **(v8 + 656));
    if ((this[2] & 0x3F) != 0)
    {
      v39 = *(this + 20);
      v40 = *(this + 21);
    }

    else
    {
      v39 = 0;
      v40 = 0;
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v41 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x40uLL, 0xDEEC3011uLL);
    v17 = v41;
    if (v41)
    {
      v41[2] = 0u;
      v41[3] = 0u;
      *v41 = 0u;
      v41[1] = 0u;
    }

    *(v41 + 3) = v36;
    CA::OGL::Context::bind_surface(v8, v36, a2, v39, v40, 0.0);
    v42 = *(v17 + 52) & 0xFFFFFFFFFFFF0000 | *(*(v8 + 16) + 2 * a2 + 144);
    *(v17 + 52) = v42;
    *(v17 + 52) = v42 & 0xFEFFFFFFFF00FFFFLL | (((*(v36 + 144) >> 28) & 1) << 56) | ((v39 & 0xF) << 16) & 0xFFFFFFFFFF0FFFFFLL | ((v40 & 0xF) << 20);
    v43 = vneg_s32(v60);
    v44.i64[0] = v43.i32[0];
    v44.i64[1] = v43.i32[1];
    v45 = vcvt_f32_f64(vaddq_f64(*(this + 8), vcvtq_f64_s64(v44)));
    *a3->f32 = v45;
    v46 = this[12];
    v44.i64[0] = v46;
    v44.i64[1] = HIDWORD(v46);
    *&a3->u32[2] = vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(v45), vcvtq_f64_u64(v44), *(this + 8)));
  }

  else
  {
    *(v8 + 16) = __dst[0];
    __dst[0] = 0;
    CA::OGL::Context::set_gstate(v8, **(v8 + 656));
    v17 = 0;
  }

  if (__dst[0])
  {
    __assert_rtn("~ContextState", "ogl-context.h", 613, "!next && Imbalanced ContextState push/pop");
  }

  return v17;
}

_OWORD *CA::OGL::bind_tiled_image(uint64_t a1, uint64_t a2, CA::Render::TiledTexture *a3, int a4, char a5, char a6, CA::OGL::ContentsGeometry *a7, float32x4_t *a8, float a9)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  CA::OGL::TiledImageGeometry::TiledImageGeometry(v12, a3, a1, a4, a5, a6, a7, a9);
  return CA::OGL::TiledImageGeometry::bind_image(v12, a2, a8);
}

uint64_t CA::OGL::draw_tiled_image(uint64_t a1, CA::Render::TiledTexture *a2, char a3, char a4, CA::OGL::ContentsGeometry *this, int a6, float a7)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  CA::OGL::TiledImageGeometry::TiledImageGeometry(v9, a2, a1, *(this + 77), a3, a4, this, a7);
  return CA::OGL::TiledImageGeometry::draw_tiles(v9, 0, a6);
}

uint64_t CA::OGL::PathFiller::mark_spans(uint64_t result, double a2, double a3)
{
  v3 = *(result + 56);
  if (v3 < 2)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = (result + 68);
    for (i = 1; i != v3; ++i)
    {
      v8 = *v6++;
      v9 = v8;
      if (v8 < *&a2)
      {
        v4 = i;
      }

      if (v9 < *&a3)
      {
        v5 = i;
      }
    }
  }

  v10 = *(result + 60);
  if (v10 < 2)
  {
    v17 = 0;
    v16 = 31;
  }

  else
  {
    v11 = vzip2_s32(*&a2, *&a3);
    v12 = 0;
    v13 = (result + 200);
    for (j = 1; j != v10; ++j)
    {
      v15 = vld1_dup_f32(v13++);
      v12 = vbsl_s8(vcgt_f32(v11, v15), vdup_n_s32(j), v12);
    }

    v16 = 31 - v12.i8[4];
    v17 = v12.i8[0];
  }

  if (v4 <= v5)
  {
    v18 = (0xFFFFFFFF >> v16) & (-1 << v17);
    v19 = v5 - v4 + 1;
    v20 = (result + 4 * v4 + 328);
    do
    {
      *v20++ |= v18;
      --v19;
    }

    while (v19);
  }

  return result;
}

uint64_t CA::OGL::PathFiller::add_cube(uint64_t result, double a2, double a3, double a4, float32x2_t a5, float a6)
{
  v7 = *(result + 584) + 40 * *(result + 644);
  v8 = vcgt_f32(*&a2, a5);
  v8.i32[0] = 1.0;
  if (v8.i8[4])
  {
    v9 = *&a5;
  }

  else
  {
    *v8.i32 = -1.0;
    v9 = a2;
  }

  if (v8.i8[4])
  {
    v10 = a4;
  }

  else
  {
    v10 = a3;
  }

  if ((v8.i8[4] & 1) == 0)
  {
    a3 = a4;
    a2 = *&a5;
  }

  *v7 = v8.i32[0];
  *(v7 + 4) = a6;
  *(v7 + 8) = v9;
  *(v7 + 16) = v10;
  *(v7 + 24) = a3;
  *(v7 + 32) = a2;
  v11 = *(result + 644) + 1;
  *(result + 644) = v11;
  if (v11 >= *(result + 608))
  {
    v12 = result;
    *(result + 664) = 1;
    CA::OGL::PathFiller::emit_span_rect_coverage(result);

    return CA::OGL::PathFiller::flush_cube(v12);
  }

  return result;
}

uint64_t CA::OGL::PathFiller::emit_span_rect_coverage(uint64_t this)
{
  v1 = this;
  if (*(this + 56) >= 1)
  {
    v2 = 0;
    v3 = this + 64;
    do
    {
      v4 = v2;
      this = CA::OGL::PathFiller::emit_rects_from_points(v1, v2, v2);
      ++v2;
      v5 = *(v1 + 56);
      v6 = *(v1 + 644);
      if (v6 >= 1)
      {
        v7 = 0;
        v8 = *(v3 + 4 * v4);
        v9 = *(v3 + 4 * v2);
        v10 = 16;
        do
        {
          v11 = 0;
          v12 = *(v1 + 584);
          v13 = v12 + 40 * v7;
          v14 = *(v13 + 8);
          v15 = v12 + v10;
          v16 = *&v14;
          v17 = *&v14;
          do
          {
            v18 = *(v15 + v11);
            if (v17 <= *&v18)
            {
              LODWORD(v17) = *(v15 + v11);
            }

            if (v16 >= *&v18)
            {
              LODWORD(v16) = *(v15 + v11);
            }

            v11 += 8;
          }

          while (v11 != 24);
          if (v16 <= v9 && (v17 > v8 || v4 == 0) && v17 <= v9)
          {
            *(v13 + 4) = v9;
            if (v2 != v5)
            {
              this = CA::OGL::PathFiller::add_points(v1, *(&v14 + 1), *(v13 + 36), *v13, v2);
              v6 = *(v1 + 644);
            }
          }

          ++v7;
          v10 += 40;
        }

        while (v7 < v6);
        LODWORD(v5) = *(v1 + 56);
      }
    }

    while (v2 < v5);
  }

  *(v1 + 652) = 0;
  return this;
}

uint64_t CA::OGL::PathFiller::flush_cube(uint64_t this)
{
  v1 = *(this + 644);
  if (v1)
  {
    v2 = this;
    if (v1 >= 1)
    {
      v3 = 0;
      v4 = 0;
      __asm { FMOV            V0.2S, #3.0 }

      do
      {
        v10 = (*(this + 584) + v3);
        v11 = v10[1];
        v12 = v10[2];
        v13 = v10[3];
        v10[1] = vmla_f32(vsub_f32(v10[4], v11), _D0, vsub_f32(v12, v13));
        v10[2] = vmul_f32(vadd_f32(vsub_f32(v11, vadd_f32(v12, v12)), v13), _D0);
        v10[3] = vmul_f32(vsub_f32(v12, v11), _D0);
        v10[4] = v11;
        ++v4;
        v3 += 40;
      }

      while (v4 < *(this + 644));
    }

    if (*(this + 641))
    {
      v14 = 105;
    }

    else
    {
      v14 = 104;
    }

    *(*(*this + 16) + 16) = v14;
    this = (*(**this + 384))();
    *(*(*v2 + 16) + 497) |= 4u;
    v2[161] = 0;
  }

  return this;
}

uint64_t CA::OGL::PathFiller::emit_rects_from_points(CA::OGL::PathFiller *this, int a2, int a3)
{
  v4 = *(this + 75);
  v5 = *(this + 163);
  v6 = 126 - 2 * __clz(v5);
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  result = std::__introsort<std::_ClassicAlgPolicy,CA::OGL::PathFiller::emit_rects_from_points(int,int)::$_0 &,CA::OGL::PathFiller::ScanlinePoint *,false>(v4, (v4 + 8 * v5), v7, 1);
  v9 = *(this + 75);
  v10 = *(this + 163);
  *&v9[2 * v10] = 2139095040;
  if (v10 <= 0)
  {
    *(this + 163) = 0;
  }

  else
  {
    v11 = 0;
    *&v12 = *v9;
    v13 = 8 * v10 + 8;
    v14 = 8;
    do
    {
      v15 = *&v12;
      v12 = *&v9[v14 / 4];
      v16 = &v9[2 * v11];
      v18 = v16[1];
      v17 = v16 + 1;
      v19 = v18;
      if (*&v12 == v15)
      {
        *v17 = v19 + *(&v12 + 1);
      }

      else
      {
        if (v19 != 0.0)
        {
          ++v11;
        }

        *&v9[2 * v11] = v12;
      }

      v14 += 8;
    }

    while (v13 != v14);
    *(this + 163) = v11;
    if (v11 >= 2)
    {
      v20 = this + 328;
      v61 = this + 64;
      v22 = *v9;
      v21 = v9[1];
      v62 = a3 + 1;
      v23 = 1;
      do
      {
        v24 = v22;
        v60 = v23;
        v25 = (*(this + 75) + 8 * v23);
        v22 = *v25;
        v26 = v25[1];
        if (v21 != 0.0)
        {
          v27 = *(this + 15);
          if (v27 < 2)
          {
            v28 = 0;
            v29 = 0;
          }

          else
          {
            v28 = 0;
            v29 = 0;
            v30 = (this + 200);
            for (i = 1; i != v27; ++i)
            {
              v32 = *v30++;
              v33 = v32;
              if (v32 < v24)
              {
                v29 = i;
              }

              if (v33 < v22)
              {
                v28 = i;
              }
            }
          }

          v34 = (0xFFFFFFFF >> ~v28) & (-1 << v29);
          v35 = -v21;
          if (a2 != a3 || (*(this + 664) & 1) != 0)
          {
            v53 = (this + 4 * a2 + 328);
            v54 = a3 + 1 - a2;
            if (a2 <= a3)
            {
              do
              {
                *v53++ |= v34;
                --v54;
              }

              while (v54);
            }

            v55 = *&v61[4 * v62];
            v56 = *(this + 162);
            v57 = *(this + 74) + 20 * v56;
            *v57 = *&v61[4 * a2];
            *(v57 + 4) = v24;
            *(v57 + 8) = v55;
            *(v57 + 12) = v22;
            *(v57 + 16) = v35;
            *(this + 162) = v56 + 1;
            if (v56 + 1 >= *(this + 153))
            {
              *(this + 664) = 1;
              result = CA::OGL::PathFiller::flush_rect(this);
            }
          }

          else
          {
            v36 = (1 << v29) | (1 << v28);
            v37 = a2;
            do
            {
              v38 = v36 | *&v20[4 * v37];
              *&v20[4 * v37] = v38;
              v39 = v38 & v34;
              if (*(this + 640) != 1 || (v21 & 1) != 0)
              {
                *(this + v37 + 114) |= v39 ^ v34;
              }

              v41 = v37 + 1;
              v42 = *(this + 15);
              if ((v42 & 0x80000000) == 0)
              {
                v43 = *&v61[4 * v37];
                v44 = *&v61[4 * v41];
                v45 = *(this + 49);
                v46 = 50;
                v47 = v45;
                do
                {
                  v48 = *(this + v46);
                  if ((v39 & 1) == 0)
                  {
                    if (v47 != v45)
                    {
                      if (v24 <= v47)
                      {
                        v49 = v24;
                      }

                      else
                      {
                        v49 = v47;
                      }

                      if (v49 < v45)
                      {
                        v49 = v45;
                      }

                      if (v22 <= v47)
                      {
                        v47 = v22;
                      }

                      if (v47 >= v45)
                      {
                        v45 = v47;
                      }

                      v50 = *(this + 162);
                      v51 = *(this + 74) + 20 * v50;
                      *v51 = v43;
                      *(v51 + 4) = v49;
                      *(v51 + 8) = v44;
                      *(v51 + 12) = v45;
                      *(v51 + 16) = v35;
                      *(this + 162) = v50 + 1;
                      if (v50 + 1 >= *(this + 153))
                      {
                        *(this + 664) = 1;
                        result = CA::OGL::PathFiller::flush_rect(this);
                      }
                    }

                    if (v39 < 2)
                    {
                      break;
                    }

                    v42 = *(this + 15);
                    v45 = v48;
                  }

                  v39 >>= 1;
                  v52 = v46 - 50;
                  ++v46;
                  v47 = v48;
                }

                while (v52 < v42);
              }

              v37 = v41;
            }

            while (v62 != v41);
          }
        }

        v21 = v26 + v21;
        v23 = v60 + 1;
      }

      while (v60 + 1 < *(this + 163));
    }
  }

  return result;
}

uint64_t CA::OGL::PathFiller::add_points(uint64_t this, float a2, float a3, float a4, int a5)
{
  if (*(this + 28) >= a2)
  {
    a2 = *(this + 28);
  }

  v5 = *(this + 652);
  v6 = (*(this + 600) + 8 * v5);
  *v6 = a2;
  v6[1] = -a4;
  v7 = *(this + 36);
  if (v7 > a3)
  {
    v7 = a3;
  }

  *(this + 652) = v5 + 2;
  v6[2] = v7;
  v6[3] = a4;
  if (v5 + 5 >= *(this + 616))
  {
    v8 = this;
    *(this + 664) = 1;
    this = CA::OGL::PathFiller::emit_rects_from_points(this, a5, *(this + 56) - 1);
    *(v8 + 652) = 0;
  }

  return this;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,CA::OGL::PathFiller::emit_rects_from_points(int,int)::$_0 &,CA::OGL::PathFiller::ScanlinePoint *,false>(uint64_t result, float *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 2;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = (a2 - v9) >> 3;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        if (*v8 >= *v9)
        {
          return result;
        }

        v63 = *v9;
LABEL_109:
        *v9 = *v8;
LABEL_110:
        *v8 = v63;
        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v66 = *(v9 + 8);
      v67 = *v9;
      v68 = *(v9 + 16);
      if (v66 >= *v9)
      {
        if (v68 < v66)
        {
          v112 = *(v9 + 8);
          v111 = *(v9 + 16);
          *(v9 + 8) = v111;
          *(v9 + 16) = v112;
          v68 = *&v112;
          if (v67 > *&v111)
          {
            v113 = *v9;
            *v9 = v111;
            *(v9 + 8) = v113;
          }
        }
      }

      else
      {
        v69 = *v9;
        LODWORD(v70) = *v9;
        if (v68 < v66)
        {
          *v9 = *(v9 + 16);
          goto LABEL_180;
        }

        *v9 = *(v9 + 8);
        *(v9 + 8) = v69;
        if (v68 < v70)
        {
          *(v9 + 8) = *(v9 + 16);
LABEL_180:
          *(v9 + 16) = v69;
          v68 = v70;
        }
      }

      if (*v8 < v68)
      {
        v119 = *(v9 + 16);
        *(v9 + 16) = *v8;
        *v8 = v119;
        if (*(v9 + 16) < *(v9 + 8))
        {
          v121 = *(v9 + 8);
          v120 = *(v9 + 16);
          *(v9 + 8) = v120;
          *(v9 + 16) = v121;
          if (*v9 > *&v120)
          {
            v122 = *v9;
            *v9 = v120;
            *(v9 + 8) = v122;
          }
        }
      }

      return result;
    }

    if (v10 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,CA::OGL::PathFiller::emit_rects_from_points(int,int)::$_0 &,CA::OGL::PathFiller::ScanlinePoint *,0>(v9, (v9 + 8), (v9 + 16), (v9 + 24), a2 - 1);
    }

LABEL_10:
    if (v10 <= 23)
    {
      v71 = (v9 + 8);
      v73 = v9 == a2 || v71 == a2;
      if (a4)
      {
        if (!v73)
        {
          v74 = 0;
          v75 = v9;
          do
          {
            v76 = v71;
            v77 = *(v75 + 8);
            if (v77 < *v75)
            {
              v78 = *(v75 + 12);
              v79 = v74;
              while (1)
              {
                *(v9 + v79 + 8) = *(v9 + v79);
                if (!v79)
                {
                  break;
                }

                v80 = *(v9 + v79 - 8);
                v79 -= 8;
                if (v80 <= v77)
                {
                  v81 = v9 + v79 + 8;
                  goto LABEL_129;
                }
              }

              v81 = v9;
LABEL_129:
              *v81 = v77;
              *(v81 + 4) = v78;
            }

            v71 = v76 + 2;
            v74 += 8;
            v75 = v76;
          }

          while (v76 + 2 != a2);
        }
      }

      else if (!v73)
      {
        do
        {
          v114 = v71;
          v115 = *(v7 + 8);
          if (v115 < *v7)
          {
            v116 = *(v7 + 12);
            do
            {
              v117 = v71;
              v118 = *(v71 - 1);
              v71 -= 2;
              *v117 = v118;
            }

            while (*(v117 - 4) > v115);
            *v71 = v115;
            *(v71 + 1) = v116;
          }

          v71 = (v114 + 8);
          v7 = v114;
        }

        while ((v114 + 8) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v82 = (v10 - 2) >> 1;
        v83 = v82;
        do
        {
          v84 = v83;
          if (v82 >= v83)
          {
            v85 = (2 * v83) | 1;
            v86 = (v9 + 8 * v85);
            if (2 * v84 + 2 < v10 && *v86 < v86[2])
            {
              v86 += 2;
              v85 = 2 * v84 + 2;
            }

            v87 = v9 + 8 * v84;
            v88 = *v87;
            if (*v86 >= *v87)
            {
              v89 = *(v87 + 4);
              do
              {
                v90 = v86;
                *v87 = *v86;
                if (v82 < v85)
                {
                  break;
                }

                v91 = 2 * v85;
                v85 = (2 * v85) | 1;
                v86 = (v9 + 8 * v85);
                v92 = v91 + 2;
                if (v92 < v10 && *v86 < v86[2])
                {
                  v86 += 2;
                  v85 = v92;
                }

                v87 = v90;
              }

              while (*v86 >= v88);
              *v90 = v88;
              *(v90 + 1) = v89;
            }
          }

          v83 = v84 - 1;
        }

        while (v84);
        do
        {
          v93 = 0;
          v94 = *v9;
          v95 = v9;
          do
          {
            v96 = v95;
            v97 = v95 + 8 * v93;
            v95 = v97 + 8;
            v98 = 2 * v93;
            v93 = (2 * v93) | 1;
            v99 = v98 + 2;
            if (v99 < v10)
            {
              v101 = *(v97 + 16);
              v100 = v97 + 16;
              if (*(v100 - 8) < v101)
              {
                v95 = v100;
                v93 = v99;
              }
            }

            *v96 = *v95;
          }

          while (v93 <= ((v10 - 2) >> 1));
          a2 -= 2;
          if (v95 == a2)
          {
            *v95 = v94;
          }

          else
          {
            *v95 = *a2;
            *a2 = v94;
            v102 = (v95 - v9 + 8) >> 3;
            v103 = v102 < 2;
            v104 = v102 - 2;
            if (!v103)
            {
              v105 = v104 >> 1;
              v106 = (v9 + 8 * v105);
              v107 = *v95;
              if (*v106 < *v95)
              {
                v108 = *(v95 + 4);
                do
                {
                  v109 = v106;
                  *v95 = *v106;
                  if (!v105)
                  {
                    break;
                  }

                  v105 = (v105 - 1) >> 1;
                  v106 = (v9 + 8 * v105);
                  v95 = v109;
                }

                while (*v106 < v107);
                *v109 = v107;
                *(v109 + 1) = v108;
              }
            }
          }

          v103 = v10-- <= 2;
        }

        while (!v103);
      }

      return result;
    }

    v11 = (v9 + 8 * (v10 >> 1));
    v12 = v11;
    v13 = *v8;
    if (v10 >= 0x81)
    {
      v14 = *v11;
      if (*v11 >= *v9)
      {
        if (v13 < v14)
        {
          v18 = *v11;
          *v11 = *v8;
          *v8 = v18;
          if (*v11 < *v9)
          {
            v19 = *v9;
            *v9 = *v11;
            *v11 = v19;
          }
        }
      }

      else
      {
        v15 = *v9;
        if (v13 < v14)
        {
          *v9 = *v8;
          goto LABEL_27;
        }

        *v9 = *v11;
        *v11 = v15;
        if (*v8 < *&v15)
        {
          *v11 = *v8;
LABEL_27:
          *v8 = v15;
        }
      }

      v22 = v11 - 2;
      v23 = *(v11 - 2);
      v24 = *(a2 - 4);
      if (v23 >= *(v9 + 8))
      {
        if (v24 < v23)
        {
          v26 = *v22;
          *v22 = *(a2 - 2);
          *(a2 - 2) = v26;
          if (*v22 < *(v9 + 8))
          {
            v27 = *(v9 + 8);
            *(v9 + 8) = *v22;
            *v22 = v27;
          }
        }
      }

      else
      {
        v25 = *(v9 + 8);
        if (v24 < v23)
        {
          *(v9 + 8) = *(a2 - 2);
          goto LABEL_39;
        }

        *(v9 + 8) = *v22;
        *v22 = v25;
        if (*(a2 - 4) < *&v25)
        {
          *v22 = *(a2 - 2);
LABEL_39:
          *(a2 - 2) = v25;
        }
      }

      v29 = v11[2];
      v28 = (v11 + 2);
      v30 = v29;
      v31 = *(a2 - 6);
      if (v29 >= *(v9 + 16))
      {
        if (v31 < v30)
        {
          v33 = *v28;
          *v28 = *(a2 - 3);
          *(a2 - 3) = v33;
          if (*v28 < *(v9 + 16))
          {
            v34 = *(v9 + 16);
            *(v9 + 16) = *v28;
            *v28 = v34;
          }
        }
      }

      else
      {
        v32 = *(v9 + 16);
        if (v31 < v30)
        {
          *(v9 + 16) = *(a2 - 3);
          goto LABEL_48;
        }

        *(v9 + 16) = *v28;
        *v28 = v32;
        if (*(a2 - 6) < *&v32)
        {
          *v28 = *(a2 - 3);
LABEL_48:
          *(a2 - 3) = v32;
        }
      }

      v35 = *v12;
      v36 = *v22;
      v37 = *v28;
      if (*v12 >= *v22)
      {
        v38 = *v12;
        if (v37 < v35)
        {
          v39 = *v28;
          *v12 = *v28;
          *v28 = v38;
          if (v36 <= *&v39)
          {
            v38 = v39;
          }

          else
          {
            v38 = *v22;
            *v22 = v39;
            *v12 = v38;
          }
        }
      }

      else
      {
        v38 = *v22;
        if (v37 >= v35)
        {
          *v22 = *v12;
          *v12 = v38;
          if (v37 < *&v38)
          {
            v40 = *v28;
            *v12 = *v28;
            *v28 = v38;
            v38 = v40;
          }
        }

        else
        {
          *v22 = *v28;
          *v28 = v38;
          v38 = *v12;
        }
      }

      v41 = *v9;
      *v9 = v38;
      *v12 = v41;
      goto LABEL_59;
    }

    v16 = *v9;
    if (*v9 >= *v11)
    {
      if (v13 < v16)
      {
        v20 = *v9;
        *v9 = *v8;
        *v8 = v20;
        if (*v9 < *v11)
        {
          v21 = *v11;
          *v11 = *v9;
          *v9 = v21;
        }
      }

      goto LABEL_59;
    }

    v17 = *v11;
    if (v13 < v16)
    {
      *v11 = *v8;
LABEL_36:
      *v8 = v17;
      goto LABEL_59;
    }

    *v11 = *v9;
    *v9 = v17;
    if (*v8 < *&v17)
    {
      *v9 = *v8;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v42 = *v9;
LABEL_62:
      v43 = *(v9 + 4);
      v44 = v9;
      do
      {
        v45 = v44;
        v46 = *(v44 + 8);
        v44 += 8;
      }

      while (v46 < v42);
      v47 = a2;
      if (v45 == v9)
      {
        v47 = a2;
        do
        {
          if (v44 >= v47)
          {
            break;
          }

          v49 = *(v47 - 2);
          v47 -= 2;
        }

        while (v49 >= v42);
      }

      else
      {
        do
        {
          v48 = *(v47 - 2);
          v47 -= 2;
        }

        while (v48 >= v42);
      }

      v9 = v44;
      if (v44 < v47)
      {
        v50 = v47;
        do
        {
          v51 = *v9;
          *v9 = *v50;
          *v50 = v51;
          do
          {
            v52 = *(v9 + 8);
            v9 += 8;
          }

          while (v52 < v42);
          do
          {
            v53 = *(v50 - 2);
            v50 -= 2;
          }

          while (v53 >= v42);
        }

        while (v9 < v50);
      }

      if (v9 - 8 != v7)
      {
        *v7 = *(v9 - 8);
      }

      *(v9 - 8) = v42;
      *(v9 - 4) = v43;
      if (v44 < v47)
      {
        goto LABEL_81;
      }

      v54 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CA::OGL::PathFiller::emit_rects_from_points(int,int)::$_0 &,CA::OGL::PathFiller::ScanlinePoint *>(v7, v9 - 8);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CA::OGL::PathFiller::emit_rects_from_points(int,int)::$_0 &,CA::OGL::PathFiller::ScanlinePoint *>(v9, a2);
      if (result)
      {
        a2 = (v9 - 8);
        if (!v54)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v54)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,CA::OGL::PathFiller::emit_rects_from_points(int,int)::$_0 &,CA::OGL::PathFiller::ScanlinePoint *,false>(v7, v9 - 8, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v42 = *v9;
      if (*(v9 - 8) < *v9)
      {
        goto LABEL_62;
      }

      if (*v8 <= v42)
      {
        v56 = v9 + 8;
        do
        {
          v9 = v56;
          if (v56 >= a2)
          {
            break;
          }

          v56 += 8;
        }

        while (*v9 <= v42);
      }

      else
      {
        do
        {
          v55 = *(v9 + 8);
          v9 += 8;
        }

        while (v55 <= v42);
      }

      v57 = a2;
      if (v9 < a2)
      {
        v57 = a2;
        do
        {
          v58 = *(v57 - 2);
          v57 -= 2;
        }

        while (v58 > v42);
      }

      v59 = *(v7 + 4);
      while (v9 < v57)
      {
        v60 = *v9;
        *v9 = *v57;
        *v57 = v60;
        do
        {
          v61 = *(v9 + 8);
          v9 += 8;
        }

        while (v61 <= v42);
        do
        {
          v62 = *(v57 - 2);
          v57 -= 2;
        }

        while (v62 > v42);
      }

      if (v9 - 8 != v7)
      {
        *v7 = *(v9 - 8);
      }

      a4 = 0;
      *(v9 - 8) = v42;
      *(v9 - 4) = v59;
    }
  }

  v64 = *(v9 + 8);
  v65 = *v8;
  if (v64 >= *v9)
  {
    if (v65 < v64)
    {
      v110 = *(v9 + 8);
      *(v9 + 8) = *v8;
      *v8 = v110;
      if (*(v9 + 8) < *v9)
      {
        *v9 = vextq_s8(*v9, *v9, 8uLL);
      }
    }
  }

  else
  {
    v63 = *v9;
    if (v65 < v64)
    {
      goto LABEL_109;
    }

    *v9 = *(v9 + 8);
    *(v9 + 8) = v63;
    if (*v8 < *&v63)
    {
      *(v9 + 8) = *v8;
      goto LABEL_110;
    }
  }

  return result;
}

_DWORD *CA::OGL::PathFiller::flush_rect(_DWORD *this)
{
  if (this[162])
  {
    v1 = this;
    *(*(*this + 16) + 16) = 106;
    this = (*(**this + 392))(*this, v1[162], *(v1 + 74));
    *(*(*v1 + 16) + 497) |= 4u;
    v1[162] = 0;
  }

  return this;
}

float *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,CA::OGL::PathFiller::emit_rects_from_points(int,int)::$_0 &,CA::OGL::PathFiller::ScanlinePoint *,0>(float *result, float *a2, float *a3, void *a4, void *a5)
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

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CA::OGL::PathFiller::emit_rects_from_points(int,int)::$_0 &,CA::OGL::PathFiller::ScanlinePoint *>(uint64_t a1, uint64_t a2)
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
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,CA::OGL::PathFiller::emit_rects_from_points(int,int)::$_0 &,CA::OGL::PathFiller::ScanlinePoint *,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), (a2 - 8));
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

float *CA::OGL::PathFiller::move_to(float *this, double a2)
{
  v3 = this;
  v4 = *(this + 10);
  v5 = *(this + 12);
  *(this + 5) = v5;
  if (vmvn_s8(vceq_f32(v4, v5)).i32[1])
  {
    v6 = a2;
    this = CA::OGL::PathFiller::emit_line(this, v4, v5);
    a2 = v6;
  }

  if (v3[165] < v3[6] && (v3[166] & 1) == 0)
  {
    v3[163] = v3[164];
  }

  v3[164] = v3[163];
  *(v3 + 5) = a2;
  *(v3 + 6) = a2;
  v3[165] = *&a2;
  return this;
}

float *CA::OGL::PathFiller::emit_line(float *this, float32x2_t a2, float32x2_t a3)
{
  v5 = COERCE_DOUBLE(vminnm_f32(a2, a3));
  if (*(&v5 + 1) <= this[9])
  {
    v6 = this;
    v7 = COERCE_DOUBLE(vmaxnm_f32(a2, a3));
    if (*(&v7 + 1) >= this[7] && *&v5 <= this[8])
    {
      if (*&v7 <= this[6])
      {
        v18 = vcgt_f32(a2, a3);
        v19 = -1.0;
        if (v18.i8[4])
        {
          v19 = 1.0;
        }

        return CA::OGL::PathFiller::add_points(this, *(&v5 + 1), *(&v7 + 1), v19, 0);
      }

      else
      {
        v20 = *&v5;
        v21 = *&v7;
        CA::OGL::PathFiller::mark_spans(this, v5, v7);
        v8 = vcvtps_s32_f32((*(v6 + 14) * vsub_f32(v21, v20).f32[0]) / v6[4]);
        if (v8 >= 128)
        {
          v8 = 128;
        }

        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        v10 = 1.0 / v9;
        v11 = 1;
        v12 = vdup_n_s32(0x3F2AAAAAu);
        v13 = vdup_n_s32(0x3EAAAAABu);
        v14 = vdup_n_s32(0x3EAAAAAAu);
        v15 = vdup_n_s32(0x3F2AAAABu);
        v16 = *&a2;
        do
        {
          v17 = vmla_n_f32(vmul_n_f32(a3, v11 * v10), a2, 1.0 - (v11 * v10));
          this = CA::OGL::PathFiller::add_cube(v6, v16, COERCE_DOUBLE(vmla_f32(vmul_f32(*&v16, v12), v13, v17)), COERCE_DOUBLE(vmla_f32(vmul_f32(*&v16, v14), v15, v17)), v17, v21.f32[0]);
          ++v11;
          v16 = *&v17;
          --v9;
        }

        while (v9);
      }
    }
  }

  return this;
}

void CA::OGL::PathFiller::quad_to(uint64_t a1, double _D0, double a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v23 = v4;
  v24 = _D0;
  v25 = *&a3;
  v5 = *(a1 + 660);
  if (v5 <= *&_D0)
  {
    v5 = *&_D0;
  }

  if (v5 <= *&a3)
  {
    v5 = *&a3;
  }

  *(a1 + 660) = v5;
  *(a1 + 40) = a3;
  _S5 = -2.0;
  __asm { FMLA            S6, S5, V0.S[1] }

  if ((_S6 + *(&a3 + 1)) != 0.0 && ((v11 = (v4.f32[1] - *(&_D0 + 1)) / (_S6 + *(&a3 + 1)), v11 > 0.0) ? (_NF = v11 < 1.0) : (_NF = 0), _NF))
  {
    v14 = vmla_n_f32(vmul_n_f32(*&_D0, v11), v4, 1.0 - v11);
    v15 = vmla_n_f32(vmul_n_f32(*&a3, v11), *&_D0, 1.0 - v11);
    v24 = *&v14;
    v25 = vmla_n_f32(vmul_n_f32(v14, 1.0 - v11), v15, v11);
    v26 = v25;
    v27 = v15;
    v28 = a3;
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v16 = &v24;
  v17 = vdup_n_s32(0x3EAAAAAAu);
  v18 = vdup_n_s32(0x3F2AAAABu);
  v19 = vdup_n_s32(0x3F2AAAAAu);
  v20 = vdup_n_s32(0x3EAAAAABu);
  do
  {
    v21 = v16[-1];
    v22 = v16[1];
    if ((vceq_f32(v21, v22).i32[1] & 1) == 0)
    {
      CA::OGL::PathFiller::emit_cube(a1, 0, v21, vmla_f32(vmul_f32(v21, v17), v18, *v16), COERCE_DOUBLE(vmla_f32(vmul_f32(v22, v20), v19, *v16)), v22);
    }

    v16 += 3;
    --v13;
  }

  while (v13);
}

void CA::OGL::PathFiller::emit_cube(uint64_t a1, unint64_t a2, float32x2_t a3, float32x2_t a4, double a5, float32x2_t a6)
{
  v57 = *MEMORY[0x1E69E9840];
  v9 = COERCE_DOUBLE(vminnm_f32(vminnm_f32(a3, a4), vminnm_f32(*&a5, a6)));
  if (*(&v9 + 1) <= *(a1 + 36))
  {
    v11 = COERCE_DOUBLE(vmaxnm_f32(vmaxnm_f32(a3, a4), vmaxnm_f32(*&a5, a6)));
    if (*(&v11 + 1) >= *(a1 + 28) && *&v9 <= *(a1 + 32))
    {
      if (*&v11 <= *(a1 + 24))
      {
        v34 = a6.f32[1];
        if (a6.f32[1] >= a3.f32[1])
        {
          v35 = -1.0;
          v36 = a3.f32[1];
        }

        else
        {
          v35 = 1.0;
          v36 = a6.f32[1];
          v34 = a3.f32[1];
        }

        CA::OGL::PathFiller::add_points(a1, v36, v34, v35, 0);
      }

      else
      {
        v12 = vsub_f32(a6, *&a5);
        v13 = vsub_f32(*&a5, a4);
        v14 = vmul_f32(v13, v13);
        v15 = vsub_f32(a4, a3);
        v16 = vmul_f32(v15, v15);
        v17 = vaddv_f32(vsqrt_f32(vadd_f32(vzip1_s32(v14, v16), vzip2_s32(v14, v16)))) + sqrtf(vaddv_f32(vmul_f32(v12, v12)));
        if ((LODWORD(v17) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v18 = 100.0;
          if (!*(a1 + 641))
          {
            v18 = 6.0;
          }

          if (v17 <= v18)
          {
            v45 = *&a3;
            v47 = LODWORD(a5);
            v49 = a6;
            v37 = a4.f32[1];
            if (*(&v11 + 1) < a4.f32[1])
            {
              v37 = *(&v11 + 1);
            }

            if (*(&v9 + 1) > v37)
            {
              v37 = *(&v9 + 1);
            }

            v42 = v37;
            v43 = a4.i32[0];
            v38 = *(&a5 + 1);
            if (*(&v11 + 1) < *(&a5 + 1))
            {
              v38 = *(&v11 + 1);
            }

            if (*(&v9 + 1) > v38)
            {
              v38 = *(&v9 + 1);
            }

            v40 = v38;
            v41 = *&v11;
            CA::OGL::PathFiller::mark_spans(a1, v9, v11);

            CA::OGL::PathFiller::add_cube(a1, v45, COERCE_DOUBLE(__PAIR64__(LODWORD(v42), v43)), COERCE_DOUBLE(__PAIR64__(LODWORD(v40), v47)), v49, v41);
          }

          else if (a2 >= 0x200)
          {
            v44 = a4;
            v46 = a3;
            v50 = a6;
            if (x_log_get_ogl(void)::once != -1)
            {
              dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
            }

            v39 = x_log_get_ogl(void)::log;
            if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR))
            {
              *buf = 134219776;
              *&buf[4] = v46.f32[0];
              *&buf[12] = 2048;
              *&buf[14] = v46.f32[1];
              *&buf[22] = 2048;
              v52 = v44.f32[0];
              *v53 = 2048;
              *&v53[2] = v44.f32[1];
              *&v53[10] = 2048;
              *&v53[12] = *&a5;
              *&v53[20] = 2048;
              *&v53[22] = *(&a5 + 1);
              *&v53[30] = 2048;
              v54 = v50.f32[0];
              v55 = 2048;
              v56 = v50.f32[1];
              _os_log_error_impl(&dword_183AA6000, v39, OS_LOG_TYPE_ERROR, "too many subdivisions in cubic curve (%a, %a) (%a, %a) (%a, %a) (%a, %a). Stack will most likely overflow. bail out.", buf, 0x52u);
            }
          }

          else
          {
            v20 = 0;
            v21 = vadd_f32(a4, a3);
            v22 = vadd_f32(*&a5, a4);
            v23 = vadd_f32(a6, *&a5);
            v24 = vadd_f32(v22, v21);
            __asm { FMOV            V4.2S, #0.25 }

            v30 = vadd_f32(v23, v22);
            *buf = a3;
            *&buf[8] = vmul_f32(v21, 0x3F0000003F000000);
            *&buf[16] = vmul_f32(v24, _D4);
            v52 = COERCE_DOUBLE(vmul_f32(vadd_f32(v30, v24), 0x3E0000003E000000));
            *v53 = v52;
            *&v53[8] = vmul_f32(v30, _D4);
            *&v53[16] = vmul_f32(v23, 0x3F0000003F000000);
            *&v53[24] = a6;
            v31 = 1;
            v32 = buf;
            do
            {
              v33 = v31;
              CA::OGL::PathFiller::emit_cube(a1, a2 + 1, *v32, *&buf[8 * v20 + 8], *&buf[8 * v20 + 16], *&buf[8 * v20 + 24]);
              v31 = 0;
              v32 = v53;
              v20 = 4;
            }

            while ((v33 & 1) != 0);
          }
        }
      }
    }
  }
}

void CA::OGL::PathFiller::cube_to(uint64_t a1, double _D0, double a3, double a4)
{
  v60[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 40);
  v49 = v5;
  v50 = _D0;
  v51 = a3;
  v52 = a4;
  v6 = *(a1 + 660);
  if (v6 <= *&_D0)
  {
    v6 = *&_D0;
  }

  if (v6 <= *&a3)
  {
    v6 = *&a3;
  }

  if (v6 <= *&a4)
  {
    v6 = *&a4;
  }

  *(a1 + 660) = v6;
  *(a1 + 40) = a4;
  v7 = *(&a4 + 1) - (v5.f32[1] + ((*(&a3 + 1) - *(&_D0 + 1)) * 3.0));
  _S16 = -2.0;
  v9 = *(&_D0 + 1) - v5.f32[1];
  __asm { FMLA            S5, S16, V0.S[1] }

  v13 = _S5 + *(&a3 + 1);
  v14 = -((v7 * (*(&_D0 + 1) - v5.f32[1])) - (v13 * v13));
  if (v14 < 0.0)
  {
    goto LABEL_28;
  }

  if (v7 == 0.0)
  {
    if (v13 != 0.0)
    {
      v15 = v9 * -0.5;
      v16 = INFINITY;
      v17 = v15 / v13;
      goto LABEL_20;
    }
  }

  else if (v13 != 0.0 || v14 != 0.0)
  {
    v18 = sqrtf(v14);
    if (v13 < 0.0)
    {
      v18 = -v18;
    }

    v19 = -(v18 + v13);
    v20 = v19 / v7;
    v16 = v9 / v19;
    if (v20 >= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v20;
    }

    if (v20 > v16)
    {
      v16 = v20;
    }

LABEL_20:
    if (v17 > 0.0 && v17 < 1.0)
    {
      v27 = vmla_n_f32(vmul_n_f32(*&_D0, v17), v5, 1.0 - v17);
      v28 = vmla_n_f32(vmul_n_f32(*&a3, v17), *&_D0, 1.0 - v17);
      v29 = vmla_n_f32(vmul_n_f32(*&a4, v17), *&a3, 1.0 - v17);
      v30 = vmla_n_f32(vmul_n_f32(v27, 1.0 - v17), v28, v17);
      v31 = vmla_n_f32(vmul_n_f32(v28, 1.0 - v17), v29, v17);
      v32 = vmla_n_f32(vmul_n_f32(v30, 1.0 - v17), v31, v17);
      v50 = *&v27;
      v51 = *&v30;
      v52 = *&v32;
      v53 = v32;
      v54 = v31;
      v55 = v29;
      v56 = a4;
      if (v16 <= 0.0 || v16 >= 1.0 || v17 == v16)
      {
        v23 = 2;
        goto LABEL_29;
      }

      v38 = &v57;
      v39 = &v58;
      v40 = &v59;
      v41 = v60;
      v42 = (v16 - v17) / (1.0 - v17);
      v43 = vmla_n_f32(vmul_n_f32(v31, v42), v32, 1.0 - v42);
      v44 = vmla_n_f32(vmul_n_f32(v29, v42), v31, 1.0 - v42);
      v45 = vmla_n_f32(vmul_n_f32(*&a4, v42), v29, 1.0 - v42);
      v46 = vmla_n_f32(vmul_n_f32(v44, v42), v43, 1.0 - v42);
      v47 = vmla_n_f32(vmul_n_f32(v45, v42), v44, 1.0 - v42);
      v48 = vmla_n_f32(vmul_n_f32(v47, v42), v46, 1.0 - v42);
      v54 = v43;
      v55 = v46;
      v56 = *&v48;
      v23 = 3;
    }

    else
    {
      if (v16 <= 0.0 || v16 >= 1.0)
      {
        goto LABEL_28;
      }

      v38 = &v53;
      v39 = &v54;
      v40 = &v55;
      v41 = &v56;
      v35 = vmla_n_f32(vmul_n_f32(*&_D0, v16), v5, 1.0 - v16);
      v36 = vmla_n_f32(vmul_n_f32(*&a3, v16), *&_D0, 1.0 - v16);
      v45 = vmla_n_f32(vmul_n_f32(*&a4, v16), *&a3, 1.0 - v16);
      v37 = vmla_n_f32(vmul_n_f32(v35, 1.0 - v16), v36, v16);
      v47 = vmla_n_f32(vmul_n_f32(v36, 1.0 - v16), v45, v16);
      v48 = vmla_n_f32(vmul_n_f32(v37, 1.0 - v16), v47, v16);
      v50 = *&v35;
      v51 = *&v37;
      v52 = *&v48;
      v23 = 2;
    }

    *v38 = v48;
    *v39 = v47;
    *v40 = v45;
    *v41 = a4;
    goto LABEL_29;
  }

LABEL_28:
  v23 = 1;
LABEL_29:
  v24 = &v51;
  do
  {
    v25 = v24[1];
    v26 = *(v24 - 2);
    if ((vceq_f32(v25, v26).i32[1] & 1) == 0)
    {
      CA::OGL::PathFiller::emit_cube(a1, 0, v26, *(v24 - 1), *v24, v25);
    }

    v24 += 4;
    --v23;
  }

  while (v23);
}