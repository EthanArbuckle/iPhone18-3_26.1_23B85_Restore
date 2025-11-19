uint64_t GLDVertexArrayRec::updateVertexArrayBuffers(GLDVertexArrayRec *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 6);
  v4 = a2 & 0xFFFFFFFF0000;
  if (!a3)
  {
    if (v4)
    {
      v13 = *(v3 + 768);
      while (1)
      {
        v14 = __clz(__rbit64(v4)) - 16;
        v15 = 0x10000 << v14;
        if ((v13 & (0x10000 << v14)) != 0)
        {
          v16 = v3 + 24 * v14;
          v17 = glrConvertVertexElementType(*(v16 + 20), *(v16 + 22));
          v18 = v17 ? glrSupportedVertexFormatTableData[16 * v17 + 10] - 1 : 3;
          if ((v18 & *v16) != 0)
          {
            break;
          }
        }

        v12 = v15 == v4;
        v4 ^= v15;
        if (v12)
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  if (!v4)
  {
    return 1;
  }

  v5 = *(v3 + 768);
  while (1)
  {
    v6 = __clz(__rbit64(v4)) - 16;
    v7 = 0x10000 << v6;
    if ((v5 & (0x10000 << v6)) != 0)
    {
      v8 = v3 + 24 * v6;
      result = glrConvertVertexElementType(*(v8 + 20), *(v8 + 22));
      if (!result)
      {
        return result;
      }

      v10 = &glrSupportedVertexFormatTableData[16 * result];
      if (((v10[10] - 1) & *v8) != 0)
      {
        break;
      }

      v11 = *(v8 + 16);
      v12 = v11 <= 4095 && (*(v8 + 16) & 3) == 0;
      if (!v12 || *(v8 + 8) > 0x3FFu || (*v8 & 3) + v10[9] > v11)
      {
        break;
      }
    }

    v12 = v7 == v4;
    v4 ^= v7;
    if (v12)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t gldCreateVertexArray(uint64_t a1, GLDObject **a2, uint64_t a3, uint64_t a4)
{
  v8 = GLDObject::operator new(0x68);
  GLDObject::GLDObject(v8);
  *v8 = &unk_2A240EEA8;
  GLDLibrary::getAllDisplayMask(v8);
  *(v8 + 5) = a1;
  *(v8 + 6) = a3;
  *(v8 + 7) = a4;
  *(v8 + 9) = objc_alloc_init(MEMORY[0x29EDBB680]);
  *a2 = v8;
  return 0;
}

uint64_t gldDestroyVertexArray(uint64_t a1, atomic_uint *this)
{
  if (*(a1 + 248))
  {
    pthread_mutex_lock((a1 + 256));
  }

  if (this)
  {
    GLDObject::release(this);
  }

  if (*(a1 + 248))
  {
    pthread_mutex_unlock((a1 + 256));
  }

  return 0;
}

intptr_t gldUnbindBuffer(id *a1, GLDBufferRec *this)
{
  result = GLDBufferRec::getMemoryPlugin(this);
  if (result)
  {
    v4 = *(result + 24);
    if (v4)
    {
      if (*(v4 + 12))
      {

        return GLDContextRec::flushContext(a1);
      }
    }
  }

  return result;
}

uint64_t gldBufferSubData(int a1, GLDBufferRec *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = GLDBufferRec::load(this);
  if (result)
  {
    if (**(this + 3) + a3 == a5)
    {
      return 1;
    }

    else
    {
      GLDBufferRec::finishCPUAccess(this);
      return 0;
    }
  }

  return result;
}

id *gldFlushMemoryPlugin(id *this, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    if (*(v2 + 12))
    {
      return GLDContextRec::flushContext(this);
    }
  }

  return this;
}

uint64_t GLDContextRec::getClearPipelineState(GLDContextRec *this, int a2)
{
  v3 = 0;
  v4 = (*(this + 13) + 12288);
  v5 = this + 2424;
  do
  {
    *(this + v3 + 1220) = *&v5[8 * v3 + 1992];
    v6 = 1 << v3;
    if (((1 << v3) & a2) != 0)
    {
      if ((v6 & v4[777]) != 0)
      {
        v7 = (8 * ((v6 & v4[776]) != 0)) | 4;
      }

      else
      {
        v7 = 8 * ((v6 & v4[776]) != 0);
      }

      if ((v6 & v4[778]) != 0)
      {
        v7 |= 2u;
      }

      v8 = *&v5[4 * v3] & 0xF87FFFFF | ((v7 & 0xE | (v4[779] >> v3) & 1) << 23);
    }

    else
    {
      v8 = *&v5[4 * v3] & 0xF87FFFFF;
    }

    *&v5[4 * v3++] = v8;
  }

  while (v3 != 4);
  *(this + 306) = *(this + 306) & 0xFFFFB1FFFFFFFFFFLL | ((*(this + 560) == 252) << 41) | ((*(this + 561) == 253) << 46);
  *(this + 301) = *(this + 301) & 0xFFFF000000FFFFFFLL | ((GLDDeviceRec::getClearShaderFragmentFunction(*(this + 12), *(this + 657)) & 0xFFFFFF) << 24);
  v9 = *(this + 50);
  if (v9 && (v10 = *(*(v9 + 32) + 182), v10 >= 2))
  {
    v11 = *(this + 306) & 0xFFF0FFFFFFFFFFFFLL | ((glrConvertMultisampleCount(v10) & 0xF) << 48);
  }

  else
  {
    v11 = *(this + 306) & 0xFFF0FFFFFFFFFFFFLL | 0x1000000000000;
  }

  *(this + 306) = v11;
  return *(GLDDeviceRec::getRenderPipelineStateFromKey(*(this + 12), (this + 2336)) + 8);
}

void *GLDContextRec::getClearDepthStencilState(GLDContextRec *this, unsigned int a2)
{
  v4 = *(this + 290);
  v5 = [(MTLDepthStencilDescriptor *)v4 frontFaceStencil];
  [(MTLStencilDescriptor *)v5 setStencilCompareFunction:7];
  if ((a2 & 0x200) != 0)
  {
    [(MTLStencilDescriptor *)v5 setDepthStencilPassOperation:2];
    [(MTLStencilDescriptor *)v5 setDepthFailureOperation:2];
    [(MTLStencilDescriptor *)v5 setStencilFailureOperation:2];
    v6 = *(*(this + 13) + 13052);
  }

  else
  {
    [(MTLStencilDescriptor *)v5 setDepthStencilPassOperation:0];
    [(MTLStencilDescriptor *)v5 setDepthFailureOperation:0];
    [(MTLStencilDescriptor *)v5 setStencilFailureOperation:0];
    v6 = 0;
  }

  [(MTLStencilDescriptor *)v5 setWriteMask:v6];
  [(MTLStencilDescriptor *)v5 setStencilCompareFunction:7];
  [(MTLDepthStencilDescriptor *)v4 setDepthCompareFunction:7];
  [(MTLDepthStencilDescriptor *)v4 setDepthWriteEnabled:(a2 >> 8) & 1];
  v7 = *(this + 12);

  return GLDDeviceRec::getDepthStencilStateFromDescriptor(v7, v4);
}

uint64_t GLDContextRec::clearBuffers(int8x8_t *this, unsigned int a2, uint32x4_t *a3)
{
  v90 = *MEMORY[0x29EDCA608];
  if (!*&this[2] || this[310].i32[0] && (GLDContextRec::endRenderPass(this), !*&this[2]))
  {
    GLDContextRec::beginRenderPass(this);
  }

  v6 = this[13];
  if (*(*&v6 + 13284))
  {
    v8 = !*(*&v6 + 13268) && !*(*&v6 + 13272) && (v7 = *(*&this[50] + 32), *(*&v6 + 13276) == *(v7 + 178)) && *(*&v6 + 13280) == *(v7 + 180);
  }

  else
  {
    v8 = 1;
  }

  __asm { FMOV            V0.2S, #-1.0 }

  v78 = _D0;
  __asm { FMOV            V0.2S, #1.0 }

  v80 = _D0;
  v81 = -1082130432;
  v83 = -_D0;
  v84 = 1065353216;
  v86 = _D0;
  v87 = 1065353216;
  v89 = 1065353216;
  v15 = 0.0;
  if ((a2 & 0x100) != 0)
  {
    if (v8)
    {
      [*&this[2] setDepthCleared];
    }

    if (a3[1].i32[2])
    {
      v15 = a3[1].u32[0];
    }

    else
    {
      v15 = *a3[1].i32;
    }
  }

  v79 = v15;
  v82 = v15;
  v85 = v15;
  v88 = v15;
  if ((v8 & ((a2 & 0x200) >> 9)) == 1 && *(*&this[13] + 13052) == 0xFF)
  {
    [*&this[2] setStencilCleared];
  }

  [*&this[2] setDepthBias:0.0 slopeScale:0.0 clamp:0.0];
  [*&this[2] setTriangleFillMode:0];
  [*&this[2] setFrontFacingWinding:1];
  v18 = this[309].i32[0];
  if ((v18 & 0x20) != 0)
  {
    GLDContextRec::setRenderScissor(this);
    v18 = this[309].i32[0];
  }

  this[309].i32[0] = v18 & 0xFFFFFFDF;
  v75 = 0uLL;
  v19 = *(*&this[50] + 32);
  LOWORD(v16) = *(v19 + 178);
  LOWORD(v17) = *(v19 + 180);
  v20 = this[2];
  *v76.i64 = v16;
  *&v76.i64[1] = v17;
  v77 = xmmword_29D37A9A0;
  result = [v20 setViewport:&v75];
  v22 = this[327].i32[0];
  v23 = a2 & 0x300;
  v24 = v22 & a2;
  if ((v22 & a2) != 0)
  {
    ClearPipelineState = GLDContextRec::getClearPipelineState(this, v22 & a2);
    [*&this[2] setDepthStencilState:{GLDContextRec::getClearDepthStencilState(this, a2 & 0x300)}];
    [*&this[2] setStencilReferenceValue:a3[1].u32[1]];
    [*&this[2] setRenderPipelineState:ClearPipelineState];
    [*&this[2] setCullMode:0];
    if (a3[1].i32[2])
    {
      v26 = vcvtq_f32_u32(*a3);
    }

    else
    {
      v26 = *a3;
    }

    v75 = v26;
    [*&this[2] setVertexBytes:&v78 length:64 atIndex:{14, *&v26}];
    [*&this[2] setFragmentBytes:&v75 length:48 atIndex:14];
    if (this[279].i8[0] == 1)
    {
      v27 = this[285];
      v28 = this[286];
      if (v27 >= v28)
      {
        v30 = this[284];
        v31 = v27 - v30;
        v32 = (v27 - v30) >> 2;
        v33 = v32 + 1;
        if ((v32 + 1) >> 62)
        {
          std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
        }

        v34 = v28 - v30;
        if (v34 >> 1 > v33)
        {
          v33 = v34 >> 1;
        }

        _CF = v34 >= 0x7FFFFFFFFFFFFFFCLL;
        v35 = 0x3FFFFFFFFFFFFFFFLL;
        if (!_CF)
        {
          v35 = v33;
        }

        if (v35)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(&this[284], v35);
        }

        v36 = (v27 - v30) >> 2;
        v37 = (4 * v32);
        v38 = (4 * v32 - 4 * v36);
        *v37 = -1;
        v29 = v37 + 1;
        memcpy(v38, v30, v31);
        v39 = this[284];
        this[284] = v38;
        this[285] = v29;
        this[286] = 0;
        if (v39)
        {
          operator delete(v39);
        }
      }

      else
      {
        *v27 = -1;
        v29 = v27 + 4;
      }

      this[285] = v29;
    }

    result = [*&this[2] drawPrimitives:4 vertexStart:0 vertexCount:4];
    this[629] = vorr_s8(this[629], vdup_n_s32(v24 | v23));
    a2 ^= v24 | v23;
    v23 = 0;
  }

  v40 = this[327].i32[1];
  v41 = v40 & a2;
  if ((v40 & a2) != 0)
  {
    v42 = GLDContextRec::getClearPipelineState(this, v40 & a2);
    [*&this[2] setDepthStencilState:{GLDContextRec::getClearDepthStencilState(this, v23)}];
    [*&this[2] setStencilReferenceValue:a3[1].u32[1]];
    [*&this[2] setRenderPipelineState:v42];
    [*&this[2] setCullMode:0];
    if (a3[1].i32[2])
    {
      v43 = *a3;
    }

    else
    {
      v43 = vcvtq_s32_f32(*a3);
    }

    v76 = v43;
    [*&this[2] setVertexBytes:&v78 length:64 atIndex:14];
    [*&this[2] setFragmentBytes:&v75 length:48 atIndex:14];
    if (this[279].i8[0] == 1)
    {
      v44 = this[285];
      v45 = this[286];
      if (v44 >= v45)
      {
        v47 = this[284];
        v48 = v44 - v47;
        v49 = (v44 - v47) >> 2;
        v50 = v49 + 1;
        if ((v49 + 1) >> 62)
        {
          std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
        }

        v51 = v45 - v47;
        if (v51 >> 1 > v50)
        {
          v50 = v51 >> 1;
        }

        _CF = v51 >= 0x7FFFFFFFFFFFFFFCLL;
        v52 = 0x3FFFFFFFFFFFFFFFLL;
        if (!_CF)
        {
          v52 = v50;
        }

        if (v52)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(&this[284], v52);
        }

        v53 = (v44 - v47) >> 2;
        v54 = (4 * v49);
        v55 = (4 * v49 - 4 * v53);
        *v54 = -1;
        v46 = v54 + 1;
        memcpy(v55, v47, v48);
        v56 = this[284];
        this[284] = v55;
        this[285] = v46;
        this[286] = 0;
        if (v56)
        {
          operator delete(v56);
        }
      }

      else
      {
        *v44 = -1;
        v46 = v44 + 4;
      }

      this[285] = v46;
    }

    result = [*&this[2] drawPrimitives:4 vertexStart:0 vertexCount:4];
    this[629] = vorr_s8(this[629], vdup_n_s32(v41 | v23));
    a2 &= ~(v41 | v23);
    v23 = 0;
  }

  v57 = this[328].i32[0] & a2;
  v58 = v57 | v23;
  if (v57 | v23)
  {
    v59 = GLDContextRec::getClearPipelineState(this, v57);
    [*&this[2] setDepthStencilState:{GLDContextRec::getClearDepthStencilState(this, v23)}];
    [*&this[2] setStencilReferenceValue:a3[1].u32[1]];
    [*&this[2] setRenderPipelineState:v59];
    [*&this[2] setCullMode:0];
    if (a3[1].i32[2])
    {
      v60 = *a3;
    }

    else
    {
      v60 = vcvtq_u32_f32(*a3);
    }

    v77 = v60;
    [*&this[2] setVertexBytes:&v78 length:64 atIndex:14];
    [*&this[2] setFragmentBytes:&v75 length:48 atIndex:14];
    if (this[279].i8[0] == 1)
    {
      v61 = this[285];
      v62 = this[286];
      if (v61 >= v62)
      {
        v64 = this[284];
        v65 = v61 - v64;
        v66 = (v61 - v64) >> 2;
        v67 = v66 + 1;
        if ((v66 + 1) >> 62)
        {
          std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
        }

        v68 = v62 - v64;
        if (v68 >> 1 > v67)
        {
          v67 = v68 >> 1;
        }

        _CF = v68 >= 0x7FFFFFFFFFFFFFFCLL;
        v69 = 0x3FFFFFFFFFFFFFFFLL;
        if (!_CF)
        {
          v69 = v67;
        }

        if (v69)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(&this[284], v69);
        }

        v70 = (v61 - v64) >> 2;
        v71 = (4 * v66);
        v72 = (4 * v66 - 4 * v70);
        *v71 = -1;
        v63 = v71 + 1;
        memcpy(v72, v64, v65);
        v73 = this[284];
        this[284] = v72;
        this[285] = v63;
        this[286] = 0;
        if (v73)
        {
          operator delete(v73);
        }
      }

      else
      {
        *v61 = -1;
        v63 = v61 + 4;
      }

      this[285] = v63;
    }

    result = [*&this[2] drawPrimitives:4 vertexStart:0 vertexCount:4];
    this[629] = vorr_s8(this[629], vdup_n_s32(v58));
  }

  this[309].i32[0] |= 0x1D8u;
  v74 = *MEMORY[0x29EDCA608];
  return result;
}

void gldClearFramebufferData(GLDContextRec *this, unsigned int a2, uint32x4_t *a3)
{
  if (*(this + 2) && *(this + 620))
  {
    GLDContextRec::endRenderPass(this);
  }

  if ((*(this + 5083) & 1) == 0)
  {
    v6 = *(this + 50);
    v7 = **(v6 + 40);
    if (v7)
    {
      LOBYTE(v7) = *(v7 + 184) != 0;
    }

    if ((v7 & 1) == 0 && !*(this + 2))
    {
      v8 = *(this + 13);
      if (!*(v8 + 13284) || !*(v8 + 13268) && !*(v8 + 13272) && (v9 = *(v6 + 32), *(v8 + 13276) == *(v9 + 178)) && *(v8 + 13280) == *(v9 + 180))
      {
        if (!*(this + 5))
        {
          GLDContextRec::getCommandBuffer(this);
        }

        GLDContextRec::addRenderPassResources(this);
        if ((a2 & 0x100) != 0)
        {
          *(this + 1151) |= 0x100u;
          *(this + 1258) |= 0x100u;
          if (a3[1].i32[2])
          {
            LODWORD(v10) = a3[1].i32[0];
            v10 = *&v10;
          }

          else
          {
            v10 = *a3[1].i32;
          }

          *(this + 592) = v10;
          a2 &= ~0x100u;
        }

        if ((a2 & 0x200) == 0)
        {
          goto LABEL_25;
        }

        if (*(*(this + 13) + 13052) == 0xFF)
        {
          *(this + 1151) |= 0x200u;
          *(this + 1258) |= 0x200u;
          *(this + 1186) = a3[1].i32[1];
          a2 &= ~0x200u;
LABEL_25:
          if (!a2)
          {
            return;
          }

          v11 = 0;
          v12 = (*(this + 13) + 12288);
          for (i = (this + 4632); ; i += 4)
          {
            v14 = 1 << v11;
            if (((1 << v11) & a2) != 0)
            {
              break;
            }

LABEL_38:
            if (++v11 == 4)
            {
              return;
            }
          }

          if ((v14 & (v12[777] & v12[776] & v12[778] & v12[779])) == 0)
          {
            goto LABEL_40;
          }

          *(this + 1151) |= v14;
          *(this + 1258) |= v14;
          if ((*(this + 654) & v14) != 0 || (*(this + 656) & v14) != 0)
          {
            if (a3[1].i32[2])
            {
              LODWORD(v10) = a3->i32[0];
              v15 = *&v10;
              *(i - 3) = v15;
              LODWORD(v15) = a3->i32[1];
              v16 = *&v15;
              *(i - 2) = v16;
              LODWORD(v16) = a3->i32[2];
              v17 = *&v16;
              *(i - 1) = v17;
              LODWORD(v17) = a3->i32[3];
              v10 = *&v17;
LABEL_37:
              *i = v10;
              a2 &= ~v14;
              goto LABEL_38;
            }
          }

          else
          {
            if ((*(this + 655) & v14) == 0)
            {
              MTLReleaseAssertionFailure();
              std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
            }

            if (a3[1].i32[2])
            {
              *(i - 3) = a3->i32[0];
              *(i - 2) = a3->i32[1];
              *(i - 1) = a3->i32[2];
              v10 = a3->i32[3];
              goto LABEL_37;
            }
          }

          *(i - 3) = *a3->i32;
          *(i - 2) = *&a3->i32[1];
          *(i - 1) = *&a3->i32[2];
          v10 = *&a3->i32[3];
          goto LABEL_37;
        }
      }
    }

LABEL_40:

    GLDContextRec::clearBuffers(this, a2, a3);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
}

void GLDContextRec::GLDContextRec(GLDContextRec *this)
{
  GLDObject::GLDObject(this);
  *v2 = &unk_2A240EEF8;
  v2[284] = 0;
  v2[286] = 0;
  v2[285] = 0;
  GLDTransformFeedbackMachine::GLDTransformFeedbackMachine((v2 + 419));
  *(this + 425) = 0;
  *(this + 3384) = 0u;
}

void sub_29D36FB04(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 285) = v5;
    operator delete(v5);
  }

  GLDObject::~GLDObject(v1);
  _Unwind_Resume(a1);
}

void GLDContextRec::~GLDContextRec(GLDContextRec *this)
{
  v2 = *(this + 423);
  if (v2)
  {
    *(this + 424) = v2;
    operator delete(v2);
  }

  v3 = *(this + 284);
  if (v3)
  {
    *(this + 285) = v3;
    operator delete(v3);
  }

  GLDObject::~GLDObject(this);
}

BOOL GLDContextRec::initWithShareGroup(uint64_t a1, pthread_mutex_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  GLDLibrary::getAllDisplayMask(a1);
  *(a1 + 88) = a2;
  GLDShareGroupRec::contextRetain(a2);
  v12 = *(*(a1 + 88) + 224);
  *(a1 + 96) = v12;
  GLDObject::retain(v12);
  *(a1 + 104) = a3;
  *(a1 + 112) = a4;
  *(a1 + 120) = a5;
  *(a1 + 128) = a6;
  *(a1 + 4768) = 1;
  *(a1 + 6256) = 0;
  *(a1 + 5016) = 0;
  v13 = objc_alloc_init(MEMORY[0x29EDBB548]);
  [v13 setIsOpenGLQueue:1];
  [v13 setMaxCommandBufferCount:8];
  v14 = GLDObject::operator new(0x20);
  GLRResource::GLRResource(v14);
  *(a1 + 72) = v14;
  GLDLibrary::getAllDisplayMask(v14);
  *(a1 + 1856) = 0u;
  *(a1 + 1872) = 0u;
  *(a1 + 1888) = 0u;
  *(a1 + 1904) = 0u;
  *(a1 + 1920) = 0;
  *(a1 + 1984) = 0u;
  *(a1 + 2000) = 0u;
  *(a1 + 2016) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2048) = 0;
  GLRRenderPipelineKey::init((a1 + 2064));
  GLRRenderPipelineKey::init((a1 + 2336));
  GLRRenderPipelineCache::init((a1 + 2192));
  *(a1 + 4888) = 850045863;
  *(a1 + 4896) = 0u;
  *(a1 + 4912) = 0u;
  *(a1 + 4928) = 0u;
  *(a1 + 4944) = 0;
  *(a1 + 4952) = 1018212795;
  *(a1 + 4960) = 0u;
  *(a1 + 4976) = 0u;
  *(a1 + 4992) = 0;
  *(a1 + 5264) = dispatch_group_create();
  if (*(*(a1 + 96) + 480))
  {
    v15 = 0x100000;
  }

  else
  {
    v15 = 0x4000;
  }

  GLRDataBufferManager::init(a1 + 5272, a1, v15, 0x100000, 1);
  if (*(*(a1 + 96) + 480))
  {
    v16 = 0x100000;
  }

  else
  {
    v16 = 0x4000;
  }

  GLRDataBufferManager::init(a1 + 5632, a1, v16, 0x100000, 1);
  mach_timebase_info((a1 + 5072));
  *(a1 + 2312) = *(a1 + 2312) & 0xF000000000000000 | 0x700700700000000;
  *(a1 + 2464) = GLDDeviceRec::getDepthStencilStateFromKey(*(a1 + 96), (a1 + 2312));
  *(a1 + 2320) = objc_alloc_init(MEMORY[0x29EDBB5A0]);
  *(a1 + 2408) = *(a1 + 2408) & 0xFFFFFFFFFF000000 | *(*(a1 + 96) + 104) & 0xFFFFFF;
  *(a1 + 5232) = glgCreateProcessor();
  v17 = GLDObject::operator new(0x38);
  GLRQueryResultBuffer::GLRQueryResultBuffer(v17);
  *(a1 + 4752) = v17;
  GLRQueryResultBuffer::initWithShareGroup(v17, *(a1 + 88));
  StagingBuffer = GLDContextRec::allocQueryStagingBuffer(a1);
  v19 = 0;
  *(a1 + 4760) = StagingBuffer;
  *(a1 + 2652) = 0;
  *(a1 + 2488) = &GLDContextRec::initWithShareGroup(GLDShareGroupRec *,GLDStateRec const*,GLDPluginStateRec const*,GLRPixelFormat const*,GLDContextConfigRec *)::setRenderDispatch;
  do
  {
    v20 = a1 + v19;
    *(v20 + 2508) = 0;
    *(v20 + 2496) = 65537;
    *(v20 + 2504) = -2147057658;
    v19 += 14;
  }

  while (v19 != 112);
  *(a1 + 80) = [*(*(a1 + 96) + 24) newCommandQueueWithDescriptor:{v13, COERCE_DOUBLE(65537)}];

  v21 = *(a1 + 80);
  if (v21)
  {
    GLDContextRec::populateConfigData(a1, a6);
    *(a1 + 432) = backtrace((a1 + 440), 64);
  }

  return v21 != 0;
}

uint64_t GLDContextRec::populateConfigData(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 120);
  v25 = *(v4 + 24);
  v26 = *(v4 + 20);
  v5 = *(v4 + 28);
  v6 = *(v4 + 32);
  v7 = *(v4 + 36);
  v8 = *(v4 + 44);
  v9 = *(v4 + 45);
  v10 = *(v4 + 52);
  v11 = *(v4 + 56);
  v12 = *(v4 + 60);
  *a2 = 0;
  v13 = getenv("AGX_GL_VIEWPORT_INVERT_CONFIG");
  if (v13 && !strncmp(v13, "UPPER_LEFT", 0xAuLL))
  {
    *a2 = 32;
  }

  else
  {
    *(a2 + 616) = 1;
  }

  *(a2 + 24) = 64;
  *(a2 + 26) = 15553;
  *(a2 + 25) = *(a2 + 25) & 0x80 | 2;
  *(a2 + 100) = 257;
  v14 = 1;
  *(a2 + 110) = 1;
  *(a2 + 104) = 16843009;
  *(a2 + 32) = 0x6000000010000;
  *(a2 + 174) = 1;
  *(a2 + 124) = 0x8000000080;
  *(a2 + 40) = v8;
  *(a2 + 41) = v9;
  *(a2 + 42) = 0;
  *(a2 + 44) = 0;
  *(a2 + 43) = v7 == 5126;
  if (v7 == 5126)
  {
    if (v6 == 6408)
    {
      v14 = 0;
      v16 = 32;
      v15 = 32;
      goto LABEL_12;
    }

LABEL_16:
    v24 = MTLReleaseAssertionFailure();
    return GLDContextRec::dealloc(v24);
  }

  if (v7 == 33639)
  {
    v16 = 8;
    v15 = 8;
    goto LABEL_12;
  }

  if (v7 != 33638)
  {
    MTLReleaseAssertionFailure();
    goto LABEL_16;
  }

  v14 = 0;
  v15 = 1;
  v16 = 5;
LABEL_12:
  *(a2 + 48) = v16;
  *(a2 + 49) = v16;
  *(a2 + 50) = v16;
  *(a2 + 51) = v15;
  *(a2 + 46) = 0;
  *(a2 + 45) = v14;
  *(a2 + 56) = v26;
  *(a2 + 57) = v25;
  *(a2 + 47) = v5;
  *(a2 + 58) = v10;
  *(a2 + 59) = v11 * v10 * v12 * v12;
  *(a2 + 112) = 0x400000000;
  *(a2 + 560) = vorrq_s8(*(a2 + 560), xmmword_29D37AA00);
  *(a2 + 576) = vorr_s8(*(a2 + 576), 0x1ADF3F7FFFLL);
  result = [*(*(a1 + 96) + 24) supportsFamily:1004];
  v18 = *(a2 + 576);
  if (result)
  {
    v18 |= 0x20000000u;
  }

  *(a2 + 576) = v18 | 0x8000;
  *(a2 + 580) |= 1u;
  *(a2 + 584) = 0x800FC010800FFF0;
  *(a2 + 592) = 134282254;
  *(a2 + 4) = 0x400000004000;
  *(a2 + 20) = 4;
  *(a2 + 60) = xmmword_29D37AA10;
  *(a2 + 76) = xmmword_29D37AA20;
  *(a2 + 92) = 0x3F80000041800000;
  *(a2 + 176) = 4096;
  *(a2 + 152) = 0x8001000200008;
  *(a2 + 175) = 16;
  __asm { FMOV            V0.2S, #16.0 }

  *(a2 + 144) = _D0;
  *(a2 + 168) = 0x4000;
  *(a2 + 160) = 0x4000080008004000;
  *(a2 + 170) = 4;
  *(a2 + 344) = 2048;
  *(a2 + 352) = 12;
  *(a2 + 348) = 64;
  *(a2 + 332) = 787328;
  *(a2 + 446) = 24;
  *(a2 + 448) = 0x40000000003CLL;
  *(a2 + 428) = 0x7FFFFFFF8;
  *(a2 + 504) = 64;
  *(a2 + 506) = 24;
  *(a2 + 464) = 0xF001F000F000FLL;
  *(a2 + 476) = 10;
  *(a2 + 472) = 8323087;
  *(a2 + 477) = 5898;
  *(a2 + 480) = xmmword_29D37AA30;
  *(a2 + 496) = 0x100000020;
  *(a2 + 21) = 1028;
  *(a2 + 536) = a1 + 208;
  *(a2 + 544) = a1 + 140;
  *(a1 + 208) = 196609;
  *(a1 + 140) = 196609;
  *(a2 + 110) = 1;
  *(*(a1 + 96) + 528) = *(a2 + 620);
  return result;
}

uint64_t GLDContextRec::dealloc(GLDContextRec *this)
{
  GLDContextRec::flushContext(this);
  GLDContextRec::waitContext(this);
  dispatch_release(*(this + 658));
  GLRDataBufferManager::dealloc(this + 659);
  GLRDataBufferManager::dealloc(this + 704);

  *(this + 10) = 0;
  *(this + 627) = 0;

  v2 = *(this + 274);
  if (v2)
  {
    CFRelease(v2);
  }

  GLDObject::release(*(this + 12));
  v3 = *(this + 654);
  glgDestroyProcessor();
  GLDObject::release(*(this + 594));
  *(this + 594) = 0;
  GLDObject::release(*(this + 595));
  *(this + 595) = 0;
  GLDVertexArrayRec::updateSharedState((this + 2336), v4);
  GLDVertexArrayRec::updateSharedState((this + 2064), v5);

  for (i = 517; i != 527; ++i)
  {
    v7 = *(this + i);
    if (v7)
    {
      GLDObject::release(v7);
    }
  }

  do
  {
    v8 = *(this + i);
    if (v8)
    {
      (*(*v8 + 24))(v8);
    }

    ++i;
  }

  while (i != 537);
  for (j = 3576; j != 3832; j += 8)
  {
    v10 = *(this + j);
    if (v10)
    {
      (*(*v10 + 24))(v10);
    }
  }

  for (k = 2672; k != 2800; k += 8)
  {
    v12 = *(this + k);
    if (v12)
    {
      (*(*v12 + 24))(v12);
    }
  }

  for (m = 2872; m != 2968; m += 8)
  {
    v14 = *(this + m);
    if (v14)
    {
      (*(*v14 + 24))(v14);
    }
  }

  do
  {
    v15 = *(this + m);
    if (v15)
    {
      (*(*v15 + 24))(v15);
    }

    m += 8;
  }

  while (m != 3064);
  v16 = *(this + 358);
  if (v16)
  {
    (*(*v16 + 24))(v16);
  }

  (*(**(this + 9) + 24))(*(this + 9));
  GLDObject::release(*(this + 11));
  *(this + 11) = 0;
  v17 = *(this + 657);
  if (v17)
  {
    dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(*(this + 657));
  }

  if (*(this + 781))
  {
    v18 = 0;
    v19 = this + 5992;
    do
    {
      GLDObject::release(*&v19[8 * v18]);
      *&v19[8 * v18++] = 0;
    }

    while (v18 < *(this + 781));
  }

  v20 = *(this + 277);
  if (v20)
  {
    free(v20);
  }

  v21 = *(this + 278);
  if (v21)
  {
    free(v21);
  }

  return GLDObject::dealloc(this);
}

uint64_t gldCreateContext(pthread_mutex_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return 10002;
  }

  v11 = a3 - 64;
  if (!GLRPixelFormat::validate((a3 - 64)))
  {
    return 10002;
  }

  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x40uLL, 0x18C0uLL, 0x10F1040CC762082uLL);
  v12 = memptr;
  bzero(memptr, 0x18C0uLL);
  GLDContextRec::GLDContextRec(v12);
  if (GLDContextRec::initWithShareGroup(memptr, a1, a5, a6, v11, a4))
  {
    result = 0;
    if (memptr)
    {
      *a2 = memptr;
    }
  }

  else
  {
    GLDObject::release(memptr);
    return 10016;
  }

  return result;
}

uint64_t gldDestroyContext(atomic_uint *a1)
{
  if (a1)
  {
    GLDObject::release(a1);
    free(a1);
  }

  return 0;
}

uint64_t gldGetInteger(uint64_t a1, int a2, unint64_t *a3)
{
  if (a2 <= 666)
  {
    if (a2 <= 602)
    {
      switch(a2)
      {
        case 317:
          v21 = *(a1 + 6272);
          *a3 = v21;
          result = 0;
          if (v21 == 1)
          {
            *(a1 + 6272) = 0;
          }

          return result;
        case 318:
          result = 0;
          v10 = *(a1 + 6277) ^ 1;
          goto LABEL_40;
        case 319:
          goto LABEL_36;
      }
    }

    else
    {
      if (a2 <= 605)
      {
        if (a2 != 603)
        {
          if (a2 == 604)
          {
            result = 0;
            *a3 = 0;
            return result;
          }

          goto LABEL_43;
        }

LABEL_34:
        result = 0;
        v5 = "";
        goto LABEL_35;
      }

      if (a2 == 606)
      {
        goto LABEL_34;
      }

      if (a2 == 666)
      {
        result = 0;
        v10 = ((*(a1 + 380) >> 9) & 1) == 0;
LABEL_40:
        *a3 = v10;
        return result;
      }
    }

LABEL_43:
    fprintf(*MEMORY[0x29EDCA610], "%s: Unimplemented - pname 0x%04X, params %p", "enum32_t GLDContextRec::getInteger(enum32_t, int32_t *)", a2, a3);
    return 10010;
  }

  if (a2 <= 1401)
  {
    if (a2 <= 1399)
    {
      if (a2 != 667)
      {
        if (a2 == 680)
        {
          v5 = [*(*(a1 + 96) + 24) getShaderCacheKeys];
          result = 0;
LABEL_35:
          *a3 = v5;
          return result;
        }

        goto LABEL_43;
      }

      result = 0;
      v10 = ((*(a1 + 380) >> 21) & 1) == 0;
      goto LABEL_40;
    }

    if (a2 != 1400)
    {
      result = 0;
      v11 = *(a1 + 88);
      v12 = *(a1 + 96);
      *a3 = *(v11 + 32) | *(a1 + 5052) | *(v12 + 12);
      *(a1 + 5052) = 0;
      *(v11 + 32) = 0;
      *(v12 + 12) = 0;
      return result;
    }

LABEL_36:
    result = 0;
    v10 = 1;
    goto LABEL_40;
  }

  if (a2 > 1403)
  {
    if (a2 == 1404)
    {
      result = 0;
      *a3 = (*(a1 + 5076) + *(a1 + 5056) * *(a1 + 5072) - 1) / *(a1 + 5076);
      *(a1 + 5056) = 0;
      return result;
    }

    if (a2 != 1407)
    {
      goto LABEL_43;
    }

    result = *(a1 + 2200);
    if (result)
    {
      v13 = [result newVertexShaderDebugInfo];
      v14 = [v13 length];
      v15 = *(a1 + 2216);
      if (v15)
      {
        free(v15);
      }

      v16 = malloc_type_malloc(v14, 0x100004077774924uLL);
      *(a1 + 2216) = v16;
      [v13 getBytes:v16 length:v14];

      *a3 = *(a1 + 2216);
      a3[1] = v14;
      v17 = [*(a1 + 2200) newFragmentShaderDebugInfo];
      v18 = [v17 length];
      v19 = *(a1 + 2224);
      if (v19)
      {
        free(v19);
      }

      v20 = malloc_type_malloc(v18, 0x100004077774924uLL);
      *(a1 + 2224) = v20;
      [v17 getBytes:v20 length:v18];

      result = 0;
      a3[8] = *(a1 + 2224);
      a3[9] = v18;
    }
  }

  else
  {
    if (a2 == 1402)
    {
      result = 0;
      v10 = *(*(a1 + 88) + 440);
      goto LABEL_40;
    }

    v7 = *(a1 + 400);
    if (v7)
    {
      v8 = **(v7 + 40);
      if (v8)
      {
        result = 0;
        v9 = *(v8 + 144);
        *(v8 + 144) = 0;
        v5 = (*(a1 + 5076) + v9 * *(a1 + 5072) - 1) / *(a1 + 5076);
        goto LABEL_35;
      }
    }

    result = 0;
    *a3 = 0;
  }

  return result;
}

uint64_t gldSetInteger(GLDContextRec *this, int a2, int *aBlock)
{
  result = 0;
  if (a2 <= 666)
  {
    if (a2 <= 610)
    {
      switch(a2)
      {
        case 318:
          result = 0;
          *(this + 6277) = *aBlock == 0;
          return result;
        case 607:
          v16 = *aBlock;
          if (*aBlock == 2)
          {
            v19 = *(this + 2);
            v20 = 2;
          }

          else
          {
            if (v16 != 1)
            {
              if (!v16)
              {
                result = 0;
                *(*(this + 12) + 16) = 1;
                return result;
              }

              return 0;
            }

            v19 = *(this + 2);
            v20 = 1;
          }

          [v19 setCommandDataCorruptModeSPI:v20];
          break;
        case 608:
          GLDContextRec::flushContext(this);
          v9 = *aBlock;
          if (v9 > 4)
          {
            v10 = 1;
          }

          else
          {
            v10 = qword_29D37AA50[v9];
          }

          [*(this + 10) setGPUPriority:v10];
          break;
        default:
          return result;
      }

      return 0;
    }

    if (a2 == 611)
    {
      result = 0;
      *(this + 655) = aBlock;
      return result;
    }

    if (a2 == 612)
    {
      if (!*(this + 655))
      {
        return 10007;
      }

      v23[0] = 0;
      v23[1] = v23;
      v23[2] = 0x3052000000;
      v23[3] = __Block_byref_object_copy__0;
      v23[4] = __Block_byref_object_dispose__0;
      v23[5] = _Block_copy(aBlock);
      v22[0] = 0;
      v22[1] = v22;
      v22[2] = 0x3052000000;
      v22[3] = __Block_byref_object_copy__8;
      v22[4] = __Block_byref_object_dispose__9;
      v22[5] = *(this + 655);
      GLDContextRec::flushContext(this);
      v17 = *(this + 5);
      if (!v17)
      {
        GLDContextRec::getCommandBuffer(this);
        v17 = *(this + 5);
      }

      v21[0] = MEMORY[0x29EDCA5F8];
      v21[1] = 3221225472;
      v21[2] = ___ZN13GLDContextRec10setIntegerEjPKi_block_invoke;
      v21[3] = &unk_29F34B9E0;
      v21[4] = v22;
      v21[5] = v23;
      [v17 addCompletedHandler:v21];
      _Block_object_dispose(v22, 8);
      _Block_object_dispose(v23, 8);
      return 0;
    }

    if (a2 != 666)
    {
      return result;
    }

    v13 = *(this + 95);
    result = 0;
    if (*aBlock)
    {
      v14 = v13 & 0xFFFFFDFF;
    }

    else
    {
      v14 = v13 | 0x200;
    }

LABEL_64:
    *(this + 95) = v14;
    return result;
  }

  if (a2 <= 1401)
  {
    if (a2 != 667)
    {
      if (a2 == 703)
      {
        result = 0;
        atomic_fetch_or_explicit((*(this + 12) + 960), 1 << *aBlock, memory_order_relaxed);
        return result;
      }

      if (a2 != 707)
      {
        return result;
      }

      if (*(aBlock + 23))
      {
        if (*(this + 1151))
        {
          GLDContextRec::beginRenderPass(this);
        }

        if (*(this + 2))
        {
          GLDContextRec::endRenderPass(this);
        }

        if (!*(this + 5))
        {
          GLDContextRec::getCommandBuffer(this);
        }

        v11 = objc_autoreleasePoolPush();
        v12 = [*(this + 5) blitCommandEncoder];
        objc_autoreleasePoolPop(v11);
        [v12 setLabel:*MEMORY[0x29EDBB7B0]];
        GLDTextureRec::blitAccum(aBlock, v12, *(this + 8));
        [v12 endEncoding];
      }

      return 0;
    }

    v15 = *(this + 95);
    result = 0;
    if (*aBlock)
    {
      v14 = v15 & 0xFFDFFFFF;
    }

    else
    {
      v14 = v15 | 0x200000;
    }

    goto LABEL_64;
  }

  if (a2 <= 1411)
  {
    if (a2 == 1402)
    {
      result = 0;
      *(*(this + 11) + 440) = *aBlock != 0;
      return result;
    }

    if (a2 != 1411)
    {
      return result;
    }

    v6 = *(*(this + 12) + 24);
    v7 = *aBlock;
    *(this + 2232) = 0;
    if (v7)
    {
      [v6 setShaderDebugInfoCaching:1];
      memset(*(aBlock + 2), 255, *(aBlock + 4));
      memset(*aBlock, 255, 40 * *(aBlock + 1));
      v8 = *(aBlock + 1);
      *(this + 280) = *aBlock;
      *(this + 281) = v8;
      *(this + 282) = 0;
      *(this + 566) = 0;
      *(this + 285) = *(this + 284);
      *(this + 288) = 2 * v8;
      operator new[]();
    }

    *(this + 566) = 0;
    *(this + 282) = 0;
    *(this + 140) = 0u;
    v18 = *(this + 287);
    if (v18)
    {
      MEMORY[0x29ED53100](v18, 0x1000C80504FFAC1);
    }

    *(this + 287) = 0;
    *(this + 288) = 0;
    [v6 unmapShaderSampleBuffer];
    return 0;
  }

  if (a2 == 1412)
  {
    if (*(this + 1151))
    {
      GLDContextRec::beginRenderPass(this);
    }

    if (*(this + 2))
    {
      GLDContextRec::endRenderPass(this);
    }

    result = 0;
    *(this + 2232) = 1;
  }

  else if (a2 == 1413)
  {
    if (*(this + 1151))
    {
      GLDContextRec::beginRenderPass(this);
    }

    if (*(this + 2))
    {
      GLDContextRec::endRenderPass(this);
    }

    result = 0;
    *(this + 2232) = 0;
  }

  return result;
}

void sub_29D370E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t gldGetError(uint64_t a1)
{
  v1 = *(a1 + 136);
  *(a1 + 136) = 0;
  return v1;
}

void ___ZN13GLDContextRec10setIntegerEjPKi_block_invoke(uint64_t a1)
{
  dispatch_async(*(*(*(a1 + 32) + 8) + 40), *(*(*(a1 + 40) + 8) + 40));
  _Block_release(*(*(*(a1 + 40) + 8) + 40));
  v2 = *(*(*(a1 + 32) + 8) + 40);
}

BOOL GLDContextRec::drawableInvert(GLDContextRec *this)
{
  v1 = *(this + 50);
  if (!v1)
  {
    return 0;
  }

  if (*(*(v1 + 32) + 192))
  {
    v2 = 16;
  }

  else
  {
    v2 = 32;
  }

  return (**(this + 16) & v2) != 0;
}

BOOL GLDContextRec::drawableInvertFramebuffer(uint64_t a1, uint64_t a2)
{
  if (*(*(a2 + 32) + 192))
  {
    v2 = 16;
  }

  else
  {
    v2 = 32;
  }

  return (**(a1 + 128) & v2) != 0;
}

uint64_t GLDContextRec::drawablePBEInvert(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (**(a1 + 128))
  {
    return 0;
  }

  else
  {
    return *(*(*(*(a2 + 40) + 8 * a3) + 48) + 24) & 1;
  }
}

uint64_t GLDContextRec::bindDrawFramebuffer(GLDContextRec *this, GLDFramebufferRec *a2)
{
  if (*(this + 1151))
  {
    GLDContextRec::beginRenderPass(this);
  }

  if (a2)
  {
    v4 = *(*(a2 + 4) + 200);
  }

  else
  {
    v4 = 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *(this + 4588) = 0;
  v9 = this + 4576;
  *(this + 2616) = 0u;
  v10 = 4136;
  v42 = a2;
  do
  {
    if (a2)
    {
      if (*(*(a2 + 4) + 2 * v7 + 160))
      {
        v11 = 1;
      }

      else
      {
        v11 = v7 >= 8;
      }

      v12 = 1 << v7;
      if (v11)
      {
        v13 = -1;
      }

      else
      {
        v13 = ~v12;
      }

      v4 &= v13;
    }

    else
    {
      v12 = 1 << v7;
    }

    v14 = &v9[8 * v7];
    if ((v4 & v12) != 0)
    {
      v44 = v8;
      if (v7 <= 7)
      {
        ++*(this + 1147);
        *(this + 1148) = v7;
      }

      v43 = v4;
      v15 = *(a2 + 5);
      v16 = *(v15 + 8 * v7);
      if (v16)
      {
        GLDContextRec::dispatchImageQueueEvent(this, *(v15 + 8 * v7));
      }

      v17 = *(v16 + 88);
      v18 = *(this + v10);
      if (v18)
      {
        GLDObject::release(v18);
        *(this + v10) = 0;
      }

      v19 = this + v10;
      v20 = *(this + v10 + 80);
      if (v20)
      {
        (*(*v20 + 24))(v20);
        *(v19 + 10) = 0;
      }

      if (v7 == 9 && *(v16 + 76) == 2)
      {
        *(v19 + 10) = GLDTextureRec::getTextureResource(v16, 1u);
        v21 = 68;
      }

      else
      {
        if (*(v16 + 73) == 1)
        {
          *(this + v10) = v16;
          *(v19 + 10) = 0;
          GLDObject::retain(v16);
        }

        else
        {
          *(this + v10) = 0;
          *(v19 + 10) = GLDTextureRec::getTextureResource(v16, 0);
        }

        v21 = 64;
      }

      v27 = &(&glrTextureFormats)[5 * *(v16 + v21)];
      v28 = *(v27 + 9);
      if ((v28 & 8) != 0)
      {
        *(this + 657) |= 2 << v6;
        *(this + 655) |= v12;
      }

      else
      {
        v29 = *(this + 657);
        if ((v28 & 0x10) != 0)
        {
          *(this + 657) = v29 | (3 << v6);
          *(this + 656) |= v12;
        }

        else
        {
          *(this + 657) = v29 | (1 << v6);
          *(this + 654) |= v12;
        }
      }

      v30 = *(v14 - 20);
      v31 = v27[3];
      *(v14 - 20) = v31;
      v32 = *(v19 + 10);
      if (v32)
      {
        v33 = v30;
        (*(*v32 + 16))(v32);
        v30 = v33;
      }

      a2 = v42;
      v34 = (*(v42 + 4) + 4 * v5);
      if (v17 <= 3)
      {
        v9 = this + 4576;
        if (v17 > 1)
        {
          if (v17 != 2)
          {
LABEL_53:
            v35 = 0;
            v36 = v34[3];
LABEL_59:
            *(this + v5 + 4296) = v36;
            goto LABEL_60;
          }
        }

        else if (v17)
        {
          if (v17 != 1)
          {
            goto LABEL_71;
          }

          goto LABEL_53;
        }

LABEL_54:
        v35 = 0;
        *(this + v5 + 4296) = 0;
LABEL_60:
        v26 = v31 ^ v30;
        v37 = this + v5;
        *(v37 + 1094) = v35;
        *(v37 + 1084) = v34[2];
        v24 = *(*(v16 + 48) + 24) & 1;
        v8 = v44;
        v4 = v43;
        goto LABEL_61;
      }

      v9 = this + 4576;
      if (v17 > 5)
      {
        if (v17 != 6)
        {
          if (v17 != 7)
          {
LABEL_71:
            v40 = MTLReleaseAssertionFailure();
            return gldUpdateReadFramebuffer(v40, v41);
          }

          *(this + v5 + 4296) = 0;
          v35 = v34[3];
          goto LABEL_60;
        }
      }

      else if (v17 == 4)
      {
        goto LABEL_54;
      }

      v35 = 0;
      v36 = v34[1];
      goto LABEL_59;
    }

    v22 = *(this + v10 + 80);
    if (v22)
    {
      (*(*v22 + 24))(v22);
    }

    v23 = *(this + v10);
    if (v23)
    {
      GLDObject::release(v23);
    }

    v24 = 0;
    *(this + v10) = 0;
    *(this + v10 + 80) = 0;
    v25 = this + v5;
    *(v25 + 1074) = 0;
    *(v25 + 1094) = 0;
    v26 = *(v14 - 20);
    *(v14 - 20) = 0;
    v9 = this + 4576;
LABEL_61:
    v9[v7] = v24;
    v8 |= v26;
    ++v7;
    v6 += 2;
    v5 += 4;
    v10 += 8;
  }

  while (v7 != 10);
  if (a2 && (v38 = *(*(a2 + 4) + 182), v38 >= 2))
  {
    result = glrConvertMultisampleCount(v38);
  }

  else
  {
    result = 1;
  }

  if (result != *(this + 1149))
  {
    *(this + 1149) = result;
    *(this + 621) |= 2u;
  }

  *(this + 657) = *(this + 2628);
  *(this + 452) |= 0x40040000u;
  *(this + 620) |= 1u;
  if (v8)
  {
    *(this + 621) |= 2u;
  }

  return result;
}

uint64_t gldUpdateReadFramebuffer(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    v2 = *(*(a1 + 112) + 424);
    if (v2)
    {
      v3 = *(v2 + 24);
      if (*(a1 + 1804) == v3)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v3 = 0;
    }

    *(a1 + 1804) = v3;
LABEL_7:
    *(a1 + 408) = v2;
  }

  return 1;
}

uint64_t gldUpdateDrawFramebuffer(GLDContextRec *this, int a2)
{
  if ((a2 & 0x40000000) == 0)
  {
    v4 = a2 & 0x43C0478;
    goto LABEL_9;
  }

  v5 = *(*(this + 14) + 416);
  if (!v5)
  {
    *(this + 450) = 0;
    v7 = 0;
    goto LABEL_7;
  }

  v6 = *(v5 + 6);
  if (*(this + 450) != v6)
  {
    *(this + 450) = v6;
    v7 = v5;
LABEL_7:
    GLDContextRec::bindDrawFramebuffer(this, v7);
  }

  *(this + 50) = v5;
  v4 = *(this + 452) | a2 & 0x43C0478;
  *(this + 452) = 0;
LABEL_9:
  *(this + 5080) = GLDContextRec::drawableInvert(this);
  if (v4)
  {
    GLDContextRec::updateDrawBufferState(this, v4);
  }

  if (*(this + 453))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void gldDiscardFramebuffer(int8x8_t *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (this[575].i32[1])
  {
    GLDContextRec::beginRenderPass(this);
  }

  if (this[2])
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(a4 + 4 * v9);
      if ((v10 - 36064) < 8)
      {
        v11 = *(*(a2 + 40) + 8 * (v10 - 36064));
        if (v11)
        {
          TextureResource = GLDTextureRec::getTextureResource(v11, 0);
          if (TextureResource)
          {
            v13 = *(TextureResource + 32);
          }

          else
          {
            v13 = 0;
          }

          for (i = 0; i != 4; ++i)
          {
            if ([objc_msgSend(objc_msgSend(*&this[231] "colorAttachments")] == v13)
            {
              this[629] = vand_s8(this[629], vdup_n_s32(~(1 << i)));
            }
          }
        }

        goto LABEL_23;
      }

      if (v10 == 36096)
      {
        break;
      }

      if (v10 != 36128)
      {
        v22 = MTLReleaseAssertionFailure();
        gldUnbindFramebuffer(v22);
        return;
      }

      v14 = *(*(a2 + 40) + 72);
      if (v14)
      {
        v15 = GLDTextureRec::getTextureResource(v14, *(v14 + 19) == 2);
        v16 = v15 ? *(v15 + 32) : 0;
        if ([objc_msgSend(*&this[231] "stencilAttachment")] == v16)
        {
          v21 = -513;
LABEL_34:
          this[629] = vand_s8(this[629], vdup_n_s32(v21));
        }
      }

LABEL_23:
      if (++v9 == a3)
      {
        return;
      }
    }

    v18 = *(*(a2 + 40) + 64);
    if (!v18)
    {
      goto LABEL_23;
    }

    v19 = GLDTextureRec::getTextureResource(v18, 0);
    v20 = v19 ? *(v19 + 32) : 0;
    if ([objc_msgSend(*&this[231] "depthAttachment")] != v20)
    {
      goto LABEL_23;
    }

    v21 = -257;
    goto LABEL_34;
  }
}

void gldUnbindFramebuffer(GLDContextRec *this, uint64_t a2)
{
  if (*(this + 50) == a2)
  {
    if (*(this + 1151))
    {
      GLDContextRec::beginRenderPass(this);
    }

    *(this + 50) = 0;
  }
}

uint64_t gldBlitFramebufferData(GLDContextRec *this, int a2, int a3, int a4, int a5, int a6, int a7, float a8, float a9, float a10, float a11)
{
  v219 = *MEMORY[0x29EDCA608];
  v150 = this + 4096;
  v21 = *(*(this + 51) + 32);
  v22 = *(*(this + 50) + 32);
  *(this + 53) |= 0x8000uLL;
  v167 = v21;
  v148 = v22;
  if (!*(this + 2) || *(v21 + 182) < 2u || a3 | a2 || *(this + 1149) != 1 || *(v21 + 178) != a4 || *(v21 + 180) != a5 || *(v22 + 178) != a4 || *(v22 + 180) != a5)
  {
    goto LABEL_68;
  }

  v23 = *(this + 13);
  if (*(v23 + 13284))
  {
    if (*(v23 + 13268) || *(v23 + 13272) || *(v23 + 13276) != a4 || a9 != 0.0 || a8 != 0.0 || a11 != 1.0 || a10 != 1.0 || *(v23 + 13280) != a5)
    {
      goto LABEL_68;
    }

    goto LABEL_23;
  }

  if (a9 != 0.0 || a8 != 0.0 || a10 != 1.0 || a11 != 1.0)
  {
LABEL_68:
    if (a6)
    {
      goto LABEL_69;
    }

    goto LABEL_201;
  }

LABEL_23:
  v149 = this + 4416;
  v153 = this + 4576;
  context = this + 4136;
  v151 = this + 4216;
  v162 = this + 4496;
  v160 = this + 4296;
  v158 = this + 4376;
  v155 = (this + 4336);
  while (1)
  {
    if (!a6)
    {
      goto LABEL_201;
    }

    if ((a6 & 0x4000) != 0)
    {
      v24 = *(v21 + 176) - 36064;
      goto LABEL_30;
    }

    if ((a6 & 0x100) != 0)
    {
      goto LABEL_69;
    }

    if ((a6 & 0x400) == 0)
    {
      break;
    }

    v24 = 9;
LABEL_30:
    v25 = *(*(*(this + 51) + 40) + 8 * v24);
    v26 = v24 == 9 && *(v25 + 76) == 2;
    v27 = (v21 + 16 * v24);
    v28 = v27[1];
    v29 = v27[3];
    v168 = v27[2];
    v30 = *(v25 + 48);
    TextureResource = GLDTextureRec::getTextureResource(v25, v26);
    if (TextureResource)
    {
      v171 = *(TextureResource + 32);
    }

    else
    {
      v171 = 0;
    }

    if ((a6 & 0x4000) == 0)
    {
      goto LABEL_69;
    }

    v32 = !v28 && v29 == 0;
    if (!v32 || *(this + 1147) != 1)
    {
      goto LABEL_69;
    }

    v33 = [v171 pixelFormat];
    v34 = *(this + 1148);
    v35 = *&v149[8 * v34];
    if (v33 != v35 && (v33 != 80 || v35 != 70) && (v33 != 70 || v35 != 80))
    {
      goto LABEL_69;
    }

    if ((v150[990] & 1) == 0 && v153[v34] != (*(v30 + 24) & 1))
    {
      goto LABEL_69;
    }

    v36 = [*(this + 231) colorAttachments];
    v37 = 0;
    v170 = 0x4000;
    do
    {
      v38 = [v36 objectAtIndexedSubscript:v37];
      if ((*(this + 1187) & (1 << v37)) != 0 && (v39 = v38, [v38 texture] == v171) && objc_msgSend(v39, "level") == v168)
      {
        *(this + 1260) |= 1 << v37;
        v40 = *(this + 1148);
        v41 = *&context[8 * v40];
        if (v41)
        {
          v42 = GLDTextureRec::getTextureResource(v41, 0);
        }

        else
        {
          v42 = *&v151[8 * v40];
        }

        GLRResourceList::addResource(*(this + 8), v42);
        *&v162[8 * v37] = 3;
        v43 = *(this + 2);
        v44 = *(this + 1148);
        v45 = *&v160[4 * v44];
        v46 = *(v42 + 32);
        v47 = *&v158[4 * v44];
        v48 = *(v155 + v44);
        if (v150[990] == 1)
        {
          [v43 setColorResolveTexture:v46 slice:v45 depthPlane:v47 level:v48 yInvert:v153[v44] atIndex:v37];
        }

        else
        {
          [v43 setColorResolveTexture:v46 slice:v45 depthPlane:v47 level:v48 atIndex:v37];
        }

        v21 = v167;
        *(this + 620) |= 4u;
        v49 = *(*(*(this + 50) + 40) + 8 * *(this + 1148));
        v50 = *(v49 + 184);
        if (v50)
        {
          (*(*v50 + 24))(v50);
        }

        a6 &= ~v170;
        *(v49 + 184) = 0;
        v170 = 0;
      }

      else
      {
        v21 = v167;
      }

      ++v37;
    }

    while (v37 != 4);
    if (v170)
    {
      goto LABEL_68;
    }
  }

  NSLog(&cfstr_BadBitsInBlitM.isa);
LABEL_69:
  if (*(this + 1151))
  {
    GLDContextRec::beginRenderPass(this);
  }

  if (*(this + 2))
  {
    GLDContextRec::endRenderPass(this);
  }

  if (!*(this + 5))
  {
    GLDContextRec::getCommandBuffer(this);
  }

  v51 = a8 + (a4 * a10);
  v52 = a9 + (a5 * a11);
  *v202 = a8;
  *&v202[1] = v52;
  v203 = 0x3F80000000000000;
  v204 = a8;
  v205 = a9;
  v206 = 0x3F80000000000000;
  v207 = v51;
  v208 = a9;
  v209 = 0x3F80000000000000;
  v210 = v51;
  v211 = v52;
  v212 = 0x3F80000000000000;
  v213 = a8;
  v214 = v52;
  v215 = 0x3F80000000000000;
  v216 = v51;
  v217 = a9;
  v218 = 0x3F80000000000000;
  BlitFramebufferSampler = GLDDeviceRec::getBlitFramebufferSampler(*(this + 12), a7);
  v53 = a2;
  v54 = a3;
  v55 = (a4 + a2);
  v56 = 2;
  if (a7 == 9729)
  {
    v56 = 3;
  }

  v143 = v56;
  v57 = 0.0;
  if (a8 > 0.0)
  {
    v58 = a8;
  }

  else
  {
    v58 = 0.0;
  }

  v59 = v58;
  if (a9 > 0.0)
  {
    v60 = a9;
  }

  else
  {
    v60 = 0.0;
  }

  v61 = v60;
  if (v51 > 0.0)
  {
    v62 = v51;
  }

  else
  {
    v62 = 0.0;
  }

  v63 = v62;
  if (v52 > 0.0)
  {
    v57 = v52;
  }

  v64 = v57;
  v65 = v63 - v59;
  v67 = v59 - v63;
  v66 = v59 > v63;
  if (v59 < v63)
  {
    v63 = v59;
  }

  v147 = v63;
  if (v66)
  {
    v68 = v67;
  }

  else
  {
    v68 = v65;
  }

  v146 = v68;
  v69 = v64 - v61;
  v71 = v61 - v64;
  v70 = v61 > v64;
  if (v61 >= v64)
  {
    v61 = v57;
  }

  if (v70)
  {
    v69 = v71;
  }

  v144 = v69;
  v145 = v61;
  v154 = (this + 5168);
  v72 = (a5 + a3);
  while (2)
  {
    contexta = objc_autoreleasePoolPush();
    if ((a6 & 0x4000) != 0)
    {
      v73 = v167;
      v74 = *(v167 + 176) - 36064;
      v75 = -16385;
      goto LABEL_104;
    }

    v73 = v167;
    if ((a6 & 0x100) != 0)
    {
      v74 = 8;
      v75 = -16641;
      goto LABEL_104;
    }

    if ((a6 & 0x400) != 0)
    {
      v74 = 9;
      v75 = -17665;
LABEL_104:
      v163 = v75;
      v76 = *(*(*(this + 51) + 40) + 8 * v74);
      v77 = v74 == 9 && *(v76 + 76) == 2;
      v78 = (v73 + 16 * v74);
      v79 = v78[1];
      v156 = v78[2];
      v80 = *(v76 + 48);
      v81 = GLDTextureRec::getTextureResource(v76, v77);
      if (v81)
      {
        v81 = v81[4];
      }

      v82 = v81;
      v83 = [v81 textureType];
      if ((v83 & 0xFFFFFFFFFFFFFFFDLL) == 1)
      {
        v84 = 2;
      }

      else
      {
        v84 = v83;
      }

      if (v74 == 9)
      {
        v85 = objc_alloc_init(MEMORY[0x29EDBB670]);
        [v85 setWidth:*(v167 + 178)];
        [v85 setHeight:*(v167 + 180)];
        [v85 setPixelFormat:13];
        [v85 setTextureType:v84];
        [v85 setSampleCount:{objc_msgSend(v82, "sampleCount")}];
        [v85 setUsage:5];
        v86 = [*(*(this + 12) + 24) newTextureWithDescriptor:v85];
      }

      else
      {
        v86 = [v82 newTextureViewWithPixelFormat:objc_msgSend(v82 textureType:"pixelFormat") levels:v84 slices:v156, 1, v79, 1];
      }

      [v86 setLabel:*MEMORY[0x29EDBB7B0]];
      v169 = GLDObject::operator new(0x40);
      GLRTextureResource::GLRTextureResource(v169);
      v87 = GLDTextureRec::getTextureResource(v76, v77);
      GLRTextureResource::initWithMetalTexture(v169, v86, *(v87 + 24));

      v89 = v72;
      v90 = v54;
      if (*(v80 + 24))
      {
        LOWORD(v88) = *(v167 + 180);
        v91 = v88;
        v90 = v91 - v54;
        v89 = v91 - v72;
      }

      if ((*(v80 + 214) & 0x1800) != 0)
      {
        v92 = v78[3];
        v93 = [v86 depth];
        v184 = v53;
        v185 = v89;
        v186 = v92 / v93;
        v187 = v53;
        v188 = v90;
        v189 = v186;
        v190 = v55;
        v191 = v90;
        v192 = v186;
        v193 = v55;
        v194 = v89;
        v195 = v186;
        v196 = v53;
        v197 = v89;
        v198 = v186;
        v199 = v55;
        v200 = v90;
        v201 = v186;
        v161 = 72;
      }

      else
      {
        v184 = v53;
        v185 = v89;
        v186 = v53;
        v187 = v90;
        v188 = v55;
        v189 = v90;
        v190 = v55;
        v191 = v89;
        v192 = v53;
        v193 = v89;
        v161 = 48;
        v194 = v55;
        v195 = v90;
      }

      v183 = 0;
      v181 = 0u;
      v182 = 0u;
      v180 = 0u;
      [v82 pixelFormat];
      MTLPixelFormatGetInfo();
      if ((*(v80 + 214) & 0x1800) != 0)
      {
        if (v74 == 8)
        {
          v94 = 12;
          v95 = 16;
        }

        else if ((DWORD2(v180) & 0x10000) != 0)
        {
          v94 = 12;
          v95 = 13;
        }

        else if ((DWORD2(v180) & 0x40000) != 0)
        {
          v94 = 12;
          v95 = 14;
        }

        else
        {
          if ((DWORD2(v180) & 0x80000) != 0)
          {
            v95 = 15;
          }

          else
          {
            v95 = 13;
          }

          v94 = 12;
        }
      }

      else
      {
        v96 = v74 & 0xFFFFFFFE;
        if (*(v167 + 182) < 2u)
        {
          if (v74 == 8)
          {
            v95 = 8;
          }

          else
          {
            v95 = 10;
          }

          if (v96 != 8)
          {
            if ((DWORD2(v180) & 0x10000) != 0)
            {
              v94 = 0;
              v95 = 1;
            }

            else
            {
              v94 = 0;
              if ((DWORD2(v180) & 0x40000) != 0)
              {
                v95 = 4;
              }

              else if ((DWORD2(v180) & 0x80000) != 0)
              {
                v95 = 6;
              }

              else
              {
                v95 = 1;
              }
            }

            goto LABEL_154;
          }
        }

        else
        {
          if (v74 == 8)
          {
            v95 = 9;
          }

          else
          {
            v95 = 11;
          }

          if (v96 != 8)
          {
            if ((DWORD2(v180) & 0x40000) != 0)
            {
              v94 = 0;
              v95 = 5;
            }

            else
            {
              v94 = 0;
              if ((DWORD2(v180) & 0x80000) != 0)
              {
                v95 = 7;
              }

              else
              {
                v95 = v143;
              }
            }

            goto LABEL_154;
          }
        }

        v94 = 0;
      }

LABEL_154:
      v97 = objc_alloc_init(MEMORY[0x29EDBB608]);
      [(MTLRenderPipelineDescriptor *)v97 setLabel:@"blitFramebuffer Pipeline"];
      [(MTLRenderPipelineDescriptor *)v97 setVertexFunction:GLRFunctionCache::getFunction((*(this + 12) + 216), *(*(this + 12) + 4 * v94 + 120))];
      [(MTLRenderPipelineDescriptor *)v97 setFragmentFunction:GLRFunctionCache::getFunction((*(this + 12) + 216), *(*(this + 12) + 4 * v95 + 120))];
      if (v74 == 8)
      {
        [(MTLRenderPipelineDescriptor *)v97 setDepthAttachmentPixelFormat:*(this + 560)];
      }

      else if (v74 == 9)
      {
        [[(MTLRenderPipelineColorAttachmentDescriptorArray *)[(MTLRenderPipelineDescriptor *)v97 colorAttachments] objectAtIndexedSubscript:0] setPixelFormat:13];
      }

      else
      {
        for (i = 0; i != 8; ++i)
        {
          [[(MTLRenderPipelineColorAttachmentDescriptorArray *)[(MTLRenderPipelineDescriptor *)v97 colorAttachments] objectAtIndexedSubscript:i] setPixelFormat:*(this + i + 552)];
        }
      }

      [(MTLRenderPipelineDescriptor *)v97 setOpenGLModeEnabled:1];
      BlitPipelineStateFromDescriptor = GLDDeviceRec::getBlitPipelineStateFromDescriptor(*(this + 12), v97);

      if (v74 == 8)
      {
        v99 = objc_alloc_init(MEMORY[0x29EDBB5A0]);
        [(MTLDepthStencilDescriptor *)v99 setDepthCompareFunction:7];
        [(MTLDepthStencilDescriptor *)v99 setDepthWriteEnabled:1];
        DepthStencilStateFromDescriptor = GLDDeviceRec::getDepthStencilStateFromDescriptor(*(this + 12), v99);

        v101 = [MEMORY[0x29EDBB5F8] renderPassDescriptor];
        v102 = [v101 depthAttachment];
        v103 = v102;
        v104 = *(this + 535);
        if (v104)
        {
          GLRResourceList::addResource(*(this + 8), *(this + 535));
          [v103 setTexture:*(v104 + 32)];
          [v103 setLevel:*(this + 1092)];
          [v103 setSlice:*(this + 1082)];
          [v103 setDepthPlane:*(this + 1102)];
          [v103 setLoadAction:1];
          [v103 setStoreAction:1];
          [v103 setYInvert:v150[488]];
        }

        else
        {
          [v102 setTexture:0];
        }

LABEL_194:
        GLRResourceList::addResource(*(this + 8), v169);
        v138 = [*(this + 5) renderCommandEncoderWithDescriptor:v101];
        *(this + 3) = v138;
        [v138 setLabel:*MEMORY[0x29EDBB7B0]];
        [*(this + 3) setRenderPipelineState:BlitPipelineStateFromDescriptor];
        [*(this + 3) setFragmentTexture:v86 atIndex:0];
        [*(this + 3) setFragmentSamplerState:BlitFramebufferSampler atIndex:0];
        v139 = *(this + 3);
        v140 = *(this + 324);
        v172 = *v154;
        v173 = v140;
        [v139 setScissorRect:&v172];
        if (v74 == 8)
        {
          [*(this + 3) setDepthStencilState:DepthStencilStateFromDescriptor];
        }

        [*(this + 3) setViewportTransformEnabled:0];
        [*(this + 3) setVertexBytes:v202 length:96 atIndex:0];
        [*(this + 3) setVertexBytes:&v184 length:v161 atIndex:1];
        [*(this + 3) drawPrimitives:3 vertexStart:0 vertexCount:6];
        [*(this + 3) endEncoding];
LABEL_197:
        (*(*v169 + 24))(v169);
        objc_autoreleasePoolPop(contexta);
        a6 &= v163;
        if (!a6)
        {
          goto LABEL_201;
        }

        continue;
      }

      v101 = [MEMORY[0x29EDBB5F8] renderPassDescriptor];
      if (v74 == 9)
      {
        v105 = [*(this + 5) blitCommandEncoder];
        [v105 setLabel:*MEMORY[0x29EDBB7B0]];
        v172 = 0uLL;
        *&v173 = 0;
        v106 = *(v167 + 180);
        v177 = *(v167 + 178);
        v178 = v106;
        v179 = 1;
        v174 = 0;
        v175 = 0;
        v176 = 0;
        [v105 copyFromTexture:v82 sourceSlice:v79 sourceLevel:v156 sourceOrigin:&v172 sourceSize:&v177 toTexture:v86 destinationSlice:0 destinationLevel:0 destinationOrigin:&v174 options:0x20000000];
        [v105 endEncoding];
        v157 = *(this + 536);
        if (v157)
        {
          v107 = [MEMORY[0x29EDBB670] texture2DDescriptorWithPixelFormat:13 width:*(v148 + 178) height:*(v148 + 180) mipmapped:0];
          [v107 setUsage:5];
          v108 = [*(*(this + 11) + 232) newTextureWithDescriptor:v107];
          v109 = v108;
          if (v108 && ([v108 setLabel:*MEMORY[0x29EDBB7B0]], v110 = GLDObject::operator new(0x40), GLRTextureResource::GLRTextureResource(v110), v110))
          {
            GLRTextureResource::initWithMetalTexture(v110, v109, *(v157 + 3));

            GLRResourceList::addResource(*(this + 8), v169);
            GLRResourceList::addResource(*(this + 8), v110);
            v111 = [objc_msgSend(v101 "colorAttachments")];
            [v111 setTexture:*(v110 + 4)];
            [v111 setLevel:0];
            [v111 setSlice:0];
            [v111 setDepthPlane:0];
            [v111 setLoadAction:0];
            [v111 setStoreAction:1];
            [v111 setYInvert:v150[489]];
            v112 = *(this + 646);
            if (v147 <= v112)
            {
              v113 = *(this + 646);
            }

            else
            {
              v113 = v147;
            }

            v114 = *(this + 648) + v112;
            if (v113 + v146 <= v114)
            {
              v115 = v146;
            }

            else
            {
              v115 = v114 - v113;
            }

            v116 = *(this + 647);
            if (v145 <= v116)
            {
              v117 = *(this + 647);
            }

            else
            {
              v117 = v145;
            }

            v118 = *(this + 649) + v116;
            if (v117 + v144 <= v118)
            {
              v119 = v144;
            }

            else
            {
              v119 = v118 - v117;
            }

            v120 = [*(this + 5) renderCommandEncoderWithDescriptor:v101];
            *(this + 3) = v120;
            [v120 setLabel:*MEMORY[0x29EDBB7B0]];
            [*(this + 3) setRenderPipelineState:BlitPipelineStateFromDescriptor];
            [*(this + 3) setFragmentTexture:v86 atIndex:0];
            if ([v82 sampleCount] <= 1)
            {
              [*(this + 3) setFragmentSamplerState:BlitFramebufferSampler atIndex:0];
            }

            v121 = *(this + 3);
            v122 = *(this + 324);
            v172 = *v154;
            v173 = v122;
            [v121 setScissorRect:&v172];
            GLRResourceList::addResource(*(this + 8), v169);
            [*(this + 3) setViewportTransformEnabled:0];
            [*(this + 3) setVertexBytes:v202 length:96 atIndex:0];
            [*(this + 3) setVertexBytes:&v184 length:v161 atIndex:1];
            [*(this + 3) drawPrimitives:3 vertexStart:0 vertexCount:6];
            [*(this + 3) endEncoding];
            GLRResourceList::addResource(*(this + 8), v110);
            GLRResourceList::addResource(*(this + 8), v157);
            v123 = *(v148 + 148);
            v124 = *(v148 + 152);
            v125 = [*(this + 5) blitCommandEncoder];
            [v125 setLabel:*MEMORY[0x29EDBB7B0]];
            v126 = *(v110 + 4);
            *&v172 = v113;
            *(&v172 + 1) = v117;
            *&v173 = 0;
            v177 = v115;
            v178 = v119;
            v179 = 1;
            v127 = *(v157 + 4);
            v128 = *(this + 1103);
            v174 = v113;
            v175 = v117;
            v176 = v128;
            [v125 copyFromTexture:v126 sourceSlice:0 sourceLevel:0 sourceOrigin:&v172 sourceSize:&v177 toTexture:v127 destinationSlice:v123 destinationLevel:v124 destinationOrigin:&v174 options:0x20000000];
            [v125 endEncoding];
            (*(*v110 + 24))(v110);
          }

          else
          {
          }
        }

        goto LABEL_197;
      }

      v129 = 0;
      v131 = (this + 4376);
      v130 = (this + 4216);
      while (2)
      {
        v132 = [objc_msgSend(v101 "colorAttachments")];
        v133 = *(v130 - 10);
        if (v133)
        {
          v134 = GLDTextureRec::getTextureResource(v133, 0);
          if (v134)
          {
            goto LABEL_185;
          }

LABEL_187:
          [v132 setTexture:0];
        }

        else
        {
          v134 = *v130;
          if (!*v130)
          {
            goto LABEL_187;
          }

LABEL_185:
          GLRResourceList::addResource(*(this + 8), v134);
          [v132 setTexture:*(v134 + 32)];
          [v132 setLevel:*(v131 - 10)];
          [v132 setSlice:*(v131 - 20)];
          [v132 setDepthPlane:*v131];
          [v132 setLoadAction:1];
          [v132 setStoreAction:1];
          [v132 setYInvert:*(this + v129 + 4576)];
        }

        v135 = *(*(*(this + 50) + 40) + 8 * v129);
        if (v135 && *(v135 + 184))
        {
          v136 = objc_autoreleasePoolPush();
          v137 = [*(this + 5) blitCommandEncoder];
          objc_autoreleasePoolPop(v136);
          [v137 setLabel:*MEMORY[0x29EDBB7B0]];
          GLDTextureRec::blitAccum(v135, v137, *(this + 8));
          [v137 endEncoding];
        }

        ++v129;
        ++v130;
        ++v131;
        if (v129 == 8)
        {
          DepthStencilStateFromDescriptor = 0;
          goto LABEL_194;
        }

        continue;
      }
    }

    break;
  }

  NSLog(&cfstr_BadBitsInBlitM.isa);
  objc_autoreleasePoolPop(contexta);
LABEL_201:
  v141 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t gldReadFramebufferData(GLDContextRec *this, int a2, int a3, unsigned int a4, unsigned int a5, int a6, int a7, uint64_t a8, int a9, GLDBufferRec *a10)
{
  *(this + 53) |= 0x4000uLL;
  if (!a10)
  {
    v76 = a3;
    v23 = 0;
    v87[0] = 0;
    v86 = 0;
    v22 = *(this + 13);
    v24 = 8;
    if (a6 > 34040)
    {
      if (a6 == 34041)
      {
        goto LABEL_23;
      }

      v25 = 35056;
    }

    else
    {
      if (a6 == 6401)
      {
        v23 = 1;
        v24 = 9;
LABEL_23:
        v71 = a8;
        v27 = *(this + 51);
        v28 = *(*(v27 + 40) + 8 * v24);
        v29 = *(v28 + 11);
        if (v29 <= 7)
        {
          v30 = (*(v27 + 32) + 16 * v24);
          v31 = v30[1];
          v73 = v22;
          v75 = v30[2];
          v32 = v30[3];
          v33 = 1 << v29;
          v34 = 1 << v29;
          v35 = (v34 & 0x4A) == 0;
          if ((v34 & 0x4A) != 0)
          {
            LODWORD(v36) = 0;
          }

          else
          {
            LODWORD(v36) = v32;
          }

          if (v35)
          {
            v37 = v31;
          }

          else
          {
            v37 = v32;
          }

          if ((v33 & 0x95) != 0)
          {
            v36 = v32;
          }

          else
          {
            v36 = v36;
          }

          v69 = v36;
          if ((v33 & 0x95) != 0)
          {
            v38 = 0;
          }

          else
          {
            v38 = v37;
          }

          v70 = v38;
          if (*(v28 + 23))
          {
            v66 = a5;
            if (*(this + 1151))
            {
              GLDContextRec::beginRenderPass(this);
            }

            v68 = a4;
            v39 = v23;
            if (*(this + 2))
            {
              GLDContextRec::endRenderPass(this);
            }

            v40 = a7;
            v41 = a2;
            if (!*(this + 5))
            {
              GLDContextRec::getCommandBuffer(this);
            }

            v42 = objc_autoreleasePoolPush();
            v43 = [*(this + 5) blitCommandEncoder];
            objc_autoreleasePoolPop(v42);
            [v43 setLabel:*MEMORY[0x29EDBB7B0]];
            GLDTextureRec::blitAccum(v28, v43, *(this + 8));
            [v43 endEncoding];

            v27 = *(this + 51);
            a2 = v41;
            a7 = v40;
            v23 = v39;
            a5 = v66;
            a4 = v68;
          }

          if (GLDContextRec::drawableInvertFramebuffer(this, v27))
          {
            v44 = 1;
          }

          else
          {
            v44 = GLDContextRec::drawablePBEInvert(this, *(this + 51), v24);
          }

          v45 = *(v28 + 6) + 480 * v31 + 32 * v75;
          if (a9 == 2)
          {
            v46 = 0;
          }

          else
          {
            v46 = (v73 + 16176);
          }

          glrPixelSettings(a6, a7, a4, a5, v87 + 1, v87, &v86, v46, 3);
          v47 = *(v45 + 270);
          if ((a5 + v76) <= v47)
          {
            v48 = a5;
          }

          else
          {
            v48 = (v47 - v76);
          }

          v49 = *(v45 + 268);
          v74 = a2;
          if ((a4 + a2) <= v49)
          {
            v50 = a4;
          }

          else
          {
            v50 = (v49 - a2);
          }

          if (v50 < 1 || v48 < 1)
          {
            return 1;
          }

          v67 = v44;
          v52 = v86;
          GLDContextRec::flushContext(this);
          TextureResource = GLDTextureRec::getTextureResource(v28, v23);
          GLDContextRec::finishResource(this, TextureResource);
          v54 = &(&glrTextureFormats)[5 * *(v28 + v23 + 16)];
          v85 = 0;
          v83 = 0u;
          v84 = 0u;
          v82 = 0u;
          v55 = v54[3];
          MTLPixelFormatGetInfo();
          v56 = malloc_type_malloc(0, 0xAE47B0ACuLL);
          if (v56)
          {
            v57 = v56;
            v72 = v71 + v52;
            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            HIDWORD(v80) = v50;
            LODWORD(v81) = v48;
            v58 = v56;
            if (!v67)
            {
              v58 = v56;
            }

            v77[6] = v58;
            DWORD2(v78) = 0;
            v59 = *(v54 + 2);
            v60 = *(v54 + 3);
            glgConvertType();
            DWORD1(v80) = *(v54 + 4);
            DWORD2(v80) = -1;
            *&v78 = v72;
            DWORD1(v79) = HIDWORD(v87[0]);
            glgConvertType();
            if (v67)
            {
              v61 = *(v45 + 270) - v76 - v48;
            }

            else
            {
              v61 = v76;
            }

            v62 = v61;
            v63 = *(GLDTextureRec::getTextureResource(v28, v23) + 32);
            v77[0] = v74;
            v77[1] = v62;
            v77[2] = v69;
            v77[3] = v50;
            v77[4] = v48;
            v77[5] = 1;
            [v63 getBytes:v57 bytesPerRow:0 bytesPerImage:0 fromRegion:v77 mipmapLevel:v75 slice:v70];
            glgProcessPixelsWithProcessor();
            free(v57);
            return 0;
          }

          v64 = *(v28 + v23 + 16);
          v65 = *(GLDTextureRec::getTextureResource(v28, v23) + 32);
          MTLReleaseAssertionFailure();
        }

        MTLReleaseAssertionFailure();
        JUMPOUT(0x29D372F60);
      }

      v25 = 6402;
    }

    if (a6 == v25)
    {
      goto LABEL_23;
    }

LABEL_19:
    v23 = 0;
    v24 = *(*(*(this + 51) + 32) + 176) - 36064;
    goto LABEL_23;
  }

  v18 = **(a10 + 4);
  if (v18)
  {
    v19 = *(this + 11);
    if (!*(v19 + 248) || (pthread_mutex_lock((v19 + 256)), (v18 = **(a10 + 4)) != 0))
    {
      if (!GLDBufferRec::update(a10, v18))
      {
        v26 = *(this + 11);
        if (*(v26 + 248))
        {
          pthread_mutex_unlock((v26 + 256));
        }

        return 0;
      }

      **(a10 + 4) = 0;
    }

    v20 = *(this + 11);
    if (*(v20 + 248))
    {
      pthread_mutex_unlock((v20 + 256));
    }
  }

  result = 0;
  v87[0] = 0;
  v86 = 0;
  if ((a6 - 6401) >= 2 && a6 != 34041 && a6 != 35056)
  {
    v76 = a3;
    v22 = *(this + 13);
    goto LABEL_19;
  }

  return result;
}

uint64_t GLRPixelFormat::GLRPixelFormat(uint64_t a1, __int128 *a2)
{
  GLDObject::GLDObject(a1);
  *v4 = &unk_2A240F058;
  v6 = a2[1];
  v5 = a2[2];
  v7 = *a2;
  *(v4 + 112) = *(a2 + 6);
  *(v4 + 80) = v6;
  *(v4 + 96) = v5;
  *(v4 + 64) = v7;
  *(v4 + 44) = 0u;
  *(v4 + 12) = 0u;
  *(v4 + 28) = 0u;
  *(v4 + 60) = 0;
  v8 = *(v4 + 84);
  *(v4 + 44) = (v8 & 0x3FFFFFFC) != 0;
  *(v4 + 45) = (*(v4 + 80) & 8) != 0;
  if ((v8 & 0x3FC0) != 0)
  {
    v9 = 0x8366000080E1;
    v10 = 16;
  }

  else if ((v8 & 0xFC000) != 0)
  {
    v9 = 0x8367000080E1;
    v10 = 32;
  }

  else if ((v8 & 0x3F00000) != 0)
  {
    v9 = 0x140300001908;
    v10 = 64;
  }

  else
  {
    if ((v8 & 0xC000000) == 0)
    {
      result = MTLReleaseAssertionFailure();
      __break(1u);
      return result;
    }

    v9 = 0x140600001908;
    v10 = 128;
  }

  *(a1 + 32) = v9;
  *(a1 + 40) = 6408;
  *(a1 + 12) = v10;
  if ((v8 & 0x400) != 0)
  {
    v11 = 1;
  }

  else if ((v8 & 0x40000) != 0)
  {
    v11 = 2;
  }

  else if ((v8 & 0x80) != 0)
  {
    v11 = 4;
  }

  else if ((v8 & 0x9A928) != 0)
  {
    v11 = 8;
  }

  else if ((v8 & 0x200000) != 0)
  {
    v11 = 12;
  }

  else if ((v8 & 0x2800000) != 0)
  {
    v11 = 16;
  }

  else if ((v8 & 0x8000000) != 0)
  {
    v11 = 32;
  }

  else
  {
    v11 = (v8 >> 23) & 0x40;
  }

  *(a1 + 16) = v11;
  v12 = *(a1 + 92);
  if ((v12 & 0x1000) != 0)
  {
    v13 = 32;
  }

  else if ((v12 & 0x800) != 0)
  {
    v13 = 24;
  }

  else if ((v12 & 0x400) != 0)
  {
    v13 = 16;
  }

  else
  {
    v13 = (v12 >> 4) & 8;
  }

  *(a1 + 20) = v13;
  v14 = *(a1 + 96);
  if ((v14 & 0x1000) != 0)
  {
    v15 = 32;
  }

  else if ((v14 & 0x800) != 0)
  {
    v15 = 24;
  }

  else if ((v14 & 0x400) != 0)
  {
    v15 = 16;
  }

  else
  {
    v15 = (v14 >> 4) & 8;
  }

  *(a1 + 24) = v15;
  v16 = *(a1 + 104);
  v17 = 1;
  *(a1 + 52) = *(a1 + 104) != 0;
  *(a1 + 56) = 1;
  if (v16)
  {
    if (*(a1 + 106) < 1)
    {
      v17 = 1;
    }

    else
    {
      v18 = *(a1 + 106);
      if (v18 >= 5)
      {
        if (v18 < 0xA)
        {
          v17 = 3;
        }

        else
        {
          v17 = 4;
        }
      }

      else
      {
        v17 = 2;
      }
    }
  }

  *(a1 + 60) = v17;
  *(a1 + 28) = *(a1 + 102);
  *(a1 + 46) = 0;
  *(a1 + 48) = 0;
  return a1;
}

void GLRPixelFormat::~GLRPixelFormat(GLRPixelFormat *this)
{
  GLDObject::~GLDObject(this);

  GLDObject::operator delete(v1);
}

void *GLRPixelFormat::create(GLRPixelFormat *this, unsigned int *a2, const int *a3)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v4 = GLRPixelFormat::preflight(v7, a2);
  v5 = 0;
  *this = v4;
  if (!v4)
  {
    v5 = GLDObject::operator new(0x78);
    GLRPixelFormat::GLRPixelFormat(v5, v7);
  }

  return v5;
}

uint64_t GLRPixelFormat::preflight(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_29D37AAB0;
  *(a1 + 24) = 0x180000000;
  *(a1 + 32) = 1;
  *(a1 + 38) = 0;
  v4 = (a1 + 38);
  *(a1 + 45) = 0;
  AllDisplayMask = GLDLibrary::getAllDisplayMask(g_Library);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  *(a1 + 52) = AllDisplayMask;
  v12 = a2;
  while (1)
  {
    v13 = *v12;
    if (!*v12)
    {
      break;
    }

    v14 = 0;
    v15 = (v12 + 1);
    if (v13 > 12)
    {
      switch(v13)
      {
        case '3':
        case 'L':
        case 'M':
        case 'P':
        case 'Z':
          goto LABEL_50;
        case '4':
          v11 = 1;
          goto LABEL_50;
        case '5':
          v9 = 1;
          goto LABEL_50;
        case '6':
        case '9':
          return v14;
        case '7':
          v19 = *v15;
          if ((*v15 & 0x80000000) != 0)
          {
            return 10008;
          }

          v15 = (v12 + 2);
          *(a1 + 40) = v19;
          goto LABEL_50;
        case '8':
          v18 = *v15;
          if ((*v15 & 0x80000000) != 0)
          {
            return 10008;
          }

          v15 = (v12 + 2);
          *(a1 + 42) = v18;
          goto LABEL_50;
        case ':':
          v7 = 1;
          goto LABEL_50;
        case ';':
          *(a1 + 44) = 2;
          goto LABEL_50;
        case '<':
          *(a1 + 44) = 1;
          goto LABEL_50;
        case '=':
          *(a1 + 48) = 1;
          goto LABEL_50;
        case '>':
        case '?':
        case '@':
        case 'A':
        case 'B':
        case 'C':
        case 'D':
        case 'E':
        case 'F':
        case 'G':
        case 'H':
        case 'I':
        case 'J':
        case 'K':
        case 'N':
        case 'O':
        case 'Q':
        case 'R':
        case 'S':
        case 'U':
        case 'V':
        case 'W':
        case 'X':
        case 'Y':
          goto LABEL_49;
        case 'T':
          v15 = (v12 + 2);
          AllDisplayMask &= v12[1];
          *(a1 + 52) = AllDisplayMask;
          goto LABEL_50;
        default:
          if (v13 == 13)
          {
            v20 = v12[1];
            if ((v20 & 0x80000000) != 0)
            {
              return 10008;
            }

            if (v20 > 8)
            {
              return 0;
            }

            v15 = (v12 + 2);
            if (v20)
            {
              *(a1 + 32) = 128;
            }

            goto LABEL_50;
          }

          if (v13 != 14)
          {
            goto LABEL_49;
          }

          v8 = *v15;
          if ((*v15 & 0x80000000) != 0)
          {
            return 10008;
          }

          if (v8 > 0x100)
          {
            return 0;
          }

          break;
      }

LABEL_33:
      v15 = (v12 + 2);
      goto LABEL_50;
    }

    if (v13 > 6)
    {
      if (v13 > 10)
      {
        if (v13 != 11)
        {
          v16 = v12[1];
          if (v16 < 0)
          {
            return 10008;
          }

          v15 = (v12 + 2);
          if (v16)
          {
            *(a1 + 28) = 4096;
          }

          goto LABEL_50;
        }

        if ((*v15 & 0x80000000) != 0)
        {
          return 10008;
        }

        if (*v15 > 0x20)
        {
          return 0;
        }
      }

      else
      {
        if (v13 == 7)
        {
          v17 = v12[1];
          if (v17 < 0)
          {
            return 10008;
          }

          if (v17)
          {
            return 0;
          }

          v15 = (v12 + 2);
          *v4 = 0;
          goto LABEL_50;
        }

        if (v13 != 8)
        {
LABEL_49:
          v15 = (v12 + 49);
          goto LABEL_50;
        }

        v6 = *v15;
        if ((*v15 & 0x80000000) != 0)
        {
          return 10008;
        }

        if (v6 > 0x80)
        {
          return 0;
        }
      }

      goto LABEL_33;
    }

    if (v13 > 4)
    {
      if (v13 != 5)
      {
        return v14;
      }

LABEL_27:
      *(a1 + 16) |= 8u;
      goto LABEL_50;
    }

    if (v13 == 3)
    {
      goto LABEL_27;
    }

    if (v13 != 4)
    {
      goto LABEL_49;
    }

    v10 = 1;
LABEL_50:
    v12 = v15;
    if (v15 - a2 > 192)
    {
      return 10000;
    }
  }

  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    do
    {
LABEL_57:
      v21 = AllDisplayMask;
      AllDisplayMask >>= 1;
    }

    while ((v21 & 1) == 0);
    if (v21 != 1)
    {
      *(a1 + 12) |= 0x200u;
    }

    *a1 = 0;
    if (*(a1 + 40))
    {
      v22 = *(a1 + 42);
      if (v22 < 10)
      {
        if (v22 < 5)
        {
          v23 = 4;
        }

        else
        {
          v23 = 9;
        }
      }

      else
      {
        v23 = 16;
      }

      *(a1 + 42) = v23;
    }

    else
    {
      *(a1 + 42) = 0;
      *(a1 + 44) = 0;
      *(a1 + 48) = 0;
    }

    if (v8)
    {
      v24 = 0x8000000;
    }

    else
    {
      v24 = 0x80000000;
    }

    *(a1 + 24) = v24;
    if (v7)
    {
      v14 = 0;
      *(a1 + 20) = 0x8000000;
    }

    else if (v6 == 16 && v9 && !v11)
    {
      v14 = 0;
      *(a1 + 20) = 1024;
      *(a1 + 12) &= 0xFFFFDFFE;
    }

    else
    {
      v14 = 0;
      *(a1 + 20) = 0x8000;
    }
  }

  else
  {
    v14 = 0;
    if (AllDisplayMask && v10)
    {
      goto LABEL_57;
    }
  }

  return v14;
}

uint64_t gldChoosePixelFormat(void *a1, unsigned int *a2, const int *a3)
{
  v6 = 0;
  v4 = GLRPixelFormat::create(&v6, a2, a3);
  if (v4)
  {
    *a1 = v4 + 64;
  }

  return v6;
}

uint64_t gldDestroyPixelFormat(uint64_t a1)
{
  if (a1)
  {
    GLDObject::release((a1 - 64));
  }

  return 0;
}

BOOL GLDContextRec::updateUniformBuffers(GLDContextRec *this)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(*(this + 14) + 8 * v2 + 328);
    if (v4)
    {
      v5 = *(*(v4 + 24) + 60);
      if (v5)
      {
        v6 = 64;
        do
        {
          v7 = *(*(this + 14) + 8 * *(*(v4 + 24) + v6) + 528);
          if (v7)
          {
            v8 = **(v7 + 4);
            if (v8)
            {
              if (!GLDBufferRec::update(v7, v8))
              {
                return v3;
              }

              **(v7 + 4) = 0;
            }
          }

          v6 += 4;
          --v5;
        }

        while (v5);
      }
    }

    v3 = v2++ > 3;
  }

  while (v2 != 5);
  return 1;
}

GLRBufferResource *GLDContextRec::updateUniformBindingsInternal(GLRBufferResource *this, unsigned int a2, unsigned int *a3, GLRBufferResource **a4, unint64_t *a5, unint64_t a6)
{
  v6 = *(this + a2 + 188);
  if (v6)
  {
    v7 = this;
    v8 = *(*(*(this + a2 + 183) + 24) + 64);
    if (v8)
    {
      v13 = *v8;
      v12 = v8 + 1;
      v11 = v13;
      if (v13)
      {
        v15 = 0;
        v20 = *(this + 13) + 15784;
        v21 = *(this + 14) + 528;
        do
        {
          v16 = *(*(v6 + 24) + 4 * v12[v15] + 64);
          v17 = *(v21 + 8 * v16);
          this = a4[v15];
          if (this)
          {
            this = (*(*this + 24))(this);
            a4[v15] = 0;
            a5[v15] = 0;
          }

          if (v17)
          {
            v18 = *(v17 + 40);
            if (v18)
            {
              this = *(v18 + 24);
            }

            else
            {
              this = 0;
            }

            a4[v15] = this;
            if (*(this + 32) != 1)
            {
              goto LABEL_17;
            }

            if (*(v7 + 4604))
            {
              GLDContextRec::beginRenderPass(v7);
            }

            if (*(v7 + 16))
            {
              GLDContextRec::endRenderPass(v7);
            }

            this = a4[v15];
            if (this)
            {
LABEL_17:
              this = (*(*this + 16))(this);
            }

            *a3 |= 1 << v15;
            a5[v15] = *(v20 + 16 * v16);
          }

          ++v15;
        }

        while (v11 != v15);
      }

      for (; v11 < a6; v11 = (v11 + 1))
      {
        this = a4[v11];
        if (this)
        {
          this = (*(*this + 24))(this);
          a4[v11] = 0;
        }

        *a3 |= 1 << v11;
      }
    }
  }

  return this;
}

GLRBufferResource *GLDContextRec::updateUniformBindings(GLDContextRec *this)
{
  GLDContextRec::updateUniformBindingsInternal(this, 0, this + 852, this + 359, this + 387, 0xCuLL);
  result = GLDContextRec::updateUniformBindingsInternal(this, 4u, this + 853, this + 371, this + 399, 0xCuLL);
  *(this + 618) |= 0x200u;
  return result;
}

uint64_t GLRDataBufferManager::init(uint64_t this, GLDContextRec *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(this + 272) = a3;
  *(this + 280) = a3;
  *(this + 288) = a4;
  *(this + 304) = 0;
  *(this + 344) = a2;
  *(this + 352) = a5;
  return this;
}

void GLRDataBufferManager::dealloc(id *this)
{
  if (this[32])
  {
    v2 = 0;
    do
    {

      this[v2++] = 0;
    }

    while (v2 < this[32]);
  }

  this[32] = 0;
}

double GLRDataBufferManager::reset(GLRDataBufferManager *this)
{
  *(this + 37) = 0;
  result = 0.0;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  return result;
}

void *GLRDataBufferManager::allocDataBuffer(GLRDataBufferManager *this, unint64_t a2, unint64_t *a3)
{
  _os_nospin_lock_lock();
  v6 = *(this + 33);
  if (v6 >= a2 && v6 == *(this + 34))
  {
    v7 = *(this + 32);
    if (v7)
    {
      v8 = v7 - 1;
      *(this + 32) = v8;
      v9 = *(this + v8);
      *a3 = v6;
      _os_nospin_lock_unlock();
      if (v9)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (*(this + 32))
    {
      v10 = 0;
      do
      {

        *(this + v10++) = 0;
      }

      while (v10 < *(this + 32));
    }

    *(this + 32) = 0;
    v6 = *(this + 34);
  }

  for (; v6 < a2; v6 *= 2)
  {
    if (v6 >= *(this + 36))
    {
      break;
    }
  }

  *(this + 33) = v6;
  *(this + 34) = v6;
  _os_nospin_lock_unlock();
LABEL_14:
  if (*(this + 33) >= a2)
  {
    v11 = *(this + 44);
    v9 = [*(*(*(this + 43) + 96) + 24) newBufferWithLength:? options:?];
    [v9 setLabel:*MEMORY[0x29EDBB7B0]];
  }

  else
  {
    v9 = 0;
  }

LABEL_17:
  *a3 = *(this + 33);
  return v9;
}

void GLRDataBufferManager::releaseDataBuffer(uint64_t a1, void *a2)
{
  _os_nospin_lock_lock();
  if (*(a1 + 256) <= 0x1FuLL && [a2 length] == *(a1 + 264))
  {
    v3 = *(a1 + 256);
    *(a1 + 256) = v3 + 1;
    *(a1 + 8 * v3) = a2;

    _os_nospin_lock_unlock();
  }

  else
  {
    _os_nospin_lock_unlock();
    if (a2)
    {
    }
  }
}

void *GLRDataBufferManager::getDataBufferSpace(GLRDataBufferManager *this, void *a2, unint64_t a3, void *a4, uint64_t *a5)
{
  v9 = *(this + 41);
  v14 = *(this + 42) - v9;
  result = *(this + 39);
  if (v14 >= a3)
  {
    if (result)
    {
LABEL_8:
      *a5 = v9;
      v12 = *(this + 41);
      *a4 = v12 - *(this + 40);
      *(this + 41) = v12 + a3;
      *(this + 37) += a3;
      return result;
    }
  }

  else if (result)
  {
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = ___ZN20GLRDataBufferManager18getDataBufferSpaceEPU27objcproto16MTLCommandBuffer11objc_objectmPmPPv_block_invoke;
    v13[3] = &unk_29F34BA08;
    v13[4] = result;
    v13[5] = this;
    [a2 addCompletedHandler:v13];
    *(this + 312) = 0u;
    *(this + 328) = 0u;
    v11 = *(this + 34);
    if (v11 < *(this + 36))
    {
      *(this + 34) = 2 * v11;
    }
  }

  result = GLRDataBufferManager::allocDataBuffer(this, a3, &v14);
  *(this + 39) = result;
  if (result)
  {
    v9 = [result contents];
    *(this + 40) = v9;
    *(this + 41) = v9;
    *(this + 42) = v14 + v9;
    result = *(this + 39);
    if (result)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *GLDContextRec::getIndexBuffer(void **this, int a2, unsigned int a3, unsigned __int8 *a4, unint64_t *a5, MTLIndexType *a6)
{
  v10 = MTLIndexTypeUInt16;
  v11 = 2;
  if (a2 != 5121 && a2 != 5123)
  {
    if (a2 != 5125)
    {
      MTLReleaseAssertionFailure();
      goto LABEL_23;
    }

    v11 = 4;
    v10 = MTLIndexTypeUInt32;
  }

  *a6 = v10;
  __dst = 0;
  v12 = v11 * a3;
  DataBufferSpace = GLRDataBufferManager::getDataBufferSpace((this + 659), this[5], (v12 + 15) & 0xFFFFFFFF0, a5, &__dst);
  if (!DataBufferSpace)
  {
    return DataBufferSpace;
  }

  if (a2 == 5125 || a2 == 5123)
  {
    memcpy(__dst, a4, v12);
    return DataBufferSpace;
  }

  if (a2 == 5121)
  {
    v14 = a3;
    if (*(this[13] + 15444))
    {
      if (a3)
      {
        v15 = __dst;
        do
        {
          v17 = *a4++;
          v16 = v17;
          if (v17 == 255)
          {
            v16 = -1;
          }

          *v15++ = v16;
          --v14;
        }

        while (v14);
      }
    }

    else if (a3)
    {
      v19 = __dst;
      do
      {
        v20 = *a4++;
        *v19++ = v20;
        --v14;
      }

      while (v14);
    }

    return DataBufferSpace;
  }

LABEL_23:
  v21 = MTLReleaseAssertionFailure();
  return GLDContextRec::getVertexBuffer(v21, v22, v23, v24);
}

void GLDContextRec::tfDirtyBuffers(GLDContextRec *this)
{
  v2 = 0;
  v3 = this + 3064;
  v4 = (this + 3384);
  do
  {
    v5 = *&v3[v2];
    if (v5 && (*(v5 + 32) & 1) == 0)
    {
      *(v5 + 32) = 1;
      v6 = *(this + 424);
      v7 = *(this + 425);
      if (v6 >= v7)
      {
        v9 = (v6 - *v4) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
        }

        v10 = v7 - *v4;
        v11 = v10 >> 2;
        if (v10 >> 2 <= (v9 + 1))
        {
          v11 = v9 + 1;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<GLRBufferResource *>>(v4, v12);
        }

        v13 = (8 * v9);
        *v13 = v5;
        v8 = 8 * v9 + 8;
        v14 = *(this + 423);
        v15 = *(this + 424) - v14;
        v16 = v13 - v15;
        memcpy(v13 - v15, v14, v15);
        v17 = *(this + 423);
        *(this + 423) = v16;
        *(this + 424) = v8;
        *(this + 425) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v6 = v5;
        v8 = (v6 + 1);
      }

      *(this + 424) = v8;
    }

    v2 += 8;
  }

  while (v2 != 32);
}

__n128 gldPopulateContextDispatch(uint64_t a1, uint64_t a2)
{
  v2 = *&off_2A240F148;
  *(a2 + 160) = xmmword_2A240F138;
  *(a2 + 176) = v2;
  *(a2 + 192) = off_2A240F158;
  v3 = *&off_2A240F108;
  *(a2 + 96) = xmmword_2A240F0F8;
  *(a2 + 112) = v3;
  v4 = *&off_2A240F128;
  *(a2 + 128) = xmmword_2A240F118;
  *(a2 + 144) = v4;
  v5 = *&off_2A240F0C8;
  *(a2 + 32) = xmmword_2A240F0B8;
  *(a2 + 48) = v5;
  v6 = *&off_2A240F0E8;
  *(a2 + 64) = xmmword_2A240F0D8;
  *(a2 + 80) = v6;
  result = *&off_2A240F0A8;
  *a2 = s_renderDispatchTable;
  *(a2 + 16) = result;
  return result;
}

uint64_t gldBeginPrimitiveBuffer(GLDContextRec *this, unsigned int a2, int *a3)
{
  v4 = 12 * ((*a3 + 11) / 12);
  if (v4 <= 12)
  {
    v4 = 12;
  }

  v5 = *(this + 257);
  v6 = 0x4000 / v5 - (0x4000 / v5 - 12 * (((10923 * (0x4000 / v5)) >> 16) >> 1));
  v7 = 12 * ((*(this + 701) - *(this + 700)) / v5 / 0xC);
  if (v7 > v6)
  {
    v6 = v7;
  }

  if (v6 >= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  *a3 = v8;
  if (!*(this + 2) || *(this + 620) && (GLDContextRec::endRenderPass(this), !*(this + 2)))
  {
    GLDContextRec::beginRenderPass(this);
  }

  if (*(this + 5082) == 1)
  {
    *(this + 5082) = 0;
    *(this + 618) |= 8u;
  }

  GLDContextRec::setRenderState(this, 129022);
  *(this + 3376) = GLDContextRec::isTransformFeedbackActive(this);
  *(this + 625) = GLRDataBufferManager::getDataBufferSpace((this + 5272), *(this + 5), (*(this + 257) * v8 + 15) & 0xFFFFFFFFFFFFFFF0, this + 626, this + 627);
  return *(this + 627);
}

int8x8_t *gldEndPrimitiveBuffer(int8x8_t *result, unsigned int a2, int a3, signed int a4)
{
  v6 = result;
  v7 = result + 512;
  if ((result[635].i8[3] & 1) != 0 || !*&result[275] || (result[47].i8[0] & 0x70) != 0 && result[635].i8[1] == 1)
  {
    if ((result[422].i8[0] & 1) == 0)
    {
      ++result[283].i32[0];
      return result;
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  result = [*&result[2] setVertexBuffer:*&result[625] offset:*&result[626] atIndex:15];
  v6[309].i32[0] |= 0x800u;
  v6[333].i32[1] = -1;
  v6[625] = 0;
  if ((v8 & 1) == 0 && ((v6[47].i8[0] & 1) == 0 || v6[276].i8[0] < 0))
  {
    if (v6[279].i8[0] == 1)
    {
      v9 = v6[283].i32[0];
      v10 = v6[285];
      v11 = v6[286];
      if (v10 >= v11)
      {
        v13 = v6[284];
        v14 = v10 - v13;
        v15 = (v10 - v13) >> 2;
        v16 = v15 + 1;
        if ((v15 + 1) >> 62)
        {
          goto LABEL_53;
        }

        v17 = v11 - v13;
        if (v17 >> 1 > v16)
        {
          v16 = v17 >> 1;
        }

        v18 = v17 >= 0x7FFFFFFFFFFFFFFCLL;
        v19 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v18)
        {
          v19 = v16;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(&v6[284], v19);
        }

        v20 = (v10 - v13) >> 2;
        v21 = (4 * v15);
        v22 = (4 * v15 - 4 * v20);
        *v21 = v9;
        v12 = v21 + 1;
        memcpy(v22, v13, v14);
        v23 = v6[284];
        v6[284] = v22;
        v6[285] = v12;
        v6[286] = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v10 = v9;
        v12 = v10 + 4;
      }

      v6[285] = v12;
    }

    if (v6[37].i32[0])
    {
      GLDContextRec::setRenderPrimitiveCurrents(v6);
    }

    result = [*&v6[2] drawPrimitives:sPrimType[a3] vertexStart:0 vertexCount:a4];
    v6[629] = vorr_s8(v6[629], *(v7 + 948));
  }

  if (v6[422].i8[0] == 1)
  {
    v6[331].i8[4] = 1;
    v6[309].i32[0] |= 8u;
    GLDContextRec::setRenderState(v6, 129022);
    if (v6[37].i32[0])
    {
      GLDContextRec::setRenderPrimitiveCurrents(v6);
    }

    v24 = vertexCountPerPrimitive(a3);
    v39[0] = 0;
    v39[1] = a4 / v24 * v24;
    v39[2] = v24 * *(*&v6[420] + 24);
    [*&v6[2] setVertexBytes:v39 length:12 atIndex:31];
    if (v6[279].i8[0] != 1)
    {
      goto LABEL_44;
    }

    v25 = v6[283].i32[0];
    v26 = v6[285];
    v27 = v6[286];
    if (v26 < v27)
    {
      *v26 = v25;
      v28 = v26 + 4;
LABEL_43:
      v6[285] = v28;
LABEL_44:
      if (v6[275])
      {
        [*&v6[2] drawPrimitives:sPrimType[a3] vertexStart:0 vertexCount:a4];
      }

      GLDContextRec::tfDirtyBuffers(v6);
      result = GLDTransformFeedbackMachine::incrementPrimitiveCount(&v6[419], v6, a4, a3, 1);
      v6[331].i8[4] = 0;
      v6[309].i32[0] |= 8u;
      goto LABEL_47;
    }

    v29 = v6[284];
    v30 = v26 - v29;
    v31 = (v26 - v29) >> 2;
    v32 = v31 + 1;
    if (!((v31 + 1) >> 62))
    {
      v33 = v27 - v29;
      if (v33 >> 1 > v32)
      {
        v32 = v33 >> 1;
      }

      v18 = v33 >= 0x7FFFFFFFFFFFFFFCLL;
      v34 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v18)
      {
        v34 = v32;
      }

      if (v34)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(&v6[284], v34);
      }

      v35 = (v26 - v29) >> 2;
      v36 = (4 * v31);
      v37 = (4 * v31 - 4 * v35);
      *v36 = v25;
      v28 = v36 + 1;
      memcpy(v37, v29, v30);
      v38 = v6[284];
      v6[284] = v37;
      v6[285] = v28;
      v6[286] = 0;
      if (v38)
      {
        operator delete(v38);
      }

      goto LABEL_43;
    }

LABEL_53:
    std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
  }

LABEL_47:
  if (v6[628].i32[0] > 0x7FFu || *(*&v6[8] + 152) >> 27 > 2uLL || *&v6[696] >= 0x400000uLL)
  {
    result = GLDContextRec::flushContext(v6);
  }

  ++v6[283].i32[0];
  v6[631].i32[1] |= 0x2000000u;
  return result;
}

void gldRenderVertexArray(int8x8_t *this, int a2, unsigned int a3, int a4, signed int a5, int a6, unsigned __int8 *a7, int a8, const void *a9)
{
  v9 = this[49];
  if (!*&v9)
  {
    return;
  }

  v11 = this + 512;
  if (this[635].i8[3] & 1) != 0 || (this[47].i8[0] & 0x70) != 0 && (this[635].i8[1])
  {
    return;
  }

  if (!a2)
  {
    if (!*&this[2] || this[310].i32[0] && (GLDContextRec::endRenderPass(this), !*&this[2]))
    {
      GLDContextRec::beginRenderPass(this);
    }

    if ((v11[123].i8[2] & 1) == 0)
    {
      v11[123].i8[2] = 1;
      this[309].i32[0] |= 8u;
    }

    v30 = *this[234].i8;
    v31 = *this[238].i8;
    v62 = *this[236].i8;
    v63 = v31;
    v64 = this[240];
    *v60 = *this[232].i8;
    v61 = v30;
    v32 = *(*(*&this[183] + 24) + 56);
    v33 = *v32;
    if (v33)
    {
      v34 = 0;
      v35 = v32 + 3;
      v36 = 1;
      while (1)
      {
        v37 = (*(v35 - 1) >> 8) & 0x1F;
        if ((v37 - 17) >= 2)
        {
          if (v37 != 28)
          {
LABEL_104:
            MTLReleaseAssertionFailure();
LABEL_105:
            std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
          }

          if ((*(*(*&this[49] + 48) + 24 * (*v35 & 0x3F)) & 3) != *(v60 + v34) >> 30)
          {
            goto LABEL_33;
          }
        }

        v36 = ++v34 < v33;
        v35 += 2;
        if (v33 == v34)
        {
LABEL_33:
          if (v36)
          {
            this[309].i32[0] |= 1u;
          }

          break;
        }
      }
    }

    if (GLDContextRec::isTransformFeedbackActive(this))
    {
      this[331].i8[4] = 1;
      this[309].i32[0] |= 8u;
      GLDContextRec::setRenderState(this, 131069);
      if (this[34].i32[1])
      {
        GLDContextRec::setRenderVertexCurrents(this);
      }

      v38 = vertexCountPerPrimitive(a3);
      LODWORD(v60[0]) = a4;
      HIDWORD(v60[0]) = a5 / v38 * v38;
      LODWORD(v60[1]) = v38 * *(*&this[420] + 24);
      [*&this[2] setVertexBytes:v60 length:12 atIndex:31];
      if (this[279].i8[0] == 1)
      {
        v39 = this[283].i32[0];
        v40 = this[285];
        v41 = this[286];
        if (v40 >= v41)
        {
          v46 = this[284];
          v47 = v40 - v46;
          v48 = (v40 - v46) >> 2;
          v49 = v48 + 1;
          if ((v48 + 1) >> 62)
          {
            goto LABEL_105;
          }

          v50 = v41 - v46;
          if (v50 >> 1 > v49)
          {
            v49 = v50 >> 1;
          }

          v51 = v50 >= 0x7FFFFFFFFFFFFFFCLL;
          v52 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v51)
          {
            v52 = v49;
          }

          if (v52)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(&this[284], v52);
          }

          v53 = (v40 - v46) >> 2;
          v54 = (4 * v48);
          v55 = (4 * v48 - 4 * v53);
          *v54 = v39;
          v42 = v54 + 1;
          memcpy(v55, v46, v47);
          v56 = this[284];
          this[284] = v55;
          this[285] = v42;
          this[286] = 0;
          if (v56)
          {
            operator delete(v56);
          }
        }

        else
        {
          *v40 = v39;
          v42 = v40 + 4;
        }

        this[285] = v42;
      }

      if (this[275])
      {
        [*&this[2] drawPrimitives:sPrimType[a3] vertexStart:a4 vertexCount:a5 instanceCount:a8];
      }

      ++this[628].i32[0];
      GLDContextRec::tfDirtyBuffers(this);
      GLDTransformFeedbackMachine::incrementPrimitiveCount(&this[419], this, a5, a3, a8);
      this[331].i8[4] = 0;
      this[309].i32[0] |= 8u;
    }

    if (*(*&this[13] + 15712))
    {
      goto LABEL_98;
    }

    GLDContextRec::setRenderState(this, 131069);
    if (this[34].i32[1])
    {
      GLDContextRec::setRenderVertexCurrents(this);
    }

    if (!*&this[275] || (this[47].i8[0] & 1) != 0 && (this[276].i8[0] & 0x80) == 0)
    {
      goto LABEL_98;
    }

    GLDContextRec::recordGLDrawCallIndexForMetalDrawCall(this, this[283].i32[0]);
    [*&this[2] drawPrimitives:sPrimType[a3] vertexStart:a4 vertexCount:a5 instanceCount:a8];
    goto LABEL_97;
  }

  if ((a2 & 0xFFFFFFFD) != 1)
  {
    return;
  }

  v18 = *this[234].i8;
  v19 = *this[238].i8;
  v62 = *this[236].i8;
  v63 = v19;
  v64 = this[240];
  *v60 = *this[232].i8;
  v61 = v18;
  v20 = *(*(*&this[183] + 24) + 56);
  v21 = *v20;
  if (v21)
  {
    v22 = 0;
    v23 = v20 + 3;
    v24 = 1;
    do
    {
      v25 = (*(v23 - 1) >> 8) & 0x1F;
      if ((v25 - 17) >= 2)
      {
        if (v25 != 28)
        {
          goto LABEL_104;
        }

        if ((*(*(*&v9 + 48) + 24 * (*v23 & 0x3F)) & 3) != *(v60 + v22) >> 30)
        {
          break;
        }
      }

      v24 = ++v22 < v21;
      v23 += 2;
    }

    while (v21 != v22);
    if (v24)
    {
      this[309].i32[0] |= 1u;
    }
  }

  if (a6 != 5121 && (*(*&v9 + 64) & 1) != 0)
  {
    v26 = *(*(*&v9 + 56) + 256);
    v27 = *(v26 + 40);
    if (v27 && (v28 = *(v27 + 24)) != 0)
    {
      v29 = *(v28 + 40);
    }

    else
    {
      v29 = 0;
    }

    if (!*&this[2] || this[310].i32[0] && (GLDContextRec::endRenderPass(this), !*&this[2]))
    {
      GLDContextRec::beginRenderPass(this);
    }

    if ((v11[123].i8[2] & 1) == 0)
    {
      v11[123].i8[2] = 1;
      this[309].i32[0] |= 8u;
    }

    GLDContextRec::setRenderState(this, 131069);
    if (this[34].i32[1])
    {
      GLDContextRec::setRenderVertexCurrents(this);
    }

    if (!*&this[275])
    {
      goto LABEL_98;
    }

    v44 = **(v26 + 24);
    if ((this[47].i8[0] & 1) != 0 && (this[276].i8[0] & 0x80) == 0)
    {
      goto LABEL_98;
    }

    GLDContextRec::recordGLDrawCallIndexForMetalDrawCall(this, this[283].i32[0]);
    if (a6 == 5123)
    {
      v45 = 0;
    }

    else
    {
      if (a6 != 5125)
      {
        v57 = MTLReleaseAssertionFailure();
        GLDContextRec::recordGLDrawCallIndexForMetalDrawCall(v57, v58);
        return;
      }

      v45 = 1;
    }

    (this[446])(*&this[2], *&this[445], sPrimType[a3], a5, v45, v29, &a7[-v44], a8);
LABEL_97:
    this[629] = vorr_s8(this[629], *(v11 + 948));
    ++this[628].i32[0];
LABEL_98:
    if (this[628].i32[0] > 0x7FFu || *(*&this[8] + 152) >> 27 > 2uLL || *&this[696] >= 0x400000uLL)
    {
      GLDContextRec::flushContext(this);
    }

    ++this[283].i32[0];
    return;
  }

  v59 = 0;
  v60[0] = MTLIndexTypeUInt16;
  if (!*&this[2] || this[310].i32[0] && (GLDContextRec::endRenderPass(this), !*&this[2]))
  {
    GLDContextRec::beginRenderPass(this);
  }

  IndexBuffer = GLDContextRec::getIndexBuffer(this, a6, a5, a7, &v59, v60);
  if (IndexBuffer)
  {
    if ((v11[123].i8[2] & 1) == 0)
    {
      v11[123].i8[2] = 1;
      this[309].i32[0] |= 8u;
    }

    GLDContextRec::setRenderState(this, 131069);
    if (this[34].i32[1])
    {
      GLDContextRec::setRenderVertexCurrents(this);
    }

    if (*&this[275] && ((this[47].i8[0] & 1) == 0 || this[276].i8[0] < 0))
    {
      GLDContextRec::recordGLDrawCallIndexForMetalDrawCall(this, this[283].i32[0]);
      (this[446])(*&this[2], *&this[445], sPrimType[a3], a5, v60[0], IndexBuffer, v59, a8);
      this[629] = vorr_s8(this[629], *(v11 + 948));
      ++this[628].i32[0];
    }

    if (this[628].i32[0] > 0x7FFu || *(*&this[8] + 152) >> 27 > 2uLL || *&this[696] >= 0x400000uLL)
    {
      GLDContextRec::flushContext(this);
    }

    ++this[283].i32[0];
  }
}

void GLDContextRec::recordGLDrawCallIndexForMetalDrawCall(GLDContextRec *this, int a2)
{
  if (*(this + 2232) == 1)
  {
    v4 = *(this + 285);
    v5 = *(this + 286);
    if (v4 >= v5)
    {
      v7 = this + 2272;
      v8 = *(this + 284);
      v9 = v4 - v8;
      v10 = (v4 - v8) >> 2;
      v11 = v10 + 1;
      if ((v10 + 1) >> 62)
      {
        std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
      }

      v12 = v5 - v8;
      if (v12 >> 1 > v11)
      {
        v11 = v12 >> 1;
      }

      v13 = v12 >= 0x7FFFFFFFFFFFFFFCLL;
      v14 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v13)
      {
        v14 = v11;
      }

      if (v14)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v7, v14);
      }

      v15 = (v4 - v8) >> 2;
      v16 = (4 * v10);
      v17 = (4 * v10 - 4 * v15);
      *v16 = a2;
      v6 = v16 + 1;
      memcpy(v17, v8, v9);
      v18 = *(this + 284);
      *(this + 284) = v17;
      *(this + 285) = v6;
      *(this + 286) = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v4 = a2;
      v6 = v4 + 4;
    }

    *(this + 285) = v6;
  }
}

uint64_t vertexCountPerPrimitive(int a1)
{
  if (!a1)
  {
    return 1;
  }

  if (a1 == 4)
  {
    return 3;
  }

  if (a1 != 1)
  {
    v2 = MTLReleaseAssertionFailure();
    std::__allocate_at_least[abi:nn200100]<std::allocator<GLRBufferResource *>>(v2, v3);
  }

  return 2;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<GLRBufferResource *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
}

uint64_t GLDContextRec::loadCurrentSamplers(uint64_t this, unsigned __int16 a2)
{
  v2 = *(this + 104);
  if (!*(v2 + 12724))
  {
    return this;
  }

  v3 = this;
  v4 = 0;
  v5 = a2;
  v6 = this + 1672;
  v7 = this + 1208;
  v18 = a2;
  do
  {
    if (!v5)
    {
      goto LABEL_22;
    }

    v19 = v4;
    v8 = 16 * v4;
    do
    {
      v9 = __clz(__rbit32(v5));
      v10 = v9 + v8;
      v11 = *(*(v3 + 112) + 8 * v10 + 720);
      if (!v11)
      {
        if (!*(v7 + 8 * v10))
        {
          v11 = 0;
          goto LABEL_18;
        }

        v11 = 0;
        *(v6 + 4 * v10) = 0;
        goto LABEL_17;
      }

      v12 = **(v11 + 32);
      v13 = *(v11 + 12);
      if (*(v6 + 4 * v10) == v13)
      {
        v14 = **(v11 + 32);
      }

      else
      {
        v14 = 1;
      }

      if (**(v11 + 32))
      {
        v15 = *(v3 + 88);
        v16 = *(v15 + 28) + 1;
        *(v15 + 28) = v16;
        *(v11 + 12) = v16;
        this = GLDSamplerRec::update(v11);
        if (this)
        {
          **(v11 + 32) = 0;
          v13 = *(v11 + 12);
          goto LABEL_12;
        }

        v11 = 0;
        *(v6 + 4 * v10) = 0;
        if (!*(v7 + 8 * v10))
        {
          goto LABEL_18;
        }

LABEL_17:
        *(v3 + 2472) |= 4u;
        *(v3 + 2644) |= 1 << (v9 + v8);
        goto LABEL_18;
      }

LABEL_12:
      *(v6 + 4 * v10) = v13;
      if (v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      *(v7 + 8 * v10) = v11;
      v17 = 1 << v9 == v5;
      v5 ^= 1 << v9;
    }

    while (!v17);
    v2 = *(v3 + 104);
    v5 = v18;
    v4 = v19;
LABEL_22:
    ++v4;
  }

  while (v4 < *(v2 + 12724));
  return this;
}

double GLRRenderPipelineKey::init(GLRRenderPipelineKey *this)
{
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  memset_pattern16(this + 88, &unk_29D37AB20, 0x10uLL);
  result = 0.0;
  *(this + 72) = xmmword_29D37AB10;
  *(this + 14) = 0x180FF3F800000;
  return result;
}

void *GLRRenderPipelineKey::copyDescriptor(GLRRenderPipelineKey *this, const GLRFunctionCache *a2)
{
  v4 = objc_alloc_init(MEMORY[0x29EDBB608]);
  v5 = [v4 colorAttachments];
  v6 = 0;
  v7 = this + 104;
  do
  {
    v8 = [v5 objectAtIndexedSubscript:v6];
    v9 = *&v7[2 * v6];
    [v8 setPixelFormat:v9];
    if (v9)
    {
      v10 = &v7[4 * v6];
      [v8 setBlendingEnabled:*(v10 - 4) & 1];
      [v8 setRgbBlendOperation:(*(v10 - 4) >> 1) & 7];
      [v8 setAlphaBlendOperation:(*(v10 - 4) >> 4) & 7];
      [v8 setSourceRGBBlendFactor:(*(v10 - 4) >> 7) & 0xF];
      [v8 setSourceAlphaBlendFactor:(*(v10 - 4) >> 11) & 0xF];
      [v8 setDestinationRGBBlendFactor:(*(v10 - 4) >> 15) & 0xF];
      [v8 setDestinationAlphaBlendFactor:(*(v10 - 4) >> 19) & 0xF];
      [v8 setWriteMask:(*(v10 - 4) >> 23) & 0xF];
    }

    ++v6;
  }

  while (v6 != 4);
  [v4 setDepthStencilWriteDisabled:(*(this + 14) >> 40) & 1];
  if ((*(this + 14) & 0xE0000000000) != 0)
  {
    v11 = 252;
  }

  else
  {
    v11 = 0;
  }

  [v4 setDepthAttachmentPixelFormat:v11];
  [v4 setStencilAttachmentPixelFormat:((*(this + 14) << 17) >> 63) & 0xFD];
  [v4 setSampleCoverageInvert:(*(this + 14) >> 45) & 1];
  [v4 setLogicOperationEnabled:HIBYTE(*(this + 14)) & 1];
  [v4 setLogicOperation:(*(this + 14) >> 52) & 0xFLL];
  [v4 setAlphaTestEnabled:(*(this + 14) >> 60) & 1];
  [v4 setAlphaTestFunction:(*(this + 14) >> 57) & 7];
  [v4 setPointSmoothEnabled:(*(this + 14) >> 61) & 1];
  [v4 setClipDistanceEnableMask:*(this + 116)];
  [v4 setSampleCount:*(this + 59) & 0xFLL];
  [v4 setSampleMask:*(this + 20)];
  LODWORD(v12) = *(this + 28);
  [v4 setSampleCoverage:v12];
  [v4 setAlphaToOneEnabled:(*(this + 14) >> 62) & 1];
  [v4 setAlphaToCoverageEnabled:*(this + 14) >> 63];
  [v4 setVertexDepthCompareClampMask:*(this + 30)];
  [v4 setFragmentDepthCompareClampMask:*(this + 31)];
  [v4 setVertexFunction:{GLRFunctionCache::getFunction(a2, *(this + 18) & 0xFFFFFF)}];
  [v4 setFragmentFunction:{GLRFunctionCache::getFunction(a2, *(this + 75) & 0xFFFFFF)}];
  [v4 setRasterizationEnabled:(*(this + 14) >> 47) & 1];
  v29 = v4;
  [v4 setOpenGLModeEnabled:1];
  v13 = objc_alloc_init(MEMORY[0x29EDBB680]);
  v14 = [v13 layouts];
  v15 = [v13 attributes];
  v16 = 0;
  v17 = 0;
  LODWORD(v18) = 0;
  do
  {
    v19 = [v15 objectAtIndexedSubscript:v16];
    v20 = v19;
    v21 = *(this + v16);
    if ((~v21 & 3) != 0)
    {
      if ((v21 & 0xFC) != 0)
      {
        v26 = [v14 objectAtIndexedSubscript:(v17 + 15)];
        [v20 setFormat:*(this + v16) >> 2];
        [v20 setBufferIndex:(v17 + 15)];
        [v20 setOffset:*(this + v16) >> 30];
        [v26 setStride:(*(this + v16) >> 8) & 0xFFF];
        [v26 setStepFunction:*(this + v16) & 3];
        [v26 setStepRate:(*(this + v16) >> 20) & 0x3FF];
        ++v17;
      }
    }

    else if (v21 >> 2)
    {
      [v19 setFormat:?];
      v22 = (this + 4 * v16);
      [v20 setOffset:(*v22 >> 20) & 0x3FF];
      if ((*(v22 + 1) & 0xFFF) != 0)
      {
        v23 = [v14 objectAtIndexedSubscript:15];
        [v20 setBufferIndex:15];
        [v23 setStride:(*(this + v16) >> 8) & 0xFFF];
        [v23 setStepFunction:1];
        v24 = v23;
        v25 = 1;
      }

      else
      {
        v27 = [v14 objectAtIndexedSubscript:14];
        [v20 setBufferIndex:14];
        v18 = (v18 + 16);
        [v27 setStride:v18];
        [v27 setStepFunction:0];
        v24 = v27;
        v25 = 0;
      }

      [v24 setStepRate:v25];
    }

    ++v16;
  }

  while (v16 != 18);
  [v29 attachVertexDescriptor:v13];
  [v29 setLabel:*MEMORY[0x29EDBB7B0]];

  return v29;
}

const void *GLRFunctionCache::getFunction(GLRFunctionCache *this, int a2)
{
  if (!a2)
  {
    return 0;
  }

  pthread_rwlock_rdlock(this);
  ValueAtIndex = CFArrayGetValueAtIndex(*(this + 27), (a2 - 1));
  pthread_rwlock_unlock(this);
  return ValueAtIndex;
}

CFMutableArrayRef GLRFunctionCache::init(pthread_rwlock_t *this)
{
  pthread_rwlock_init(this, 0);
  this[1].__sig = CFDictionaryCreateMutable(0, 0, &_cachedFunctionKeyCallbacks, &_cachedFunctionValueCallbacks);
  *this[1].__opaque = CFDictionaryCreateMutable(0, 0, &_cachedFunctionKeyCallbacks, &_cachedFunctionValueCallbacks);
  result = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  *&this[1].__opaque[8] = result;
  return result;
}

uint64_t GLRFunctionCache::destroy(pthread_rwlock_t *this)
{
  sig = this[1].__sig;
  if (sig)
  {
    CFRelease(sig);
  }

  v3 = *this[1].__opaque;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *&this[1].__opaque[8];
  if (v4)
  {
    CFRelease(v4);
  }

  return pthread_rwlock_destroy(this);
}

void *GLRFunctionCache::newFunctionWithGLIR(CFArrayRef *this, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 == 1)
  {
    v6 = 25;
  }

  else
  {
    if (a5 != 2)
    {
      LODWORD(v7) = 0;
      return GLRFunctionCache::getFunction(this, v7);
    }

    v6 = 26;
  }

  v7 = this[v6];
  if (!v7)
  {
    return GLRFunctionCache::getFunction(this, v7);
  }

  v8 = [a2 newFunctionWithGLESIR:? inputsDescription:? functionType:?];
  if (!v8)
  {
    LODWORD(v7) = 0;
LABEL_15:

    return GLRFunctionCache::getFunction(this, v7);
  }

  value = 0;
  pthread_rwlock_wrlock(this);
  if (CFDictionaryGetValueIfPresent(v7, v8, &value))
  {
    LODWORD(v7) = value;
LABEL_14:
    pthread_rwlock_unlock(this);
    goto LABEL_15;
  }

  Count = CFArrayGetCount(this[27]);
  if (Count >= 0xFFFFFF)
  {
    LODWORD(v7) = 0;
    goto LABEL_14;
  }

  v10 = (Count + 1);
  CFArrayAppendValue(this[27], v8);
  CFDictionarySetValue(v7, v8, v10);
  pthread_rwlock_unlock(this);
  return v8;
}

uint64_t GLRFunctionCache::registerBuiltInFunction(uint64_t a1, void *a2)
{
  pthread_rwlock_wrlock(a1);
  Count = CFArrayGetCount(*(a1 + 216));
  if (Count > 16777214)
  {
    v5 = 0;
  }

  else
  {
    v5 = (Count + 1);
    CFArrayAppendValue(*(a1 + 216), a2);
  }

  pthread_rwlock_unlock(a1);

  return v5;
}

unint64_t GLRFunctionCache::getKey(pthread_rwlock_t *a1, void *a2)
{
  v2 = a2;
  if (!a2)
  {
    return v2;
  }

  v4 = [a2 functionType];
  if (v4 == 1)
  {
    v5 = 200;
  }

  else
  {
    if (v4 != 2)
    {
      return 0;
    }

    v5 = 208;
  }

  v6 = *(&a1->__sig + v5);
  if (!v6)
  {
    return 0;
  }

  pthread_rwlock_rdlock(a1);
  value = 0;
  if (CFDictionaryGetValueIfPresent(v6, v2, &value))
  {
    v2 = value;
  }

  else
  {
    v2 = 0;
  }

  pthread_rwlock_unlock(a1);
  return v2;
}

CFMutableDictionaryRef GLRRenderPipelineCache::init(GLRRenderPipelineCache *this)
{
  result = CFDictionaryCreateMutable(0, 128, &_renderPipelineKeyCallbacks, MEMORY[0x29EDB9020]);
  *this = result;
  return result;
}

BOOL _cachedFunctionEqual(void *a1, void *a2)
{
  v3 = [a1 bitCodeHash];
  v4 = [a2 bitCodeHash];
  return *v3 == *v4 && v3[1] == v4[1] && v3[2] == v4[2] && v3[3] == v4[3];
}

__n128 _renderPipelineKeyRetain(const __CFAllocator *a1, __n128 *a2)
{
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x40uLL, 0x80uLL, 0x1000040AE2C30F4uLL);
  v3 = memptr;
  v4 = a2[3];
  v6 = *a2;
  v5 = a2[1];
  *(memptr + 2) = a2[2];
  v3[3] = v4;
  *v3 = v6;
  v3[1] = v5;
  result = a2[6];
  v8 = a2[7];
  v10 = a2[4];
  v9 = a2[5];
  v3[6] = result;
  v3[7] = v8;
  v3[4] = v10;
  v3[5] = v9;
  return result;
}

unint64_t _renderPipelineKeyHash(char *a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0x61C8864E7A143579;
  v4 = 0x60EA27EEADC0B5D6;
  v5 = 0xC2B2AE3D27D4EB4FLL;
  do
  {
    v6 = __ROR8__(v4 - 0x3D4D51C2D82B14B1 * *&a1[v1], 33);
    v4 = 0x9E3779B185EBCA87 * v6;
    v7 = __ROR8__(v5 - 0x3D4D51C2D82B14B1 * *&a1[v1 + 8], 33);
    v5 = 0x9E3779B185EBCA87 * v7;
    v8 = __ROR8__(v2 - 0x3D4D51C2D82B14B1 * *&a1[v1 + 16], 33);
    v2 = 0x9E3779B185EBCA87 * v8;
    v9 = __ROR8__(v3 - 0x3D4D51C2D82B14B1 * *&a1[v1 + 24], 33);
    v3 = 0x9E3779B185EBCA87 * v9;
    v1 += 32;
  }

  while (v1 != 128);
  v10 = (0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((((0x3C6EF3630BD7950ELL * v6) | (v4 >> 63)) + 0x1BBCD8C2F5E54380 * v7 + (v5 >> 57) + 0x779B185EBCA87000 * v8 + (v2 >> 52) - 0x1939E850D5E40000 * v9 + (v3 >> 46)) ^ (0x9E3779B185EBCA87 * ((0x87BCB65480000000 * v6) | ((0xDEF35B010F796CA9 * v6) >> 33)))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * ((0x87BCB65480000000 * v7) | ((0xDEF35B010F796CA9 * v7) >> 33)))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * ((0x87BCB65480000000 * v8) | ((0xDEF35B010F796CA9 * v8) >> 33)))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * ((0x87BCB65480000000 * v9) | ((0xDEF35B010F796CA9 * v9) >> 33)));
  v11 = 0xC2B2AE3D27D4EB4FLL * ((0x9E3779B185EBCA87 * v10 - 0x7A1435883D4D511DLL) ^ ((0x9E3779B185EBCA87 * v10 - 0x7A1435883D4D511DLL) >> 33));
  return (0x165667B19E3779F9 * (v11 ^ (v11 >> 29))) ^ ((0x165667B19E3779F9 * (v11 ^ (v11 >> 29))) >> 32);
}

void GLDContextRec::updateDrawBufferState(GLDContextRec *this, int a2)
{
  if ((a2 & 0x400) != 0 && *(this + 5085) != *(*(this + 13) + 12952))
  {
    if (*(this + 1151))
    {
      GLDContextRec::beginRenderPass(this);
    }

    if (*(this + 2))
    {
      GLDContextRec::endRenderPass(this);
    }

    *(this + 5085) = *(*(this + 13) + 12952) != 0;
  }

  if ((a2 & 0x44000000) != 0)
  {
    GLDContextRec::updateRenderScissor(this);
    *(this + 453) |= 0x10804202u;
  }

  if ((a2 & 0x40000) != 0)
  {
    GLDContextRec::updateRenderColorMaskMode(this);
    if ((a2 & 0x80000) == 0)
    {
LABEL_12:
      if ((a2 & 0x100000) == 0)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((a2 & 0x80000) == 0)
  {
    goto LABEL_12;
  }

  *(this + 453) |= 0x200u;
  if ((a2 & 0x100000) == 0)
  {
    return;
  }

LABEL_13:
  *(this + 453) |= 0x10000000u;
}

BOOL GLDContextRec::handleProcessingModeChange(GLDContextRec *this)
{
  v1 = *(this + 95);
  v2 = v1 | 0x100100;
  if (*(*(this + 13) + 4) == 1)
  {
    v2 = v1 | 0x100;
  }

  if (*(*(this + 13) + 4))
  {
    v1 = v2;
  }

  v3 = *(this + 96);
  if (v1 != (v3 & 0x300300))
  {
    *(this + 96) = v3 & 0xFFCFFCFF | v1;
  }

  return v1 != (v3 & 0x300300);
}

uint64_t gldUpdateDispatch(GLDContextRec *this, int a2, unsigned int *a3, double a4, double a5, double a6, double a7, float a8, unsigned int *a9)
{
  v11 = *(this + 11);
  if (*(v11 + 248))
  {
    pthread_mutex_lock((v11 + 256));
  }

  *a3 |= *(this + 453);
  *(this + 453) = 0;
  if ((a3[1] & 0x80000000) != 0)
  {
    v12 = *(*(this + 13) + 8);
    if ((v12 & 0x3FF) == 0)
    {
      v12 = *(*(this + 16) + 584) & 0x3FF;
    }

    *(this + 94) = v12;
    *(this + 618) |= 8u;
  }

  if (*(a3 + 8))
  {
    GLDContextRec::loadCurrentSamplers(this, *(a3 + 8));
  }

  v13 = *(a3 + 2);
  if (v13)
  {
    if (*(*(this + 11) + 440) == 1)
    {
      v14 = mach_absolute_time();
      GLDContextRec::loadCurrentTextures(this, v13, (*(this + 13) + 12704));
      *(this + 632) += mach_absolute_time() - v14;
    }

    else
    {
      GLDContextRec::loadCurrentTextures(this, *(a3 + 2), (*(this + 13) + 12704));
    }
  }

  if (((*(this + 660) | *(this + 661)) & *(this + 662)) != 0)
  {
    v15 = (this + 1208);
    v16 = -32;
    do
    {
      if ((*(this + 662) >> v16))
      {
        GLDTextureRec::setForceASTC_LP(*(v15 - 32), **(*v15 + 3) != 9728);
      }

      ++v15;
    }

    while (!__CFADD__(v16++, 1));
  }

  v18 = a3[3];
  if ((v18 & 0x80000000) != 0)
  {
    v19 = GLDContextRec::handleProcessingModeChange(this);
    v18 = a3[3];
    if (v19)
    {
      a3[3] = v18 | 0x8C40000;
      *(this + 618) |= 0x10u;
      v18 = a3[3];
    }
  }

  if ((v18 & 0x1000) != 0)
  {
    GLDContextRec::loadCurrentVertexArray(this, a3);
    v18 = a3[3];
  }

  if ((v18 & 0x30440000) != 0)
  {
    GLDContextRec::loadCurrentPipelinePrograms(this, a3, a3, a9);
    v18 = a3[3];
  }

  if ((v18 & 0x8800000) != 0)
  {
    a4 = NAN;
    *(this + 330) = -1;
    *(this + 618) |= 0x400u;
    v18 = a3[3];
  }

  if (*(this + 385))
  {
    v20 = 4;
  }

  else
  {
    v20 = 5;
  }

  if ((v18 & 0x10000000) != 0)
  {
    *(this + 618) |= 0x400u;
    v18 = a3[3];
  }

  if ((v18 & 0x20000000) != 0)
  {
    GLDContextRec::updateUniformBindings(this);
  }

  v21 = *a3;
  if ((*a3 & 2) != 0)
  {
    GLDContextRec::updateRenderBlendState(this);
    v21 = *a3;
  }

  if ((v21 & 0x20400000) != 0)
  {
    *(this + 618) |= 8u;
    *(this + 621) |= 2u;
  }

  if (*(a3 + 11))
  {
    GLDContextRec::updateRenderClipPlanes(this);
  }

  v22 = *a3;
  if ((*a3 & 4) != 0)
  {
    *(this + 618) |= 0x1000u;
    v22 = *a3;
    if ((*a3 & 1) == 0)
    {
LABEL_43:
      if ((v22 & 0x20000) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_62;
    }
  }

  else if ((v22 & 1) == 0)
  {
    goto LABEL_43;
  }

  GLDContextRec::updateRenderAlphaTestState(this);
  v22 = *a3;
  if ((*a3 & 0x20000) == 0)
  {
LABEL_44:
    if ((v22 & 0x4000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_63;
  }

LABEL_62:
  GLDContextRec::updateRenderLogicOpState(this);
  v22 = *a3;
  if ((*a3 & 0x4000) == 0)
  {
LABEL_45:
    if ((v22 & 0x800000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_63:
  GLDContextRec::updateRenderLineMode(this);
  v22 = *a3;
  if ((*a3 & 0x800000) != 0)
  {
LABEL_46:
    GLDContextRec::updateRenderPolygonMode(this);
    v22 = *a3;
  }

LABEL_47:
  if ((v22 & 0x10800200) != 0)
  {
    GLDContextRec::updateRenderDepthStencil(this);
  }

  if (a3[2])
  {
    GLDContextRec::updateRenderViewport(this, a4, a5, a6, a7, a8);
  }

  v23 = a3[1];
  if ((v23 & 0x80000) != 0)
  {
    GLDContextRec::updateRenderPrimitiveRestart(this);
    v23 = a3[1];
  }

  if ((v23 & 0x800000) != 0)
  {
    GLDContextRec::loadCurrentQueries(this);
  }

  v24 = *(this + 618);
  if ((v24 & 0x40) != 0 || (*(a3 + 6) & 0x80) != 0)
  {
    if ((*(this + 5045) & 3) != 0)
    {
      v25 = *(this + 272);
      if ((v25 & 0x10000000000) != 0)
      {
        v26 = 0;
LABEL_67:
        *(this + 272) = v25 & 0xFFFFFEFFFFFFFFFFLL | v26;
        v24 |= 8u;
        *(this + 618) = v24;
      }
    }

    else
    {
      v27 = *(this + 599);
      v25 = *(this + 272);
      if ((v27 == 0) != ((v25 >> 40) & 1))
      {
        v26 = (v27 == 0) << 40;
        goto LABEL_67;
      }
    }
  }

  if (a3[3] & 0x40000 | v24 & 1 || (a3[1] & 0x80000000) != 0)
  {
    GLDContextRec::buildPrimitiveBufferVertexArrayDescriptor(this);
    *(this + 618) |= 0x803u;
    v20 = v20 | 2;
  }

  v28 = *(this + 11);
  if (*(v28 + 248))
  {
    pthread_mutex_unlock((v28 + 256));
  }

  return v20;
}

uint64_t GLDContextRec::flushResource(id *this, GLRResource *a2)
{
  if (*(a2 + 3))
  {
    GLDContextRec::flushContext(this);
  }

  return 0;
}

intptr_t GLDContextRec::flushContext(id *this)
{
  if (*(this + 1151))
  {
    GLDContextRec::beginRenderPass(this);
  }

  if (this[2])
  {
    GLDContextRec::endRenderPass(this);
  }

  v2 = this[4];
  if (v2)
  {
    [v2 endEncoding];

    this[4] = 0;
  }

  return GLDContextRec::flushContextInternal(this);
}

uint64_t GLDContextRec::finishResource(id *this, GLRResource *a2)
{
  if (*(a2 + 3))
  {
    GLDContextRec::flushContext(this);
  }

  (*(*a2 + 40))(a2, this[11]);
  return 0;
}

uint64_t GLDContextRec::testResource(id *this, GLRResource *a2, unsigned int a3, int a4)
{
  if (a4 && *(a2 + 3))
  {
    GLDContextRec::flushContext(this);
  }

  if (*(a2 + 3))
  {
    return 0;
  }

  else
  {
    return (*(*a2 + 48))(a2);
  }
}

BOOL GLDContextRec::testFence(id *this, GLDFenceRec *a2, int a3)
{
  if (GLDFenceRec::getStatus(a2) == 3)
  {
    return 1;
  }

  if (a3)
  {
    if (*(a2 + 3))
    {
      GLDContextRec::flushContext(this);
    }
  }

  return GLDFenceRec::getStatus(a2) == 3;
}

intptr_t GLDContextRec::flushContextInternal(GLDContextRec *this)
{
  v2 = this + 4096;
  *(this + 1256) = 0;
  *(this + 5087) = 0;
  if (*(this + 5))
  {
    atomic_fetch_or((*(this + 12) + 536), *(this + 53));
    *(this + 53) = 0;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = ___ZN13GLDContextRec20flushContextInternalEv_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = this;
    if (GLDContextRec::flushContextInternal(void)::once != -1)
    {
      dispatch_once(&GLDContextRec::flushContextInternal(void)::once, block);
    }

    *(this + 1263) |= 0x4000u;
    v3 = *(this + 657);
    if (v3)
    {
      dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    }

    GLRResourceList::addFence(*(this + 8), *(this + 9));
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3052000000;
    v18[3] = __Block_byref_object_copy__1;
    v4 = *(this + 698);
    v18[4] = __Block_byref_object_dispose__1;
    v18[5] = v4;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3052000000;
    v17[3] = __Block_byref_object_copy__1;
    v5 = *(this + 743);
    v17[4] = __Block_byref_object_dispose__1;
    v17[5] = v5;
    *(this + 628) = 0;
    GLRDataBufferManager::reset((this + 5272));
    GLRDataBufferManager::reset((this + 5632));
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v16[3] = *(this + 8);
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = *(this + 11);
    *(this + 8) = 0;
    dispatch_group_enter(*(this + 658));
    v6 = *(this + 5);
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = ___ZN13GLDContextRec20flushContextInternalEv_block_invoke_1;
    v14[3] = &unk_29F34BA30;
    v14[4] = v16;
    v14[5] = this;
    [v6 addScheduledHandler:v14];
    v7 = v2[992];
    if (v7 == 1)
    {
      v8 = *(this + 596);
      *(this + 596) = v8 + 1;
      *(this + 597) = v8;
      v2[992] = 0;
    }

    else
    {
      v8 = 0;
    }

    v9 = *(this + 5);
    v10 = *(this + 6);
    *(this + 6) = 0;
    *(this + 7) = 0;
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = ___ZN13GLDContextRec20flushContextInternalEv_block_invoke_2;
    v12[3] = &unk_29F34BA58;
    v12[4] = v18;
    v12[5] = v17;
    v12[8] = this;
    v12[9] = v10;
    v13 = v7;
    v12[10] = v8;
    v12[6] = v16;
    v12[7] = v15;
    [v9 addCompletedHandler:v12];
    [*(this + 5) commit];

    *(this + 5) = 0;
    _Block_object_dispose(v15, 8);
    _Block_object_dispose(v16, 8);
    _Block_object_dispose(v17, 8);
    _Block_object_dispose(v18, 8);
  }

  result = dispatch_group_wait(*(this + 658), 0xFFFFFFFFFFFFFFFFLL);
  if (*(this + 783) == 4 && !*(*(this + 12) + 16) && (v2[2181] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      GLDContextRec::flushContextInternal();
    }

    abort();
  }

  return result;
}

void sub_29D37664C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 184), 8);
  _Block_object_dispose((v32 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN13GLDContextRec20flushContextInternalEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  GLDDeviceRec::telemetryEmitBacktraceInfo(*(v1 + 96), (v1 + 432));
  v2 = *(v1 + 96);

  return GLDDeviceRec::telemetryEmitGPUWorkSubmitted(v2);
}

void ___ZN13GLDContextRec20flushContextInternalEv_block_invoke_1(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  GLRResourceList::makeResourcesBusy(*(*(*(a1 + 32) + 8) + 24));
  if ([a2 error])
  {
    *(v3 + 6276) = 1;
  }

  else
  {
    v4 = *(v3 + 5264);

    dispatch_group_leave(v4);
  }
}

uint64_t ___ZN13GLDContextRec20flushContextInternalEv_block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 64);
  v5 = [a2 error];
  if (v5)
  {
    v6 = v5;
    NSLog(&cfstr_Gldrenderermet.isa, v5);
    v5 = [v6 code];
    *(v4 + 6264) = v5;
    if (*(v4 + 6276) == 1)
    {
      *(v4 + 6276) = 0;
      dispatch_group_leave(*(v4 + 5264));
      v5 = *(v4 + 6264);
    }

    if (v5 == 4)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    *(v4 + 6272) = v7;
  }

  v8 = *(*(*(a1 + 32) + 8) + 40);
  if (v8)
  {
    GLRDataBufferManager::releaseDataBuffer(v4 + 5272, v8);
  }

  v9 = *(*(*(a1 + 40) + 8) + 40);
  if (v9)
  {
    GLRDataBufferManager::releaseDataBuffer(v4 + 5632, v9);
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    GLDContextRec::dispatchCompletedBlocks(v5, a2, v10);
  }

  if (*(a1 + 88) == 1)
  {
    GLDContextRec::signalQueryStamp(v4, *(a1 + 80));
  }

  if (GLRResourceList::makeResourcesNotBusyAndReset(*(*(*(a1 + 48) + 8) + 24)))
  {
    GLDShareGroupRec::signalUsage(*(*(*(a1 + 56) + 8) + 24));
  }

  v11 = *(*(*(a1 + 48) + 8) + 24);

  return GLRResourceList::releaseToPool(v11);
}

uint64_t GLDContextRec::dispatchCompletedBlocks(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      (*(v3[1] + 16))();
      _Block_release(v3[1]);
      v4 = *v3;
      result = MEMORY[0x29ED53120](v3, 0xA0C40AFF93C70);
      v3 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t GLDContextRec::waitContext(dispatch_group_t *this)
{
  dispatch_group_wait(this[658], 0xFFFFFFFFFFFFFFFFLL);
  v2 = this[11];
  v3 = *(this[9]->isa + 5);

  return v3();
}

uint64_t GLDContextRec::setFence(GLRResourceList **this, GLDFenceRec *a2)
{
  if (!this[5])
  {
    GLDContextRec::getCommandBuffer(this);
  }

  *(a2 + 8) = 0;
  *(this + 5087) = 1;
  v4 = this[8];

  return GLRResourceList::addFence(v4, a2);
}

uint64_t gldTestObject(id *this, int a2, int a3, int a4, GLDFenceRec *a5)
{
  switch(a2)
  {
    case 3:
      MemoryPlugin = GLDBufferRec::getMemoryPlugin(a5);
      if (!MemoryPlugin)
      {
        return 1;
      }

      v10 = *(MemoryPlugin + 24);
      if (!v10)
      {
        return 1;
      }

      break;
    case 1:
      TextureResource = GLDTextureRec::getTextureResource(a5, 0);
      if (!TextureResource)
      {
        return 1;
      }

      v10 = TextureResource;
      break;
    case 0:

      return GLDContextRec::testFence(this, a5, a4);
    default:
      return 1;
  }

  return GLDContextRec::testResource(this, v10, v9, a4);
}

uint64_t gldFlushObject(id *this, int a2, int a3, GLDTextureRec *a4)
{
  if (a2 == 3)
  {
    MemoryPlugin = GLDBufferRec::getMemoryPlugin(a4);
    if (MemoryPlugin)
    {
      v9 = *(MemoryPlugin + 24);
      if (v9)
      {
        if (*(v9 + 12))
        {
          goto LABEL_15;
        }
      }
    }
  }

  else
  {
    if (a2 != 1)
    {
      if (a2 || !*(a4 + 3))
      {
        return 0;
      }

LABEL_15:
      GLDContextRec::flushContext(this);
      return 0;
    }

    TextureResource = GLDTextureRec::getTextureResource(a4, 0);
    if (TextureResource && *(TextureResource + 12))
    {
      GLDContextRec::flushContext(this);
    }

    v7 = GLDTextureRec::getTextureResource(a4, 1u);
    if (v7 && *(v7 + 12))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t gldFinishObject(id *a1, int a2, int a3, GLDTextureRec *this)
{
  v5 = a1;
  switch(a2)
  {
    case 3:
      MemoryPlugin = GLDBufferRec::getMemoryPlugin(this);
      if (!MemoryPlugin)
      {
        return 0;
      }

      v6 = *(MemoryPlugin + 24);
      if (!v6)
      {
        return 0;
      }

      goto LABEL_11;
    case 1:
      TextureResource = GLDTextureRec::getTextureResource(this, 0);
      if (TextureResource)
      {
        GLDContextRec::finishResource(v5, TextureResource);
      }

      v8 = GLDTextureRec::getTextureResource(this, 1u);
      if (!v8)
      {
        return 0;
      }

      v6 = v8;
LABEL_11:
      a1 = v5;
      goto LABEL_12;
    case 0:
      v6 = this;
LABEL_12:
      GLDContextRec::finishResource(a1, v6);
      break;
  }

  return 0;
}

uint64_t gldFinishContext(uint64_t a1)
{
  GLDContextRec::flushContext(a1);
  dispatch_group_wait(*(a1 + 5264), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 88);
  v3 = *(**(a1 + 72) + 40);

  return v3();
}

uint64_t gldWaitForContext(uint64_t a1)
{
  dispatch_group_wait(*(a1 + 5264), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 88);
  v3 = *(**(a1 + 72) + 40);

  return v3();
}

void GLDContextRec::dispatchImageQueueBlockAsync(id *a1, NSObject **this, uint64_t a3, dispatch_block_t block)
{
  if (*(this + 19))
  {
    v8 = 0;
    do
    {
      TextureResource = GLDTextureRec::getTextureResource(this, v8);
      GLDContextRec::flushResource(a1, TextureResource);
      ++v8;
    }

    while (v8 < *(this + 19));
  }

  TextureImageQueue = this[17];
  if (TextureImageQueue)
  {
    if (a3)
    {
LABEL_6:

      GLDBufferRec::dispatchGroupAsync(a3, TextureImageQueue, block);
      return;
    }
  }

  else
  {
    TextureImageQueue = GLDTextureRec::createTextureImageQueue(this);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  dispatch_async(TextureImageQueue, block);
}

void GLDContextRec::dispatchImageQueueEvent(GLDContextRec *this, GLDTextureRec *a2)
{
  v2 = *(a2 + 17);
  if (v2)
  {
    v4 = *(this + 657);
    if (!v4)
    {
      v4 = dispatch_group_create();
      *(this + 657) = v4;
    }

    dispatch_group_async(v4, v2, &__block_literal_global_2);
  }
}

uint64_t GLDContextRec::loadCurrentTextures(uint64_t this, unsigned __int16 a2, const unint64_t *a3)
{
  v31 = *(this + 88);
  v3 = a2;
  *(this + 416) &= ~a2;
  v4 = *(this + 104);
  if (!*(v4 + 12724))
  {
    return this;
  }

  v5 = a3;
  v6 = this;
  v7 = 0;
  v8 = this + 952;
  v33 = this + 1544;
  v30 = a2;
  do
  {
    if (!v3)
    {
      goto LABEL_40;
    }

    do
    {
      v9 = __clz(__rbit32(v3));
      v10 = 1 << v9;
      v11 = v9 + 16 * v7;
      v12 = v5[v7] >> (4 * v9);
      v13 = v12 & 0xF;
      if (v13 > 0xA)
      {
        if (!*(v8 + 8 * v11))
        {
          v14 = 0;
          goto LABEL_36;
        }

        v14 = 0;
        *(v33 + 4 * v11) = 0;
        v18 = -113;
        goto LABEL_35;
      }

      v14 = *(*(v6 + 112) + 8 * v11);
      if (!v14)
      {
        goto LABEL_33;
      }

      v15 = *(v14 + 56);
      v16 = *(v15 + 20);
      v17 = *(v33 + 4 * v11);
      if (v17 == *(v14 + 12))
      {
        v18 = *(v15 + 20);
      }

      else
      {
        v18 = -113;
      }

      if (v13 == 7)
      {
        if ((v16 & 8) != 0)
        {
          v27 = *v15;
          if (!*v15)
          {
            goto LABEL_33;
          }

          v28 = **(v27 + 4);
          if (v28)
          {
            this = GLDBufferRec::update(v27, v28);
            if (!this)
            {
              goto LABEL_33;
            }

            **(v27 + 4) = 0;
          }
        }

        if (!v16)
        {
          goto LABEL_27;
        }

        v19 = *(v31 + 24) + 1;
        *(v31 + 24) = v19;
        *(v14 + 12) = v19;
        this = GLDTextureRec::update(v14, v16, (*(v14 + 56) + 8));
        if (this)
        {
LABEL_26:
          v26 = *(v14 + 56);
          *(v26 + 13) = 0;
          *(v26 + 8) = 0;
LABEL_27:
          *(v33 + 4 * v11) = *(v14 + 12);
          v5 = a3;
          if (v18)
          {
            goto LABEL_35;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v20 = *(v14 + 48);
        if ((v10 & *(*(v6 + 104) + 2 * v7 + 12720)) == 0 || *(v20 + 2))
        {
          v21 = *(v20 + 4);
          v22 = v21 == 6402;
          this = *(v6 + 88);
          v23 = v12 & 0xF;
          v14 = *(this + 88 * (v21 == 6402) + 8 * v23 + 40);
          if (!v14)
          {
            this = GLDShareGroupRec::createZeroTexture(this, v21 == 6402, v13);
            v14 = this;
            *(*(v6 + 88) + 88 * v22 + 8 * v23 + 40) = this;
            v17 = *(v33 + 4 * v11);
          }

          v15 = *(v14 + 56);
          v16 = *(v15 + 20);
          if (v17 == *(v14 + 12))
          {
            v18 = *(v15 + 20);
          }

          else
          {
            v18 = -113;
          }
        }

        if (!v16)
        {
          goto LABEL_27;
        }

        v24 = *(v6 + 88);
        v25 = *(v24 + 24) + 1;
        *(v24 + 24) = v25;
        *(v14 + 12) = v25;
        this = GLDTextureRec::update(v14, v16, (v15 + 8));
        if (this)
        {
          goto LABEL_26;
        }
      }

LABEL_33:
      v14 = 0;
      *(v6 + 416) |= 1 << v11;
      *(v33 + 4 * v11) = 0;
      if (*(v8 + 8 * v11))
      {
        v18 = -113;
        v5 = a3;
LABEL_35:
        this = GLDContextRec::bindTexture(v6, v14, v11, v18);
        goto LABEL_36;
      }

      v5 = a3;
LABEL_36:
      *(v8 + 8 * v11) = v14;
      v29 = v10 == v3;
      v3 ^= v10;
    }

    while (!v29);
    v4 = *(v6 + 104);
    v3 = v30;
LABEL_40:
    ++v7;
  }

  while (v7 < *(v4 + 12724));
  return this;
}

_DWORD *GLDContextRec::bindTexture(_DWORD *this, GLDTextureRec *a2, int a3, char a4)
{
  v5 = this;
  v6 = this + 894;
  v7 = *&this[2 * a3 + 894];
  v8 = 1 << a3;
  this[662] &= ~(1 << a3);
  if (!a2)
  {
    *&v6[2 * a3] = 0;
    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  TextureResource = GLDTextureRec::getTextureResource(a2, 0);
  *&v6[2 * a3] = TextureResource;
  this = (*(*TextureResource + 16))(TextureResource);
  if (a4 < 0)
  {
    v12 = *(*(a2 + 6) + 214);
    v13 = (v12 >> 4) - (v12 & 0xF);
    if (*(v5 + a3 + 1816) != v13)
    {
      *(v5 + a3 + 1816) = v13;
      v5[661] |= v8;
    }
  }

  if (*(&glrTextureFormats + 40 * *(a2 + 16) + 37))
  {
    v5[662] |= v8;
  }

  if (v7)
  {
LABEL_8:
    this = (*(*v7 + 24))(v7);
  }

LABEL_9:
  v5[618] |= 4u;
  v5[660] |= v8;
  return this;
}

void GLDContextRec::generateTexMipmapsWithBlit(GLDContextRec *this, GLDTextureRec *a2, int a3)
{
  if (*(this + 1151))
  {
    GLDContextRec::beginRenderPass(this);
  }

  if (*(this + 2))
  {
    GLDContextRec::endRenderPass(this);
  }

  if (!*(this + 5))
  {
    GLDContextRec::getCommandBuffer(this);
  }

  v6 = objc_autoreleasePoolPush();
  v13 = [*(this + 5) blitCommandEncoder];
  objc_autoreleasePoolPop(v6);
  [v13 setLabel:*MEMORY[0x29EDBB7B0]];
  v7 = *(*(GLDTextureRec::getTextureResource(a2, 0) + 40) + 32);
  if (*(*(a2 + 6) + 211) == 6)
  {
    v8 = GLDTextureRec::newCubeView(a2, a3);
    [v13 generateMipmapsForTexture:v8];
    if (v8 != v7)
    {
      v9 = GLDObject::operator new(0x40);
      GLRTextureResource::GLRTextureResource(v9);
      TextureResource = GLDTextureRec::getTextureResource(a2, 0);
      GLRTextureResource::initWithMetalTexture(v9, v8, *(TextureResource + 24));
      GLDContextRec::dispatchImageQueueEvent(this, a2);
      GLRResourceList::addResource(*(this + 8), v9);
      (*(*v9 + 24))(v9);

      goto LABEL_12;
    }
  }

  else
  {
    [v13 generateMipmapsForTexture:v7];
  }

  v11 = *(this + 8);
  v12 = GLDTextureRec::getTextureResource(a2, 0);
  GLRResourceList::addResource(v11, v12);
LABEL_12:
  [v13 endEncoding];
}

void GLDContextRec::flushRenderPassIfNeeded(GLDContextRec *this)
{
  if (*(this + 1151))
  {
    GLDContextRec::beginRenderPass(this);
  }

  if (*(this + 2))
  {

    GLDContextRec::endRenderPass(this);
  }
}

void GLDContextRec::generateMipmapsWithCPUAsync(id *this, GLDTextureRec *a2, uint64_t a3)
{
  v6 = *(a2 + 6);
  if (*(v6 + 130))
  {
    v8 = *(v6 + 210);
    v7 = *(v6 + 214);
  }

  else
  {
    v7 = *(v6 + 214);
    v8 = v7 >> 4;
  }

  v9 = (v7 & 0xF) + 1;
  TextureResource = GLDTextureRec::getTextureResource(a2, 0);
  (*(*TextureResource + 16))(TextureResource);
  v11 = TextureResource[4];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = ___ZN13GLDContextRec27generateMipmapsWithCPUAsyncEP13GLDTextureRecm_block_invoke;
  block[3] = &unk_29F34BA80;
  block[4] = v11;
  block[5] = this;
  v13 = v9;
  v14 = v8;
  block[6] = TextureResource;
  block[7] = a3;
  GLDContextRec::dispatchImageQueueBlockAsync(this, a2, 0, block);
}

uint64_t ___ZN13GLDContextRec27generateMipmapsWithCPUAsyncEP13GLDTextureRecm_block_invoke(uint64_t a1)
{
  (*(**(a1 + 48) + 40))(*(a1 + 48), *(*(a1 + 40) + 88));
  v2 = [*(a1 + 32) arrayLength];
  v4 = *(a1 + 64);
  v3 = *(a1 + 68);
  if (v4 <= v3)
  {
    v5 = v2;
    do
    {
      if (v5)
      {
        for (i = 0; i != v5; ++i)
        {
          [*(a1 + 32) generateMipmapLevel:v4 slice:i + *(a1 + 56) * v5];
        }

        v3 = *(a1 + 68);
      }

      ++v4;
    }

    while (v4 <= v3);
  }

  v7 = *(**(a1 + 48) + 24);

  return v7();
}

void *GLDContextRec::getPixelBuffer(void **this, const void *a2, size_t a3, unint64_t *a4)
{
  __dst = 0;
  DataBufferSpace = GLRDataBufferManager::getDataBufferSpace((this + 704), this[5], (a3 + 63) & 0xFFFFFFFFFFFFFFC0, a4, &__dst);
  if (DataBufferSpace)
  {
    memcpy(__dst, a2, a3);
  }

  return DataBufferSpace;
}

atomic_uint *gldUnbindTexture(GLDContextRec *this, atomic_uint *a2)
{
  for (i = 517; i != 527; ++i)
  {
    result = *(this + i);
    if (result == a2)
    {
      if (*(this + 1151))
      {
        GLDContextRec::beginRenderPass(this);
        result = *(this + i);
      }

      result = GLDObject::release(result);
      *(this + i) = 0;
    }
  }

  return result;
}

uint64_t gldModifyTexSubImage(uint64_t a1, GLDTextureRec *this, int a3, unsigned int a4, int a5, int a6, int a7, int a8, unsigned int a9, int a10, int a11, int a12, uint64_t a13, int a14, GLDBufferRec *a15)
{
  if (*(this + 19) < 2 && (v23 = *(this + 6), (GLDTextureRec::load(this) & 1) != 0))
  {
    v24 = &(&glrTextureFormats)[5 * *(this + 16)];
    v25 = (a4 == 0) & *(v23 + 130);
    if (v25 == 1 && ((*(*(this + 6) + 214) & 0x1800) != 0 || (*(v24 + 36) & 0x40) == 0))
    {
      return 0;
    }

    v26 = *(v24 + 2);
    if (v26 > 36247)
    {
      if (v26 == 36249)
      {
        v26 = 6408;
      }

      else if (v26 == 36248)
      {
        v26 = 6407;
      }
    }

    else if (v26 == 33320)
    {
      v26 = 33319;
    }

    else if (v26 == 36244)
    {
      v26 = 6403;
    }

    result = 0;
    v28 = *(v24 + 3);
    if (v28 == 36193)
    {
      v28 = 5131;
    }

    if (v26 == a11 && v28 == a12)
    {
      if (a11 == 6402 && a12 == 5126)
      {
        return 0;
      }

      v29 = 0;
      *v123 = 0;
      v122 = 0;
      if (a12 && !a14)
      {
        v29 = (*(a1 + 104) + 16212);
      }

      v92 = v23;
      v83 = v25;
      v89 = v24;
      if ((*(v23 + 214) & 0x1800) == 0x1000)
      {
        v30 = 4;
      }

      else
      {
        v30 = 3;
        if ((*(v23 + 214) & 0x2000) != 0)
        {
          if ((*(v23 + 214) & 0x600) != 0)
          {
            v30 = 4;
          }

          else
          {
            v30 = 3;
          }
        }
      }

      glrPixelSettings(a11, a12, a8, a9, &v123[1], v123, &v122, v29, v30);
      v85 = v122;
      LODWORD(block) = 0;
      LODWORD(v118) = 0;
      glgConvertType();
      v87 = v123[1] * a9;
      v31 = v85;
      v81 = a4;
      v84 = a3;
      if ((*(v23 + 214) & 0x2000) != 0)
      {
        v32 = a7;
        v33 = a10;
        v86 = 1;
        a7 = 0;
      }

      else
      {
        v32 = (a3 & ~(a3 >> 31));
        v33 = 1;
        v86 = a10;
      }

      if ((*(v92 + 24) & 4) != 0)
      {
        TextureResource = GLDTextureRec::getTextureResource(this, 0);
        v34 = GLDContextRec::testResource(a1, TextureResource, 0, 0) == 0;
      }

      else
      {
        v34 = 0;
      }

      if (a11 == 6407 && a12 != 33635 && a12 != 35902 && a12 != 35899 || *(this + 19) != 1 || (*(&glrTextureFormats + 10 * *(this + 16) + 9) & 0x81) != 1 || v123[1] % v123[0] || ((a13 + v31) % v123[0]) | a8 & 1 || v33 * v87 > 0x100000)
      {
        v34 = 0;
      }

      v80 = (a13 + v31);
      v36 = v89[3];
      v121 = 0;
      v119 = 0u;
      v120 = 0u;
      v118 = 0u;
      v37 = v34;
      MTLPixelFormatGetInfo();
      v38 = v37;
      v88 = a15 != 0 && v37;
      v82 = *(GLDTextureRec::getTextureResource(this, 0) + 32);
      if (a15)
      {
        GLDBufferRec::load(a15);
      }

      v39 = a5;
      v40 = a6;
      v41 = a7;
      v42 = a8;
      if (v88)
      {
        v43 = v39;
        GLDObject::retain(this);
        MemoryPlugin = GLDBufferRec::getMemoryPlugin(a15);
        (*(*MemoryPlugin + 16))(MemoryPlugin);
        block = MEMORY[0x29EDCA5F8];
        v98 = 3221225472;
        v99 = ___ZN13GLDContextRec17modifyTexSubImageEP13GLDTextureReciiiiiiiijjPKviP12GLDBufferRecj_block_invoke;
        v100 = &unk_29F34BAA8;
        v103 = this;
        v104 = MemoryPlugin;
        v105 = v80;
        v106 = v32;
        v101 = v82;
        v102 = a1;
        v107 = v33;
        v108 = v43;
        v109 = a6;
        v110 = v41;
        v111 = v42;
        v112 = a9;
        v116 = v81;
        v117 = v123[1];
        v113 = v86;
        v114 = v87;
        v115 = v87;
        GLDContextRec::dispatchImageQueueBlockAsync(a1, this, a15, &block);
        if (v83)
        {
          GLDContextRec::generateMipmapsWithCPUAsync(a1, this, v84);
        }
      }

      else
      {
        v79 = a8;
        if (v38)
        {
          v77 = v39;
          v78 = a6;
          GLDContextRec::flushRenderPassIfNeeded(a1);
          v45 = *(a1 + 40);
          if (!v45)
          {
            GLDContextRec::getCommandBuffer(a1);
            v45 = *(a1 + 40);
          }

          v46 = [v45 blitCommandEncoder];
          [v46 setLabel:*MEMORY[0x29EDBB7B0]];
          v96 = 0;
          v76 = v46;
          if (a15)
          {
            v47 = *(a15 + 5);
            if (v47 && (v48 = *(v47 + 24)) != 0)
            {
              v49 = a7;
              v50 = a9;
              PixelBuffer = *(v48 + 40);
            }

            else
            {
              v49 = a7;
              v50 = a9;
              PixelBuffer = 0;
            }
          }

          else
          {
            v49 = a7;
            v50 = a9;
            v59 = v33 * v87 * v86;
            PixelBuffer = GLDContextRec::getPixelBuffer(a1, v80, v59, &v96);
            if (!PixelBuffer)
            {
              v60 = [*(*(a1 + 96) + 24) newBufferWithBytes:v80 length:v59 options:0];
              [v60 setLabel:*MEMORY[0x29EDBB7B0]];
              v61 = *(a1 + 40);
              block = MEMORY[0x29EDCA5F8];
              v98 = 3221225472;
              v99 = ___ZN13GLDContextRec17modifyTexSubImageEP13GLDTextureReciiiiiiiijjPKviP12GLDBufferRecj_block_invoke_2;
              v100 = &unk_29F34BAD0;
              v101 = v60;
              [v61 addCompletedHandler:&block];
              PixelBuffer = v60;
            }
          }

          v63 = v86;
          v62 = v87;
          v64 = v76;
          if (v32 < (v32 + v33))
          {
            v90 = v49;
            v65 = v96;
            do
            {
              v91 = v33;
              v93 = v32;
              v95[0] = v79;
              v95[1] = v50;
              v95[2] = v63;
              v94[0] = v77;
              v94[1] = v78;
              v94[2] = v49;
              v75 = v32;
              v66 = v64;
              v67 = PixelBuffer;
              v68 = v62;
              v69 = v63;
              [v64 copyFromBuffer:PixelBuffer sourceOffset:v65 sourceBytesPerRow:v123[1] sourceBytesPerImage:v87 sourceSize:v95 toTexture:v82 destinationSlice:v75 destinationLevel:v81 destinationOrigin:v94];
              v64 = v66;
              v63 = v69;
              v49 = v90;
              v62 = v68;
              PixelBuffer = v67;
              v65 = v96 + v68;
              v96 += v68;
              v32 = (v93 + 1);
              v33 = v91 - 1;
            }

            while (v91 != 1);
          }

          [v64 endEncoding];
          GLDContextRec::dispatchImageQueueEvent(a1, this);
          v70 = *(a1 + 64);
          v71 = GLDTextureRec::getTextureResource(this, 0);
          GLRResourceList::addResource(v70, v71);
          v72 = v84;
          if (a15)
          {
            v73 = *(a15 + 5);
            if (v73)
            {
              v74 = *(v73 + 24);
            }

            else
            {
              v74 = 0;
            }

            GLRResourceList::addResource(*(a1 + 64), v74);
          }
        }

        else
        {
          if ((*(v92 + 24) & 4) != 0)
          {
            v52 = v39;
            v53 = GLDTextureRec::getTextureResource(this, 0);
            GLDContextRec::finishResource(a1, v53);
            v39 = v52;
            v40 = a6;
          }

          if (a15)
          {
            v54 = *(a15 + 5);
            if (v54)
            {
              v55 = *(v54 + 24);
              if (v55)
              {
                v56 = v40;
                v57 = v39;
                GLDContextRec::finishResource(a1, v55);
                v39 = v57;
                v40 = v56;
              }
            }
          }

          block = MEMORY[0x29EDCA5F8];
          v98 = 3221225472;
          v99 = ___ZN13GLDContextRec17modifyTexSubImageEP13GLDTextureReciiiiiiiijjPKviP12GLDBufferRecj_block_invoke_3;
          v100 = &unk_29F34BAF8;
          v103 = v32;
          v104 = v33;
          v101 = v82;
          v102 = v80;
          v105 = v39;
          v106 = v40;
          v107 = a7;
          v108 = a8;
          v109 = a9;
          v110 = v86;
          v113 = __PAIR64__(v123[1], v81);
          v111 = v87;
          v112 = v87;
          v58 = *(this + 17);
          if (v58)
          {
            dispatch_sync(v58, &block);
          }

          else
          {
            ___ZN13GLDContextRec17modifyTexSubImageEP13GLDTextureReciiiiiiiijjPKviP12GLDBufferRecj_block_invoke_3(&block);
          }

          v72 = v84;
        }

        if (v83)
        {
          GLDContextRec::generateTexMipmapsWithBlit(a1, this, v72);
        }
      }

      *(a1 + 5052) |= 4u;
      return 1;
    }
  }

  else
  {
    result = 0;
    *(a1 + 5052) |= 2u;
  }

  return result;
}

uint64_t gldGenerateTexMipmaps(GLDContextRec *a1, GLDTextureRec *this, int a3)
{
  v3 = *(*(this + 6) + 214);
  if (((v3 ^ (v3 >> 4)) & 0xF) == 0)
  {
    return 1;
  }

  result = GLDTextureRec::load(this);
  if (result)
  {
    if ((*(&glrTextureFormats + 40 * *(this + 16) + 36) & 0x40) != 0)
    {
      {
        gldGenerateTexMipmaps_cold_1();
      }

      if (GLDContextRec::generateTexMipmaps(GLDTextureRec *,int,unsigned int)::forceGpuMipmapGenEV && *GLDContextRec::generateTexMipmaps(GLDTextureRec *,int,unsigned int)::forceGpuMipmapGenEV == 49 || !GLDTextureRec::canGenerateMipmapsWithCPU(this, v8))
      {
        GLDContextRec::generateTexMipmapsWithBlit(a1, this, a3);
      }

      else
      {
        TextureResource = GLDTextureRec::getTextureResource(this, 0);
        if (GLDContextRec::testResource(a1, TextureResource, 0, 0))
        {
          GLDTextureRec::generateMipmapsWithCPU(this, a3);
        }

        else
        {
          GLDContextRec::generateMipmapsWithCPUAsync(a1, this, a3);
        }
      }

      result = 1;
      v9 = 0x10000000;
      goto LABEL_16;
    }

    result = 0;
  }

  v9 = 0x8000000;
LABEL_16:
  *(*(a1 + 11) + 32) |= v9;
  *(a1 + 53) |= 0x100000uLL;
  return result;
}

atomic_uint *___ZN13GLDContextRec17modifyTexSubImageEP13GLDTextureReciiiiiiiijjPKviP12GLDBufferRecj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  TextureResource = GLDTextureRec::getTextureResource(*(a1 + 48), 0);
  (*(*TextureResource + 40))(TextureResource, *(v2 + 88));
  (*(**(*(a1 + 56) + 24) + 40))(*(*(a1 + 56) + 24), *(v2 + 88));
  v4 = *(a1 + 72);
  if (v4 < *(a1 + 80) + v4)
  {
    v5 = *(a1 + 64);
    do
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 104);
      v9[0] = *(a1 + 88);
      v9[1] = v7;
      v9[2] = *(a1 + 120);
      [v6 replaceRegion:v9 mipmapLevel:*(a1 + 152) slice:v4 withBytes:v5 bytesPerRow:*(a1 + 156) bytesPerImage:*(a1 + 136)];
      v5 += *(a1 + 144);
      ++v4;
    }

    while (v4 < *(a1 + 80) + *(a1 + 72));
  }

  (*(**(a1 + 56) + 24))(*(a1 + 56));
  return GLDObject::release(*(a1 + 48));
}

void *___ZN13GLDContextRec17modifyTexSubImageEP13GLDTextureReciiiiiiiijjPKviP12GLDBufferRecj_block_invoke_3(void *result)
{
  v1 = result[6];
  if (v1 < result[7] + v1)
  {
    v2 = result;
    v3 = result[5];
    do
    {
      v4 = v2[4];
      v5 = *(v2 + 5);
      v6[0] = *(v2 + 4);
      v6[1] = v5;
      v6[2] = *(v2 + 6);
      result = [v4 replaceRegion:v6 mipmapLevel:*(v2 + 32) slice:v1 withBytes:v3 bytesPerRow:*(v2 + 33) bytesPerImage:v2[14]];
      v3 += v2[15];
      ++v1;
    }

    while (v1 < v2[7] + v2[6]);
  }

  return result;
}

_BYTE *GLDContextRec::bindVertexArray(GLDContextRec *this, GLDVertexArrayRec *a2)
{
  if (a2)
  {
    v18 = *(a2 + 6);
    v3 = *(v18 + 768);
    v4 = *(this + 667);
    v5 = 0;
    if (v3)
    {
      v6 = this + 2672;
      v7 = *(a2 + 7);
      do
      {
        v8 = __clz(__rbit64(v3)) - 16;
        v9 = *(*(v7 + 8 * v8) + 40);
        if (v9)
        {
          v10 = *(v9 + 24);
        }

        else
        {
          v10 = 0;
        }

        if (v10[32] == 1)
        {
          if (*(this + 1151))
          {
            GLDContextRec::beginRenderPass(this);
          }

          if (*(this + 2))
          {
            GLDContextRec::endRenderPass(this);
          }
        }

        v11 = *&v6[8 * v5];
        if (v10 != v11)
        {
          if (v11)
          {
            (*(*v11 + 24))(v11);
          }

          v4 |= 1 << v5;
          *&v6[8 * v5] = v10;
          (*(*v10 + 16))(v10);
        }

        *(this + v5 + 700) = *(v18 + 24 * v8) & 0xFFFFFFFC;
        *(this + v8 + 336) = v5++;
        v12 = 0x10000 << v8 == v3;
        v3 ^= 0x10000 << v8;
      }

      while (!v12);
    }

    *(this + 667) = v4;
    if (*(a2 + 64) == 1)
    {
      v13 = *(*(*(*(a2 + 7) + 256) + 40) + 24);
      if (v13[32] == 1)
      {
        if (*(this + 1151))
        {
          GLDContextRec::beginRenderPass(this);
        }

        if (*(this + 2))
        {
          GLDContextRec::endRenderPass(this);
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v5 = 0;
  }

  result = *(this + 358);
  if (v13 != result)
  {
    if (result)
    {
      result = (*(*result + 24))(result);
    }

    *(this + 358) = v13;
    if (v13)
    {
      result = (*(*v13 + 16))(v13);
    }
  }

  *(this + 666) = v5;
  if (v5 <= 0xF)
  {
    v15 = (this + 8 * v5 + 2672);
    v16 = v5 + 1;
    do
    {
      result = *v15;
      if (*v15)
      {
        result = (*(*result + 24))(result);
        *v15 = 0;
      }

      ++v15;
      v12 = v16++ == 16;
    }

    while (!v12);
  }

  *(this + 618) |= 0x800u;
  return result;
}

uint64_t GLDContextRec::loadCurrentVertexArray(uint64_t this, unsigned int *a2)
{
  v2 = this;
  v3 = *(this + 112);
  v4 = *(v3 + 368);
  if ((a2[3] & 1) != 0 && (this = *(v3 + 976)) != 0)
  {
    this = GLDBufferRec::load(this);
    if (this)
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      goto LABEL_30;
    }
  }

  else if (!v4)
  {
    goto LABEL_30;
  }

  v7 = *(v4 + 48);
  v6 = *(v4 + 56);
  v8 = *(v6 + 272);
  v9 = *(v2 + 368);
  v10 = *(v4 + 12);
  if (v8)
  {
    v11 = *(v2 + 88);
    v12 = *(v11 + 12) + 1;
    *(v11 + 12) = v12;
    *(v4 + 12) = v12;
    this = GLDVertexArrayRec::updateSharedState(v4, v8);
  }

  *(v2 + 368) = *(v4 + 12);
  if (v9 != v10 || v8 != 0)
  {
    *(v2 + 2472) |= 0x809u;
  }

  v14 = *(v7 + 768);
  if (v14)
  {
    if ((v14 & ~*(v7 + 776)) == 0)
    {
      v15 = *(v6 + 264);
      if (v15 != 128)
      {
        v16 = *(v4 + 16);
        if (*(v2 + 372) == v16)
        {
          v17 = *(v6 + 264);
        }

        else
        {
          v17 = -1;
        }

        if (!v15)
        {
          goto LABEL_28;
        }

        v18 = (v6 + 264);
        v19 = *(v2 + 88);
        v20 = *(v19 + 16) + 1;
        *(v19 + 16) = v20;
        v21 = *(v4 + 24);
        *(v4 + 16) = v20;
        v22 = v21 | v15;
        v23 = *(v4 + 32) | v8;
        if (((v21 | v15) & 0x10) == 0 || (this = GLDVertexArrayRec::updateBuffers(v4, v22), this))
        {
          this = GLDVertexArrayRec::updateVertexArrayBuffers(v4, v22, v23);
          if (this)
          {
            v17 |= v21;
            *(v4 + 24) = 0;
            *(v4 + 32) = 0;
            *v18 = 0;
            v18[1] = 0;
            v16 = *(v4 + 16);
LABEL_28:
            *(v2 + 372) = v16;
            goto LABEL_33;
          }
        }

        *(v4 + 24) = v22;
        *(v4 + 32) = v23;
        *v18 = xmmword_29D37AB60;
      }
    }
  }

LABEL_30:
  v4 = 0;
  *(v2 + 372) = 0;
  if (*(v2 + 392))
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

LABEL_33:
  if (v17)
  {
    this = GLDContextRec::bindVertexArray(v2, v4);
  }

  *(v2 + 392) = v4;
  return this;
}

GLDContextRec *gldUnbindVertexArray(GLDContextRec *result, uint64_t a2)
{
  if (*(result + 49) == a2)
  {
    v2 = result;
    result = GLDContextRec::bindVertexArray(result, 0);
    *(v2 + 49) = 0;
    *(v2 + 93) = 0;
  }

  return result;
}

uint64_t GLDContextRec::buildVertexArrayDescriptor(uint64_t this, GLDPipelineProgramRec *a2, GLDVertexArrayRec *a3)
{
  v36 = *MEMORY[0x29EDCA608];
  v3 = *(*(a2 + 3) + 56);
  v4 = *v3;
  *(this + 1920) = 0;
  *(this + 1904) = 0u;
  *(this + 1888) = 0u;
  *(this + 1872) = 0u;
  *(this + 1856) = 0u;
  v28 = this;
  if (v4)
  {
    v32 = this + 1856;
    v5 = v3 + 2;
    v6 = v3 + 3;
    v7 = v35;
    v8 = v4;
    do
    {
      v9 = (*(v6 - 1) >> 8) & 0x1F;
      if (v9 == 17)
      {
        v10 = 45;
      }

      else if (v9 == 18)
      {
        v10 = 47;
      }

      else
      {
        if (v9 != 28)
        {
          MTLReleaseAssertionFailure();
        }

        v10 = *v6 & 0x3F;
      }

      *v7++ = v10;
      v6 += 8;
      --v8;
    }

    while (v8);
    v11 = 0;
    v12 = 0;
    v30 = this + 320;
    v31 = 0;
    v29 = this + 280;
    v13 = v35;
    while (1)
    {
      v15 = *v13++;
      v14 = v15;
      if ((v15 | 2) != 0x2F)
      {
        v16 = *(a3 + 6);
        if (((*(v16 + 768) >> v14) & 0x10000) != 0)
        {
          v17 = v16 + 24 * v14;
          v18 = glrConvertVertexElementType(*(v17 + 20), *(v17 + 22));
          v19 = *(v17 + 8);
          if (v19 <= 1)
          {
            v20 = 1;
          }

          else
          {
            v20 = *(v17 + 8);
          }

          this = *(v17 + 16);
          if (!this)
          {
            *v34 = 0;
            this = glrVertexFormatComponentAttribSizeTypeAlignment(v18, &v34[1], v34);
          }

          v21 = 4 - (this & 3);
          if ((this & 3) == 0)
          {
            v21 = 0;
          }

          v22 = v21 + this;
          if (v19)
          {
            v23 = 2;
          }

          else
          {
            v23 = 1;
          }

          *(v32 + 4 * v11) = (4 * (v18 & 0x3F)) | v23 | ((v20 & 0x3FF) << 20) | (*v17 << 30) | ((v22 & 0xFFF) << 8);
          *(v30 + v12++) = v14;
        }

        else
        {
          v24 = (*v5 >> 3) & 7;
          if (v24)
          {
            if (v24 == 2)
            {
              v25 = 140;
            }

            else
            {
              if (v24 != 3)
              {
                v27 = MTLReleaseAssertionFailure();
                return GLDContextRec::buildPrimitiveBufferVertexArrayDescriptor(v27);
              }

              v25 = 156;
            }
          }

          else
          {
            v25 = 124;
          }

          *(v32 + 4 * v11) = v25 & 0xC00FFFFF | ((v31 & 0x3FF) << 20) | *(v32 + 4 * v11) & 0xC0000000 | 3;
          *(v29 + HIDWORD(v31)) = v14;
          LODWORD(v31) = v31 + 16;
          ++HIDWORD(v31);
        }

        ++v11;
      }

      v5 += 2;
      if (!--v4)
      {
        goto LABEL_35;
      }
    }
  }

  v12 = 0;
  HIDWORD(v31) = 0;
LABEL_35:
  v28[79] = v12;
  v28[618] |= 0x800u;
  v28[621] |= 1u;
  v28[667] = -1;
  v28[69] = HIDWORD(v31);
  v26 = *MEMORY[0x29EDCA608];
  return this;
}

void GLDContextRec::buildPrimitiveBufferVertexArrayDescriptor(GLDContextRec *this)
{
  v86 = *MEMORY[0x29EDCA608];
  v74 = *(*(this + 14) + 368);
  v1 = *(*(*(this + 183) + 24) + 56);
  v2 = *v1;
  *(this + 124) = 0u;
  *(this + 125) = 0u;
  *(this + 126) = 0u;
  *(this + 127) = 0u;
  *(this + 256) = 0;
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = v1 + 3;
    do
    {
      v8 = *(v7 - 1);
      v9 = (v8 >> 8) & 0x1F;
      if (v9 == 17)
      {
        v5 = 1;
      }

      else if (v9 == 18)
      {
        v6 = 1;
      }

      else
      {
        if (v9 != 28)
        {
          MTLReleaseAssertionFailure();
        }

        v10 = *v7;
        v85[v3] = v10 & 0x3F;
        v84[v3] = v8 >> 6;
        v4 |= 1 << ((v10 & 0x3Fu) + 16);
        ++v3;
      }

      v7 += 2;
      --v2;
    }

    while (v2);
    if (v5)
    {
      v85[v3] = 45;
      v84[v3] = 0;
      v4 |= 0x2000000000000000uLL;
      ++v3;
    }

    if (v6)
    {
      v85[v3] = 47;
      v84[v3] = 0;
      v4 |= 0x8000000000000000;
      ++v3;
    }
  }

  else
  {
    v85[0] = 45;
    v84[0] = 0;
    v3 = 1;
    v4 = 0x2000000000000000;
  }

  if ((*(this + 94) & 1) == 0)
  {
    v4 &= ~0x400000uLL;
  }

  v73 = v4;
  v76 = 0;
  if (!v3)
  {
    v59 = 0;
    goto LABEL_67;
  }

  v11 = 0;
  v71 = 0;
  v12 = 0;
  v13 = (this + 1984);
  v14 = v1 + 2;
  v75 = this;
  v15 = v3;
  v16 = v84;
  v17 = v85;
  v18 = v80;
  v19 = v77;
  v20 = v79;
  v68 = v3;
  v69 = this + 300;
  do
  {
    v22 = *v17++;
    v21 = v22;
    if (v22 == 47)
    {
      *v18 = 44;
      *v19 = 0;
      v78[v12] = v11;
      *v20 = v11;
      v83[v12] = 47;
      v82[v12] = *v16;
      v23 = &v81[v12];
      v24 = MTLVertexFormatInt1010102Normalized|MTLVertexFormatChar2;
      goto LABEL_23;
    }

    if (v21 == 45)
    {
      *v18 = 43;
      *v19 = 0;
      v78[v12] = v11;
      *v20 = v11;
      v83[v12] = 45;
      v82[v12] = *v16;
      v23 = &v81[v12];
      v24 = MTLVertexFormatUChar4Normalized_BGRA|MTLVertexFormatUChar2;
LABEL_23:
      v25 = v11;
      v26 = v12;
      v27 = v17;
      v28 = glrVertexFormatComponentAttribSizeTypeAlignment(v24, v23, &v76);
      v17 = v27;
      v11 = v25 + v28;
LABEL_28:
      v12 = v26 + 1;
      goto LABEL_29;
    }

    if (*(*(v75 + 13) + 4))
    {
      *v18 = 31;
      *v19 = 0;
      v78[v12] = v11;
      *v20 = v11;
      v83[v12] = v21;
      v82[v12] = *v16;
      v29 = &v81[v12];
      v30 = v11;
      v26 = v12;
      v31 = v17;
      v32 = glrVertexFormatComponentAttribSizeTypeAlignment(MTLVertexFormatFloat4, v29, &v76);
      v17 = v31;
      v33 = 4 - (v32 & 3);
      if ((v32 & 3) == 0)
      {
        v33 = 0;
      }

      v11 = v30 + v32 + v33;
      goto LABEL_28;
    }

    v34 = *(v74 + 48);
    if (((0x10000 << v21) & v73 & *(v34 + 768)) != 0)
    {
      v72 = v17;
      v35 = v34 + 24 * v21;
      v36 = *(v35 + 22);
      if (v36 == 5)
      {
        v37 = *v16;
      }

      else
      {
        v70 = v11;
        v41 = *(v35 + 20);
        if (v41 == 5132)
        {
          v41 = 5126;
        }

        if (v21 == 7)
        {
          v42 = 5125;
        }

        else
        {
          v42 = v41;
        }

        v43 = (v36 - 1);
        if (v43 >= *v16)
        {
          v37 = *v16;
        }

        else
        {
          v37 = v43;
        }

        *v16 = v37;
        v67 = v42;
        v38 = glrConvertVertexElementType(v42, (v37 + 1));
        if (v38)
        {
          v11 = v70;
          goto LABEL_57;
        }

        v37 = 3;
        *v16 = 3;
        v11 = v70;
        if ((v67 & 0x4000) != 0)
        {
          if (((v67 & 0x9FFF) - 5120) >= 6u)
          {
            goto LABEL_73;
          }

          v38 = qword_29D37AB70[((v67 & 0x9FFF) - 5120)];
          goto LABEL_57;
        }
      }

      v38 = MTLVertexFormatFloat4;
LABEL_57:
      v78[v12] = v11;
      *v18 = v38;
      *v19 = 0;
      *v20 = v11;
      v83[v12] = v21;
      v82[v12] = v37;
      v44 = v11;
      v45 = glrVertexFormatComponentAttribSizeTypeAlignment(v38, &v81[v12], &v76);
      v46 = 4 - (v45 & 3);
      if ((v45 & 3) == 0)
      {
        v46 = 0;
      }

      v11 = v44 + v45 + v46;
      ++v12;
      v17 = v72;
      goto LABEL_29;
    }

    v39 = (*v14 >> 3) & 7;
    if (v39)
    {
      if (v39 == 2)
      {
        v40 = 35;
      }

      else
      {
        if (v39 != 3)
        {
          MTLReleaseAssertionFailure();
LABEL_73:
          v66 = MTLReleaseAssertionFailure();
          GLDTransformFeedbackMachine::GLDTransformFeedbackMachine(v66);
          return;
        }

        v40 = 39;
      }
    }

    else
    {
      v40 = 31;
    }

    if (v21 == 7)
    {
      v40 = 39;
    }

    *v18 = v40;
    *v20 = v71;
    *v19 = 1;
    v69[HIDWORD(v71)] = v21;
    LODWORD(v71) = v71 + 16;
    ++HIDWORD(v71);
LABEL_29:
    ++v16;
    ++v18;
    ++v19;
    ++v20;
    v14 += 2;
    --v15;
  }

  while (v15);
  v47 = v77;
  v48 = v80;
  v49 = v79;
  v50 = v68;
  do
  {
    v52 = *v47++;
    v51 = v52;
    v54 = *v48;
    v48 += 2;
    v53 = v54;
    v56 = *v49;
    v49 += 2;
    v55 = v56;
    v57 = 4 * (v53 & 0x3F);
    if (v51)
    {
      v58 = 0;
    }

    else
    {
      v58 = (v11 & 0xFFF) << 8;
    }

    *v13 = *v13 & 0xC0000000 | v57 & 0xC00FFFFF | v58 & 0xC00FFFFF | ((v55 & 0x3FF) << 20) | 3;
    ++v13;
    --v50;
  }

  while (v50);
  this = v75;
  v59 = HIDWORD(v71);
  if (!v12)
  {
LABEL_67:
    v83[0] = 16;
    v82[0] = 0;
    v81[0] = 0;
    v78[0] = 0;
    v11 = 4;
    v12 = 1;
  }

  v60 = 0;
  v61 = 0;
  v62 = (this + 144);
  do
  {
    v63 = v82[v60];
    v64 = ((v81[v60] & 7) << 8) | (v78[v60] >> 2) | ((v83[v60] & 0x3F) << 14) | ((v63 & 7) << 11);
    v62[17] = ((v83[v60] & 0x3F) << 14) | ((v63 & 7) << 11) | v61;
    *v62++ = v64;
    v61 += v63 + 1;
    ++v60;
  }

  while (v12 != v60);
  *(this + 257) = v11;
  *(this + 74) = v59;
  *(this + 208) = v12;
  *(this + 210) = v61;
  *(this + 140) = v12;
  *(this + 142) = v11 >> 2;
  v65 = *MEMORY[0x29EDCA608];
}

uint64_t GLDTransformFeedbackMachine::incrementPrimitiveCount(uint64_t this, GLDContextRec *a2, unsigned int a3, int a4, int a5)
{
  if (a4)
  {
    if (a4 == 4)
    {
      a3 /= 3u;
    }

    else
    {
      if (a4 != 1)
      {
        v7 = MTLReleaseAssertionFailure();
        return GLDContextRec::isTransformFeedbackActive(v7);
      }

      a3 >>= 1;
    }
  }

  v5 = *(this + 16);
  *(*(this + 8) + 24) = a3 * a5 + *(*(this + 8) + 24);
  if (v5)
  {
    v6 = GLDQueryRec::getCounter(v5) + a3 * a5;

    return GLDQueryRec::setCounter(v5, v6);
  }

  return this;
}

uint64_t GLDContextRec::isTransformFeedbackActive(GLDContextRec *this)
{
  v1 = 0;
  while (!*(*(this + 14) + 376 + v1))
  {
    v1 += 8;
    if (v1 == 32)
    {
      return 0;
    }
  }

  if (*(*(this + 13) + 15713) || *(*(this + 13) + 15714) == -1)
  {
    return 0;
  }

  *(this + 53) |= 0x2000uLL;
  return 1;
}

uint64_t GLDContextRec::setTranformFeedbackBuffers(uint64_t this)
{
  v1 = this;
  v2 = (this + 3064);
  v3 = -4;
  do
  {
    v4 = *v2;
    if (*v2)
    {
      v5 = v2[28];
      v6 = *(v4 + 40);
      GLRResourceList::addResource(*(v1 + 64), v4);
      this = (*(v1 + 3456))(*(v1 + 16), *(v1 + 3448), v6, v5, v3 + 36);
    }

    ++v2;
  }

  while (!__CFADD__(v3++, 1));
  return this;
}

uint64_t GLDContextRec::updateTransfromFeedbackState(GLDContextRec *this)
{
  v3 = *(this + 13);
  v2 = *(this + 14);
  v4 = **(*(v2 + 408) + 24);
  *(this + 420) = v4;
  if (*(v3 + 15714) == -1)
  {
    if (*(v3 + 15713))
    {
      *(v4 + 32) = 1;
    }
  }

  else
  {
    if (!*(v4 + 32))
    {
      *(v4 + 24) = 0;
    }

    *(v4 + 32) = 0;
  }

  v5 = 0;
  v6 = v2 + 376;
  v7 = (this + 3064);
  v8 = v3 + 15720;
  do
  {
    v9 = *(v8 + v5);
    if (*(*(this + 13) + 15713))
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v6 + v5);
    }

    result = *v7;
    if (*v7)
    {
      result = (*(*result + 24))(result);
      *v7 = 0;
      v7[28] = 0;
    }

    if (!v10)
    {
      v9 = 0;
LABEL_21:
      *v7 = 0;
      goto LABEL_22;
    }

    v12 = **(v10 + 32);
    if (v12)
    {
      result = GLDBufferRec::update(v10, v12);
      if (result)
      {
        **(v10 + 32) = 0;
      }
    }

    v13 = *(v10 + 40);
    if (!v13)
    {
      goto LABEL_21;
    }

    result = *(v13 + 24);
    *v7 = result;
    if (result)
    {
      result = (*(*result + 16))(result);
    }

LABEL_22:
    v7[28] = v9;
    ++v7;
    v5 += 8;
  }

  while (v5 != 32);
  *(this + 618) |= 0x10000u;
  return result;
}

void GLDDeviceRec::init()
{
  dispatch_once(&GLDDeviceRec::init(void)::onceToken, &__block_literal_global);
}

{
  if (__cxa_guard_acquire(&qword_2A1A12DD8))
  {
    _MergedGlobals = getenv("GLMTL_SET_MAX_DATA_BUFFER_SIZE");
    __cxa_guard_release(&qword_2A1A12DD8);
  }
}

uint64_t GLDDeviceRec::init()
{
  v0 = MTLReleaseAssertionFailure();
  return GLDDeviceRec::init(v0);
}

{
  v0 = MTLReleaseAssertionFailure();
  return GLDDeviceRec::getRenderPipelineStateFromKey(v0, v1);
}

void GLDDeviceRec::getRenderPipelineStateFromKey(uint64_t a1, uint8_t *buf)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_29D360000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "GLDDevice failed to build pipeline state: %@", buf, 0xCu);
}

void GLDTextureRec::update(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(*(a1 + 48) + 192);
  v3[0] = 67109120;
  v3[1] = v1;
  _os_log_fault_impl(&dword_29D360000, MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT, "Invalid Pixel Format: 0x%08x\n", v3, 8u);
  v2 = *MEMORY[0x29EDCA608];
}

{
  v5 = *MEMORY[0x29EDCA608];
  if ((**(a1 + 48) & 0x800) != 0)
  {
    v1 = "YES";
  }

  else
  {
    v1 = "NO";
  }

  v3 = 136315138;
  v4 = v1;
  _os_log_fault_impl(&dword_29D360000, MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT, "IOSurface           : %s\n", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

void GLDTextureRec::update(char a1, char a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = "TEXTURE_GEOM_DIRTY_BIT";
  if ((a1 & 1) == 0)
  {
    v2 = "";
  }

  v3 = "TEXTURE_FORMAT_DIRTY_BIT";
  if (a2)
  {
    v3 = "";
  }

  v4 = "TEXTURE_DATA_DIRTY_BIT";
  if ((a1 & 4) == 0)
  {
    v4 = "";
  }

  v7 = 136315906;
  v8 = v2;
  v5 = "TEXTURE_BUFFER_DIRTY_BIT";
  v9 = 2080;
  v10 = v3;
  v11 = 2080;
  v12 = v4;
  if ((a1 & 8) == 0)
  {
    v5 = "";
  }

  v13 = 2080;
  v14 = v5;
  _os_log_fault_impl(&dword_29D360000, MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT, "Dirty Bits          : %s %s %s %s\n", &v7, 0x2Au);
  v6 = *MEMORY[0x29EDCA608];
}

void gldGenerateTexMipmaps_cold_1()
{
  {
    GLDContextRec::generateTexMipmaps(GLDTextureRec *,int,unsigned int)::forceGpuMipmapGenEV = getenv("GLMTL_FORCE_GPU_MIPMAP_GEN");
  }
}

void operator delete[]()
{
    ;
  }
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

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}