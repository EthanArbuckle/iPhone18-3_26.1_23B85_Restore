void CI::GLContext::bind_arguments(void **this, const CI::ProgramNode *a2, const CGRect *a3, CI::TileTask *a4)
{
  *&v85[116] = *MEMORY[0x1E69E9840];
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v6 = ci_signpost_log_render();
    v7 = *(a2 + 9) | ((*(*this + 35))(this) << 32);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "bind_arguments", &unk_19CFBCBAE, buf, 2u);
    }
  }

  v8 = (*(*this + 35))(this);
  TimerBase::TimerBase(v80, v8, *(a2 + 9), "bind_arguments", 11);
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  *buf = 0u;
  v41 = 0u;
  GetMacroContext(this[49], buf);
  if ((buf[0] & 1) == 0)
  {
    v9 = ci_logger_render();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
    }
  }

  v10 = CI::ProgramNode::mainProgram(a2);
  if ((*(v10->isa + 2))(v10) == 79)
  {
    isa = v10[14].isa;
    v12 = v10[15].isa;
    v13 = v10[16].isa;
    if (CI_VERBOSE_SIGNPOSTS())
    {
      v14 = ci_signpost_log_render();
      v15 = *(a2 + 9) | ((*(*this + 35))(this) << 32);
      if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        *v82 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v15, "render_node_arguments", &unk_19CFBCBAE, v82, 2u);
      }
    }

    v16 = (*(*this + 35))(this);
    TimerBase::TimerBase(v82, v16, *(a2 + 9), "render_node_arguments", 0);
    dispatch_sync(*(a2 + 13), &__block_literal_global_76_0);
    v17 = *(a2 + 16);
    if (CI_VERBOSE_SIGNPOSTS())
    {
      v18 = ci_signpost_log_render();
      v19 = v83;
      if ((v83 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v20 = v18;
        if (os_signpost_enabled(v18))
        {
          LOWORD(v38.origin.x) = 0;
          _os_signpost_emit_with_name_impl(&dword_19CC36000, v20, OS_SIGNPOST_INTERVAL_END, v19, "render_node_arguments", &unk_19CFBCBAE, &v38, 2u);
        }
      }
    }

    TimerBase::~TimerBase(v82);
    if (v17 && isa == *v17 && isa)
    {
      v21 = 0;
      v34 = 0;
      v22 = -80;
      while (2)
      {
        if (v21 > 9)
        {
          v23 = (*(v17 + 2) + v22);
        }

        else
        {
          v23 = &v17[2 * v21 + 6];
        }

        v24 = *(v13 + v21);
        v25 = *v23;
        switch(v24)
        {
          case 1:
          case 2:
          case 3:
          case 4:
            if ((*(*v25 + 16))(v25) == 68)
            {
              if (*(v12 + v21) != -1)
              {
                CI::ProgramNode::roiKeys_of_child(a2, *a3, *(v25 + 8), v82);
                CI::Context::bind_sampler(this, v25, *v82, v34, v24, a4);
                v73(*&buf[8], *(v12 + v21), v34);
                if (*v82)
                {
                  v83 = *v82;
                  operator delete(*v82);
                }
              }

              ++v34;
              goto LABEL_63;
            }

            break;
          case 5:
          case 12:
            if ((*(*v25 + 16))(v25) == 66)
            {
              if (*(v12 + v21) != -1)
              {
                v72(*&buf[8], *(v25 + 7));
              }

              goto LABEL_63;
            }

            break;
          case 6:
          case 13:
            if ((*(*v25 + 16))(v25) == 66)
            {
              if (*(v12 + v21) != -1)
              {
                v74(*&buf[8], *(v25 + 7), *(v25 + 8));
              }

              goto LABEL_63;
            }

            break;
          case 7:
          case 14:
            if ((*(*v25 + 16))(v25) == 66)
            {
              if (*(v12 + v21) != -1)
              {
                v75(*&buf[8], *(v25 + 7), *(v25 + 8), *(v25 + 9));
              }

              goto LABEL_63;
            }

            break;
          case 8:
          case 15:
          case 27:
            if ((*(*v25 + 16))(v25) == 66)
            {
              if (*(v12 + v21) != -1)
              {
                v76(*&buf[8], *(v25 + 7), *(v25 + 8), *(v25 + 9), *(v25 + 10));
              }

              goto LABEL_63;
            }

            break;
          case 9:
          case 16:
            if ((*(*v25 + 16))(v25) == 66)
            {
              if (*(v12 + v21) != -1)
              {
                v77(*&buf[8]);
              }

              goto LABEL_63;
            }

            break;
          case 10:
          case 17:
            if ((*(*v25 + 16))(v25) == 66)
            {
              if (*(v12 + v21) != -1)
              {
                v78(*&buf[8]);
              }

              goto LABEL_63;
            }

            break;
          case 11:
          case 18:
            if ((*(*v25 + 16))(v25) == 66)
            {
              if (*(v12 + v21) != -1)
              {
                v79(*&buf[8]);
              }

              goto LABEL_63;
            }

            break;
          case 19:
            if ((*(*v25 + 16))(v25) == 66)
            {
              v26 = *(v12 + v21);
              if (v26 != -1)
              {
                v73(*&buf[8], v26, *(v25 + 7));
              }

              goto LABEL_63;
            }

            break;
          case 40:
            if ((*(*v25 + 16))(v25) == 68)
            {
              if (*(v12 + v21) == -1)
              {
                goto LABEL_63;
              }

              memset(&v38, 0, sizeof(v38));
              v38.origin.x = CI::Node::region_of_child(a2, *a3);
              v38.origin.y = v28;
              v38.size.width = v29;
              v38.size.height = v30;
              CI::TextureSampler::transform(v25, this, &v38, &v39);
              CI::Vector::Vector(v82, &v39);
              (v78)(*&buf[8], *(v12 + v21), 1, 0, v85);
              v84 = &unk_1F1033F70;
              goto LABEL_61;
            }

            break;
          case 41:
          case 42:
          case 43:
          case 46:
          case 47:
            goto LABEL_63;
          case 44:
            if ((*(*v25 + 16))(v25) != 66)
            {
              break;
            }

            CI::Vector::affine(v25, v82);
            CI::Affine::inverse(v82, &v38);
            CI::Affine::inverse(&v38, &v37);
            CI::Vector::Vector(v82, &v37);
            v27 = *(v12 + v21);
            if (v27 != -1)
            {
              (v78)(*&buf[8], v27, 1, 0, v85);
            }

            v84 = &unk_1F1033F70;
LABEL_61:
            atomic_fetch_add(&dword_1ED7C47BC[64], 0xFFFFFFFF);
LABEL_63:
            ++v21;
            v22 += 8;
            if (isa == v21)
            {
              break;
            }

            continue;
          default:
            x_log("Unhandled type: %d\n", *(v13 + v21));
            goto LABEL_63;
        }

        break;
      }
    }
  }

  if (CI_VERBOSE_SIGNPOSTS())
  {
    v31 = ci_signpost_log_render();
    v32 = v81;
    if (v81 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v33 = v31;
      if (os_signpost_enabled(v31))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v33, OS_SIGNPOST_INTERVAL_END, v32, "bind_arguments", &unk_19CFBCBAE, buf, 2u);
      }
    }
  }

  TimerBase::~TimerBase(v80);
}

uint64_t ___ZN2CI9GLContext16render_root_nodeEPNS_8TileTaskERKNS_9parentROIEU13block_pointerFvvES7__block_invoke_38(void *a1)
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  memset(v6, 0, sizeof(v6));
  GetMacroContext(*(*(a1[5] + 8) + 24), v6);
  if ((v6[0] & 1) == 0)
  {
    v2 = ci_logger_render();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI9GLContext16render_root_nodeEPNS_8TileTaskERKNS_9parentROIEU13block_pointerFvvES7__block_invoke_38_cold_1();
    }
  }

  (v7)(*(&v6[0] + 1), a1[6], 0, -1);
  (v12)(*(&v6[0] + 1), a1[6]);
  v3 = a1[7];
  *(v3 + 40) = CFAbsoluteTimeGetCurrent();
  v4 = a1[7];
  if (v4)
  {
    CI::Object::unref(v4);
  }

  return (*(a1[4] + 16))();
}

void CI::GLContext::render_intermediate_node(CI::GLContext *a1, CI::TileTask *a2, CI::parentROI *this, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v98 = *MEMORY[0x1E69E9840];
  v11 = *this;
  v12 = CI::parentROI::roi(this);
  v65.origin.x = v12;
  v65.origin.y = v13;
  v65.size.width = v14;
  v65.size.height = v15;
  if (a4 && v11)
  {
    x = v12;
    y = v13;
    width = v14;
    height = v15;
    if (CI_VERBOSE_SIGNPOSTS())
    {
      v20 = ci_signpost_log_render();
      v21 = *(v11 + 36) | ((*(*a1 + 280))(a1) << 32);
      if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
      {
        *buf = 68289026;
        *&buf[4] = 256;
        *&buf[8] = 2082;
        *&buf[10] = CI::Context::programName(v11, v22);
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v21, "render_node", "%{public}.256s", buf, 0x12u);
      }
    }

    v23 = (*(*a1 + 280))(a1);
    TimerBase::TimerBase(v63, v23, *(v11 + 36), "render_node", 0);
    v99.origin.x = x;
    v99.origin.y = y;
    v99.size.width = width;
    v99.size.height = height;
    CI::TileTask::addROIForNode(a2, v11, v99);
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    memset(buf, 0, sizeof(buf));
    GetMacroContext(*(a1 + 49), buf);
    if ((buf[0] & 1) == 0)
    {
      v24 = ci_logger_render();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
      }
    }

    v25 = *(v11 + 48);
    if ((*(*v25 + 16))(v25) < 47 || (*(*v25 + 16))(v25) > 49)
    {
      CI::GLContext::set_framebuffer(a1, *(a1 + 188));
      v34 = v87;
      v35 = *&buf[8];
      (*(*a4 + 24))(&v66, a4);
      v34(v35, 36160, 36064, 3553, LODWORD(v66.a), 0);
      if (*(v11 + 149) == 1)
      {
        v100 = *(*(*a4 + 32))(a4);
        MidY = CGRectGetMidY(v100);
        v66.b = 0.0;
        v66.c = 0.0;
        v66.a = 1.0;
        *&v66.d = xmmword_19CF25100;
        v66.ty = MidY + MidY;
        v101.origin.x = x;
        v101.origin.y = y;
        v101.size.width = width;
        v101.size.height = height;
        v102 = CGRectApplyAffineTransform(v101, &v66);
        x = v102.origin.x;
        y = v102.origin.y;
        width = v102.size.width;
        height = v102.size.height;
      }

      v37 = x - *(*(*a4 + 32))(a4);
      v103.origin.y = y - *((*(*a4 + 32))(a4) + 8);
      v103.origin.x = v37;
      v103.size.width = width;
      v103.size.height = height;
      CI::GLContext::set_viewport(a1, v103);
      CI::GLContext::set_blend(a1, 0);
      if (CI_VERBOSE_SIGNPOSTS())
      {
        v38 = ci_signpost_log_render();
        v39 = *(v11 + 36) | ((*(*a1 + 280))(a1) << 32);
        if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
        {
          LOWORD(v66.a) = 0;
          _os_signpost_emit_with_name_impl(&dword_19CC36000, v38, OS_SIGNPOST_INTERVAL_BEGIN, v39, "render_node_mainProgram", &unk_19CFBCBAE, &v66, 2u);
        }
      }

      v40 = (*(*a1 + 280))(a1);
      TimerBase::TimerBase(&v66, v40, *(v11 + 36), "render_node_mainProgram", 0);
      v41 = CI::ProgramNode::mainProgram(v11);
      if ((*(*v41 + 16))(v41) != 79)
      {
        v41 = 0;
      }

      if (CI_VERBOSE_SIGNPOSTS())
      {
        v42 = ci_signpost_log_render();
        b = v66.b;
        if ((*&v66.b - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v44 = v42;
          if (os_signpost_enabled(v42))
          {
            *v59 = 0;
            _os_signpost_emit_with_name_impl(&dword_19CC36000, v44, OS_SIGNPOST_INTERVAL_END, *&b, "render_node_mainProgram", &unk_19CFBCBAE, v59, 2u);
          }
        }
      }

      TimerBase::~TimerBase(&v66);
      v45 = v41[37];
      if (v45 || ((*(*v41 + 80))(v41, *(v11 + 36)), v45 = v41[37], v45))
      {
        CI::GLContext::set_program(a1, v45);
        CI::GLContext::bind_arguments(a1, v11, &v65, a2);
        CI::GLContext::quad(a1, *(v11 + 36), *(v11 + 149), &v65, 0);
      }
    }

    else
    {
      v26 = *(v11 + 48);
      if (*(v26 + 243) == 1 && (*(*v26 + 40))(*(v11 + 48)) >= 1)
      {
        if (CI_VERBOSE_SIGNPOSTS())
        {
          log = ci_signpost_log_render();
          v27 = *(v26 + 36) | ((*(*a1 + 280))(a1) << 32);
          if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(log))
          {
            v28 = (*(*v26 + 24))(v26);
            LODWORD(v66.a) = 138543362;
            *(&v66.a + 4) = v28;
            _os_signpost_emit_with_name_impl(&dword_19CC36000, log, OS_SIGNPOST_INTERVAL_BEGIN, v27, "processor_syncinputs", "%{public}@", &v66, 0xCu);
          }
        }

        v29 = (*(*a1 + 280))(a1);
        TimerBase::TimerBase(&v66, v29, *(v26 + 36), "processor_syncinputs", 0);
        CI::GLContext::flush_render(a1);
        if (CI_VERBOSE_SIGNPOSTS())
        {
          v30 = ci_signpost_log_render();
          v31 = v66.b;
          if ((*&v66.b - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v32 = v30;
            if (os_signpost_enabled(v30))
            {
              *v59 = 0;
              _os_signpost_emit_with_name_impl(&dword_19CC36000, v32, OS_SIGNPOST_INTERVAL_END, *&v31, "processor_syncinputs", &unk_19CFBCBAE, v59, 2u);
            }
          }
        }

        TimerBase::~TimerBase(&v66);
      }

      v33 = (**a4)(a4);
      CI::Context::render_processor_node(a1, a2, this, v33, 0);
    }

    if (CI_VERBOSE_SIGNPOSTS())
    {
      v46 = ci_signpost_log_render();
      v47 = *(v11 + 36) | ((*(*a1 + 280))(a1) << 32);
      if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
      {
        LOWORD(v66.a) = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v46, OS_SIGNPOST_INTERVAL_BEGIN, v47, "after_render", &unk_19CFBCBAE, &v66, 2u);
      }
    }

    v48 = (*(*a1 + 280))(a1);
    TimerBase::TimerBase(&v66, v48, *(v11 + 36), "after_render", 8);
    *v59 = 0;
    v60 = v59;
    v61 = 0x2000000000;
    v62 = *(a1 + 52);
    inserted = CI::GLContext::insert_fence(a1);
    v50 = CI::Context::render_completion_queue(inserted);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CI9GLContext24render_intermediate_nodeEPNS_8TileTaskERKNS_9parentROIEPNS_14intermediate_tEbU13block_pointerFvvE_block_invoke;
    block[3] = &unk_1E75C4998;
    block[5] = v59;
    block[6] = inserted;
    block[4] = a6;
    dispatch_async(v50, block);
    _Block_object_dispose(v59, 8);
    if (CI_VERBOSE_SIGNPOSTS())
    {
      v51 = ci_signpost_log_render();
      v52 = v66.b;
      if ((*&v66.b - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v53 = v51;
        if (os_signpost_enabled(v51))
        {
          *v59 = 0;
          _os_signpost_emit_with_name_impl(&dword_19CC36000, v53, OS_SIGNPOST_INTERVAL_END, *&v52, "after_render", &unk_19CFBCBAE, v59, 2u);
        }
      }
    }

    TimerBase::~TimerBase(&v66);
    if (CI_VERBOSE_SIGNPOSTS())
    {
      v54 = ci_signpost_log_render();
      v55 = v64;
      if (v64 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v56 = v54;
        if (os_signpost_enabled(v54))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19CC36000, v56, OS_SIGNPOST_INTERVAL_END, v55, "render_node", &unk_19CFBCBAE, buf, 2u);
        }
      }
    }

    TimerBase::~TimerBase(v63);
  }
}

uint64_t ___ZN2CI9GLContext24render_intermediate_nodeEPNS_8TileTaskERKNS_9parentROIEPNS_14intermediate_tEbU13block_pointerFvvE_block_invoke(void *a1)
{
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  memset(v4, 0, sizeof(v4));
  GetMacroContext(*(*(a1[5] + 8) + 24), v4);
  if ((v4[0] & 1) == 0)
  {
    v2 = ci_logger_render();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI9GLContext16render_root_nodeEPNS_8TileTaskERKNS_9parentROIEU13block_pointerFvvES7__block_invoke_38_cold_1();
    }
  }

  (v5)(*(&v4[0] + 1), a1[6], 0, -1);
  (v10)(*(&v4[0] + 1), a1[6]);
  return (*(a1[4] + 16))();
}

uint64_t CI::GLContext::pre_render(CI::GLContext *this)
{
  v2 = *(this + 226);
  v3 = CI_FORCE_GPU_PRIORITY();
  if (v3 > 0x4Bu)
  {
    if (v3 != 76)
    {
      if (v3 == 77)
      {
        v2 = 4;
      }

      else if (v3 == 78)
      {
        v2 = 1;
      }

      goto LABEL_13;
    }

LABEL_12:
    v2 = 2;
    goto LABEL_13;
  }

  if (!v3)
  {
    if (!CI::originating_process_is_in_background(v3))
    {
      goto LABEL_13;
    }

    x_log("Using low GPU priority for background rendering.\n");
    goto LABEL_12;
  }

  if (v3 == 72)
  {
    v2 = 0;
  }

LABEL_13:
  CIEAGLContextSetParameter(*(this + 49), 608, v2);
  return 1;
}

void CI::GLContext::readback_bitmap(uint64_t a1, void *a2, int *a3)
{
  v72 = *MEMORY[0x1E69E9840];
  v6 = ci_signpost_log_render();
  v7 = (*(*a1 + 280))(a1) << 32;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v8 = a2[10];
    v9 = a2[11];
    *buf = 134218240;
    *&buf[4] = v8;
    *&buf[12] = 2048;
    *&buf[14] = v9;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "readback_bitmap", "[%zu %zu]", buf, 0x16u);
  }

  v10 = (*(*a1 + 280))(a1);
  TimerBase::TimerBase(&v36, v10, 0, "readback_bitmap", 7);
  if (a2)
  {
    *buf = *a3;
    *&buf[4] = 0;
    API = CIEAGLContextGetAPI(*(a1 + 392));
    v12 = CI::gl_format_info_for_format(buf, API);
    v14 = v13;
    v15 = *(a1 + 392);
    v16 = *(a1 + 512);
    v17 = *(a1 + 520);
    v18 = a2[9];
    v19 = a2[12];
    v20 = CI::format_bytes_per_pixel(*a3);
    v21 = v16 < 1 || v17 < 1;
    v22 = v21 || v19 == 0;
    if (!v22 && v20 != 0)
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      memset(buf, 0, sizeof(buf));
      GetMacroContext(v15, buf);
      if ((buf[0] & 1) == 0)
      {
        v27 = ci_logger_render();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          CI::GLTextureManager::release_texture(v15, v27, v28, v29, v30, v31, v32, v33);
        }
      }

      v38 = 0;
      (v63)(*&buf[8], 3333, &v38);
      v34 = v20 * v16;
      if (v20 * v16 == v19)
      {
        v71(*&buf[8], 0, 0, v16, v17, HIDWORD(v12), v14, v18);
      }

      else
      {
        if ((v18 & 1) != 0 || ((v34 + 1) & 0xFFFFFFFFFFFFFFFELL) != v19)
        {
          if ((v18 & 3) != 0 || ((v34 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v19)
          {
            if ((v18 & 7) != 0 || ((v34 + 7) & 0xFFFFFFFFFFFFFFF8) != v19)
            {
              if (CIEAGLContextGetAPI(v15) < 3 || v19 % v20)
              {
                v35 = 0;
                do
                {
                  v71(*&buf[8], 0, v35++, v16, 1, HIDWORD(v12), v14, v18);
                  v18 += v19;
                }

                while (v17 != v35);
              }

              else
              {
                v70(*&buf[8], 3330, v19 / v20);
                v71(*&buf[8], 0, 0, v16, v17, HIDWORD(v12), v14, v18);
                v70(*&buf[8], 3330, 0);
              }

              goto LABEL_16;
            }

            v70(*&buf[8], 3333, 8uLL);
          }

          else
          {
            v70(*&buf[8], 3333, 4uLL);
          }
        }

        else
        {
          v70(*&buf[8], 3333, 2uLL);
        }

        v71(*&buf[8], 0, 0, v16, v17, HIDWORD(v12), v14, v18);
        v70(*&buf[8], 3333, v38);
      }
    }
  }

LABEL_16:
  v24 = ci_signpost_log_render();
  v25 = v37;
  if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v26 = v24;
    if (os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v26, OS_SIGNPOST_INTERVAL_END, v25, "readback_bitmap", &unk_19CFBCBAE, buf, 2u);
    }
  }

  TimerBase::~TimerBase(&v36);
}

uint64_t CI::GLContext::format_is_directly_supported_for_input(uint64_t a1, int a2)
{
  if (CI::format_is_ycc_biplanar(a2))
  {
    v4 = CI::format_of_plane_old(a2, 0);
    v5 = CI::format_of_plane_old(a2, 1);
    LODWORD(v4) = (*(*a1 + 432))(a1, v4);
    return v4 & (*(*a1 + 432))(a1, v5);
  }

  API = CIEAGLContextGetAPI(*(a1 + 392));
  result = 0;
  v8 = API == 3;
  v9 = 1;
  if (a2 <= 784)
  {
    if (((a2 - 257) > 0x14 || ((1 << (a2 - 1)) & 0x1802BD) == 0) && (a2 - 532) >= 2)
    {
      if (a2 != 784)
      {
        return result;
      }

      return 0;
    }

    return v9;
  }

  if (a2 <= 2308)
  {
    if ((a2 - 2053) > 3 || a2 == 2055)
    {
      v9 = v8;
      if (a2 != 785)
      {
        if (a2 != 1800)
        {
          return result;
        }

        return CI_DISABLE_WORKAROUND() == 28765295;
      }
    }

    return v9;
  }

  if ((a2 - 2309) < 2)
  {
    return v9;
  }

  if (a2 == 2567)
  {
    return *(a1 + 880) < 0;
  }

  v9 = v8;
  if (a2 == 2312)
  {
    return v9;
  }

  return result;
}

BOOL CI::GLContext::format_is_directly_supported_for_output(uint64_t a1, int a2, int a3)
{
  API = CIEAGLContextGetAPI(*(a1 + 392));
  result = 0;
  if (a2 > 1798)
  {
    if (a2 <= 2308)
    {
      if ((a2 - 2053) > 3 || a2 == 2055)
      {
        if (a2 != 1799)
        {
          return result;
        }

        return a3 != 1;
      }

      return (*(a1 + 880) >> 3) & 1;
    }

    if ((a2 - 2309) > 3 || a2 == 2311)
    {
      if (a2 != 2567)
      {
        return result;
      }

      return a3 == 2 && *(a1 + 880) < 0;
    }

    return 0;
  }

  if (a2 <= 273)
  {
    v8 = 1;
    if (a2 <= 263)
    {
      if ((a2 - 261) >= 2)
      {
        if (a2 != 263)
        {
          return result;
        }

        return a3 != 1;
      }

      return v8;
    }

    if (a2 == 264)
    {
      return v8;
    }

    if (a2 != 266)
    {
      return result;
    }

    return a3 == 1;
  }

  if (a2 > 783)
  {
    if (a2 != 784)
    {
      if (a2 != 785)
      {
        return result;
      }

      return API == 3;
    }

    return 0;
  }

  if (a2 == 274 || a2 == 530)
  {
    return (*(a1 + 880) >> 2) & 1;
  }

  return result;
}

uint64_t CI::GLContext::bind_cgimage(void ***a1, CGImage *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  v10 = CI::GLTextureManager::texture_for_CGImage(a1[53], a2, a3);
  v11 = (*a1)[9];

  return (v11)(a1, v10, 3553, a4, a5, a6);
}

BOOL CI::GLContext::bind_surface(uint64_t a1, IOSurfaceRef buffer, int *a3, char a4, int a5, int a6, char a7, int a8, int a9)
{
  if (buffer)
  {
    if (a5)
    {
      v15 = 9729;
    }

    else
    {
      v15 = 9728;
    }

    if (a6)
    {
      v16 = 33071;
    }

    else
    {
      v16 = 33069;
    }

    if (IOSurfaceGetPlaneCount(buffer) == 2)
    {
      v17 = CI::format_of_plane_old(*a3, a9);
      v18 = *(a1 + 424);
      v22 = v17;
      v23 = 0;
      v19 = *(v18 + 104);
      block = MEMORY[0x1E69E9820];
      v25 = 0x40000000;
      v26 = ___ZN2CI16GLTextureManager16attach_IOSurfaceEP11__IOSurfacebiRKNS_17TextureDescriptorEiiibb_block_invoke;
      v27 = &__block_descriptor_tmp_13_1;
      v28 = v18;
      v29 = buffer;
      v35 = 1;
      v30 = &v22;
    }

    else
    {
      v20 = *(a1 + 424);
      v19 = *(v20 + 104);
      block = MEMORY[0x1E69E9820];
      v25 = 0x40000000;
      v26 = ___ZN2CI16GLTextureManager16attach_IOSurfaceEP11__IOSurfacebiRKNS_17TextureDescriptorEiiibb_block_invoke;
      v27 = &__block_descriptor_tmp_13_1;
      v28 = v20;
      v29 = buffer;
      v35 = 0;
      v30 = a3;
    }

    v31 = a9;
    v32 = a8;
    v36 = a7;
    v37 = a4;
    v33 = v15;
    v34 = v16;
    dispatch_sync(v19, &block);
  }

  return buffer != 0;
}

uint64_t CI::GLContext::bind_texture(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  if (a2)
  {
    v6 = a3 == 3553;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (v6)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    GetMacroContext(*(a1 + 392), &v16);
    if ((v16 & 1) == 0)
    {
      v12 = ci_logger_render();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
      }
    }

    (v17)(*(&v16 + 1), (a6 + 33984));
    (*(&v20 + 1))(*(&v16 + 1), 3553, a2);
    if (a4)
    {
      v13 = 9729;
    }

    else
    {
      v13 = 9728;
    }

    if (a5)
    {
      v14 = 33071;
    }

    else
    {
      v14 = 33069;
    }

    v48(*(&v16 + 1), 3553, 10240, v13);
    v48(*(&v16 + 1), 3553, 10241, v13);
    v48(*(&v16 + 1), 3553, 10242, v14);
    v48(*(&v16 + 1), 3553, 10243, v14);
  }

  return v7;
}

uint64_t CI::GLContext::supported_compute_features(void **this)
{
  if (CIEAGLContextGetAPI(this[49]) == 3)
  {
    return 36;
  }

  else
  {
    return 32;
  }
}

BOOL CI::GLContext::supports_sRGB_texture_for_format(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 2567:
      v2 = 8;
      goto LABEL_7;
    case 266:
      v2 = 6;
      goto LABEL_7;
    case 264:
      v2 = 7;
LABEL_7:
      API = CIEAGLContextGetAPI(*(a1 + 392));
      return CIGLGetFormatInfo(API, v2) != 0;
  }

  return 0;
}

uint64_t CI::GLContext::blitSurface(void **a1, CI *a2, unsigned int *a3, uint64_t a4, unsigned int *a5, uint64_t a6)
{
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  GetMacroContext(a1[49], v47);
  if ((v47[0] & 1) == 0)
  {
    v13 = ci_logger_render();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
    }
  }

  v14 = CI::format_from_IOSurface(a2, v12);
  if (!(*(*a1 + 55))(a1, v14, 1))
  {
    return 0;
  }

  API = CIEAGLContextGetAPI(a1[49]);
  v16 = CI::gl_format_info_for_format(a6, API);
  v17 = v16;
  v19 = v18;
  v20 = HIDWORD(v16);
  v21 = (v73)(*(&v47[0] + 1), 7936);
  v22 = v19 == 5126 || v19 == 5131;
  if (v22 && v20 == 6403)
  {
    v23 = "NVIDIA";
    v24 = 6;
    goto LABEL_15;
  }

  if (v19 == 5123 && v20 == 6408)
  {
    v23 = "Intel";
    v24 = 5;
LABEL_15:
    if (strncmp(v21, v23, v24))
    {
      goto LABEL_16;
    }

    return 0;
  }

LABEL_16:
  v46 = 0;
  v45 = 0;
  (v70)(*(&v47[0] + 1), 36006, &v46);
  (v70)(*(&v47[0] + 1), 32873, &v45);
  (*(&v67 + 1))(*(&v47[0] + 1), 1, &v46 + 4);
  v44 = 0;
  v40 = a1[52];
  (*(&v66 + 1))(*(&v47[0] + 1), 1, &v44);
  (*(&v48 + 1))(*(&v47[0] + 1), 36160, v44);
  v25 = v66;
  v26 = *(&v47[0] + 1);
  (*(*a4 + 24))(&v43, a4);
  v25(v26, 36160, 36064, 3553, v43, 0);
  v27 = &off_19CF22000;
  if ((v52)(*(&v47[0] + 1), 36160) == 36053)
  {
    v39 = a3;
    (*(&v49 + 1))(*(&v47[0] + 1), 3553, HIDWORD(v46));
    v28 = a1[49];
    Width = IOSurfaceGetWidth(a2);
    Height = IOSurfaceGetHeight(a2);
    v38 = (v73)(*(&v47[0] + 1), 7936);
    if (CIEAGLContextTexImageIOSurface(v28, 0xDE1u, Width, Height, v17, v20, v19, a2, 0))
    {
      (*(&v49 + 1))(*(&v47[0] + 1), 3553, HIDWORD(v46));
      (*(&v54 + 1))(*(&v47[0] + 1), 3553, 0, *v39, v39[1], *a5, a5[1], a5[2], *(a5 + 2), v38);
      inserted = CI::GLContext::insert_fence(a1);
      v32 = CI::Context::render_completion_queue(inserted);
      block[0] = MEMORY[0x1E69E9820];
      v27 = &off_19CF22000;
      block[1] = 0x40000000;
      block[2] = ___ZNK2CI9GLContext11blitSurfaceEP11__IOSurface5IRectPNS_14intermediate_tES3_RKNS_17TextureDescriptorE_block_invoke;
      block[3] = &__block_descriptor_tmp_45;
      block[4] = a1;
      v33 = v40;
      block[5] = v40;
      block[6] = inserted;
      block[7] = a4;
      dispatch_async(v32, block);
      v34 = 1;
    }

    else
    {
      v34 = 0;
      inserted = 0;
      v33 = v40;
      v27 = &off_19CF22000;
    }
  }

  else
  {
    v34 = 0;
    inserted = 0;
    v33 = v40;
  }

  (v56)(*(&v47[0] + 1), 1, &v44);
  (*(&v58 + 1))(*(&v47[0] + 1), 1, &v46 + 4);
  (*(&v48 + 1))(*(&v47[0] + 1), 36160, v46);
  v35 = (*(&v49 + 1))(*(&v47[0] + 1), 3553, v45);
  v36 = CI::Context::render_completion_queue(v35);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = *(v27 + 438);
  v41[2] = ___ZNK2CI9GLContext11blitSurfaceEP11__IOSurface5IRectPNS_14intermediate_tES3_RKNS_17TextureDescriptorE_block_invoke_46;
  v41[3] = &__block_descriptor_tmp_47;
  v41[4] = v33;
  v41[5] = inserted;
  dispatch_async(v36, v41);
  return v34;
}

void ___ZNK2CI9GLContext11blitSurfaceEP11__IOSurface5IRectPNS_14intermediate_tES3_RKNS_17TextureDescriptorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  memset(v5, 0, sizeof(v5));
  GetMacroContext(*(a1 + 40), v5);
  if ((v5[0] & 1) == 0)
  {
    v3 = ci_logger_render();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
    }
  }

  (v6)(*(&v5[0] + 1), *(a1 + 48), 0, -1);
  v4 = (*(*v2 + 112))(v2);
  CI::TextureManager::complete_intermediate(v4, 60, *(a1 + 56));
}

uint64_t ___ZNK2CI9GLContext11blitSurfaceEP11__IOSurface5IRectPNS_14intermediate_tES3_RKNS_17TextureDescriptorE_block_invoke_46(uint64_t a1)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  memset(v4, 0, sizeof(v4));
  GetMacroContext(*(a1 + 32), v4);
  if ((v4[0] & 1) == 0)
  {
    v2 = ci_logger_render();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1();
    }
  }

  return (v5)(*(&v4[0] + 1), *(a1 + 40));
}

const char *CI::GLContext::deviceName(CI::GLContext *this)
{
  if (*(this + 112))
  {
    return *(this + 112);
  }

  else
  {
    return "Unknown OpenGL Device";
  }
}

uint64_t CI::GLContext::max_render_load_bytes(CI::GLContext *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    return v1 << 20;
  }

  else
  {
    return 0x8000000;
  }
}

uint64_t CI::GLContext::supports_sample_mode(uint64_t a1, int a2, int a3)
{
  if (a2 == 1)
  {
    return CI::format_is_full_float(a3) ^ 1;
  }

  else
  {
    return 1;
  }
}

double CI::GLContext::sampler_transform_for_extent@<D0>(const CGRect *a1@<X1>, double *a2@<X8>)
{
  y = a1->origin.y;
  v4 = 1.0 / a1->size.height;
  v5 = a1->origin.x * -0.0 - y * v4 + 0.0;
  v6 = 1.0 / a1->size.width;
  v7 = y * -0.0 - a1->origin.x * v6;
  *a2 = v6 + 0.0;
  a2[1] = v4 * 0.0 + 0.0;
  a2[2] = v6 * 0.0 + 0.0;
  a2[3] = v4 + 0.0;
  result = v7 + 0.0;
  a2[4] = result;
  a2[5] = v5;
  return result;
}

void *std::__list_imp<CI::attached_surface_t *>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void ___ZN2CIL18CI_SUBDIVIDE_QUADSEv_block_invoke()
{
  v0 = getenv("CI_SUBDIVIDE_QUADS");
  if (v0)
  {
    *&v1 = atof(v0);
  }

  else
  {
    v1 = CI::CI_SUBDIVIDE_QUADS(void)::v;
  }

  CI::CI_SUBDIVIDE_QUADS(void)::v = v1;
}

void *CI::InstanceCounted<(CI::Type)66>::~InstanceCounted(void *result)
{
  *result = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47BC[64], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)66>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47BC[64], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

uint64_t std::list<CI::attached_surface_t *>::splice(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      v6 = 1;
      if (v5 != a4)
      {
        v7 = a4;
        do
        {
          v7 = v7[1];
          ++v6;
        }

        while (v7 != v5);
      }

      *(a3 + 16) -= v6;
      *(result + 16) += v6;
    }

    v8 = v5[1];
    v9 = *a4;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a2;
    *(v10 + 8) = a4;
    *a4 = v10;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

void *CI::InstanceCounted<(CI::Type)79>::~InstanceCounted(void *result)
{
  *result = &unk_1F1033F98;
  atomic_fetch_add(&dword_1ED7C47BC[77], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)79>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1033F98;
  atomic_fetch_add(&dword_1ED7C47BC[77], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void *CI::InstanceCounted<(CI::Type)84>::~InstanceCounted(void *result)
{
  *result = &unk_1F1033FC0;
  atomic_fetch_add(&dword_1ED7C47BC[82], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)84>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1033FC0;
  atomic_fetch_add(&dword_1ED7C47BC[82], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void ___ZN2CI19MetalTextureManagerC2EPNS_12MetalContextE_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = ci_signpost_log_render();
  v6 = *(a1 + 40);
  if (((v6 << 32) - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v5;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v6 << 32, "release_surface_block", &unk_19CFBCBAE, buf, 2u);
      v6 = *(a1 + 40);
    }
  }

  TimerBase::TimerBase(buf, v6, 0, "release_surface_block", 32);
  v8 = *(v4 + 136);
  v9 = *(v8 + 8);
  while (v9 != v8)
  {
    v10 = v9 + 8;
    v9 = *(v9 + 8);
    v13 = *(v10 + 8);
    if ((**v13)(v13) == a2)
    {
      v12 = *(v13 + 8);
      (**v4)(v4, &v12);
      v12 = 0uLL;
      std::list<CI::attached_surface_t *>::remove(*(v4 + 136), &v13);
      v11 = (**v13)(v13);
      CFRelease(v11);
      if (v13)
      {
        (*(*v13 + 48))(v13);
      }
    }

    v8 = *(v4 + 136);
  }

  _ZZZN2CI19MetalTextureManagerC1EPNS_12MetalContextEEUb_EN13SignpostTimerD1Ev(buf);
}

void sub_19CE4E214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _ZZZN2CI19MetalTextureManagerC1EPNS_12MetalContextEEUb_EN13SignpostTimerD1Ev(va);
  _Unwind_Resume(a1);
}

void _ZZZN2CI19MetalTextureManagerC1EPNS_12MetalContextEEUb_EN13SignpostTimerD1Ev(TimerBase *a1)
{
  v2 = ci_signpost_log_render();
  v3 = *(a1 + 1);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v2;
    if (os_signpost_enabled(v2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "release_surface_block", &unk_19CFBCBAE, v5, 2u);
    }
  }

  TimerBase::~TimerBase(a1);
}

void CI::MetalTextureManager::~MetalTextureManager(CI::MetalTextureManager *this)
{
  *this = &unk_1F1033FE8;
  v2 = *(this + 12);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZN2CI19MetalTextureManager19purge_intermediatesEm_block_invoke;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v3[4] = this;
  v3[5] = 0;
  dispatch_async(v2, v3);
  dispatch_sync(*(this + 12), &__block_literal_global_83);
  CI::TextureManager::remove_all(this);
  if (CI_RECYCLE_METAL_TEXTURES() && CI_IOSURFACE_INTERMEDIATES())
  {
    RemoveReleaseSurfaceBlock(*(this + 13));
  }

  CI::TextureManager::~TextureManager(this);
}

{
  CI::MetalTextureManager::~MetalTextureManager(this);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::MetalTextureManager::wiredBytes(CI::MetalTextureManager *this)
{
  v1 = *(this + 21);
  v2 = *(v1 + 1880);
  if (v2)
  {
    v3 = [*(v1 + 1880) totalSize];
    return v3 - [v2 maxAvailableAllocationSize];
  }

  else
  {

    return CI::TextureManager::wiredBytes(this);
  }
}

uint64_t CI::MetalTextureManager::convert_to_sRGB(uint64_t a1, void *a2)
{
  (*(*a2 + 24))(v15, a2);
  v4 = v15[0];
  LOBYTE(v15[0]) = 0;
  result = CIFormatFromCIMetalTextureFormat([v4 pixelFormat], v15);
  if ((v15[0] & 1) == 0)
  {
    v6 = CIMetalFormatForFormat(result, 1);
    v7 = [v4 width];
    v8 = [v4 height];
    v9 = *(a1 + 168);
    v10 = *(v9 + 2008);
    v11 = [*(v9 + 392) device];
    v12 = (**a2)(a2);
    v13 = CIMetalTextureCreateFromPaddedIOSurface(v7, v8, v10, v11, v12, 0, v6, [v4 usage]);
    (*(*a2 + 24))(v14, a2);
    result = (**a1)(a1, v14);
    a2[1] = v13;
    a2[2] = 0;
  }

  return result;
}

uint64_t CI::MetalTextureManager::create_intermediate(uint64_t a1, unsigned __int8 *a2, CI *this, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v13 = CI::format_from_IOSurface_ignore_values(this, a2);
  v14 = *(a1 + 168);
  v30 = *a5;
  v31 = *(a5 + 16);
  CI::Context::swizzler_for_output(v14, v13, &v30, 1, v33);
  v15 = CIMetalFormatForFormat(v33[0], (a2[4] >> 1) & 1);
  v16 = CIMetalFormatForFormat(v33[1], (a2[4] >> 1) & 1);
  PixelFormat = IOSurfaceGetPixelFormat(this);
  v18 = PixelFormat >> 24;
  *&v30 = 0;
  *(&v30 + 1) = &v30;
  v31 = 0x2020000000;
  v20 = (PixelFormat & 0xFD000000) == 0x2D000000 || v18 == 38 || v18 == 124;
  v32 = 0;
  v21 = *(a1 + 104);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2CI19MetalTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke;
  block[3] = &unk_1E75C4A78;
  if (v20)
  {
    v22 = 16391;
  }

  else
  {
    v22 = 7;
  }

  block[4] = &v30;
  block[5] = a1;
  block[6] = this;
  block[7] = a5;
  v26 = v15;
  v27 = v22;
  v28 = v16;
  block[8] = a6;
  v29 = a7;
  dispatch_sync(v21, block);
  v23 = *(*(&v30 + 1) + 24);
  _Block_object_dispose(&v30, 8);
  return v23;
}

void ___ZN2CI19MetalTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v30.width = *(v3 + 8);
  v30.height = *(v3 + 16);
  *(*(*(a1 + 32) + 8) + 24) = CI::TextureManager::_find_match_for_surface(v2, *(a1 + 48), v30);
  if (!*(*(*(a1 + 32) + 8) + 24) || !CI_RECYCLE_METAL_TEXTURES() || ((*(**(*(*(a1 + 32) + 8) + 24) + 24))(cf), CIMetalTextureGetFormat(cf[0]) != *(a1 + 72)))
  {
    operator new();
  }

  v4 = *(*(*(a1 + 32) + 8) + 24);
  if ((*(*v4 + 16))(v4))
  {
    (*(**(*(*(a1 + 32) + 8) + 24) + 24))(&v29);
    v5 = *(a1 + 56);
    v6 = *v5;
    v7 = *(v5 + 1);
    v8 = *v5;
    if (v8 == -2147483647)
    {
      if (HIDWORD(v6) == -2147483647 && *&v7 == __PAIR128__(0xFFFFFFFFLL, 0xFFFFFFFFLL))
      {
        v9 = MEMORY[0x1E695F040];
        goto LABEL_30;
      }
    }

    else if (v8 == 0x7FFFFFFF && HIDWORD(v6) == 0x7FFFFFFF && *&v7 == 0)
    {
      v9 = MEMORY[0x1E695F050];
LABEL_30:
      v25 = *v9;
      v24 = v9[1];
      goto LABEL_32;
    }

    v26.i64[0] = v6;
    v26.i64[1] = SHIDWORD(v6);
    v25 = vcvtq_f64_s64(v26);
    v24 = vcvtq_f64_u64(v7);
LABEL_32:
    *cf = v25;
    v28 = v24;
    CI::TextureManager::intermediate();
  }

  (*(**(*(*(a1 + 32) + 8) + 24) + 24))(cf);
  CFGetRetainCount(cf[0]);
  [*(*(v2 + 21) + 392) device];
  (*(**(*(*(a1 + 32) + 8) + 24) + 24))(cf);
  [cf[0] device];
  v10 = *(a1 + 56);
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = *v10;
  if (v13 == -2147483647)
  {
    if (HIDWORD(v11) == -2147483647 && *&v12 == __PAIR128__(0xFFFFFFFFLL, 0xFFFFFFFFLL))
    {
      v14 = MEMORY[0x1E695F040];
      goto LABEL_19;
    }

LABEL_20:
    v17.i64[0] = v11;
    v17.i64[1] = SHIDWORD(v11);
    v16 = vcvtq_f64_s64(v17);
    v15 = vcvtq_f64_u64(v12);
    goto LABEL_21;
  }

  if (v13 != 0x7FFFFFFF || HIDWORD(v11) != 0x7FFFFFFF || *&v12 != 0)
  {
    goto LABEL_20;
  }

  v14 = MEMORY[0x1E695F050];
LABEL_19:
  v16 = *v14;
  v15 = v14[1];
LABEL_21:
  v18 = *(*(*(a1 + 32) + 8) + 24);
  v18[2] = v16;
  v18[3] = v15;
  v19 = *(*(*(a1 + 32) + 8) + 24);
  *(v19 + 64) += *(a1 + 64);
  *(*(*(*(a1 + 32) + 8) + 24) + 72) = *(a1 + 84);
  v20 = *(*(*(a1 + 32) + 8) + 24);
  if (v20 && (**v20)(v20) && *(a1 + 64) >= 2uLL)
  {
    v21 = 1;
    do
    {
      v22 = *(*(*(a1 + 32) + 8) + 24);
      v23 = (**v22)(v22);
      RetainSurfaceFromCache(v23);
      ++v21;
    }

    while (v21 < *(a1 + 64));
  }
}

uint64_t CI::MetalTextureManager::create_intermediate(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  PixelFormat = IOSurfaceGetPixelFormat([a3 iosurface]);
  v13 = PixelFormat >> 24;
  if ((PixelFormat & 0xFD000000) == 0x2D000000 || v13 == 38 || v13 == 124)
  {
    v16 = 16387;
  }

  else
  {
    v16 = 3;
  }

  v17 = CIMetalFormatForFormat(*a2, (*(a2 + 4) >> 1) & 1);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v18 = *(a1 + 104);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = ___ZN2CI19MetalTextureManager19create_intermediateERKNS_22IntermediateDescriptorEPKvRK5IRectmb_block_invoke;
  v21[3] = &unk_1E75C4AA0;
  v21[6] = a1;
  v21[7] = a4;
  v21[4] = a3;
  v21[5] = &v25;
  v22 = v17;
  v23 = v16;
  v21[8] = a2;
  v21[9] = a5;
  v24 = a6;
  dispatch_sync(v18, v21);
  v19 = v26[3];
  _Block_object_dispose(&v25, 8);
  return v19;
}

uint64_t CI::MetalTextureManager::create_intermediate(void *a1, uint64_t a2, uint64_t a3, CGFloat *a4, uint64_t a5, uint64_t a6, char a7)
{
  v81 = *MEMORY[0x1E69E9840];
  v14 = *a4;
  v15 = a4[1];
  v16 = a4[2];
  v17 = a4[3];
  v82.origin.x = *a4;
  v82.origin.y = v15;
  v82.size.width = v16;
  v82.size.height = v17;
  if (CGRectIsNull(v82))
  {
    return 0;
  }

  v50 = a5;
  v51 = a3;
  v52 = a6;
  v83.origin.x = v14;
  v83.origin.y = v15;
  v83.size.width = v16;
  v83.size.height = v17;
  if (CGRectIsInfinite(v83))
  {
    v78 = IRectInfinite;
    height = 0xFFFFFFFFLL;
    v79 = 0xFFFFFFFFLL;
    width = 0xFFFFFFFFLL;
  }

  else
  {
    v84.origin.x = v14;
    v84.origin.y = v15;
    v84.size.width = v16;
    v84.size.height = v17;
    v85 = CGRectInset(v84, 0.000001, 0.000001);
    v86 = CGRectIntegral(v85);
    width = v86.size.width;
    height = v86.size.height;
    LODWORD(v78) = v86.origin.x;
    DWORD1(v78) = v86.origin.y;
    *(&v78 + 1) = v86.size.width;
    v79 = v86.size.height;
  }

  if (!width || height == 0)
  {
    return 0;
  }

  v23 = CIMetalFormatForFormat(*a2, (*(a2 + 4) >> 1) & 1);
  v48 = v23;
  if ((*(a2 + 6) & 1) != 0 || CI::MetalContext::use_imageblocks_for_format(a1[21], *a2) && CI_ENABLE_METAL_IMAGEBLOCKS() == 2)
  {
    v24 = 7;
  }

  else
  {
    v24 = 3;
  }

  if (((*(a2 + 7) & 1) != 0 || (*(a2 + 5) & 1) == 0 && (*(a2 + 6) & 1) == 0) && *(a1[21] + 1880))
  {
    if ((a7 & 1) == 0)
    {
      v25 = [*(a1[21] + 1880) newBufferForContextIntermediate:(((CI::format_bytes_per_row(*a2 usingHint:width) + 255) & 0xFFFFFFFFFFFFFF00) * height + 1023) & 0xFFFFFFFFFFFFFC00 identifier:{0, a3}];
      return CI::MetalTextureManager::create_intermediate(a1, a2, v25, &v78, a6, 1);
    }

    return 0;
  }

  v46 = a7;
  v47 = v24;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  is_packed = CI::format_is_packed(*a2);
  v27 = width > 0xF && height > 0xF;
  v28 = ((height * width) & 0xFFFFFFFFFFFF0000) != 0 && v27;
  v29 = *(a2 + 5);
  v30 = *(a2 + 6);
  v31 = *(a2 + 8);
  v44 = (*(*a1[21] + 176))(a1[21]);
  if (CI_PRINT_TREE_dump_intermediates() & 1) != 0 || (CI_PRINT_TREE_dump_raw_intermediates())
  {
    v45 = 1;
  }

  else
  {
    v45 = CI_PRINT_TREE_dump_bmtl_intermediates();
  }

  v32 = [*(a1[21] + 392) device];
  v43 = CIMetalDeviceSupportsFamilyApple7(v32, v33);
  v34 = [*(a1[21] + 392) device];
  v36 = CIMetalDeviceSupportsFamilyApple8(v34, v35);
  if ((v29 | v30) & ~v31 & 1 | (((is_packed | v28) & 1) == 0) | v45 & 1)
  {
    v37 = 0;
    v38 = 0;
  }

  else
  {
    v37 = (CI_LOSSY_COMPRESSED_INTERMEDIATES() != 0) & v36 & v44;
    v38 = (CI_LOSSLESS_COMPRESSED_INTERMEDIATES() != 0) & v43;
  }

  if (is_packed)
  {
    if ((v38 & 1) == 0)
    {
      v39 = ci_logger_render();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = CI::name_for_format(*a2);
        CI::MetalTextureManager::create_intermediate(v40, buf, v39);
      }
    }
  }

  v41 = a1[13];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2CI19MetalTextureManager19create_intermediateERKNS_22IntermediateDescriptorENS_17NodeContentDigestERK6CGRectmmb_block_invoke;
  block[3] = &unk_1E75C4AC8;
  block[8] = v51;
  block[9] = a2;
  v63 = v38;
  v64 = v37;
  v65 = v46;
  v54 = v78;
  v55 = v79;
  v56 = width;
  v57 = height;
  v58 = v50;
  block[4] = &v74;
  block[5] = &v66;
  block[6] = &v70;
  block[7] = a1;
  v59 = a4;
  v60 = v52;
  v61 = v48;
  v62 = v47;
  dispatch_sync(v41, block);
  v42 = v75[3];
  if (v42)
  {
    v21 = (*(*a1 + 64))(a1, a2, v42, 0, &v78, v52, *(v67 + 24));
  }

  else
  {
    v21 = v71[3];
  }

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);
  return v21;
}

void sub_19CE4F654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 240), 8);
  _Block_object_dispose((v37 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t CI::MetalContext::use_imageblocks_for_format(uint64_t a1, int a2)
{
  result = CI_ENABLE_METAL_IMAGEBLOCKS();
  if (result)
  {
    if (*(a1 + 457) != 1)
    {
      return 0;
    }

    result = 0;
    if (a2 > 529)
    {
      if (a2 != 530 && a2 != 2066 && a2 != 534)
      {
        return result;
      }

      return CI_ENABLE_METAL_IMAGEBLOCKS() == 2;
    }

    if (a2 == 274 || a2 == 278)
    {
      return CI_ENABLE_METAL_IMAGEBLOCKS() == 2;
    }
  }

  return result;
}

void ___ZN2CI19MetalTextureManager19create_intermediateERKNS_22IntermediateDescriptorENS_17NodeContentDigestERK6CGRectmmb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (CI_IOSURFACE_INTERMEDIATES())
  {
    v3 = CFStringCreateWithFormat(0, 0, @"%llX(%04X)", *(a1 + 64), *(a1 + 144));
    v4 = CI::PixelFormatType_from_format(**(a1 + 72));
    v5 = v4;
    if (*(a1 + 152) != 1)
    {
      goto LABEL_93;
    }

    v6 = equivalent_uncompressed_format(v4);
    v5 = v6;
    if (v6 > 1714643255)
    {
      if (v6 > 1885745711)
      {
        if (v6 > 1999908960)
        {
          if (v6 <= 2019964015)
          {
            if (v6 == 1999908961)
            {
              v5 = 645346401;
            }

            else if (v6 == 2016687216)
            {
              v5 = 640955504;
            }
          }

          else
          {
            switch(v6)
            {
              case 0x78663470:
                v5 = 644232304;
                break;
              case 0x79757666:
                v5 = 645494118;
                break;
              case 0x79757673:
                v5 = 645494131;
                break;
            }
          }

          goto LABEL_93;
        }

        if (v6 <= 1885746227)
        {
          if (v6 != 1885745712)
          {
            if (v6 != 1885745714)
            {
              goto LABEL_93;
            }

            v8 = 645424688;
            goto LABEL_89;
          }

          v13 = 26160;
LABEL_91:
          v5 = v13 | 0x26780000u;
          goto LABEL_93;
        }

        if (v6 != 1885746228)
        {
          if (v6 == 1999843442)
          {
            v5 = 645346162;
          }

          goto LABEL_93;
        }

        v12 = 645424688;
LABEL_84:
        v5 = v12 | 4u;
        goto LABEL_93;
      }

      if (v6 <= 1815162993)
      {
        if (v6 <= 1751527985)
        {
          if (v6 == 1714643256)
          {
            v5 = 644231992;
          }

          else if (v6 == 1751527984)
          {
            v5 = 644376112;
          }

          goto LABEL_93;
        }

        if (v6 != 1751527986)
        {
          if (v6 != 1751528500)
          {
            goto LABEL_93;
          }

          v12 = 644376112;
          goto LABEL_84;
        }

        v8 = 644376112;
LABEL_89:
        v5 = v8 | 2u;
        goto LABEL_93;
      }

      if (v6 <= 1882468913)
      {
        if (v6 == 1815162994)
        {
          v5 = 644624754;
          goto LABEL_93;
        }

        if (v6 != 1882468912)
        {
          goto LABEL_93;
        }

        v10 = 645424688;
LABEL_54:
        v5 = v10 | 0x1000u;
        goto LABEL_93;
      }

      if (v6 == 1882468914)
      {
        v13 = 30258;
        goto LABEL_91;
      }

      if (v6 != 1882469428)
      {
        goto LABEL_93;
      }

      v11 = 645428786;
LABEL_70:
      v5 = (v11 + 2);
      goto LABEL_93;
    }

    if (v6 <= 1111970368)
    {
      if (v6 > 875704933)
      {
        if (v6 > 875836517)
        {
          if (v6 == 875836518)
          {
            v12 = 641230384;
            goto LABEL_84;
          }

          if (v6 != 875836534)
          {
            goto LABEL_93;
          }

          v11 = 641234482;
          goto LABEL_70;
        }

        if (v6 == 875704934)
        {
          v8 = 641230384;
          goto LABEL_89;
        }

        if (v6 != 875704950)
        {
          goto LABEL_93;
        }

        v9 = 30258;
      }

      else
      {
        if (v6 <= 875704421)
        {
          if (v6 == 843264056)
          {
            v5 = 640823352;
            goto LABEL_93;
          }

          if (v6 != 843264104)
          {
            goto LABEL_93;
          }

          v7 = 640823352;
          goto LABEL_82;
        }

        if (v6 != 875704422)
        {
          if (v6 != 875704438)
          {
            goto LABEL_93;
          }

          v10 = 641230384;
          goto LABEL_54;
        }

        v9 = 26160;
      }

      v5 = v9 | 0x26380000u;
      goto LABEL_93;
    }

    if (v6 > 1278226737)
    {
      if (v6 > 1380411456)
      {
        if (v6 == 1380411457)
        {
          v5 = 642934849;
        }

        else if (v6 == 1647534392)
        {
          v5 = 643969848;
        }
      }

      else if (v6 == 1278226738)
      {
        v5 = 642527538;
      }

      else if (v6 == 1278226742)
      {
        v5 = 642527542;
      }
    }

    else if (v6 > 1278226535)
    {
      if (v6 == 1278226536)
      {
        v7 = 642527288;
LABEL_82:
        v5 = (v7 + 48);
        goto LABEL_93;
      }

      if (v6 == 1278226736)
      {
        v5 = 642527536;
      }
    }

    else if (v6 == 1111970369)
    {
      v5 = 641877825;
    }

    else if (v6 == 1278226488)
    {
      v5 = 642527288;
    }

LABEL_93:
    if (*(a1 + 153) != 1)
    {
      goto LABEL_133;
    }

    v14 = equivalent_uncompressed_format(v5);
    LODWORD(v5) = v14;
    if (v14 > 1380411456)
    {
      if (v14 > 1882469427)
      {
        if (v14 > 1885745713)
        {
          if (v14 != 1885745714)
          {
            if (v14 == 1885746228)
            {
              LODWORD(v5) = 762865204;
            }

            goto LABEL_133;
          }

          v17 = 26162;
        }

        else
        {
          if (v14 != 1882469428)
          {
            if (v14 == 1885745712)
            {
              LODWORD(v5) = 762865200;
            }

            goto LABEL_133;
          }

          v17 = 30260;
        }

        LODWORD(v5) = v17 | 0x2D780000;
      }

      else
      {
        if (v14 <= 1882468911)
        {
          if (v14 == 1380411457)
          {
            LODWORD(v5) = 760375361;
          }

          else if (v14 == 1751527984)
          {
            LODWORD(v5) = 761816624;
          }

          goto LABEL_133;
        }

        if (v14 == 1882468912)
        {
          LODWORD(v5) = 762869296;
          goto LABEL_133;
        }

        if (v14 == 1882468914)
        {
          v16 = 762865202;
LABEL_123:
          LODWORD(v5) = v16 | 0x1000;
          goto LABEL_133;
        }
      }

      goto LABEL_133;
    }

    if (v14 <= 875704437)
    {
      if (v14 == 843264056)
      {
        LODWORD(v5) = 758263864;
        goto LABEL_133;
      }

      if (v14 != 843264104)
      {
        if (v14 == 875704422)
        {
          LODWORD(v5) = 758670896;
        }

        goto LABEL_133;
      }

      v15 = 758263864;
    }

    else
    {
      if (v14 <= 1278226487)
      {
        if (v14 != 875704438)
        {
          if (v14 == 1111970369)
          {
            LODWORD(v5) = 759318337;
          }

          goto LABEL_133;
        }

        v16 = 758670896;
        goto LABEL_123;
      }

      if (v14 == 1278226488)
      {
        LODWORD(v5) = 759967800;
        goto LABEL_133;
      }

      if (v14 != 1278226536)
      {
LABEL_133:
        if (*(a1 + 154) == 1)
        {
          v34 = *(a1 + 80);
          v35 = *(a1 + 96);
          LODWORD(v32) = 0;
          v18 = (*(**(v2 + 168) + 624))();
          v19 = *(v2 + 168);
          v20 = v19[47];
          *(&v32 + 1) = v18;
          v33 = v20;
          v21 = (*(*v19 + 280))(v19);
          *(*(*(a1 + 32) + 8) + 24) = GetValidSurfaceFromCache(&v34, v5, &v32, v21, 0, *(*(a1 + 72) + 12), v3);
        }

        else
        {
          Mutable = CFArrayCreateMutable(0, *(*(v2 + 136) + 16), 0);
          if (CI_RECYCLE_METAL_TEXTURES())
          {
            v23 = *(v2 + 136);
            for (i = *(v23 + 8); i != v23; i = *(i + 8))
            {
              v25 = *(i + 16);
              if (!(*(*v25 + 16))(v25) && *((*(*v25 + 32))(v25) + 16) == *(a1 + 104) && *((*(*v25 + 32))(v25) + 24) == *(a1 + 112))
              {
                v26 = (**v25)(v25);
                CFArrayAppendValue(Mutable, v26);
              }
            }
          }

          v34 = *(a1 + 80);
          v35 = *(a1 + 96);
          v27 = *(a1 + 120);
          LODWORD(v32) = 0;
          v28 = (*(**(v2 + 168) + 624))();
          v29 = *(v2 + 168);
          v30 = v29[47];
          *(&v32 + 1) = v28;
          v33 = v30;
          v31 = (*(*v29 + 280))(v29);
          *(*(*(a1 + 32) + 8) + 24) = GetSurfaceFromCache(&v34, v27, v27, v5, &v32, v31, 0, *(*(a1 + 72) + 12), v3, *(*(a1 + 40) + 8) + 24, Mutable);
          CFRelease(Mutable);
        }

        CFRelease(v3);
        return;
      }

      v15 = 759967800;
    }

    LODWORD(v5) = v15 + 48;
    goto LABEL_133;
  }

  if ((*(a1 + 154) & 1) == 0)
  {
    operator new();
  }
}

void CI::MetalTextureManager::purge_intermediates(CI::MetalTextureManager *this, uint64_t a2)
{
  v2 = *(this + 12);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZN2CI19MetalTextureManager19purge_intermediatesEm_block_invoke;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v3[4] = this;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void ___ZN2CI19MetalTextureManager19purge_intermediatesEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (CI_RECYCLE_METAL_TEXTURES() && CI_IOSURFACE_INTERMEDIATES())
  {
    v3 = *(v2 + 13);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = ___ZN2CI19MetalTextureManager19purge_intermediatesEm_block_invoke_2;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v4 = *(a1 + 40);
    v5[4] = v2;
    v5[5] = v4;
    dispatch_sync(v3, v5);
  }

  CI::TextureManager::purge_intermediates(v2);
}

void *___ZN2CI19MetalTextureManager19purge_intermediatesEm_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 136);
  v3 = *(v2 + 16);
  v13[0] = v13;
  v13[1] = v13;
  v13[2] = 0;
  v4 = *(v2 + 8);
  if (v4 != v2)
  {
    do
    {
      if (v3 <= *(a1 + 40) || (v6 = v4[2], (*(*v6 + 16))(v6)))
      {
        i = v4;
      }

      else
      {
        v14 = *(v6 + 8);
        (**v1)(v1, &v14);
        v14 = 0uLL;
        v8 = *(v6 + 24);
        if (v8)
        {
          CFRelease(v8);
        }

        (*(*v6 + 48))(v6);
        --v3;
        for (i = v4[1]; ; i = i[1])
        {
          if (i == v2)
          {
            v11 = 1;
            goto LABEL_19;
          }

          if (v3 <= *(a1 + 40))
          {
            break;
          }

          v9 = i[2];
          if ((*(*v9 + 16))(v9))
          {
            break;
          }

          v14 = *(v9 + 8);
          (**v1)(v1, &v14);
          v14 = 0uLL;
          v10 = *(v9 + 24);
          if (v10)
          {
            CFRelease(v10);
          }

          (*(*v9 + 48))(v9);
          --v3;
        }

        v11 = 0;
LABEL_19:
        std::list<CI::attached_surface_t *>::splice(v13, v13, v2, v4, i);
        if (v11)
        {
          goto LABEL_6;
        }
      }

      i = i[1];
LABEL_6:
      v4 = i;
    }

    while (i != v2);
  }

  return std::__list_imp<CI::attached_surface_t *>::clear(v13);
}

void sub_19CE505E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<CI::attached_surface_t *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t CI::MetalTextureManager::remove_matching_texture(uint64_t a1, __int128 **a2)
{
  if ((isImageConversionServiceProcess() & 1) != 0 || (isMobileSlideShowOrCamera() & 1) != 0 || (result = isQuickLookSideCar(), result))
  {
    memset(v11, 0, sizeof(v11));
    v12 = 1065353216;
    v6 = *a2;
    v5 = a2[1];
    while (v6 != v5)
    {
      v10 = *v6;
      std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::__emplace_unique_key_args<void const*,void const* const&>(v11, &v10);
      ++v6;
    }

    v7 = *(a1 + 104);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3321888768;
    v8[2] = ___ZN2CI19MetalTextureManager23remove_matching_textureERKNSt3__16vectorINS_7TextureENS1_9allocatorIS3_EEEE_block_invoke;
    v8[3] = &__block_descriptor_80_e8_40c83_ZTSNSt3__113unordered_setIPKvNS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEEE_e5_v8__0l;
    v8[4] = a1;
    std::unordered_set<void const*>::unordered_set(v9, v11);
    dispatch_sync(v7, v8);
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v9);
    return std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v11);
  }

  return result;
}

void ___ZN2CI19MetalTextureManager23remove_matching_textureERKNSt3__16vectorINS_7TextureENS1_9allocatorIS3_EEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  __p = 0;
  v18 = 0;
  v19 = 0;
  v2 = *(v1 + 14);
  if (v2 != (v1 + 120))
  {
    do
    {
      v5 = v2[4];
      v4 = v2[5];
      if ((CI::allowRemoval(v4) & 1) != 0 && std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::find<void const*>((a1 + 40), v4))
      {
        v6 = v18;
        if (v18 >= v19)
        {
          v8 = (v18 - __p) >> 3;
          if ((v8 + 1) >> 61)
          {
            std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
          }

          v9 = (v19 - __p) >> 2;
          if (v9 <= v8 + 1)
          {
            v9 = v8 + 1;
          }

          if (v19 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v10 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v10 = v9;
          }

          if (v10)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<NSString *>>(&__p, v10);
          }

          *(8 * v8) = v5;
          v7 = 8 * v8 + 8;
          v11 = (8 * v8 - (v18 - __p));
          memcpy(v11, __p, v18 - __p);
          v12 = __p;
          __p = v11;
          v18 = v7;
          v19 = 0;
          if (v12)
          {
            operator delete(v12);
          }
        }

        else
        {
          *v18 = v5;
          v7 = (v6 + 8);
        }

        v18 = v7;
      }

      v13 = v2[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v2[2];
          v15 = *v14 == v2;
          v2 = v14;
        }

        while (!v15);
      }

      v2 = v14;
    }

    while (v14 != (v1 + 120));
    v16 = __p;
    if (__p != v18)
    {
      do
      {
        CI::TextureManager::remove_lru(v1, *v16++);
      }

      while (v16 != v18);
      v16 = __p;
    }

    if (v16)
    {
      v18 = v16;
      operator delete(v16);
    }
  }
}

void sub_19CE508AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CI::allowRemoval(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 20))
    {
      if (*(result + 24) == 1)
      {
        if (isImageConversionServiceProcess())
        {
          v2 = 1;
        }

        else
        {
          v2 = isMobileSlideShowOrCamera();
        }
      }

      else
      {
        v2 = 0;
      }

      if (*(v1 + 16) == 1)
      {
        v4 = isQuickLookSideCar();
      }

      else
      {
        v4 = 0;
      }

      return v4 | v2;
    }

    else
    {
      v3 = ci_logger_render();
      result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
      if (result)
      {
        CI::allowRemoval(v1, v3);
        return 0;
      }
    }
  }

  return result;
}

uint64_t CI::MetalTextureManager::_release_intermediate(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 168) + 1880) || !CI_RECYCLE_METAL_TEXTURES() || (result = CI_IOSURFACE_INTERMEDIATES(), !result))
  {

    return CI::TextureManager::_release_intermediate(a1, a2);
  }

  return result;
}

BOOL CI::MetalTextureManager::_release_intermediate_for_node(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  (*(*(*a2)[5] + 24))(&v9);
  v6 = v9;
  v7 = CI::TextureManager::_release_intermediate_for_node(a1, a2, a3);
  if (v7 && [v6 buffer])
  {
    [*(*(a1 + 168) + 1880) bufferForContextIntermediateCommitted:{objc_msgSend(v6, "buffer")}];
  }

  return v7;
}

void CI::MetalTextureManager::release_texture(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 168) + 1880))
  {
    v4 = *a2;
    if ([*a2 buffer])
    {
      [*(*(a1 + 168) + 1880) bufferForContextIntermediateCompleted:{objc_msgSend(v4, "buffer")}];
    }
  }

  if (*a2)
  {
    CFRelease(*a2);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
}

uint64_t CI::MetalTextureManager::lookup_texture(CI::MetalTextureManager *this, void *a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(this + 13);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2CI19MetalTextureManager14lookup_textureEPv_block_invoke;
  block[3] = &unk_1E75C4B10;
  block[4] = &v6;
  block[5] = this;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t ___ZN2CI19MetalTextureManager14lookup_textureEPv_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = CI::TextureManager::_lookup_texture(*(a1 + 40), *(a1 + 48));
  result = CI::allowRemoval(*(*(*(a1 + 32) + 8) + 24));
  if (result)
  {
    v3 = *(*(*(a1 + 32) + 8) + 24);
    ++*(v3 + 20);
  }

  return result;
}

void *CI::MetalTextureManager::create_texture(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = CIMetalFormatForFormat(*a8, *(a8 + 4));
  v17 = CIMetalTextureCreate(*(*(a1 + 168) + 2008), [*(*(a1 + 168) + 392) device], v16, a5, a6, 1);
  CIMetalTextureSetBytes(v17, a4, a7);
  v18 = malloc_type_malloc(0x20uLL, 0x10C20400159326AuLL);
  *v18 = v17;
  v18[1] = 0;
  *(v18 + 4) = a3;
  *(v18 + 5) = 1;
  *(v18 + 24) = *(a8 + 5);
  CI::TextureManager::append_to_lru(a1, a2, v18);
  return v17;
}

void *CI::MetalTextureManager::create_texture(void *a1, IOSurfaceRef buffer, size_t planeIndex, int a4, uint64_t a5)
{
  BaseAddressOfPlane = buffer;
  if (a4 == 3)
  {
    BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(buffer, planeIndex);
  }

  v11 = (*(*a1 + 8))(a1, BaseAddressOfPlane);
  if (v11)
  {
    return *v11;
  }

  v13 = CIMetalFormatForFormat(*a5, *(a5 + 4));
  v12 = CIMetalTextureCreateFromIOSurface(*(a1[21] + 2008), [*(a1[21] + 392) device], buffer, planeIndex, v13, 1);
  v14 = malloc_type_malloc(0x20uLL, 0x10C20400159326AuLL);
  *v14 = v12;
  v14[1] = 0;
  *(v14 + 4) = a4;
  *(v14 + 5) = 1;
  *(v14 + 24) = *(a5 + 5);
  CI::TextureManager::append_to_lru(a1, BaseAddressOfPlane, v14);
  return v12;
}

void *CI::MetalTextureManager::texture_for_CGImage(void **a1, CGImage *a2, uint64_t a3)
{
  v6 = ((*a1)[1])(a1);
  if (v6)
  {
    return *v6;
  }

  Width = CGImageGetWidth(a2);
  Height = CGImageGetHeight(a2);
  BytesPerRow = CGImageGetBytesPerRow(a2);
  if (Width > (*(*a1[21] + 448))() || Height > (*(*a1[21] + 448))(a1[21]))
  {
    x_log("Cannot handle a (%lu x %lu) sized texture with the given context!\n", Width, Height);
    return 0;
  }

  DataProvider = CGImageGetDataProvider(a2);
  v13 = CGDataProviderRetainBytePtr();
  if (v13)
  {
    texture = CI::MetalTextureManager::create_texture(a1, a2, 1, v13, Width, Height, BytesPerRow, a3);
    CGDataProviderReleaseBytePtr();
    return texture;
  }

  v14 = CGDataProviderCopyData(DataProvider);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  if (CFDataGetLength(v14) >= 1 && (BytePtr = CFDataGetBytePtr(v15)) != 0)
  {
    texture = CI::MetalTextureManager::create_texture(a1, a2, 1, BytePtr, Width, Height, BytesPerRow, a3);
  }

  else
  {
    texture = 0;
  }

  CFRelease(v15);
  return texture;
}

void *CI::MetalTextureManager::texture_for_IOSurface(uint64_t a1, IOSurfaceRef buffer, size_t a3, int *a4)
{
  if (IOSurfaceGetPlaneCount(buffer) == 2)
  {
    if (a3)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v9 = CI::format_of_plane(*a4, a3);
    v10 = *a4;
    if (*a4 == 4616 || v10 == 4360)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    if (((*(**(a1 + 168) + 432))(*(a1 + 168), v12) & 1) == 0)
    {
      LODWORD(v12) = CI::format_of_plane_old(*a4, a3);
    }

    if ((v12 - 1285) > 1)
    {
      if (!v12)
      {
        if (a3)
        {
          v12 = "Y";
        }

        else
        {
          v12 = "CbCr";
        }

        v14 = CI::name_for_format(*a4);
        x_log("Unexpected format requesting a texture for %s plane of format %s\n", v12, v14);
        LODWORD(v12) = 0;
      }
    }

    else if ((*(*(a1 + 168) + 456) & 1) == 0)
    {
      LODWORD(v12) = 784;
    }

    v15 = v12;
    v16 = 0;
    return CI::MetalTextureManager::create_texture(a1, buffer, a3, v8, &v15);
  }

  else
  {

    return CI::MetalTextureManager::create_texture(a1, buffer, a3, 2, a4);
  }
}

uint64_t CI::MetalMainProgram::get_next_offset(int a1, uint64_t *a2)
{
  result = 0xFFFFFFFFLL;
  v4 = a1 - 5;
  v5 = *a2;
  v6 = -4;
  v7 = 4;
  v8 = 3;
  switch(v4)
  {
    case 0:
    case 8:
    case 14:
    case 18:
      goto LABEL_8;
    case 1:
    case 9:
    case 10:
    case 15:
    case 19:
      v6 = -8;
      v7 = 8;
      goto LABEL_4;
    case 2:
    case 3:
    case 16:
    case 17:
    case 20:
    case 21:
    case 22:
      v6 = -16;
      v7 = 16;
      goto LABEL_7;
    case 4:
      v6 = -8;
      v7 = 16;
      goto LABEL_4;
    case 5:
    case 35:
    case 37:
    case 38:
    case 39:
      v6 = -16;
      v7 = 48;
      goto LABEL_7;
    case 6:
    case 32:
    case 36:
    case 40:
      v6 = -16;
      v7 = 64;
LABEL_7:
      v8 = 15;
      goto LABEL_8;
    case 7:
      v6 = -2;
      v7 = 2;
      v8 = 1;
      goto LABEL_8;
    case 11:
      v7 = 8;
      v8 = 3;
      goto LABEL_8;
    case 12:
      v6 = -8;
      v7 = 24;
      goto LABEL_4;
    case 13:
      v6 = -8;
      v7 = 32;
LABEL_4:
      v8 = 7;
LABEL_8:
      v5 = (v5 + v8) & v6;
      *a2 = v5 + v7;
      goto LABEL_9;
    case 41:
    case 42:
LABEL_9:
      result = v5;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t CI::MetalMainProgram::MetalMainProgram(uint64_t a1, uint64_t a2, const char *a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = CI::MainProgram::MainProgram(a1, a3, a4, a5, a6);
  v14[13] = &unk_1F1034438;
  atomic_fetch_add(&dword_1ED7C47BC[73], 1u);
  *v14 = &unk_1F10340A8;
  v14[13] = &unk_1F1034118;
  v14[15] = a7;
  v14[16] = 0;
  v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v16 = dispatch_queue_create("CI::KernelCompileQueue", v15);
  *(a1 + 156) = 0;
  *(a1 + 136) = v16;
  *(a1 + 152) = 0;
  *(a1 + 164) = 0;
  *(a1 + 172) = 0;
  *(a1 + 128) = *(a2 + 2048);
  *(a1 + 144) = *(a2 + 2008);
  *(a1 + 152) = CI::MetalContext::use_imageblocks_for_format(a2, *a10);
  *(a1 + 156) = CIMetalFormatForFormat(*a10, (*(a10 + 4) >> 1) & 1);
  v17 = [*(a2 + 392) device];
  if (v17)
  {
    v17 = CFRetain(v17);
  }

  *(a1 + 160) = v17;
  *(a1 + 48) = (*(*a2 + 280))(a2);
  if (!*(a1 + 120))
  {
    *(a1 + 112) = 16;
    CI::MainProgram::num_arguments(a1);
    operator new();
  }

  *(a1 + 112) = a8;
  return a1;
}

void sub_19CE5148C(_Unwind_Exception *a1)
{
  MEMORY[0x19EAF5590](v3, 0x1010C40C0D7B093);
  *(v1 + 13) = v2;
  atomic_fetch_add((v4 + 300), 0xFFFFFFFF);
  CI::MainProgram::~MainProgram(v1);
  _Unwind_Resume(a1);
}

void CI::MetalMainProgram::~MetalMainProgram(CI::MetalMainProgram *this)
{
  *this = &unk_1F10340A8;
  *(this + 13) = &unk_1F1034118;
  v2 = *(this + 17);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2CI16MetalMainProgramD2Ev_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v2, block);
  dispatch_release(*(this + 17));
  v3 = *(this + 15);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      free(v4);
    }

    MEMORY[0x19EAF5590](v3, 0x1010C40C0D7B093);
  }

  *(this + 15) = 0;
  v5 = *(this + 20);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 20) = 0;
  *(this + 13) = &unk_1F1034438;
  atomic_fetch_add(&dword_1ED7C47BC[73], 0xFFFFFFFF);
  CI::MainProgram::~MainProgram(this);
}

{
  CI::MetalMainProgram::~MetalMainProgram(this);

  JUMPOUT(0x19EAF5590);
}

void sub_19CE5161C(_Unwind_Exception *a1)
{
  *(v1 + 13) = &unk_1F1034438;
  atomic_fetch_add(&dword_1ED7C47BC[73], 0xFFFFFFFF);
  CI::MainProgram::~MainProgram(v1);
  _Unwind_Resume(a1);
}

void ___ZN2CI16MetalMainProgramD2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 168);
  if (v2)
  {
    CFRelease(v2);
  }

  *(v1 + 168) = 0;
}

void non-virtual thunk toCI::MetalMainProgram::~MetalMainProgram(CI::MetalMainProgram *this)
{
  CI::MetalMainProgram::~MetalMainProgram((this - 104));
}

{
  CI::MetalMainProgram::~MetalMainProgram((this - 104));

  JUMPOUT(0x19EAF5590);
}

void CI::MetalMainProgram::compile(uint64_t a1, int a2)
{
  dispatch_assert_queue_V2(*(a1 + 136));
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v4 = ci_signpost_log_compile();
    v5 = a2 | (*(a1 + 48) << 32);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v4;
      if (os_signpost_enabled(v4))
      {
        *v13 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v5, "compile_metal", &unk_19CFBCBAE, v13, 2u);
      }
    }
  }

  TimerBase::TimerBase(v13, *(a1 + 48), a2, "compile_metal", 25);
  v7.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v8 = *(a1 + 144);
  v9 = *(a1 + 160);
  v11 = *(a1 + 56);
  v10 = *(a1 + 64);
  if (*(a1 + 152) == 1)
  {
    v12 = CIMetalRenderPipelineStateCreateFromSource(v8, v9, v10, v11, *(a1 + 16), *(a1 + 156));
  }

  else
  {
    v12 = CIMetalComputePipelineStateCreateFromSource(v8, v9, v10, v11);
  }

  *(a1 + 168) = v12;
  atomic_store(COERCE_UNSIGNED_INT64((std::chrono::steady_clock::now().__d_.__rep_ - v7.__d_.__rep_) / 1000000000.0), (a1 + 24));
  CI::MetalMainProgram::compile(CI::NodeIndex)::SignpostTimer::~SignpostTimer(v13);
}

void CI::MetalMainProgram::compile(CI::NodeIndex)::SignpostTimer::~SignpostTimer(TimerBase *a1)
{
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v2 = ci_signpost_log_compile();
    v3 = *(a1 + 1);
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v4 = v2;
      if (os_signpost_enabled(v2))
      {
        *v5 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "compile_metal", &unk_19CFBCBAE, v5, 2u);
      }
    }
  }

  TimerBase::~TimerBase(a1);
}

void CI::MetalMainProgram::compileAsync(dispatch_queue_t *a1, int a2)
{
  if (((*a1)[11].isa)(a1))
  {
    if (CI_ENABLE_UBER_SHADER() != 2)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = ___ZN2CI16MetalMainProgram12compileAsyncENS_9NodeIndexE_block_invoke_2;
      v8[3] = &__block_descriptor_44_e5_v8__0l;
      v8[4] = a1;
      v9 = a2;
      v4 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v8);
      dispatch_async(a1[17], v4);
      v5 = CI_WAIT_BEFORE_SWITCHING_TO_UBER();
      v6 = dispatch_time(0, (v5 * 1000000000.0));
      dispatch_block_wait(v4, v6);
      _Block_release(v4);
    }
  }

  else
  {
    v7 = a1[17];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN2CI16MetalMainProgram12compileAsyncENS_9NodeIndexE_block_invoke;
    block[3] = &__block_descriptor_44_e5_v8__0l;
    block[4] = a1;
    v11 = a2;
    dispatch_sync(v7, block);
  }
}

unint64_t *___ZN2CI16MetalMainProgram12compileAsyncENS_9NodeIndexE_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[21])
  {
    v3 = atomic_load(result + 3);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      return (*(*result + 80))(result, *(a1 + 40));
    }
  }

  return result;
}

unint64_t *___ZN2CI16MetalMainProgram12compileAsyncENS_9NodeIndexE_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[21])
  {
    v3 = atomic_load(result + 3);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      return (*(*result + 80))(result, *(a1 + 40));
    }
  }

  return result;
}

unint64_t CI::MetalMainProgram::getPipelineState(unint64_t *a1, int a2)
{
  v4 = (*(*a1 + 88))(a1);
  if (v4)
  {
    v5 = COERCE_DOUBLE(atomic_load(a1 + 3));
    if (v5 <= 0.0)
    {
      return *(v4 + 24);
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v6 = a1[17];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZNK2CI16MetalMainProgram16getPipelineStateENS_9NodeIndexE_block_invoke;
      block[3] = &unk_1E75C25C0;
      block[4] = &v13;
      block[5] = a1;
      dispatch_sync(v6, block);
      v7 = v14[3];
      _Block_object_dispose(&v13, 8);
    }
  }

  else
  {
    v8 = a1[17];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = ___ZNK2CI16MetalMainProgram16getPipelineStateENS_9NodeIndexE_block_invoke_2;
    v10[3] = &__block_descriptor_44_e5_v8__0l;
    v10[4] = a1;
    v11 = a2;
    dispatch_sync(v8, v10);
    return a1[21];
  }

  return v7;
}

unint64_t *___ZNK2CI16MetalMainProgram16getPipelineStateENS_9NodeIndexE_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[21])
  {
    v3 = atomic_load(result + 3);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      return (*(*result + 80))(result, *(a1 + 40));
    }
  }

  return result;
}

void sub_19CE51DB4(_Unwind_Exception *a1)
{
  *(v1 + 384) = v2;
  atomic_fetch_add((v3 + 340), 0xFFFFFFFF);
  CI::Context::~Context(v1);
  _Unwind_Resume(a1);
}

void CI::MetalContext::init(CI::MetalContext *this, CFTypeRef cf, const char *a3)
{
  if (cf)
  {
    v5 = CFRetain(cf);
  }

  else
  {
    v5 = 0;
  }

  *(this + 49) = v5;
  *(this + 251) = a3;
  bzero(this + 1232, 0x208uLL);
  v6 = 0;
  v7 = 0;
  v8 = 1;
  while (1)
  {
    v9 = 0;
    v10 = v8;
    v11 = 1;
    v12 = this + 32 * v7 + 1752;
    do
    {
      v13 = v11;
      v14 = &v12[16 * v9];
      *v14 = CIMetalSamplerCreate(*(this + 251), [*(this + 49) device], v6 & 1, v11 & 1);
      v15 = CIMetalSamplerCreate(*(this + 251), [*(this + 49) device], v6 & 1, v13 & 1);
      v11 = 0;
      v14[1] = v15;
      v9 = 1;
    }

    while ((v13 & 1) != 0);
    v8 = 0;
    v6 = 1;
    v7 = 1;
    if ((v10 & 1) == 0)
    {
      operator new();
    }
  }
}

uint64_t CI::GLContext::MTLShadow(CI::GLContext *this)
{
  if (!*(this + 44))
  {
    operator new();
  }

  v1 = *(this + 44);

  return CI::Object::ref(v1);
}

uint64_t CI::SWContext::MTLShadow(CI::SWContext *this)
{
  if (!*(this + 44))
  {
    operator new();
  }

  return *(this + 44);
}

void sub_19CE52280(_Unwind_Exception *a1)
{
  v6 = *v4;
  *v4 = 0;
  if (v6)
  {
    CI::Object::unref(v6);
  }

  *(v1 + 384) = v2;
  atomic_fetch_add((v3 + 340), 0xFFFFFFFF);
  CI::Context::~Context(v1);
  _Unwind_Resume(a1);
}

void CI::MetalContext::MetalContext(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef a12, char a13, char a14)
{
  if (dyld_program_sdk_at_least())
  {
    v20 = 2056;
  }

  else
  {
    v20 = 264;
  }

  if (a6)
  {
    v21 = a6;
  }

  else
  {
    v21 = v20;
  }

  CI::Context::Context(a1, a4, a5, v21, a7, a8, a9, a10);
}

{
  CI::MetalContext::MetalContext(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

void sub_19CE52478(_Unwind_Exception *a1)
{
  v6 = *v3;
  *v3 = 0;
  if (v6)
  {
    CI::Object::unref(v6);
  }

  *(v1 + 384) = v2;
  atomic_fetch_add((v4 + 340), 0xFFFFFFFF);
  CI::Context::~Context(v1);
  _Unwind_Resume(a1);
}

uint64_t CI::MetalContext::load_archives(CI::MetalContext *this)
{
  v26 = *MEMORY[0x1E69E9840];
  result = CI_ARCHIVE_USAGE_MODE();
  if (result)
  {
    if (CI::MetalContext::binaryArchiveCache(void)::onceToken != -1)
    {
      CI::MetalContext::load_archives();
    }

    v3 = CI::MetalContext::binaryArchiveCache(void)::cache;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    objc_sync_enter(CI::MetalContext::binaryArchiveCache(void)::cache);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v25 count:16];
    if (v4)
    {
      v6 = *v16;
      *&v5 = 67109378;
      v13 = v5;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          v9 = [v3 objectForKey:{v8, v13}];
          v10 = v9;
          if (v9 && [v9 count])
          {
            v11 = ci_logger_render();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              v12 = (*(*this + 280))(this);
              *buf = v13;
              *&buf[4] = v12;
              v23 = 2114;
              v24 = v8;
              _os_log_impl(&dword_19CC36000, v11, OS_LOG_TYPE_INFO, "Context[%d] uses %{public}@ archive", buf, 0x12u);
            }

            *buf = [v10 objectForKeyedSubscript:@"bin"];
            std::vector<void const*>::push_back[abi:nn200100](&v19, buf);
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v15 objects:v25 count:16];
      }

      while (v4);
    }

    objc_sync_exit(v3);
    memset(__p, 0, sizeof(__p));
    if (v20 != v19)
    {
      std::vector<void const*>::__vallocate[abi:nn200100](__p, (v20 - v19) >> 3);
    }

    CI::new_kernel_archive();
  }

  return result;
}

uint64_t CI::MetalContext::binaryArchiveCache(CI::MetalContext *this)
{
  if (CI::MetalContext::binaryArchiveCache(void)::onceToken != -1)
  {
    CI::MetalContext::load_archives();
  }

  return CI::MetalContext::binaryArchiveCache(void)::cache;
}

uint64_t ___ZN2CI12MetalContext18binaryArchiveCacheEv_block_invoke()
{
  result = objc_opt_new();
  CI::MetalContext::binaryArchiveCache(void)::cache = result;
  return result;
}

void std::vector<void const*>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<void const*>>(a1, v10);
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

void CI::MetalContext::add_archive(NSObject ***this, const __CFString *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (CI_ARCHIVE_USAGE_MODE())
  {
    if (CI::MetalContext::binaryArchiveCache(void)::onceToken != -1)
    {
      CI::MetalContext::load_archives();
    }

    v4 = CI::MetalContext::binaryArchiveCache(void)::cache;
    objc_sync_enter(CI::MetalContext::binaryArchiveCache(void)::cache);
    v5 = [v4 objectForKey:a2];
    objc_sync_exit(v4);
    if (v5 && [v5 count])
    {
      v6 = ci_logger_render();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = ((*this)[35])(this);
        *buf = 67109378;
        *&buf[4] = v7;
        LOWORD(v12) = 2114;
        *(&v12 + 2) = a2;
        _os_log_impl(&dword_19CC36000, v6, OS_LOG_TYPE_INFO, "Context[%d] uses %{public}@ archive", buf, 0x12u);
      }

      v8 = this[256];
      if (!v8)
      {
        *buf = 0;
        v12 = 0uLL;
        v10 = [v5 objectForKeyedSubscript:@"bin"];
        std::vector<void const*>::push_back[abi:nn200100](buf, &v10);
        memset(__p, 0, sizeof(__p));
        if (v12 != *buf)
        {
          std::vector<void const*>::__vallocate[abi:nn200100](__p, (v12 - *buf) >> 3);
        }

        CI::new_kernel_archive();
      }

      CI::add_to_kernel_archive(v8, [v5 objectForKeyedSubscript:@"bin"]);
    }
  }
}

void sub_19CE52AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CI::MetalContext::~MetalContext(CI::MetalContext *this)
{
  *this = &unk_1F1034140;
  *(this + 48) = &unk_1F10343D0;
  CI::delete_precompiled_kernels(*(this + 252));
  CI::delete_precompiled_kernels(*(this + 253));
  CI::delete_precompiled_uber_functions(*(this + 254), v2);
  CI::release_ci_dylib(*(this + 255), v3);
  CI::release_kernel_archive(*(this + 256), v4);
  *(this + 256) = 0;
  *(this + 253) = 0;
  *(this + 254) = 0;
  *(this + 252) = 0;
  v5 = *(this + 250);
  if (v5)
  {
    CFRelease(v5);
    *(this + 250) = 0;
  }

  v6 = 0;
  v7 = 1;
  do
  {
    v8 = 0;
    v9 = v7;
    v10 = 1;
    v11 = this + 32 * v6 + 1752;
    do
    {
      v12 = 0;
      v13 = v10;
      v14 = 1;
      v15 = &v11[16 * v8];
      do
      {
        v16 = v14;
        v17 = *&v15[8 * v12];
        if (v17)
        {
          CFRelease(v17);
          *&v15[8 * v12] = 0;
        }

        v14 = 0;
        v12 = 1;
      }

      while ((v16 & 1) != 0);
      v10 = 0;
      v8 = 1;
    }

    while ((v13 & 1) != 0);
    v7 = 0;
    v6 = 1;
  }

  while ((v9 & 1) != 0);
  v18 = *(this + 235);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(this + 49);
  if (v19)
  {
    CFRelease(v19);
    *(this + 49) = 0;
  }

  v20 = *(this + 236);
  if (v20)
  {
    (*(*v20 + 40))(v20);
  }

  *(this + 236) = 0;
  v21 = *(this + 234);
  if (v21)
  {
    CFRelease(v21);
  }

  *(this + 234) = 0;
  v22 = *(this + 237);
  *(this + 237) = 0;
  if (v22)
  {
    CI::Object::unref(v22);
  }

  *(this + 48) = &unk_1F1034460;
  atomic_fetch_add(&dword_1ED7C47BC[83], 0xFFFFFFFF);

  CI::Context::~Context(this);
}

{
  CI::MetalContext::~MetalContext(this);

  JUMPOUT(0x19EAF5590);
}

void sub_19CE52CF8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 1896);
  *(v1 + 1896) = 0;
  if (v3)
  {
    CI::Object::unref(v3);
  }

  *(v1 + 384) = &unk_1F1034460;
  atomic_fetch_add(&dword_1ED7C47BC[83], 0xFFFFFFFF);
  CI::Context::~Context(v1);
  _Unwind_Resume(a1);
}

void non-virtual thunk toCI::MetalContext::~MetalContext(CI::MetalContext *this)
{
  CI::MetalContext::~MetalContext((this - 384));
}

{
  CI::MetalContext::~MetalContext((this - 384));

  JUMPOUT(0x19EAF5590);
}

void *CI::MetalContext::protectionOptions(CI::MetalContext *this)
{
  result = *(this + 231);
  if (result)
  {
    return [result protectionOptions];
  }

  result = *(this + 233);
  if (result)
  {
    return [result protectionOptions];
  }

  return result;
}

const char *CI::MetalContext::deviceName(id *this)
{
  v1 = [objc_msgSend(this[49] "device")];
  if (!v1)
  {
    return "Unknown Metal Device";
  }

  return [v1 UTF8String];
}

uint64_t CI::MetalContext::priority(id *this)
{
  v1 = [this[49] getGPUPriority];
  if (v1 > 4)
  {
    return 0;
  }

  else
  {
    return dword_19CF2C990[v1];
  }
}

unint64_t CI::MetalContext::available_allocation_size(CI::MetalContext *this)
{
  v2 = *(this + 235);
  if (v2)
  {
    return [v2 maxAvailableAllocationSize];
  }

  else
  {
    return CI::Context::available_allocation_size(this);
  }
}

__CFDictionary *CI::MetalContext::switch_dictionary(CI::MetalContext *this)
{
  result = *(this + 250);
  if (!result)
  {
    Mutable = CFDictionaryCreateMutable(0, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(this + 250) = Mutable;
    v4 = CIMetalDeviceSupportsMPS([*(this + 49) device]);
    __CFDictionary::setValue(Mutable, @"kContextInfoSupportsMPS", v4, v5);
    __CFDictionary::setValue(*(this + 250), @"kContextInfoIsMetal", 1, v6);
    __CFDictionary::setValue(*(this + 250), @"kContextInfoWorkingFormat", *(this + 8));
    v8 = *(this + 3);
    result = *(this + 250);
    if (v8)
    {
      __CFDictionary::setValue(result, @"kContextInfoWorkingSpace", v8, v7);
      return *(this + 250);
    }
  }

  return result;
}

void CI::MetalContext::invalidate_switch_dictionary(CI::MetalContext *this)
{
  v2 = *(this + 250);
  if (v2)
  {
    CFRelease(v2);
    *(this + 250) = 0;
  }
}

void CI::MetalContext::waitForCompletion(CI::MetalContext *this)
{
  v2 = *(this + 231);
  if (v2)
  {
    v3 = v2 == *(this + 233);
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    CIMetalCommandBufferWaitUntilCompleted(v2);
    if (!*(this + 233))
    {
      v4 = *((*(*this + 112))(this) + 88);

      dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
    }
  }
}

void CI::MetalContext::after_render(CI::TextureManager **this)
{
  v2 = ci_signpost_log_render();
  v3 = (*(*this + 35))(this) << 32;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_BEGIN, v3, "after_render", &unk_19CFBCBAE, v7, 2u);
  }

  v4 = (*(*this + 35))(this);
  TimerBase::TimerBase(v7, v4, 0, "after_render", 8);
  *(this + 231) = 0u;
  CI::TextureManager::remove_all(this[236]);
  v5 = this[236];
  if (CI_RECYCLE_METAL_TEXTURES())
  {
    v6 = CI_INTERMEDIATE_CACHE_SIZE();
  }

  else
  {
    v6 = 0;
  }

  (*(*v5 + 80))(v5, v6);
  CI::MetalContext::after_render(void)::SignpostTimer::~SignpostTimer(v7);
}

void CI::MetalContext::after_render(void)::SignpostTimer::~SignpostTimer(TimerBase *a1)
{
  v2 = ci_signpost_log_render();
  v3 = *(a1 + 1);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v2;
    if (os_signpost_enabled(v2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "after_render", &unk_19CFBCBAE, v5, 2u);
    }
  }

  TimerBase::~TimerBase(a1);
}

uint64_t CI::MetalContext::compute_quad(uint64_t a1, int a2, uint64_t a3, double *a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, unint64_t a11, unsigned int a12)
{
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v19 = ci_signpost_log_render();
    v20 = a2 | ((*(*a1 + 280))(a1) << 32);
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v20, "compute_quad", &unk_19CFBCBAE, buf, 2u);
    }
  }

  v21 = (*(*a1 + 280))(a1);
  TimerBase::TimerBase(buf, v21, a2, "compute_quad", 14);
  if (CI_NO_RENDER())
  {
    goto LABEL_6;
  }

  PipelineState = CI::MetalMainProgram::getPipelineState(a3, a2);
  if (!PipelineState || !*(a1 + 1816))
  {
    goto LABEL_22;
  }

  if ((*(*a3 + 88))(a3))
  {
    if (!*(a1 + 1824) || !*(a1 + 1832))
    {
      goto LABEL_22;
    }

    v24 = *((*(*a3 + 88))(a3) + 16);
  }

  else
  {
    v24 = 0;
  }

  if (!*a5)
  {
LABEL_22:
    v22 = 0;
    goto LABEL_23;
  }

  v25 = *(a1 + 1744);
  if (v25)
  {
    v26 = (a1 + 1488);
    while (*(v26 - 32) && *v26)
    {
      ++v26;
      if (!--v25)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_22;
  }

LABEL_20:
  if (*(a3 + 152) == 1)
  {
    v27 = (*(*a1 + 280))(a1);
    CIMetalRenderToImageblocks(v27, a2, *(a1 + 1848), PipelineState, *(a1 + 1816), *a4, a4[1], a7, a5, *(a1 + 1744), a1 + 1232, a1 + 1488, *(a3 + 56));
  }

  else
  {
    v42 = v24;
    v44[0] = a11;
    v44[1] = HIDWORD(a11);
    v44[2] = a12;
    v29 = (*(*a1 + 280))(a1);
    v30 = *(a1 + 1848);
    v31 = *(a1 + 1816);
    v32 = *(a1 + 1824);
    v33 = *(a1 + 1832);
    v34 = *a4;
    v35 = a4[1];
    v36 = *(a1 + 1744);
    v37 = *(a3 + 56);
    v43[0] = a9;
    v43[1] = HIDWORD(a9);
    if (HIDWORD(a11))
    {
      v38 = a12 == 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = v38 || a11 == 0;
    v40 = v44;
    if (v39)
    {
      v40 = 0;
    }

    v43[2] = a10;
    CIMetalRenderToTextures(v29, a2, v30, PipelineState, v31, v32, v33, v42, v34, v35, a7, a5, a6, v36, a1 + 1232, a1 + 1488, v37, v43, v40);
  }

  if (!*(a1 + 1744))
  {
LABEL_6:
    v22 = 1;
    goto LABEL_23;
  }

  v41 = 0;
  do
  {
    CFRelease(*(a1 + 1232 + 8 * v41++));
    v22 = 1;
  }

  while (v41 < *(a1 + 1744));
LABEL_23:
  CI::MetalContext::compute_quad(CI::NodeIndex,CI::MetalMainProgram const*,CGSize const&,void const**,void const**,unsigned long,CI::Dimensions,CI::Dimensions)::SignpostTimer::~SignpostTimer(buf);
  return v22;
}

void CI::MetalContext::compute_quad(CI::NodeIndex,CI::MetalMainProgram const*,CGSize const&,void const**,void const**,unsigned long,CI::Dimensions,CI::Dimensions)::SignpostTimer::~SignpostTimer(TimerBase *a1)
{
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v2 = ci_signpost_log_render();
    v3 = *(a1 + 1);
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v4 = v2;
      if (os_signpost_enabled(v2))
      {
        *v5 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "compute_quad", &unk_19CFBCBAE, v5, 2u);
      }
    }
  }

  TimerBase::~TimerBase(a1);
}

BOOL CI::MetalContext::set_texture_destination(uint64_t a1, CFTypeRef *a2, _OWORD *a3)
{
  v3 = *a2;
  if (*a2)
  {
    *(a1 + 1992) = 1;
    *(a1 + 1904) = *a3;
    v6 = *a2;
    if (*a2)
    {
      v6 = CFRetain(v6);
    }

    *(a1 + 1936) = v6;
    v7 = a2[1];
    if (v7)
    {
      *(a1 + 1944) = CFRetain(v7);
    }
  }

  return v3 != 0;
}

BOOL CI::MetalContext::set_texture_destination(uint64_t a1, void *aBlock, _OWORD *a3)
{
  if (aBlock)
  {
    *(a1 + 1992) = 1;
    *(a1 + 1904) = *a3;
    *(a1 + 1976) = _Block_copy(aBlock);
  }

  return aBlock != 0;
}

_WORD *CI::MetalContext::set_surface_destination(_WORD *result, __IOSurface *a2, __CVBuffer *a3, CGSize *a4, uint64_t a5)
{
  v6 = *a5;
  if (*a5)
  {
    v10 = result;
    result[996] = 257;
    v26 = 2;
    if (CI::MetalContext::use_imageblocks_for_format(result, v6))
    {
      if (CI_ENABLE_METAL_IMAGEBLOCKS() == 2)
      {
        v11 = 4;
      }

      else
      {
        v11 = 2;
      }

      v26 = v11;
    }

    *(v10 + 119) = *a4;
    if (*(a5 + 4))
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    *(v10 + 480) = *a5;
    *(v10 + 1924) = v12;
    if (CVPixelBufferGetIOSurface(a3) != a2)
    {
      a3 = 0;
    }

    if (IOSurfaceGetPlaneCount(a2) == 2)
    {
      v14 = CI::format_from_IOSurface(a2, v13);
      CI::format_is_ycc_biplanar(v14);
      v15 = 0;
      v16 = v10 + 976;
      v17 = 1;
      do
      {
        v18 = v17;
        v19 = CI::format_of_plane(v14, v15);
        if (((*(*v10 + 432))(v10, v19) & 1) == 0)
        {
          LODWORD(v19) = CI::format_of_plane_old(v14, v15);
        }

        v20 = CIMetalFormatForFormat(v19, 0);
        WidthOfPlane = IOSurfaceGetWidthOfPlane(a2, v15);
        v27.height = IOSurfaceGetHeightOfPlane(a2, v15);
        v27.width = WidthOfPlane;
        v22 = CI::texture_from_pixelbuffer_cache(v10, a3, v20, v15, v27);
        if (v22)
        {
          *&v16[4 * v15] = v22;
          result = CVMetalTextureGetTexture(v22);
        }

        else
        {
          *&v16[4 * v15] = 0;
          result = CIMetalTextureCreateFromIOSurface(*(v10 + 251), [*(v10 + 49) device], a2, v15, v20, v26);
        }

        v17 = 0;
        *&v10[4 * v15 + 968] = result;
        v15 = 1;
      }

      while ((v18 & 1) != 0);
    }

    else
    {
      v23 = CIMetalFormatForFormat(*a5, *(a5 + 4));
      v24 = v23;
      v25 = CI::texture_from_pixelbuffer_cache(v10, a3, v23, 0, *a4);
      if (v25)
      {
        *(v10 + 244) = v25;
        result = CVMetalTextureGetTexture(v25);
      }

      else
      {
        *(v10 + 244) = 0;
        result = CIMetalTextureCreateFromPaddedIOSurface(a4->width, a4->height, *(v10 + 251), [*(v10 + 49) device], a2, 0, v24, v26);
      }

      *(v10 + 242) = result;
    }
  }

  return result;
}

CVMetalTextureRef CI::texture_from_pixelbuffer_cache(CI *this, CI::MetalContext *a2, __CVBuffer *a3, unsigned int a4, CGSize a5)
{
  result = 0;
  if (a2)
  {
    if (this)
    {
      v7 = a3;
      if (a3)
      {
        v8 = *(this + 234);
        if (v8 && (height = a5.height, width = a5.width, CI::MetalContext::formatIsWritable(this, a3)) && ((PixelFormatType = CVPixelBufferGetPixelFormatType(a2), v15 = CI::format_from_CVPixelBuffer(a2, v14), is_packed = CI::format_is_packed(v15), PixelFormatType >> 24 == 124) || PixelFormatType >> 24 == 38 || (PixelFormatType & 0xFD000000) == 0x2D000000 || (is_packed & 1) == 0))
        {
          textureOut = 0;
          CVMetalTextureCacheCreateTextureFromImage(0, v8, a2, 0, v7, width, height, a4, &textureOut);
          return textureOut;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t CI::MetalContext::set_bitmap_destination(uint64_t a1, CI::Bitmap *a2, double *a3, int *a4, unint64_t a5)
{
  result = *a4;
  if (result)
  {
    *(a1 + 1992) = 0;
    v11 = CIMetalFormatForFormat(result, *(a4 + 4));
    v12 = a3[1];
    v13 = *a3 * a5;
    v14 = 2;
    if (CI::MetalContext::use_imageblocks_for_format(a1, *a4))
    {
      if (CI_ENABLE_METAL_IMAGEBLOCKS() == 2)
      {
        v14 = 4;
      }

      else
      {
        v14 = 2;
      }
    }

    *(a1 + 1904) = *a3;
    if (*(a4 + 4))
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    *(a1 + 1920) = *a4;
    *(a1 + 1924) = v15;
    if ((atomic_load_explicit(&qword_1ED7C4548, memory_order_acquire) & 1) == 0)
    {
      CI::MetalContext::set_bitmap_destination();
    }

    v16 = *(a2 + 9);
    v17 = CI::Bitmap::length(a2);
    v18 = *(a2 + 12);
    v19 = _MergedGlobals_6 - 1;
    if ((_MergedGlobals_6 & (_MergedGlobals_6 - 1)) != 0)
    {
      if (v16 % _MergedGlobals_6 || v17 % _MergedGlobals_6)
      {
        goto LABEL_20;
      }
    }

    else if ((v19 & v16) != 0 || (v19 & v17) != 0)
    {
      goto LABEL_20;
    }

    if ((v18 & 0x3F) == 0 && v17 >= v18 * v12)
    {
      v20 = CIMetalBufferCreateAndWrapData(*(a1 + 2008), [*(a1 + 392) device], v16, v17);
      *(a1 + 1928) = v20;
      result = CIMetalTextureCreateFromBuffer(*(a1 + 2008), v20, v11, v13, v12, v18, v14);
LABEL_21:
      *(a1 + 1936) = result;
      return result;
    }

LABEL_20:
    result = CIMetalTextureCreate(*(a1 + 2008), [*(a1 + 392) device], v11, v13, v12, v14);
    goto LABEL_21;
  }

  return result;
}

CFIndex CI::Bitmap::length(CI::Bitmap *this)
{
  if (*(this + 5))
  {
    v2 = *(this + 5);

    return CFDataGetLength(v2);
  }

  else
  {
    v4 = *(this + 10);
    v5 = (*(this + 11) - 1) * *(this + 12);
    return v5 + v4 * CI::format_bytes_per_pixel(*(this + 26));
  }
}

double CI::MetalContext::unset_destination(CI::MetalContext *this)
{
  v2 = *(this + 233);
  if (v2)
  {
    CFRelease(v2);
    *(this + 233) = 0;
  }

  v3 = 0;
  v4 = this + 1936;
  v5 = this + 1952;
  v6 = 1;
  do
  {
    v7 = v6;
    if (*&v4[8 * v3])
    {
      if (*&v5[8 * v3])
      {
        v8 = *&v5[8 * v3];
      }

      else
      {
        v8 = *&v4[8 * v3];
      }

      CFRelease(v8);
      *&v5[8 * v3] = 0;
      *&v4[8 * v3] = 0;
    }

    v6 = 0;
    v3 = 1;
  }

  while ((v7 & 1) != 0);
  v9 = *(this + 241);
  if (v9)
  {
    CFRelease(v9);
    *(this + 241) = 0;
  }

  v10 = *(this + 246);
  if (v10)
  {
    CFRelease(v10);
    *(this + 246) = 0;
  }

  v11 = *(this + 247);
  if (v11)
  {
    _Block_release(v11);
  }

  *(this + 248) = 0;
  result = 0.0;
  *(this + 123) = 0u;
  *(this + 122) = 0u;
  *(this + 121) = 0u;
  *(this + 120) = 0u;
  *(this + 119) = 0u;
  return result;
}

CFTypeRef CI::MetalContext::set_command_buffer(CFTypeRef this, CFTypeRef cf)
{
  if (cf)
  {
    v2 = this;
    this = CFRetain(cf);
    *(v2 + 1864) = this;
  }

  return this;
}

uint64_t CI::MetalContext::render_node(CI::MetalContext *this, CI::TileTask *a2, const CI::parentROI *a3, const CGRect *a4, const void **a5, const void **a6, __IOSurface **a7, uint64_t a8)
{
  v62 = *MEMORY[0x1E69E9840];
  v15 = *a3;
  v16 = CI::parentROI::roi(a3);
  v60.origin.x = v16;
  v60.origin.y = v17;
  v60.size.width = v18;
  v60.size.height = v19;
  if (!v15)
  {
    return 0;
  }

  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  bzero(this + 1232, 0x100uLL);
  bzero(this + 1488, 0x100uLL);
  *(this + 218) = 0;
  v24 = *(v15 + 48);
  if ((*(*v24 + 16))(v24) >= 47 && (*(*v24 + 16))(v24) <= 49)
  {
    v25 = *(v15 + 48);
    if (*(v25 + 243) != 1 || (*(*v25 + 40))(*(v15 + 48)) < 1 || !*(this + 232))
    {
      return CI::Context::render_processor_node(this, a2, a3, [*a5 iosurface], *a5);
    }

    if (CI_VERBOSE_SIGNPOSTS())
    {
      v26 = ci_signpost_log_render();
      v27 = v25[9] | ((*(*this + 280))(this) << 32);
      if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        v28 = (*(*v25 + 24))(v25);
        LODWORD(buf.a) = 138543362;
        *(&buf.a + 4) = v28;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v27, "processor_syncinputs", "%{public}@", &buf, 0xCu);
      }
    }

    v55 = (*(*this + 280))(this);
    TimerBase::TimerBase(&buf, v55, v25[9], "processor_syncinputs", 0);
    v56 = *(this + 232);
    if (v56 != *(this + 233))
    {
      CIMetalCommandBufferWaitUntilCompleted(v56);
      CI::MetalContext::render_node(CI::TileTask *,CI::parentROI const&,CGRect const&,void const**,void const**,__IOSurface **,unsigned long)::SignpostTimer::~SignpostTimer(&buf);
      return CI::Context::render_processor_node(this, a2, a3, [*a5 iosurface], *a5);
    }

    CI::MetalContext::render_node(CI::TileTask *,CI::parentROI const&,CGRect const&,void const**,void const**,__IOSurface **,unsigned long)::SignpostTimer::~SignpostTimer(&buf);
    return 0;
  }

  v29 = CI::ProgramNode::mainProgram(v15);
  if ((*(*v29 + 16))(v29) < 75 || (*(*v29 + 16))(v29) > 77)
  {
    return 0;
  }

  v63.origin.x = v20;
  v63.origin.y = v21;
  v63.size.width = v22;
  v63.size.height = v23;
  v64 = CGRectIntersection(v63, *a4);
  v59.size.width = v64.size.width;
  v59.size.height = v64.size.height;
  height = v64.size.height;
  v58 = vrndpq_f64(vdivq_f64(v64.size, vcvtq_f64_u64(*(v29 + 11))));
  if (*(v15 + 149) == 1)
  {
    MidY = CGRectGetMidY(*a4);
    buf.b = 0.0;
    buf.c = 0.0;
    buf.a = 1.0;
    *&buf.d = xmmword_19CF25100;
    buf.ty = MidY + MidY;
    v65.origin.x = v20;
    v65.origin.y = v21;
    v65.size.width = v22;
    v65.size.height = v23;
    v66 = CGRectApplyAffineTransform(v65, &buf);
    v64 = CGRectIntersection(v66, *a4);
    v59.size.width = v32;
    v59.size.height = -v33;
  }

  y = v64.origin.y;
  v59.origin = vsubq_f64(v64.origin, a4->origin);
  CI::MetalContext::bind_arguments(this, v15, &v60, &v59, &v58, a2);
  if (CI_LIMIT_RENDER())
  {
    __asm { FMOV            V0.2D, #1.0 }

    v58 = _Q0;
  }

  v40 = *(v15 + 48);
  if ((*(*v40 + 16))(v40) == 59)
  {
    v46 = *(v40 + 136);
    v42 = *(v40 + 144);
    v43 = *(v40 + 148);
    v44 = *(v40 + 156);
    v45 = v46 & 0xFFFFFFFF00000000;
    v46 = v46;
  }

  else
  {
    v47 = *(v15 + 48);
    if (!v47)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v48 = (*(*v47 + 16))(v47);
      v49 = *v47;
      if (v48 == 55)
      {
        break;
      }

      v47 = (*(v49 + 48))(v47, 0);
      if (!v47)
      {
        goto LABEL_22;
      }
    }

    if ((*(v49 + 424))(v47) == 59 || (*(*v47 + 424))(v47) == 57 || (*(*v47 + 424))(v47) == 60 || (*(*v47 + 424))(v47) == 58)
    {
      PipelineState = CI::MetalMainProgram::getPipelineState(v29, *(v15 + 36));
      if (([PipelineState threadExecutionWidth] & 0xF) == 0)
      {
        [PipelineState threadExecutionWidth];
      }

      v44 = 0;
      v43 = 0;
      v42 = 0;
      v45 = 0x1000000000;
      v46 = 16;
    }

    else
    {
LABEL_22:
      v44 = 0;
      v43 = 0;
      v42 = 0;
      v45 = 0;
      v46 = 0;
    }
  }

  v51 = CI::MetalContext::compute_quad(this, *(v15 + 36), v29, &v58.width, a5, a6, a8, v41, v46 | v45, v42, v43, v44);
  v52 = *(this + 227);
  if (v52)
  {
    CFRelease(v52);
    *(this + 227) = 0;
  }

  v53 = *(this + 228);
  if (v53)
  {
    CFRelease(v53);
    *(this + 228) = 0;
  }

  v54 = *(this + 229);
  if (v54)
  {
    CFRelease(v54);
    *(this + 229) = 0;
  }

  return v51;
}

void sub_19CE54434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  CI::MetalContext::render_node(CI::TileTask *,CI::parentROI const&,CGRect const&,void const**,void const**,__IOSurface **,unsigned long)::SignpostTimer::~SignpostTimer(va);
  _Unwind_Resume(a1);
}

void CI::MetalContext::render_node(CI::TileTask *,CI::parentROI const&,CGRect const&,void const**,void const**,__IOSurface **,unsigned long)::SignpostTimer::~SignpostTimer(TimerBase *a1)
{
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v2 = ci_signpost_log_render();
    v3 = *(a1 + 1);
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v4 = v2;
      if (os_signpost_enabled(v2))
      {
        *v5 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "processor_syncinputs", &unk_19CFBCBAE, v5, 2u);
      }
    }
  }

  TimerBase::~TimerBase(a1);
}

void CI::MetalContext::bind_arguments(CI::MetalContext *this, const CI::ProgramNode *a2, const CGRect *a3, const CGRect *a4, float64x2_t *a5, CI::TileTask *a6)
{
  v71 = *MEMORY[0x1E69E9840];
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v10 = ci_signpost_log_render();
    v11 = *(a2 + 9) | ((*(*this + 280))(this) << 32);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      LOWORD(buf.origin.x) = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "bind_arguments", &unk_19CFBCBAE, &buf, 2u);
    }
  }

  v12 = (*(*this + 280))(this);
  TimerBase::TimerBase(v68, v12, *(a2 + 9), "bind_arguments", 11);
  v13 = CI::ProgramNode::mainProgram(a2);
  if ((*(v13->isa + 2))(v13) >= 75 && (*(v13->isa + 2))(v13) < 78)
  {
    v14 = CIMetalBufferCreate(*(this + 251), [*(this + 49) device], (v13[14].isa + 15) & 0xFFFFFFFFFFFFFFF0);
    *(this + 227) = v14;
    if (v14)
    {
      v58 = [v14 contents];
      if (v58)
      {
        v15 = (*(v13->isa + 11))(v13);
        v16 = v15;
        if (v15)
        {
          v17 = v15[1];
          v19 = *v17;
          v18 = v17[1];
          *(this + 228) = CIMetalBufferCreate(*(this + 251), [*(this + 49) device], (((*v15)[1] + ~**v15) & 0xFFFFFFFFFFFFFFF0) + 16);
          v20 = CIMetalBufferCreate(*(this + 251), [*(this + 49) device], ((v18 + ~v19) & 0xFFFFFFFFFFFFFFF0) + 16);
          *(this + 229) = v20;
          if (!*(this + 228))
          {
            goto LABEL_74;
          }

          if (!v20)
          {
            goto LABEL_74;
          }

          v21 = [*(this + 228) contents];
          v22 = [*(this + 229) contents];
          if (!v21)
          {
            goto LABEL_74;
          }

          v23 = v22;
          if (!v22)
          {
            goto LABEL_74;
          }

          memcpy(v21, **v16, (*v16)[1] - **v16);
          memcpy(v23, *v16[1], v16[1][1] - *v16[1]);
        }

        *v58 = vcvt_hight_f32_f64(vcvt_f32_f64(a4->origin), a4->size);
        v24 = CI::MainProgram::num_arguments(v13);
        if (CI_VERBOSE_SIGNPOSTS())
        {
          v25 = ci_signpost_log_render();
          v26 = *(a2 + 9) | ((*(*this + 280))(this) << 32);
          if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
          {
            LOWORD(buf.origin.x) = 0;
            _os_signpost_emit_with_name_impl(&dword_19CC36000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v26, "render_node_arguments", &unk_19CFBCBAE, &buf, 2u);
          }
        }

        v27 = (*(*this + 280))(this);
        TimerBase::TimerBase(&buf, v27, *(a2 + 9), "render_node_arguments", 0);
        dispatch_sync(*(a2 + 13), &__block_literal_global_61_0);
        v56 = *(a2 + 16);
        if (CI_VERBOSE_SIGNPOSTS())
        {
          v28 = ci_signpost_log_render();
          y = buf.origin.y;
          if ((*&buf.origin.y - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v30 = v28;
            if (os_signpost_enabled(v28))
            {
              LOWORD(v66.origin.x) = 0;
              _os_signpost_emit_with_name_impl(&dword_19CC36000, v30, OS_SIGNPOST_INTERVAL_END, *&y, "render_node_arguments", &unk_19CFBCBAE, &v66, 2u);
            }
          }
        }

        TimerBase::~TimerBase(&buf);
        if (v56)
        {
          if (*v56 == v24)
          {
            *(this + 218) = 0;
            if (v24 >= 1)
            {
              v31 = 0;
              v55 = v24;
              v32 = -80;
              v33 = -40;
              while (2)
              {
                v34 = (*(v13->isa + 5))(v13, v31);
                v35 = v34;
                if (v31 > 9)
                {
                  v36 = (*(v56 + 16) + v32);
                }

                else
                {
                  v36 = (v56 + 24 + 8 * v31);
                }

                isa = v13[15].isa;
                if (isa && v31 < *isa)
                {
                  if (v31 > 9)
                  {
                    v38 = (*(isa + 2) + v33);
                  }

                  else
                  {
                    v38 = &isa[v31 + 6];
                  }

                  v39 = *v38;
                }

                else
                {
                  v39 = -1;
                }

                v57 = v39;
                v40 = *v36;
                switch(v34)
                {
                  case 1:
                  case 2:
                  case 3:
                  case 4:
                    if ((*(*v40 + 16))(v40) == 68)
                    {
                      CI::ProgramNode::roiKeys_of_child(a2, *a3, v40[8], &buf);
                      if (CI::Context::bind_sampler(this, v40, *&buf.origin.x, *(this + 436), v35, a6))
                      {
                        ++*(this + 218);
                      }

                      if (*&buf.origin.x)
                      {
                        buf.origin.y = buf.origin.x;
                        operator delete(*&buf.origin.x);
                      }

                      goto LABEL_69;
                    }

                    break;
                  case 5:
                  case 6:
                  case 7:
                  case 8:
                  case 9:
                  case 10:
                  case 11:
                    if ((*(*v40 + 16))(v40) == 66)
                    {
                      goto LABEL_39;
                    }

                    break;
                  case 12:
                  case 13:
                  case 14:
                  case 15:
                  case 16:
                  case 17:
                  case 18:
                    if ((*(*v40 + 16))(v40) == 66)
                    {
                      CI::Vector::copy_to(v40, (v58 + v57));
                      goto LABEL_69;
                    }

                    break;
                  case 19:
                  case 23:
                    if ((*(*v40 + 16))(v40) == 66)
                    {
                      *(v58->i32 + v57) = *(v40 + 7);
                      goto LABEL_69;
                    }

                    break;
                  case 20:
                  case 24:
                    if ((*(*v40 + 16))(v40) == 66)
                    {
                      *(v58->f32 + v57) = vcvt_s32_f32(*(v40 + 7));
                      goto LABEL_69;
                    }

                    break;
                  case 21:
                  case 25:
                    if ((*(*v40 + 16))(v40) == 66)
                    {
                      v45 = (v58 + v57);
                      *v45 = vcvt_s32_f32(*(v40 + 7));
                      v45[1].i32[0] = *(v40 + 9);
                      goto LABEL_69;
                    }

                    break;
                  case 22:
                  case 26:
                    if ((*(*v40 + 16))(v40) == 66)
                    {
                      *(v58 + v57) = vcvtq_s32_f32(*(v40 + 7));
                      goto LABEL_69;
                    }

                    break;
                  case 27:
                    if ((*(*v40 + 16))(v40) == 66)
                    {
LABEL_39:
                      CI::Vector::copy_to(v40, (v58->f32 + v57));
                      goto LABEL_69;
                    }

                    break;
                  case 28:
                  case 29:
                    if ((*(*v40 + 16))(v40) == 65)
                    {
                      CI::Buffer::copy_to(v40, v58 + v57);
                      goto LABEL_69;
                    }

                    break;
                  case 37:
                  case 44:
                  case 45:
                    if ((*(*v40 + 16))(v40) == 66)
                    {
                      CI::Vector::affine(v40, &v66.origin.x);
                      v41 = a3->origin.x - a4->origin.x;
                      v42 = a3->origin.y - a4->origin.y;
                      v64 = v66;
                      *&v65 = *&v67 + v66.origin.x * v41 + v66.size.width * v42;
                      *(&v65 + 1) = *(&v67 + 1) + v66.origin.y * v41 + v66.size.height * v42;
                      if (v35 == 37)
                      {
                        CI::Affine::inverse(&v64, &buf);
                        v64 = buf;
                        v65 = v70;
                      }

                      *&v63.a = v64.origin;
                      *&v63.c = v64.size;
                      *&v63.tx = v65;
                      v43 = CI::Vector::Vector(&buf, &v63);
                      v44 = (v58 + v57);
                      CI::Vector::copy_to(v43, (v58->f32 + v57));
                      if (v35 != 44)
                      {
                        v44[6] = vcvt_f32_f64(vcvtq_f64_u64(*&v13[11].isa));
                        v44[7] = vcvt_f32_f64(*a5);
                      }

                      *&buf.size.width = &unk_1F1033F70;
                      goto LABEL_68;
                    }

                    break;
                  case 40:
                    if ((*(*v40 + 16))(v40) == 68)
                    {
                      memset(&v66, 0, sizeof(v66));
                      v66.origin.x = CI::Node::region_of_child(a2, *a3);
                      v66.origin.y = v46;
                      v66.size.width = v47;
                      v66.size.height = v48;
                      CI::TextureSampler::transform(v40, this, &v66, &v62);
                      v49 = CI::Vector::Vector(&buf, &v62);
                      CI::Vector::copy_to(v49, (v58->f32 + v57));
                      goto LABEL_67;
                    }

                    break;
                  case 41:
                    if ((*(*v40 + 16))(v40) == 68)
                    {
                      memset(&v64, 0, sizeof(v64));
                      v64.origin.x = CI::Node::region_of_child(a2, *a3);
                      v64.origin.y = v50;
                      v64.size.width = v51;
                      v64.size.height = v52;
                      CI::TextureSampler::transform(v40, this, &v64, &v66);
                      *&v61.a = v66.origin;
                      *&v61.c = v66.size;
                      *&v61.tx = v67;
                      v53 = CI::Vector::Vector(&buf, &v61);
                      CI::Vector::copy_to(v53, (v58->f32 + v57));
                      *&buf.size.width = &unk_1F1033F70;
                      atomic_fetch_add(&dword_1ED7C47BC[64], 0xFFFFFFFF);
                      v54 = CI::Vector::Vector(&buf, *(v40 + 22));
                      CI::Vector::copy_to(v54, (v58[3].f32 + v57));
LABEL_67:
                      *&buf.size.width = &unk_1F1033F70;
LABEL_68:
                      atomic_fetch_add(&dword_1ED7C47BC[64], 0xFFFFFFFF);
                      goto LABEL_69;
                    }

                    break;
                  case 42:
                  case 43:
                  case 46:
                  case 47:
                    goto LABEL_69;
                  default:
                    x_log("Unhandled type: %d\n", v34);
LABEL_69:
                    ++v31;
                    v32 += 8;
                    v33 += 4;
                    if (v55 == v31)
                    {
                      break;
                    }

                    continue;
                }

                break;
              }
            }
          }
        }
      }
    }
  }

LABEL_74:
  CI::MetalContext::bind_arguments(CI::ProgramNode const*,CGRect const&,CGRect const&,CGSize const&,CI::TileTask *)::SignpostTimer::~SignpostTimer(v68);
}

void CI::MetalContext::render_root_node(uint64_t a1, CI::TileTask *a2, CI::parentROI *this, uint64_t a4, uint64_t a5)
{
  v55 = *MEMORY[0x1E69E9840];
  v10 = *this;
  v11 = CI::parentROI::roi(this);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *(v10 + 48);
  if ((*(*v18 + 16))(v18) < 47 || (*(*v18 + 16))(v18) >= 50)
  {
    if (CI_VERBOSE_SIGNPOSTS())
    {
      v21 = ci_signpost_log_render();
      v22 = *(v10 + 36) | ((*(*a1 + 280))(a1) << 32);
      if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v22, "render_node_mainProgram", &unk_19CFBCBAE, buf, 2u);
      }
    }

    v23 = (*(*a1 + 280))(a1);
    TimerBase::TimerBase(buf, v23, *(v10 + 36), "render_node_mainProgram", 0);
    v19 = CI::ProgramNode::mainProgram(v10);
    v25 = v24;
    (*(v19->isa + 2))(v19);
    if ((*(v19->isa + 2))(v19) >= 78)
    {
      v26 = 0;
    }

    else
    {
      v26 = v19;
    }

    v20 = v25;
    *&v26[4].isa = v25;
    CI::MetalContext::render_root_node(CI::TileTask *,CI::parentROI const&,void({block_pointer})(void),void({block_pointer})(void))::SignpostTimer::~SignpostTimer(buf);
  }

  else
  {
    v19 = 0;
    v20 = 0.0;
  }

  if (CI_VERBOSE_SIGNPOSTS())
  {
    v27 = ci_signpost_log_render();
    v28 = *(v10 + 36) | ((*(*a1 + 280))(a1) << 32);
    if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      v30 = CI::Context::programName(v10, v29);
      *buf = 68289026;
      v52 = 256;
      v53 = 2082;
      v54 = v30;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v28, "render_node", "%{public}.256s", buf, 0x12u);
    }
  }

  v31 = (*(*a1 + 280))(a1);
  TimerBase::TimerBase(buf, v31, *(v10 + 36), "render_node", 0);
  *(a1 + 1856) = *(a1 + 1848);
  v32 = *(v10 + 48);
  v33 = (*(*v32 + 16))(v32) < 47 || (*(*v32 + 16))(v32) > 49;
  if (!CI_ENABLE_METAL_DEBUG() || *(a1 + 1864) || (v45 = *(v10 + 48), (*(*v45 + 16))(v45) >= 47) && (*(*v45 + 16))(v45) < 50)
  {
    v35 = 0;
  }

  else
  {
    v35 = v50;
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = ___ZN2CI12MetalContext16render_root_nodeEPNS_8TileTaskERKNS_9parentROIEU13block_pointerFvvES7__block_invoke;
    v50[3] = &__block_descriptor_48_e11_v24__0Q8Q16l;
    v50[4] = a2;
    v50[5] = v10;
  }

  v36 = *(a1 + 1864);
  if (!v36)
  {
    v36 = CIMetalCommandBufferCreate(*(a1 + 2008), *(a1 + 392), v33, v35);
  }

  *(a1 + 1848) = v36;
  v37 = *(a1 + 1976);
  if (v37)
  {
    (*(v37 + 16))(&cf);
    x = cf.origin.x;
    if (*&cf.origin.x)
    {
      x = COERCE_DOUBLE(CFRetain(*&cf.origin.x));
    }

    *(a1 + 1936) = x;
  }

  cf.origin.x = 0.0;
  cf.origin.y = 0.0;
  cf.size = *(a1 + 1904);
  *(a1 + 1984) = CI::MetalContext::render_node(a1, a2, this, &cf, (a1 + 1936), (a1 + 1952), v34, 2);
  if (*(a1 + 1968))
  {
    [*(a1 + 1848) presentDrawable:?];
  }

  v39 = *(a1 + 1848) == *(a1 + 1864);
  v40 = CI::ProgramNode::program_name(v10);
  v56.origin.x = v11;
  v56.origin.y = v13;
  v56.size.width = v15;
  v56.size.height = v17;
  CI::TileTask::addROIForNode(a2, v10, v56);
  if (v19)
  {
    CI::TileTask::incrementCompileWaitTimeForNode(a2, v10, v20);
    v41 = COERCE_DOUBLE(atomic_load(&v19[3]));
    CI::TileTask::setCompileTimeForNode(a2, v10, *&v19[5].isa + v41);
  }

  if (a2)
  {
    CI::Object::ref(a2);
  }

  if (*(a1 + 1864))
  {
    (*(a4 + 16))(a4);
  }

  else
  {
    v42 = *(a1 + 1848);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = ___ZN2CI12MetalContext16render_root_nodeEPNS_8TileTaskERKNS_9parentROIEU13block_pointerFvvES7__block_invoke_2;
    v48[3] = &unk_1E75C35F0;
    v48[4] = a4;
    [v42 addScheduledHandler:v48];
  }

  v43 = *(a1 + 1848);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = ___ZN2CI12MetalContext16render_root_nodeEPNS_8TileTaskERKNS_9parentROIEU13block_pointerFvvES7__block_invoke_3;
  v46[3] = &unk_1E75C4B58;
  v47 = v39;
  v46[6] = v40;
  v46[7] = v10;
  v46[4] = a5;
  v46[5] = a2;
  CIMetalCommandBufferAddCompletionHandler(v43, v46);
  if ((*(a1 + 1992) & 1) == 0 && !*(a1 + 1928))
  {
    CIMetalCommandBufferSynchronizeTexture(*(a1 + 1848), *(a1 + 1936));
  }

  v44 = *(a1 + 1848);
  if (v44 != *(a1 + 1864))
  {
    CIMetalCommandBufferCommit(v44);
  }

  CI::MetalContext::render_root_node(CI::TileTask *,CI::parentROI const&,void({block_pointer})(void),void({block_pointer})(void))::SignpostTimer::~SignpostTimer(buf);
}

void CI::MetalContext::render_root_node(CI::TileTask *,CI::parentROI const&,void({block_pointer})(void),void({block_pointer})(void))::SignpostTimer::~SignpostTimer(TimerBase *a1)
{
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v2 = ci_signpost_log_render();
    v3 = *(a1 + 1);
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v4 = v2;
      if (os_signpost_enabled(v2))
      {
        *v5 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "render_node_mainProgram", &unk_19CFBCBAE, v5, 2u);
      }
    }
  }

  TimerBase::~TimerBase(a1);
}

{
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v2 = ci_signpost_log_render();
    v3 = *(a1 + 1);
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v4 = v2;
      if (os_signpost_enabled(v2))
      {
        *v5 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "render_node", &unk_19CFBCBAE, v5, 2u);
      }
    }
  }

  TimerBase::~TimerBase(a1);
}

void ___ZN2CI12MetalContext16render_root_nodeEPNS_8TileTaskERKNS_9parentROIEU13block_pointerFvvES7__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CI::TileTask::incrementCyclesForNode(*(a1 + 32), *(a1 + 40), a2);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  CI::TileTask::incrementNanoSecForNode(v5, v6, a3);
}

uint64_t ___ZN2CI12MetalContext16render_root_nodeEPNS_8TileTaskERKNS_9parentROIEU13block_pointerFvvES7__block_invoke_3(uint64_t a1, void *a2)
{
  if ([a2 status] == 5)
  {
    v4 = *(a1 + 40);
    v5 = [a2 error];
  }

  else
  {
    if (!internalError(a2))
    {
      goto LABEL_6;
    }

    v4 = *(a1 + 40);
    v5 = internalError(a2);
  }

  CI::TileTask::setCommandBufferError(v4, v5);
LABEL_6:
  if ((CI_PRINT_TIME() & 0x100) != 0)
  {
    if (*(a1 + 64) == 1)
    {
      CIMetalCommandBufferGetGPUTime(a2);
      x_log("CI_PRINT_TIME [GPU] command buffer (%p) = %.1f ms\n");
    }

    else
    {
      CIMetalCommandBufferGetGPUTime(a2);
      x_log("CI_PRINT_TIME [GPU] root program (%s) = %.1f ms\n");
    }
  }

  CIMetalCommandBufferGetGPUTime(a2);
  CI::TileTask::incrementTimeForNode(*(a1 + 40), *(a1 + 56), v6);
  v7 = *(a1 + 40);
  *(v7 + 40) = CFAbsoluteTimeGetCurrent();
  v8 = *(a1 + 40);
  if (v8)
  {
    CI::Object::unref(v8);
  }

  v9 = *(*(a1 + 32) + 16);

  return v9();
}

void CI::MetalContext::render_intermediate_node(CI::MetalContext *a1, CI::TileTask *a2, CI::parentROI *this, uint64_t a4, int a5, uint64_t a6)
{
  v52 = *MEMORY[0x1E69E9840];
  v11 = *this;
  v12 = CI::parentROI::roi(this);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *(v11 + 48);
  if ((*(*v19 + 16))(v19) < 47 || (*(*v19 + 16))(v19) >= 50)
  {
    if (CI_VERBOSE_SIGNPOSTS())
    {
      v22 = ci_signpost_log_render();
      v23 = *(v11 + 36) | ((*(*a1 + 280))(a1) << 32);
      if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v23, "render_node_mainProgram", &unk_19CFBCBAE, buf, 2u);
      }
    }

    v24 = (*(*a1 + 280))(a1);
    TimerBase::TimerBase(buf, v24, *(v11 + 36), "render_node_mainProgram", 0);
    v20 = CI::ProgramNode::mainProgram(v11);
    v26 = v25;
    (*(v20->isa + 2))(v20);
    if ((*(v20->isa + 2))(v20) >= 78)
    {
      v27 = 0;
    }

    else
    {
      v27 = v20;
    }

    v21 = v26;
    *&v27[4].isa = v26;
    CI::MetalContext::render_intermediate_node(CI::TileTask *,CI::parentROI const&,CI::intermediate_t *,BOOL,void({block_pointer})(void))::SignpostTimer::~SignpostTimer(buf);
  }

  else
  {
    v20 = 0;
    v21 = 0.0;
  }

  if (CI_VERBOSE_SIGNPOSTS())
  {
    v28 = ci_signpost_log_render();
    v29 = *(v11 + 36) | ((*(*a1 + 280))(a1) << 32);
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      v31 = CI::Context::programName(v11, v30);
      *buf = 68289026;
      v49 = 256;
      v50 = 2082;
      v51 = v31;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v29, "render_node", "%{public}.256s", buf, 0x12u);
    }
  }

  v32 = (*(*a1 + 280))(a1);
  TimerBase::TimerBase(buf, v32, *(v11 + 36), "render_node", 0);
  if (a4)
  {
    *(a1 + 232) = *(a1 + 231);
    v33 = *(v11 + 48);
    v34 = (*(*v33 + 16))(v33) < 47 || (*(*v33 + 16))(v33) > 49;
    if (!CI_ENABLE_METAL_DEBUG() || *(a1 + 233) || (v38 = *(v11 + 48), (*(*v38 + 16))(v38) >= 47) && (*(*v38 + 16))(v38) < 50)
    {
      v35 = 0;
    }

    else
    {
      v35 = v45;
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = ___ZN2CI12MetalContext24render_intermediate_nodeEPNS_8TileTaskERKNS_9parentROIEPNS_14intermediate_tEbU13block_pointerFvvE_block_invoke;
      v45[3] = &__block_descriptor_48_e11_v24__0Q8Q16l;
      v45[4] = a2;
      v45[5] = v11;
    }

    v36 = *(a1 + 233);
    if (a5)
    {
      if (v36)
      {
        v37 = [v36 commandQueue];
      }

      else
      {
        v37 = *(a1 + 49);
      }

      v36 = CIMetalCommandBufferCreate(*(a1 + 251), v37, v34, v35);
    }

    else if (!v36)
    {
      v36 = CIMetalCommandBufferCreate(*(a1 + 251), *(a1 + 49), v34, v35);
    }

    *(a1 + 231) = v36;
    (*(*a4 + 24))(&v44, a4);
    (**a4)(a4);
    v47 = v44;
    v46[0] = 0;
    v46[1] = 0;
    v39 = (*(*a4 + 32))(a4);
    if (*(&v44 + 1))
    {
      v41 = 2;
    }

    else
    {
      v41 = 1;
    }

    CI::MetalContext::render_node(a1, a2, this, v39, &v47, v46, v40, v41);
    CI::ProgramNode::program_name(v11);
    v53.origin.x = v12;
    v53.origin.y = v14;
    v53.size.width = v16;
    v53.size.height = v18;
    CI::TileTask::addROIForNode(a2, v11, v53);
    if (v20)
    {
      CI::TileTask::incrementCompileWaitTimeForNode(a2, v11, v21);
      v42 = COERCE_DOUBLE(atomic_load(&v20[3]));
      CI::TileTask::setCompileTimeForNode(a2, v11, *&v20[5].isa + v42);
    }

    if (a2)
    {
      CI::Object::ref(a2);
    }

    operator new();
  }

  CI::MetalContext::render_intermediate_node(CI::TileTask *,CI::parentROI const&,CI::intermediate_t *,BOOL,void({block_pointer})(void))::SignpostTimer::~SignpostTimer(buf);
}

void CI::MetalContext::render_intermediate_node(CI::TileTask *,CI::parentROI const&,CI::intermediate_t *,BOOL,void({block_pointer})(void))::SignpostTimer::~SignpostTimer(TimerBase *a1)
{
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v2 = ci_signpost_log_render();
    v3 = *(a1 + 1);
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v4 = v2;
      if (os_signpost_enabled(v2))
      {
        *v5 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "render_node_mainProgram", &unk_19CFBCBAE, v5, 2u);
      }
    }
  }

  TimerBase::~TimerBase(a1);
}

{
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v2 = ci_signpost_log_render();
    v3 = *(a1 + 1);
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v4 = v2;
      if (os_signpost_enabled(v2))
      {
        *v5 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "render_node", &unk_19CFBCBAE, v5, 2u);
      }
    }
  }

  TimerBase::~TimerBase(a1);
}

void ___ZN2CI12MetalContext24render_intermediate_nodeEPNS_8TileTaskERKNS_9parentROIEPNS_14intermediate_tEbU13block_pointerFvvE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CI::TileTask::incrementCyclesForNode(*(a1 + 32), *(a1 + 40), a2);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  CI::TileTask::incrementNanoSecForNode(v5, v6, a3);
}

uint64_t ___ZN2CI12MetalContext24render_intermediate_nodeEPNS_8TileTaskERKNS_9parentROIEPNS_14intermediate_tEbU13block_pointerFvvE_block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  if ([a2 status] == 5)
  {
    v5 = *(a1 + 48);
    v6 = [a2 error];
  }

  else
  {
    if (!internalError(a2))
    {
      goto LABEL_6;
    }

    v5 = *(a1 + 48);
    v6 = internalError(a2);
  }

  CI::TileTask::setCommandBufferError(v5, v6);
LABEL_6:
  if ((*(a1 + 80) & 1) == 0)
  {
    if ((CI_PRINT_TIME() & 0x100) != 0)
    {
      v7 = *(a1 + 56);
      CIMetalCommandBufferGetGPUTime(a2);
      x_log("CI_PRINT_TIME [GPU] intermediate program (%s) = %.1f ms\n", v7, v8 * 1000.0);
    }

    CIMetalCommandBufferGetGPUTime(a2);
    CI::TileTask::incrementTimeForNode(*(a1 + 48), *(a1 + 64), v9);
  }

  v10 = (*(*v4 + 112))(v4);
  (*(*v10 + 88))(v10, *(a1 + 72));
  v11 = *(a1 + 72);
  if (v11)
  {
    v14 = *(a1 + 72);
    std::vector<CI::Texture>::__destroy_vector::operator()[abi:nn200100](&v14);
    MEMORY[0x19EAF5590](v11, 0x20C40960023A9);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    CI::Object::unref(v12);
  }

  return (*(*(a1 + 32) + 16))();
}

void CI::MetalContext::readback_bitmap(uint64_t a1, uint64_t *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = ci_signpost_log_render();
  v5 = (*(*a1 + 280))(a1) << 32;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v6 = a2[10];
    v7 = a2[11];
    v10 = 134218240;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "readback_bitmap", "[%zu %zu]", &v10, 0x16u);
  }

  v8 = (*(*a1 + 280))(a1);
  TimerBase::TimerBase(&v10, v8, 0, "readback_bitmap", 7);
  v9 = *(a1 + 1848);
  if (v9 != *(a1 + 1864))
  {
    CIMetalCommandBufferWaitUntilCompleted(v9);
    if (a2)
    {
      if (!*(a1 + 1928) && *(a1 + 1984) == 1)
      {
        CIMetalTextureGetBytes(*(a1 + 1936), a2[9], a2[12]);
      }
    }
  }

  CI::MetalContext::readback_bitmap(CI::Bitmap *,CI::output_swizzle_info)::SignpostTimer::~SignpostTimer(&v10);
}

void CI::MetalContext::readback_bitmap(CI::Bitmap *,CI::output_swizzle_info)::SignpostTimer::~SignpostTimer(TimerBase *a1)
{
  v2 = ci_signpost_log_render();
  v3 = *(a1 + 1);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v2;
    if (os_signpost_enabled(v2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "readback_bitmap", &unk_19CFBCBAE, v5, 2u);
    }
  }

  TimerBase::~TimerBase(a1);
}

BOOL CI::MetalContext::formatIsReadable(id *this, unsigned int a2)
{
  v4 = a2;
  if (a2 > 0x2FF || (v5 = *(this + a2 + 460), !*(this + a2 + 460)))
  {
    [this[49] device];
    MTLPixelFormatGetInfoForDevice();
    v5 = 0;
    if (a2 <= 0x2FF)
    {
      *(this + v4 + 460) = 0;
    }
  }

  return v5 == 114 || v5 == 119;
}

BOOL CI::MetalContext::formatIsWritable(id *this, unsigned int a2)
{
  v4 = a2;
  if (a2 > 0x2FF || (v5 = *(this + a2 + 460), !*(this + a2 + 460)))
  {
    [this[49] device];
    MTLPixelFormatGetInfoForDevice();
    v5 = 0;
    if (a2 <= 0x2FF)
    {
      *(this + v4 + 460) = 0;
    }
  }

  return v5 == 119;
}

uint64_t CI::MetalContext::format_is_directly_supported_for_input(id *a1, int a2)
{
  if (CI::format_is_ycc_biplanar(a2))
  {
    v4 = CI::format_of_plane(a2, 0);
    v5 = 1;
    v6 = CI::format_of_plane(a2, 1);
    LODWORD(v4) = (*(*a1 + 54))(a1, v4);
    v7 = (*(*a1 + 54))(a1, v6);
    if (!v4 || (v7 & 1) == 0)
    {
      v8 = CI::format_of_plane_old(a2, 0);
      v9 = CI::format_of_plane_old(a2, 1);
      LODWORD(v8) = (*(*a1 + 54))(a1, v8);
      return v8 & (*(*a1 + 54))(a1, v9);
    }

    return v5;
  }

  v5 = 1;
  if (a2 > 1796)
  {
    if (a2 <= 2308)
    {
      if ((a2 - 1797) <= 3 && a2 != 1799 || (a2 - 2053) <= 3 && a2 != 2055)
      {
        return v5;
      }
    }

    else
    {
      if (a2 <= 2568)
      {
        if ((a2 - 2309) <= 3 && a2 != 2311)
        {
          return v5;
        }

        if (a2 != 2567)
        {
          return 0;
        }

        goto LABEL_31;
      }

      if (a2 <= 3080)
      {
        if (a2 == 2569 || a2 == 3079)
        {
          goto LABEL_31;
        }
      }

      else if (a2 == 3081 || a2 == 4616 || a2 == 4360)
      {
        goto LABEL_31;
      }
    }

    return 0;
  }

  if (a2 <= 531)
  {
    if ((a2 - 257) <= 0x14 && ((1 << (a2 - 1)) & 0x1802B1) != 0)
    {
      return v5;
    }

    return 0;
  }

  if (a2 <= 783)
  {
    if ((a2 - 532) < 2)
    {
      return v5;
    }

    v10 = a2 - 773;
    goto LABEL_30;
  }

  if ((a2 - 784) >= 2)
  {
    v10 = a2 - 1285;
LABEL_30:
    if (v10 < 2)
    {
      goto LABEL_31;
    }

    return 0;
  }

LABEL_31:
  v11 = CIMetalFormatForFormat(a2, 0);

  return CI::MetalContext::formatIsReadable(a1, v11);
}

uint64_t CI::MetalContext::format_is_directly_supported_for_output(id *a1, int a2)
{
  result = 1;
  if (a2 <= 1297)
  {
    if (a2 <= 772)
    {
      if ((a2 - 261) > 0x11)
      {
        goto LABEL_7;
      }

      v4 = 1 << (a2 - 5);
      if ((v4 & 0x2B) != 0)
      {
        return result;
      }

      if ((v4 & 0x22000) == 0)
      {
LABEL_7:
        if (a2 != 530 && a2 != 534)
        {
          return 0;
        }
      }

      goto LABEL_28;
    }

    if (a2 > 785)
    {
      if ((a2 - 1285) >= 2)
      {
        if (a2 != 786 && a2 != 1042)
        {
          return 0;
        }

LABEL_28:

        return CI::MetalContext::use_imageblocks_for_format(a1, a2);
      }
    }

    else if ((a2 - 773) >= 2 && (a2 - 784) >= 2)
    {
      return 0;
    }

    goto LABEL_38;
  }

  if (a2 > 2308)
  {
    if (a2 > 2566)
    {
      if (a2 > 3078)
      {
        if (a2 != 3081 && a2 != 3079)
        {
          return 0;
        }
      }

      else if (a2 != 2567 && a2 != 2569)
      {
        return 0;
      }

LABEL_38:
      v6 = CIMetalFormatForFormat(a2, 0);

      return CI::MetalContext::formatIsWritable(a1, v6);
    }

    v5 = a2 - 2309;
  }

  else
  {
    if (a2 <= 2052)
    {
      if ((a2 - 1797) <= 3 && a2 != 1799)
      {
        return result;
      }

      if (a2 != 1298 && a2 != 1554)
      {
        return 0;
      }

      goto LABEL_28;
    }

    v5 = a2 - 2053;
  }

  if (v5 > 3 || v5 == 2)
  {
    return 0;
  }

  return result;
}

uint64_t CI::MetalContext::bind_cgimage(void ***a1, CGImage *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  v10 = CI::MetalTextureManager::texture_for_CGImage(a1[236], a2, a3);
  v11 = (*a1)[10];

  return (v11)(a1, v10, a4, a5, 0, a6);
}

uint64_t CI::MetalContext::bind_surface(uint64_t *a1, __IOSurface *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (!a2)
  {
    return 0;
  }

  v14 = CI::MetalTextureManager::texture_for_IOSurface(a1[236], a2, a9, a3);
  v15 = *(*a1 + 80);

  return v15(a1, v14, a5, a6, a7, a8);
}

uint64_t CI::MetalContext::bind_texture(uint64_t a1, CFTypeRef cf, int a3, int a4, unsigned int a5, int a6)
{
  if (!cf)
  {
    return 0;
  }

  result = 0;
  if (a3 <= 1 && a3 != -1)
  {
    result = 0;
    if (a4 <= 1 && a4 != -1)
    {
      v11 = a1 + 8 * a6;
      *(v11 + 1232) = cf;
      CFRetain(cf);
      *(v11 + 1488) = *(a1 + 32 * a3 + 16 * a4 + 8 * a5 + 1752);
      return 1;
    }
  }

  return result;
}

void CI::MetalContext::bind_arguments(CI::ProgramNode const*,CGRect const&,CGRect const&,CGSize const&,CI::TileTask *)::SignpostTimer::~SignpostTimer(TimerBase *a1)
{
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v2 = ci_signpost_log_render();
    v3 = *(a1 + 1);
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v4 = v2;
      if (os_signpost_enabled(v2))
      {
        *v5 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "bind_arguments", &unk_19CFBCBAE, v5, 2u);
      }
    }
  }

  TimerBase::~TimerBase(a1);
}

BOOL CI::MetalContext::supports_sRGB_texture_for_format(id *this, int a2, int a3)
{
  v3 = a2 - 261;
  if ((a2 - 261) > 5 || ((0x2Bu >> v3) & 1) == 0)
  {
    return 0;
  }

  v5 = dword_19CF2C9A4[v3];
  if (a3 != 1)
  {
    if (a3 == 2 || a3 == 3 && CI::MetalContext::formatIsReadable(this, dword_19CF2C9A4[v3]))
    {

      return CI::MetalContext::formatIsWritable(this, v5);
    }

    return 0;
  }

  v7 = dword_19CF2C9A4[v3];

  return CI::MetalContext::formatIsReadable(this, v7);
}

void *CI::MetalContext::blitTexture(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v6 = *a4;
  v7 = *(a4 + 4);
  v9 = *(a4 + 8);
  v8 = *(a4 + 16);
  if (*a4 == -2147483647)
  {
    if (v7 != -2147483647 || v9 != 0xFFFFFFFFLL || v8 != 0xFFFFFFFFLL)
    {
      goto LABEL_21;
    }

    v13 = MEMORY[0x1E695F040];
  }

  else
  {
    if (v6 != 0x7FFFFFFF || v7 != 0x7FFFFFFF || v9 != 0 || v8 != 0)
    {
LABEL_21:
      v16 = v6;
      v17 = v7;
      goto LABEL_24;
    }

    v13 = MEMORY[0x1E695F050];
  }

  v16 = *v13;
  v17 = v13[1];
LABEL_24:
  v18 = *a6;
  v19 = *(a6 + 4);
  v20 = *(a6 + 8);
  v21 = *(a6 + 16);
  if (*a6 == -2147483647)
  {
    if (v19 != -2147483647 || v20 != 0xFFFFFFFF || v21 != 0xFFFFFFFF)
    {
      goto LABEL_44;
    }

    v25 = MEMORY[0x1E695F040];
LABEL_46:
    v28 = *v25;
    v29 = v25[1];
    v30 = v25[2];
    v31 = v25[3];
    return CIMetalCommandBufferCopyTexture(a2, *a3, *a5, v16, v17, v28, v29, v30, v31);
  }

  if (v18 == 0x7FFFFFFF && v19 == 0x7FFFFFFF && v20 == 0 && v21 == 0)
  {
    v25 = MEMORY[0x1E695F050];
    goto LABEL_46;
  }

LABEL_44:
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v31 = v21;
  return CIMetalCommandBufferCopyTexture(a2, *a3, *a5, v16, v17, v28, v29, v30, v31);
}

BOOL CI::MetalContext::blitSurface(uint64_t a1, __IOSurface *a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v11 = CIMetalFormatForFormat(*a6, *(a6 + 4));
  v12 = CIMetalTextureCreateFromIOSurface(*(a1 + 2008), [*(a1 + 392) device], a2, 0, v11, 2);
  if (v12)
  {
    v13 = CIMetalCommandBufferCreate(*(a1 + 2008), *(a1 + 392), 0, 0);
    v21 = v12;
    v22 = 0;
    v19 = *a3;
    v20 = *(a3 + 2);
    (*(*a4 + 24))(v18, a4);
    v16 = *a5;
    v17 = *(a5 + 2);
    (*(*a1 + 632))(a1, v13, &v21, &v19, v18, &v16);
    v18[0] = 0;
    v18[1] = 0;
    v21 = 0;
    v22 = 0;
    CFRelease(v12);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___ZNK2CI12MetalContext11blitSurfaceEP11__IOSurface5IRectPNS_14intermediate_tES3_RKNS_17TextureDescriptorE_block_invoke;
    v15[3] = &__block_descriptor_48_e28_v16__0___MTLCommandBuffer__8l;
    v15[4] = a1;
    v15[5] = a4;
    CIMetalCommandBufferAddCompletionHandler(v13, v15);
    CIMetalCommandBufferCommit(v13);
  }

  return v12 != 0;
}

void ___ZNK2CI12MetalContext11blitSurfaceEP11__IOSurface5IRectPNS_14intermediate_tES3_RKNS_17TextureDescriptorE_block_invoke(uint64_t a1)
{
  v2 = (*(**(a1 + 32) + 112))(*(a1 + 32));
  v3 = *(a1 + 40);

  CI::TextureManager::complete_intermediate(v2, 60, v3);
}

uint64_t CI::MetalContext::max_render_load_bytes(CI::MetalContext *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    return v1 << 20;
  }

  else
  {
    return 0x8000000;
  }
}

uint64_t CI::MetalContext::max_device_memory(CI::MetalContext *this)
{
  result = *(this + 56);
  if (!result)
  {
    return *(this + 55);
  }

  return result;
}

uint64_t CI::MetalContext::supports_sample_mode(uint64_t a1, int a2, int a3)
{
  if (a2 == 1)
  {
    return CI::format_is_full_float(a3) ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t CI::MetalContext::supported_compute_features(CI::MetalContext *this)
{
  if (*(this + 458))
  {
    v1 = 13;
  }

  else
  {
    v1 = 5;
  }

  if (*(this + 459))
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  return v2 | v1;
}

double CI::MetalContext::sampler_transform_for_extent@<D0>(const CGRect *a1@<X1>, double *a2@<X8>)
{
  y = a1->origin.y;
  v4 = 1.0 / a1->size.height;
  v5 = a1->origin.x * -0.0 - y * v4 + 0.0;
  v6 = 1.0 / a1->size.width;
  v7 = y * -0.0 - a1->origin.x * v6;
  *a2 = v6 + 0.0;
  a2[1] = v4 * 0.0 + 0.0;
  a2[2] = v6 * 0.0 + 0.0;
  a2[3] = v4 + 0.0;
  result = v7 + 0.0;
  a2[4] = result;
  a2[5] = v5;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<void const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::vector<void const*>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<void const*>>(a1, a2);
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

uint64_t std::vector<CI::Texture>::__emplace_back_slow_path<CI::Texture>(void *a1, _OWORD *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
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

  v16 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CI::Texture>>(a1, v7);
  }

  __p = 0;
  v13 = (16 * v2);
  v15 = 0;
  *v13 = *a2;
  v14 = 16 * v2 + 16;
  std::vector<CI::Texture>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  v9 = v13;
  while (1)
  {
    v10 = v14;
    if (v14 == v9)
    {
      break;
    }

    v14 -= 16;
    *(v10 - 16) = 0;
    *(v10 - 8) = 0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void std::vector<CI::Texture>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = a2[1] - (v5 - v4);
  if (v5 != v4)
  {
    v8 = v4;
    v9 = (a2[1] - (v5 - v4));
    do
    {
      v10 = *v8;
      v8 += 16;
      *v9++ = v10;
    }

    while (v8 != v5);
    bzero(v4, (v5 - v4) & 0xFFFFFFFFFFFFFFF0);
  }

  a2[1] = v7;
  v11 = *a1;
  *a1 = v7;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CI::Texture>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::vector<CI::Texture>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      bzero(&v4[-((v4 - v2) & 0xFFFFFFFFFFFFFFF0)], (v4 - v2) & 0xFFFFFFFFFFFFFFF0);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::__emplace_unique_key_args<void const*,void const* const&>(void *a1, void *a2)
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

void *std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::find<void const*>(void *a1, void *a2)
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
      if (v5 == v10)
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

uint64_t std::unordered_set<void const*>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::__emplace_unique_key_args<void const*,void const* const&>(a1, i + 2);
  }

  return a1;
}

void *CI::InstanceCounted<(CI::Type)75>::~InstanceCounted(void *result)
{
  *result = &unk_1F1034438;
  atomic_fetch_add(&dword_1ED7C47BC[73], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)75>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1034438;
  atomic_fetch_add(&dword_1ED7C47BC[73], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void *CI::InstanceCounted<(CI::Type)85>::~InstanceCounted(void *result)
{
  *result = &unk_1F1034460;
  atomic_fetch_add(&dword_1ED7C47BC[83], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)85>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1034460;
  atomic_fetch_add(&dword_1ED7C47BC[83], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

const __CFString *CI::Context::AbortIfUnhandledError(const __CFString *this, const __CFString *a2)
{
  if (this)
  {
    v2 = CFStringFind(this, @"Render failed because of failure to allocate intermediate.", 1uLL);
    this = v2.location;
    if (v2.length)
    {
      abort();
    }
  }

  return this;
}

uint64_t CI::Context::render_completion_queue(CI::Context *this)
{
  if (CI::Context::render_completion_queue(void)::onceToken != -1)
  {
    CI::Context::render_completion_queue();
  }

  return CI::Context::render_completion_queue(void)::sRenderCompletionQueue;
}

uint64_t ___ZN2CI7Context23render_completion_queueEv_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  CI::Context::render_completion_queue(void)::sRenderCompletionQueue = dispatch_queue_create("CI::RenderCompletionQueue", v0);
  if ((CI_PRINT_TREE_dump_intermediates() & 1) != 0 || (result = CI_PRINT_TREE_dump_outputs(), result))
  {

    return atexit_b(&__block_literal_global_5_3);
  }

  return result;
}

void CI::Context::Context(CI::Context *this, const CI::Context *a2)
{
  *(this + 2) = 1;
  *this = &unk_1F10344E8;
  *(this + 9) = 0;
  *(this + 41) = 1;
  *(this + 36) = atomic_fetch_add(&CI::gContextCounter, 1u) + 1;
  *(this + 19) = 0;
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 16);
  *(this + 10) = *MEMORY[0x1E695F050];
  *(this + 11) = v3;
  *(this + 24) = 0;
  *(this + 216) = v3;
  *(this + 200) = v2;
  *(this + 58) = 1;
  *(this + 252) = 0u;
  *(this + 236) = 0u;
  *(this + 268) = 0u;
  *(this + 284) = 0u;
  *(this + 300) = 1;
  *(this + 86) = 0;
  v4 = *(a2 + 45);
  *(this + 44) = 0;
  *(this + 45) = v4;
  *(this + 23) = *(a2 + 23);
  operator new();
}

void CI::Context::Context(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10344E8;
  *(a1 + 32) = a4;
  *(a1 + 36) = 0;
  *(a1 + 41) = 1;
  add = atomic_fetch_add(&CI::gContextCounter, 1u);
  v10 = *MEMORY[0x1E695F050];
  v9 = *(MEMORY[0x1E695F050] + 16);
  *(a1 + 236) = 0u;
  *(a1 + 144) = add + 1;
  *(a1 + 152) = 0;
  *(a1 + 160) = v10;
  *(a1 + 176) = v9;
  *(a1 + 192) = 0;
  *(a1 + 200) = v10;
  *(a1 + 216) = v9;
  *(a1 + 232) = 1;
  *(a1 + 252) = 0u;
  *(a1 + 268) = 0u;
  *(a1 + 284) = 0u;
  *(a1 + 300) = 1;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = a7;
  *(a1 + 368) = a6;
  *(a1 + 376) = a8;
  operator new();
}

uint64_t CI::Context::defaultWorkingSpace(CI::Context *this)
{
  if (CI::Context::defaultWorkingSpace(void)::didCreate != -1)
  {
    CI::Context::Context();
  }

  return CI::Context::defaultWorkingSpace(void)::space;
}

void CI::Context::~Context(CGColorSpaceRef *this)
{
  *this = &unk_1F10344E8;
  CGColorSpaceRelease(this[2]);
  this[2] = 0;
  CGColorSpaceRelease(this[3]);
  this[3] = 0;
  CGContextRelease(this[6]);
  this[6] = 0;
  *(this + 236) = 0;
  v2 = this[44];
  if (v2)
  {
    CI::Object::unref(v2);
  }

  this[44] = 0;
  v3 = this[38];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___ZN2CI11ObjectCacheINS_11MainProgramENS_13ProgramDigestELb0EE5clearEv_block_invoke;
  v11[3] = &__block_descriptor_tmp_112;
  v11[4] = v3;
  Queue::execute_async(v3 + 7, v11);
  v4 = (*(*this + 35))(this);
  RemoveCacheEntriesForContext(v4);
  v5 = this[38];
  if (v5)
  {
    v6 = CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::~ObjectCache(v5);
    MEMORY[0x19EAF5590](v6, 0x10E0C40C1366CD6);
  }

  v7 = this[39];
  if (v7)
  {
    v8 = CI::ObjectCache<CI::Node,unsigned long long,false>::~ObjectCache(v7);
    MEMORY[0x19EAF5590](v8, 0x10E0C40C1366CD6);
  }

  v9 = this[40];
  if (v9)
  {
    v10 = CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::~ObjectCache(v9);
    MEMORY[0x19EAF5590](v10, 0x10E0C40C1366CD6);
  }
}

uint64_t CI::Context::set_client_name(uint64_t this, CFStringRef theString)
{
  if (theString)
  {
    return CFStringGetCString(theString, (this + 236), 64, 0x8000100u);
  }

  *(this + 236) = 0;
  return this;
}

void CI::Context::clear_caches(CI::Context *this)
{
  v2 = *(this + 39);
  v6 = MEMORY[0x1E69E9820];
  v7 = 0x40000000;
  v8 = ___ZN2CI11ObjectCacheINS_4NodeEyLb0EE5clearEv_block_invoke;
  v9 = &__block_descriptor_tmp_110;
  v10 = v2;
  Queue::execute_async((v2 + 56), &v6);
  v3 = *(this + 40);
  v6 = MEMORY[0x1E69E9820];
  v7 = 0x40000000;
  v8 = ___ZN2CI11ObjectCacheINS_11ProgramNodeEyLb0EE5clearEv_block_invoke;
  v9 = &__block_descriptor_tmp_111_0;
  v10 = v3;
  Queue::execute_async((v3 + 56), &v6);
  v4 = *(this + 38);
  v6 = MEMORY[0x1E69E9820];
  v7 = 0x40000000;
  v8 = ___ZN2CI11ObjectCacheINS_11MainProgramENS_13ProgramDigestELb0EE5clearEv_block_invoke;
  v9 = &__block_descriptor_tmp_112;
  v10 = v4;
  Queue::execute_async((v4 + 56), &v6);
  v5 = (*(*this + 280))(this);
  RemoveCacheEntriesForContext(v5);
}

void CI::Context::setPriority(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = ci_logger_render();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_19CC36000, v2, OS_LOG_TYPE_INFO, "Context does not support non-default priority", v3, 2u);
    }
  }
}

uint64_t CI::Context::createDestination(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  v7 = *a3;
  v41 = *(*a3 + 140);
  v8 = v41;
  if (!v41)
  {
    LODWORD(v41) = a4;
    v8 = a4;
  }

  if ((*(*v7 + 16))(v7) == 60)
  {
    v9 = CI::Node::rois(v7);
    if (CI::Node::rois_count(v7) >= 1)
    {
      v10 = 0;
      do
      {
        v11 = *v9 + 120 * v10;
        v12 = *(v11 + 32);
        v13 = *(v11 + 40);
        while (v12 != v13)
        {
          v14 = *(*v12 + 48);
          if ((*(*v14 + 16))(v14) >= 47 && (*(*v14 + 16))(v14) < 50)
          {
            goto LABEL_14;
          }

          v12 += 48;
        }

        ++v10;
      }

      while (v10 < CI::Node::rois_count(v7));
    }
  }

  v15 = *(v7 + 6);
  if ((*(*v15 + 16))(v15) < 47 || (*(*v15 + 16))(v15) >= 50)
  {
    if ((*(**(v7 + 6) + 16))(*(v7 + 6)) == 51)
    {
      v16 = 1;
    }

    else
    {
      v16 = 64;
    }
  }

  else
  {
LABEL_14:
    v16 = 1;
  }

  v17 = CI::PixelFormatType_from_format(v8);
  CI::Node::roi(*a3, a3[2]);
  v19 = v18;
  CI::Node::roi(*a3, a3[2]);
  SurfaceMemorySize = CreateSurfaceMemorySize(v19, v20, 0x20uLL, v17);
  if (SurfaceMemorySize > (*(*a1 + 128))(a1))
  {
    if (CI_VERBOSE_SIGNPOSTS())
    {
      v22 = ci_signpost_log_render();
      v23 = *(*a3 + 36) | ((*(*a1 + 280))(a1) << 32);
      if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        LOWORD(v37) = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v23, "wait_for_cache", &unk_19CFBCBAE, &v37, 2u);
      }
    }

    v24 = (*(*a1 + 280))(a1);
    TimerBase::TimerBase(&v37, v24, *(*a3 + 36), "wait_for_cache", 19);
    (*(*a1 + 104))(a1);
    if (CI_VERBOSE_SIGNPOSTS())
    {
      v25 = ci_signpost_log_render();
      v26 = v38;
      if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v27 = v25;
        if (os_signpost_enabled(v25))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19CC36000, v27, OS_SIGNPOST_INTERVAL_END, v26, "wait_for_cache", &unk_19CFBCBAE, buf, 2u);
        }
      }
    }

    TimerBase::~TimerBase(&v37);
  }

  do
  {
    if (SurfaceMemorySize <= (*(*a1 + 128))(a1))
    {
      break;
    }

    v28 = (*(*a1 + 112))(a1);
  }

  while (CI::TextureManager::releaseDeepIntermediate(v28));
  v29 = CI::Node::rois(*a3);
  v30 = (*(*v29 + 120 * a3[2] + 40) - *(*v29 + 120 * a3[2] + 32)) >> 4;
  v31 = (*(**a3 + 400))(*a3);
  v37 = CI::Node::roi(*a3, a3[2]);
  v38 = v32;
  v39 = v33;
  v40 = v34;
  v35 = (*(*a2 + 56))(a2, &v41, v31, &v37, v16, 0xAAAAAAAAAAAAAAABLL * v30 + 1, 0);
  CI::TextureManager::add_intermediate_for_node(a2, a3, v35);
  return v35;
}

void CI::Context::recursive_render(_DWORD *a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v152 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (!*a3)
  {
    return;
  }

  v6 = a3;
  v9 = CI::Node::roi(*a3, *(a3 + 8));
  v11 = v10;
  v13 = v12;
  v15 = v14;
  rect.origin.x = v9;
  rect.origin.y = v10;
  rect.size.width = v12;
  rect.size.height = v14;
  v16 = (*(*a1 + 112))(a1);
  v137 = *(v5 + 140);
  if (!v137)
  {
    LODWORD(v137) = a1[8];
  }

  v17 = v6[2];
  if (!a4)
  {
    goto LABEL_10;
  }

  v153.origin.x = v9;
  v153.origin.y = v11;
  v153.size.width = v13;
  v153.size.height = v15;
  if (CGRectIsEmpty(v153))
  {
    if ((atomic_load_explicit(&qword_1ED7C4558, memory_order_acquire) & 1) == 0)
    {
      CI::Context::recursive_render(v16);
    }

    v18 = _MergedGlobals_7;
    goto LABEL_13;
  }

  if ((*(**(*v6 + 48) + 16))(*(*v6 + 48)) == 51)
  {
LABEL_10:
    v18 = 0;
    goto LABEL_13;
  }

  v19 = CI::Node::rois(v5);
  v20 = (*(*v19 + 120 * v17 + 40) - *(*v19 + 120 * v17 + 32)) >> 4;
  v21 = (*(*v5 + 400))(v5);
  v18 = (*(*v16 + 56))(v16, &v137, v21, &rect, 1, 0xAAAAAAAAAAAAAAABLL * v20 + 1, 1);
  if (v18)
  {
    *__p = v5;
    *&__p[8] = v17;
    CI::TextureManager::add_intermediate_for_node(v16, __p, v18);
  }

LABEL_13:
  if ((*(**(v5 + 6) + 16))(*(v5 + 6)) == 47)
  {
    v22 = *(v5 + 6);
    v23 = v22[243] == 1 && (*(*v22 + 40))(v22) > 0;
    a5 |= v23;
  }

  v24 = a2[3];
  v136[0] = MEMORY[0x1E69E9820];
  v136[1] = 0x40000000;
  v136[2] = ___ZN2CI7Context16recursive_renderEPNS_8TileTaskERKNS_6roiKeyEPKNS_4NodeEb_block_invoke;
  v136[3] = &__block_descriptor_tmp_9_1;
  v94 = v24;
  v136[4] = v24;
  v25 = CI::Node::rois(v5);
  v135 = 0;
  v133 = 0;
  v134 = 0;
  if ((v17 & 0x80000000) == 0)
  {
    v26 = *v25 + 120 * v17;
    v27 = *(v26 + 80);
    v28 = *(v26 + 16);
    *__p = *v26;
    *&__p[16] = v28;
    CI::SerialRectArray::recurseSubdivide(__p, v27, &v133);
    v29 = v133;
    if (v134 != v133)
    {
      v109 = 0;
      v97 = v18;
      v98 = a1;
      v95 = v18;
      v103 = v6;
      v104 = v5;
      v30 = v16;
      v99 = a2;
      v102 = v17;
      do
      {
        v108 = 0;
        v31 = 0;
        do
        {
          v107 = v31;
          if (a4 || ((v134 - v133) >> 5) - 1 != v109)
          {
            v32 = dispatch_group_create();
          }

          else
          {
            dispatch_retain(a2[2]);
            v32 = a2[2];
          }

          v132[0] = MEMORY[0x1E69E9820];
          v132[1] = 0x40000000;
          v132[2] = ___ZN2CI7Context16recursive_renderEPNS_8TileTaskERKNS_6roiKeyEPKNS_4NodeEb_block_invoke_2;
          v132[3] = &__block_descriptor_tmp_10_0;
          object = v32;
          v132[4] = v32;
          v131[0] = 0;
          v131[1] = 0;
          v130 = v131;
          v129[0] = 0;
          v129[1] = 0;
          v128 = v129;
          v33 = (*(*v5 + 40))(v5);
          if (v33)
          {
            v34 = v33;
            v35 = 0;
            do
            {
              CI::ProgramNode::roiKeys_of_child(v5, *(v133 + v109), v35, __p);
              v126 = (*&__p[8] - *__p) >> 4;
              std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long>(&v128, &v126);
              v36 = v107;
              if ((*&__p[8] - *__p) >> 4 > v107)
              {
                v36 = (*&__p[8] - *__p) >> 4;
              }

              v107 = v36;
              if (*__p)
              {
                *&__p[8] = *__p;
                operator delete(*__p);
              }

              v35 = (v35 + 1);
            }

            while (v34 != v35);
          }

          v105 = (*(*v5 + 40))(v5);
          if (v105)
          {
            v37 = 0;
            do
            {
              v38 = v6[2];
              *__p = v5;
              *&__p[8] = v38;
              *&__p[12] = v109;
              *&__p[16] = v37;
              *&__p[20] = v108;
              *&__p[24] = 0;
              *&v140 = 0;
              DWORD2(v140) = 0;
              CI::ProgramNode::roiKeys_of_child(v5, *(v133 + v109), v37, &v126);
              v39 = v126;
              v110 = v127;
              if (v126 != v127)
              {
                do
                {
                  *v120 = *v39;
                  v40 = v120[0];
                  v41 = CI::Node::rois(v120[0]);
                  CI::SerialRectArray::restore(v41, v120[1], __p);
                  v42 = CI::Node::rois(v40);
                  v43 = *v42 + 120 * SLODWORD(v120[1]);
                  v45 = *(v43 + 32);
                  v44 = *(v43 + 40);
                  while (v45 != v44)
                  {
                    v46 = ~vaddvq_s32(vandq_s8(vceqq_s32(*&__p[8], *(v45 + 8)), xmmword_19CF26630)) & 0xF;
                    v47 = *v45 == *__p && v46 == 0;
                    if (v47)
                    {
                      *buf = v120[0];
                      *&buf[8] = v120[1];
                      operator new();
                    }

                    v45 += 48;
                  }

                  ++v39;
                }

                while (v39 != v110);
                v39 = v126;
              }

              if (v39)
              {
                v127 = v39;
                operator delete(v39);
              }

              v37 = (v37 + 1);
              v6 = v103;
              v5 = v104;
            }

            while (v37 != v105);
          }

          a2 = v99;
          if (!v97)
          {
            v48 = v130;
            if (v130 != v131)
            {
              do
              {
                v154.origin.x = CI::Node::roi(v48[4], *(v48 + 10));
                if (!CGRectIsEmpty(v154))
                {
                  v49 = (*(*v48[4] + 16))(v48[4]);
                  if ((CI::is_image_type(v49) & 1) == 0 && !CI::TextureManager::get_intermediate_for_node(v16, (v48 + 4)))
                  {
                    CI::Context::recursive_render(v98, v99, v48 + 4, v5, a5);
                  }
                }

                v50 = v48[1];
                if (v50)
                {
                  do
                  {
                    v51 = v50;
                    v50 = *v50;
                  }

                  while (v50);
                }

                else
                {
                  do
                  {
                    v51 = v48[2];
                    v47 = *v51 == v48;
                    v48 = v51;
                  }

                  while (!v47);
                }

                v48 = v51;
              }

              while (v51 != v131);
            }
          }

          if (CI_VERBOSE_SIGNPOSTS())
          {
            v52 = ci_signpost_log_render();
            v53 = *(v5 + 9) | ((*(*v98 + 280))(v98) << 32);
            if (v53 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
            {
              *__p = 134218752;
              *&__p[4] = rect.origin.x;
              *&__p[12] = 2048;
              *&__p[14] = rect.origin.y;
              *&__p[22] = 2048;
              *&__p[24] = rect.size.width;
              LOWORD(v140) = 2048;
              *(&v140 + 2) = rect.size.height;
              _os_signpost_emit_with_name_impl(&dword_19CC36000, v52, OS_SIGNPOST_INTERVAL_BEGIN, v53, "render_quad", "[%g %g %g %g]", __p, 0x2Au);
            }
          }

          v54 = (*(*v98 + 280))(v98);
          TimerBase::TimerBase(&v126, v54, *(v5 + 9), "render_quad", 6);
          v120[0] = v5;
          v120[1] = __PAIR64__(v109, v102);
          v121 = -1;
          v122 = v108;
          v123 = 0;
          v124 = 0;
          v125 = 0;
          CI::Object::ref(v98);
          v155.origin.x = CI::parentROI::roi(v120);
          if (CGRectIsEmpty(v155))
          {
            v55 = ci_logger_render();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
              *__p = 0;
              _os_log_impl(&dword_19CC36000, v55, OS_LOG_TYPE_INFO, "Skipping render as subdivision code computed an empty ROI", __p, 2u);
            }

            v56 = object;
            goto LABEL_122;
          }

          if (a4)
          {
            v56 = object;
            if ((atomic_load_explicit(&qword_1ED7C4568, memory_order_acquire) & 1) == 0)
            {
              CI::Context::recursive_render(v16);
            }

            CI::findProxyProgram(v6, &v118);
            intermediate_for_node = v95;
            if (v95)
            {
              goto LABEL_97;
            }

            if ((*(**(*v6 + 48) + 16))(*(*v6 + 48)) == 51)
            {
              intermediate_for_node = CI::TextureManager::get_intermediate_for_node(v16, v6);
              if (!intermediate_for_node)
              {
                goto LABEL_94;
              }

LABEL_97:
              v95 = intermediate_for_node;
              if ((*(*intermediate_for_node + 8))(intermediate_for_node))
              {
                if ((*(**(*v6 + 48) + 16))(*(*v6 + 48)) != 51 && !v99[23])
                {
                  dispatch_retain(v56);
                  dispatch_group_enter(v56);
                  (*(*v98 + 48))(v98, v99, v120, v95, a5, v132);
                  if ((CI_PRINT_TREE_dump_intermediates() & 1) != 0 || (CI_PRINT_TREE_dump_raw_intermediates() & 1) != 0 || CI_PRINT_TREE_dump_bmtl_intermediates())
                  {
                    v67 = (*(*v98 + 280))(v98);
                    if (CI_PRINT_TREE_context(v67, (v98 + 236)) && (*(v98 + 152) == CI_PRINT_TREE_frame() || !CI_PRINT_TREE_frame()))
                    {
                      v111 = *(v5 + 9);
                      v68 = (*(*v95 + 32))(v95);
                      v69 = *v68;
                      v70 = v68[1];
                      v71 = v68[2];
                      v72 = v68[3];
                      v73 = (**v95)(v95);
                      RetainSurfaceFromCache(v73);
                      RetainSurfaceFromCache(v73);
                      if (CI::dump_intermediate_for_node(CI::ProgramNode const*,CI::intermediate_t const*,dispatch_group_s *)::onceToken != -1)
                      {
                        CI::Context::recursive_render();
                      }

                      is_deep = CI::format_is_deep(*(v5 + 35));
                      v75 = CI::dump_intermediate_for_node(CI::ProgramNode const*,CI::intermediate_t const*,dispatch_group_s *)::sRGBLinear;
                      v76 = CI::dump_intermediate_for_node(CI::ProgramNode const*,CI::intermediate_t const*,dispatch_group_s *)::sRGB;
                      if (CI::ProgramNode::mainProgram(v5))
                      {
                        isa = CI::ProgramNode::mainProgram(v5)[7].isa;
                      }

                      else
                      {
                        isa = 0;
                      }

                      *buf = 0;
                      *&buf[8] = buf;
                      v113 = 0x2000000000;
                      if (isa)
                      {
                        v78 = isa;
                      }

                      else
                      {
                        v78 = "intermediate";
                      }

                      v114 = strdup(v78);
                      dispatch_retain(object);
                      if (CI::Context::render_completion_queue(void)::onceToken != -1)
                      {
                        CI::Context::recursive_render();
                      }

                      if (is_deep)
                      {
                        v79 = v75;
                      }

                      else
                      {
                        v79 = v76;
                      }

                      *__p = MEMORY[0x1E69E9820];
                      *&__p[8] = 0x40000000;
                      *&__p[16] = ___ZN2CIL26dump_intermediate_for_nodeEPKNS_11ProgramNodeEPKNS_14intermediate_tEP16dispatch_group_s_block_invoke_2;
                      *&__p[24] = &unk_1E75C4E28;
                      v147 = v111;
                      v148 = v69;
                      v149 = v70;
                      v150 = v71;
                      v151 = v72;
                      v141 = v73;
                      v142 = v79;
                      v143 = v69;
                      v144 = v70;
                      v145 = v71;
                      v146 = v72;
                      v56 = object;
                      *(&v140 + 1) = object;
                      *&v140 = buf;
                      dispatch_async(CI::Context::render_completion_queue(void)::sRenderCompletionQueue, __p);
                      _Block_object_dispose(buf, 8);
                      v5 = v104;
                      v16 = v30;
                    }
                  }
                }
              }
            }

            else
            {
              if (CI_VERBOSE_SIGNPOSTS())
              {
                v58 = ci_signpost_log_render();
                v59 = *(v5 + 9) | ((*(*v98 + 280))(v98) << 32);
                if (v59 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
                {
                  *__p = 0;
                  _os_signpost_emit_with_name_impl(&dword_19CC36000, v58, OS_SIGNPOST_INTERVAL_BEGIN, v59, "create_intermediate", &unk_19CFBCBAE, __p, 2u);
                }
              }

              v60 = (*(*v98 + 280))(v98);
              TimerBase::TimerBase(__p, v60, *(v5 + 9), "create_intermediate", 9);
              if (!CI::PixelFormatType_from_format(v137))
              {
                CI::Context::recursive_render();
              }

              if (CGRectIsEmpty(rect) || CGRectIsInfinite(rect))
              {
                CI::Context::recursive_render(&rect.size.width, &rect.size.height);
              }

              v62 = v118;
              v61 = v119;
              if (v119 == v118)
              {
                Destination = CI::Context::createDestination(v98, v16, v6, *(v98 + 32));
              }

              else
              {
                do
                {
                  v63 = *v62++;
                  *buf = v63;
                  CI::Context::createDestination(v98, v16, buf, *(v98 + 32));
                }

                while (v62 != v61);
                Destination = qword_1ED7C4560;
              }

              if (CI_VERBOSE_SIGNPOSTS())
              {
                v64 = ci_signpost_log_render();
                v65 = *&__p[8];
                if ((*&__p[8] - 1) <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v66 = v64;
                  if (os_signpost_enabled(v64))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_19CC36000, v66, OS_SIGNPOST_INTERVAL_END, v65, "create_intermediate", &unk_19CFBCBAE, buf, 2u);
                  }
                }
              }

              TimerBase::~TimerBase(__p);
              v56 = object;
              intermediate_for_node = Destination;
              if (Destination)
              {
                goto LABEL_97;
              }

LABEL_94:
              if (!dyld_program_sdk_at_least())
              {
                intermediate_for_node = 0;
                goto LABEL_97;
              }

              CI::TileTask::setTaskError(v99, @"Render failed because of failure to allocate intermediate.");
              v95 = 0;
            }

            if (v118)
            {
              v119 = v118;
              operator delete(v118);
            }

            goto LABEL_122;
          }

          v56 = object;
          if (!v99[23])
          {
            dispatch_retain(object);
            dispatch_group_enter(object);
            dispatch_retain(v94);
            v56 = object;
            dispatch_group_enter(v94);
            (*(*v98 + 40))(v98, v99, v120, v136, v132);
          }

LABEL_122:
          dispatch_retain(v56);
          if (CI::Context::render_completion_queue(void)::onceToken != -1)
          {
            CI::Context::recursive_render();
          }

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          block[2] = ___ZN2CI7Context16recursive_renderEPNS_8TileTaskERKNS_6roiKeyEPKNS_4NodeEb_block_invoke_11;
          block[3] = &__block_descriptor_tmp_12_1;
          block[4] = v56;
          block[5] = v98;
          dispatch_async(CI::Context::render_completion_queue(void)::sRenderCompletionQueue, block);
          if (CI_VERBOSE_SIGNPOSTS())
          {
            v80 = ci_signpost_log_render();
            v81 = *(v5 + 9) | ((*(*v98 + 280))(v98) << 32);
            if (v81 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v80))
            {
              *__p = 0;
              _os_signpost_emit_with_name_impl(&dword_19CC36000, v80, OS_SIGNPOST_INTERVAL_BEGIN, v81, "remove_parentROI", &unk_19CFBCBAE, __p, 2u);
            }
          }

          v82 = (*(*v98 + 280))(v98);
          TimerBase::TimerBase(__p, v82, *(v5 + 9), "remove_parentROI", 0);
          v83 = v130;
          if (v130 != v131)
          {
            do
            {
              CI::TextureManager::remove_from_pending(v16, (v83 + 4));
              v84 = (*(*v5 + 48))(v5, *(v83 + 12));
              v85 = *(v83 + 12);
              *buf = v5;
              *&buf[8] = v102;
              *&buf[12] = v109;
              v113 = __PAIR64__(v108, v85);
              v114 = 0;
              v115 = 0;
              v116 = 0;
              CI::Node::remove_parentROI(v84, buf, (v83 + 4), v16, object);
              v86 = v83[1];
              if (v86)
              {
                do
                {
                  v87 = v86;
                  v86 = *v86;
                }

                while (v86);
              }

              else
              {
                do
                {
                  v87 = v83[2];
                  v47 = *v87 == v83;
                  v83 = v87;
                }

                while (!v47);
              }

              v83 = v87;
            }

            while (v87 != v131);
          }

          if (CI_VERBOSE_SIGNPOSTS())
          {
            v88 = ci_signpost_log_render();
            v89 = *&__p[8];
            if ((*&__p[8] - 1) <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v90 = v88;
              if (os_signpost_enabled(v88))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_19CC36000, v90, OS_SIGNPOST_INTERVAL_END, v89, "remove_parentROI", &unk_19CFBCBAE, buf, 2u);
              }
            }
          }

          TimerBase::~TimerBase(__p);
          dispatch_release(object);
          if (CI_VERBOSE_SIGNPOSTS())
          {
            v91 = ci_signpost_log_render();
            v92 = v127;
            if (v127 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v93 = v91;
              if (os_signpost_enabled(v91))
              {
                *__p = 0;
                _os_signpost_emit_with_name_impl(&dword_19CC36000, v93, OS_SIGNPOST_INTERVAL_END, v92, "render_quad", &unk_19CFBCBAE, __p, 2u);
              }
            }
          }

          ++v108;
          TimerBase::~TimerBase(&v126);
          std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(&v128, v129[0]);
          std::__tree<CI::Context::recursive_render(CI::TileTask *,CI::roiKey const&,CI::Node const*,BOOL)::childKey,CI::Context::recursive_render(CI::TileTask *,CI::roiKey const&,CI::Node const*,BOOL)::compareDepth,std::allocator<CI::Context::recursive_render(CI::TileTask *,CI::roiKey const&,CI::Node const*,BOOL)::childKey>>::destroy(v131[0]);
          v31 = v107 - 1;
        }

        while (v107 > 1);
        v29 = v133;
        ++v109;
      }

      while (v109 < (v134 - v133) >> 5);
    }

    if (v29)
    {
      v134 = v29;
      operator delete(v29);
    }
  }
}

uint64_t *std::unique_ptr<CI::intermediate_t>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  return a1;
}

void ___ZN2CI7Context16recursive_renderEPNS_8TileTaskERKNS_6roiKeyEPKNS_4NodeEb_block_invoke(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

void ___ZN2CI7Context16recursive_renderEPNS_8TileTaskERKNS_6roiKeyEPKNS_4NodeEb_block_invoke_2(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

void CI::SerialRectArray::restore(CI::SerialRectArray *this, int a2, const CI::parentROI *a3)
{
  v3 = *this + 120 * a2;
  v5 = *(v3 + 56);
  v4 = *(v3 + 64);
  v6 = v3 + 56;
  while (v5 != v4)
  {
    if (*v5 == *a3 && *(a3 + 4) == v5[4] && *(a3 + 3) == v5[3] && *(a3 + 2) == v5[2])
    {
      v10 = (*this + 120 * a2);
      v11 = v10[5];
      v12 = v10[6];
      if (v11 >= v12)
      {
        v16 = v10[4];
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v16) >> 4);
        v18 = v17 + 1;
        if (v17 + 1 > 0x555555555555555)
        {
          std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
        }

        v19 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v16) >> 4);
        if (2 * v19 > v18)
        {
          v18 = 2 * v19;
        }

        if (v19 >= 0x2AAAAAAAAAAAAAALL)
        {
          v20 = 0x555555555555555;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<CI::parentROI>>((v10 + 4), v20);
        }

        v21 = 48 * v17;
        v22 = *v5;
        v23 = *(v5 + 2);
        *(v21 + 16) = *(v5 + 1);
        *(v21 + 32) = v23;
        *v21 = v22;
        v15 = 48 * v17 + 48;
        v24 = v10[4];
        v25 = v10[5] - v24;
        v26 = 48 * v17 - v25;
        memcpy((v21 - v25), v24, v25);
        v27 = v10[4];
        v10[4] = v26;
        v10[5] = v15;
        v10[6] = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        v13 = *v5;
        v14 = *(v5 + 2);
        v11[1] = *(v5 + 1);
        v11[2] = v14;
        *v11 = v13;
        v15 = (v11 + 3);
      }

      v10[5] = v15;
      v28 = *(v6 + 8);
      v29 = v28 - (v5 + 12);
      if (v28 != (v5 + 12))
      {
        memmove(v5, v5 + 12, v28 - (v5 + 12));
      }

      v4 = (v5 + v29);
      *(v6 + 8) = v5 + v29;
    }

    else
    {
      v5 += 12;
    }
  }
}

void CI::findProxyProgram(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if ((*(**a1 + 16))(*a1) == 60)
  {
    v4 = *CI::Node::rois(*a1) + 120 * *(a1 + 2);
    v5 = *(v4 + 32);
    for (i = *(v4 + 40); v5 != i; v5 += 48)
    {
      if ((*(**(*v5 + 48) + 16))(*(*v5 + 48)) == 51)
      {
        CI::roiKey::roiKey(&v18, v5);
        v8 = *(a2 + 8);
        v7 = *(a2 + 16);
        if (v8 >= v7)
        {
          v10 = (v8 - *a2) >> 4;
          v11 = v10 + 1;
          if ((v10 + 1) >> 60)
          {
            std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
          }

          v12 = v7 - *a2;
          if (v12 >> 3 > v11)
          {
            v11 = v12 >> 3;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFF0)
          {
            v13 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v11;
          }

          if (v13)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<CI::roiKey>>(a2, v13);
          }

          v14 = (16 * v10);
          *v14 = v18;
          v9 = 16 * v10 + 16;
          v15 = *(a2 + 8) - *a2;
          v16 = 16 * v10 - v15;
          memcpy(v14 - v15, *a2, v15);
          v17 = *a2;
          *a2 = v16;
          *(a2 + 8) = v9;
          *(a2 + 16) = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v8 = v18;
          v9 = (v8 + 1);
        }

        *(a2 + 8) = v9;
      }
    }
  }
}

void ___ZN2CI7Context16recursive_renderEPNS_8TileTaskERKNS_6roiKeyEPKNS_4NodeEb_block_invoke_11(uint64_t a1)
{
  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(*(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {

    CI::Object::unref(v2);
  }
}

void ___ZN2CI7Context6renderEPNS_11ProgramNodeERK6CGRect_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CopyContextPeakNonVolatileList(*(a1 + 40));
  CI::TileTask::updatePeakList(v2, v3);
  v4 = *(a1 + 32);
  v5 = CopyAnyImagePeakNonVolatileList();
  CI::TileTask::updatePeakList(v4, v5);
  v6 = *(a1 + 32);

  CI::Object::unref(v6);
}

uint64_t CI::Context::render_processor_node(CI::Context *this, CI::TileTask *a2, const CI::parentROI *a3, __IOSurface *a4, const void *a5)
{
  v22[7] = *MEMORY[0x1E69E9840];
  v22[3] = CI::parentROI::roi(a3);
  v22[4] = v7;
  v22[5] = v8;
  v22[6] = v9;
  v10 = *a3;
  if (*a3)
  {
    v11 = v10[6];
    if (v11)
    {
      if ((*(*v11 + 16))(v10[6]) >= 47 && (*(*v11 + 16))(v11) <= 49)
      {
        (*(*this + 112))(this);
        v12 = (*(*v10 + 40))(v10);
        memset(v22, 0, 24);
        if (v12)
        {
          std::vector<CI::intermediate_t const*>::__vallocate[abi:nn200100](v22, v12);
        }

        MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17);
        v19 = (*(*this + 112))(this);
        v20 = (*(*this + 112))(this);
        empty_surface = CI::TextureManager::get_empty_surface(v20);
        CI::TextureManager::intermediate(v19, empty_surface, MEMORY[0x1E695F050]);
      }
    }
  }

  return 0;
}

uint64_t CI::Context::blitSurface(CI::Context *this, __IOSurface *a2, IRect *a3, __IOSurface *a4, IRect *a5)
{
  PixelFormat = IOSurfaceGetPixelFormat(this);
  result = IOSurfaceGetPixelFormat(a3);
  if (PixelFormat == result && *(a2 + 1) == *(a4 + 1) && *(a2 + 2) == *(a4 + 2))
  {
    v11 = IOSurfaceGetPixelFormat(this);
    v12 = CI::format_from_PixelFormatType(v11);
    v13 = CI::format_bytes_per_pixel(v12);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = ___ZN2CI7Context11blitSurfaceEP11__IOSurface5IRectS2_S3__block_invoke;
    v14[3] = &__block_descriptor_tmp_17_0;
    v14[4] = a3;
    v15 = *a4;
    v16 = *(a4 + 2);
    v19 = v13;
    v17 = *a2;
    v18 = *(a2 + 2);
    return SurfaceApplyPlaneBlock(this, v14);
  }

  return result;
}

uint64_t ___ZN2CI7Context11blitSurfaceEP11__IOSurface5IRectS2_S3__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN2CI7Context11blitSurfaceEP11__IOSurface5IRectS2_S3__block_invoke_2;
  v9[3] = &__block_descriptor_tmp_15_3;
  v10 = *(a1 + 40);
  v7 = *(a1 + 56);
  v16 = *(a1 + 88);
  v11 = v7;
  v12 = a2;
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v15 = a6;
  return SurfaceApplyPlaneReadOnlyBlock(v6, v9);
}

void *___ZN2CI7Context11blitSurfaceEP11__IOSurface5IRectS2_S3__block_invoke_2(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result[6])
  {
    v8 = result;
    v9 = 0;
    do
    {
      result = memmove((v8[7] + (v9 + *(v8 + 17)) * v8[11] + *(v8 + 16) * *(v8 + 24)), (a2 + (v9 + *(v8 + 9)) * a6 + *(v8 + 24) * *(v8 + 8)), v8[5] * *(v8 + 24));
      ++v9;
    }

    while (v9 < v8[6]);
  }

  return result;
}

void CI::Context::assembleBlit(uint64_t a1, __IOSurface *a2, __int128 *a3, CI *this, __int128 *a5, unint64_t *a6)
{
  v12 = CI::format_from_IOSurface(this, a2);
  if (!(*(*a1 + 440))(a1, v12, 1) || (*&v21 = 0, *(&v21 + 1) = IOSurfaceGetWidth(this), Height = IOSurfaceGetHeight(this), v14 = (*(*a1 + 112))(a1), v15 = *a6, LODWORD(v19) = *a6, BYTE4(v19) = (v15 >> 31) & 2, *(&v19 + 5) = 0, BYTE9(v19) = 0, HIDWORD(v19) = 1, (v16 = (*(*v14 + 64))(v14, &v19, this, 0, &v21, 1, 0)) == 0) || (v19 = *a3, v20 = *(a3 + 2), v17 = *a5, v18 = *(a5 + 2), ((*(*a1 + 96))(a1, a2, &v19, v16, &v17, a6) & 1) == 0))
  {
    v21 = *a3;
    Height = *(a3 + 2);
    v19 = *a5;
    v20 = *(a5 + 2);
    CI::Context::blitSurface(a2, &v21, this, &v19, v13);
    ReturnSurfaceToCache(this);
  }
}

CI::Context *CI::Context::assemble_leafTiles(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50[0] = 0;
  v49[0] = *a3;
  *&v49[1] = *(a3 + 16);
  v10 = (**a2)(a2);
  LODWORD(v47) = 0;
  v11 = (*(*a1 + 624))(a1);
  v12 = a1[47];
  *(&v47 + 1) = v11;
  v48 = v12;
  v13 = (*(*a1 + 280))(a1);
  SurfaceFromCache = GetSurfaceFromCache(v49, 1, 1, v10, &v47, v13, 0, -1, a4, v50, 0);
  if (SurfaceFromCache && v50[0] == 1)
  {
    v14 = 0;
    v15 = a2[1];
    v16 = a2[2];
    while (1)
    {
      if (v15 == v16)
      {
        v18 = 0;
      }

      else
      {
        v17 = v15[1];
        if (*v15 == v17)
        {
          v18 = 0;
        }

        else
        {
          v18 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *v15) >> 3);
        }
      }

      if (v14 >= v18)
      {
        return SurfaceFromCache;
      }

      v19 = 0;
      v40 = v14;
      while (1)
      {
        v20 = 0xAAAAAAAAAAAAAAABLL * (v16 - v15);
        if (v15 == v16)
        {
          v20 = 0;
        }

        if (v19 >= v20)
        {
          break;
        }

        memset(v49, 0, 24);
        (*(*a2 + 16))(v49, a2, v19, v14);
        v22 = v49[0];
        v21 = DWORD1(v49[0]);
        v24 = *a3;
        v23 = *(a3 + 4);
        v26 = *(a3 + 8);
        v25 = *(a3 + 16);
        if (*&v49[0] == 0x7FFFFFFF7FFFFFFFLL && *(v49 + 8) == 0 || v24 == 0x7FFFFFFF && v23 == 0x7FFFFFFF && !v26 && !v25)
        {
          goto LABEL_46;
        }

        if (*&v49[0] == 0x8000000180000001 && *(v49 + 8) == __PAIR128__(0xFFFFFFFFLL, 0xFFFFFFFFLL))
        {
          v27 = *(a3 + 4);
          v28 = *a3;
          if (!v26)
          {
            goto LABEL_46;
          }

          goto LABEL_29;
        }

        if (v24 == -2147483647 && v23 == -2147483647 && v26 == 0xFFFFFFFFLL && v25 == 0xFFFFFFFFLL)
        {
          v25 = *&v49[1];
          v26 = *(&v49[0] + 1);
          v27 = DWORD1(v49[0]);
          v28 = v49[0];
          if (!*(&v49[0] + 1))
          {
            goto LABEL_46;
          }

LABEL_29:
          if (v25)
          {
            v41 = v27;
            v42 = v28;
            v46 = 0;
            Current = CFAbsoluteTimeGetCurrent();
            v30 = (*(*a2 + 8))(a2, v19, v14, &v46);
            *a6 = *a6 + CFAbsoluteTimeGetCurrent() - Current;
            *(a6 + 8) += v46;
            if (v30)
            {
              LODWORD(v47) = v42 - v24;
              DWORD1(v47) = v41 - v23;
              *(&v47 + 1) = v26;
              v48 = v25;
              v43[0] = v42 - v22;
              v43[1] = v41 - v21;
              v44 = v26;
              v45 = v25;
              CI::Context::blitSurface(SurfaceFromCache, &v47, v30, v43, v31);
              ReturnSurfaceToCache(v30);
            }

            v14 = v40;
          }

          goto LABEL_46;
        }

        if (SLODWORD(v49[0]) <= v24)
        {
          v28 = *a3;
        }

        else
        {
          v28 = v49[0];
        }

        v32 = LODWORD(v49[0]) + DWORD2(v49[0]);
        if (LODWORD(v49[0]) + DWORD2(v49[0]) >= v24 + v26)
        {
          v32 = v24 + v26;
        }

        v33 = __OFSUB__(v32, v28);
        v34 = v32 - v28;
        if (v34 < 0 == v33)
        {
          if (SDWORD1(v49[0]) <= v23)
          {
            v27 = *(a3 + 4);
          }

          else
          {
            v27 = DWORD1(v49[0]);
          }

          v35 = DWORD1(v49[0]) + LODWORD(v49[1]);
          if (DWORD1(v49[0]) + LODWORD(v49[1]) >= v23 + v25)
          {
            v35 = v23 + v25;
          }

          v33 = __OFSUB__(v35, v27);
          v36 = v35 - v27;
          if (v36 < 0 == v33)
          {
            v26 = v34;
            v25 = v36;
            if (v34)
            {
              goto LABEL_29;
            }
          }
        }

LABEL_46:
        ++v19;
        v15 = a2[1];
        v16 = a2[2];
      }

      ++v14;
    }
  }

  return SurfaceFromCache;
}

uint64_t CI::Context::bind_sampler(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, CI::TileTask *a6)
{
  v12 = (*(*a1 + 112))(a1);
  v13 = *(a2 + 24);
  v73.origin.x = CI::Node::roi(*a3, *(a3 + 8));
  v73.origin.y = v14;
  v73.size.width = v15;
  v73.size.height = v16;
  v71 = 0.0;
  v72 = 0;
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v17 = ci_signpost_log_render();
    v18 = *(v13 + 36) | ((*(*a1 + 280))(a1) << 32);
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v18, "bind_sampler", &unk_19CFBCBAE, buf, 2u);
    }
  }

  v19 = (*(*a1 + 280))(a1);
  TimerBase::TimerBase(buf, v19, *(v13 + 36), "bind_sampler", 0);
  if (CGRectIsEmpty(v73))
  {
    goto LABEL_70;
  }

  v20 = (*(*v13 + 16))(v13);
  v21 = 0;
  if (v20 <= 53)
  {
    if (v20 != 35)
    {
      if (v20 == 52)
      {
        if (CI::CI_ASSEMBLE_INPUT_TILES(void)::didCheck != -1)
        {
          CI::Context::bind_sampler();
        }

        if (CI::CI_ASSEMBLE_INPUT_TILES(void)::v && ((v24 = *(v13 + 64), v23 = *(v13 + 72), v24 == v23) ? (v25 = 0, v28 = 0) : (v25 = 0xAAAAAAAAAAAAAAABLL * (v23 - v24), v27 = *v24, v26 = v24[1], v27 != v26) ? (v28 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v27) >> 3)) : (v28 = 0), v28 * v25 >= 2))
        {
          x = v73.origin.x;
          y = v73.origin.y;
          width = v73.size.width;
          height = v73.size.height;
          if (CGRectIsNull(v73))
          {
            v68 = 0;
            *buffer = IRectNull;
          }

          else
          {
            v75.origin.x = x;
            v75.origin.y = y;
            v75.size.width = width;
            v75.size.height = height;
            if (CGRectIsInfinite(v75))
            {
              *buffer = IRectInfinite;
              v68 = 0xFFFFFFFFLL;
            }

            else
            {
              v79.origin.x = x;
              v79.origin.y = y;
              v79.size.width = width;
              v79.size.height = height;
              v80 = CGRectInset(v79, 0.000001, 0.000001);
              v81 = CGRectIntegral(v80);
              LODWORD(buffer[0]) = v81.origin.x;
              HIDWORD(buffer[0]) = v81.origin.y;
              buffer[1] = v81.size.width;
              v68 = v81.size.height;
            }
          }

          v57 = (*(*v13 + 456))(v13, a1[19]);
          v51 = CI::Context::assemble_leafTiles(a1, (v13 + 56), buffer, v57, v58, &v71);
          v59 = (*(*v13 + 456))(v13, a1[19]);
          CI::TileTask::addAssembledIntermediate(a6, v13, v59, v73);
        }

        else
        {
          v51 = CI::ProviderNode::surfaceForROI(v13, a1, &v73.origin.x, &v71);
        }

        CI::TextureManager::intermediate(v12, v51, &v73);
      }

      goto LABEL_69;
    }

    if (CI::CI_ASSEMBLE_INPUT_TILES(void)::didCheck != -1)
    {
      CI::Context::bind_sampler();
    }

    if (CI::CI_ASSEMBLE_INPUT_TILES(void)::v && ((v34 = *(v13 + 64), v33 = *(v13 + 72), v34 == v33) ? (v35 = 0, v38 = 0) : (v35 = 0xAAAAAAAAAAAAAAABLL * (v33 - v34), v37 = *v34, v36 = v34[1], v37 != v36) ? (v38 = 0xAAAAAAAAAAAAAAABLL * ((v36 - v37) >> 3)) : (v38 = 0), v38 * v35 >= 2 && ((v42 = v73.origin.x, v43 = v73.origin.y, v44 = v73.size.width, v45 = v73.size.height, !CGRectIsNull(v73)) ? ((v74.origin.x = v42, v74.origin.y = v43, v74.size.width = v44, v74.size.height = v45, !CGRectIsInfinite(v74)) ? (v76.origin.x = v42, v76.origin.y = v43, v76.size.width = v44, v76.size.height = v45, v77 = CGRectInset(v76, 0.000001, 0.000001), v78 = CGRectIntegral(v77), LODWORD(buffer[0]) = v78.origin.x, HIDWORD(buffer[0]) = v78.origin.y, buffer[1] = v78.size.width, v68 = v78.size.height) : (*buffer = IRectInfinite, v68 = 0xFFFFFFFFLL)) : (v68 = 0, *buffer = IRectNull), v52 = (*(*(v13 + 56) + 24))(v13 + 56, 0), (v54 = CI::Context::assemble_leafTiles(a1, (v13 + 56), buffer, v52, v53, &v71)) != 0)))
    {
      v46 = v54;
      CFRetain(v54);
      v55 = (*(*(v13 + 56) + 24))(v13 + 56, 0);
      CI::TileTask::addAssembledIntermediate(a6, v13, v55, v73);
    }

    else
    {
      CI::CGNode::surfaceForROI(v13, a1, &v73.origin.x, &v71, buffer);
      v46 = buffer[0];
      if (!buffer[0])
      {
LABEL_59:
        CI::CGNode::cgImageForROI(v13, &v73, buffer);
        v21 = (*(*a1 + 56))(a1, buffer[0], v13 + 48, *(a2 + 120), *(a2 + 124), a4);
        v56 = buffer[0];
        buffer[0] = 0;
        if (v56)
        {
          CFRelease(v56);
        }

        if (!v46)
        {
          goto LABEL_69;
        }

        v40 = v46;
LABEL_63:
        CFRelease(v40);
        goto LABEL_69;
      }
    }

    if (IOSurfaceGetPlaneCount(v46) <= 1)
    {
      CI::TextureManager::intermediate(v12, v46, &v73);
    }

    goto LABEL_59;
  }

  switch(v20)
  {
    case '6':
      if (a5 == 3)
      {
        v39 = 1;
      }

      else
      {
        v39 = *(a2 + 124);
      }

      CI::SurfaceNode::surfaceForROI(v13, a1, &v71, buffer, v73.origin.x, v73.origin.y, v73.size.width, v73.size.height);
      v21 = (*(*a1 + 64))(a1, buffer[0], v13 + 48, *(v13 + 106), *(a2 + 120), v39, a5 == 4, a4, a5 == 3);
      v40 = buffer[0];
      buffer[0] = 0;
      if (!v40)
      {
        break;
      }

      goto LABEL_63;
    case '8':
      v29 = (*(*v13 + 440))(v13);
      v30 = *v13;
      if (v29)
      {
        v31 = (*(v30 + 440))(v13);
        v32 = (*(*a1 + 72))(a1, v31, *(v13 + 52), *(a2 + 120), *(a2 + 124), a4);
      }

      else
      {
        if (!(*(v30 + 448))(v13))
        {
          v21 = 0;
          break;
        }

        v41 = (*(*v13 + 448))(v13);
        v32 = (*(*a1 + 80))(a1, v41, *(a2 + 120), *(a2 + 124), 0, a4);
      }

      v21 = v32;
      break;
    case '<':
      intermediate_for_node = CI::TextureManager::get_intermediate_for_node(v12, a3);
      if ((*(v13 + 144) & 4) != 0)
      {
        (*(*v12 + 72))(v12, intermediate_for_node);
      }

      (*(*intermediate_for_node + 24))(v66, intermediate_for_node);
      v21 = (*(*a1 + 88))(a1, v66, *(a2 + 120), *(a2 + 124), a4);
      v66[0] = 0;
      v66[1] = 0;
      break;
  }

LABEL_69:
  CI::TileTask::incrementFillTimeForNode(a6, v13, v71);
  CI::TileTask::incrementFillPixelsForNode(a6, v13, v72);
  if (CI_LIMIT_SAMPLERS())
  {
LABEL_70:
    empty_surface = CI::TextureManager::get_empty_surface(v12);
    PixelFormat = IOSurfaceGetPixelFormat(empty_surface);
    LODWORD(buffer[0]) = CI::format_from_PixelFormatType(PixelFormat);
    WORD2(buffer[0]) = 0;
    v21 = (*(*a1 + 64))(a1, empty_surface, buffer, 0, *(a2 + 120), *(a2 + 124), 0, a4, 0);
  }

  if (CI_VERBOSE_SIGNPOSTS())
  {
    v62 = ci_signpost_log_render();
    v63 = v70;
    if (v70 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v64 = v62;
      if (os_signpost_enabled(v62))
      {
        LOWORD(buffer[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v64, OS_SIGNPOST_INTERVAL_END, v63, "bind_sampler", &unk_19CFBCBAE, buffer, 2u);
      }
    }
  }

  TimerBase::~TimerBase(buf);
  return v21;
}

uint64_t CI::Context::kernel_argument_size(uint64_t a1, int a2)
{
  result = 4;
  switch(a2)
  {
    case 2:
      v4 = *(*a1 + 528);

      result = v4(a1, 10);
      break;
    case 3:
      v5 = (*(*a1 + 528))(a1, 10);
      result = (*(*a1 + 528))(a1, 6) + v5;
      break;
    case 5:
    case 13:
      return result;
    case 6:
    case 15:
      result = 8;
      break;
    case 7:
      result = 12;
      break;
    case 8:
    case 16:
    case 27:
    case 42:
    case 43:
    case 46:
    case 47:
      result = 16;
      break;
    case 9:
    case 18:
      result = 32;
      break;
    case 10:
    case 40:
    case 44:
      result = 48;
      break;
    case 11:
    case 41:
      result = 64;
      break;
    case 12:
      result = 2;
      break;
    case 14:
      result = 6;
      break;
    case 17:
      result = 24;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

BOOL CI::Context::format_is_supported_for_input(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZNK2CI7Context29format_is_supported_for_inputENS_11PixelFormatE_block_invoke;
  v3[3] = &__block_descriptor_tmp_19_2;
  v3[4] = a1;
  return CI::format_swizzle_for_input(a2, 0, v3) != 0;
}

BOOL CI::Context::format_is_supported_for_output(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  v11 = *a4;
  v12 = *(a4 + 2);
  v7 = (*(*a1 + 584))(a1);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZNK2CI7Context30format_is_supported_for_outputENS_11PixelFormatENS_15DestinationTypeE5IRect_block_invoke;
  v9[3] = &__block_descriptor_tmp_20_0;
  v9[4] = a1;
  v10 = a3;
  CI::format_swizzle_for_output(a2, &v11, v7, v9, v13);
  return v13[0] != 0;
}

uint64_t CI::Context::swizzler_for_input(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZNK2CI7Context18swizzler_for_inputENS_11PixelFormatE_block_invoke;
  v3[3] = &__block_descriptor_tmp_21_1;
  v3[4] = a1;
  return CI::format_swizzle_for_input(a2, 0, v3);
}

BOOL CI::Context::converter_for_input(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZNK2CI7Context19converter_for_inputENS_11PixelFormatERNS_11ConvertTypeE_block_invoke;
  v7[3] = &__block_descriptor_tmp_22_0;
  v7[4] = a1;
  v4 = CI::format_swizzle_for_input(a2, 1, v7);
  *a3 = v5;
  return v4 != 0;
}

void CI::Context::swizzler_for_output(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v12 = *a3;
  v13 = *(a3 + 2);
  v9 = (*(*a1 + 584))(a1);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = ___ZNK2CI7Context19swizzler_for_outputENS_11PixelFormatE5IRectNS_15DestinationTypeE_block_invoke;
  v10[3] = &__block_descriptor_tmp_23_2;
  v10[4] = a1;
  v11 = a4;
  CI::format_swizzle_for_output(a2, &v12, v9, v10, a5);
}

BOOL CI::Context::converter_for_output(uint64_t a1, uint64_t a2, int *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2CI7Context20converter_for_outputENS_11PixelFormatERNS_11ConvertTypeE_block_invoke;
  v4[3] = &__block_descriptor_tmp_24_1;
  v4[4] = a1;
  return CI::format_converter_for_output(a2, a3, v4);
}

CGContext *CI::Context::set_cgcontext(CI::Context *this, CGContext *a2)
{
  result = *(this + 6);
  if (result != a2)
  {
    CGContextRelease(result);
    result = CGContextRetain(a2);
    *(this + 6) = result;
  }

  return result;
}

void CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::insert(uint64_t a1, uint64_t a2, CI::Object *this, int a4)
{
  if (this)
  {
    CI::Object::ref(this);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZN2CI11ObjectCacheINS_11MainProgramENS_13ProgramDigestELb0EE6insertES2_PS1_j_block_invoke;
  v8[3] = &__block_descriptor_tmp_113;
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = this;
  v9 = a4;
  Queue::execute_async((a1 + 56), v8);
}

uint64_t CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::find(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI11ObjectCacheINS_11MainProgramENS_13ProgramDigestELb0EE4findES2__block_invoke;
  block[3] = &unk_1E75C4FB0;
  block[5] = a1;
  block[6] = a2;
  block[4] = &v5;
  dispatch_sync(*(a1 + 56), block);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void CI::Context::updateColorSpace(CGColorSpaceRef *this, CGColorSpaceRef space)
{
  if (space)
  {
    if (this[2])
    {
      CGColorSpaceRetain(space);
      CGColorSpaceRelease(this[2]);
      this[2] = space;
    }
  }
}

void CI::Context::updateWorkingSpace(CGColorSpaceRef *this, CGColorSpaceRef space)
{
  if (space)
  {
    if (this[3])
    {
      CGColorSpaceRetain(space);
      CGColorSpaceRelease(this[3]);
      this[3] = space;
    }
  }
}

CGColorSpaceRef ___ZN2CI7Context19defaultWorkingSpaceEv_block_invoke()
{
  v0 = dyld_program_sdk_at_least();
  v1 = MEMORY[0x1E695F108];
  if (!v0)
  {
    v1 = MEMORY[0x1E695F1B0];
  }

  result = CGColorSpaceCreateWithName(*v1);
  CI::Context::defaultWorkingSpace(void)::space = result;
  return result;
}

uint64_t CI::Context::defaultOutputRGBSpace(CI::Context *this)
{
  if (CI::Context::defaultOutputRGBSpace(void)::didCreate != -1)
  {
    CI::Context::defaultOutputRGBSpace();
  }

  return CI::Context::defaultOutputRGBSpace(void)::space;
}

CGColorSpaceRef ___ZN2CI7Context21defaultOutputRGBSpaceEv_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  CI::Context::defaultOutputRGBSpace(void)::space = result;
  return result;
}

uint64_t CI::Context::defaultOutputGraySpace(CI::Context *this)
{
  if (CI::Context::defaultOutputGraySpace(void)::didCreate != -1)
  {
    CI::Context::defaultOutputGraySpace();
  }

  return CI::Context::defaultOutputGraySpace(void)::space;
}

CGColorSpaceRef ___ZN2CI7Context22defaultOutputGraySpaceEv_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
  CI::Context::defaultOutputGraySpace(void)::space = result;
  return result;
}

void CI::SerialRectArray::recurseSubdivide(double *a1, int a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v4 = *(a3 + 8);
    v5 = *(a3 + 16);
    if (v4 >= v5)
    {
      v15 = (v4 - *a3) >> 5;
      v16 = v15 + 1;
      if ((v15 + 1) >> 59)
      {
        std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
      }

      v17 = v5 - *a3;
      if (v17 >> 4 > v16)
      {
        v16 = v17 >> 4;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFE0)
      {
        v18 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<CGRect>>(a3, v18);
      }

      v20 = (32 * v15);
      v21 = *(a1 + 1);
      *v20 = *a1;
      v20[1] = v21;
      v7 = 32 * v15 + 32;
      v22 = *(a3 + 8) - *a3;
      v23 = v20 - v22;
      memcpy(v20 - v22, *a3, v22);
      v24 = *a3;
      *a3 = v23;
      *(a3 + 8) = v7;
      *(a3 + 16) = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      v6 = *(a1 + 1);
      *v4 = *a1;
      v4[1] = v6;
      v7 = (v4 + 2);
    }

    *(a3 + 8) = v7;
  }

  else
  {
    v8 = a1[2];
    v9 = a1[3];
    if (v8 <= v9)
    {
      v19 = *a1;
      v26 = *(a1 + 1);
      v27 = v19;
      v28 = a1[2];
      v29 = floor(v9 * 0.5 * 0.25) * 4.0;
      v25 = *a1;
      *(&v25 + 1) = v29 + *(&v25 + 1);
      *(&v26 + 1) = v9 - v29;
      v13 = (a2 >> 1);
      CI::SerialRectArray::recurseSubdivide(&v25, v13, a3);
      v14 = &v27;
    }

    else
    {
      v10 = v8;
      v11 = *(a1 + 1);
      v27 = *a1;
      v29 = *(&v11 + 1);
      v28 = floor(v10 * 0.5 * 0.25) * 4.0;
      v12 = *(a1 + 1);
      v25 = *a1;
      *(&v26 + 1) = *(&v12 + 1);
      *&v25 = v28 + *&v25;
      *&v26 = v10 - v28;
      v13 = (a2 >> 1);
      CI::SerialRectArray::recurseSubdivide(&v27, v13, a3);
      v14 = &v25;
    }

    CI::SerialRectArray::recurseSubdivide(v14, v13, a3);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CI::parentROI>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CI::roiKey>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

uint64_t ___ZN2CIL26dump_intermediate_for_nodeEPKNS_11ProgramNodeEPKNS_14intermediate_tEP16dispatch_group_s_block_invoke()
{
  CI::dump_intermediate_for_node(CI::ProgramNode const*,CI::intermediate_t const*,dispatch_group_s *)::sRGB = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  CI::dump_intermediate_for_node(CI::ProgramNode const*,CI::intermediate_t const*,dispatch_group_s *)::sRGBLinear = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  CI::dump_intermediate_for_node(CI::ProgramNode const*,CI::intermediate_t const*,dispatch_group_s *)::dumpPngImages = CI_PRINT_TREE_dump_intermediates();
  CI::dump_intermediate_for_node(CI::ProgramNode const*,CI::intermediate_t const*,dispatch_group_s *)::dumpRawImages = CI_PRINT_TREE_dump_raw_intermediates();
  result = CI_PRINT_TREE_dump_bmtl_intermediates();
  CI::dump_intermediate_for_node(CI::ProgramNode const*,CI::intermediate_t const*,dispatch_group_s *)::dumpBmtlImages = result;
  return result;
}

void ___ZN2CIL26dump_intermediate_for_nodeEPKNS_11ProgramNodeEPKNS_14intermediate_tEP16dispatch_group_s_block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  dispatch_group_wait(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(*(a1 + 40));
  if (CI::dump_intermediate_for_node(CI::ProgramNode const*,CI::intermediate_t const*,dispatch_group_s *)::dumpPngImages == 1)
  {
    v2 = CI_TEMP_DIR();
    v3 = getpid();
    snprintf(__str, 0x100uLL, "%s/%d_intermediate_%d_%d_%d_%d_%d.png", v2, v3, *(a1 + 96), *(a1 + 100), *(a1 + 104), *(a1 + 108), *(a1 + 112));
    if (SurfaceCroppedWriteToFile(*(a1 + 48), *(a1 + 56), __str, *(a1 + 80), *(a1 + 88)))
    {
      v4 = ci_logger_render();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v13 = __str;
        _os_log_impl(&dword_19CC36000, v4, OS_LOG_TYPE_DEFAULT, "Dumped intermediate to: %{public}s\n", buf, 0xCu);
      }
    }
  }

  if (CI::dump_intermediate_for_node(CI::ProgramNode const*,CI::intermediate_t const*,dispatch_group_s *)::dumpRawImages == 1)
  {
    v5 = CI_TEMP_DIR();
    v6 = getpid();
    snprintf(__str, 0x100uLL, "%s/%d_intermediate_%d_%d_%d_%d_%d.raw", v5, v6, *(a1 + 96), *(a1 + 100), *(a1 + 104), *(a1 + 108), *(a1 + 112));
    if (SurfaceCroppedWriteRawToFile(*(a1 + 48), __str, *(a1 + 80), *(a1 + 88)))
    {
      v7 = ci_logger_render();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v13 = __str;
        _os_log_impl(&dword_19CC36000, v7, OS_LOG_TYPE_DEFAULT, "Dumped raw intermediate to: %{public}s\n", buf, 0xCu);
      }
    }
  }

  if (CI::dump_intermediate_for_node(CI::ProgramNode const*,CI::intermediate_t const*,dispatch_group_s *)::dumpBmtlImages == 1)
  {
    v8 = CI_TEMP_DIR();
    v9 = getpid();
    snprintf(__str, 0x100uLL, "%s/%d_%s_%d_%d_%d_%d_%d.bmtl", v8, v9, *(*(*(a1 + 32) + 8) + 24), *(a1 + 96), *(a1 + 100), *(a1 + 104), *(a1 + 108), *(a1 + 112));
    if (SurfaceCroppedWriteBmtlToFile(*(a1 + 48), __str, *(a1 + 80), *(a1 + 88)))
    {
      v10 = ci_logger_render();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v13 = __str;
        _os_log_impl(&dword_19CC36000, v10, OS_LOG_TYPE_DEFAULT, "Dumped bmtl intermediate to: %{public}s\n", buf, 0xCu);
      }
    }
  }

  v11 = *(*(*(a1 + 32) + 8) + 24);
  if (v11)
  {
    free(v11);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  ReturnSurfaceToCache(*(a1 + 48));
  ReturnSurfaceToCache(*(a1 + 48));
}

void std::vector<CI::intermediate_t const*>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CI::intermediate_t const*>>(a1, a2);
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CI::intermediate_t const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

uint64_t ___ZN2CIL23CI_ASSEMBLE_INPUT_TILESEv_block_invoke()
{
  v0 = getenv("CI_ASSEMBLE_INPUT_TILES");
  if (v0)
  {
    result = atoi(v0);
  }

  else
  {
    result = CI::CI_ASSEMBLE_INPUT_TILES(void)::v;
  }

  CI::CI_ASSEMBLE_INPUT_TILES(void)::v = result;
  return result;
}

uint64_t CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::ObjectCache(uint64_t a1, unint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1065353216;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  *(a1 + 56) = dispatch_queue_create("CI::ObjectCacheQ", v4);
  *(a1 + 64) = dispatch_group_create();
  std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::__rehash<true>(a1 + 16, vcvtps_u32_f32(a2 / *(a1 + 48)));
  return a1;
}

uint64_t CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::~ObjectCache(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI11ObjectCacheINS_11MainProgramENS_13ProgramDigestELb0EED2Ev_block_invoke;
  block[3] = &__block_descriptor_tmp_104;
  block[4] = a1;
  v2 = (a1 + 56);
  dispatch_sync(*(a1 + 56), block);
  Queue::~Queue(v2);
  std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::~__hash_table(a1 + 16);
  return a1;
}

void std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry::~Entry((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry::~Entry(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = ___ZN2CI11ObjectCacheINS_11MainProgramENS_13ProgramDigestELb0EE5EntryD2Ev_block_invoke;
    v4[3] = &__block_descriptor_tmp_105;
    v4[4] = a1;
    CI::Object::performDeferredRoot(v4);
  }

  else
  {
    v2 = *a1;
    if (*a1)
    {
      CI::Object::unref(v2);
    }
  }

  return a1;
}

void ___ZN2CI11ObjectCacheINS_11MainProgramENS_13ProgramDigestELb0EE5EntryD2Ev_block_invoke(uint64_t a1)
{
  v1 = **(a1 + 32);
  if (v1)
  {
    CI::Object::unref(v1);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t CI::ObjectCache<CI::Node,unsigned long long,false>::~ObjectCache(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI11ObjectCacheINS_4NodeEyLb0EED2Ev_block_invoke;
  block[3] = &__block_descriptor_tmp_106;
  block[4] = a1;
  v2 = (a1 + 56);
  dispatch_sync(*(a1 + 56), block);
  Queue::~Queue(v2);
  std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>>>::~__hash_table(a1 + 16);
  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      CI::ObjectCache<CI::Node,unsigned long long,false>::Entry::~Entry((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t CI::ObjectCache<CI::Node,unsigned long long,false>::Entry::~Entry(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = ___ZN2CI11ObjectCacheINS_4NodeEyLb0EE5EntryD2Ev_block_invoke;
    v4[3] = &__block_descriptor_tmp_107;
    v4[4] = a1;
    CI::Object::performDeferredRoot(v4);
  }

  else
  {
    v2 = *a1;
    if (*a1)
    {
      CI::Object::unref(v2);
    }
  }

  return a1;
}

void ___ZN2CI11ObjectCacheINS_4NodeEyLb0EE5EntryD2Ev_block_invoke(uint64_t a1)
{
  v1 = **(a1 + 32);
  if (v1)
  {
    CI::Object::unref(v1);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::~ObjectCache(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI11ObjectCacheINS_11ProgramNodeEyLb0EED2Ev_block_invoke;
  block[3] = &__block_descriptor_tmp_108;
  block[4] = a1;
  v2 = (a1 + 56);
  dispatch_sync(*(a1 + 56), block);
  Queue::~Queue(v2);
  std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>>>::~__hash_table(a1 + 16);
  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry::~Entry((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry::~Entry(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = ___ZN2CI11ObjectCacheINS_11ProgramNodeEyLb0EE5EntryD2Ev_block_invoke;
    v4[3] = &__block_descriptor_tmp_109;
    v4[4] = a1;
    CI::Object::performDeferredRoot(v4);
  }

  else
  {
    v2 = *a1;
    if (*a1)
    {
      CI::Object::unref(v2);
    }
  }

  return a1;
}

void ___ZN2CI11ObjectCacheINS_11ProgramNodeEyLb0EE5EntryD2Ev_block_invoke(uint64_t a1)
{
  v1 = **(a1 + 32);
  if (v1)
  {
    CI::Object::unref(v1);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void ___ZN2CI11ObjectCacheINS_4NodeEyLb0EE5clearEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>>>::clear(v1 + 16);
  *(v1 + 8) = 0;
}

void ___ZN2CI11ObjectCacheINS_11ProgramNodeEyLb0EE5clearEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>>>::clear(v1 + 16);
  *(v1 + 8) = 0;
}

void ___ZN2CI11ObjectCacheINS_11MainProgramENS_13ProgramDigestELb0EE5clearEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::clear(v1 + 16);
  *(v1 + 8) = 0;
}

void std::__tree<CI::Context::recursive_render(CI::TileTask *,CI::roiKey const&,CI::Node const*,BOOL)::childKey,CI::Context::recursive_render(CI::TileTask *,CI::roiKey const&,CI::Node const*,BOOL)::compareDepth,std::allocator<CI::Context::recursive_render(CI::TileTask *,CI::roiKey const&,CI::Node const*,BOOL)::childKey>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<CI::Context::recursive_render(CI::TileTask *,CI::roiKey const&,CI::Node const*,BOOL)::childKey,CI::Context::recursive_render(CI::TileTask *,CI::roiKey const&,CI::Node const*,BOOL)::compareDepth,std::allocator<CI::Context::recursive_render(CI::TileTask *,CI::roiKey const&,CI::Node const*,BOOL)::childKey>>::destroy(*a1);
    std::__tree<CI::Context::recursive_render(CI::TileTask *,CI::roiKey const&,CI::Node const*,BOOL)::childKey,CI::Context::recursive_render(CI::TileTask *,CI::roiKey const&,CI::Node const*,BOOL)::compareDepth,std::allocator<CI::Context::recursive_render(CI::TileTask *,CI::roiKey const&,CI::Node const*,BOOL)::childKey>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void *std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long>(uint64_t a1, unint64_t *a2)
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

uint64_t CI::SerialRectArray::maxParentDistance(CI::SerialRectArray *this)
{
  v1 = *this;
  v2 = *(this + 1);
  v3 = v2 - *this;
  if (v2 == *this)
  {
    return 0;
  }

  v4 = 0;
  result = 0;
  v6 = 0xEEEEEEEEEEEEEEEFLL * (v3 >> 3);
  if (v6 <= 1)
  {
    v6 = 1;
  }

  do
  {
    v7 = (v1 + 120 * v4);
    v8 = v7[4];
    v9 = v7[5];
    if (v8 == v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v11 = v7[4];
      do
      {
        if (v10 <= *(v11 + 40))
        {
          v10 = *(v11 + 40);
        }

        v11 += 48;
      }

      while (v11 != v9);
    }

    v12 = v7[7];
    v13 = v7[8];
    for (i = v12; i != v13; i += 48)
    {
      if (v10 <= *(i + 40))
      {
        v10 = *(i + 40);
      }
    }

    if (result <= v10)
    {
      if (v8 == v9)
      {
        result = 0;
      }

      else
      {
        LODWORD(result) = 0;
        do
        {
          v15 = *(v8 + 40);
          if (result <= v15)
          {
            result = v15;
          }

          else
          {
            result = result;
          }

          v8 += 48;
        }

        while (v8 != v9);
      }

      while (v12 != v13)
      {
        v16 = *(v12 + 40);
        if (result <= v16)
        {
          result = v16;
        }

        else
        {
          result = result;
        }

        v12 += 48;
      }
    }

    ++v4;
  }

  while (v4 != v6);
  return result;
}

void ___ZN2CI11ObjectCacheINS_11MainProgramENS_13ProgramDigestELb0EE6insertES2_PS1_j_block_invoke(void *a1)
{
  v2 = a1[4];
  ++v2[1];
  v3 = std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::find<CI::ProgramDigest>(v2 + 2, a1 + 5);
  if (!v3)
  {
    if (v2[5] == *v2)
    {
      CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::evict(v2);
    }

    std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::__emplace_unique_impl<std::piecewise_construct_t const&,std::tuple<CI::ProgramDigest const&>,std::tuple<CI::MainProgram* const&,unsigned long long &,unsigned int const&>>();
  }

  v3[4] = v2[1];
  v4 = a1[6];
  if (v4)
  {

    CI::Object::unref(v4);
  }
}

uint64_t CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::evict(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 32);
    do
    {
      if (v2[4] < v1[4])
      {
        v1 = v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::remove((a1 + 16), v1, v4);
  return std::unique_ptr<std::__hash_node<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,void *>>>>::~unique_ptr[abi:nn200100](v4);
}

void *std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::find<CI::ProgramDigest>(void *a1, unint64_t *a2)
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
    if (v3 >= *&v2)
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

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
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

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
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

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry::~Entry(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::__node_insert_unique(uint64_t *a1, void *a2)
{
  v2 = a2;
  v5 = a2 + 2;
  v4 = a2[2];
  *(v5 - 1) = v4;
  v6 = std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::__node_insert_unique_prepare[abi:nn200100](a1, v4, v5);
  if (v6)
  {
    return v6;
  }

  std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::__node_insert_unique_perform[abi:nn200100](a1, v2);
  return v2;
}

uint64_t std::pair<CI::ProgramDigest const,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>::pair[abi:nn200100]<CI::ProgramDigest const&,CI::MainProgram* const&,unsigned long long &,unsigned int const&,0ul,0ul,1ul,2ul>(uint64_t a1, void **a2, uint64_t a3)
{
  *a1 = **a2;
  v4 = **a3;
  v5 = **(a3 + 8);
  v6 = **(a3 + 16);
  if (v4)
  {
    v4 = CI::Object::ref(v4);
  }

  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6 > 0x40;
  return a1;
}