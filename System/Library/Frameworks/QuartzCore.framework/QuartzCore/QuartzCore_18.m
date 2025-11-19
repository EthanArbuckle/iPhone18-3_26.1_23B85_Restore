uint64_t CA::OGL::MetalContext::load_pipeline_state(CA::OGL::MetalContext *this, NSString *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (byte_1ED4E9829)
  {
    return 0;
  }

  if ((*(this + 874) & 0x20) != 0)
  {
    return 0;
  }

  if (!*(this + 494))
  {
    return 0;
  }

  v4 = [&unk_1EF22FB60 objectForKey:a2];
  if (!v4)
  {
    return 0;
  }

  v5 = &(&CA::OGL::MetalContext::offline_compilation_manifest)[5 * [v4 intValue]];
  if (*(v5 + 8) == 1 && ![*(this + 438) supportsFamily:v5[2]])
  {
    return 0;
  }

  if (*(v5 + 24) == 1 && ([*(this + 438) supportsFamily:v5[4]] & 1) != 0)
  {
    return 0;
  }

  v6 = mach_continuous_time();
  v25 = 0u;
  v26 = 0u;
  CA::OGL::MetalContext::Pipeline::Spec::decode_name(&v25, [(NSString *)a2 UTF8String]);
  if (BYTE7(v26))
  {
    return 0;
  }

  v19 = 0;
  pipeline_descriptor = CA::OGL::MetalContext::get_pipeline_descriptor(this, &v25, 1, 0);
  v24 = *(this + 494);
  [pipeline_descriptor setBinaryArchives:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v24, 1)}];
  v10 = [*(this + 438) newRenderPipelineStateWithDescriptor:pipeline_descriptor options:4 reflection:0 error:&v19];
  if (!v10)
  {
    if (dyld_shared_cache_some_image_overridden())
    {
      if (x_log_get_ogl_metal(void)::once != -1)
      {
        dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
      }

      v11 = x_log_get_ogl_metal(void)::log;
      if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
      {
        v12 = [(NSString *)a2 UTF8String];
        v13 = [@"23B72" UTF8String];
        v14 = [objc_msgSend(v19 "localizedDescription")];
        *buf = 136315650;
        v21 = v12;
        v22 = 2080;
        *v23 = v13;
        *&v23[8] = 2080;
        *&v23[10] = v14;
        _os_log_error_impl(&dword_183AA6000, v11, OS_LOG_TYPE_ERROR, "Metal failed to load render pipeline\npipeline=%s sdk=%s\n%s", buf, 0x20u);
      }
    }

    else
    {
      if (x_log_get_ogl_metal(void)::once != -1)
      {
        dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
      }

      v15 = x_log_get_ogl_metal(void)::log;
      if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_FAULT))
      {
        v16 = [(NSString *)a2 UTF8String];
        v17 = [@"23B72" UTF8String];
        v18 = [objc_msgSend(v19 "localizedDescription")];
        *buf = 136315650;
        v21 = v16;
        v22 = 2080;
        *v23 = v17;
        *&v23[8] = 2080;
        *&v23[10] = v18;
        _os_log_fault_impl(&dword_183AA6000, v15, OS_LOG_TYPE_FAULT, "Metal failed to load render pipeline\npipeline=%s sdk=%s\n%s", buf, 0x20u);
      }
    }

    return 0;
  }

  v7 = v10;
  if (x_log_get_ogl_metal(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
  }

  if (os_signpost_enabled(x_log_get_ogl_metal(void)::log))
  {
    *buf = 138543874;
    v21 = a2;
    v22 = 1026;
    *v23 = 1;
    *&v23[4] = 2050;
    *&v23[6] = v6;
    _os_signpost_emit_unreliably_with_name_impl();
  }

  return v7;
}

uint64_t CA::OGL::MetalContext::Pipeline::Spec::get_generic(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 14);
  if ((CA::OGL::MetalContext::texture_function_info[8 * (v2 & 0x7F)] & 0x3F) != 0)
  {
    __assert_rtn("get_generic", "ogl-metal.mm", 6512, "texture_function_info[texture_function].is_fixed ()");
  }

  *(result + 6) = 0;
  *result = 0;
  *(result + 14) = v2 & 0x50600000 | 0x4003E00;
  *(result + 18) = 16;
  *(result + 27) = 0;
  *(result + 31) = 0;
  v3 = *(a2 + 21);
  if ((v3 & 0x1F) != 0)
  {
    __assert_rtn("get_generic", "ogl-metal.mm", 6750, "type == VertexShader::Type_Fixed");
  }

  *(result + 19) = ((((v3 & 0x100) >> 8) & 1) << 24) | 0x800000;
  *(result + 23) = *(a2 + 23) & 0x303FF00 | 0xF80000;
  return result;
}

__n128 __copy_helper_block_e8_40c41_ZTSN2CA3OGL12MetalContext8Pipeline4SpecE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 55) = 0;
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t CA::OGL::MetalContext::encode_placeholder_texture(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 3464);
  if (!v4)
  {
    v5 = [*(a1 + 3504) newTextureWithDescriptor:{objc_msgSend(MEMORY[0x1E69741C0], "texture2DDescriptorWithPixelFormat:width:height:mipmapped:", 80, 1, 1, 0)}];
    *(a1 + 3464) = v5;
    [v5 setLabel:@"com.apple.coreanimation.placeholder-texture"];
    v4 = *(a1 + 3464);
    if (!v4)
    {
      return 0;
    }
  }

  if (*(a1 + 4528 + 8 * a2) != v4)
  {
    *(a1 + 4528 + 8 * a2) = v4;
    (*(a1 + 3568))(*(a1 + 3536), sel_setFragmentTexture_atIndex_);
  }

  return 1;
}

uint64_t CA::OGL::MetalContext::encode_placeholder_cube(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 3472);
  if (!v4)
  {
    v5 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:80 width:1 height:1 mipmapped:0];
    [v5 setTextureType:7];
    v6 = [*(a1 + 3504) newTextureWithDescriptor:v5];
    *(a1 + 3472) = v6;
    [v6 setLabel:@"com.apple.coreanimation.placeholder-cube"];
    v4 = *(a1 + 3472);
    if (!v4)
    {
      return 0;
    }
  }

  if (*(a1 + 4528 + 8 * a2) != v4)
  {
    *(a1 + 4528 + 8 * a2) = v4;
    (*(a1 + 3568))(*(a1 + 3536), sel_setFragmentTexture_atIndex_);
  }

  return 1;
}

void *CA::OGL::MetalContext::encode_fragment_data(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 32);
    v4 = *(a2 + 40);
    v6 = *(a1 + 184);
    v5 = *(a1 + 192);
    if (v6 == v3)
    {
      v8 = *(a1 + 224);

      return v8(v5, sel_setFragmentBufferOffset_atIndex_, v4, 9);
    }

    else
    {
      result = (*(a1 + 208))(v5, sel_setFragmentBuffer_offset_atIndex_, v3, v4, 9);
      *(a1 + 184) = v3;
    }
  }

  else
  {

    return CA::OGL::MetalBufferPool::alloc_fragment_arg(a1, 9, 4u, 4u);
  }

  return result;
}

id CA::OGL::MetalContext::get_pipeline_descriptor(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *a4)
{
  v8 = objc_opt_new();
  v9 = MEMORY[0x1E696AEC0];
  v10 = CA::OGL::MetalContext::Pipeline::Spec::encode_segment(a2);
  [v8 setLabel:{objc_msgSend(@"com.apple.coreanimation.", "stringByAppendingString:", objc_msgSend(v9, "stringWithFormat:", @"%@_%@", v10, CA::OGL::MetalContext::FragmentShader::Spec::name(a2)))}];
  if (a3)
  {
    fragment_shader = CA::OGL::MetalContext::create_fragment_shader(a1, a2, 1);
    [v8 setFragmentFunction:*fragment_shader];

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, fragment_shader);
    if (a4)
    {
      goto LABEL_63;
    }

    goto LABEL_65;
  }

  v12 = (a1 + 2496);
  pthread_mutex_lock((a1 + 2496));
  v13 = CA::Hasher64::hash(a2, 0x13uLL);
  v14 = *(a1 + 2464);
  if (v14)
  {
    v15 = vcnt_s8(v14);
    v15.i16[0] = vaddlv_u8(v15);
    if (v15.u32[0] > 1uLL)
    {
      v16 = v13;
      if (v13 >= *&v14)
      {
        v16 = v13 % *&v14;
      }
    }

    else
    {
      v16 = (*&v14 - 1) & v13;
    }

    v17 = *(*(a1 + 2456) + 8 * v16);
    if (v17)
    {
      for (i = *v17; i; i = *i)
      {
        v19 = i[1];
        if (v19 == v13)
        {
          if (i[2] == *a2 && i[3] == *(a2 + 8) && *(i + 27) == *(a2 + 11))
          {
            v48 = i[5];
            goto LABEL_62;
          }
        }

        else
        {
          if (v15.u32[0] > 1uLL)
          {
            if (v19 >= *&v14)
            {
              v19 %= *&v14;
            }
          }

          else
          {
            v19 &= *&v14 - 1;
          }

          if (v19 != v16)
          {
            break;
          }
        }
      }
    }
  }

  pthread_mutex_unlock((a1 + 2496));
  v48 = CA::OGL::MetalContext::create_fragment_shader(a1, a2, 0);
  pthread_mutex_lock((a1 + 2496));
  v22 = CA::Hasher64::hash(a2, 0x13uLL);
  v23 = *(a1 + 2464);
  if (!*&v23)
  {
    goto LABEL_53;
  }

  v24 = vcnt_s8(v23);
  v24.i16[0] = vaddlv_u8(v24);
  if (v24.u32[0] > 1uLL)
  {
    v25 = v22;
    if (v22 >= *&v23)
    {
      v25 = v22 % *&v23;
    }
  }

  else
  {
    v25 = (*&v23 - 1) & v22;
  }

  v26 = *(*(a1 + 2456) + 8 * v25);
  if (!v26 || (v27 = *v26) == 0)
  {
LABEL_53:
    operator new();
  }

  while (1)
  {
    v28 = v27[1];
    if (v28 == v22)
    {
      break;
    }

    if (v24.u32[0] > 1uLL)
    {
      if (v28 >= *&v23)
      {
        v28 %= *&v23;
      }
    }

    else
    {
      v28 &= *&v23 - 1;
    }

    if (v28 != v25)
    {
      goto LABEL_53;
    }

LABEL_52:
    v27 = *v27;
    if (!v27)
    {
      goto LABEL_53;
    }
  }

  if (v27[2] != *a2 || v27[3] != *(a2 + 8) || *(v27 + 27) != *(a2 + 11))
  {
    goto LABEL_52;
  }

  v12 = (a1 + 2496);
  if (v27[5])
  {
    if (v48)
    {

      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v48);
      v48 = v27[5];
    }

    else
    {
      v48 = v27[5];
    }
  }

  else
  {
    v27[5] = v48;
  }

  v31 = *(a1 + 2560);
  *(a1 + 2560) = v31 + 1;
  v48[1] = v31;
LABEL_62:
  pthread_mutex_unlock(v12);
  [v8 setFragmentFunction:*v48];
  if (a4)
  {
LABEL_63:
    v32 = atomic_load(a4);
    if (v32)
    {
      return 0;
    }
  }

LABEL_65:
  if (a3)
  {
    vertex_shader = CA::OGL::MetalContext::create_vertex_shader(a1, (a2 + 19), 1);
    [v8 setVertexFunction:*vertex_shader];

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, vertex_shader);
    goto LABEL_112;
  }

  pthread_mutex_lock((a1 + 2608));
  v34 = std::__unordered_map_hasher<CA::OGL::MetalContext::VertexShader::Spec,std::__hash_value_type<CA::OGL::MetalContext::VertexShader::Spec,CA::OGL::MetalContext::VertexShader*>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::VertexShader::Spec>,std::equal_to<CA::OGL::MetalContext::VertexShader::Spec>,true>::operator()[abi:nn200100]((a2 + 19));
  v35 = *(a1 + 2576);
  if (v35)
  {
    v36 = vcnt_s8(v35);
    v36.i16[0] = vaddlv_u8(v36);
    if (v36.u32[0] > 1uLL)
    {
      v37 = v34;
      if (v34 >= *&v35)
      {
        v37 = v34 % *&v35;
      }
    }

    else
    {
      v37 = (*&v35 - 1) & v34;
    }

    v38 = *(*(a1 + 2568) + 8 * v37);
    if (v38)
    {
      for (j = *v38; j; j = *j)
      {
        v40 = j[1];
        if (v40 == v34)
        {
          if (*(j + 4) == *(a2 + 19))
          {
            v92 = j[3];
            goto LABEL_111;
          }
        }

        else
        {
          if (v36.u32[0] > 1uLL)
          {
            if (v40 >= *&v35)
            {
              v40 %= *&v35;
            }
          }

          else
          {
            v40 &= *&v35 - 1;
          }

          if (v40 != v37)
          {
            break;
          }
        }
      }
    }
  }

  pthread_mutex_unlock((a1 + 2608));
  v92 = CA::OGL::MetalContext::create_vertex_shader(a1, (a2 + 19), 0);
  pthread_mutex_lock((a1 + 2608));
  v41 = std::__unordered_map_hasher<CA::OGL::MetalContext::VertexShader::Spec,std::__hash_value_type<CA::OGL::MetalContext::VertexShader::Spec,CA::OGL::MetalContext::VertexShader*>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::VertexShader::Spec>,std::equal_to<CA::OGL::MetalContext::VertexShader::Spec>,true>::operator()[abi:nn200100]((a2 + 19));
  v42 = *(a1 + 2576);
  if (!*&v42)
  {
    goto LABEL_102;
  }

  v43 = vcnt_s8(v42);
  v43.i16[0] = vaddlv_u8(v43);
  if (v43.u32[0] > 1uLL)
  {
    v44 = v41;
    if (v41 >= *&v42)
    {
      v44 = v41 % *&v42;
    }
  }

  else
  {
    v44 = (*&v42 - 1) & v41;
  }

  v45 = *(*(a1 + 2568) + 8 * v44);
  if (!v45 || (v46 = *v45) == 0)
  {
LABEL_102:
    operator new();
  }

  while (2)
  {
    v47 = v46[1];
    if (v47 != v41)
    {
      if (v43.u32[0] > 1uLL)
      {
        if (v47 >= *&v42)
        {
          v47 %= *&v42;
        }
      }

      else
      {
        v47 &= *&v42 - 1;
      }

      if (v47 != v44)
      {
        goto LABEL_102;
      }

      goto LABEL_101;
    }

    if (*(v46 + 4) != *(a2 + 19))
    {
LABEL_101:
      v46 = *v46;
      if (!v46)
      {
        goto LABEL_102;
      }

      continue;
    }

    break;
  }

  if (v46[3])
  {
    if (v92)
    {

      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v92);
      v92 = v46[3];
    }

    else
    {
      v92 = v46[3];
    }
  }

  else
  {
    v46[3] = v92;
  }

  v49 = *(a1 + 2672);
  *(a1 + 2672) = v49 + 1;
  v92[1] = v49;
LABEL_111:
  pthread_mutex_unlock((a1 + 2608));
  [v8 setVertexFunction:*v92];
LABEL_112:
  v50 = *(a2 + 21);
  if ((v50 & 0x80) == 0)
  {
    v51 = a1 + 2752;
    v52 = (v50 >> 5) & 3;
    v53 = *(a1 + 2752 + 8 * v52);
    if (!v53)
    {
      v53 = objc_opt_new();
      v54 = [v53 attributes];
      v55 = [objc_msgSend(v53 "layouts")];
      v56 = (&CA::OGL::MetalContext::vertex_layout_info + 40 * v52);
      v57 = *v56;
      [v55 setStride:v57 & 0x3F];
      [v55 setStepFunction:1];
      v58 = (v57 >> 6) & 7;
      if (v58)
      {
        v59 = v56 + 4;
        do
        {
          v60 = *v59;
          v59 += 4;
          v61 = [v54 objectAtIndexedSubscript:v60 & 7];
          [v61 setFormat:v60 >> 3];
          [v61 setOffset:(v60 >> 8) & 0x3F];
          [v61 setBufferIndex:1];
          --v58;
        }

        while (v58);
      }

      *(v51 + 8 * v52) = v53;
    }

    [v8 setVertexDescriptor:v53];
  }

  v62 = [v8 colorAttachments];
  LODWORD(v63) = *(a2 + 14);
  if ((v63 & 0x600000) != 0)
  {
    v64 = 0;
    do
    {
      v65 = [v62 objectAtIndexedSubscript:v64];
      v66 = v65;
      v67 = *(a2 + 23);
      if (((v64 == 2) & ((v67 & 0x2000000) >> 25)) != 0)
      {
        v68 = 55;
      }

      else
      {
        v68 = 115;
      }

      v69 = (v67 >> 8) & 0x3FF;
      if (v64)
      {
        v70 = v68;
      }

      else
      {
        v70 = v69;
      }

      [v65 setPixelFormat:v70];
      v63 = *(a2 + 14);
      if ((v63 & 0x4000000) == 0 && v64 != ((v63 >> 24) & 3))
      {
        [v66 setWriteMask:0];
        LODWORD(v63) = *(a2 + 14);
      }

      ++v64;
    }

    while (v64 < ((v63 >> 21) & 3));
  }

  if ((*(a2 + 23) & 0xFC0000) != 0xF80000)
  {
    v71 = [v62 objectAtIndexedSubscript:BYTE3(v63) & 3];
    v72 = (&CA::OGL::MetalContext::blend_function_info + 3 * ((*(a2 + 23) >> 18) & 0x3F));
    [v71 setBlendingEnabled:1];
    v73 = *v72;
    [v71 setAlphaBlendOperation:(v73 >> 8) & 7];
    v74 = (*(a2 + 23) >> 18) & 0x3F;
    if (v74 < 0x18)
    {
      [v71 setRgbBlendOperation:(v73 >> 8) & 7];
      [v71 setSourceRGBBlendFactor:(v73 >> 11) & 0xF];
      v76 = 5;
      if (v74 >= 0x16)
      {
        v76 = 1;
      }

      if (v74 <= 0x12)
      {
        v77 = (v73 >> 11) & 0xF;
      }

      else
      {
        v77 = v74 < 0x16;
      }

      v78 = *(v72 + 2);
      v79 = v78 & 0xF;
      if (v74 <= 0x12)
      {
        v75 = v78 & 0xF;
      }

      else
      {
        v75 = v76;
      }

      [v71 setSourceAlphaBlendFactor:v77];
      [v71 setDestinationRGBBlendFactor:v79];
    }

    else
    {
      [v71 setWriteMask:1];
      [v71 setSourceAlphaBlendFactor:(v73 >> 11) & 0xF];
      v75 = v72[1] & 0xF;
    }

    [v71 setDestinationAlphaBlendFactor:v75];
    LODWORD(v63) = *(a2 + 14);
  }

  if ((*&CA::OGL::MetalContext::texture_function_info[8 * (v63 & 0x7F) + 6] & 0x10) != 0)
  {
    v80 = [v8 colorAttachments];
    v81 = v80;
    v82 = *(a2 + 14) & 0x7F;
    if ((v82 - 104) < 4)
    {
      v83 = [v80 objectAtIndexedSubscript:0];
      [v83 setWriteMask:0];
      [v83 setBlendingEnabled:0];
      v84 = [v81 objectAtIndexedSubscript:1];
      [v84 setWriteMask:0];
      [v84 setBlendingEnabled:0];
      v85 = [objc_msgSend(v8 "colorAttachments")];
      [v85 setWriteMask:8];
      [v85 setBlendingEnabled:1];
      [v85 setSourceRGBBlendFactor:1];
      [v85 setDestinationRGBBlendFactor:1];
      [v85 setRgbBlendOperation:4 * ((*(a2 + 14) & 0x7C) != 104)];
      goto LABEL_149;
    }

    if ((v82 - 109) >= 2)
    {
      if (v82 == 108)
      {
        v89 = [v80 objectAtIndexedSubscript:0];
        [v89 setBlendingEnabled:0];
        [v89 setWriteMask:0];
        v90 = [v81 objectAtIndexedSubscript:1];
        [v90 setBlendingEnabled:0];
        [v90 setWriteMask:0];
        v91 = [v81 objectAtIndexedSubscript:2];
        [v91 setBlendingEnabled:0];
        [v91 setWriteMask:8];
      }
    }

    else
    {
      v86 = [v80 objectAtIndexedSubscript:2];
      [v86 setBlendingEnabled:0];
      [v86 setWriteMask:8];
      v87 = [v81 objectAtIndexedSubscript:(*(a2 + 14) & 0x3000000) == 0];
      [v87 setBlendingEnabled:0];
      [v87 setWriteMask:0];
LABEL_149:
      [v8 setVertexDescriptor:0];
    }
  }

  return v8;
}

void sub_183BA0B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, pthread_mutex_t *a12)
{
  operator delete(v12);
  pthread_mutex_unlock(v13);
  _Unwind_Resume(a1);
}

uint64_t CA::OGL::MetalContext::Pipeline::Spec::encode_segment(CA::OGL::MetalContext::Pipeline::Spec *this)
{
  *&v13[13] = *MEMORY[0x1E69E9840];
  *&v13[5] = 0;
  *v13 = 0;
  v12 = 80;
  v2 = *(this + 23);
  v3 = (v2 >> 8) & 0x3FF;
  if (v3 <= 0x22C && (v4 = CA::OGL::MetalContext::MTLPixelFormat_codes[v3]) != 0)
  {
    *v13 = *v4;
  }

  else
  {
    snprintf(v13, 5uLL, "%04d", v3);
    LODWORD(v2) = *(this + 23);
  }

  if ((v2 & 0xFC0000) == 0xF80000)
  {
    v5 = &v13[4];
  }

  else
  {
    v13[4] = 66;
    if ((v2 & 0xFC0000) == 0xFC0000)
    {
      snprintf(&v13[5], 4uLL, "%03d", 63);
      LODWORD(v2) = *(this + 23);
    }

    else
    {
      v6 = CA::OGL::MetalContext::BlendFunction_codes[(v2 >> 18) & 0x3F];
      v7 = *v6;
      v13[7] = v6[2];
      *&v13[5] = v7;
    }

    v5 = &v13[8];
  }

  *v5 = 0;
  v8 = v5 + 1;
  if ((v2 & 1) == 0)
  {
    v9 = 0;
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  *v5 = 25176;
  v8 = v5 + 2;
  v9 = 88;
  if ((v2 & 0x1000000) != 0)
  {
LABEL_15:
    v9 = 88;
    *v5 = 88;
    *v8++ = 109;
  }

LABEL_16:
  if ((v2 & 0x2000000) != 0)
  {
    *v5 = 88;
    *v8++ = 119;
    v9 = *v5;
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  *v10 = 0;
  return [MEMORY[0x1E696AEC0] stringWithUTF8String:&v12];
}

uint64_t CA::OGL::MetalContext::Pipeline::Spec::push_blend_function(uint64_t this)
{
  v1 = *(this + 23);
  if (((v1 >> 18) & 0x3F) != 0x3E)
  {
    if ((*(this + 14) & 0x3F00) != 0x3E00)
    {
      __assert_rtn("push_blend_function", "ogl-metal.mm", 6335, "fragment.blend_function == OGL_BLEND_NONE");
    }

    *(this + 14) = *(this + 14) & 0xFFFFC0FF | (((v1 >> 18) & 0x3F) << 8);
    *(this + 23) = v1 & 0xFF03FFFF | 0xF80000;
  }

  return this;
}

void CA::OGL::MetalContext::dispatch_async_pipeline(dispatch_queue_t *this, const CA::OGL::MetalContext::Pipeline::Spec *a2, CA::OGL::MetalContext::Pipeline *a3, char a4, char a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 1);
  v10 = *a2;
  v11 = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = ___ZN2CA3OGL12MetalContext23dispatch_async_pipelineERKNS1_8Pipeline4SpecEPS2_bb_block_invoke;
  v9[3] = &__block_descriptor_82_e8_40c41_ZTSN2CA3OGL12MetalContext8Pipeline4SpecE_e5_v8__0l;
  v13 = a5;
  v14 = a4;
  v9[4] = this;
  v12 = a3;
  v8 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, v9);
  *(a3 + 1) = v8;
  dispatch_async(this[342], v8);
}

void *CA::OGL::MetalBufferPool::alloc_fragment_arg(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v6 = CA::OGL::MetalBufferPool::alloc_bytes(a1, a3, a4, 0, &v10);
  if (v6)
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 192);
    if (*(a1 + 112 + 8 * a2) == v7)
    {
      (*(a1 + 224))(v8, sel_setFragmentBufferOffset_atIndex_, v10, a2);
    }

    else
    {
      (*(a1 + 208))(v8, sel_setFragmentBuffer_offset_atIndex_, *(a1 + 8), v10, a2);
      *(a1 + 112 + 8 * a2) = v7;
    }
  }

  return v6;
}

uint64_t CA::OGL::MetalContext::FragmentShader::Spec::get_config(uint64_t this, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, int32x2_t a9)
{
  *(this + 48) = 0;
  *(this + 16) = 0u;
  *(this + 32) = 0u;
  *this = 0u;
  v9 = 32;
  v10 = this;
  do
  {
    *v10 = 0;
    *(v10 + 2) = 0;
    *(v10 + 4) = 0;
    *(v10 + 12) = 0;
    *(v10 + 14) = -1;
    v10 += 16;
    v9 -= 16;
  }

  while (v9);
  v11 = *(a2 + 14);
  *(this + 32) = (v11 >> 19) & 3;
  v12 = v11 & 0x7F;
  *(this + 33) = v11 & 0x7F;
  *(this + 34) = BYTE1(v11) & 0x3F;
  *(this + 35) = BYTE2(v11) & 7;
  v13 = CA::OGL::tex_image_count[v12];
  *(this + 36) = v13;
  *(this + 37) = HIBYTE(v11) & 3;
  if ((v11 & 0x3F00) != 0x3E00 || (*&CA::OGL::MetalContext::texture_function_info[8 * v12 + 6] & 2) != 0)
  {
    goto LABEL_11;
  }

  if (!v13)
  {
    v17 = 0;
    goto LABEL_12;
  }

  if ((CA::OGL::MetalContext::image_function_info[2 * (*a2 & 0x3F)] & 8) != 0)
  {
LABEL_11:
    v17 = 1;
    goto LABEL_12;
  }

  v14 = 0;
  v15 = (a2 + 7);
  while (v13 - 1 != v14)
  {
    v16 = *v15;
    v15 = (v15 + 7);
    ++v14;
    if ((CA::OGL::MetalContext::image_function_info[2 * (v16 & 0x3F)] & 8) != 0)
    {
      goto LABEL_18;
    }
  }

  v14 = v13;
LABEL_18:
  v17 = v14 < v13;
LABEL_12:
  *(this + 38) = v17;
  v18 = byte_183E261A5[v12];
  *(this + 39) = (v11 >> 22) & 0x20;
  *(this + 40) = v18;
  v19 = *(a2 + 18);
  *(this + 41) = (v19 & 0x20) != 0;
  *(this + 42) = v11 < 0;
  *(this + 43) = v19 & 1;
  v20 = *&vshl_u16(vdup_n_s16(v19), 0xFFFEFFFDFFFFFFFALL) & 0xFF01FF01FF01FF01;
  *(this + 44) = vuzp1_s8(v20, v20).u32[0];
  *(this + 48) = 0;
  if (v13)
  {
    v21 = 0;
    v22 = (a2 + 3);
    v23 = (this + 14);
    do
    {
      v24 = *(v22 - 3);
      v25 = *(v22 - 1);
      v26 = *v22;
      v22 = (v22 + 7);
      v27 = vdup_n_s32(v26);
      a9.i32[0] = v25;
      v28 = a9;
      a9.i16[1] = v26;
      v29 = vzip1_s32(a9, vuzp1_s16(vshl_u32(v27, 0xFFFFFFF6FFFFFFFBLL), 0xFFFFFFF6FFFFFFFBLL));
      a9 = vshr_n_u16((*&v28 & 0xFF00FF00FF00FFLL), 3uLL);
      v30 = vand_s8(v29, 0x1F001F001F001FLL);
      v30.i16[0] = a9.i16[0];
      v31 = vand_s8(vshl_u32(v27, 0xFFFFFFECFFFFFFF1), 0x1F0000001FLL);
      v32 = CA::OGL::image_plane_count[v24 & 0x3F];
      v33 = byte_183E28164[v24 & 0x3F];
      *(v23 - 14) = v24 & 0x3F;
      *(v23 - 13) = (v24 >> 6) & 7;
      *(v23 - 12) = (v24 >> 9) & 0xF;
      *(v23 - 6) = v31.i8[0];
      *(v23 - 5) = v31.i8[4];
      *(v23 - 4) = v25 & 7;
      *(v23 - 3) = (v26 & 0x2000000) != 0;
      *(v23 - 2) = v32;
      *(v23 - 1) = v33;
      *(v23 - 10) = vuzp1_s8(v30, 0xFFFFFFF6FFFFFFFBLL).u32[0];
      *v23 = v24 >> 13;
      v23 += 16;
      ++v21;
    }

    while (v21 < *(this + 36));
  }

  return this;
}

os_signpost_id_t CA::OGL::MetalContext::begin_new_render_pipeline(CA::OGL::MetalContext *this, NSString *a2, uint64_t a3)
{
  v4 = a2;
  v21 = *MEMORY[0x1E69E9840];
  add = atomic_fetch_add(CA::OGL::MetalContext::_next_pipeline_id, 1u);
  if (x_log_get_metal_pipelines(void)::once != -1)
  {
    dispatch_once(&x_log_get_metal_pipelines(void)::once, &__block_literal_global_4_8625);
  }

  v7 = x_log_get_metal_pipelines(void)::log;
  if (a3)
  {
    if (add && os_signpost_enabled(x_log_get_metal_pipelines(void)::log))
    {
      v15 = 138543874;
      v16 = this;
      v17 = 1026;
      v18 = add;
      v19 = 2050;
      v20 = a3;
      _os_signpost_emit_unreliably_with_name_impl();
    }
  }

  else if (add && os_signpost_enabled(x_log_get_metal_pipelines(void)::log))
  {
    v15 = 138543618;
    v16 = this;
    v17 = 1026;
    v18 = add;
    _os_signpost_emit_with_name_impl(&dword_183AA6000, v7, OS_SIGNPOST_INTERVAL_BEGIN, add, "NewRenderPipeline", "pipeline=%{public, name=pipeline, signpost.telemetry:string1}@ order=%{public, name=order, signpost.telemetry:number1}u enableTelemetry=YES ", &v15, 0x12u);
  }

  if (v4)
  {
    if (a3)
    {
      if (x_log_get_metal_pipelines_stall(void)::once == -1)
      {
        if (!add)
        {
          return add;
        }
      }

      else
      {
        dispatch_once(&x_log_get_metal_pipelines_stall(void)::once, &__block_literal_global_7);
        if (!add)
        {
          return add;
        }
      }

      v8 = x_log_get_metal_pipelines_stall(void)::log;
      if (!os_signpost_enabled(x_log_get_metal_pipelines_stall(void)::log))
      {
        return add;
      }

      v15 = 138543874;
      v16 = this;
      v17 = 1026;
      v18 = add;
      v19 = 2050;
      v20 = a3;
      v9 = "pipeline=%{public, name=pipeline}@ order=%{public, name=order}u %{public, signpost.description:begin_time}llu";
      v10 = v8;
      v11 = add;
      v12 = 28;
LABEL_22:
      _os_signpost_emit_with_name_impl(&dword_183AA6000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "NewRenderPipeline", v9, &v15, v12);
      return add;
    }

    if (x_log_get_metal_pipelines_stall(void)::once == -1)
    {
      if (!add)
      {
        return add;
      }
    }

    else
    {
      dispatch_once(&x_log_get_metal_pipelines_stall(void)::once, &__block_literal_global_7);
      if (!add)
      {
        return add;
      }
    }

    v13 = x_log_get_metal_pipelines_stall(void)::log;
    if (!os_signpost_enabled(x_log_get_metal_pipelines_stall(void)::log))
    {
      return add;
    }

    v15 = 138543618;
    v16 = this;
    v17 = 1026;
    v18 = add;
    v9 = "pipeline=%{public, name=pipeline}@ order=%{public, name=order}u";
    v10 = v13;
    v11 = add;
    v12 = 18;
    goto LABEL_22;
  }

  return add;
}

uint64_t CA::OGL::MetalContext::create_pipeline_state(uint64_t a1, CA::OGL::MetalContext::Pipeline::Spec *this, _DWORD *a3, unsigned __int8 *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696AEC0];
  v9 = CA::OGL::MetalContext::Pipeline::Spec::encode_segment(this);
  v10 = [v8 stringWithFormat:@"%@_%@", v9, CA::OGL::MetalContext::FragmentShader::Spec::name(this)];
  if ((*(a1 + 874) & 0x10) != 0)
  {
LABEL_5:
    v33 = v10;
    pipeline_descriptor = CA::OGL::MetalContext::get_pipeline_descriptor(a1, this, 0, a4);
    v14 = 1;
    if (a4)
    {
LABEL_6:
      v15 = atomic_load(a4);
      if ((v15 & 1) == 0)
      {
        goto LABEL_7;
      }

      return 0;
    }

    while (1)
    {
LABEL_7:
      v34 = 0;
      if ((BYTE13(xmmword_1ED4E97DC) & 1) == 0 && (*(a1 + 874) & 0x10) == 0)
      {
        goto LABEL_13;
      }

      if (x_log_get_ogl_metal(void)::once != -1)
      {
        dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
      }

      v16 = x_log_get_ogl_metal(void)::log;
      if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        break;
      }

LABEL_15:
      v19 = os_signpost_id_generate(x_log_get_ogl_metal(void)::log);
      if (x_log_get_ogl_metal(void)::once != -1)
      {
        dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
      }

      if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v20 = x_log_get_ogl_metal(void)::log;
        if (os_signpost_enabled(x_log_get_ogl_metal(void)::log))
        {
          *buf = 138543618;
          v36 = v33;
          v37 = 1026;
          LODWORD(v38) = 0;
          _os_signpost_emit_with_name_impl(&dword_183AA6000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v19, "CompileShader", "pipeline=%{public, name=pipeline}@ precompiled=%{public, name=precompiled}u", buf, 0x12u);
        }
      }

      v12 = [*(a1 + 3504) newRenderPipelineStateWithDescriptor:pipeline_descriptor error:&v34];
      if (x_log_get_ogl_metal(void)::once != -1)
      {
        dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
      }

      if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v21 = x_log_get_ogl_metal(void)::log;
        if (os_signpost_enabled(x_log_get_ogl_metal(void)::log))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_183AA6000, v21, OS_SIGNPOST_INTERVAL_END, v19, "CompileShader", "", buf, 2u);
        }
      }

      *a3 |= 0x10u;
      if (v12)
      {
        return v12;
      }

      if ((v14 & 1) == 0)
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v29 = x_log_get_ogl_metal(void)::log;
        if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
        {
          v30 = [(NSString *)v33 UTF8String];
          v31 = [objc_msgSend(v34 "localizedDescription")];
          *buf = 136315394;
          v36 = v30;
          v37 = 2080;
          v38 = v31;
          _os_log_error_impl(&dword_183AA6000, v29, OS_LOG_TYPE_ERROR, "Metal failed to build render pipeline\nspec=%s\n%s", buf, 0x16u);
        }

        bzero(buf, 0x7FFuLL);
        v32 = [(NSString *)v33 UTF8String];
        snprintf(buf, 0x800uLL, "spec=%s\n%s", v32, [objc_msgSend(v34 "localizedDescription")]);
        v39 = 0;
        strlen(buf);
        abort_with_payload();
      }

      if (dyld_shared_cache_some_image_overridden())
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v22 = x_log_get_ogl_metal(void)::log;
        if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
        {
          v23 = [(NSString *)v33 UTF8String];
          v24 = [objc_msgSend(v34 "localizedDescription")];
          *buf = 136315394;
          v36 = v23;
          v37 = 2080;
          v38 = v24;
          _os_log_error_impl(&dword_183AA6000, v22, OS_LOG_TYPE_ERROR, "Metal failed to build render pipeline\nspec=%s\n%s", buf, 0x16u);
        }
      }

      else
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v25 = x_log_get_ogl_metal(void)::log;
        if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_FAULT))
        {
          v26 = [(NSString *)v33 UTF8String];
          v27 = [objc_msgSend(v34 "localizedDescription")];
          *buf = 136315394;
          v36 = v26;
          v37 = 2080;
          v38 = v27;
          _os_log_fault_impl(&dword_183AA6000, v25, OS_LOG_TYPE_FAULT, "Metal failed to build render pipeline\nspec=%s\n%s", buf, 0x16u);
        }
      }

      v14 = 0;
      *a3 |= 0x40u;
      if (a4)
      {
        goto LABEL_6;
      }
    }

    v17 = [(NSString *)v33 UTF8String];
    v18 = [objc_msgSend(pipeline_descriptor "description")];
    *buf = 136315394;
    v36 = v17;
    v37 = 2080;
    v38 = v18;
    _os_log_impl(&dword_183AA6000, v16, OS_LOG_TYPE_DEFAULT, "Building render pipeline %s with descriptor %s\n", buf, 0x16u);
LABEL_13:
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    goto LABEL_15;
  }

  pipeline_state = CA::OGL::MetalContext::load_pipeline_state(a1, v10);
  if (!pipeline_state)
  {
    if ((*(this + 17) & 4) != 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  v12 = pipeline_state;
  *a3 |= 4u;
  return v12;
}

uint64_t CA::OGL::MetalContext::Pipeline::Spec::name(CA::OGL::MetalContext::Pipeline::Spec *this)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = CA::OGL::MetalContext::Pipeline::Spec::encode_segment(this);
  return [v2 stringWithFormat:@"%@_%@", v3, CA::OGL::MetalContext::FragmentShader::Spec::name(this)];
}

uint64_t CA::OGL::MetalContext::FragmentShader::Spec::Image::encode_segment(CA::OGL::MetalContext::FragmentShader::Spec::Image *this)
{
  *&v23[29] = *MEMORY[0x1E69E9840];
  memset(v23, 0, 29);
  v22 = 73;
  v2 = *this;
  if ((v2 & 0x3F) > 0x2F)
  {
    snprintf(v23, 4uLL, "%03d", v2 & 0x3F);
    v2 = *this;
  }

  else
  {
    v3 = CA::OGL::MetalContext::ImageFunction_codes[v2 & 0x3F];
    v4 = *v3;
    v23[2] = v3[2];
    *v23 = v4;
  }

  if ((v2 & 0x1C0) != 0)
  {
    v23[3] = 67;
    v5 = (v2 >> 6) & 7;
    if (v5 > 5)
    {
      snprintf(&v23[4], 3uLL, "%02d", (v2 >> 6) & 7);
      v2 = *this;
    }

    else
    {
      *&v23[4] = *CA::OGL::MetalContext::CoordFunction_codes[v5];
    }

    v6 = &v23[6];
  }

  else
  {
    v6 = &v23[3];
  }

  if ((v2 & 0x1E00) != 0)
  {
    *v6 = 70;
    v7 = v6 + 1;
    v8 = (v2 >> 9) & 0xF;
    if (v8 > 0xB)
    {
      snprintf(v7, 3uLL, "%02d", (v2 >> 9) & 0xF);
      LOWORD(v2) = *this;
    }

    else
    {
      *v7 = *CA::OGL::MetalContext::TextureFilter_codes[v8];
    }

    v6 += 3;
  }

  if (~(v2 >> 13))
  {
    *v6 = 77;
    v6[1] = *CA::OGL::MetalContext::int_codes[*this >> 13];
    v6 += 2;
  }

  v9 = *(this + 2);
  if ((v9 & 7) != 0)
  {
    *v6 = 78;
    v10 = v6 + 1;
    v11 = *(this + 2) & 7;
    if (v11 > 3)
    {
      snprintf(v10, 2uLL, "%01d", *(this + 2) & 7);
    }

    else
    {
      *v10 = *CA::OGL::MetalContext::int_codes[v11];
    }

    v6 += 2;
    v9 = *(this + 2);
  }

  if (v9 > 7 || (*(this + 3) & 0x1FFFFFF) != 0)
  {
    *v6 = 79;
    v12 = v6 + 1;
    v13 = *(this + 2);
    if (v13 > 0xAF)
    {
      snprintf(v12, 3uLL, "%02d", v13 >> 3);
    }

    else
    {
      *v12 = *CA::OGL::MetalContext::Opcode_codes[v13 >> 3];
    }

    if ((*(this + 3) & 0x1Eu) > 0x15)
    {
      snprintf(v6 + 3, 3uLL, "%02d", *(this + 3) & 0x1F);
    }

    else
    {
      *(v6 + 3) = *CA::OGL::MetalContext::Opcode_codes[*(this + 3) & 0x1F];
    }

    v14 = (*(this + 3) >> 5) & 0x1F;
    if ((*(this + 3) & 0x3C0u) > 0x2BF)
    {
      snprintf(v6 + 5, 3uLL, "%02d", v14);
    }

    else
    {
      *(v6 + 5) = *CA::OGL::MetalContext::Opcode_codes[v14];
    }

    v15 = *(this + 3);
    v16 = (v15 >> 10) & 0x1F;
    if (((v15 >> 11) & 0xF) > 0xA)
    {
      snprintf(v6 + 7, 3uLL, "%02d", v16);
    }

    else
    {
      *(v6 + 7) = *CA::OGL::MetalContext::Opcode_codes[v16];
    }

    v17 = *(this + 3);
    v18 = (v17 >> 15) & 0x1F;
    if ((WORD1(v17) & 0xF) > 0xAu)
    {
      snprintf(v6 + 9, 3uLL, "%02d", v18);
    }

    else
    {
      *(v6 + 9) = *CA::OGL::MetalContext::Opcode_codes[v18];
    }

    v19 = *(this + 3);
    v20 = (v19 >> 20) & 0x1F;
    if (((v19 >> 21) & 0xF) > 0xA)
    {
      snprintf(v6 + 11, 3uLL, "%02d", v20);
    }

    else
    {
      *(v6 + 11) = *CA::OGL::MetalContext::Opcode_codes[v20];
    }

    v6 += 13;
  }

  *v6 = 0;
  if ((*(this + 6) & 2) != 0)
  {
    *v6 = 29016;
    v6 += 2;
  }

  *v6 = 0;
  return [MEMORY[0x1E696AEC0] stringWithUTF8String:&v22];
}

void *std::__hash_table<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::__unordered_map_hasher<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::__unordered_map_equal<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::allocator<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>>>::__emplace_unique_key_args<CA::OGL::MetalContext::Pipeline::Spec,std::piecewise_construct_t const&,std::tuple<CA::OGL::MetalContext::Pipeline::Spec const&>,std::tuple<>>(void *a1, CA::Hasher64 *this)
{
  v4 = CA::Hasher64::hash(this, 0x20uLL);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_28;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_28:
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
      goto LABEL_28;
    }

LABEL_27:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_28;
    }
  }

  if (v9[2] != *this || v9[3] != *(this + 1) || v9[4] != *(this + 2) || v9[5] != *(this + 3))
  {
    goto LABEL_27;
  }

  return v9;
}

uint64_t CA::OGL::MetalContext::encode_asg77_weights(CA::OGL::MetalContext *this, const CA::OGL::MetalContext::FragmentShader::Spec *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(this + 4016);
  if ((v2 & 8) == 0)
  {
    v4 = *(this + 641);
    if (!v4)
    {
      v5 = [*(this + 438) newBufferWithLength:6144 options:0];
      *(this + 641) = v5;
      [v5 setLabel:@"com.apple.coreanimation.asg77-weights"];
      result = *(this + 641);
      if (!result)
      {
        return result;
      }

      v7 = [result contents];
      v8 = 0;
      v9 = &word_183E25CC4;
      do
      {
        v10 = 0;
        v11 = &word_183E25CC4;
        do
        {
          v12 = 0;
          v35 = 0uLL;
          v36 = 0uLL;
          v13 = &v34;
          v14 = 0.0;
          v15 = v11;
          v34 = 0uLL;
          do
          {
            v16 = 0;
            v17 = v9;
            do
            {
              if (v12 && v12 != 3 || v16 && v16 != 3)
              {
                v18 = 0.0;
                v19 = 1;
                v20 = v17;
                v21 = v15;
                v22 = 0.0;
                do
                {
                  v23 = v19;
                  v24 = *v20;
                  v20 -= 4;
                  v22 = v22 + v24;
                  v25 = *v21;
                  v21 -= 4;
                  v18 = v18 + v25;
                  v19 = 0;
                }

                while ((v23 & 1) != 0);
                v26 = (v22 * 0.25) * v18;
                *v13++ = v26;
                v14 = v26 + v14;
              }

              ++v16;
              ++v17;
            }

            while (v16 != 4);
            ++v12;
            ++v15;
          }

          while (v12 != 4);
          v27 = 0;
          v28 = 1.0 / v14;
          do
          {
            _S4 = *(&v34 + v27) * v28;
            __asm { FCVT            H4, S4 }

            *v7++ = LOWORD(_S4);
            v27 += 4;
          }

          while (v27 != 48);
          v11 -= 8;
          _CF = v10 >= 0x1E;
          v10 += 2;
        }

        while (!_CF);
        v9 -= 8;
        _CF = v8 >= 0x1E;
        v8 += 2;
      }

      while (!_CF);
      v2 = *(this + 4016);
      v4 = *(this + 641);
    }

    *(this + 4016) = v2 | 8;
    [*(this + 442) setFragmentBuffer:v4 offset:0 atIndex:{8, v34, v35, v36}];
  }

  return 1;
}

uint64_t CA::OGL::MetalContext::encode_lut_texture(CA::OGL::MetalContext *this, const CA::OGL::MetalContext::FragmentShader::Spec *a2)
{
  if ((a2 & 0x4000000) != 0 || (*&CA::OGL::MetalContext::texture_function_info[8 * (a2 & 0x7F) + 6] & 0x200) != 0)
  {
    v4 = *(*(this + 2) + 8 * *(*(this + 2) + 324) + 176) & 0xFFFFFFFFFFFFFFFCLL;
    v5 = atomic_load(this + 593);
    *(v4 + 112) = v5;
    v6 = *(v4 + 64);
    if (*(this + 580) != v6)
    {
      *(this + 580) = v6;
      (*(this + 446))(*(this + 442), sel_setFragmentTexture_atIndex_);
    }

    return 1;
  }

  else
  {

    return CA::OGL::MetalContext::encode_placeholder_cube(this, 0xEu);
  }
}

unint64_t std::__unordered_map_hasher<CA::OGL::MetalContext::VertexShader::Spec,std::__hash_value_type<CA::OGL::MetalContext::VertexShader::Spec,CA::OGL::MetalContext::VertexShader*>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::VertexShader::Spec>,std::equal_to<CA::OGL::MetalContext::VertexShader::Spec>,true>::operator()[abi:nn200100](unsigned int *a1)
{
  v1 = __ROR8__((461845907 * ((0xCBE41013C0000000 * *a1) | ((0x9AE16A3B2F90404FLL * *a1) >> 34))) ^ 0xB492B66FBE98F273, 38);
  v2 = 0xBF58476D1CE4E5B9 * ((5 * v1 + 3864292196) ^ ((5 * v1 + 3864292196) >> 30) ^ 8);
  return (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
}

atomic_uint **CA::Render::PixelBuffer::image(CA::Render::PixelBuffer *this)
{
  result = *(this + 18);
  if (!result)
  {
    v3 = *(this + 14);
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = CA::Render::fourcc_to_format(*(this + 32));
    if ((v4 & 0x80000000) != 0)
    {
      return 0;
    }

    result = CA::Render::Image::new_image(v4, *(this + 4), *(this + 5), 1u, *(this + 7), v3, (this + 120), v5);
    if (!result)
    {
LABEL_8:
      result = *(this + 18);
      if (!result)
      {
        return result;
      }

      goto LABEL_9;
    }

    *(result + 3) |= *(this + 3) & 0x1800;
    v6 = *(this + 18);
    *(this + 18) = result;
    if (v6)
    {
      if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v6 + 16))(v6);
      }

      goto LABEL_8;
    }
  }

LABEL_9:
  *(result + 9) = *(this + 9);
  return result;
}

void CA::Display::DisplayLink::refresh_item_properties_locked(CA::Display::DisplayLink *this)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *(this + 15);
  v2 = *(this + 16);
  v4 = v2 - v3;
  if (v2 == v3)
  {
    pthread_mutex_unlock((this + 56));

    pthread_mutex_lock((this + 56));
  }

  else
  {
    if (v4 > 0x1000)
    {
      v5 = malloc_type_malloc(v2 - v3, 0x8E0B92D8uLL);
    }

    else
    {
      MEMORY[0x1EEE9AC00](this);
      v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v5, v4);
    }

    v6 = 0;
    if ((v4 >> 3) <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v4 >> 3;
    }

    do
    {
      v8 = *(*(this + 15) + 8 * v6);
      *&v5[8 * v6] = v8;
      CFRetain(*(v8 + 256));
      ++v6;
    }

    while (v7 != v6);
    pthread_mutex_unlock((this + 56));
    v9 = 0;
    do
    {
      v10 = *&v5[8 * v9];
      CA::Display::DisplayLinkItem::set_preferred_fps_range(v10, *(v10 + 76), 0, 0);
      CFRelease(*(v10 + 256));
      ++v9;
    }

    while (v7 != v9);
    pthread_mutex_lock((this + 56));
    if (v4 > 0x1000)
    {
      free(v5);
    }
  }
}

void CA::Context::commit_command(CA::Context *this, CA::Render::Object *a2, __CFString *a3, const void *a4, void *a5)
{
  v241 = *MEMORY[0x1E69E9840];
  switch(this)
  {
    case 2:
      v70 = *(a4 + 4);
      if (v70)
      {
        v71 = *(v70 + 4);
        if ((v71 + 1) > *(v70 + 5))
        {
          CA::Render::Encoder::grow(*(a4 + 4), 1);
          v71 = *(v70 + 4);
        }

        *(v70 + 4) = v71 + 1;
        *v71 = 3;
        v72 = *(v70 + 4);
        if ((v72 + 1) > *(v70 + 5))
        {
          CA::Render::Encoder::grow(v70, 8);
          v72 = *(v70 + 4);
        }

        *v72 = a2;
        *(v70 + 4) += 8;
        CA::Render::Encoder::encode_sanity_check(v70);
      }

      v73 = *(a4 + 5);
      if (v73)
      {
        CA::Render::Context::update_layer(v73, a2);
      }

      goto LABEL_222;
    case 4:
      v93 = *(a4 + 4);
      if (v93)
      {
        v94 = *(v93 + 4);
        if ((v94 + 1) > *(v93 + 5))
        {
          CA::Render::Encoder::grow(*(a4 + 4), 1);
          v94 = *(v93 + 4);
        }

        *(v93 + 4) = v94 + 1;
        *v94 = 5;
        v95 = *(v93 + 4);
        if ((v95 + 1) > *(v93 + 5))
        {
          CA::Render::Encoder::grow(v93, 8);
          v95 = *(v93 + 4);
        }

        *v95 = a2;
        *(v93 + 4) += 8;
        CA::Render::Encoder::encode_sanity_check(v93);
      }

      v96 = *(a4 + 5);
      if (v96)
      {
        CA::Render::Context::remove_all_animations(v96, a2);
      }

      goto LABEL_222;
    case 5:
      v107 = *(a4 + 4);
      if (v107)
      {
        CA::Render::encode_remove_animation(v107, a2, a3, a4);
      }

      v108 = *(a4 + 5);
      if (v108)
      {
        CA::Render::Context::remove_animation(v108, a2, a3);
      }

      goto LABEL_222;
    case 6:
      v109 = *(a4 + 4);
      if (v109)
      {
        v110 = *(v109 + 4);
        if ((v110 + 1) > *(v109 + 5))
        {
          CA::Render::Encoder::grow(*(a4 + 4), 1);
          v110 = *(v109 + 4);
        }

        *(v109 + 4) = v110 + 1;
        *v110 = 7;
        v111 = *(v109 + 4);
        if ((v111 + 1) > *(v109 + 5))
        {
          CA::Render::Encoder::grow(v109, 8);
          v111 = *(v109 + 4);
        }

        *v111 = a2;
        *(v109 + 4) += 8;
        CA::Render::Encoder::encode_sanity_check(v109);
      }

      v112 = *(a4 + 5);
      if (v112)
      {
        CA::Render::Context::set_layer_id(v112, a2);
      }

      goto LABEL_222;
    case 7:
      v129 = *(a4 + 4);
      if (v129)
      {
        v130 = *(v129 + 4);
        if ((v130 + 1) > *(v129 + 5))
        {
          CA::Render::Encoder::grow(*(a4 + 4), 1);
          v130 = *(v129 + 4);
        }

        *(v129 + 4) = v130 + 1;
        *v130 = 8;
        CA::Render::Encoder::encode_cfobject(v129, a3);
        CA::Render::Encoder::encode_sanity_check(v129);
      }

      v131 = *(a4 + 5);
      if (v131)
      {
        X::CFRef<CGColorSpace *>::operator=((v131 + 560), a3);
        ++*(v131 + 48);
      }

      goto LABEL_222;
    case 8:
    case 9:
      v8 = this;
      v9 = *(a4 + 4);
      if (v9)
      {
        if (this == 8)
        {
          v10 = 11;
        }

        else
        {
          v10 = 12;
        }

        v11 = *(v9 + 4);
        if ((v11 + 1) > *(v9 + 5))
        {
          CA::Render::Encoder::grow(*(a4 + 4), 1);
          v11 = *(v9 + 4);
        }

        *(v9 + 4) = v11 + 1;
        *v11 = v10;
        v12 = *(v9 + 4);
        if ((v12 + 1) > *(v9 + 5))
        {
          CA::Render::Encoder::grow(v9, 8);
          v12 = *(v9 + 4);
        }

        *v12 = a2;
        *(v9 + 4) += 8;
        CA::Render::Encoder::encode_sanity_check(v9);
      }

      v13 = *(a4 + 5);
      if (v13)
      {
        CA::Render::Context::order_relative(v13, v8 == 8, a2);
      }

      goto LABEL_222;
    case 10:
      v97 = CA_CFFloatValue(a3);
      v98 = *(a4 + 4);
      if (v98)
      {
        v99 = *(v98 + 4);
        if ((v99 + 1) > *(v98 + 5))
        {
          CA::Render::Encoder::grow(*(a4 + 4), 1);
          v99 = *(v98 + 4);
        }

        *(v98 + 4) = v99 + 1;
        *v99 = 13;
        v100 = *(v98 + 4);
        if ((v100 + 1) > *(v98 + 5))
        {
          CA::Render::Encoder::grow(v98, 4);
          v100 = *(v98 + 4);
        }

        *v100 = v97;
        *(v98 + 4) += 4;
        CA::Render::Encoder::encode_sanity_check(v98);
      }

      v101 = *(a4 + 5);
      if (v101)
      {
        CA::Render::Context::order_level(v101, v97);
      }

      goto LABEL_222;
    case 11:
      v78 = [(__CFString *)a3 CA_copyRenderValue:a3];
      v79 = *(a4 + 4);
      if (v79)
      {
        v80 = *(v79 + 4);
        if ((v80 + 1) > *(v79 + 5))
        {
          CA::Render::Encoder::grow(*(a4 + 4), 1);
          v80 = *(v79 + 4);
        }

        *(v79 + 4) = v80 + 1;
        *v80 = 14;
        v81 = *(v79 + 4);
        if ((v81 + 1) > *(v79 + 5))
        {
          CA::Render::Encoder::grow(v79, 4);
          v81 = *(v79 + 4);
        }

        *v81 = a2;
        *(v79 + 4) += 4;
        CA::Render::Encoder::encode_object(v79, v78);
        CA::Render::Encoder::encode_sanity_check(v79);
      }

      v82 = *(a4 + 5);
      if (v82)
      {
        CA::Render::Context::set_slot(v82, a2, v78);
      }

      if (v78 && atomic_fetch_add(v78 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v78 + 16))(v78);
      }

      goto LABEL_222;
    case 12:
      v62 = *(a4 + 4);
      if (v62)
      {
        v63 = *(v62 + 4);
        if ((v63 + 1) > *(v62 + 5))
        {
          CA::Render::Encoder::grow(*(a4 + 4), 1);
          v63 = *(v62 + 4);
        }

        *(v62 + 4) = v63 + 1;
        *v63 = 15;
        v64 = *(v62 + 4);
        if ((v64 + 1) > *(v62 + 5))
        {
          CA::Render::Encoder::grow(v62, 4);
          v64 = *(v62 + 4);
        }

        *v64 = a2;
        *(v62 + 4) += 4;
        CA::Render::Encoder::encode_sanity_check(v62);
      }

      v65 = *(a4 + 5);
      if (v65)
      {
        CA::Render::Context::delete_slot(v65, a2);
      }

      goto LABEL_222;
    case 13:
      v113 = CA_CFIntValue(a3);
      v114 = *(a4 + 4);
      if (v114)
      {
        v115 = *(v114 + 4);
        if ((v115 + 1) > *(v114 + 5))
        {
          CA::Render::Encoder::grow(*(a4 + 4), 1);
          v115 = *(v114 + 4);
        }

        *(v114 + 4) = v115 + 1;
        *v115 = 16;
        v116 = *(v114 + 4);
        if ((v116 + 1) > *(v114 + 5))
        {
          CA::Render::Encoder::grow(v114, 4);
          v116 = *(v114 + 4);
        }

        *v116 = a2;
        v117 = *(v114 + 4);
        v118 = *(v114 + 5);
        v119 = (v117 + 4);
        *(v114 + 4) = v117 + 4;
        if (v117 + 8 > v118)
        {
          CA::Render::Encoder::grow(v114, 4);
          v119 = *(v114 + 4);
        }

        *v119 = v113;
        *(v114 + 4) += 4;
        CA::Render::Encoder::encode_sanity_check(v114);
      }

      v120 = *(a4 + 5);
      if (v120)
      {
        CA::Render::Context::transfer_slot(v120, a2, v113);
      }

      goto LABEL_222;
    case 14:
      v121 = CA_CFIntValue(a3);
      v122 = *(a4 + 4);
      if (v122)
      {
        v123 = *(v122 + 4);
        if ((v123 + 1) > *(v122 + 5))
        {
          CA::Render::Encoder::grow(*(a4 + 4), 1);
          v123 = *(v122 + 4);
        }

        *(v122 + 4) = v123 + 1;
        *v123 = 18;
        v124 = *(v122 + 4);
        if ((v124 + 1) > *(v122 + 5))
        {
          CA::Render::Encoder::grow(v122, 4);
          v124 = *(v122 + 4);
        }

        *v124 = a2;
        v125 = *(v122 + 4);
        v126 = *(v122 + 5);
        v127 = (v125 + 4);
        *(v122 + 4) = v125 + 4;
        if (v125 + 8 > v126)
        {
          CA::Render::Encoder::grow(v122, 4);
          v127 = *(v122 + 4);
        }

        *v127 = v121;
        *(v122 + 4) += 4;
        CA::Render::Encoder::encode_sanity_check(v122);
        (*(*v122 + 16))(v122);
      }

      v128 = *(a4 + 5);
      if (v128)
      {
        CA::Render::Context::flush_image_queue(v128, a2, v121);
      }

      goto LABEL_222;
    case 15:
      ValueAtIndex = CFArrayGetValueAtIndex(a3, 0);
      v238 = CA_CFIntValue(ValueAtIndex);
      v147 = CFArrayGetValueAtIndex(a3, 1);
      v237 = CA_CFIntValue(v147);
      v148 = CFArrayGetValueAtIndex(a3, 2);
      v236 = CA_CFIntValue(v148);
      v149 = CFArrayGetValueAtIndex(a3, 3);
      v150 = CA_CFIntValue(v149);
      v151 = CFArrayGetValueAtIndex(a3, 4);
      v152 = CA_CFIntValue(v151);
      v153 = CFArrayGetValueAtIndex(a3, 5);
      v154 = CA_CFIntValue(v153);
      v155 = CFArrayGetValueAtIndex(a3, 6);
      v156 = CA_CFIntValue(v155);
      v157 = CFArrayGetValueAtIndex(a3, 7);
      v158 = CA_CFIntValue(v157);
      v159 = CFArrayGetValueAtIndex(a3, 8);
      v160 = vcvtd_n_f64_s32(CA_CFIntValue(v159), 0x10uLL);
      v161 = CFArrayGetValueAtIndex(a3, 9);
      v162 = CA_CFIntValue(v161);
      v163 = CFArrayGetValueAtIndex(a3, 10);
      if (v163 == *MEMORY[0x1E695E738])
      {
        v165 = 0;
      }

      else
      {
        v165 = v163;
      }

      v166 = CA::Context::current_colorspace(*a4, v164);
      v240 = 0;
      v239 = 0;
      CA::Render::convert_cgcolor(v165, v166, &v240, &v239, v167);
      v168 = *(a4 + 4);
      if (v168)
      {
        v234 = v240;
        v235 = v239;
        v169 = *(v168 + 4);
        if ((v169 + 1) > *(v168 + 5))
        {
          CA::Render::Encoder::grow(v168, 1);
          v169 = *(v168 + 4);
        }

        *(v168 + 4) = v169 + 1;
        *v169 = 19;
        v170 = *(v168 + 4);
        if ((v170 + 1) > *(v168 + 5))
        {
          CA::Render::Encoder::grow(v168, 8);
          v170 = *(v168 + 4);
        }

        *v170 = a2;
        v171 = *(v168 + 4);
        v172 = *(v168 + 5);
        v173 = (v171 + 8);
        *(v168 + 4) = v171 + 8;
        if (v171 + 12 > v172)
        {
          CA::Render::Encoder::grow(v168, 4);
          v173 = *(v168 + 4);
        }

        *v173 = v238;
        v174 = *(v168 + 4);
        v175 = *(v168 + 5);
        v176 = (v174 + 4);
        *(v168 + 4) = v174 + 4;
        if (v174 + 8 > v175)
        {
          CA::Render::Encoder::grow(v168, 4);
          v176 = *(v168 + 4);
        }

        *v176 = v237;
        v177 = *(v168 + 4);
        v178 = *(v168 + 5);
        v179 = (v177 + 4);
        *(v168 + 4) = v177 + 4;
        if (v177 + 8 > v178)
        {
          CA::Render::Encoder::grow(v168, 4);
          v179 = *(v168 + 4);
        }

        *v179 = v236;
        v180 = *(v168 + 4);
        v181 = *(v168 + 5);
        v182 = (v180 + 4);
        *(v168 + 4) = v180 + 4;
        if (v180 + 8 > v181)
        {
          CA::Render::Encoder::grow(v168, 4);
          v182 = *(v168 + 4);
        }

        *v182 = v150;
        v183 = *(v168 + 4);
        v184 = *(v168 + 5);
        v185 = (v183 + 4);
        *(v168 + 4) = v183 + 4;
        if (v183 + 8 > v184)
        {
          CA::Render::Encoder::grow(v168, 4);
          v185 = *(v168 + 4);
        }

        *v185 = v152;
        v186 = *(v168 + 4);
        v187 = *(v168 + 5);
        v188 = (v186 + 4);
        *(v168 + 4) = v186 + 4;
        if (v186 + 8 > v187)
        {
          CA::Render::Encoder::grow(v168, 4);
          v188 = *(v168 + 4);
        }

        *v188 = v154;
        v189 = *(v168 + 4);
        v190 = *(v168 + 5);
        v191 = (v189 + 4);
        *(v168 + 4) = v189 + 4;
        if (v189 + 8 > v190)
        {
          CA::Render::Encoder::grow(v168, 4);
          v191 = *(v168 + 4);
        }

        *v191 = v156;
        v192 = *(v168 + 4);
        v193 = *(v168 + 5);
        v194 = (v192 + 4);
        *(v168 + 4) = v192 + 4;
        if (v192 + 5 > v193)
        {
          CA::Render::Encoder::grow(v168, 1);
          v194 = *(v168 + 4);
        }

        *(v168 + 4) = v194 + 1;
        *v194 = v158 != 0;
        v195 = *(v168 + 4);
        if ((v195 + 1) > *(v168 + 5))
        {
          CA::Render::Encoder::grow(v168, 4);
          v195 = *(v168 + 4);
        }

        *v195 = v160;
        v196 = *(v168 + 4);
        v197 = *(v168 + 5);
        v198 = (v196 + 4);
        *(v168 + 4) = v196 + 4;
        if (v196 + 8 > v197)
        {
          CA::Render::Encoder::grow(v168, 4);
          v198 = *(v168 + 4);
        }

        *v198 = v162;
        v199 = *(v168 + 4);
        v200 = *(v168 + 5);
        v201 = (v199 + 4);
        *(v168 + 4) = v199 + 4;
        if (v199 + 8 > v200)
        {
          CA::Render::Encoder::grow(v168, 4);
          v201 = *(v168 + 4);
        }

        *v201 = v234;
        *(v168 + 4) += 4;
        CA::Render::Encoder::encode_object(v168, v235);
        CA::Render::Encoder::encode_sanity_check(v168);
      }

      v202 = *(a4 + 5);
      if (v202)
      {
        CA::Render::ImageProvider::create(v202, a2, v238, v237, v236, v150, v152, v154, v160, v156, v158 != 0, v233, v162, v240, v239);
      }

      goto LABEL_222;
    case 16:
      v132 = CFArrayGetValueAtIndex(a3, 0);
      v133 = CA_CFIntValue(v132);
      v134 = CFArrayGetValueAtIndex(a3, 1);
      v135 = CA_CFIntValue(v134);
      v136 = *(a4 + 4);
      if (v136)
      {
        v137 = *(v136 + 4);
        if ((v137 + 1) > *(v136 + 5))
        {
          CA::Render::Encoder::grow(*(a4 + 4), 1);
          v137 = *(v136 + 4);
        }

        *(v136 + 4) = v137 + 1;
        *v137 = 20;
        v138 = *(v136 + 4);
        if ((v138 + 1) > *(v136 + 5))
        {
          CA::Render::Encoder::grow(v136, 8);
          v138 = *(v136 + 4);
        }

        *v138 = a2;
        v139 = *(v136 + 4);
        v140 = *(v136 + 5);
        v141 = (v139 + 8);
        *(v136 + 4) = v139 + 8;
        if (v139 + 12 > v140)
        {
          CA::Render::Encoder::grow(v136, 4);
          v141 = *(v136 + 4);
        }

        *v141 = v133;
        v142 = *(v136 + 4);
        v143 = *(v136 + 5);
        v144 = (v142 + 4);
        *(v136 + 4) = v142 + 4;
        if (v142 + 8 > v143)
        {
          CA::Render::Encoder::grow(v136, 4);
          v144 = *(v136 + 4);
        }

        *v144 = v135;
        *(v136 + 4) += 4;
        CA::Render::Encoder::encode_sanity_check(v136);
      }

      v145 = *(a4 + 5);
      if (v145)
      {
        CA::Render::ImageProvider::set_image_size(*(v145 + 136), *(v145 + 148), a2, v133, v135);
      }

      goto LABEL_222;
    case 17:
      v14 = CFArrayGetValueAtIndex(a3, 0);
      if (v14 == *MEMORY[0x1E695E738])
      {
        v16 = 0;
      }

      else
      {
        v16 = v14;
      }

      v17 = CA::Context::current_colorspace(*a4, v15);
      v240 = 0;
      v239 = 0;
      CA::Render::convert_cgcolor(v16, v17, &v240, &v239, v18);
      v19 = *(a4 + 4);
      if (v19)
      {
        v20 = v240;
        v21 = v239;
        v22 = *(v19 + 4);
        if ((v22 + 1) > *(v19 + 5))
        {
          CA::Render::Encoder::grow(*(a4 + 4), 1);
          v22 = *(v19 + 4);
        }

        *(v19 + 4) = v22 + 1;
        *v22 = 21;
        v23 = *(v19 + 4);
        if ((v23 + 1) > *(v19 + 5))
        {
          CA::Render::Encoder::grow(v19, 8);
          v23 = *(v19 + 4);
        }

        *v23 = a2;
        v24 = *(v19 + 4);
        v25 = *(v19 + 5);
        v26 = (v24 + 8);
        *(v19 + 4) = v24 + 8;
        if (v24 + 12 > v25)
        {
          CA::Render::Encoder::grow(v19, 4);
          v26 = *(v19 + 4);
        }

        *v26 = v20;
        *(v19 + 4) += 4;
        CA::Render::Encoder::encode_object(v19, v21);
        CA::Render::Encoder::encode_sanity_check(v19);
      }

      v27 = *(a4 + 5);
      if (v27)
      {
        CA::Render::ImageProvider::set_fill_color(*(v27 + 136), *(v27 + 148), a2, v240, v239);
      }

      goto LABEL_222;
    case 18:
      v83 = CFArrayGetValueAtIndex(a3, 0);
      v84 = CA_CFIntValue(v83);
      v85 = *(a4 + 4);
      if (v85)
      {
        v86 = *(v85 + 4);
        if ((v86 + 1) > *(v85 + 5))
        {
          CA::Render::Encoder::grow(*(a4 + 4), 1);
          v86 = *(v85 + 4);
        }

        *(v85 + 4) = v86 + 1;
        *v86 = 22;
        v87 = *(v85 + 4);
        if ((v87 + 1) > *(v85 + 5))
        {
          CA::Render::Encoder::grow(v85, 8);
          v87 = *(v85 + 4);
        }

        *v87 = a2;
        v88 = *(v85 + 4);
        v89 = *(v85 + 5);
        v90 = (v88 + 8);
        *(v85 + 4) = v88 + 8;
        if (v88 + 12 > v89)
        {
          CA::Render::Encoder::grow(v85, 4);
          v90 = *(v85 + 4);
        }

        *v90 = v84;
        *(v85 + 4) += 4;
        CA::Render::Encoder::encode_sanity_check(v85);
      }

      v91 = *(a4 + 5);
      if (v91)
      {
        v92 = CA::Render::Context::lookup_object(*(v91 + 136), *(v91 + 148), a2, 0, 24, 0);
        if (v92)
        {
          *(v92 + 152) = v84;
        }
      }

      goto LABEL_222;
    case 19:
      v203 = CFArrayGetValueAtIndex(a3, 0);
      v204 = CA_CFIntValue(v203);
      v205 = CFArrayGetValueAtIndex(a3, 1);
      v206 = CA_CFIntValue(v205);
      v207 = CFArrayGetValueAtIndex(a3, 2);
      v208 = CA_CFIntValue(v207);
      v209 = CFArrayGetValueAtIndex(a3, 3);
      if (v209 == *MEMORY[0x1E695E738])
      {
        v210 = 0;
      }

      else
      {
        v210 = v209;
      }

      v211 = CFArrayGetValueAtIndex(a3, 4);
      v212 = CA_CFIntValue(v211);
      v213 = CFArrayGetValueAtIndex(a3, 5);
      v214 = CA_CFIntValue(v213);
      v215 = [v210 CA_copyRenderValue];
      v216 = *(a4 + 4);
      if (v216)
      {
        v217 = *(v216 + 4);
        if ((v217 + 1) > *(v216 + 5))
        {
          CA::Render::Encoder::grow(*(a4 + 4), 1);
          v217 = *(v216 + 4);
        }

        *(v216 + 4) = v217 + 1;
        *v217 = 23;
        v218 = *(v216 + 4);
        if ((v218 + 1) > *(v216 + 5))
        {
          CA::Render::Encoder::grow(v216, 8);
          v218 = *(v216 + 4);
        }

        *v218 = a2;
        v219 = *(v216 + 4);
        v220 = *(v216 + 5);
        v221 = (v219 + 8);
        *(v216 + 4) = v219 + 8;
        if (v219 + 12 > v220)
        {
          CA::Render::Encoder::grow(v216, 4);
          v221 = *(v216 + 4);
        }

        *v221 = v204;
        v222 = *(v216 + 4);
        v223 = *(v216 + 5);
        v224 = (v222 + 4);
        *(v216 + 4) = v222 + 4;
        if (v222 + 8 > v223)
        {
          CA::Render::Encoder::grow(v216, 4);
          v224 = *(v216 + 4);
        }

        *v224 = v206;
        v225 = *(v216 + 4);
        v226 = *(v216 + 5);
        v227 = (v225 + 4);
        *(v216 + 4) = v225 + 4;
        if (v225 + 8 > v226)
        {
          CA::Render::Encoder::grow(v216, 4);
          v227 = *(v216 + 4);
        }

        *v227 = v208;
        *(v216 + 4) += 4;
        CA::Render::Encoder::encode_object(v216, v215);
        v228 = *(v216 + 4);
        if ((v228 + 1) > *(v216 + 5))
        {
          CA::Render::Encoder::grow(v216, 4);
          v228 = *(v216 + 4);
        }

        *v228 = v212;
        v229 = *(v216 + 4);
        v230 = *(v216 + 5);
        v231 = (v229 + 4);
        *(v216 + 4) = v229 + 4;
        if (v229 + 8 > v230)
        {
          CA::Render::Encoder::grow(v216, 4);
          v231 = *(v216 + 4);
        }

        *v231 = v214;
        *(v216 + 4) += 4;
        CA::Render::Encoder::encode_sanity_check(v216);
        CA::Render::Encoder::retain_object(v216, v215);
      }

      v232 = *(a4 + 5);
      if (v232)
      {
        CA::Render::ImageProvider::set_subimage(*(v232 + 136), *(v232 + 148), a2, v204, v206, v208, v215, v212, v214);
      }

      if (v215 && atomic_fetch_add(v215 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v215 + 16))(v215);
      }

      goto LABEL_222;
    case 20:
      v28 = CFArrayGetValueAtIndex(a3, 0);
      v29 = CA_CFIntValue(v28);
      v30 = CFArrayGetValueAtIndex(a3, 1);
      v31 = CA_CFIntValue(v30);
      v32 = CFArrayGetValueAtIndex(a3, 2);
      v33 = CA_CFIntValue(v32);
      v34 = CFArrayGetValueAtIndex(a3, 3);
      v35 = CA_CFIntValue(v34);
      v36 = CFArrayGetValueAtIndex(a3, 4);
      v37 = CA_CFIntValue(v36);
      v38 = CFArrayGetValueAtIndex(a3, 5);
      v39 = CA_CFIntValue(v38);
      v40 = *(a4 + 4);
      if (v40)
      {
        v41 = *(v40 + 4);
        if ((v41 + 1) > *(v40 + 5))
        {
          CA::Render::Encoder::grow(*(a4 + 4), 1);
          v41 = *(v40 + 4);
        }

        *(v40 + 4) = v41 + 1;
        *v41 = 24;
        v42 = *(v40 + 4);
        if ((v42 + 1) > *(v40 + 5))
        {
          CA::Render::Encoder::grow(v40, 8);
          v42 = *(v40 + 4);
        }

        *v42 = a2;
        v43 = *(v40 + 4);
        v44 = *(v40 + 5);
        v45 = (v43 + 8);
        *(v40 + 4) = v43 + 8;
        if (v43 + 12 > v44)
        {
          CA::Render::Encoder::grow(v40, 4);
          v45 = *(v40 + 4);
        }

        *v45 = v29;
        v46 = *(v40 + 4);
        v47 = *(v40 + 5);
        v48 = (v46 + 4);
        *(v40 + 4) = v46 + 4;
        if (v46 + 8 > v47)
        {
          CA::Render::Encoder::grow(v40, 4);
          v48 = *(v40 + 4);
        }

        *v48 = v31;
        v49 = *(v40 + 4);
        v50 = *(v40 + 5);
        v51 = (v49 + 4);
        *(v40 + 4) = v49 + 4;
        if (v49 + 8 > v50)
        {
          CA::Render::Encoder::grow(v40, 4);
          v51 = *(v40 + 4);
        }

        *v51 = v33;
        v52 = *(v40 + 4);
        v53 = *(v40 + 5);
        v54 = (v52 + 4);
        *(v40 + 4) = v52 + 4;
        if (v52 + 8 > v53)
        {
          CA::Render::Encoder::grow(v40, 4);
          v54 = *(v40 + 4);
        }

        *v54 = v35;
        v55 = *(v40 + 4);
        v56 = *(v40 + 5);
        v57 = (v55 + 4);
        *(v40 + 4) = v55 + 4;
        if (v55 + 8 > v56)
        {
          CA::Render::Encoder::grow(v40, 4);
          v57 = *(v40 + 4);
        }

        *v57 = v37;
        v58 = *(v40 + 4);
        v59 = *(v40 + 5);
        v60 = (v58 + 4);
        *(v40 + 4) = v58 + 4;
        if (v58 + 8 > v59)
        {
          CA::Render::Encoder::grow(v40, 4);
          v60 = *(v40 + 4);
        }

        *v60 = v39;
        *(v40 + 4) += 4;
        CA::Render::Encoder::encode_sanity_check(v40);
      }

      v61 = *(a4 + 5);
      if (v61)
      {
        CA::Render::ImageProvider::invalidate(*(v61 + 136), *(v61 + 148), a2, v29, v31, v33, v35, v37, v39);
      }

      goto LABEL_222;
    case 21:
    case 22:
    case 23:
    case 24:
      goto LABEL_222;
    case 25:
      v75 = [(__CFString *)a3 _renderShmem:a3];
      v76 = *(a4 + 4);
      if (v76)
      {
        v77 = *(v76 + 4);
        if ((v77 + 1) > *(v76 + 5))
        {
          CA::Render::Encoder::grow(*(a4 + 4), 1);
          v77 = *(v76 + 4);
        }

        *(v76 + 4) = v77 + 1;
        *v77 = 35;
        CA::Render::Encoder::encode_object(v76, v75);
        CA::Render::Encoder::encode_sanity_check(v76);
        (*(*v76 + 16))(v76);
      }

      if (*(a4 + 5))
      {
        CA::Render::Context::flush_presentation_modifier_shmem(v75, v74);
      }

      goto LABEL_222;
    case 26:
      v68 = CA_CFDoubleValue(a3);
      if (v68 != 0.0)
      {
        CA::Render::CA_IS_FULFILLING_SERVER_GLITCH_REQUEST(v66, v68);
      }

      v69 = *(a4 + 4);
      if (v69)
      {
        CA::Render::encode_request_server_glitch(v69, v67, 0.0);
      }

      goto LABEL_222;
    case 27:
      v103 = CA_CFDoubleValue(a3);
      if (v103 != 0.0)
      {
        v104 = v103;
        v105 = *(a4 + 4);
        if (v105)
        {
          CA::Render::encode_request_server_glitch(v105, v102, v103);
        }

        v106 = *(a4 + 5);
        if (v106)
        {
          CA::Render::Context::set_glitch_request(v106, v104);
        }
      }

LABEL_222:
      *(a4 + 56) = 1;
      break;
    default:
      return;
  }
}

uint64_t CA::Render::Context::flush_presentation_modifier_shmem(uint64_t this, CA::Render::Shmem *a2)
{
  if (this && *(this + 16) >= 0x28uLL)
  {
    v2 = *(this + 24);
    v2[1] = v2[1] == 0;
    do
    {
      v3 = *v2 & 0x7FFFFFFF;
      v4 = v3;
      atomic_compare_exchange_strong(v2, &v4, *v2 & 0x7FFFFFFE | v2[1]);
    }

    while (v4 != v3);
  }

  return this;
}

void CA::Transaction::free_command_list(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = a1;
    do
    {
      v3 = v2[3];
      if (v3)
      {
        CFRelease(v3);
      }

      v2 = *v2;
    }

    while (v2);
    do
    {
      v4 = *v1;
      free(v1);
      v1 = v4;
    }

    while (v4);
  }
}

uint64_t CA::Transaction::add_command(CA::Transaction *this, int a2, uint64_t a3, const void *a4, const void *a5)
{
  v8 = this;
  v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v9)
  {
    v9 = CA::Transaction::create(this);
  }

  v10 = *(v9 + 15);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v11 = malloc_type_zone_malloc(malloc_zone, 0x28uLL, 0x10E0040A5BABBA8uLL);
  v11[8] = a2;
  *(v11 + 1) = v8;
  *(v11 + 2) = a3;
  if (a4)
  {
    result = CFRetain(a4);
  }

  else
  {
    result = 0;
  }

  *(v11 + 3) = result;
  if (!**(v9 + 15))
  {
    result = CA::Transaction::ensure_implicit(v9, 1);
  }

  do
  {
    v13 = *(v10 + 16);
    *v11 = v13;
    v14 = v13;
    atomic_compare_exchange_strong((v10 + 16), &v14, v11);
  }

  while (v14 != v13);
  return result;
}

atomic_uint *CA::Render::invalidate_animation(CA::Render *this, Handle *a2, CA::Render::Animation *a3)
{
  result = ((*a2)[19])(a2, this, a3);
  v5 = *(a2 + 3);
  *(a2 + 3) = v5 | 0x20000;
  if (v5 == 61)
  {
    result = a2[16];
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        result = (*(*result + 16))(result);
      }

      a2[16] = 0;
    }
  }

  if (atomic_fetch_add(a2 + 2, 0xFFFFFFFF) == 1)
  {
    v6 = (*a2)[2];

    return (v6)(a2);
  }

  return result;
}

uint64_t CA::Render::Animation::was_removed(uint64_t this, Handle *a2)
{
  v2 = *(this + 12);
  if ((v2 & 0x1000) == 0)
  {
    if ((v2 & 0x2000) == 0)
    {
      return this;
    }

LABEL_5:
    a2[13] = (a2[13] | 0x10);
    return this;
  }

  a2[13] = (a2[13] | 8);
  if ((*(this + 12) & 0x2000) != 0)
  {
    goto LABEL_5;
  }

  return this;
}

void CA::Render::Updater::RasterizationOp::map_bounds(CA::Render::Updater::RasterizationOp *this, CA::Render::Updater::LayerShapes *a2, BOOL a3, int32x4_t a4, void (*a5)(CA::Rect *, void *))
{
  v6 = *(a2 + 2);
  a4.i64[0] = *(a2 + 3);
  if (v6 <= *a4.i64)
  {
    v7 = *(a2 + 3);
  }

  else
  {
    v7 = *(a2 + 2);
  }

  if (v7 < 1.79769313e308)
  {
    v8 = v6 >= *a4.i64 ? *(a2 + 3) : *(a2 + 2);
    if (v8 > 0.0)
    {
      v9 = -*(this + 5);
      *a2 = vaddq_f64(*a2, vdupq_lane_s64(COERCE__INT64(v9), 0));
      v10 = v9 * -2.0;
      v11 = v10 + v6;
      *a4.i64 = v10 + *a4.i64;
      *(a2 + 2) = v11;
      *(a2 + 3) = a4.i64[0];
      if (v11 <= 0.0 || *a4.i64 <= 0.0)
      {
        *(a2 + 2) = 0;
        *(a2 + 3) = 0;
      }
    }
  }

  if (*(a2 + 8))
  {
    CA::shape_map(a2 + 8, (this + 20), CA::Render::Updater::RasterizationOp::map_bounds(CA::Render::Updater::LayerShapes &,BOOL)::$_0::__invoke, a5, a4);
  }

  v12 = *(a2 + 7);
  if (v12)
  {
    if (v12)
    {
      if (v12 == 1)
      {
        return;
      }
    }

    else if (*(v12 + 1) == 6)
    {
      return;
    }

    CA::Shape::unref(v12);
    *(a2 + 7) = 1;
  }
}

uint64_t CA::Render::Updater::RasterizationOp::map_crop(uint64_t this, Rect *a2, Rect *a3)
{
  v3 = *(this + 20);
  v5 = *&a3[2];
  v4 = *&a3[3];
  if (v5 <= v4)
  {
    v6 = *&a3[3];
  }

  else
  {
    v6 = *&a3[2];
  }

  if (v6 < 1.79769313e308)
  {
    v7 = v5 >= v4 ? *&a3[3] : *&a3[2];
    if (v7 > 0.0)
    {
      *&a3->top = vaddq_f64(*&a3->top, vdupq_lane_s64(COERCE__INT64(-v3), 0));
      v8 = -v3 * -2.0;
      v9 = v8 + v5;
      v10 = v8 + v4;
      *&a3[2] = v9;
      *&a3[3] = v10;
      if (v9 <= 0.0 || v10 <= 0.0)
      {
        a3[2] = 0;
        a3[3] = 0;
        v3 = *(this + 20);
      }
    }
  }

  v12 = *&a2[2];
  v11 = *&a2[3];
  if (v12 <= v11)
  {
    v13 = *&a2[3];
  }

  else
  {
    v13 = *&a2[2];
  }

  if (v13 < 1.79769313e308)
  {
    if (v12 >= v11)
    {
      v14 = *&a2[3];
    }

    else
    {
      v14 = *&a2[2];
    }

    if (v14 > 0.0)
    {
      *&a2->top = vaddq_f64(*&a2->top, vdupq_lane_s64(COERCE__INT64(v3), 0));
      v15 = v3 * -2.0;
      v16 = v15 + v12;
      v17 = v15 + v11;
      *&a2[2] = v16;
      *&a2[3] = v17;
      if (v16 <= 0.0 || v17 <= 0.0)
      {
        a2[2] = 0;
        a2[3] = 0;
      }
    }
  }

  return this;
}

float64x2_t *CA::Render::Updater::RasterizationOp::map_bounds(CA::Render::Updater::LayerShapes &,BOOL)::$_0::__invoke(float64x2_t *result, _DWORD *a2)
{
  v3 = result[1].f64[0];
  v2 = result[1].f64[1];
  if (v3 <= v2)
  {
    v4 = result[1].f64[1];
  }

  else
  {
    v4 = result[1].f64[0];
  }

  if (v4 < 1.79769313e308)
  {
    if (v3 >= v2)
    {
      v5 = result[1].f64[1];
    }

    else
    {
      v5 = result[1].f64[0];
    }

    if (v5 > 0.0)
    {
      v6 = -*a2;
      *result = vaddq_f64(*result, vdupq_lane_s64(COERCE__INT64(v6), 0));
      v7 = v6 * -2.0;
      v8 = v7 + v3;
      v9 = v7 + v2;
      result[1].f64[0] = v8;
      result[1].f64[1] = v9;
      if (v8 <= 0.0 || v9 <= 0.0)
      {
        result[1].f64[0] = 0.0;
        result[1].f64[1] = 0.0;
      }
    }
  }

  return result;
}

double CA::Render::Updater::LayerShapesOp::map_detached_rect(CA::Render::Updater::LayerShapesOp *this, Rect *a2)
{
  result = 0.0;
  *&a2->top = 0u;
  *&a2[2].top = 0u;
  return result;
}

double CA::Render::Updater::FilterOp::map_crop(CA::Render::Updater::FilterOp *this, Rect *a2, Rect *a3)
{
  if (!*(this + 5) || (CA::Render::Updater::FilterOp::apply_filter(this, a3, 0), (v5 = *(this + 5)) == 0) || (v6 = *(v5 + 48)) == 0 || ((*(*v6 + 32))(v6) & 1) == 0)
  {
    result = 0.0;
    *&a2->top = 0u;
    *&a2[2].top = 0u;
  }

  return result;
}

id CA::Layer::identifiers(CA::Layer *this)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = CA::Transaction::ensure_compat(this);
  v3 = *(v2 + 29);
  *(v2 + 29) = v3 + 1;
  if (!v3)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v6[0] = 0;
  CA::Layer::getter(this, 0x135u, 2, v6);
  v4 = v6[0];
  CA::Transaction::unlock(v2);
  return v4;
}

uint64_t CA::ShapeHandle::grow(CA::ShapeHandle *this, int a2)
{
  v3 = *this;
  v4 = *(this + 1) - *this;
  v5 = v4 >> 2;
  LODWORD(v6) = *(*this + 8);
  if (v6 <= 0x10)
  {
    LODWORD(v6) = 16;
  }

  v6 = v6;
  do
  {
    v7 = v6;
    v6 *= 2;
  }

  while (v7 < (v5 + a2));
  if (v7 < 0x1FFFFFFF)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    result = malloc_type_zone_malloc(malloc_zone, 4 * v7, 0x100004052888210uLL);
    v9 = *this;
    if (result)
    {
      v10 = result;
      if (v5)
      {
        v11 = v4 >> 2;
        v12 = *this;
        v13 = result;
        do
        {
          v14 = *v12++;
          *v13++ = v14;
          LODWORD(v11) = v11 - 1;
        }

        while (v11);
      }

      *(result + 4) = v5;
      *(result + 8) = v7;
      v15 = result + *(this + 3) - v9;
      *(this + 2) = result + *(this + 2) - v9;
      *(this + 3) = v15;
      *(this + 1) = result + (v4 & 0x3FFFFFFFCLL);
      if (v9 != (this + 32))
      {
        if (x_malloc_get_zone::once != -1)
        {
          v16 = v9;
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          v9 = v16;
        }

        malloc_zone_free(malloc_zone, v9);
      }

      *this = v10;
      return 1;
    }

    else
    {
      *v9 = 0;
    }
  }

  else
  {
    result = 0;
    *v3 = 0;
  }

  return result;
}

char *CA::Context::remove_animation(char *this, __CFString *a2, const __CFString *a3, const __CFString *a4)
{
  v6 = this;
  info = a3[1].info;
  if (info)
  {
    if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
    {
      dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
    }

    if (v6)
    {
      v8 = &v6[CA::Render::_render_id_slide];
    }

    else
    {
      v8 = 0;
    }

    this = CA::Render::Context::remove_animation(info, v8, a2);
  }

  isa = a3[1].isa;
  if (isa)
  {
    if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
    {
      dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
    }

    if (v6)
    {
      v10 = &v6[CA::Render::_render_id_slide];
    }

    else
    {
      v10 = 0;
    }

    this = CA::Render::encode_remove_animation(isa, v10, a2, a4);
  }

  LOBYTE(a3[1].length) = 1;
  return this;
}

void *CA::Render::encode_remove_animation(CA::Render *this, CA::Render::Encoder *a2, void *a3, const __CFString *a4)
{
  v7 = *(this + 4);
  if ((v7 + 1) > *(this + 5))
  {
    CA::Render::Encoder::grow(this, 1);
    v7 = *(this + 4);
  }

  *(this + 4) = v7 + 1;
  *v7 = 6;
  v8 = *(this + 4);
  if ((v8 + 1) > *(this + 5))
  {
    CA::Render::Encoder::grow(this, 8);
    v8 = *(this + 4);
  }

  *v8 = a2;
  *(this + 4) += 8;
  CA::Render::Encoder::encode_cfobject(this, a3);

  return CA::Render::Encoder::encode_sanity_check(this);
}

uint64_t **CA::Render::Context::remove_animation(CA::Render::Context *this, CA::Render::Object *a2, const __CFString *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  result = CA::Render::Context::lookup_handle(this, a2, 0, 0, 0);
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = result + 6;
  v8 = result[6];
  if (!v8)
  {
    return result;
  }

  if (!a3)
  {
    v9 = 0;
    while (1)
    {
LABEL_7:
      v10 = *v8;
      v11 = *(*v8 + 56);
      if (a3)
      {
        if (v11 && v9 == *(v10 + 64) && CFEqual(a3, v11))
        {
LABEL_11:
          if (BYTE8(xmmword_1ED4E97DC) == 1)
          {
            memset(v24, 0, sizeof(v24));
            CA::Render::show_object(v24, v10);
            if (x_log_get_render(void)::once[0] != -1)
            {
              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            }

            log = x_log_get_render(void)::log;
            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              v12 = mach_absolute_time();
              v13 = CATimeWithHostTime(v12);
              v14 = *(v6 + 3);
              if (v14)
              {
                v22 = *(v14 + 16);
              }

              else
              {
                v22 = 0;
              }

              v15 = *(v6 + 2);
              if (v15)
              {
                v16 = *(v15 + 128);
                if (v16)
                {
                  v17 = v16 + 28;
                }

                else
                {
                  v17 = 0;
                }

                v21 = v17;
              }

              else
              {
                v21 = 0;
              }

              v19 = *(v10 + 80);
              v20 = *(v10 + 84);
              v18 = x_stream_get(v24);
              *buf = 134219778;
              v26 = v13;
              v27 = 1024;
              v28 = v22;
              v29 = 2080;
              v30 = v21;
              v31 = 2048;
              v32 = v6;
              v33 = 2048;
              v34 = v10;
              v35 = 1024;
              v36 = v19;
              v37 = 1024;
              v38 = v20;
              v39 = 2080;
              v40 = v18;
              _os_log_impl(&dword_183AA6000, log, OS_LOG_TYPE_DEFAULT, "%f %x %s (%p): removing %p (eval %u; frames %u):\n%s", buf, 0x46u);
            }

            if (v24[0])
            {
              free(v24[0]);
            }
          }

          if (BYTE11(xmmword_1ED4E980C) == 1)
          {
            kdebug_trace();
          }

          CA::Render::invalidate_animation(v6, v10, v5);
          result = x_list_remove_head(v8);
          *v7 = result;
          *(v6 + 13) |= 0x10080003uLL;
          goto LABEL_17;
        }
      }

      else if (!v11)
      {
        goto LABEL_11;
      }

      result = v8[1];
      v7 = (v8 + 1);
LABEL_17:
      v8 = result;
      if (!result)
      {
        return result;
      }
    }
  }

  result = CFHash(a3);
  v8 = *v7;
  if (*v7)
  {
    v9 = result;
    goto LABEL_7;
  }

  return result;
}

void *CA::Render::Decoder::decode_data_async(CA::Render::Decoder *this, unint64_t *a2, void (__cdecl **a3)(void *), void **a4)
{
  if (*(this + 18))
  {
    return 0;
  }

  v8 = CA::Render::Decoder::decode_size_t(this);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if (*(this + 64))
  {
    if (v8 == -1)
    {
LABEL_5:
      v10 = *(this + 6);
      if (v10 && *(v10 + 8) == 1)
      {
        v11 = *(this + 7) - 1;
        *(this + 6) = *v10;
        *(this + 7) = v11;
        *a2 = *(v10 + 24);
        *a3 = *(v10 + 32);
        *a4 = *(v10 + 40);
        return *(v10 + 16);
      }

      CA::Render::Decoder::set_fatal_error(this, "%s - _attach_list = %p, type = %u");
      return 0;
    }
  }

  else if (v8 == 0xFFFFFFFF)
  {
    goto LABEL_5;
  }

  if (v8 >= 0x2000001)
  {
    CA::Render::Decoder::set_fatal_error(this, "%s - buf size = %zu");
    return 0;
  }

  v12 = malloc_type_valloc(v8, 0x1A1DA616uLL);
  if (v12)
  {
    CA::Render::Decoder::decode_bytes(this, v12, v9);
    *a2 = v9;
    *a3 = CA::Render::release_free;
    *a4 = v9;
  }

  else
  {
    CA::Render::Decoder::set_fatal_error(this, "%s - buf = NULL", "decode_data_async");
  }

  return v12;
}

uint64_t CA::Render::Update::under_visible_backdrops(uint64_t this, const CA::Bounds *a2, int32x2_t a3, int32x2_t a4)
{
  if (this)
  {
    v4 = vclez_s32(a4);
    v5 = vadd_s32(a3, a4);
    v6 = vpmax_u32(v4, v4).u32[0];
    while (1)
    {
      if ((*(this + 107) & 8) == 0 && (v6 & 0x80000000) == 0)
      {
        v7 = *(*(this + 8) + 256);
        v8 = v7[11];
        v9 = vclez_s32(v8);
        if ((vpmax_u32(v9, v9).u32[0] & 0x80000000) == 0)
        {
          v10 = vclez_s32(vsub_s32(vmin_s32(v5, vadd_s32(v7[10], v8)), vmax_s32(a3, v7[10])));
          if ((vpmax_u32(v10, v10).u32[0] & 0x80000000) == 0)
          {
            break;
          }
        }
      }

      this = *this;
      if (!this)
      {
        return this;
      }
    }

    return 1;
  }

  return this;
}

uint64_t CA::Display::DisplayLink::update_timer_locked(BOOL)::$_0::__invoke(uint64_t result)
{
  if (result)
  {
    while (1)
    {
      v1 = *(result + 40);
      if (!v1)
      {
        break;
      }

      v2 = *(result + 40);
      atomic_compare_exchange_strong((result + 40), &v2, v1 + 1);
      if (v2 == v1)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

void CA::Display::DisplayLink::update_timer_locked(BOOL)::$_1::__invoke(atomic_uint *this)
{
  if (this)
  {
    CA::Display::DisplayLink::unref(this);
  }
}

int *CA::Context::retain_context_with_client_id(CA::Context *this)
{
  v1 = this;
  os_unfair_lock_lock(&CA::Context::_lock);
  if (CA::all_contexts(void)::contexts_data_initialized)
  {
    for (i = CA::all_contexts(void)::contexts_data; ; ++i)
    {
      if (i == *(&CA::all_contexts(void)::contexts_data + 1))
      {
        v3 = 0;
        goto LABEL_9;
      }

      v3 = *i;
      v4 = **i;
      if (v4)
      {
        if (v3[1] == v1)
        {
          break;
        }
      }
    }

    *v3 = v4 + 1;
  }

  else
  {
    v3 = 0;
    CA::all_contexts(void)::contexts_data = 0uLL;
    qword_1ED4E9310 = 0;
    CA::all_contexts(void)::contexts_data_initialized = 1;
  }

LABEL_9:
  os_unfair_lock_unlock(&CA::Context::_lock);
  return v3;
}

uint64_t CA::WindowServer::IOMFBServer::set_vsync_enabled(CA::WindowServer::IOMFBServer *this)
{
  pthread_mutex_lock((this + 920));
  if ((*(this + 1445) & 1) == 0)
  {
    *(this + 1445) = 1;
    if (BYTE11(xmmword_1ED4E980C) == 1)
    {
      kdebug_trace();
    }

    if ((*(this + 1446) & 2) != 0)
    {
      IOMobileFramebufferEnableVSyncNotifications();
    }

    else
    {
      CA::WindowServer::IOMFBDisplay::set_timings_enabled(*(this + 12), 1);
      v2 = *(this + 139);
      if (v2)
      {
        v3 = (*(*this + 424))(this);
        CADisplayTimerAddToRunLoop(v2, v3, *MEMORY[0x1E695E8E0]);
      }
    }
  }

  return pthread_mutex_unlock((this + 920));
}

double CA::Render::TimingFunction::evaluate_inverse(CA::Render::TimingFunction *this, const double *a2, double a3, double a4)
{
  v4 = *(this + 1);
  v5 = v4 * 3.0;
  v6 = (*(this + 3) - v4) * 3.0;
  v7 = v6 - v4 * 3.0;
  v8 = 1.0 - v6;
  v9 = 8;
  v10 = a3;
  while (1)
  {
    v11 = -(a3 - (v5 + (v7 + v10 * v8) * v10) * v10);
    if (fabs(v11) < a4)
    {
      break;
    }

    v12 = v5 + (v7 + v7 + v8 * 3.0 * v10) * v10;
    if (fabs(v12) >= 0.000001)
    {
      v10 = v10 - v11 / v12;
      if (--v9)
      {
        continue;
      }
    }

    v10 = 0.0;
    if (a3 >= 0.0)
    {
      v10 = 1.0;
      if (a3 <= 1.0)
      {
        v13 = 0.0;
        v14 = 1.0;
        v15 = -1025;
        v10 = a3;
        do
        {
          if (__CFADD__(v15++, 1))
          {
            break;
          }

          v17 = -(a3 - (v5 + (v7 + v10 * v8) * v10) * v10);
          if (fabs(v17) < a4)
          {
            break;
          }

          if (v17 >= 0.0)
          {
            v14 = v10;
          }

          else
          {
            v13 = v10;
          }

          v10 = v13 + (v14 - v13) * 0.5;
        }

        while (v13 < v14);
      }
    }

    return (*this * 3.0 + ((*(this + 2) - *this) * 3.0 - *this * 3.0 + v10 * (1.0 - (*(this + 2) - *this) * 3.0)) * v10) * v10;
  }

  return (*this * 3.0 + ((*(this + 2) - *this) * 3.0 - *this * 3.0 + v10 * (1.0 - (*(this + 2) - *this) * 3.0)) * v10) * v10;
}

uint64_t CA::OGL::cache_node(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, float a6)
{
  v12 = *(a1 + 72);
  if (v12)
  {
    *(a1 + 72) = *v12;
  }

  else
  {
    v12 = x_heap_malloc_small_(*(a1 + 56), 0x110uLL);
  }

  v13 = (*(*(a2 + 24) + 40) >> 58) & 1;
  CA::OGL::ImagingNode::ImagingNode(v12, a1, a2, a4, 0);
  *v12 = &unk_1EF1FD6A0;
  *(v12 + 240) = *(v12 + 240) & 0xFE | v13;
  *(v12 + 244) = a6;
  *(v12 + 248) = *a3;
  *(a4 + 236) |= 0x800000u;
  CA::OGL::copy_gstate(v12 + 56, a4 + 56);
  if (a5)
  {
    v14 = 10489856;
  }

  else
  {
    v14 = 2101248;
  }

  *(v12 + 236) = *(v12 + 236) & 0xFF9E0000 | *(a4 + 236) & 0x400000 | v14;
  return v12;
}

uint64_t CA::Render::Texture::displayed_size_(uint64_t this, unsigned int *a2, unsigned int *a3)
{
  v3 = *(this + 20);
  v4 = *(this + 12);
  if ((v4 & 0x400) != 0)
  {
    v5 = *(this + 20);
  }

  else
  {
    v5 = *(this + 16);
  }

  if ((v4 & 0x400) != 0)
  {
    v3 = *(this + 16);
  }

  if ((v4 & 0x4000) != 0)
  {
    v5 -= *(this + 24) + *(this + 28);
    v3 -= *(this + 26) + *(this + 30);
  }

  if ((v4 & 0x2000) != 0)
  {
    v5 = ((*(this + 32) * v5) + 0.5);
  }

  *a2 = v5;
  *a3 = v3;
  return this;
}

double CA::OGL::quad_node(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, __int16 a6, float a7)
{
  v14 = *(a1 + 72);
  if (v14)
  {
    *(a1 + 72) = *v14;
  }

  else
  {
    v14 = x_heap_malloc_small_(*(a1 + 56), 0x110uLL);
  }

  v15 = CA::OGL::ImagingNode::ImagingNode(v14, a1, a2, a3, 0);
  *v15 = &unk_1EF1FDB20;
  *(v15 + 240) = a4 & 0xF | (16 * a5) | (a6 << 8);
  *(v15 + 244) = a7;
  *(v15 + 88) = 0x3C003C003C003C00;
  *(v15 + 104) = 0;
  *(v15 + 112) = 0;
  *(v15 + 96) = 0;
  v16 = *(v15 + 136);
  *(v15 + 128) = 0;
  result = 0.0;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 0u;
  *(v15 + 120) = 1065353216;
  *(v15 + 136) = v16 & 0xF800 | 0x401;
  *(v15 + 236) = *(v15 + 236) & 0xFFDE0000 | 0x200080;
  return result;
}

_DWORD *CA::OGL::CacheNode::retain_surface(CA::OGL::CacheNode *this, float *a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = **(this + 1);
  v41 = 0uLL;
  CA::Shape::get_bounds(*(this + 8), &v41);
  v8.i32[1] = v41.i32[3];
  v9 = v41.i32[3];
  v10.i64[0] = v41.i32[0];
  v10.i64[1] = v41.i32[1];
  v11 = v10;
  v10.i64[0] = v41.i32[2];
  v10.i64[1] = v41.i32[3];
  v12 = v10;
  if (v41.i32[2] > v41.i32[3])
  {
    v9 = v41.i32[2];
  }

  v8.i32[0] = v9;
  v7.i32[0] = 1073741822;
  v13 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v8, v7), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v11));
  v14 = vcvtq_f64_s64(v12);
  v15 = vdup_n_s32(v9 > 1073741822);
  v16.i64[0] = v15.u32[0];
  v16.i64[1] = v15.u32[1];
  v17 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v16, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v14);
  v18 = *(this + 61);
  v19 = v18;
  v20 = *v17.i64 >= 1.79769313e308 || v18 == 1.0;
  v21.i64[1] = v13.i64[1];
  v22.i64[1] = v17.i64[1];
  if (v20)
  {
    v23 = 0;
  }

  else
  {
    v23 = -1;
  }

  v24 = vdupq_n_s64(v23);
  *v22.i64 = v19 * *v17.i64;
  v25 = vbslq_s8(v24, v22, v17);
  *v21.i64 = v19 * *v13.i64;
  v26 = vbslq_s8(v24, v21, v13);
  if (v18 != 1.0 && v25.f64[1] < 1.79769313e308)
  {
    v26.f64[1] = vmuld_lane_f64(v19, v26, 1);
    v25.f64[1] = v25.f64[1] * v19;
  }

  v27 = vceqzq_f64(v25);
  if ((vorrq_s8(vdupq_laneq_s64(v27, 1), v27).u64[0] & 0x8000000000000000) != 0 || (v28 = vceqq_f64(v25, v25), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v28), 1), v28).u64[0] & 0x8000000000000000) != 0))
  {
    v41 = 0uLL;
  }

  else
  {
    v29 = vminnmq_f64(vaddq_f64(v26, v25), vdupq_n_s64(0x41C0000000000000uLL));
    v30 = vcvtmq_s64_f64(vmaxnmq_f64(v26, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v41 = vuzp1q_s32(v30, vsubq_s64(vcvtpq_s64_f64(v29), v30));
  }

  v31 = CA::OGL::Context::cache_fetch(v6, this + 62);
  if (v31)
  {
    v32 = v31;
    surface = CA::OGL::Context::cache_get_surface(v6, v31, &v41, 0);
    v40 = 1065353216;
    if (surface && (v34 = surface, v35 = *(surface + 72), v35 == (*(*v6 + 144))(v6)))
    {
      ++*v34;
    }

    else
    {
      v34 = (*(**(this + 3) + 80))(*(this + 3), &v40, a3);
      CA::OGL::Context::cache_set_surface(v6, v32, v34);
    }

    if (BYTE3(xmmword_1ED4E97DC) == 1)
    {
      v38 = *(*(this + 2) + 176);
      if (v38)
      {
        if (v6[81] >= *(v32 + 56))
        {
          v39 = 0x40000;
        }

        else
        {
          v39 = 393216;
        }

        *(v38 + 236) = *(v38 + 236) & 0xFFE1FFFF | v39;
      }
    }

    *a2 = *(this + 61);
    return v34;
  }

  else
  {
    v37 = *(**(this + 3) + 80);

    return v37();
  }
}

uint64_t CA::OGL::compute_contents_dod(uint64_t result, uint64_t a2, uint64_t a3, int32x2_t *a4)
{
  v4 = result;
  v15 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    result = (*(*a4 + 80))(a4);
    if (result)
    {
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      result = CA::OGL::ContentsGeometry::ContentsGeometry(v13, a2, a3, result, a4, 0);
      v8 = vceqzq_f64(*(&v13[3] + 8));
      if ((vorrq_s8(vdupq_laneq_s64(v8, 1), v8).u64[0] & 0x8000000000000000) == 0)
      {
        v9 = vceqq_f64(*(&v13[3] + 8), *(&v13[3] + 8));
        if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v9), 1), v9).u64[0] & 0x8000000000000000) == 0)
        {
          v10 = vcvtmq_s64_f64(vmaxnmq_f64(*(&v13[2] + 8), vdupq_n_s64(0xC1BFFFFFFF000000)));
          *v4->i8 = vuzp1q_s32(v10, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(*(&v13[2] + 8), *(&v13[3] + 8)), vdupq_n_s64(0x41C0000000000000uLL))), v10));
          return result;
        }
      }
    }

    else if (a4[1].i8[4] == 26)
    {
      v13[0] = 0uLL;
      v11 = 0;
      v12 = 0;
      CA::OGL::compute_contents_dod(v13, a2, a3, *&a4[3]);
      CA::OGL::compute_contents_dod(&v11, a2, a3, *&a4[4]);
      *v4->i8 = v13[0];
      return CA::BoundsImpl::Union(v4, v11, v12);
    }
  }

  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t CA::OGL::CacheNode::compute_dod(CA::OGL::CacheNode *this, CA::Bounds *a2)
{
  result = CA::OGL::Context::cache_fetch(**(this + 1), this + 62);
  if (result)
  {
    v7 = result;
    v8 = *(result + 36);
    v9 = *(result + 40);
    if (v8 <= v9)
    {
      v10 = *(result + 40);
    }

    else
    {
      v10 = *(result + 36);
    }

    if (v10 > 1073741822 || (v8 >= v9 ? (v11 = *(result + 40)) : (v11 = *(result + 36)), v11 <= 0 && (*(this + 240) & 1) != 0))
    {
      v12 = *(this + 3);
      v8 = *(v12 + 152);
      if (v8 < 0)
      {
        result = (*(*v12 + 40))(*(this + 3), v12 + 144);
        v8 = *(v12 + 152);
      }

      v13 = *(v12 + 144);
      *(v7 + 28) = v13;
      v9 = *(v12 + 156);
      *(v7 + 36) = v8;
      *(v7 + 40) = v9;
    }

    else
    {
      v13 = *(result + 28);
    }

    *a2 = v13;
    *(a2 + 2) = v8;
  }

  else
  {
    v14 = *(this + 3);
    v8 = *(v14 + 152);
    if (v8 < 0)
    {
      result = (*(*v14 + 40))(*(this + 3), v14 + 144);
      v8 = *(v14 + 152);
    }

    v13 = *(v14 + 144);
    *a2 = v13;
    *(a2 + 2) = v8;
    v9 = *(v14 + 156);
  }

  *(a2 + 3) = v9;
  v15 = *(this + 61);
  if (v15 != 1.0)
  {
    if (v8 <= v9)
    {
      v16 = v9;
    }

    else
    {
      v16 = v8;
    }

    v5.i32[0] = 1073741822;
    v6.i32[0] = v16;
    v17.i64[0] = v13;
    v17.i64[1] = SHIDWORD(v13);
    v18 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v6, v5), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v17));
    *v19.i64 = v8;
    if (v16 <= 1073741822)
    {
      v20 = v9;
    }

    else
    {
      *v19.i64 = 1.79769313e308;
      v20 = 1.79769313e308;
    }

    v21 = 1.0 / v15;
    v22 = (1.0 / v15);
    *&v19.i64[1] = v20;
    v23 = *v19.i64 >= 1.79769313e308 || v21 == 1.0;
    v24.i64[1] = v18.i64[1];
    *&v25.i64[1] = v20;
    if (v23)
    {
      v26 = 0;
    }

    else
    {
      v26 = -1;
    }

    v27 = vdupq_n_s64(v26);
    *v25.i64 = *v19.i64 * v22;
    v28 = vbslq_s8(v27, v25, v19);
    *v24.i64 = v22 * *v18.i64;
    v29 = vbslq_s8(v27, v24, v18);
    if (v21 != 1.0 && v28.f64[1] < 1.79769313e308)
    {
      v29.f64[1] = vmuld_lane_f64(v22, v29, 1);
      v28.f64[1] = v28.f64[1] * v22;
    }

    v30 = vceqzq_f64(v28);
    if ((vorrq_s8(vdupq_laneq_s64(v30, 1), v30).u64[0] & 0x8000000000000000) != 0 || (v31 = vceqq_f64(v28, v28), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v31), 1), v31).u64[0] & 0x8000000000000000) != 0))
    {
      *a2 = 0;
      *(a2 + 1) = 0;
    }

    else
    {
      v32 = vcvtmq_s64_f64(vmaxnmq_f64(v29, vdupq_n_s64(0xC1BFFFFFFF000000)));
      *a2 = vuzp1q_s32(v32, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v29, v28), vdupq_n_s64(0x41C0000000000000uLL))), v32));
    }
  }

  return result;
}

uint64_t CA::OGL::Context::cache_fetch(uint64_t a1, _DWORD *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = a1 + 808;
  for (i = *(a1 + 816); i != v4; i = *(i + 8))
  {
    if (*(i + 16) == *a2)
    {
      if (a2[1] != *(i + 20))
      {
        CA::OGL::Context::cache_set_surface(a1, i, 0);
        *(i + 28) = xmmword_183E21120;
        *(i + 20) = a2[1];
      }

      v8 = *i;
      v7 = *(i + 8);
      *(v8 + 8) = v7;
      *v7 = v8;
      *i = i;
      *(i + 8) = i;
      goto LABEL_15;
    }
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v6 = malloc_type_zone_malloc(malloc_zone, 0xD8uLL, 0x165299FDuLL);
  i = v6;
  if (v6)
  {
    *(v6 + 26) = 0;
    *(v6 + 11) = 0u;
    *(v6 + 12) = 0u;
    *(v6 + 9) = 0u;
    *(v6 + 10) = 0u;
    *(v6 + 7) = 0u;
    *(v6 + 8) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 6) = 0u;
    *(v6 + 3) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 1) = 0u;
    *(v6 + 2) = 0u;
    *v6 = 0u;
  }

  *(v6 + 2) = *a2;
  *(v6 + 6) = 0;
  *(v6 + 28) = xmmword_183E21120;
  CA::Transform::operator=((v6 + 64), &CA::identity_transform);
LABEL_15:
  *(i + 24) = *(a1 + 636);
  v9 = *(a1 + 816);
  *(a1 + 816) = i;
  *i = v4;
  *v9 = i;
  *(i + 8) = v9;
  return i;
}

void CA::OGL::QuadNode::compute_dod(CA::OGL::QuadNode *this, CA::Bounds *a2, double *a3, int32x4_t a4, int32x4_t a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = *(this + 3);
  v8 = *(v7 + 152);
  if (v8 < 0)
  {
    (*(*v7 + 40))(*(this + 3), v7 + 144);
    v8 = *(v7 + 152);
  }

  v9 = *(v7 + 156);
  if (v8 <= v9)
  {
    v10 = *(v7 + 156);
  }

  else
  {
    v10 = v8;
  }

  a4.i32[0] = 1073741822;
  a5.i32[0] = v10;
  v11 = vdupq_lane_s32(*&vcgtq_s32(a5, a4), 0);
  v12 = *(v7 + 144);
  v13.i64[0] = v12;
  v13.i64[1] = SHIDWORD(v12);
  v14 = vbslq_s8(v11, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v13));
  v15 = v8;
  v16 = v9;
  if (v10 > 1073741822)
  {
    v15 = 1.79769313e308;
    v16 = 1.79769313e308;
  }

  v20 = v14;
  v21.f64[0] = v15;
  v21.f64[1] = v16;
  CA::Rect::apply_transform(&v20, *(this + 10), a3);
  v17 = vceqzq_f64(v21);
  if ((vorrq_s8(vdupq_laneq_s64(v17, 1), v17).u64[0] & 0x8000000000000000) != 0 || (v18 = vceqq_f64(v21, v21), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v18), 1), v18).u64[0] & 0x8000000000000000) != 0))
  {
    *a2 = 0;
    *(a2 + 1) = 0;
  }

  else
  {
    v19 = vcvtmq_s64_f64(vmaxnmq_f64(v20, vdupq_n_s64(0xC1BFFFFFFF000000)));
    *a2 = vuzp1q_s32(v19, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v20, v21), vdupq_n_s64(0x41C0000000000000uLL))), v19));
  }
}

uint64_t CA::OGL::QuadNode::propagate_roi(float64x2_t **this, const CA::Bounds *a2, const double *a3, int32x4_t a4, int32x4_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  if (v6 <= v7)
  {
    v8 = *(a2 + 3);
  }

  else
  {
    v8 = *(a2 + 2);
  }

  a4.i32[0] = 1073741822;
  a5.i32[0] = v8;
  v9.i64[0] = *a2;
  v9.i64[1] = HIDWORD(*a2);
  v10 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(a5, a4), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v9));
  v11 = v6;
  v12 = v7;
  if (v8 > 1073741822)
  {
    v11 = 1.79769313e308;
    v12 = 1.79769313e308;
  }

  v18 = v10;
  v19.f64[0] = v11;
  v19.f64[1] = v12;
  CA::Rect::unapply_transform(&v18, this[10], a3);
  v13 = vceqzq_f64(v19);
  if ((vorrq_s8(vdupq_laneq_s64(v13, 1), v13).u64[0] & 0x8000000000000000) != 0 || (v14 = vceqq_f64(v19, v19), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v14), 1), v14).u64[0] & 0x8000000000000000) != 0))
  {
    v17 = 0uLL;
  }

  else
  {
    v15 = vcvtmq_s64_f64(vmaxnmq_f64(v18, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v17 = vuzp1q_s32(v15, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v18, v19), vdupq_n_s64(0x41C0000000000000uLL))), v15));
  }

  result = (*(*&this[3]->f64[0] + 56))(this[3], &v17);
  *(this[3][14].f64 + 4) |= 0x200uLL;
  if ((this[30] & 0xF) == 2)
  {
    *(this[3][14].f64 + 4) |= 0x4000000000uLL;
  }

  return result;
}

uint64_t CA::OGL::QuadNode::propagate_soft_roi(float64x2_t **this, const CA::Bounds *a2, const double *a3, int32x4_t a4, int32x4_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  if (v6 <= v7)
  {
    v8 = *(a2 + 3);
  }

  else
  {
    v8 = *(a2 + 2);
  }

  a4.i32[0] = 1073741822;
  a5.i32[0] = v8;
  v9.i64[0] = *a2;
  v9.i64[1] = HIDWORD(*a2);
  v10 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(a5, a4), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v9));
  v11 = v6;
  v12 = v7;
  if (v8 > 1073741822)
  {
    v11 = 1.79769313e308;
    v12 = 1.79769313e308;
  }

  v21 = v10;
  v22.f64[0] = v11;
  v22.f64[1] = v12;
  CA::Rect::unapply_transform(&v21, this[10], a3);
  v13 = vceqzq_f64(v22);
  v14 = vorrq_s8(vdupq_laneq_s64(v13, 1), v13).u64[0];
  v15 = 0uLL;
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = vceqq_f64(v22, v22);
    if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v16), 1), v16).u64[0] & 0x8000000000000000) == 0)
    {
      v17 = vcvtmq_s64_f64(vmaxnmq_f64(v21, vdupq_n_s64(0xC1BFFFFFFF000000)));
      v15 = vuzp1q_s32(v17, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v21, v22), vdupq_n_s64(0x41C0000000000000uLL))), v17));
    }
  }

  v18 = vextq_s8(v15, v15, 8uLL).u64[0];
  v19 = &this[3][13];

  return CA::BoundsImpl::Union(v19, *v15.i8, v18);
}

uint64_t CA::OGL::CacheNode::grow_roi(uint64_t this, int32x2_t *a2)
{
  v2 = **(this + 8);
  if ((*(v2 + 873) & 0x10) != 0)
  {
    return this;
  }

  v4 = this;
  if (*(this + 240))
  {
    v5 = *a2->i8;
    if ((*(this + 152) & 0x80000000) != 0)
    {
      v29 = *a2->i8;
      (*(*this + 40))(this, this + 144);
      v5 = v29;
    }

    v6 = vextq_s8(v5, v5, 8uLL).u64[0];
    v7 = *(v4 + 152);
    v8 = vclez_s32(v6);
    v9 = vpmax_u32(v8, v8).u32[0];
    v10 = vclez_s32(v7);
    v11 = vpmax_u32(v10, v10).u32[0];
    if ((v9 & 0x80000000) != 0)
    {
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_11;
      }

      v5.i64[0] = *(v4 + 144);
    }

    else
    {
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_11;
      }

      v12 = *(v4 + 144);
      v13 = vadd_s32(*v5.i8, v6);
      *v5.i8 = vmin_s32(*v5.i8, v12);
      v7 = vsub_s32(vmax_s32(v13, vadd_s32(v12, v7)), *v5.i8);
    }

    v5.u64[1] = v7;
LABEL_11:
    v30 = v5;
    this = (*(***(v4 + 8) + 232))(**(v4 + 8), 7);
    if (v30.i32[2] <= this && v30.i32[3] <= this)
    {
      *a2->i8 = v30;
      return this;
    }
  }

  this = CA::OGL::Context::cache_fetch(v2, (v4 + 248));
  if (this && (v15 = *(this + 48)) != 0)
  {
    v16 = v15[3];
    v17 = vextq_s8(v16, v16, 8uLL).u64[0];
    v18 = a2[1];
    v19 = vorr_s8(vcltz_s32(v18), vclez_s32(v17));
    v20 = 1024;
    if ((vpmax_u32(v19, v19).u32[0] & 0x80000000) == 0)
    {
      v21 = vand_s8(vcge_s32(vadd_s32(*v16.i8, v17), vadd_s32(*a2, v18)), vcge_s32(*a2, *v16.i8));
      if (vpmin_u32(v21, v21).i32[0] >= 0)
      {
        v20 = 1024;
      }

      else
      {
        v20 = 64;
      }
    }
  }

  else
  {
    v20 = 64;
  }

  v22 = *(v4 + 152);
  if (v22 < 0)
  {
    this = (*(*v4 + 40))(v4, v4 + 144);
    v22 = *(v4 + 152);
  }

  v23 = a2[1].i32[0];
  if (v22 - v23 <= v20)
  {
    v24 = *(v4 + 144);
  }

  else
  {
    v24 = a2->i32[0] & -v20;
    v22 = ((v20 + v23 + a2->i32[0] - 1) & -v20) - v24;
  }

  a2->i32[0] = v24;
  a2[1].i32[0] = v22;
  v25 = *(v4 + 156);
  v26 = a2[1].i32[1];
  if (v25 - v26 <= v20)
  {
    a2->i32[1] = *(v4 + 148);
  }

  else
  {
    v27 = a2->i32[1];
    v28 = v27 & -v20;
    a2->i32[1] = v28;
    v25 = ((v20 + v26 + v27 - 1) & -v20) - v28;
  }

  a2[1].i32[1] = v25;
  return this;
}

uint64_t CA::OGL::CacheNode::propagate_roi(CA::OGL::CacheNode *this, int32x4_t *a2, double a3, double a4, int32x4_t a5, int32x4_t a6)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v27 = *a2;
  v8 = *(this + 61);
  if (v8 != 1.0)
  {
    v9 = v7.i32[3];
    if (v7.i32[2] > v7.i32[3])
    {
      v9 = v7.i32[2];
    }

    a5.i32[0] = 1073741822;
    a6.i32[0] = v9;
    v10.i64[0] = v7.i32[0];
    v10.i64[1] = v7.i32[1];
    v11 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(a6, a5), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v10));
    v10.i64[0] = v7.i32[2];
    v10.i64[1] = v7.i32[3];
    v12 = vcvtq_f64_s64(v10);
    v13 = vdup_n_s32(v9 > 1073741822);
    v10.i64[0] = v13.u32[0];
    v10.i64[1] = v13.u32[1];
    v14 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v15 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v10, 0x3FuLL)), v14, v12);
    v16 = v8;
    v14.f64[0] = 1.79769313e308;
    v17 = vdupq_lane_s64(vcgtq_f64(v14, v15).i64[0], 0);
    v18.i64[1] = v11.i64[1];
    *v18.i64 = v8 * *v11.i64;
    v19 = vbslq_s8(v17, v18, v11);
    v18.i64[1] = *&v15.f64[1];
    *v18.i64 = v16 * v15.f64[0];
    v20 = vbslq_s8(v17, v18, v15);
    if (v20.f64[1] < 1.79769313e308)
    {
      v19.f64[1] = vmuld_lane_f64(v16, v19, 1);
      v20.f64[1] = v20.f64[1] * v16;
    }

    v21 = vceqzq_f64(v20);
    if ((vorrq_s8(vdupq_laneq_s64(v21, 1), v21).u64[0] & 0x8000000000000000) != 0 || (v22 = vceqq_f64(v20, v20), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v22), 1), v22).u64[0] & 0x8000000000000000) != 0))
    {
      v27 = 0uLL;
    }

    else
    {
      v23 = vmaxnmq_f64(v19, vdupq_n_s64(0xC1BFFFFFFF000000));
      v24 = vminnmq_f64(vaddq_f64(v19, v20), vdupq_n_s64(0x41C0000000000000uLL));
      v25 = vcvtmq_s64_f64(v23);
      v27 = vuzp1q_s32(v25, vsubq_s64(vcvtpq_s64_f64(v24), v25));
    }
  }

  result = (*(**(this + 3) + 56))(*(this + 3), &v27);
  *(*(this + 3) + 228) = *(*(this + 3) + 228) & 0xF8000000FFFFFFFFLL | ((HIDWORD(*(this + 228)) & 0x7FFFFFFLL) << 32);
  *(*(this + 3) + 228) |= 0x40000000000uLL;
  *(*(this + 3) + 228) = *(*(this + 3) + 228) & 0xFFFFFFFFFFFFFDFFLL | (((*(this + 228) >> 9) & 1) << 9);
  *(*(this + 3) + 228) = *(*(this + 3) + 228) & 0xFFFFFFFFFFFFC3FFLL | (((*(this + 228) >> 10) & 0xFLL) << 10);
  return result;
}

uint64_t CA::WindowServer::Server::set_sdr_nits(CA::WindowServer::Server *this, float a2)
{
  v12 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((this + 24));
  v4 = *(this + 12);
  if (v4[5] && (v5 = (*(*v4 + 288))(v4), v4 = *(this + 12), v5))
  {
    (*(*v4 + 960))(v4, a2);
    CA::WindowServer::Server::invalidate(this, *(*(this + 12) + 216));
    if (xmmword_1ED4E988C == 1)
    {
      if (x_log_get_CADebug(void)::once != -1)
      {
        dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
      }

      v9 = x_log_get_CADebug(void)::log;
      if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_183AA6000, v9, OS_LOG_TYPE_DEFAULT, "kUpdateReasonDisplayBrightness set_sdr_nits_1", &v10, 2u);
      }
    }

    v10 = 0;
    v11 = vdupq_n_s64(8uLL);
    (*(*this + 176))(this, &v10, 0.0);
  }

  else if ((*(*v4 + 960))(v4, a2))
  {
    if (xmmword_1ED4E988C == 1)
    {
      if (x_log_get_CADebug(void)::once != -1)
      {
        dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
      }

      v8 = x_log_get_CADebug(void)::log;
      if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_183AA6000, v8, OS_LOG_TYPE_DEFAULT, "kUpdateReasonDisplayBrightness set_sdr_nits_2", &v10, 2u);
      }
    }

    v10 = 0;
    v11 = vdupq_n_s64(8uLL);
    (*(*this + 176))(this, &v10, 0.0);
    v6 = (*(**(this + 12) + 1000))();
    if (CA::OGL::Performance::invalidates_screen_on_edr_change(v6))
    {
      CA::WindowServer::Server::invalidate(this, *(*(this + 12) + 216));
    }
  }

  if (!(*(*this + 336))(this))
  {
    *(*(this + 12) + 904) |= 0x1000u;
  }

  return pthread_mutex_unlock((this + 24));
}

uint64_t CA::WindowServer::IOMFBDisplay::set_sdr_nits(CA::WindowServer::IOMFBDisplay *this, float a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = (this + 26444);
  v5 = (*(this + 29568) & 1) != 0 || CA::WindowServer::Display::Mode::is_hdr((this + 656));
  if (*(v4 + 3111) == 1)
  {
    CA::WindowServer::IOMFBDisplay::save_brightness_preferences(this, 1);
    *(v4 + 3111) = 0;
  }

  *(this + 3348) = 0;
  v6 = (*(*this + 952))(this);
  v7 = CA::WindowServer::Display::edr_headroom(this) * v6;
  v8 = CA::WindowServer::Display::edr_headroom(this) * a2;
  if (v7 != v8 && ((v9 = v4[98], v7 >= v9) ? (v10 = v8 < v9) : (v10 = 1), v10))
  {
    v11 = 1;
    *(v4 + 3107) = 1;
  }

  else
  {
    v11 = 0;
  }

  *v4 = a2;
  if (*(v4 + 3140) == 1 && a2 != 0.0 && (*(v4 + 3141) & 1) == 0)
  {
    *(v4 + 3141) = 1;
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v12 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_183AA6000, v12, OS_LOG_TYPE_DEFAULT, "DBVFlashWorkaround: _seen_brightness_after_power_cycle", v14, 2u);
    }
  }

  (*(*this + 1104))(this);
  return (v11 | v5) & 1;
}

uint64_t CA::WindowServer::IOMFBServer::brightness_capabilities(CA::WindowServer::IOMFBServer *this)
{
  v1 = *(this + 12);
  os_unfair_lock_lock((v1 + 27472));
  v2 = *(v1 + 27480);
  os_unfair_lock_unlock((v1 + 27472));
  return v2;
}

BOOL CA::OGL::Performance::invalidates_screen_on_edr_change(CA::OGL::Performance *this)
{
  if (BYTE6(xmmword_1ED4E97EC) != 1)
  {
    return 0;
  }

  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  return *&dword_1ED4E963C == 7;
}

uint64_t CA::WindowServer::IOMFBDisplay::set_brightness_limit(CA::WindowServer::IOMFBDisplay *this, float a2)
{
  v2 = *(this + 29568);
  if (v2 == 1)
  {
    v3 = 0;
    *(this + 6612) = a2;
    if (a2 < 1000.0 && (*(this + 26632) & 1) != 0)
    {
      v3 = *(this + 6611) == 100.0;
    }

    if (*(this + 26633) != v3)
    {
      *(this + 26633) = v3;
      CA::WindowServer::Display::post_display_changed(this);
    }
  }

  return v2;
}

void CA::WindowServer::IOMFBServer::set_edr_properties(CA::WindowServer::IOMFBServer *this, int a2, float a3, float a4, float a5)
{
  v27 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((this + 856));
  v10 = CA::WindowServer::Display::edr_headroom(*(this + 12));
  memset(buf, 0, sizeof(buf));
  (*(**(this + 12) + 1216))(buf);
  if (v10 == a3 || fabs(a3 + -1.0) >= 0.001)
  {
    if ((*(**(this + 12) + 1240))(*(this + 12)))
    {
      v11 = vabds_f32(v10, a3) < 0.000001;
    }

    else
    {
      v12 = powf(v10, 0.45455);
      v11 = vabds_f32(v12, powf(a3, 0.45455)) <= 0.0019531;
    }

    if (v11 && a2 != 0)
    {
      if ((a4 != 0.0 || *&buf[8] != 0.0) && (a4 != 0.0 && *&buf[8] == 0.0 || (vabds_f32(*&buf[8], a4) / *&buf[8]) > 0.01) || (a5 != 0.0 || *&buf[12] != 0.0) && (a5 != 0.0 && *&buf[12] == 0.0 || (vabds_f32(*&buf[12], a5) / *&buf[12]) > 0.01))
      {
        goto LABEL_25;
      }

LABEL_17:
      v14 = 0;
      goto LABEL_28;
    }

    if (v11)
    {
      goto LABEL_17;
    }
  }

LABEL_25:
  v15 = *(this + 12);
  CA::WindowServer::Display::initialize_edr_state(v15);
  v17 = *(v15 + 704);
  if (v17)
  {
    atomic_store(LODWORD(a3), v17);
  }

  *&buf[8] = a4;
  *&buf[12] = a5;
  v18 = *(this + 12);
  v24 = *buf;
  v25 = *&buf[16];
  (*(*v18 + 1224))(v18, &v24, v16);
  v14 = 1;
LABEL_28:
  if (BYTE11(xmmword_1ED4E980C) == 1)
  {
    kdebug_trace();
  }

  v19 = pthread_mutex_unlock((this + 856));
  if (v14)
  {
    if (CA::OGL::Performance::invalidates_screen_on_edr_change(v19))
    {
      CA::WindowServer::Server::invalidate(this, *(*(this + 12) + 216));
    }

    *(*(this + 12) + 904) |= 0x2000u;
    if (xmmword_1ED4E988C == 1)
    {
      if (x_log_get_CADebug(void)::once != -1)
      {
        dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
      }

      v23 = x_log_get_CADebug(void)::log;
      if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_183AA6000, v23, OS_LOG_TYPE_DEFAULT, "kUpdateReasonDisplayBrightness set_edr_properties", buf, 2u);
      }
    }

    *buf = 0;
    *&buf[8] = vdupq_n_s64(8uLL);
    (*(*this + 176))(this, buf, 0.0);
    (*(**(this + 12) + 1000))(*(this + 12), 1, v20);
    if (CA::OGL::AsynchronousDispatcher::dispatcher(void)::once[0] != -1)
    {
      dispatch_once(CA::OGL::AsynchronousDispatcher::dispatcher(void)::once, &__block_literal_global_1819);
    }

    v21 = CA::OGL::AsynchronousDispatcher::dispatcher(void)::dispatcher;
    os_unfair_lock_lock((CA::OGL::AsynchronousDispatcher::dispatcher(void)::dispatcher + 4));
    for (i = *(v21 + 8); i; i = i[28])
    {
      (*(*i + 32))(i);
    }

    os_unfair_lock_unlock((v21 + 4));
  }
}

__n128 CA::WindowServer::IOMFBDisplay::set_luminance(uint64_t a1, __n128 *a2)
{
  v2 = a2[1].n128_u64[0];
  result = *a2;
  *(a1 + 26520) = *a2;
  *(a1 + 26536) = v2;
  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::set_low_ambient_adaptation_strength(CA::WindowServer::IOMFBDisplay *this, float a2)
{
  v2 = (this + 26468);
  if (*(this + 29568) != 1 || *v2 == a2)
  {
    return 0;
  }

  *v2 = a2;
  return 1;
}

uint64_t CA::WindowServer::IOMFBDisplay::set_high_ambient_adaptation_strength(CA::WindowServer::IOMFBDisplay *this, float a2)
{
  v2 = (this + 26476);
  if (*(this + 29568) != 1 || *v2 == a2)
  {
    return 0;
  }

  *v2 = a2;
  return 1;
}

uint64_t CA::WindowServer::IOMFBDisplay::set_contrast_preservation(CA::WindowServer::IOMFBDisplay *this, float a2)
{
  v2 = (this + 26484);
  if (*(this + 29568) != 1 || *v2 == a2)
  {
    return 0;
  }

  *v2 = a2;
  return 1;
}

uint64_t CA::WindowServer::IOMFBDisplay::set_indicator_brightness(CA::WindowServer::IOMFBDisplay *this, float a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = (this + 26496);
  if (*(this + 29584) == 1 && (*(this + 29585) & 1) == 0 && ((LODWORD(a2) & 0x7FFFFFFFu) - 0x800000) >> 24 <= 0x7E)
  {
    *(this + 29585) = 1;
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v4 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = a2;
      _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "DBVFlashWorkaround: _seen_brightness_after_power_cycle. indicator nits: %g", &v6, 0xCu);
    }
  }

  if (*(v3 + 3072) != 1 || *v3 == a2)
  {
    return 0;
  }

  *v3 = a2;
  return 1;
}

uint64_t CA::WindowServer::IOMFBDisplay::set_indicator_brightness_limit(CA::WindowServer::IOMFBDisplay *this, float a2)
{
  v2 = (this + 26504);
  if (*(this + 29568) != 1 || *v2 == a2)
  {
    return 0;
  }

  *v2 = a2;
  return 1;
}

uint64_t CA::WindowServer::IOMFBDisplay::set_contrast_enhancer_strength(CA::WindowServer::IOMFBDisplay *this, float a2)
{
  v2 = (this + 26460);
  if (*(this + 29568) != 1 || *v2 == a2)
  {
    return 0;
  }

  *v2 = a2;
  return 1;
}

void CA::WindowServer::IOMFBDisplay::append_brightness_tx_callback(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  os_unfair_lock_lock((a1 + 26072));
  v4 = *(a1 + 26112);
  v5 = *(a1 + 26104);
  v6 = &v4[-v5];
  v7 = (&v4[-v5] >> 3) + 1;
  v8 = *(a1 + 26128);
  if (v8 < v7)
  {
    v9 = *(a1 + 26120);
    v10 = (v8 + 1) | ((v8 + 1) >> 1) | (((v8 + 1) | ((v8 + 1) >> 1)) >> 2);
    v11 = v10 | (v10 >> 4) | ((v10 | (v10 >> 4)) >> 8);
    v12 = v11 | (v11 >> 16) | ((v11 | (v11 >> 16)) >> 32);
    if (v12 + 1 > v7)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = v7;
    }

    v14 = malloc_type_malloc(8 * v13, 0x80040B8603338uLL);
    v15 = v14;
    v16 = *(a1 + 26104);
    v17 = *(a1 + 26112);
    if (v16 != v17)
    {
      v18 = v14;
      do
      {
        v19 = *v16++;
        *v18++ = v19;
      }

      while (v16 != v17);
    }

    if (v5 != v9)
    {
      free(*(a1 + 26104));
    }

    *(a1 + 26104) = v15;
    v4 = &v6[v15];
    *(a1 + 26112) = &v6[v15];
    *(a1 + 26128) = v13;
  }

  *v4 = v3;
  *(a1 + 26112) += 8;

  os_unfair_lock_unlock((a1 + 26072));
}

BOOL CACornerRadiiEqualToRadii(double *a1, double *a2)
{
  if (a1[6] != a2[6] || a1[7] != a2[7])
  {
    return 0;
  }

  if (a1[4] != a2[4] || a1[5] != a2[5])
  {
    return 0;
  }

  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[3] == a2[3])
  {
    return a1[2] == a2[2];
  }

  return 0;
}

uint64_t CAObject_resolveInstanceMethod(objc_class *a1, const void *a2)
{
  result = classDescription(a1);
  if (result)
  {
    v4 = result;
    while (1)
    {
      v5 = v4[14];
      if (v5)
      {
        Value = CFDictionaryGetValue(v5, a2);
        if (Value)
        {
          break;
        }
      }

      v4 = *v4;
      if (!v4)
      {
        return 0;
      }
    }

    v7 = Value;
    v8 = v4[1];
    v9 = Value[1];
    if (v9 == a2)
    {
      v10 = [v8 CA_setterForProperty:Value];
    }

    else
    {
      v10 = [v8 CA_getterForProperty:Value];
    }

    if (!v10)
    {
      return 0;
    }

    class_addMethod(v8, a2, v10, (&method_encodings[2 * *(v7 + 2)])[v9 != a2]);
    return 1;
  }

  return result;
}

IMP cons_CALayer_kCAValueBool(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e8_B16__0_8l;
    v4 = ___ZL25cons_CALayer_kCAValueBooljb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e11_v20__0_8B16l;
    v4 = ___ZL25cons_CALayer_kCAValueBooljb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

uint64_t CASupportsFeature(unint64_t a1)
{
  if (a1 > 0x10)
  {
LABEL_10:
    v1 = 0;
    return v1 & 1;
  }

  if (((1 << a1) & 0x16BFE) != 0)
  {
LABEL_3:
    v1 = 1;
    return v1 & 1;
  }

  if (a1 != 10)
  {
    if (a1 == 15)
    {
      if (CADeviceSupportsUniversalCompression::once != -1)
      {
        dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
      }

      v1 = CADeviceSupportsUniversalCompression::universal;
      return v1 & 1;
    }

    goto LABEL_10;
  }

  if (CADeviceSupportsPreLayoutLinkedOnCheck::once[0] != -1)
  {
    dispatch_once(CADeviceSupportsPreLayoutLinkedOnCheck::once, &__block_literal_global_459);
  }

  if (CADeviceSupportsPreLayoutLinkedOnCheck::enabled != 1)
  {
    goto LABEL_3;
  }

  return dyld_program_sdk_at_least();
}

uint64_t __CADeviceSupportsPreLayoutLinkedOnCheck_block_invoke()
{
  result = _os_feature_enabled_impl();
  CADeviceSupportsPreLayoutLinkedOnCheck::enabled = result;
  return result;
}

uint64_t __CADeviceSupportsPreLayout_block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    result = CASupportsFeature(0xAuLL);
  }

  CADeviceSupportsPreLayout::enabled = result;
  return result;
}

CFTypeRef insertAtom(unsigned int a1, CFTypeRef cf)
{
  v4 = atomDict;
  v5 = CFRetain(cf);
  v6 = a1;
  hash_table_modify(v4, v5, a1, 0);
  v7 = atomArraySize;
  if (atomArraySize <= a1)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v9 = malloc_type_zone_calloc(malloc_zone, 1uLL, 16 * v7, 0x56C5DE4BuLL);
    if (v9)
    {
      v10 = v9;
      memcpy(v9, atomArray, 8 * v7);
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, atomArray);
      atomArray = v10;
      atomArraySize *= 2;
    }
  }

  result = CFRetain(cf);
  *(atomArray + 8 * v6) = result;
  return result;
}

SEL defaultSetter(const char *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = strlen(a1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v6 - ((v3 + 20) & 0xFFFFFFFFFFFFFFF0);
  bzero(v4, v3 + 5);
  *v4 = 25971;
  v4[2] = 116;
  memcpy(v4 + 3, a1, v2);
  v4[3] = __toupper(v4[3]);
  *&v4[v2 + 3] = 58;
  return sel_registerName(v4);
}

void CA::OGL::Context::cache_set_surface(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 48);
  if (v4 != a3)
  {
    if (v4)
    {
      *(a1 + 824) -= *(v4 + 60) * *(v4 + 56) * (*(v4 + 146) & 0x1F);
      CA::OGL::Context::release_surface(a1, v4);
      *(a2 + 48) = 0;
    }

    if (a3 && (*(a1 + 873) & 0x10) == 0)
    {
      v7 = *(a3 + 60) * *(a3 + 56) * (*(a3 + 146) & 0x1F);
      v8 = *(a1 + 824) + v7;
      v9 = *(a1 + 832);
      if (v8 > v9)
      {
        v10 = *(a1 + 808);
        if (v10 != a2)
        {
          v11 = v7;
          while (1)
          {
            v12 = *(a1 + 824);
            if (*(v10 + 6) == *(a2 + 24) || (v12 + v11) <= *(a1 + 832))
            {
              break;
            }

            v13 = *v10;
            v14 = v10[6];
            if (v14)
            {
              *(a1 + 824) = v12 - *(v14 + 60) * *(v14 + 56) * (*(v14 + 146) & 0x1F);
              CA::OGL::Context::release_surface(a1, v14);
              v16 = *v10;
              v15 = v10[1];
              *(v16 + 8) = v15;
              *v15 = v16;
              *v10 = v10;
              v10[1] = v10;
              if (x_malloc_get_zone::once != -1)
              {
                dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
              }

              malloc_zone_free(malloc_zone, v10);
            }

            v10 = v13;
            if (v13 == a2)
            {
              v12 = *(a1 + 824);
              break;
            }
          }

          v9 = *(a1 + 832);
          v8 = v12 + v11;
        }
      }

      if (v8 <= v9)
      {
        ++*a3;
        *(a2 + 48) = a3;
        *(a1 + 824) = v8;
      }
    }
  }
}

void CA::OGL::BlurState::downsample_box_2(float32x2_t *this, float a2, float a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = *this;
  if (this[15].i8[0])
  {
    v7 = 16;
  }

  else
  {
    v7 = 32;
  }

  if (CA::OGL::PingPongState::attach_dest(this, 1, v7))
  {
    v8 = this[4].i16[0];
    v9 = v8;
    v10 = &this[(v8 & 1) + 11];
    if (v9 < 0)
    {
      v10 = this + 1;
    }

    v11 = *v10;
    v12 = *(*v10 + 48);
    v13 = *(*v10 + 52);
    v19[0] = v12;
    v19[1] = v13;
    CA::OGL::Context::bind_surface(*this, v11, 0, 1u, 1, 0.0);
    v14 = 32.0;
    if (this[15].i8[0])
    {
      v14 = 16.0;
    }

    CA::OGL::BlurState::process_edges(this, v14, a2, a3, v19);
    *(*(v6 + 16) + 16) = 1;
    *(v6 + 144) = 0;
    *(v6 + 112) = v6 + 1386;
    *(v6 + 120) = xmmword_183E20E50;
    v18 = 0;
    CA::OGL::PingPongState::render_pass(this, v12, v13, 0, &v18, a2, a3, 0.0, 0.0);
    CA::OGL::Context::array_flush(v6);
    v15 = this[4].i16[0];
    v16 = v15;
    v17 = &this[(v15 & 1) + 11];
    if (v16 < 0)
    {
      v17 = &this[1];
    }

    CA::OGL::Context::unbind_surface(*this, *v17, 0);
    *(*(v6 + 16) + 16) = 0;
    CA::OGL::Context::pop_surface(*this);
    ++this[4].i16[0];
  }
}

void CA::OGL::MaskCorners::begin(float32x2_t *this, CA::OGL::ImagingNode *a2, double *a3)
{
  v156 = *MEMORY[0x1E69E9840];
  v5 = **(a2 + 1);
  this[24] = 0;
  v6 = *(v5 + 672);
  if (v6)
  {
    LOBYTE(v6) = 4 * ((*(v6 + 147) & 0x60) != 0);
  }

  this[30].i8[4] = this[30].i8[4] & 0xFB | v6;
  v7 = *(a2 + 2);
  v8 = *(v7 + 24);
  v9 = *(v8 + 42) & 0xF;
  this[25] = 0;
  this[30].i32[0] = 54;
  v10 = *(v8 + 136);
  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = v10[7];
  if (!v11)
  {
    goto LABEL_14;
  }

  this[25] = (*(*v11 + 80))(v11);
  v10 = *(*(v7 + 24) + 136);
  __asm { FMOV            V1.2D, #0.5 }

  v16 = 0uLL;
  if (v10)
  {
    v17 = v10[8];
    if (v17)
    {
      _Q1 = 0uLL;
      if (*(v17 + 16) >= 4u)
      {
        _Q1 = *(v17 + 24);
        v16 = vsubq_f64(*(v17 + 40), _Q1);
      }
    }
  }

  *this[26].f32 = _Q1;
  *this[28].f32 = v16;
  if ((*(v5 + 872) & 2) != 0)
  {
    this[30].i32[0] ^= 0x800u;
  }

  if (*(*(v7 + 16) + 24))
  {
    this[30].i32[0] ^= 0x800u;
  }

  if (v10)
  {
LABEL_14:
    v18 = v10[9];
    this[30].i8[4] = this[30].i8[4] & 0xF7 | (8 * (v18 != 0));
    if (v18)
    {
      v19 = *(*(v7 + 24) + 136);
      if (v19)
      {
        v20 = *(v19 + 72);
        v21 = 0.0;
        if (v20 && *(v20 + 16) == 8)
        {
          v22 = 0;
          v21 = *(v20 + 24);
          v23 = v20 + 32;
          do
          {
            if (v21 <= *(v23 + v22))
            {
              v21 = *(v23 + v22);
            }

            v22 += 8;
          }

          while (v22 != 56);
        }

        v24 = *(v19 + 72);
      }

      else
      {
        v24 = 0;
        v21 = 0.0;
      }

      v25 = 0;
      v9 = 0;
      v26 = v24 + 24;
      v27 = vdupq_lane_s64(*&v21, 0);
      do
      {
        v28 = *(v26 + 16 * dword_183E21930[v25]);
        this[v25 + 9] = vcvt_f32_f64(vdivq_f64(v27, v28));
        v29 = v28.f64[0] != 0.0;
        if (v28.f64[1] == 0.0)
        {
          v29 = 0;
        }

        v9 |= v29 << v25++;
      }

      while (v25 != 4);
    }
  }

  else
  {
LABEL_23:
    this[30].i8[4] &= ~8u;
  }

  if (v9)
  {
    this[30].i8[4] = this[30].i8[4] & 0xFC | *(*(v7 + 24) + 44) & 3;
    v30 = *(v7 + 24);
    v31 = *(v30 + 88);
    v149[0] = *(v30 + 72);
    v149[1] = v31;
    CA::Rect::apply_transform(v149, *(a2 + 10), a3);
    v147 = 0;
    v148 = 0;
    CA::Shape::get_bounds(*(*(v5 + 656) + 8), &v147);
    v34 = *(v5 + 672);
    v35 = (v34 ? v34 + 48 : v5 + 608);
    v36 = vclez_s32(v148);
    if ((vpmax_u32(v36, v36).u32[0] & 0x80000000) == 0)
    {
      v37 = v35[1];
      v38 = vclez_s32(v37);
      if ((vpmax_u32(v38, v38).u32[0] & 0x80000000) == 0)
      {
        v39 = vmax_s32(v147, *v35);
        v40 = vsub_s32(vmin_s32(vadd_s32(v147, v148), vadd_s32(*v35, v37)), v39);
        v41 = vclez_s32(v40);
        if ((vpmax_u32(v41, v41).u32[0] & 0x80000000) == 0)
        {
          v42 = *(a2 + 10);
          v43 = *(v7 + 24);
          v44 = *(v43 + 136);
          v45 = v40;
          if (v44)
          {
            v46 = *(v44 + 232);
            v47 = this[30].i8[4];
            if ((v47 & 8) != 0)
            {
              v48 = *(v44 + 72);
              v46 = 0.0;
              if (v48)
              {
                if (*(v48 + 16) == 8)
                {
                  v49 = 0;
                  v46 = *(v48 + 24);
                  v50 = v48 + 32;
                  do
                  {
                    if (v46 <= *(v50 + v49))
                    {
                      v46 = *(v50 + v49);
                    }

                    v49 += 8;
                  }

                  while (v49 != 56);
                }
              }
            }
          }

          else
          {
            v47 = this[30].i8[4];
            v46 = 0.0;
          }

          v51 = 0;
          v52 = v40.i32[1];
          v53 = v46 * 1.528665;
          if ((v47 & 3) == 0)
          {
            v53 = v46;
          }

          v54 = vdupq_lane_s64(*&v53, 0);
          __asm { FMOV            V5.2D, #1.0 }

          v56 = vdivq_f64(_Q5, v54);
          v57 = vmlaq_f64(vdupq_n_s64(0x400721E8A7A4B61BuLL), v56, vmulq_f64(*(v43 + 88), vdupq_n_s64(0xBFF721E8A7A4B61BLL)));
          v58 = vbslq_s8(vcgtq_f64(v57, _Q5), _Q5, v57);
          this[21] = vcvt_f32_f64(vbicq_s8(v58, vcltzq_f64(v58)));
          v59 = *(v43 + 88);
          __asm { FMOV            V2.2D, #0.5 }

          v61 = vmlaq_f64(_Q2, _Q2, v59);
          v62 = vbslq_s8(vcgtq_f64(v61, v54), v54, v61);
          this[22] = vcvt_f32_f64(vmulq_f64(v62, v56));
          *v61.f64 = 1.0 / *(v42 + 120);
          v63 = vcvtq_f64_f32(vcvt_f32_f64(v62));
          v57.f64[0] = *v42;
          v64.f64[0] = *(v42 + 32);
          v65 = *v61.f64;
          v64.f64[1] = *(v42 + 8);
          v66 = vdupq_lane_s64(COERCE__INT64(*v61.f64), 0);
          v67 = vmulq_n_f64(v64, v65);
          v70.i64[1] = *(v42 + 40);
          v68 = vmulq_n_f64(v70, v65);
          v69 = 0x7F0000007FLL;
          *v70.i8 = vneg_f32(0x7F0000007FLL);
          do
          {
            if (v51)
            {
              _ZF = v51 == 3;
            }

            else
            {
              _ZF = 1;
            }

            v72 = _ZF;
            v73.i64[0] = v72;
            v73.i64[1] = v51 < 2;
            v74 = vandq_s8(v63, vcgezq_s64(vshlq_n_s64(v73, 0x3FuLL)));
            *&v74.f64[0] = vcvt_f32_f64(vmlaq_f64(vmulq_f64(v67, vextq_s8(v74, v74, 8uLL)), v74, v68));
            this[v51 + 1] = *&v74.f64[0];
            *v70.i8 = vbsl_s8(vcgt_f32(*&v74.f64[0], *v70.i8), *v70.i8, *&v74.f64[0]);
            v69 = vbsl_s8(vcgt_f32(v69, *&v74.f64[0]), v69, *&v74.f64[0]);
            ++v51;
          }

          while (v51 != 4);
          v75 = 0;
          v76 = 0;
          v77 = vsub_s32(vcvt_s32_f32(vrndp_f32(v69)), vcvt_s32_f32(vrndm_f32(*v70.i8)));
          *this = v77;
          v78 = this + 23;
          v79 = *(v43 + 72);
          v80 = vsubq_f64(v79, v62);
          v81 = *(v43 + 80);
          v82 = *v42;
          v83 = *(v42 + 32);
          v84 = *(v42 + 96);
          v85 = vclez_s32(v77);
          v86 = vpmax_u32(v85, v85).u32[0];
          v87 = vclez_s32(v45);
          *v33.i8 = vadd_s32(v39, v45);
          v88 = vaddq_f64(v80, v59);
          v89 = &this[14];
          v90 = vnegq_f64(vcvtq_f64_f32(this[1]));
          v91 = vpmax_u32(v87, v87).u32[0];
          do
          {
            if (v75)
            {
              v92 = v88.f64[0];
            }

            else
            {
              v92 = v79.f64[0];
            }

            v93 = v92;
            if (v75 >= 2)
            {
              v94 = v88.f64[1];
            }

            else
            {
              v94 = v81;
            }

            v95 = v94;
            v96 = vcvt_f32_f64(vmlaq_f64(v90, v66, vmlaq_n_f64(vmlaq_n_f64(v84, v82, v93), v83, v95)));
            this[v75 + 5] = v96;
            v97 = vcvt_s32_f32(vrndm_f32(vadd_f32(*v70.i8, v96)));
            v89[-1] = v97;
            *v89 = v77;
            if ((v86 & 0x80000000) != 0 || (v91 & 0x80000000) != 0)
            {
              v99 = 1;
            }

            else
            {
              v98 = vclez_s32(vsub_s32(vmin_s32(vadd_s32(v77, v97), *v33.i8), vmax_s32(v97, v39)));
              v99 = vpmax_u32(v98, v98).u32[0] >> 31;
            }

            v100 = (~v9 >> v75) & 1 | v99;
            v78->i8[v75] = v100;
            v76 += v100;
            ++v75;
            v89 += 2;
          }

          while (v75 != 4);
          if (v76 != 4)
          {
            if (this[25])
            {
              goto LABEL_89;
            }

            v101 = v53 * v53;
            if (v45.i32[0] <= v52)
            {
              v102 = v52;
            }

            else
            {
              v102 = v45.i32[0];
            }

            v70.i32[0] = 1073741822;
            v33.i32[0] = v102;
            v103 = v101 * 0.9;
            v104.i64[0] = v39.i32[0];
            v104.i64[1] = v39.i32[1];
            v105 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v33, v70), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v104));
            v106 = v45.i32[0];
            if (v102 > 1073741822)
            {
              v106 = 1.79769313e308;
            }

            v154 = v105;
            v107 = v102 <= 1073741822 ? v52 : 1.79769313e308;
            *v155.i64 = v106;
            *&v155.i64[1] = v107;
            v144 = v79;
            v145 = v54;
            v143 = v59;
            CA::Rect::unapply_transform(&v154, v42, v32);
            v108.i64[0] = 0;
            v109 = 0;
            v110 = v154;
            v111 = vclezq_f64(v155);
            v112 = vorrq_s8(vdupq_laneq_s64(v111, 1), v111);
            v113 = vcgtq_s64(v108, v112).u64[0];
            v114 = v112.i64[0];
            v115 = vaddq_f64(v154, v155);
            v116 = vaddq_f64(vsubq_f64(v144, v145), v143);
            v117 = vclezq_f64(v145);
            v118 = vorrq_s8(vdupq_laneq_s64(v117, 1), v117).u64[0];
            v120 = vdupq_lane_s64(v113, 0);
            v119 = vandq_s8(v155, v120);
            v120.i64[0] = -1;
            do
            {
              if ((v78->i8[v109] & 1) == 0)
              {
                v121.i64[0] = (v109 & 1) == 0;
                v121.i64[1] = v109 < 2;
                v122 = vcltzq_s64(vshlq_n_s64(v121, 0x3FuLL));
                v123 = vcvtq_f64_f32(vcvt_f32_f64(vbslq_s8(v122, v144, v116)));
                v124 = v119;
                v125 = v110;
                if ((v114 & 0x8000000000000000) == 0)
                {
                  v124 = v119;
                  v125 = v110;
                  if ((v118 & 0x8000000000000000) == 0)
                  {
                    v126 = vmaxnmq_f64(v110, v123);
                    v127 = vsubq_f64(vminnmq_f64(v115, vaddq_f64(v145, v123)), v126);
                    v128 = vclezq_f64(v127);
                    v129 = vdupq_lane_s64(vcgtq_s64(vorrq_s8(vdupq_laneq_s64(v128, 1), v128), v120).i64[0], 0);
                    v125 = vbslq_s8(v129, v126, v110);
                    v124 = vandq_s8(v127, v129);
                  }
                }

                v130 = 0;
                v131 = vaddq_f64(v124, v125);
                *&v132 = v131.f64[0];
                *(&v132 + 1) = *&v125.f64[1];
                v150 = v125;
                v151 = v132;
                v125.f64[1] = v131.f64[1];
                v152 = v131;
                v153 = v125;
                v133 = vbslq_s8(v122, vaddq_f64(v145, v123), v123);
                LOBYTE(v134) = 1;
                do
                {
                  v135 = vsubq_f64(*(&v150 + v130), v133);
                  v134 = v134 & (vaddvq_f64(vmulq_f64(v135, v135)) < v103);
                  v130 += 16;
                }

                while (v130 != 64);
                v78->i8[v109] = v134;
                v76 += v134;
              }

              ++v109;
            }

            while (v109 != 4);
            if (v76 != 4)
            {
LABEL_89:
              v146[0] = 0;
              v146[1] = vadd_s32(vadd_s32(v77, v77), 0x400000004);
              if ((this[30].i8[4] & 4) != 0 || ((*(a2 + 238) & 0x20) != 0 ? ((*(*v5 + 232))(v5, 36) ? (v136 = 20495) : (v136 = 4111)) : (v136 = 6159), v137 = (*(*v5 + 696))(v5, 1, v146, v136, @"MaskCornersBegin"), (this[24] = v137) != 0))
              {
                v138 = 0;
                v139 = 0;
                v152 = 0u;
                v153 = 0u;
                v150 = 0u;
                v151 = 0u;
                v154 = 0u;
                v155 = 0u;
                do
                {
                  if ((this[23].i8[v138] & 1) == 0)
                  {
                    v140 = &v150 + v139;
                    *v140 = *this[2 * v138 + 13].f32;
                    CA::BoundsImpl::inset(v140, -1, -1);
                    v141 = this[24];
                    if (*&v141 && (*(*&v141 + 93) & 8) != 0)
                    {
                      v154.f64[v139] = v140->f64[0];
                    }

                    else
                    {
                      v142 = &v154.f64[v139];
                      *v142 = 0;
                      if (v138)
                      {
                        *v142 = this->i32[0] + 2;
                      }

                      if (v138 >= 2)
                      {
                        *(v154.f64 + ((2 * v139) | 1)) = this->i32[1] + 2;
                      }
                    }

                    ++v139;
                  }

                  ++v138;
                }

                while (v138 != 4);
                if (v139)
                {
                  if ((this[30].i8[4] & 4) == 0)
                  {
                    (*(*v5 + 768))(v5, 0, *&this[24], v139, &v150, &v154, &this[30] + 5);
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void CA::OGL::Context::copy_destination(CA::OGL::Context *this, uint64_t a2, int *a3, uint64_t a4, int32x2_t *a5, int32x2_t *a6, _BYTE *a7)
{
  v40 = *MEMORY[0x1E69E9840];
  v13 = *(this + 85);
  v14 = *(this + 84);
  if (v13 != v14 || (!v13 ? (v15 = 0) : (v15 = (*(v14 + 144) >> 1) & 0x1F), *(this + 167) != v15))
  {
    CA::OGL::Context::prepare_destination_(this);
  }

  if ((*(this + 692) & 0x200) != 0)
  {
    CA::OGL::Context::flatten_detached_layers_(this);
  }

  v16 = *(this + 84);
  if (v16)
  {
    if ((a3[23] & 0x4800) == 0x4000 && (*(*this + 232))(this, 36))
    {
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v17 = *(this + 82);
      *(&v36 + 1) = 0x3C003C003C003C00;
      v37 = 0uLL;
      *&v38 = 0;
      v35[0] = 0;
      if (v17)
      {
        *&v36 = *(v17 + 24);
        v18 = *(v17 + 64);
        v19 = *(v17 + 80) & 0x500 | 1;
      }

      else
      {
        v19 = 1025;
        v18 = 1.0;
      }

      *(&v38 + 2) = v18;
      WORD4(v39) = v19;
      memset(v34, 0, sizeof(v34));
      CA::Shape::operator=(v34, a3 + 12);
      v35[1] = v34;
      v35[2] = 0;
      v35[0] = CA::OGL::Context::set_gstate(this, v35);
      *(*(this + 2) + 16) = 117;
      a3[36] = a3[36] & 0x3FFFFFFF | 0x80000000;
      CA::OGL::Context::bind_surface(this, a3, 0, 0, 0, 0.0);
      v20 = *(this + 2);
      *(v20 + 96) = xmmword_183E21110;
      v21 = *(v20 + 497);
      if (v21)
      {
        *(v20 + 497) = v21 & 0xFE;
      }

      v33 = v21;
      *(this + 18) = 0;
      *(this + 14) = this + 1386;
      *(this + 120) = xmmword_183E20E50;
      if (a4)
      {
        v22 = 0;
        v23 = a5 + 1;
        do
        {
          v24 = *a6;
          v25 = *(a3 + 12);
          if (*(this + 27))
          {
            v26 = 6;
          }

          else
          {
            v26 = 4;
          }

          if ((v22 + 4) > *(this + 19) || (v27 = *(this + 16)) != 0 && *(this + 15) + v26 > v27)
          {
            *(this + 692) |= 0x20u;
            CA::OGL::Context::array_flush(this);
            *(this + 18) = 0;
            *(this + 14) = this + 1386;
            *(this + 120) = xmmword_183E20E50;
          }

          v28 = vsub_s32(v24, v25);
          CA::OGL::Context::array_rect(this, v23[-1].i32[0], v23[-1].i32[1], (v23->i32[0] + v23[-1].i32[0]), (v23->i32[1] + v23[-1].i32[1]));
          v29 = vcvt_f32_s32(v28);
          v22 = *(this + 18);
          v30 = *(this + 17) + 48 * v22;
          *(v30 - 176) = v29;
          v31 = *v23;
          v23 += 2;
          v32 = vcvt_f32_s32(vadd_s32(v31, v28));
          *(v30 - 128) = __PAIR64__(v29.u32[1], v32.u32[0]);
          *(v30 - 80) = v32;
          v29.i32[1] = v32.i32[1];
          *(v30 - 32) = v29;
          ++a6;
          --a4;
        }

        while (a4);
      }

      CA::OGL::Context::array_flush(this);
      if (v33)
      {
        *(*(this + 2) + 497) |= 1u;
      }

      CA::OGL::Context::unbind_surface(this, a3, 0);
      *(*(this + 2) + 16) = 0;
      CA::OGL::Context::set_gstate(this, **(this + 82));
      a3[22] = *(*(this + 84) + 88);
    }

    else
    {
      CA::OGL::Context::push_surface(this, a3, 0, 0x8000, 0);
      CA::OGL::emit_copy_surface(this, v16, a4, a5, a6);
      CA::OGL::Context::pop_surface(this);
    }

    *a7 = 0;
  }
}

float16x4_t *CA::OGL::emit_copy_surface(uint64_t a1, int32x2_t *a2, uint64_t a3, int32x2_t *a4, uint64_t a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = *(a1 + 656);
  *(&v28 + 1) = 0x3C003C003C003C00;
  v29 = 0uLL;
  *&v30 = 0;
  v27[0] = 0;
  if (v10)
  {
    *&v28 = *(v10 + 24);
    v11 = *(v10 + 64);
    v12 = *(v10 + 80) & 0x500 | 1;
  }

  else
  {
    v12 = 1025;
    v11 = 1.0;
  }

  *(&v30 + 2) = v11;
  WORD4(v31) = v12;
  memset(v26, 0, sizeof(v26));
  CA::Shape::operator=(v26, &a2[6]);
  v27[1] = v26;
  v27[2] = 0;
  v27[0] = CA::OGL::Context::set_gstate(a1, v27);
  *(*(a1 + 16) + 16) = 1;
  CA::OGL::Context::bind_surface(a1, a2, 0, 0, 0, 0.0);
  v13 = *(a1 + 16);
  v14 = *(v13 + 497);
  if (v14)
  {
    *(v13 + 497) = v14 & 0xFE;
  }

  *(a1 + 144) = 0;
  *(a1 + 112) = a1 + 1386;
  *(a1 + 120) = xmmword_183E20E50;
  if (a3)
  {
    v15 = 0;
    v16 = a4 + 1;
    v17 = (a5 + 4);
    do
    {
      if (*(a1 + 108))
      {
        v18 = 6;
      }

      else
      {
        v18 = 4;
      }

      if ((v15 + 4) > *(a1 + 152) || (v19 = *(a1 + 128)) != 0 && *(a1 + 120) + v18 > v19)
      {
        *(a1 + 1384) |= 0x20u;
        CA::OGL::Context::array_flush(a1);
        *(a1 + 144) = 0;
        *(a1 + 112) = a1 + 1386;
        *(a1 + 120) = xmmword_183E20E50;
      }

      v20 = vsub_s32(v16[-1], a2[6]);
      CA::OGL::Context::array_rect(a1, *(v17 - 1), *v17, (v16->i32[0] + *(v17 - 1)), (v16->i32[1] + *v17));
      v21 = vcvt_f32_s32(v20);
      v15 = *(a1 + 144);
      v22 = *(a1 + 136) + 48 * v15;
      *(v22 - 176) = v21;
      v23 = *v16;
      v16 += 2;
      v24 = vcvt_f32_s32(vadd_s32(v23, v20));
      *(v22 - 128) = __PAIR64__(v21.u32[1], v24.u32[0]);
      *(v22 - 80) = v24;
      v21.i32[1] = v24.i32[1];
      *(v22 - 32) = v21;
      v17 += 2;
      --a3;
    }

    while (a3);
  }

  CA::OGL::Context::array_flush(a1);
  if (v14)
  {
    *(*(a1 + 16) + 497) |= 1u;
  }

  CA::OGL::Context::unbind_surface(a1, a2, 0);
  *(*(a1 + 16) + 16) = 0;
  return CA::OGL::Context::set_gstate(a1, **(a1 + 656));
}

void *CA::OGL::MetalBufferPool::create_external_buffer(CA::OGL::MetalBufferPool *this, unsigned int a2, unint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  if (a4)
  {
    v8 = *this;
    v9 = objc_opt_new();
    v10 = v9;
    v11 = a3 - 1 + a2;
    v12 = v11 / a3 * a3;
    v13 = v11 & -a3;
    if ((a3 & (a3 - 1)) != 0)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    [v9 setSize:v14];
    [v10 setProtectionOptions:a4];
    [v10 setHazardTrackingMode:2];
    result = [v8 newHeapWithDescriptor:v10];
    if (result)
    {
      v16 = result;
      v17 = [result newBufferWithLength:a2 options:32];
      if (v17)
      {
        v18 = v17;
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x30uLL, 0x10B2040E9307F1BuLL);
        result[1] = a2;
        result[2] = a4;
        result[3] = v16;
        result[4] = v18;
      }

      else
      {

        return 0;
      }
    }

    return result;
  }

  v19 = *(this + 6);
  if (!v19)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v19 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x20uLL, 0xDEEC3011uLL);
    if (v19)
    {
      *v19 = 0u;
      v19[1] = 0u;
    }

    *(this + 6) = v19;
  }

  v20 = *(this + 11);
  if (v20 <= a3)
  {
    v20 = a3;
  }

  v21 = v20 - 1 + *(v19 + 4);
  v22 = v21 / v20 * v20;
  v23 = v21 & -v20;
  if ((v20 & (v20 - 1)) != 0)
  {
    v24 = v22;
  }

  else
  {
    v24 = v23;
  }

  if (!*v19)
  {
    goto LABEL_33;
  }

  if (*(v19 + 5) < v24 + a2)
  {
    if (!*(v19 + 6))
    {
      CA::OGL::MetalBufferPool::retire_metal_buffer(this);
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v25 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x20uLL, 0xDEEC3011uLL);
    if (v25)
    {
      *v25 = 0u;
      v25[1] = 0u;
    }

    *(this + 6) = v25;
LABEL_33:
    result = CA::OGL::MetalBufferPool::allocate_buffer(this, a2);
    **(this + 6) = result;
    if (!result)
    {
      return result;
    }

    v26 = [result contents];
    v27 = *(this + 6);
    *(v27 + 8) = v26;
    v28 = [*v27 length];
    v24 = 0;
    v19 = *(this + 6);
    *(v19 + 5) = v28;
  }

  *(v19 + 4) = v24 + a2;
  ++*(v19 + 6);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x30uLL, 0x10B2040E9307F1BuLL);
  v29 = *(this + 6);
  *result = v29[1] + v24;
  result[1] = a2;
  result[3] = v29;
  result[4] = *v29;
  *(result + 10) = v24;
  return result;
}

uint64_t CA::OGL::Context::function_supported(void *a1, char a2)
{
  v3 = a1[2];
  v4 = *(v3 + 16);
  *(v3 + 16) = a2;
  result = (*(*a1 + 1072))(a1);
  *(a1[2] + 16) = v4;
  return result;
}

void CA::OGL::MetalBufferPool::release_external_buffer(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
  }

  else
  {
    v3 = *(a2 + 24);
    v4 = *(v3 + 24) - 1;
    *(v3 + 24) = v4;
    if (!v4 && *(a1 + 48) != v3)
    {
      CA::OGL::MetalBufferPool::retire_metal_buffer(a1);
    }
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v5 = malloc_zone;

  malloc_zone_free(v5, a2);
}

void CA::OGL::BlurState::single_pass_blur(float32x2_t *this, float a2, float a3, int a4)
{
  v48[1] = *MEMORY[0x1E69E9840];
  v8 = *this;
  v9 = *(*(*this + 16) + 16);
  v10 = *this;
  if ((a4 & 1) == 0)
  {
    if (!CA::OGL::PingPongState::attach_dest(this, 1, 0))
    {
      return;
    }

    v10 = *this;
  }

  v11 = this[4].i16[0];
  v12 = v11;
  v13 = this + 11;
  v14 = &this[(v11 & 1) + 11];
  if (v12 < 0)
  {
    v14 = &this[1];
  }

  v16 = *(*v14 + 48);
  v15 = *(*v14 + 52);
  CA::OGL::Context::bind_surface(v10, *v14, 0, 1u, 1, 0.0);
  *(*(v8 + 16) + 16) = 45;
  v17 = exp(-0.5 / a2);
  v18 = v17 * 2.0 + 1.0;
  v19.f64[0] = v17 / v18;
  v20.f64[0] = 1.0 / v18;
  v21 = 1.0 / v18;
  v22 = v19.f64[0];
  if (a2 != a3)
  {
    if (a2 >= 0.0 == a3 < 0.0)
    {
      goto LABEL_11;
    }

    v23 = LODWORD(a2) - LODWORD(a3);
    if (LODWORD(a2) - LODWORD(a3) < 0)
    {
      v23 = LODWORD(a3) - LODWORD(a2);
    }

    v21 = v20.f64[0];
    v22 = v19.f64[0];
    if (v23 >= 4)
    {
LABEL_11:
      v46 = v20.f64[0];
      v47 = v19.f64[0];
      v24 = exp(-0.5 / a3);
      v20.f64[0] = v46;
      v19.f64[0] = v47;
      v25 = v24 * 2.0 + 1.0;
      v22 = v24 / v25;
      v21 = 1.0 / v25;
    }
  }

  v20.f64[1] = v21;
  __asm { FMOV            V1.2D, #4.0 }

  v19.f64[1] = v22;
  v31 = vmulq_f64(vmulq_f64(v20, _Q1), v19);
  *&_Q1.f64[0] = vcvt_f32_f64(v31);
  *v32.i8 = vneg_f32(*&_Q1.f64[0]);
  v33 = vcvt_hight_f32_f64(__PAIR64__(HIDWORD(_Q1.f64[0]), v32.u32[0]), v31);
  v32.i64[1] = v32.i64[0];
  v34 = *(v8 + 16);
  v35 = vmulq_n_f32(vuzp1q_s32(v33, vcvt_hight_f32_f64(*v32.i8, v31)), *(v34 + 96));
  v36 = vmulq_n_f32(vuzp2q_s32(v33, v32), *(v34 + 100));
  v37 = 1.0;
  if (this[13].i32[0] == 2)
  {
    if ((a4 & 1) == 0)
    {
      v37 = 1.0;
      if ((this[15].i8[0] & 2) == 0)
      {
        v37 = 0.0;
      }
    }
  }

  else
  {
    v37 = 0.0;
  }

  *(v8 + 240) = 1048576000;
  v38 = (v8 + 160);
  *(v8 + 244) = 0;
  *(v8 + 252) = 0;
  *(v8 + 320) = v37;
  vst2q_f32(v38, *v35.f32);
  if (a4)
  {
    v39 = (this[15].u8[0] >> 2) & 1;
    v48[0] = 0;
    CA::OGL::PingPongState::render_pass_final_dest(*this, v16, v15, v39, v48);
  }

  else
  {
    *(v8 + 144) = 0;
    *(v8 + 112) = v8 + 1386;
    *(v8 + 120) = xmmword_183E20E50;
    v48[0] = 0;
    CA::OGL::PingPongState::render_pass(this, v16, v15, 0, v48, 1.0, 1.0, 0.0, 0.0);
    CA::OGL::Context::array_flush(v8);
  }

  v40 = this[4].i16[0];
  v41 = v40;
  v42 = &v13[v40 & 1];
  if (v41 < 0)
  {
    v42 = &this[1];
  }

  CA::OGL::Context::unbind_surface(*this, *v42, 0);
  *(*(v8 + 16) + 16) = v9;
  if ((a4 & 1) == 0)
  {
    if ((*(v8 + 1384) & 0x7000) != 0)
    {
      v43 = this[4].i16[0];
      v44 = v43;
      v45 = &v13[v43 & 1];
      if (v44 < 0)
      {
        v45 = this + 1;
      }

      *(*(v8 + 672) + 144) = *(*(v8 + 672) + 144) & 0xFFFFC0FF | (((*(*v45 + 144) >> 8) & 0x3F) << 8);
    }

    CA::OGL::Context::pop_surface(*this);
    ++this[4].i16[0];
  }
}

void _XBackdropDidChangeLuma(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 44)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___Z23CABackdropDidChangeLumayf_block_invoke;
    block[3] = &__block_descriptor_44_e5_v8__0l;
    block[4] = v3;
    v6 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    *(a2 + 32) = 0;
  }
}

void CA::OGL::anonymous namespace::release_buffer_surfaces(CA::OGL::_anonymous_namespace_ *this, CA::OGL::Context *a2, CA::OGL::BackdropBuffer *a3)
{
  CA::OGL::Context::release_surface(this, *(a2 + 4));
  *(a2 + 4) = 0;
  *(a2 + 224) &= 0xF9u;
  v5 = *(a2 + 6);
  if (v5)
  {
    CA::OGL::Context::release_surface(this, v5);
    *(a2 + 6) = 0;
  }

  v6 = *(a2 + 5);
  if (v6)
  {
    CA::OGL::Context::release_surface(this, v6);
    *(a2 + 5) = 0;
  }
}

CA::Render::Image *CA::Render::Image::ogl_image_key(CA::Render::Image *this)
{
  result = *(this + 17);
  if (!result || (*(result + 13) & 8) == 0)
  {
    return this;
  }

  return result;
}

BOOL CA::OGL::MetalContext::copy_image_to_texture(uint64_t a1, CA::Render::Image *this, uint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = *(this + 14);
  v7 = *(this + 22);
  if (*MEMORY[0x1E69E9AC8] >= *MEMORY[0x1E69E9AB0])
  {
    v8 = *MEMORY[0x1E69E9AB0];
  }

  else
  {
    v8 = *MEMORY[0x1E69E9AC8];
  }

  v9 = CA::Render::Image::data_size(this);
  if (*(a3 + 123))
  {
    return 0;
  }

  v10 = v9;
  v11 = [*(a1 + 3504) deviceLinearReadOnlyTextureAlignmentBytes];
  if (v6 % v11 || v7 % v11)
  {
    return 0;
  }

  v13 = -v8 & v6;
  v14 = v6 - v13;
  v15 = (v10 + v8 + v14 - 1) & -v8;
  v16 = [*(a1 + 3504) newBufferWithBytesNoCopy:v13 length:v15 options:0 deallocator:0];
  [v16 setLabel:@"com.apple.coreanimation.buffer-client-storage"];
  if (v16)
  {
    if (*(this + 10))
    {
      [v16 setResponsibleProcess:?];
    }

    [*(a3 + 88) setCpuCacheMode:{objc_msgSend(v16, "cpuCacheMode")}];
    [*(a3 + 88) setStorageMode:{objc_msgSend(v16, "storageMode")}];
    *(a3 + 64) = [v16 newLinearTextureWithDescriptor:*(a3 + 88) offset:v14 bytesPerRow:v7 bytesPerImage:CA::Render::Image::data_size(this)];

    v17 = *(a3 + 64);
    if (v17)
    {
      [v17 setLabel:@"com.apple.coreanimation.image-client-storage"];
      CA::OGL::MetalContext::update_texture_ownership(a1, *(a3 + 64), this);
      *(a3 + 123) |= 0x200u;
      return 1;
    }

    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v18 = x_log_get_ogl_metal(void)::log;
    result = os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v22 = *(this + 4);
      v23 = *(this + 5);
      v24 = 134219520;
      v25 = v13;
      v26 = 2048;
      v27 = v14;
      v28 = 2048;
      v29 = v15;
      v30 = 1024;
      v31 = v22;
      v32 = 1024;
      v33 = v23;
      v34 = 2048;
      v35 = v7;
      v36 = 2048;
      v37 = CA::Render::Image::data_size(this);
      v21 = "nil linear texture from buffer: [b:%08lx o:%04lx l:%06zx], w:%u h:%u bpr:%zu bpi:%zu\n";
      goto LABEL_22;
    }
  }

  else
  {
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v18 = x_log_get_ogl_metal(void)::log;
    result = os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v19 = *(this + 4);
      v20 = *(this + 5);
      v24 = 134219520;
      v25 = v13;
      v26 = 2048;
      v27 = v14;
      v28 = 2048;
      v29 = v15;
      v30 = 1024;
      v31 = v19;
      v32 = 1024;
      v33 = v20;
      v34 = 2048;
      v35 = v7;
      v36 = 2048;
      v37 = CA::Render::Image::data_size(this);
      v21 = "nil buffer from memory: [b:%08lx o:%04lx l:%06zx], w:%u h:%u bpr:%zu bpi:%zu\n";
LABEL_22:
      _os_log_error_impl(&dword_183AA6000, v18, OS_LOG_TYPE_ERROR, v21, &v24, 0x40u);
      return 0;
    }
  }

  return result;
}

void ___Z23CABackdropDidChangeLumayf_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
  {
    dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
  }

  if (v1)
  {
    v3 = (v1 - CA::Render::_render_id_slide);
  }

  else
  {
    v3 = 0;
  }

  v11 = v3;
  os_unfair_lock_lock(&_all_backdrops_lock);
  v4 = *(_all_backdrops + 8);
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = _all_backdrops + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= v11;
    v8 = v6 < v11;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != _all_backdrops + 8 && *(v5 + 32) <= v11)
  {
    v9 = v11;
    os_unfair_lock_unlock(&_all_backdrops_lock);
    +[CATransaction lock];
    v10 = [v11 delegate];
    +[CATransaction unlock];
    if (objc_opt_respondsToSelector())
    {
      [v10 backdropLayer:v11 didChangeLuma:v2];
    }

    if (objc_opt_respondsToSelector())
    {
      [v10 backdropLayer:v11 didSampleProtectedLuma:0];
    }
  }

  else
  {
LABEL_14:

    os_unfair_lock_unlock(&_all_backdrops_lock);
  }
}

uint64_t CA::OGL::MetalContext::attached_to_framebuffer_p(CA::OGL::MetalContext *this)
{
  v1 = *(this + 84);
  if (v1)
  {
    return (*(v1 + 308) >> 7) & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t CA::OGL::Context::destination_has_alpha_p(CA::OGL::Context *this)
{
  if (!(*(*this + 864))(this))
  {
    return 1;
  }

  v2 = *(this + 78);
  if (v2 && *(v2 + 544))
  {
    return 1;
  }

  else
  {
    return (*(this + 692) >> 2) & 1;
  }
}

uint64_t CA::Render::Layer::max_corner_radii(uint64_t this)
{
  if (this)
  {
    v1 = *(this + 72);
    if (v1)
    {
      if (*(v1 + 16) == 8)
      {
        v2 = 0;
        v3 = *(v1 + 24);
        v4 = v1 + 32;
        do
        {
          if (v3 <= *(v4 + v2))
          {
            v3 = *(v4 + v2);
          }

          v2 += 8;
        }

        while (v2 != 56);
      }
    }
  }

  return this;
}

uint64_t CA::OGL::QuadNode::apply(uint64_t result, uint64_t *a2, float *a3, int32x4_t a4, int32x4_t a5)
{
  v77[2] = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2)
  {
    v8 = result;
    v9 = **(result + 8);
    v10 = *(v5 + 56);
    v11 = *(v5 + 60);
    if (v10 <= v11)
    {
      v12 = *(v5 + 60);
    }

    else
    {
      v12 = *(v5 + 56);
    }

    a4.i32[0] = 1073741822;
    a5.i32[0] = v12;
    v13 = vdupq_lane_s32(*&vcgtq_s32(a5, a4), 0);
    v14 = *(v5 + 48);
    v15.i64[0] = v14;
    v15.i64[1] = SHIDWORD(v14);
    v16 = vbslq_s8(v13, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v15));
    v17 = v10;
    v18 = v11;
    if (v12 > 1073741822)
    {
      v17 = 1.79769313e308;
      v18 = 1.79769313e308;
    }

    v75 = v16;
    v76.f64[0] = v17;
    v76.f64[1] = v18;
    v77[0] = 0;
    v77[1] = vcvt_f32_f64(v76);
    v19 = 1.0 / *a3;
    v20 = v19;
    if (v19 != 1.0 && v76.f64[0] < 1.79769313e308)
    {
      v75.f64[0] = v20 * *v16.i64;
      v76.f64[0] = v76.f64[0] * v20;
    }

    if (v19 != 1.0 && v18 < 1.79769313e308)
    {
      v75.f64[1] = *&v16.i64[1] * v20;
      v76.f64[1] = v18 * v20;
    }

    v23 = *(v9 + 2);
    v24 = *(v23 + 496);
    if (v24 >= 2 && (v24 != 3 || (*(v5 + 148) & 0x10) == 0))
    {
      *(v23 + 497) |= 1u;
      v23 = *(v9 + 2);
    }

    *(v23 + 8) = *(result + 88);
    v25 = 1.0;
    v26 = 1.0;
    if ((*(result + 240) & 0xF) == 0xA)
    {
      v27 = *(result + 80);
      if ((*(v27 + 144) & 0x10) != 0)
      {
        v28 = vaddvq_f64(vmulq_f64(*v27, *v27));
        v29 = vaddvq_f64(vmulq_f64(*(v27 + 32), *(v27 + 32)));
        v30 = *(v27 + 120);
        if (v30 != 1.0)
        {
          v31 = 1.0 / (v30 * v30);
          v28 = v31 * v28;
          v29 = v31 * v29;
        }

        v32 = v28 != 1.0;
        if (v29 != 1.0)
        {
          v32 = 1;
        }

        v33 = sqrt(v28);
        v34 = sqrt(v29);
        if (v32)
        {
          v26 = v34;
        }

        else
        {
          v26 = v29;
        }

        if (v32)
        {
          v25 = v33;
        }

        else
        {
          v25 = v28;
        }
      }

      else
      {
        v25 = *(v27 + 128);
        v26 = v25;
      }
    }

    v35 = (*(*v9 + 232))(v9, 29);
    v36 = *a2;
    if (v35)
    {
      v37 = v25 < 1.0;
    }

    else
    {
      v37 = 0;
    }

    if (v37 && v26 < 1.0)
    {
      v71 = *&v25;
      v72 = v26;
      result = (*(*v9 + 952))(v9, v36, &v71, *(v8 + 80), 2, 0.0);
    }

    else
    {
      CA::OGL::Context::bind_surface(v9, v36, 0, *(v8 + 240) & 0xF, *(v8 + 240) >> 4, *(v8 + 244));
      if (*(*a2 + 32))
      {
        v39 = *(v9 + 70);
        if (v39)
        {
          if (!*(*(v9 + 2) + 40) && (BYTE13(xmmword_1ED4E98AC) & 1) == 0 && (CGColorSpaceEqualToColorSpace() & 1) == 0)
          {
            CA::OGL::Context::configure_color_program_cache(v9, 0, 0, 1, 1, 0.0, 0.0, 0.0, 0.0, 0.0);
            v43 = CA::OGL::Context::lookup_color_program(v9, *(*a2 + 32), (*(*a2 + 148) >> 4) & 1, 0);
            CA::OGL::Context::color_program(v9, 0, v43);
          }
        }
      }

      v44 = *(v8 + 241);
      v45 = *(v8 + 80);
      v71 = &v75;
      v72 = *&v45;
      v40.i64[0] = 1.0;
      v41.i64[0] = 1.0;
      v46 = CA::OGL::transform_filter_bits(v45, v39, v40, v41, v42);
      v47.i64[0] = 1.0;
      LODWORD(v73) = CA::OGL::rect_filter_bits(v45, v46, v48, v75, v76, v47, 1.0);
      DWORD1(v73) = v44;
      v74 = 0uLL;
      *(&v73 + 1) = 0;
      CA::OGL::fill_rect_tex(v9, &v71, v77);
      result = CA::OGL::Context::unbind_surface(v9, *a2, 0);
    }

    *(*(v9 + 2) + 497) &= ~1u;
    v51 = *(v8 + 236);
    if ((v51 & 0x1E0000) != 0)
    {
      v52 = *(*a2 + 56);
      v53 = *(*a2 + 60);
      if (v52 <= v53)
      {
        v54 = *(*a2 + 60);
      }

      else
      {
        v54 = *(*a2 + 56);
      }

      v49.i32[0] = 1073741822;
      v50.i32[0] = v54;
      v55 = vdupq_lane_s32(*&vcgtq_s32(v50, v49), 0);
      v56 = *(*a2 + 48);
      v57.i64[0] = v56;
      v57.i64[1] = SHIDWORD(v56);
      v60 = vcvtq_f64_s64(v57);
      v58 = v52;
      v59 = vbslq_s8(v55, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), v60);
      *v60.i64 = v53;
      if (v54 > 1073741822)
      {
        v58 = 1.79769313e308;
        *v60.i64 = 1.79769313e308;
      }

      v68 = v59;
      v69 = v58;
      v70 = v60.i64[0];
      v61 = 1.0 / *a3;
      v62 = v61;
      if (v61 != 1.0 && v58 < 1.79769313e308)
      {
        *v68.i64 = v62 * *v59.i64;
        v69 = v58 * v62;
      }

      if (v61 != 1.0 && *v60.i64 < 1.79769313e308)
      {
        *v60.i64 = *v60.i64 * v62;
        *&v68.i64[1] = *&v59.i64[1] * v62;
        v70 = v60.i64[0];
      }

      v65 = *(v8 + 80);
      v71 = &v68;
      v72 = v65;
      v73 = 0u;
      v74 = 0u;
      v66 = ((v51 >> 17) & 0xF) - 1;
      if (v66 > 0xB)
      {
        v67 = 0;
      }

      else
      {
        v67 = dword_183E2D698[v66];
      }

      return CA::OGL::fill_color_rect(v9, &v71, v67, 0.0, v60);
    }
  }

  return result;
}

void ___ZN2CA3OGL12MetalContext24start_idle_collect_timerEv_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = mach_absolute_time();
  if (CATimeWithHostTime(v2) <= *(v1 + 4728) + 0.5)
  {
    return;
  }

  v3 = *(v1 + 4760);
  v4 = atomic_load((v1 + 4752));
  CA::OGL::MetalBufferPool::pool_flush(v3, v4, 0);
  v5 = *(v1 + 4760);
  os_unfair_lock_lock((v5 + 56));
  v6 = *(v5 + 248);
  v7 = *(v5 + 256);
  if (v7 == v6)
  {
    v11 = (v5 + 280);
    v7 = *(v5 + 248);
  }

  else
  {
    v8 = *(v5 + 272);
    v9 = &v6[v8 >> 9];
    v10 = (*v9 + 8 * (v8 & 0x1FF));
    v11 = (v5 + 280);
    v12 = *(v6 + (((*(v5 + 280) + v8) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v5 + 280) + v8) & 0x1FF);
    if (v10 != v12)
    {
      do
      {
        v13 = *v10;
        v18 = *v10;
        if (*(v5 + 328) > 0x3FuLL)
        {
        }

        else
        {
          [v13 setPurgeableState:{3, v18, v19}];
          std::deque<objc_object  {objcproto9MTLBuffer}*>::push_back((v5 + 288), &v18);
        }

        if (++v10 - *v9 == 4096)
        {
          v14 = v9[1];
          ++v9;
          v10 = v14;
        }
      }

      while (v10 != v12);
      v6 = *(v5 + 248);
      v7 = *(v5 + 256);
    }
  }

  *v11 = 0;
  v15 = v7 - v6;
  if (v15 >= 3)
  {
    do
    {
      operator delete(*v6);
      v16 = *(v5 + 256);
      v6 = (*(v5 + 248) + 8);
      *(v5 + 248) = v6;
      v15 = (v16 - v6) >> 3;
    }

    while (v15 > 2);
  }

  if (v15 == 1)
  {
    v17 = 256;
  }

  else
  {
    if (v15 != 2)
    {
      goto LABEL_19;
    }

    v17 = 512;
  }

  *(v5 + 272) = v17;
LABEL_19:
  os_unfair_lock_unlock((v5 + 56));
  CA::OGL::MetalContext::idle_collect_heap(v1, *(v1 + 3896), "persistent");
  if (CA::OGL::MetalContext::idle_collect_heap(v1, *(v1 + 3888), "transient"))
  {

    CA::OGL::MetalContext::stop_idle_collect_timer(v1);
  }
}

char *intern_struct_name(char *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = a1 + 1;
  result = strchr(a1 + 1, 61);
  if (result)
  {
    v3 = result - v1;
    MEMORY[0x1EEE9AC00](result);
    v5 = v6 - v4;
    bzero(v6 - v4, v3 + 1);
    memcpy(v5, v1, v3);
    v5[v3] = 0;
    return unique_name(v5);
  }

  return result;
}

BOOL compare_types(char *a1, const char *a2)
{
  while (1)
  {
    v3 = *a1;
    v4 = *a2;
    if (!*a1 || v4 == 0)
    {
      break;
    }

    if (v3 == 34)
    {
      v6 = strchr(a1 + 1, 34);
      v7 = v6[1];
      a1 = v6 + 1;
      v3 = v7;
    }

    ++a1;
    ++a2;
    if (v3 != v4)
    {
      return 0;
    }
  }

  return v3 == v4;
}

void CA::OGL::MetalContext::update_image(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v41 = 0;
  v40 = CA::OGL::MetalContext::image_parameters(a1, *(a3 + 168), 0, &v41);
  if (v40)
  {
    v10 = v41;
    v11 = *(a2 + 52);
    v12 = v11 & 0xF0000;
    v13 = v11 & 0xFFFFFFFFC0FFFFFFLL | ((v41 & 0x3F) << 24);
    *(a2 + 52) = v13;
    v14 = v13 & 0xFFDFFFFFFFFFFFFFLL | ((((*(a3 + 12) & 0x800000) >> 23) & 1) << 53);
    *(a2 + 52) = v14;
    v16 = *(a3 + 169) > 1u || v12 == 0x20000;
    v18 = *(a3 + 16);
    v17 = *(a3 + 20);
    v19 = *(a3 + 112);
    if (v10 == 36)
    {
      v18 &= ~1u;
      v14 = v14 & 0xFFFFF0FFFFFFFFFFLL | 0x30000000000;
      *(a2 + 52) = v14;
    }

    v39 = 0;
    if (!v19)
    {
      v16 = 0;
    }

    if (v16 && (can_generate_mipmaps_for_format = CA::OGL::MetalContext::can_generate_mipmaps_for_format(a1, &v40, &v39), v14 = *(a2 + 52), can_generate_mipmaps_for_format))
    {
      *(a2 + 123) |= 0x11u;
      v21 = 0x20000;
    }

    else
    {
      *(a2 + 123) &= 0xFFEEu;
      v21 = 0x10000;
    }

    *(a2 + 52) = v14 & 0xFFFFFFFFFFF0FFFFLL | v21;
    CA::OGL::MetalContext::update_texture_plane(a1, a2, a4, 0, v40, v18, v17);
    if (*(a2 + 64))
    {
      if (!v19)
      {
LABEL_66:
        *(a2 + 16) = *(a3 + 36);
        return;
      }

LABEL_38:
      v26 = *(a2 + 64);
      if (v26 && (*(a2 + 123) & 0x200) == 0)
      {
        v27 = *(a2 + 120);
        if (v27 == 1)
        {
          v28 = *(a3 + 169);
          if ([*(a2 + 88) mipmapLevelCount] <= v28)
          {
            v29 = [*(a2 + 88) mipmapLevelCount];
          }

          else
          {
            v29 = *(a3 + 169);
          }

          if (v29)
          {
            v33 = 0;
            v34 = a3 + 176;
            v32 = v29;
            do
            {
              v35 = *(v34 + 8 * v33);
              v36 = *(a2 + 64);
              *buf = 0;
              v43 = 0;
              v44 = 0;
              v45 = v18;
              v46 = v17;
              v47 = 1;
              [v36 replaceRegion:buf mipmapLevel:v33 slice:0 withBytes:v19 bytesPerRow:v35 bytesPerImage:0];
              v19 += *(v34 + 8 * v33) * v17;
              if (v18 <= 1)
              {
                v18 = 1;
              }

              else
              {
                v18 >>= 1;
              }

              if (v17 <= 1)
              {
                v17 = 1;
              }

              else
              {
                v17 >>= 1;
              }

              ++v33;
            }

            while (v32 != v33);
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {
          v30 = *(a3 + 176);
          if (v17 == 1)
          {
            v31 = 1;
          }

          else
          {
            v31 = v18;
          }

          if (v17 == 1)
          {
            v27 = 1;
          }

          *buf = 0;
          v43 = 0;
          v44 = 0;
          v45 = v18;
          v46 = v31;
          v47 = v27;
          [v26 replaceRegion:buf mipmapLevel:0 slice:0 withBytes:v19 bytesPerRow:v30 bytesPerImage:v30 * v18];
          v32 = 1;
        }

        *(a1 + 1280) += CA::Render::Image::data_size(a3);
        if ((*(a2 + 123) & 1) != 0 && v32 != [*(a2 + 88) mipmapLevelCount])
        {
          CA::OGL::MetalContext::generate_mipmaps_for_texture(a1, a2);
        }

        if (v39)
        {
          v37 = *(a2 + 64);
          v38 = [v37 newTextureViewWithPixelFormat:1];
          *(a2 + 64) = v38;
          [v38 setLabel:@"com.apple.coreanimation.image-a8"];
        }
      }

      goto LABEL_66;
    }

    [*(a2 + 88) setUsage:1];
    v22 = v39;
    if (v39)
    {
      [*(a2 + 88) setUsage:{objc_msgSend(*(a2 + 88), "usage") | 0x10}];
    }

    if (*(a3 + 169) >= 2uLL)
    {
      [*(a2 + 88) setMipmapLevelCount:?];
    }

    if (v19 && *(a2 + 120) == 1 && (*(a2 + 123) & 0x400) == 0 && *(a3 + 169) == 1 && !v22 && CA::OGL::MetalContext::copy_image_to_texture(a1, a3, a2))
    {
      goto LABEL_66;
    }

    v23 = [*(a1 + 3504) newTextureWithDescriptor:*(a2 + 88)];
    *(a2 + 64) = v23;
    if (v23)
    {
      if (a5)
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a5];
        v23 = *(a2 + 64);
      }

      else
      {
        v24 = @"com.apple.coreanimation.image";
      }

      [v23 setLabel:v24];
      CA::OGL::MetalContext::update_texture_ownership(a1, *(a2 + 64), a3);
      if (!v19)
      {
        goto LABEL_66;
      }

      goto LABEL_38;
    }

    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v25 = x_log_get_ogl_metal(void)::log;
    if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_183AA6000, v25, OS_LOG_TYPE_ERROR, "Failed to allocate MTLTexture\n", buf, 2u);
    }
  }
}

void *CA::Render::TransitionAnimation::encode(CA::Render::TransitionAnimation *this, CA::Render::Encoder *a2)
{
  CA::Render::Animation::encode(this, a2);
  CA::Render::Encoder::encode_atom(a2, *(this + 24));
  CA::Render::Encoder::encode_atom(a2, *(this + 25));
  v4 = *(this + 26);
  v5 = *(a2 + 4);
  if ((v5 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v5 = *(a2 + 4);
  }

  *v5 = v4;
  v6 = *(a2 + 4);
  v7 = *(a2 + 5);
  v8 = (v6 + 4);
  *(a2 + 4) = v6 + 4;
  v9 = *(this + 27);
  if (v6 + 8 > v7)
  {
    CA::Render::Encoder::grow(a2, 4);
    v8 = *(a2 + 4);
  }

  *v8 = v9;
  *(a2 + 4) += 4;
  CA::Render::Encoder::encode_object(a2, *(this + 14));
  CA::Render::Encoder::encode_object(a2, *(this + 15));

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void CA::Render::TransitionAnimation::~TransitionAnimation(CA::Render::TransitionAnimation *this, const CA::Render::Object *a2)
{
  *this = &unk_1EF202E00;
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

  --dword_1ED4EAB2C;
  CA::Render::Animation::~Animation(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v6 = malloc_zone;

  malloc_zone_free(v6, this);
}

{
  *this = &unk_1EF202E00;
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

  --dword_1ED4EAB2C;

  CA::Render::Animation::~Animation(this, a2);
}

CA::Render::TransitionAnimation *CA::Render::TransitionAnimation::TransitionAnimation(CA::Render::TransitionAnimation *this, CA::Render::Decoder *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = CA::Render::Animation::Animation(this, a2);
  *(v4 + 12) = 61;
  ++dword_1ED4EAB2C;
  *v4 = &unk_1EF202E00;
  *(this + 24) = CA::Render::Decoder::decode_atom(a2);
  *(this + 25) = CA::Render::Decoder::decode_atom(a2);
  *(this + 26) = CA::Render::Decoder::decode_int32(a2);
  *(this + 27) = CA::Render::Decoder::decode_int32(a2);
  *(this + 14) = CA::Render::Decoder::decode_object(a2, 17);
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

    *(this + 15) = v7;
    if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      (*(*v5 + 16))(v5);
    }
  }

  else
  {
    *(this + 15) = 0;
  }

  *(this + 16) = 0;
  *(this + 17) = 0;
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-animation.cpp", 2703);
  return this;
}

uint64_t CA::Render::TransitionAnimation::validate(CA::Render::TransitionAnimation *this, CA::Render::Layer *a2, const CA::Render::TransitionSubclass *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = *(a2 + 3);
    if ((v5 & 0x100) != 0)
    {
      return 0;
    }

    if (!*(this + 16))
    {
      *(a2 + 3) = v5 & 0xFFFFE6FF | 0x1000;
      v6 = *(this + 16);
      if (v6 != a2)
      {
        if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
        }

        v7 = (v4 + 8);
        if (!atomic_fetch_add(v4 + 2, 1u))
        {
          v4 = 0;
          atomic_fetch_add(v7, 0xFFFFFFFF);
        }

        *(this + 16) = v4;
      }
    }
  }

  v8 = *(this + 3);
  if ((v8 & 0x2000000) != 0)
  {
    *(this + 34) = atomic_fetch_add(CA::Render::next_cache_id(void)::cache_id, 1u) + 1;
    v8 = *(this + 3);
  }

  if ((v8 & 0x4000000) != 0)
  {
    *(this + 35) = atomic_fetch_add(CA::Render::next_cache_id(void)::cache_id, 1u) + 1;
  }

  v9 = *(this + 24);
  if (v9 == 255)
  {
    v10 = *(this + 14);
    if (v10)
    {
      v9 = *(v10 + 24);
    }

    else
    {
      v9 = 0;
    }
  }

  v12 = CA::Render::Transition::lookup_transition(v9, a2, a3);
  if (v12)
  {
    if (((*v12)[1])(v12))
    {
      *(this + 3) |= 0x1000u;
    }
  }

  return 1;
}

uint64_t (***CA::Render::Transition::lookup_transition(CA::Render::Transition *this, unsigned int a2, const CA::Render::TransitionSubclass *a3))(CA::Render::BuiltinTransition *__hidden this, const CA::Render::TransitionAnimation *, CA::Render::Layer *, unsigned int, float)
{
  v3 = this;
  result = &CA::Render::Transition::lookup_transition::builtin_transition;
  if (v3 != 523 && v3 != 586 && v3 != 610)
  {
    if (!CA::Render::transition_table)
    {
      {
        CA::OGL::cube_transition_init(void)::aligned_cube = &unk_1EF1F5100;
        byte_1EA8511B0 = 1;
      }

      {
        CA::OGL::cube_transition_init(void)::unaligned_cube = &unk_1EF1F5100;
        byte_1EA851188 = 0;
      }

      CA::Render::add_transition(0xA8, &CA::OGL::cube_transition_init(void)::unaligned_cube, a3);
      CA::Render::add_transition(6, &CA::OGL::cube_transition_init(void)::aligned_cube, v5);
      {
        CA::OGL::flip_transition_init(void)::aligned_flip = &unk_1EF1FA740;
        byte_1EA851168 = 1;
      }

      {
        {
          CA::OGL::flip_transition_init(void)::unaligned_flip = &unk_1EF1FA740;
          byte_1EA851140 = 0;
        }
      }

      CA::Render::add_transition(0x102, &CA::OGL::flip_transition_init(void)::unaligned_flip, v6);
      CA::Render::add_transition(7, &CA::OGL::flip_transition_init(void)::aligned_flip, v7);
      v8 = CAInternAtomWithCString("oglFlip");
      CA::Render::add_transition(v8, &CA::OGL::flip_transition_init(void)::aligned_flip, v9);
      operator new();
    }

    os_unfair_lock_lock(&CA::Render::transition_lock);
    v10 = x_hash_table_lookup(CA::Render::transition_table, v3, 0);
    os_unfair_lock_unlock(&CA::Render::transition_lock);
    return v10;
  }

  return result;
}

BOOL CA::Context::synchronize(CA::Context *this, mach_port_name_t a2, int a3, int a4)
{
  v64 = *MEMORY[0x1E69E9840];
  name = 0;
  pthread_mutex_lock((this + 16));
  if (*(this + 32) >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = *(this + 32);
  }

  if (a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(this + 32);
  }

  if (v9 <= *(this + 34))
  {
    pthread_mutex_unlock((this + 16));
    return 1;
  }

  v10 = MEMORY[0x1E69E9A60];
  v11 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name);
  if (name - 1 > 0xFFFFFFFD)
  {
    v19 = v11;
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v14 = x_log_get_api::log;
    if (!os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v50 = *(this + 1);
    v51 = mach_error_string(v19);
    *buf = 67109634;
    v59 = v50;
    v60 = 1024;
    v61 = v19;
    v62 = 2080;
    v63 = v51;
    v17 = "Failed to make reply port for update sync (client=0x%x) [0x%x %s]";
LABEL_66:
    v26 = v14;
LABEL_67:
    _os_log_error_impl(&dword_183AA6000, v26, OS_LOG_TYPE_ERROR, v17, buf, 0x18u);
LABEL_19:
    pthread_mutex_unlock((this + 16));
    v56 = 0;
    goto LABEL_20;
  }

  v12 = *(this + 13);
  if (v12)
  {
    v55 = 0;
    v56 = 0;
    v13 = MEMORY[0x1865EB2D0](*v10);
    if (v13)
    {
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v14 = x_log_get_api::log;
      if (!os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v15 = *(this + 1);
      v16 = mach_error_string(v13);
      *buf = 67109634;
      v59 = v15;
      v60 = 1024;
      v61 = v13;
      v62 = 2080;
      v63 = v16;
      v17 = "Failed to make send-once for update sync (client=0x%x) [0x%x %s]";
      goto LABEL_66;
    }

    CA::Render::Context::request_synchronize(v12, v56, a3, 0, v9, 1);
  }

  else
  {
    v20 = *(this + 40);
    if (!v20 || (*(this + 257) & 2) != 0)
    {
      goto LABEL_19;
    }

    v21 = _CASSynchronize(v20, name, a3, 0, v9, 1, a4);
    if (v21)
    {
      v22 = v21;
      if (v21 == 268435459)
      {
        *(this + 257) |= 2u;
      }

      CAVerifyServerReturn(v21);
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v23 = x_log_get_api::log;
      if (!os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v24 = *(this + 1);
      v25 = mach_error_string(v22);
      *buf = 67109634;
      v59 = v24;
      v60 = 1024;
      v61 = v22;
      v62 = 2080;
      v63 = v25;
      v17 = "Failed to register update sync (client=0x%x) [0x%x %s]";
      v26 = v23;
      goto LABEL_67;
    }
  }

  pthread_mutex_unlock((this + 16));
  v28 = 0;
  v56 = 0;
  while (1)
  {
    v55 = 0;
    v29 = CA::Render::Context::wait_for_synchronize(name, 0, &v55, &v56, v27);
    if (v29 <= 3)
    {
      break;
    }

    if (v29 == 4)
    {
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v30 = x_log_get_api::log;
      v31 = os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR);
      if (v28 > 8)
      {
        if (!v31)
        {
          goto LABEL_20;
        }

        v48 = *(this + 3);
        v49 = *(this + 1);
        *buf = 67109376;
        v59 = v48;
        v60 = 1024;
        v61 = v49;
        v42 = "excessive update sync wait : %u:%x";
        v45 = v30;
        goto LABEL_64;
      }

      ++v28;
      if (v31)
      {
        v32 = *(this + 3);
        v33 = *(this + 1);
        *buf = 67109632;
        v59 = v28;
        v60 = 1024;
        v61 = v32;
        v62 = 1024;
        LODWORD(v63) = v33;
        v34 = v30;
        v35 = "long update sync wait %i : %u:%x";
        v36 = 20;
        goto LABEL_48;
      }
    }

    else
    {
LABEL_44:
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v37 = x_log_get_api::log;
      if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        v38 = *(this + 1);
        *buf = 67109120;
        v59 = v38;
        v34 = v37;
        v35 = "error while waiting for update sync on %x";
        v36 = 8;
LABEL_48:
        _os_log_error_impl(&dword_183AA6000, v34, OS_LOG_TYPE_ERROR, v35, buf, v36);
      }
    }
  }

  if (v29 == 1)
  {
    pthread_mutex_lock((this + 16));
    v46 = v55;
    v47 = *(this + 33);
    if (v55 > v47)
    {
      *(this + 33) = v55;
      v47 = v46;
    }

    if (v56 <= *(this + 34))
    {
      v56 = *(this + 34);
    }

    else
    {
      *(this + 34) = v56;
    }

    if (v47 > *(this + 32))
    {
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v52 = x_log_get_api::log;
      if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        v54 = *(this + 32);
        v53 = *(this + 33);
        *buf = 67109376;
        v59 = v53;
        v60 = 1024;
        v61 = v54;
        _os_log_error_impl(&dword_183AA6000, v52, OS_LOG_TYPE_ERROR, "server/client commit_seed mismatch : sync server seed (%u) > client (%u)", buf, 0xEu);
      }

      *(this + 32) = *(this + 33);
    }

    pthread_mutex_unlock((this + 16));
    goto LABEL_20;
  }

  if (v29 != 2)
  {
    if (v29 == 3)
    {
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v39 = x_log_get_api::log;
      if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        v43 = *(this + 3);
        v44 = *(this + 1);
        *buf = 67109376;
        v59 = v43;
        v60 = 1024;
        v61 = v44;
        v42 = "unrecognized reply from update sync on %u:%x";
        goto LABEL_57;
      }

      goto LABEL_20;
    }

    goto LABEL_44;
  }

  if (x_log_get_api::once[0] != -1)
  {
    dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
  }

  v39 = x_log_get_api::log;
  if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
  {
    v40 = *(this + 3);
    v41 = *(this + 1);
    *buf = 67109376;
    v59 = v40;
    v60 = 1024;
    v61 = v41;
    v42 = "dead reply from update sync on %u:%x";
LABEL_57:
    v45 = v39;
LABEL_64:
    _os_log_error_impl(&dword_183AA6000, v45, OS_LOG_TYPE_ERROR, v42, buf, 0xEu);
  }

LABEL_20:
  if (name - 1 <= 0xFFFFFFFD)
  {
    mach_port_mod_refs(*v10, name, 1u, -1);
  }

  return v9 <= v56;
}

uint64_t _CASSynchronize(int a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v16 = *MEMORY[0x1E69E9840];
  *&msg[20] = 0u;
  *&msg[4] = 0u;
  *&msg[28] = a2;
  v9 = 1376256;
  v10 = *MEMORY[0x1E69E99E0];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  *msg = -2147483629;
  *&msg[8] = a1;
  *&msg[20] = 0x100009D09;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 1, 0x44u, 0, 0, 0, 0);
}

uint64_t CA::Render::Context::wait_for_synchronize(mach_port_name_t rcv_name, _DWORD *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v8 = mach_msg(&v14, 258, 0, 0x68u, rcv_name, 0x3E8u, 0);
  if (v8 == 268451843)
  {
    return 4;
  }

  v9 = v8;
  if (v8)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v11 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v22 = v9;
      _os_log_error_impl(&dword_183AA6000, v11, OS_LOG_TYPE_ERROR, "error (%i) waiting for sync reply", buf, 8u);
    }

    return 5;
  }

  else
  {
    if (DWORD1(v15) == 1937337955 && DWORD1(v14) >= 0x24)
    {
      if (a2)
      {
        *a2 = DWORD2(v15);
      }

      if (a3)
      {
        *a3 = HIDWORD(v15);
      }

      if (a4)
      {
        *a4 = v16;
      }

      v10 = 1;
    }

    else if (DWORD1(v15) == 71)
    {
      v10 = 2;
    }

    else
    {
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v12 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v22 = DWORD1(v15);
        _os_log_error_impl(&dword_183AA6000, v12, OS_LOG_TYPE_ERROR, "unknown sync reply received : %i", buf, 8u);
      }

      v10 = 3;
    }

    mach_msg_destroy(&v14);
  }

  return v10;
}

uint64_t CASSynchronize(CA::Render::Context *a1, mach_port_name_t a2, int a3, int a4, uint32_t a5, int a6, int a7)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (a2 - 1 > 0xFFFFFFFD)
  {
    if (!a2)
    {
      return 0;
    }

LABEL_13:
    mach_port_deallocate(*MEMORY[0x1E69E9A60], a2);
    return 0;
  }

  v13 = CA::Render::Context::context_by_server_port(a1);
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = v13;
  if (CADeviceSupportsAndromeda::once != -1)
  {
    dispatch_once(&CADeviceSupportsAndromeda::once, &__block_literal_global_95);
  }

  if (CADeviceSupportsAndromeda::supports_andromeda == 1)
  {
    if (a7)
    {
      os_unfair_lock_opaque = v14[161]._os_unfair_lock_opaque;
      if (os_unfair_lock_opaque)
      {
        v17[0] = os_unfair_lock_opaque;
        CA::Render::post_notification(0x3Du, 0, v17, 0);
        if (BYTE4(v17[0]))
        {
          a3 = 0;
        }
      }
    }
  }

  CA::Render::Context::request_synchronize(v14, a2, a3, a4, a5, a6);
  if (atomic_fetch_add(&v14[2], 0xFFFFFFFF) == 1)
  {
    (*(*&v14->_os_unfair_lock_opaque + 16))(v14);
  }

  return 0;
}

uint64_t _XSynchronize(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 68)
  {
    if (*(result + 38) << 16 == 1179648)
    {
      if (!*(result + 68) && *(result + 72) > 0x1Fu)
      {
        result = CASSynchronize(*(result + 12), *(result + 28), *(result + 48), *(result + 52), *(result + 56), *(result + 60), *(result + 64));
        *(a2 + 32) = result;
        return result;
      }

      v3 = -309;
    }

    else
    {
      v3 = -300;
    }
  }

  else
  {
    v3 = -304;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

void CA::Render::Context::request_synchronize(os_unfair_lock_s *this, mach_port_name_t name, int a3, int a4, uint32_t a5, int a6)
{
  block[6] = *MEMORY[0x1E69E9840];
  if (name + 1 <= 1)
  {
    __assert_rtn("request_synchronize", "render-context.cpp", 1783, "MACH_PORT_VALID (port)");
  }

  if ((this[3]._os_unfair_lock_opaque & 0x400) == 0)
  {
    os_unfair_lock_lock(this + 13);
    os_unfair_lock_opaque = this[16]._os_unfair_lock_opaque;
    if (a3)
    {
      if (os_unfair_lock_opaque >= a5 && a6)
      {
        if (this[17]._os_unfair_lock_opaque < a5 && this[88]._os_unfair_lock_opaque)
        {
          goto LABEL_8;
        }
      }

      else if (os_unfair_lock_opaque < a5)
      {
LABEL_8:
        if (CA::Render::sync_hang_report_level(void)::onceToken != -1)
        {
          dispatch_once(&CA::Render::sync_hang_report_level(void)::onceToken, &__block_literal_global_98_4538);
        }

        if (a3 > 0 || CA::Render::sync_hang_report_level(void)::level)
        {
          v16 = mach_absolute_time();
          v17 = CATimeWithHostTime(v16);
          if (a3 < 1)
          {
            v19 = v17 + 5.0;
            v20 = 5000000000;
            v13 = INFINITY;
            v14 = v17 + 5.0;
          }

          else
          {
            if (a3 >= 0x1388)
            {
              v18 = 5000;
            }

            else
            {
              v18 = a3;
            }

            v19 = v17 + v18 * 0.001;
            v20 = 1000000 * v18;
            v14 = INFINITY;
            v13 = v19;
          }

          v21 = this;
          if (!atomic_fetch_add(&this[2], 1u))
          {
            v21 = 0;
            atomic_fetch_add(&this[2], 0xFFFFFFFF);
          }

          if (!CA::Render::Server::_thread || (CA::Render::Server::add_callback(0, CA::Render::sync_req_timeout, v21, v19) & 1) == 0)
          {
            global_queue = dispatch_get_global_queue(33, 0);
            v23 = dispatch_time(0, v20);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 0x40000000;
            block[2] = ___ZN2CA6Render7Context19request_synchronizeEjijjb_block_invoke;
            block[3] = &__block_descriptor_tmp_47;
            *&block[4] = v19;
            block[5] = v21;
            dispatch_after(v23, global_queue, block);
          }
        }

        else
        {
          v13 = INFINITY;
          v14 = INFINITY;
        }

        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v24 = malloc_type_zone_malloc(malloc_zone, 0x30uLL, 0x1020040468E08AAuLL);
        *v24 = *&this[14]._os_unfair_lock_opaque;
        *(v24 + 2) = name;
        v24[2] = v14;
        v24[3] = v13;
        *(v24 + 8) = a4;
        *(v24 + 9) = a5;
        *(v24 + 40) = a6;
        *&this[14]._os_unfair_lock_opaque = v24;
        goto LABEL_32;
      }
    }

    CA::Render::send_synchronize_reply(this[4]._os_unfair_lock_opaque, name, a4, os_unfair_lock_opaque, this[17]._os_unfair_lock_opaque);
LABEL_32:
    os_unfair_lock_unlock(this + 13);
    return;
  }

  v15 = *MEMORY[0x1E69E9A60];

  mach_port_deallocate(v15, name);
}

void CA::Render::send_synchronize_reply(CA::Render *this, mach_port_t a2, int a3, int a4, int a5)
{
  v5 = this;
  v18 = *MEMORY[0x1E69E9840];
  *&msg.msgh_bits = 0x2400000012;
  msg.msgh_remote_port = a2;
  msg.msgh_local_port = 0;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 1937337955;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v6 = mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
  if (v6)
  {
    v7 = v6;
    if (v6 == 268435459)
    {
      mach_msg_destroy(&msg);
    }

    else
    {
      if (CA::Render::sync_hang_report_level(void)::onceToken != -1)
      {
        dispatch_once(&CA::Render::sync_hang_report_level(void)::onceToken, &__block_literal_global_98_4538);
      }

      v8 = CA::Render::sync_hang_report_level(void)::level;
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v9 = x_log_get_render(void)::log;
      if (v8 == 3)
      {
        if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          v15 = v7;
          v16 = 1024;
          v17 = v5;
          _os_log_error_impl(&dword_183AA6000, v9, OS_LOG_TYPE_ERROR, "CoreAnimation: unexpected error %i sending sync reply from %x", buf, 0xEu);
        }

        abort();
      }

      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109376;
        v15 = v7;
        v16 = 1024;
        v17 = v5;
        _os_log_fault_impl(&dword_183AA6000, v9, OS_LOG_TYPE_FAULT, "CoreAnimation: unexpected error %i sending sync reply from %x", buf, 0xEu);
      }
    }
  }
}

void CA::Context::ping(CA::Context *this)
{
  v15 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((this + 16));
  if (!*(this + 13))
  {
    v2 = *(this + 40);
    if (!v2 || (*(this + 257) & 2) != 0)
    {
      goto LABEL_32;
    }

    v14 = 0;
    *&reply_port_12[4] = 0u;
    reply_port = 0;
    v3 = mig_get_reply_port();
    reply_port_4 = __PAIR64__(v3, v2);
    v10 = 5395;
    *reply_port_12 = 0x9D0800000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&v10);
      v4 = HIDWORD(reply_port_4);
    }

    else
    {
      v4 = v3;
    }

    v5 = mach_msg(&v10, 3, 0x18u, 0x2Cu, v4, 0, 0);
    v6 = v5;
    if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(HIDWORD(reply_port_4));
      goto LABEL_25;
    }

    if (v5)
    {
      mig_dealloc_reply_port(HIDWORD(reply_port_4));
    }

    else
    {
      if (*&reply_port_12[4] == 71)
      {
        v6 = 4294966988;
      }

      else if (*&reply_port_12[4] == 40300)
      {
        v6 = 4294966996;
        if ((v10 & 0x80000000) == 0 && reply_port == 36 && !reply_port_4)
        {
          v6 = *&reply_port_12[16];
          if (!*&reply_port_12[16])
          {
LABEL_32:
            pthread_mutex_unlock((this + 16));
            return;
          }
        }
      }

      else
      {
        v6 = 4294966995;
      }

      mach_msg_destroy(&v10);
    }

LABEL_25:
    if (v6)
    {
      if (v6 == 268435459)
      {
        *(this + 257) |= 2u;
      }

      CAVerifyServerReturn(v6);
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v7 = x_log_get_api::log;
      if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        v8 = *(this + 1);
        v9 = mach_error_string(v6);
        v10 = 67109634;
        reply_port = v8;
        LOWORD(reply_port_4) = 1024;
        *(&reply_port_4 + 2) = v6;
        HIWORD(reply_port_4) = 2080;
        *reply_port_12 = v9;
        _os_log_error_impl(&dword_183AA6000, v7, OS_LOG_TYPE_ERROR, "Failed to ping server (client=0x%x) [0x%x %s]", &v10, 0x18u);
      }
    }

    goto LABEL_32;
  }

  pthread_mutex_unlock((this + 16));

  CA::Render::post_notification(0xCu, 0, 0, 0);
}

void _XPing(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    v3 = -304;
  }

  else if (a1[6] || a1[7] < 0x20u)
  {
    v3 = -309;
  }

  else
  {
    CA::Render::post_notification(0xCu, 0, 0, 0);
    v3 = 0;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

uint64_t CA::WindowServer::Server::ping_server(CA::WindowServer::Server *this, CA::Render::Object *a2, void *a3, void *a4)
{
  v5 = *(a2 + 12);
  result = pthread_mutex_trylock(v5 + 8);
  if (!result)
  {
    pthread_mutex_lock((a2 + 24));
    pthread_mutex_unlock((a2 + 24));

    return pthread_mutex_unlock(v5 + 8);
  }

  return result;
}

_DWORD *point_vector_from_array(NSArray *a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [(NSArray *)a1 count];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = 16 * v2;
  if (16 * v2 <= 0x1000)
  {
    MEMORY[0x1EEE9AC00](v2);
    v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v5, v4);
    goto LABEL_5;
  }

  v5 = malloc_type_malloc(16 * v2, 0xD15EB8FEuLL);
  if (!v5)
  {
    return 0;
  }

LABEL_5:
  v6 = 0;
  v7 = MEMORY[0x1E696AA78];
  do
  {
    v8 = [(NSArray *)a1 objectAtIndex:v6];
    v9 = [v8 objCType];
    if (v9 && !strcmp(v9, "{CGPoint=dd}"))
    {
      [v8 pointValue];
      *(&v11 + 1) = v12;
    }

    else
    {
      v11 = *v7;
    }

    *&v5[16 * v6++] = v11;
  }

  while (v3 != v6);
  v13 = CA::Render::Vector::new_vector((2 * v3), v5, v10);
  if (v4 > 0x1000)
  {
    free(v5);
  }

  return v13;
}

void *CA::Render::MatchAnimation::encode(void **this, CA::Render::Encoder *a2)
{
  CA::Render::Animation::encode(this, a2);
  v4 = this[12];
  v5 = *(a2 + 4);
  if ((v5 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 8);
    v5 = *(a2 + 4);
  }

  *v5 = v4;
  v6 = *(a2 + 4);
  v7 = *(a2 + 5);
  v8 = (v6 + 8);
  *(a2 + 4) = v6 + 8;
  v9 = this[13];
  if (v6 + 16 > v7)
  {
    CA::Render::Encoder::grow(a2, 8);
    v8 = *(a2 + 4);
  }

  *v8 = v9;
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v12 = (v10 + 8);
  *(a2 + 4) = v10 + 8;
  v13 = *(this + 28);
  if (v10 + 12 > v11)
  {
    CA::Render::Encoder::grow(a2, 4);
    v12 = *(a2 + 4);
  }

  *v12 = v13;
  *(a2 + 4) += 4;
  CA::Render::Encoder::encode_keypath(a2, this + 15);

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void *CA::Render::MatchMoveAnimation::encode(CA::Render::MatchMoveAnimation *this, CA::Render::Encoder *a2)
{
  CA::Render::MatchAnimation::encode(this, a2);
  CA::Render::Encoder::encode_object(a2, *(this + 17));

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void CA::Render::MatchMoveAnimation::~MatchMoveAnimation(CA::Render::MatchMoveAnimation *this, void **a2)
{
  *this = &unk_1EF200B38;
  v3 = *(this + 17);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  --dword_1ED4EAAB8;
  *this = &unk_1EF1FEBD8;
  CA::Render::key_path_free(*(this + 15), a2);
  CA::Render::Animation::~Animation(this, v4);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v5 = malloc_zone;

  malloc_zone_free(v5, this);
}

{
  *this = &unk_1EF200B38;
  v3 = *(this + 17);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  --dword_1ED4EAAB8;
  *this = &unk_1EF1FEBD8;
  CA::Render::key_path_free(*(this + 15), a2);

  CA::Render::Animation::~Animation(this, v4);
}

uint64_t CA::WindowServer::IOMFBDisplay::release_detached_handle(uint64_t result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    result = CA::Render::Handle::lock_context(*result);
    if (result)
    {
      v4 = result;
      *(v1 + 13) &= ~0x8000uLL;
      v5 = *(result + 384);
      if (v5)
      {
        if (atomic_fetch_add(v5 + 4, 0xFFFFFFFF) == 1)
        {
          CA::Render::LayerNode::delete_node(v5, v3);
        }

        *(v4 + 384) = 0;
      }

      result = CA::Render::Handle::unlock_context(v4, v3);
    }

    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*v1 + 16))(v1);
    }

    *v2 = 0;
    *(v2 + 288) = 0;
  }

  return result;
}

void CA::WindowServer::print_layer_trees(uint64_t a1, double a2)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  CA::WindowServer::show_layer_trees(v4, a1, a2);
  if (x_log_get_CADebug(void)::once != -1)
  {
    dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
  }

  v2 = x_log_get_CADebug(void)::log;
  if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = x_stream_get(v4);
    *buf = 136315138;
    v6 = v3;
    _os_log_impl(&dword_183AA6000, v2, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (v4[0])
  {
    free(v4[0]);
  }
}

uint64_t (***CA::Render::Transition::subclass(CA::Render::Transition *this, unsigned int a2, const CA::Render::TransitionSubclass *a3))(CA::Render::BuiltinTransition *__hidden this, const CA::Render::TransitionAnimation *, CA::Render::Layer *, unsigned int, float)
{
  result = *(this + 7);
  if (!result)
  {
    v5 = *(this + 4);
    if (v5 == 255)
    {
      v6 = *(this + 4);
      if (v6)
      {
        v5 = *(v6 + 24);
      }

      else
      {
        v5 = 0;
      }
    }

    result = CA::Render::Transition::lookup_transition(v5, a2, a3);
    *(this + 7) = result;
  }

  return result;
}

float64_t CA::Transform::invert(CA::Transform *this, uint64_t a2, const double *a3)
{
  v3 = *(this + 144);
  if ((v3 & 0x10) == 0)
  {
    v4 = vdup_n_s32(v3);
    v5 = vceqz_s32(vand_s8(v4, 0x100000002));
    v6.i64[0] = v5.i32[0];
    v6.i64[1] = v5.i32[1];
    v7 = vbslq_s8(v6, vnegq_f64(*(this + 6)), *(this + 6));
    v8.i64[0] = vdupq_laneq_s64(v7, 1).u64[0];
    *&v8.i64[1] = -*v7.i64;
    v9 = vceqz_s32(vand_s8(v4, 0x400000008));
    v10 = vdup_lane_s32(v9, 1);
    v6.i64[0] = v10.i32[0];
    v6.i64[1] = v10.i32[1];
    v11 = vbslq_s8(v6, v7, v8);
    if (v9.i8[0])
    {
      *(this + 6) = v11;
      v12 = image_queue_rotation_from_logical_rotation(CAMetalLayerRotation,BOOL)::invert_table[v3 & 7];
      if ((v3 & 7) == v12)
      {
        return v11.f64[0];
      }
    }

    else
    {
      *(this + 6) = vmulq_n_f64(v11, *(this + 17));
      *(this + 8) = vextq_s8(*(this + 8), *(this + 8), 8uLL);
      v12 = image_queue_rotation_from_logical_rotation(CAMetalLayerRotation,BOOL)::invert_table[v3 & 7];
      if ((v3 & 7) == v12)
      {
LABEL_8:
        v11.f64[0] = CA::Transform::set_2x2(this);
        return v11.f64[0];
      }
    }

    *(this + 144) = v3 & 0xE8 | v12 & 7;
    goto LABEL_8;
  }

  CA::Mat4Impl::mat4_invert(this, this, a3);
  return v11.f64[0];
}

void CA::Render::Transition::~Transition(CA::Render::Transition *this, const CA::Render::Object *a2)
{
  *this = &unk_1EF1FA338;
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

  --dword_1ED4EAB28;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v6 = malloc_zone;

  malloc_zone_free(v6, this);
}

{
  *this = &unk_1EF1FA338;
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

  --dword_1ED4EAB28;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

uint64_t backingStoreFinalize(char *a1)
{
  v13[7] = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&buffer_list_mutex);
  v2 = *(a1 + 21);
  v3 = *(a1 + 22);
  if (v3)
  {
    *(v3 + 168) = v2;
  }

  if (v2)
  {
    *(v2 + 176) = v3;
  }

  if (buffer_list == a1)
  {
    buffer_list = v2;
  }

  pthread_mutex_unlock(&buffer_list_mutex);
  CGColorSpaceRelease(*(a1 + 20));
  if (pthread_main_np())
  {
    for (i = 0; i != 216; i += 72)
    {
      v5 = *&a1[i + 208];
      if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
      {
        (**v5)(v5);
        (*(*v5 + 16))(v5);
      }
    }
  }

  else
  {
    v6 = *(a1 + 26);
    v7 = *(a1 + 35);
    v8 = *(a1 + 44);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = ___ZL20backingStoreFinalizePKv_block_invoke;
    v13[3] = &__block_descriptor_tmp_11_1042;
    v13[4] = v6;
    v13[5] = v7;
    v13[6] = v8;
    dispatch_async(MEMORY[0x1E69E96A0], v13);
  }

  for (j = 192; j != 408; j += 72)
  {
    v10 = &a1[j];
    v11 = *&a1[j + 8];
    if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v11 + 16))(v11);
    }

    CGColorSpaceRelease(*v10);
    CGSReleaseRegion();
    CGColorRelease(v10[3]);
  }

  if (*(a1 + 55))
  {
    CGSBoundingShapeRelease();
  }

  CGSReleaseRegion();
  CABackingStoreReleaseImages(a1);
  pthread_cond_destroy((a1 + 80));
  return pthread_mutex_destroy((a1 + 16));
}

void CA::Render::Shmem::~Shmem(CA::Render::Shmem *this)
{
  *this = &unk_1EF1F5090;
  CA::Render::post_notification(3u, this, 0, 1);
  v2 = *(this + 8);
  if (v2)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    v3(*(this + 3), *(this + 6));
  }

  v4 = *(this + 3);
  if ((v4 & 0x2400) == 0x2000)
  {
    v5 = *(this + 2);
    v6 = CAGetStatsStruct(0);
    v7 = *(v6 + 1);
    v8 = *v6 - v5;
    *v6 = v8;
    if (v8 > v7)
    {
      *(v6 + 1) = v8;
    }

    v4 = *(this + 3);
  }

  --dword_1ED4EAB08;
  *this = &unk_1EF1F6D08;
  if (v4 < 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, v2);
  }
}

{
  CA::Render::Shmem::~Shmem(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

_DWORD *CA::BoundsImpl::inset(_DWORD *result, int a2, int a3)
{
  v4 = result[2];
  v3 = result[3];
  if (v4 <= v3)
  {
    v5 = result[3];
  }

  else
  {
    v5 = result[2];
  }

  if (v4 >= v3)
  {
    v6 = result[3];
  }

  else
  {
    v6 = result[2];
  }

  if (v5 <= 1073741822 && v6 >= 1)
  {
    v8 = result[1] + a3;
    *result += a2;
    result[1] = v8;
    v9 = v4 - 2 * a2;
    v10 = v3 - 2 * a3;
    result[2] = v9;
    result[3] = v10;
    if (v9 < 1 || v10 <= 0)
    {
      *(result + 1) = 0;
    }
  }

  return result;
}

void CA::OGL::render_home_affordance_base(float32x4_t *a1, uint64_t a2, int32x2_t *a3, float a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 40);
  float_key = CA::Render::KeyValueArray::get_float_key(v8, 325, 0.0);
  v10 = CA::Render::KeyValueArray::get_float_key(v8, 397, 0.0);
  if (!v8)
  {
    goto LABEL_14;
  }

  v11 = v8[4];
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = 0;
  while (1)
  {
    v13 = *&v8[2 * v12 + 6];
    if (*(v13 + 16) == 321)
    {
      break;
    }

    if (v11 == ++v12)
    {
      goto LABEL_14;
    }
  }

  if ((v12 & 0x80000000) == 0 && *(v13 + 24))
  {
    v34 = 0uLL;
    float_color_key = CA::Render::KeyValueArray::get_float_color_key(v8, 360, &v34);
    v15 = vcvt_f16_f32(v34);
    if (float_color_key)
    {
      v16 = -1;
    }

    else
    {
      v16 = 0;
    }

    v17 = vbsl_s8(vdup_n_s16(v16), v15, 0x3C003C003C003C00);
    v8 = *(a2 + 40);
    if (!v8)
    {
      return;
    }
  }

  else
  {
LABEL_14:
    _S0 = CA::Render::KeyValueArray::get_float_key(v8, 322, 0.0);
    if (_S0 > 1.0)
    {
      _S0 = 1.0;
    }

    if (_S0 < 0.0)
    {
      _S0 = 0.0;
    }

    __asm { FCVT            H0, S0 }

    v17 = vdup_n_s16(LODWORD(_S0));
    v17.i16[3] = 15360;
    if (!v8)
    {
      return;
    }
  }

  v23 = v8[4];
  if (v23)
  {
    v24 = 0;
    v25 = float_key;
    v26 = v10;
    while (1)
    {
      v27 = *&v8[2 * v24 + 6];
      if (*(v27 + 16) == 363)
      {
        break;
      }

      if (v23 == ++v24)
      {
        return;
      }
    }

    if ((v24 & 0x80000000) == 0)
    {
      v28 = *(v27 + 24);
      if (v28)
      {
        v33 = v17;
        v29 = (*(*v28 + 80))(v28);
        if (v29)
        {
          v30 = v29;
          CA::OGL::bind_filter_surface(a1, a3, 0, a4);
          *(a1[1].i64[0] + 16) = 76;
          v34 = 0uLL;
          v31 = CA::OGL::Context::bind_image(a1, 1u, v30, 256, 1u, 1, 0, 0, 0.0, &v34, 0);
          if (v31)
          {
            v32 = v31;
            a1[10] = vcvtq_f32_f16(v33);
            a1[15].f32[0] = v25;
            a1[20].f32[0] = v26;
            CA::OGL::emit_filter_quads(a1, a3, a4);
            (*(a1->i64[0] + 560))(a1, v32, 1);
          }

          if (a1[42].i64[0] != a3)
          {
            CA::OGL::Context::unbind_surface(a1, a3, 0);
          }

          *(a1[1].i64[0] + 16) = 0;
          *(a1[1].i64[0] + 19) = 0;
        }
      }
    }
  }
}

void CA::Context::set_objc_context(id *this, void *a2)
{
  os_unfair_lock_lock(&CA::Context::_lock);
  X::WeakDetails::Ptr::set(this + 10, a2, 1);

  os_unfair_lock_unlock(&CA::Context::_lock);
}

BOOL CA::Context::connect_remote(CA::Context *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(this + 15);
  if (!v2)
  {
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(v2, @"port_number");
  if (!Value)
  {
    v6 = *(this + 15);
    if (v6)
    {
      v7 = CFDictionaryGetValue(v6, @"port_name");
      if (v7)
      {
        v8 = v7;
        CStringPtr = CFStringGetCStringPtr(v7, 0x8000100u);
        if (!CStringPtr)
        {
          MEMORY[0x1EEE9AC00](0);
          CStringPtr = v13;
          bzero(v13, 0x400uLL);
          if (!CFStringGetCString(v8, v13, 1024, 0x8000100u))
          {
            if (x_log_get_api::once[0] != -1)
            {
              dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
            }

            v10 = x_log_get_api::log;
            if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_183AA6000, v10, OS_LOG_TYPE_ERROR, "Failed to get Context port name!", buf, 2u);
            }

            return 0;
          }
        }

LABEL_16:
        ServerPort = CARenderServerGetServerPort(CStringPtr);
        v11 = CA::Context::connect_remote(this, ServerPort);
        mach_port_deallocate(*MEMORY[0x1E69E9A60], ServerPort);
        return v11;
      }
    }

LABEL_15:
    CStringPtr = 0;
    goto LABEL_16;
  }

  v4 = CA_CFIntValue(Value);

  return CA::Context::connect_remote(this, v4);
}

BOOL CA::Context::connect_remote(CA::Context *this, mach_port_t a2)
{
  uu2[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (CARenderServerGetServerPort(0) == a2)
    {
      *(this + 257) |= 0x80u;
    }

    if (dyld_program_sdk_at_least())
    {
      v4 = 0;
    }

    else
    {
      v4 = 8;
    }

    v38 = v4;
    v5 = *(this + 15);
    if (v5)
    {
      Data = CFPropertyListCreateData(*MEMORY[0x1E695E490], v5, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      v7 = *(this + 15);
      if (v7)
      {
        Value = CFDictionaryGetValue(v7, @"client_port_number");
        if (Value)
        {
          v9 = CA_CFIntValue(Value);
          goto LABEL_18;
        }
      }
    }

    else
    {
      Data = 0;
    }

    v9 = CA::Context::_user_client_port;
LABEL_18:
    v12 = CA::MachPortUtil::task_identity_port(void)::task[0];
    if (CA::MachPortUtil::task_identity_port(void)::task[0])
    {
      if (Data)
      {
LABEL_20:
        BytePtr = CFDataGetBytePtr(Data);
        Length = CFDataGetLength(Data);
LABEL_23:
        v42 = 0u;
        v43 = 0u;
        *dest = 0u;
        v41 = 0u;
        {
          v15 = *MEMORY[0x1E69E9A60];
          v16 = getpid();
          if (v17)
          {
            v18 = v17;
            if (x_log_get_api::once[0] != -1)
            {
              dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
            }

            log = x_log_get_api::log;
            if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
            {
              *msg = 67109378;
              *&msg[4] = v18;
              *&msg[8] = 2080;
              *&msg[10] = mach_error_string(v18);
              _os_log_error_impl(&dword_183AA6000, log, OS_LOG_TYPE_ERROR, "task_name_for_pid failed [0x%x %s]", msg, 0x12u);
            }
          }
        }

        v20 = CA::Context::client_port(this);
        v51 = 0;
        v54 = 0u;
        v58 = 0;
        v57 = 0u;
        v56 = 0u;
        v55 = 0u;
        memset(&msg[4], 0, 32);
        *&msg[24] = 5;
        *&msg[28] = v19;
        v45 = 1245184;
        v46 = v20;
        v47 = 1245184;
        v48 = v9;
        v49 = 1245184;
        v50 = v12;
        v52 = 1245184;
        v53 = BytePtr;
        LODWORD(v54) = 16777472;
        DWORD1(v54) = Length;
        *(&v54 + 1) = *MEMORY[0x1E69E99E0];
        *&v55 = __PAIR64__(Length, v38);
        reply_port = mig_get_reply_port();
        *&msg[8] = a2;
        *&msg[12] = reply_port;
        *msg = -2147478253;
        *&msg[16] = 0x9D0A00000000;
        if (MEMORY[0x1EEE9AC50])
        {
          voucher_mach_msg_set(msg);
          v22 = *&msg[12];
        }

        else
        {
          v22 = reply_port;
        }

        v23 = mach_msg(msg, 3, 0x6Cu, 0x98u, v22, 0, 0);
        v24 = v23;
        if ((v23 - 268435458) <= 0xE && ((1 << (v23 - 2)) & 0x4003) != 0)
        {
          mig_put_reply_port(*&msg[12]);
        }

        else if (v23)
        {
          mig_dealloc_reply_port(*&msg[12]);
        }

        else
        {
          if (*&msg[20] == 71)
          {
            v24 = 4294966988;
          }

          else if (*&msg[20] == 40302)
          {
            if ((*msg & 0x80000000) != 0)
            {
              v24 = 4294966996;
              if (*&msg[24] == 2 && (*&msg[4] - 80) <= 0x40 && !*&msg[8] && HIWORD(v45) << 16 == 1114112 && HIWORD(v47) << 16 == 1114112 && v52 <= 0x40 && *&msg[4] - 80 >= v52)
              {
                v25 = (v52 + 3) & 0xFFFFFFFC;
                if (*&msg[4] == v25 + 80)
                {
                  v26 = &msg[v25];
                  v27 = v46;
                  *(this + 40) = *&msg[28];
                  v28 = v50;
                  *(this + 1) = v49;
                  *(this + 3) = v28;
                  mig_strncpy(dest, &v53, 64);
                  v24 = 0;
                  v29 = *(v26 + 19) == 0;
LABEL_59:
                  if (Data)
                  {
                    CFRelease(Data);
                  }

                  v11 = v24 == 0;
                  if (v24)
                  {
                    if (v24 == 268435459)
                    {
                      *(this + 257) |= 2u;
                    }

                    else
                    {
                      CAVerifyServerReturn(v24);
                    }

                    if (x_log_get_api::once[0] != -1)
                    {
                      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
                    }

                    v33 = x_log_get_api::log;
                    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
                    {
                      v35 = *(this + 1);
                      v36 = mach_error_string(v24);
                      *msg = 67109634;
                      *&msg[4] = v35;
                      *&msg[8] = 1024;
                      *&msg[10] = v24;
                      *&msg[14] = 2080;
                      *&msg[16] = v36;
                      _os_log_error_impl(&dword_183AA6000, v33, OS_LOG_TYPE_ERROR, "Unable to register with server (client=0x%x) [0x%x %s]", msg, 0x18u);
                    }
                  }

                  else
                  {
                    if (v29)
                    {
                      if (CADeviceHasInternalBuild::once != -1)
                      {
                        dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
                      }

                      if (CADeviceHasInternalBuild::internal == 1)
                      {
                        *msg = 0;
                        *&msg[8] = 0;
                        uu2[0] = 0;
                        uu2[1] = 0;
                        v30 = uuid_parse(dest, msg);
                        CA::Render::Context::local_quartzcore_uuid(uu2, v31);
                        if (v30 || uuid_compare(msg, uu2))
                        {
                          CA_ABORT_ON_CLIENT_SERVER_QUARTZCORE_UUID_MISMATCH(dest, uu2);
                        }
                      }
                    }

                    *(this + 21) = [CAHostingToken _newTokenWithPort:v27 sid:*(this + 3) cid:*(this + 1)];
                    if ((CA::Context::connect_remote::image_requirements_set & 1) == 0)
                    {
                      CA::Context::connect_remote::image_requirements_set = 1;
                      NeededAlignment = CARenderServerGetNeededAlignment(a2);
                      CADeviceSetMinimumAlignment(NeededAlignment);
                      *msg = 0;
                      LODWORD(uu2[0]) = 0;
                      v39 = 0;
                      if (CARenderServerGetMaxRenderableIOSurfaceSize(a2, msg, uu2, &v39))
                      {
                        CADeviceSetMaxRenderableIOSurfaceSize(*msg, LODWORD(uu2[0]), v39);
                      }
                    }
                  }

                  return v11;
                }
              }
            }

            else if (*&msg[4] == 36)
            {
              v24 = 4294966996;
              if (*&msg[32])
              {
                if (*&msg[8])
                {
                  v24 = 4294966996;
                }

                else
                {
                  v24 = *&msg[32];
                }
              }
            }

            else
            {
              v24 = 4294966996;
            }
          }

          else
          {
            v24 = 4294966995;
          }

          mach_msg_destroy(msg);
        }

        v27 = 0;
        v29 = 1;
        goto LABEL_59;
      }
    }

    else
    {
      task_create_identity_token(*MEMORY[0x1E69E9A60], CA::MachPortUtil::task_identity_port(void)::task);
      v12 = CA::MachPortUtil::task_identity_port(void)::task[0];
      if (Data)
      {
        goto LABEL_20;
      }
    }

    Length = 0;
    BytePtr = 0;
    goto LABEL_23;
  }

  if (x_log_get_api::once[0] != -1)
  {
    dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
  }

  v10 = x_log_get_api::log;
  if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
  {
    *msg = 0;
    _os_log_error_impl(&dword_183AA6000, v10, OS_LOG_TYPE_ERROR, "Null Context server port!", msg, 2u);
  }

  return 0;
}

uint64_t CA::Context::client_port(mach_port_context_t context)
{
  v3 = (context + 192);
  result = *(context + 192);
  if (!result)
  {
    if (*(context + 257))
    {
      return 0;
    }

    else
    {
      v4 = CA::MachPortUtil::ClientIPC::create(v3, "CA::Context");
      CA_CLIENT_MACH_PORT_ALLOCATE_FAILED(v4, *v3);
      return *v3;
    }
  }

  return result;
}

uint64_t CA::MachPortUtil::ClientIPC::create(mach_port_context_t context, const char *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*context || *(context + 8) || *(context + 16))
  {
    __assert_rtn("create", "CAMachPortUtil.cpp", 67, "_port == MACH_PORT_NULL && !_queue && !_source");
  }

  name = 0;
  *&options.flags = xmmword_183E31BB0;
  options.reserved[1] = 0;
  v4 = mach_port_construct(*MEMORY[0x1E69E9A60], &options, context, &name);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = name - 1 > 0xFFFFFFFD;
  }

  if (!v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v7 = dispatch_queue_create(a2, v6);
    *(context + 8) = v7;
    v8 = dispatch_source_create(MEMORY[0x1E69E96D8], name, 0, v7);
    *(context + 16) = v8;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = ___ZN2CA12MachPortUtil9ClientIPC6createEPKc_block_invoke;
    handler[3] = &__block_descriptor_tmp_4_10355;
    v14 = name;
    dispatch_source_set_event_handler(v8, handler);
    v9 = *(context + 16);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZN2CA12MachPortUtil9ClientIPC6createEPKc_block_invoke_2;
    v11[3] = &__block_descriptor_tmp_5;
    v12 = name;
    v11[4] = context;
    dispatch_source_set_cancel_handler(v9, v11);
    *context = name;
  }

  return v4;
}

uint64_t CASRegisterClient(mach_port_name_t a1, const audit_token_t *a2, mach_port_name_t a3, mach_port_name_t a4, char a5, const UInt8 *a6, unsigned int a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, pid_t *a11, char *a12, _DWORD *a13, CA::Render::Server *a14)
{
  v20 = a2;
  v52 = *MEMORY[0x1E69E9840];
  length = a7;
  v22 = CA::Render::Server::audit_token_cache_lookup(a14, a2);
  v24 = MEMORY[0x1E69E9A60];
  if ((v22 & 0x2000) != 0)
  {
    v31 = 4213784577;
    if (a4)
    {
LABEL_31:
      mach_port_deallocate(*v24, a4);
    }
  }

  else
  {
    v46 = a8;
    v47 = a6;
    if (a7 && (v25 = *MEMORY[0x1E695E490], (v26 = CFDataCreate(*MEMORY[0x1E695E490], a6, length)) != 0))
    {
      v27 = v26;
      v28 = CFPropertyListCreateWithData(v25, v26, 0, 0, 0);
      v29 = v28;
      if (v28)
      {
        v30 = CFGetTypeID(v28);
        if (v30 != CFDictionaryGetTypeID())
        {
          CFRelease(v29);
          v29 = 0;
        }
      }

      CFRelease(v27);
    }

    else
    {
      v29 = 0;
    }

    v32 = CA::Render::Server::audit_token_cache_lookup(a14, v23);
    v33 = *(a14 + 5);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v34 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x308uLL, 0xDEEC3011uLL);
    v35 = v34;
    if (v34)
    {
      v36 = CA::Render::Context::Context(v34, v29, (v32 >> 9) & 4 | (v32 >> 1) & 3, a5 & 8, v33);
      *(v35 + 64) = a1;
      *(v35 + 65) = v20;
      *(v35 + 66) = a3;
      *(v35 + 67) = a4;
      previous = 0;
      v37 = *v24;
      v38 = CA::Render::Server::notify_port(v36);
      mach_port_request_notification(v37, v20, 72, 0, v38, 0x15u, &previous);
      if (previous)
      {
        mach_port_deallocate(*v24, previous);
      }

      *(v35 + 3) |= 0x1401000u;
      CA::Render::Context::set_display_mask(v35, *(v35 + 160));
      CA::Render::Context::set_display_id(v35, *(v35 + 161));
      v39 = *(v35 + 64);
      a6 = v47;
      if (v39)
      {
        task_info_outCnt[0] = 8;
        task_info(v39, 0xFu, v35 + 49, task_info_outCnt);
        atomic_store(*(v35 + 54), v35 + 57);
        if ((CA::Render::Server::audit_token_cache_lookup((v35 + 196), v40) & 0x400) != 0)
        {
          LOWORD(v42) = 256;
        }

        else
        {
          v42 = (CA::Render::Server::audit_token_cache_lookup((v35 + 196), v41) >> 9) & 0x100;
        }

        *(v35 + 292) = *(v35 + 292) & 0xFEFF | v42;
        *(v35 + 292) = *(v35 + 292) & 0xFDFF | (CA::Render::Server::audit_token_cache_lookup((v35 + 196), v41) >> 3) & 0x200;
        *(v35 + 292) = *(v35 + 292) & 0xFBFF | (CA::Render::Server::audit_token_cache_lookup((v35 + 196), v43) << 8) & 0x400;
      }

      *v46 = CA::Render::Context::server_port(v35);
      *a9 = CA::Render::Context::make_hosting_port(v35);
      *a10 = *(v35 + 4);
      *a11 = getpid();
      *task_info_outCnt = 0;
      v51 = 0;
      CA::Render::Context::local_quartzcore_uuid(task_info_outCnt, v44);
      uuid_unparse(task_info_outCnt, a12);
      if (atomic_fetch_add(v35 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v35 + 16))(v35);
      }

      a1 = 0;
      v20 = 0;
      a3 = 0;
      a4 = 0;
    }

    else
    {
      a6 = v47;
    }

    *a13 = 0;
    if (v29)
    {
      CFRelease(v29);
    }

    if (v35)
    {
      v31 = 0;
    }

    else
    {
      v31 = 5;
    }

    if (a4)
    {
      goto LABEL_31;
    }
  }

  if (a3)
  {
    mach_port_deallocate(*v24, a3);
  }

  if (v20)
  {
    mach_port_deallocate(*v24, v20);
  }

  if (a1)
  {
    mach_port_deallocate(*v24, a1);
  }

  mach_vm_deallocate(*v24, a6, length);
  return v31;
}