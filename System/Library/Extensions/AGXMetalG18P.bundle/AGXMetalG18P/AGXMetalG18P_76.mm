uint64_t AGX::BVHDescriptor::isFastIntersection(AGX::BVHDescriptor *this)
{
  {
    v5 = this;
    v4 = v3;
    this = v5;
    if (v4)
    {
      AGX::BVHDescriptor::isFastIntersection(void)const::forceFastintersection = 0;
      this = v5;
    }
  }

  if (v1[2840])
  {
    return 1;
  }

  else
  {
    return (*(this + 28) >> 4) & 1;
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(uint64_t *a1, uint64_t a2, unint64_t a3, int a4)
{
  if (a3 > 0xFFF)
  {
    v10 = [*a2 newBufferWithLength:a3 options:0];
    if (a4)
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }

    v13 = MEMORY[0x29EDC5638];
    v21 = v10;
    if (v10)
    {
      v14 = *(a2 + 16);
      if (*(v10 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
      {
        v15 = v10[39];
        IOGPUResourceListAddResource();
        v16 = *(v15 + 64);
        v17 = *(v15 + 72);
        while (v16 != v17)
        {
          if (*v16)
          {
            AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v16);
            IOGPUResourceListAddResource();
          }

          v16 += 2;
        }
      }

      AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v14, v21, v11, v12, v12);
      v10 = v21;
    }

    v18 = [v10 contents];
    v19 = [v22 gpuAddress];
    v20 = &v22[*v13];
    *a1 = v19;
    a1[1] = v18;
    a1[2] = a3;
    a1[3] = v20;
    MTLResourceListAddResource();
    IOGPUResourceListAddResource();
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v23, a2, a3, a4);
    v7 = v23;
    v8 = v25;
    *a1 = v24;
    a1[1] = v7;
    a1[2] = a3;
    a1[3] = v8;
  }
}

uint64_t AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getBatchForCommand(uint64_t a1, int a2, void *a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10)
{
  v15 = *(a1 + 272);
  v14 = *(a1 + 280);
  {
    v60 = a7;
    v61 = a5;
    v62 = a2;
    a2 = v62;
    a5 = v61;
    a7 = v60;
    if (v63)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getBatchForCommand(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BVHCommandType,AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,MTL4BufferRange,unsigned long,unsigned long,NSArray<objc_object  {objcproto24MTLAccelerationStructure}*> *,BOOL)::skipDependencyTracking = 0;
      a2 = v62;
      a5 = v61;
      a7 = v60;
    }
  }

  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getBatchForCommand(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BVHCommandType,AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,MTL4BufferRange,unsigned long,unsigned long,NSArray<objc_object  {objcproto24MTLAccelerationStructure}*> *,BOOL)::skipDependencyTracking != 1)
  {
    {
      v64 = a7;
      v65 = a5;
      v66 = a2;
      a2 = v66;
      a5 = v65;
      a7 = v64;
      if (v67)
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getBatchForCommand(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BVHCommandType,AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,MTL4BufferRange,unsigned long,unsigned long,NSArray<objc_object  {objcproto24MTLAccelerationStructure}*> *,BOOL)::trackInstanceHazards = 0;
        a2 = v66;
        a5 = v65;
        a7 = v64;
      }
    }

    v19 = a9;
    v71 = a5;
    v72 = a7;
    v73 = a2;
    if ((a10 & 1) != 0 || a9 && AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getBatchForCommand(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BVHCommandType,AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,MTL4BufferRange,unsigned long,unsigned long,NSArray<objc_object  {objcproto24MTLAccelerationStructure}*> *,BOOL)::trackInstanceHazards != 1)
    {
      v24 = 0;
      goto LABEL_16;
    }

    v20 = 0x8F9C18F9C18F9C19 * ((v14 - v15) >> 3);
    v70 = a4;
    if (a2 > 2)
    {
      if (v20 >= 1)
      {
        v68 = a8;
        v40 = v20 & 0x7FFFFFFF;
        v41 = v40 - 1;
        v42 = (*(a1 + 272) + 328 * (v40 - 1));
        if (v42[40].i8[0])
        {
          v24 = 1;
LABEL_76:
          a8 = v68;
LABEL_16:
          v95 = 0;
          v90 = 0u;
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
          v91 = 1065353216;
          v92 = 0u;
          v93 = 0u;
          v94 = 1065353216;
          v25 = *(a1 + 280);
          if (v25 >= *(a1 + 288))
          {
            v26 = std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch>>::__emplace_back_slow_path<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch>((a1 + 272), &v74);
          }

          else
          {
            v26 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::DeferredBatch(v25, &v74) + 328;
          }

          *(a1 + 280) = v26;
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::~DeferredBatch(&v74);
          v27 = *(a1 + 272);
          v28 = (-1047552999 * ((*(a1 + 280) - v27) >> 3) - 1);
          v29 = (v27 + 328 * v28);
          v29[40].i8[0] = v24 ^ 1;
          if ((v24 & 1) == 0)
          {
            return *(a1 + 272) + 328 * v28;
          }

LABEL_20:
          if (v73 > 2)
          {
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::insertRead(v29, [objc_msgSend(a3 "buffer")], objc_msgSend(a3, "bufferOffset"), objc_msgSend(a3, "size"));
            v34 = [objc_msgSend(a4 "buffer")];
            v35 = [a4 bufferOffset];
            v36 = [a4 size];
            v37 = v29;
            v38 = v34;
            v39 = v35;
          }

          else
          {
            if (!v73)
            {
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::insertWrite(v29, [objc_msgSend(a4 "buffer")], objc_msgSend(a4, "bufferOffset"), objc_msgSend(a4, "size"));
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::insertWrite(v29, v71, v72, a8);
              if (!v19)
              {
                return *(a1 + 272) + 328 * v28;
              }

LABEL_41:
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::insertReads(v29, v19);
              return *(a1 + 272) + 328 * v28;
            }

            if (v73 == 1)
            {
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::insertRead(v29, [objc_msgSend(a3 "buffer")], objc_msgSend(a3, "bufferOffset"), objc_msgSend(a3, "size"));
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::insertWrite(v29, [objc_msgSend(a4 "buffer")], objc_msgSend(a4, "bufferOffset"), objc_msgSend(a4, "size"));
              if (!v19)
              {
                return *(a1 + 272) + 328 * v28;
              }

              goto LABEL_41;
            }

            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::insertRead(v29, [objc_msgSend(a3 "buffer")], objc_msgSend(a3, "bufferOffset"), objc_msgSend(a3, "size"));
            v37 = v29;
            v38 = v71;
            v39 = v72;
            v36 = a8;
          }

          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::insertWrite(v37, v38, v39, v36);
          return *(a1 + 272) + 328 * v28;
        }

        v69 = a9;
        v53 = 328 * v40 - 336;
        v23 = -1;
        while ((AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingWrite(v42, [objc_msgSend(a3 buffer], objc_msgSend(a3, "bufferOffset"), objc_msgSend(a3, "size")) & 1) == 0)
        {
          v54 = [objc_msgSend(v70 "buffer")];
          v55 = [v70 bufferOffset];
          v56 = [v70 size];
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingRead(v42, v54, v55, v56) & 1) != 0 || (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingWrite(v42, v54, v55, v56))
          {
            break;
          }

          if (v40 < 2)
          {
LABEL_77:
            v23 = 0;
            goto LABEL_78;
          }

          --v40;
          --v41;
          v57 = *(a1 + 272);
          v42 = (v57 + 328 * v41);
          LOBYTE(v57) = *(v57 + v53);
          v53 -= 328;
          v23 = v40;
          if (v57)
          {
            v23 = v40;
            break;
          }
        }

LABEL_74:
        if (v23 != -1)
        {
LABEL_78:
          LODWORD(v28) = v23;
          v29 = (*(a1 + 272) + 328 * v23);
          v29[40].i8[0] = 0;
          v19 = v69;
          a4 = v70;
          a8 = v68;
          goto LABEL_20;
        }

        v24 = 1;
        v19 = v69;
        a4 = v70;
        goto LABEL_76;
      }
    }

    else if (a2)
    {
      if (a2 == 1)
      {
        if (v20 >= 1)
        {
          v68 = a8;
          v69 = a9;
          v21 = v20 & 0x7FFFFFFF;
          v22 = 328 * ((v20 & 0x7FFFFFFF) - 1);
          v23 = -1;
          while (1)
          {
            v30 = (*(a1 + 272) + v22);
            if (v30[40].i8[0])
            {
              goto LABEL_74;
            }

            if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingWrite(v30, [objc_msgSend(a3 "buffer")], objc_msgSend(a3, "bufferOffset"), objc_msgSend(a3, "size")))
            {
              goto LABEL_74;
            }

            v31 = [objc_msgSend(v70 "buffer")];
            v32 = [v70 bufferOffset];
            v33 = [v70 size];
            if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingRead(v30, v31, v32, v33) & 1) != 0 || (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingWrite(v30, v31, v32, v33) & 1) != 0 || a9 && (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getBatchForCommand(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BVHCommandType,AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,MTL4BufferRange,unsigned long,unsigned long,NSArray<objc_object  {objcproto24MTLAccelerationStructure}*> *,BOOL)::trackInstanceHazards & 1) != 0 && (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingWrite(v30, a9))
            {
              goto LABEL_74;
            }

            --v21;
            v22 -= 328;
            v23 = v21;
            if (v21 <= 0)
            {
              goto LABEL_77;
            }
          }
        }
      }

      else if (v20 >= 1)
      {
        v50 = v20 & 0x7FFFFFFF;
        v51 = v50 - 1;
        v52 = (*(a1 + 272) + 328 * (v50 - 1));
        if ((v52[40].i8[0] & 1) == 0)
        {
          v68 = a8;
          v69 = a9;
          v58 = 328 * v50 - 336;
          v23 = -1;
          while ((AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingWrite(v52, [objc_msgSend(a3 buffer], objc_msgSend(a3, "bufferOffset"), objc_msgSend(a3, "size")) & 1) == 0 && (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingRead(v52, v71, v72, v68) & 1) == 0 && (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingWrite(v52, v71, v72, v68) & 1) == 0)
          {
            if (v50 < 2)
            {
              goto LABEL_77;
            }

            --v50;
            --v51;
            v59 = *(a1 + 272);
            v52 = (v59 + 328 * v51);
            LOBYTE(v59) = *(v59 + v58);
            v58 -= 328;
            v23 = v50;
            if (v59)
            {
              v23 = v50;
              goto LABEL_74;
            }
          }

          goto LABEL_74;
        }
      }
    }

    else if (v20 >= 1)
    {
      v68 = a8;
      v69 = a9;
      v44 = v20 & 0x7FFFFFFF;
      v45 = 328 * ((v20 & 0x7FFFFFFF) - 1);
      v23 = -1;
      while (1)
      {
        v46 = (*(a1 + 272) + v45);
        if (v46[40].i8[0])
        {
          goto LABEL_74;
        }

        v47 = [objc_msgSend(v70 "buffer")];
        v48 = [v70 bufferOffset];
        v49 = [v70 size];
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingRead(v46, v47, v48, v49) & 1) != 0 || (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingWrite(v46, v47, v48, v49) & 1) != 0 || (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingWrite(v46, v71, v72, a8) & 1) != 0 || a9 && (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getBatchForCommand(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BVHCommandType,AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,MTL4BufferRange,unsigned long,unsigned long,NSArray<objc_object  {objcproto24MTLAccelerationStructure}*> *,BOOL)::trackInstanceHazards & 1) != 0 && (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingWrite(v46, a9))
        {
          goto LABEL_74;
        }

        --v44;
        v45 -= 328;
        v23 = v44;
        if (v44 <= 0)
        {
          goto LABEL_77;
        }
      }
    }

    v24 = 1;
    goto LABEL_16;
  }

  v17 = *(a1 + 272);
  v16 = *(a1 + 280);
  if (v17 == v16)
  {
    v95 = 0;
    v90 = 0u;
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
    v91 = 1065353216;
    v92 = 0u;
    v93 = 0u;
    v94 = 1065353216;
    if (v17 >= *(a1 + 288))
    {
      v18 = std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch>>::__emplace_back_slow_path<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch>((a1 + 272), &v74);
    }

    else
    {
      v18 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::DeferredBatch(v16, &v74) + 328;
    }

    *(a1 + 280) = v18;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::~DeferredBatch(&v74);
    return *(a1 + 272);
  }

  return v17;
}

void sub_29CE7357C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::~DeferredBatch(va);
  _Unwind_Resume(a1);
}

uint64_t *AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyAndCompact(AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,BOOL)::{lambda(char const*)#1}::operator()(uint64_t *result)
{
  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyAndCompact(AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,BOOL)::verify == 1)
  {
    v1 = *result;
    v2 = result;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v15, *result, 0x480188uLL, 1);
    v3 = v15;
    v4 = v2[1];
    v5 = (*v4)++;
    v6 = *(v1 + 16);
    *(*(v6 + 22488) + 17408) = 0;
    v7 = *(v6 + 168);
    v8 = v7 + 31;
    if ((v7 + 31) > *(v6 + 160))
    {
      v13 = AGX::DataBufferAllocator<44ul>::growNoInline(v6 + 24, 3, 0);
      v7 = *(v6 + 168);
      if (!v13)
      {
        goto LABEL_4;
      }

      v8 = v7 + 31;
      if ((v7 + 31) > *(v6 + 160))
      {
        abort();
      }
    }

    *(v6 + 176) = v8;
LABEL_4:
    v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
    v10 = v9 + *(v6 + 184);
    *(v6 + 168) = v9 + 16;
    *(v6 + 26160) = 0;
    *(v6 + 27560) |= 0x10uLL;
    *(v6 + 27592) |= 1u;
    v11 = *(v6 + 22488);
    *(v11 + 32) = v10;
    *(v6 + 22536) = *(*(v6 + 48) + 224) + *MEMORY[0x29EDC5638];
    *(v11 + 17532) = 16;
    *(v11 + 17672) = 16;
    *(v11 + 17676) = v10 >> 8;
    *v9 = v3;
    *(v9 + 8) = v5;
    *(v9 + 12) = 0;
    v12 = v16;
    bzero(v16, 0x480188uLL);
    v12[1] = -1;
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = ___ZZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE20encodeCopyAndCompactEP44AGXG18PFamilyRayTracingAccelerationStructureS8_bENKUlPKcE_clESA__block_invoke;
    v14[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
    v14[4] = v12;
    return [**(v1 + 16) addCompletedHandler:v14];
  }

  return result;
}

uint64_t AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::DeferredBatch(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = *(a2 + 24);
  *(result + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = *(a2 + 48);
  *(result + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 72) = *(a2 + 72);
  *(result + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 96) = *(a2 + 96);
  *(result + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 120) = *(a2 + 120);
  *(result + 136) = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 144) = *(a2 + 144);
  *(result + 160) = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(result + 168) = 0;
  *(result + 176) = 0;
  *(result + 184) = 0;
  *(result + 168) = *(a2 + 168);
  *(result + 184) = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(result + 192) = 0;
  *(result + 200) = 0;
  *(result + 208) = 0;
  *(result + 192) = *(a2 + 192);
  *(result + 208) = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(result + 216) = 0;
  *(result + 224) = 0;
  *(result + 232) = 0;
  *(result + 216) = *(a2 + 216);
  v2 = *(a2 + 240);
  *(result + 232) = *(a2 + 232);
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  v3 = *(a2 + 248);
  v4 = *(a2 + 256);
  *(result + 240) = v2;
  *(result + 248) = v3;
  *(a2 + 248) = 0;
  v5 = *(a2 + 264);
  *(result + 256) = v4;
  *(result + 264) = v5;
  *(result + 272) = *(a2 + 272);
  if (v5)
  {
    v6 = *(v4 + 8);
    v7 = *(result + 248);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v6 %= v7;
      }
    }

    else
    {
      v6 &= v7 - 1;
    }

    *(v2 + 8 * v6) = result + 256;
    *(a2 + 256) = 0;
    *(a2 + 264) = 0;
  }

  v8 = *(a2 + 280);
  v9 = *(a2 + 288);
  *(a2 + 280) = 0;
  *(result + 280) = v8;
  *(result + 288) = v9;
  *(a2 + 288) = 0;
  v11 = *(a2 + 296);
  v10 = *(a2 + 304);
  *(result + 296) = v11;
  *(result + 304) = v10;
  *(result + 312) = *(a2 + 312);
  if (v10)
  {
    v12 = *(v11 + 8);
    v13 = *(result + 288);
    if ((v13 & (v13 - 1)) != 0)
    {
      if (v12 >= v13)
      {
        v12 %= v13;
      }
    }

    else
    {
      v12 &= v13 - 1;
    }

    *(v8 + 8 * v12) = result + 296;
    *(a2 + 296) = 0;
    *(a2 + 304) = 0;
  }

  *(result + 320) = *(a2 + 320);
  return result;
}

uint64_t std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch>>::__emplace_back_slow_path<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch>(void ***a1, uint64_t a2)
{
  v2 = 0x8F9C18F9C18F9C19 * (a1[1] - *a1);
  v3 = v2 + 1;
  if (v2 + 1 > 0xC7CE0C7CE0C7CELL)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x1F3831F3831F3832 * (a1[2] - *a1) > v3)
  {
    v3 = 0x1F3831F3831F3832 * (a1[2] - *a1);
  }

  if (0x8F9C18F9C18F9C19 * (a1[2] - *a1) >= 0x63E7063E7063E7)
  {
    v5 = 0xC7CE0C7CE0C7CELL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xC7CE0C7CE0C7CELL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v6 = 8 * (a1[1] - *a1);
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::DeferredBatch(v6, a2);
  v7 = 328 * v2 + 328;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      v13 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::DeferredBatch(v12, v11);
      v11 += 328;
      v12 = v13 + 328;
    }

    while (v11 != v9);
    do
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::~DeferredBatch(v8);
      v8 += 41;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingRead(int8x8_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[31];
  if (!*&v4)
  {
    return 0;
  }

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

  v7 = *(*&a1[30] + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  v8 = *v7;
  if (!v8)
  {
    return 0;
  }

  if (v5.u32[0] < 2uLL)
  {
    v9 = *&v4 - 1;
    while (1)
    {
      v10 = v8[1];
      if (v10 == a2)
      {
        if (v8[2] == a2)
        {
          goto LABEL_22;
        }
      }

      else if ((v10 & v9) != v6)
      {
        return 0;
      }

      v8 = *v8;
      if (!v8)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    v11 = v8[1];
    if (v11 == a2)
    {
      break;
    }

    if (v11 >= *&v4)
    {
      v11 %= *&v4;
    }

    if (v11 != v6)
    {
      return 0;
    }

LABEL_16:
    v8 = *v8;
    if (!v8)
    {
      return 0;
    }
  }

  if (v8[2] != a2)
  {
    goto LABEL_16;
  }

LABEL_22:
  v12 = v8[3];
  v13 = v8[4];
  if (v12 == v13)
  {
    return 0;
  }

  do
  {
    v14 = a3 + a2 < v12[1] && a3 + a2 + a4 >= *v12;
    result = v14;
    if (v14)
    {
      break;
    }

    v12 += 2;
  }

  while (v12 != v13);
  return result;
}

uint64_t AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingWrite(int8x8_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[36];
  if (!*&v4)
  {
    return 0;
  }

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

  v7 = *(*&a1[35] + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  v8 = *v7;
  if (!v8)
  {
    return 0;
  }

  if (v5.u32[0] < 2uLL)
  {
    v9 = *&v4 - 1;
    while (1)
    {
      v10 = v8[1];
      if (v10 == a2)
      {
        if (v8[2] == a2)
        {
          goto LABEL_22;
        }
      }

      else if ((v10 & v9) != v6)
      {
        return 0;
      }

      v8 = *v8;
      if (!v8)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    v11 = v8[1];
    if (v11 == a2)
    {
      break;
    }

    if (v11 >= *&v4)
    {
      v11 %= *&v4;
    }

    if (v11 != v6)
    {
      return 0;
    }

LABEL_16:
    v8 = *v8;
    if (!v8)
    {
      return 0;
    }
  }

  if (v8[2] != a2)
  {
    goto LABEL_16;
  }

LABEL_22:
  v12 = v8[3];
  v13 = v8[4];
  if (v12 == v13)
  {
    return 0;
  }

  do
  {
    v14 = a3 + a2 < v12[1] && a3 + a2 + a4 >= *v12;
    result = v14;
    if (v14)
    {
      break;
    }

    v12 += 2;
  }

  while (v12 != v13);
  return result;
}

uint64_t AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::containsOverlappingWrite(int8x8_t *a1, void *a2)
{
  v24 = *MEMORY[0x29EDCA608];
  memset(v22, 0, sizeof(v22));
  result = [a2 countByEnumeratingWithState:v22 objects:v23 count:16];
  if (!result)
  {
    return result;
  }

  v5 = result;
LABEL_4:
  v6 = 0;
  while (1)
  {
    v7 = *(*(&v22[0] + 1) + 8 * v6);
    v8 = [objc_msgSend(v7 "buffer")];
    v9 = [v7 bufferOffset];
    v10 = [v7 size];
    v11 = a1[36];
    if (v11)
    {
      v12 = vcnt_s8(v11);
      v12.i16[0] = vaddlv_u8(v12);
      if (v12.u32[0] > 1uLL)
      {
        v13 = v8;
        if (*&v11 <= v8)
        {
          v13 = v8 % *&v11;
        }
      }

      else
      {
        v13 = (*&v11 - 1) & v8;
      }

      v14 = *(*&a1[35] + 8 * v13);
      if (v14)
      {
        v15 = *v14;
        if (v15)
        {
          if (v12.u32[0] < 2uLL)
          {
            v16 = *&v11 - 1;
            while (1)
            {
              v17 = v15[1];
              if (v17 == v8)
              {
                if (v15[2] == v8)
                {
                  goto LABEL_27;
                }
              }

              else if ((v17 & v16) != v13)
              {
                goto LABEL_5;
              }

              v15 = *v15;
              if (!v15)
              {
                goto LABEL_5;
              }
            }
          }

          while (1)
          {
            v18 = v15[1];
            if (v18 == v8)
            {
              break;
            }

            if (v18 >= *&v11)
            {
              v18 %= *&v11;
            }

            if (v18 != v13)
            {
              goto LABEL_5;
            }

LABEL_21:
            v15 = *v15;
            if (!v15)
            {
              goto LABEL_5;
            }
          }

          if (v15[2] != v8)
          {
            goto LABEL_21;
          }

LABEL_27:
          v19 = v15[3];
          v20 = v15[4];
          if (v19 != v20)
          {
            break;
          }
        }
      }
    }

LABEL_5:
    if (++v6 == v5)
    {
      result = [a2 countByEnumeratingWithState:v22 objects:v23 count:16];
      v5 = result;
      if (!result)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  while (v9 + v8 >= v19[1] || v9 + v8 + v10 < *v19)
  {
    v19 += 2;
    if (v19 == v20)
    {
      goto LABEL_5;
    }
  }

  return 1;
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::insertWrite(int8x8_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[36];
  if (!*&v4)
  {
    goto LABEL_21;
  }

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

  v7 = *(*&a1[35] + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_21:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    v9 = *&v4 - 1;
    while (1)
    {
      v10 = v8[1];
      if (v10 == a2)
      {
        if (v8[2] == a2)
        {
          goto LABEL_22;
        }
      }

      else if ((v10 & v9) != v6)
      {
        goto LABEL_21;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v11 = v8[1];
    if (v11 == a2)
    {
      break;
    }

    if (v11 >= *&v4)
    {
      v11 %= *&v4;
    }

    if (v11 != v6)
    {
      goto LABEL_21;
    }

LABEL_16:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_21;
    }
  }

  if (v8[2] != a2)
  {
    goto LABEL_16;
  }

LABEL_22:
  *&v12 = a3 + a2;
  *(&v12 + 1) = a3 + a2 + a4;
  std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100]((v8 + 3), &v12);
}

void sub_29CE7403C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::insertReads(int8x8_t *a1, void *a2)
{
  v24 = *MEMORY[0x29EDCA608];
  memset(v21, 0, sizeof(v21));
  result = [a2 countByEnumeratingWithState:v21 objects:v23 count:16];
  v5 = result;
  if (!result)
  {
    return result;
  }

  do
  {
    v6 = 0;
    while (2)
    {
      v7 = *(*(&v21[0] + 1) + 8 * v6);
      v8 = [objc_msgSend(v7 "buffer")];
      v9 = [v7 bufferOffset];
      v10 = [v7 size];
      v11 = v9 + v8;
      v12 = v9 + v8 + v10;
      v13 = a1[31];
      if (!*&v13)
      {
        goto LABEL_24;
      }

      v14 = vcnt_s8(v13);
      v14.i16[0] = vaddlv_u8(v14);
      if (v14.u32[0] > 1uLL)
      {
        v15 = v8;
        if (*&v13 <= v8)
        {
          v15 = v8 % *&v13;
        }
      }

      else
      {
        v15 = (*&v13 - 1) & v8;
      }

      v16 = *(*&a1[30] + 8 * v15);
      if (!v16 || (v17 = *v16) == 0)
      {
LABEL_24:
        operator new();
      }

      if (v14.u32[0] < 2uLL)
      {
        v18 = *&v13 - 1;
        while (1)
        {
          v19 = v17[1];
          if (v19 == v8)
          {
            if (v17[2] == v8)
            {
              goto LABEL_3;
            }
          }

          else if ((v19 & v18) != v15)
          {
            goto LABEL_24;
          }

          v17 = *v17;
          if (!v17)
          {
            goto LABEL_24;
          }
        }
      }

      while (1)
      {
        v20 = v17[1];
        if (v20 == v8)
        {
          break;
        }

        if (v20 >= *&v13)
        {
          v20 %= *&v13;
        }

        if (v20 != v15)
        {
          goto LABEL_24;
        }

LABEL_19:
        v17 = *v17;
        if (!v17)
        {
          goto LABEL_24;
        }
      }

      if (v17[2] != v8)
      {
        goto LABEL_19;
      }

LABEL_3:
      *&v22 = v11;
      *(&v22 + 1) = v12;
      std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100]((v17 + 3), &v22);
      if (++v6 != v5)
      {
        continue;
      }

      break;
    }

    result = [a2 countByEnumeratingWithState:v21 objects:v23 count:16];
    v5 = result;
  }

  while (result);
  return result;
}

void sub_29CE74280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::insertRead(int8x8_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[31];
  if (!*&v4)
  {
    goto LABEL_21;
  }

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

  v7 = *(*&a1[30] + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_21:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    v9 = *&v4 - 1;
    while (1)
    {
      v10 = v8[1];
      if (v10 == a2)
      {
        if (v8[2] == a2)
        {
          goto LABEL_22;
        }
      }

      else if ((v10 & v9) != v6)
      {
        goto LABEL_21;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v11 = v8[1];
    if (v11 == a2)
    {
      break;
    }

    if (v11 >= *&v4)
    {
      v11 %= *&v4;
    }

    if (v11 != v6)
    {
      goto LABEL_21;
    }

LABEL_16:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_21;
    }
  }

  if (v8[2] != a2)
  {
    goto LABEL_16;
  }

LABEL_22:
  *&v12 = a3 + a2;
  *(&v12 + 1) = a3 + a2 + a4;
  std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100]((v8 + 3), &v12);
}

void sub_29CE74400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::BufferAccess,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::BufferAccess>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::BufferAccess,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::BufferAccess>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::BufferAccess,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::BufferAccess>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::BufferAccess,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::BufferAccess>>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::BufferAccess,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::BufferAccess>>>>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (v6[2] == a2)
        {
          return result;
        }
      }

      else if ((v7 & (*&v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= *&v2)
    {
      v8 %= *&v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_29CE74880(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::BufferAccess,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::BufferAccess>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::BufferAccess,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::BufferAccess>>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::BufferAccess,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::BufferAccess>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::vector<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::BufferAccess,std::allocator<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::BufferAccess>>>,void *>>>>::~unique_ptr[abi:nn200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        v5 = v2;
        operator delete(v4);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit>)::{lambda(char const*)#1}::operator()(uint64_t a1)
{
  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit>)::verify != 1)
  {
    return;
  }

  v2 = *a1;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v37, *a1, 0x480188uLL, 1);
  v3 = v37[1];
  bzero(v37[1], 0x480188uLL);
  v3[1] = -1;
  v4 = v37[0];
  v5 = *(a1 + 16);
  v6 = (*v5)++;
  v7 = *(v2 + 16);
  *(*(v7 + 22488) + 17408) = 0;
  v8 = *(v7 + 168);
  v9 = v8 + 31;
  if ((v8 + 31) <= *(v7 + 160))
  {
    goto LABEL_3;
  }

  v34 = AGX::DataBufferAllocator<44ul>::growNoInline(v7 + 24, 3, 0);
  v8 = *(v7 + 168);
  if (v34)
  {
    v9 = v8 + 31;
    if ((v8 + 31) > *(v7 + 160))
    {
      goto LABEL_27;
    }

LABEL_3:
    *(v7 + 176) = v9;
  }

  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = v10 + *(v7 + 184);
  *(v7 + 168) = v10 + 16;
  *(v7 + 26160) = 0;
  *(v7 + 27560) |= 0x10uLL;
  *(v7 + 27592) |= 1u;
  v12 = *(v7 + 22488);
  *(v12 + 32) = v11;
  v13 = MEMORY[0x29EDC5638];
  *(v7 + 22536) = *(*(v7 + 48) + 224) + *MEMORY[0x29EDC5638];
  *(v12 + 17532) = 16;
  *(v12 + 17672) = 16;
  *(v12 + 17676) = v11 >> 8;
  *v10 = v4;
  *(v10 + 8) = v6;
  *(v10 + 12) = 0;
  v14 = *(a1 + 8);
  v15 = *(v14 + 8);
  v16 = *(v14 + 16);
  if (v15 >= v16)
  {
    v19 = *v14;
    v20 = v15 - *v14;
    v21 = v20 >> 5;
    v22 = (v20 >> 5) + 1;
    if (v22 >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v23 = v16 - v19;
    if (v23 >> 4 > v22)
    {
      v22 = v23 >> 4;
    }

    if (v23 >= 0x7FFFFFFFFFFFFFE0)
    {
      v24 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v24 = v22;
    }

    if (v24)
    {
      if (!(v24 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v25 = (32 * v21);
    v26 = v38;
    *v25 = *v37;
    v25[1] = v26;
    v18 = 32 * v21 + 32;
    memcpy(0, v19, v20);
    *v14 = 0;
    *(v14 + 8) = v18;
    *(v14 + 16) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    v17 = v38;
    *v15 = *v37;
    v15[1] = v17;
    v18 = (v15 + 2);
  }

  *(v14 + 8) = v18;
  if ((**(a1 + 24) & 1) == 0)
  {
    v27 = **(v2 + 16);
    v36[0] = MEMORY[0x29EDCA5F8];
    v36[1] = 3221225472;
    v36[2] = ___ZZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE12encodeRefitsENS_4SpanINS6_5RefitEEEENKUlPKcE_clESB__block_invoke;
    v36[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
    v36[4] = v3;
    [v27 addCompletedHandler:v36];
    v28 = *(v2 + 16);
    *(*(v28 + 22488) + 17408) = 0;
    v29 = *(v28 + 168);
    v30 = v29 + 31;
    if ((v29 + 31) <= *(v28 + 160))
    {
      goto LABEL_19;
    }

    v35 = AGX::DataBufferAllocator<44ul>::growNoInline(v28 + 24, 3, 0);
    v29 = *(v28 + 168);
    if (!v35)
    {
      goto LABEL_20;
    }

    v30 = v29 + 31;
    if ((v29 + 31) <= *(v28 + 160))
    {
LABEL_19:
      *(v28 + 176) = v30;
LABEL_20:
      v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = v31 + *(v28 + 184);
      *(v28 + 168) = v31 + 2;
      *(v28 + 26160) = 0;
      *(v28 + 27560) |= 0x10uLL;
      *(v28 + 27592) |= 1u;
      v33 = *(v28 + 22488);
      *(v33 + 32) = v32;
      *(v28 + 22536) = *(*(v28 + 48) + 224) + *v13;
      *(v33 + 17532) = 16;
      *(v33 + 17672) = 16;
      *(v33 + 17676) = v32 >> 8;
      *v31 = v4;
      v31[1] = 0;
      **(a1 + 24) = 1;
      return;
    }

LABEL_27:
    abort();
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit>)::{lambda(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit const&,BOOL)#1}::operator()(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  v173 = *(a2 + 224);
  v6 = *(a2 + 280);
  v7 = *(a2 + 18) & 0xFE;
  if (*(a2 + 208))
  {
    v8 = *(a2 + 208);
  }

  else
  {
    v8 = *(a2 + 200);
  }

  v9 = [v8 buffer];
  v10 = [v8 bufferOffset];
  v11 = [v9 gpuAddress];
  v12 = [v9 length];
  v14 = *(v4 + 52);
  if (v14)
  {
    v15 = v7 == 6;
  }

  else
  {
    v15 = 0;
  }

  v16 = v11 + v10;
  v176[0] = v16;
  v176[1] = v10;
  v176[2] = v12;
  v176[3] = 0;
  if (!v15 && (v6 & 4) == 0 && (v6 & 8) == 0)
  {
    return;
  }

  if ((*(v4 + 280) & 0x20) != 0 && (a3 & 1) == 0)
  {
    v19 = v12;
    v20 = *(v4 + 208);
    v180 = *(v4 + 200);
    v177 = v20;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopies(a1, &v180, &v177, 1uLL, v13);
    v21 = *(a1 + 16);
    if (*(v21 + 2292) == 1)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
      *(v21 + 2306) = 0;
      if (*(v21 + 2292) == 1 && !*(v21 + 27624))
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v21, 22, (v21 + 28192), (v21 + 28200), (v21 + 28208));
      }
    }

    v14 = *(v4 + 52);
    v12 = v19;
  }

  if (v14)
  {
    if ((*(v4 + 18) & 0xFE) == 6 && (*(v4 + 15) & 1) != 0 && (a3 & 1) == 0)
    {
      v22 = v12;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyMotionTransforms(a1, v4, v176);
      v12 = v22;
      v23 = *(a1 + 16);
      if (*(v23 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
        v12 = v22;
        *(v23 + 2306) = 0;
        if (*(v23 + 2292) == 1 && !*(v23 + 27624))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v23, 22, (v23 + 28192), (v23 + 28200), (v23 + 28208));
          v12 = v22;
        }
      }
    }
  }

  v24 = *(v4 + 18);
  if ((v24 == 5 || v24 == 2) && (v6 & 4) != 0 && (a3 & 1) == 0)
  {
    v180 = (v16 + 152);
    v181.i64[0] = 88;
    v181.i64[1] = v12;
    v182 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyControlPoints(a1, (v4 + 248), v16, 0, &v180, *(v4 + 40), *(v4 + 36), *(v173 + 56));
    v26 = *(a1 + 16);
    if (*(v26 + 2292) == 1)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
      *(v26 + 2306) = 0;
      if (*(v26 + 2292) == 1 && !*(v26 + 27624))
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v26, 22, (v26 + 28192), (v26 + 28200), (v26 + 28208));
      }
    }
  }

  v27 = *(v4 + 216);
  v28 = *(v4 + 240);
  v29 = *(a1 + 16);
  *(v29 + 26464) = v27;
  *(*(v29 + 22488) + 56) = v27;
  *(v29 + 22560) = v28;
  *(v29 + 27560) |= 0x80uLL;
  *(v29 + 27592) |= 1u;
  v30 = *(v4 + 4);
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit>)::{lambda(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit const&,BOOL)#1}::operator() const(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit const&,BOOL)::enableSingleTgRefitForTopDown = 0;
  }

  if ((v30 - 1) < 2 || AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit>)::{lambda(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit const&,BOOL)#1}::operator() const(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit const&,BOOL)::enableSingleTgRefitForTopDown == 1 && AGX::BVHDescriptor::satisfiesPLOCLimits(v4))
  {
    v31 = (*(v4 + 280) >> 1) & 1 | 0x100;
    Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 99, ((*(v4 + 280) & 2) != 0) | 0x100u);
    v170 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 101, v31);
    v33 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 97, v31);
    v34 = *(v4 + 4);
    v180 = 0;
    v181 = 0uLL;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v180, a1, 72, 1);
    v35 = v180;
    v36 = v181.i64[1];
    v174 = v181.i64[0];
    v180[8] = 0;
    v35[2] = 0u;
    v35[3] = 0u;
    *v35 = 0u;
    v35[1] = 0u;
    v180 = 0;
    v181 = 0uLL;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v180, a1, 6, 0);
    v37 = v180;
    v38 = v181.i64[1];
    v39 = v181.i64[0];
    *(v180 + 2) = 0;
    *v37 = 0;
    v40 = *(v4 + 280);
    v171 = v40;
    if (v34 == 2)
    {
      {
        v161 = v38;
        v38 = v161;
        v40 = v171;
        if (v162)
        {
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodePLOCRefit(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit const&)::mediumRefitSingleThreadgroupSize = 0;
          v38 = v161;
          v40 = v171;
        }
      }

      v41 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodePLOCRefit(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit const&)::mediumRefitSingleThreadgroupSize;
      if (!AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodePLOCRefit(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit const&)::mediumRefitSingleThreadgroupSize)
      {
        v42 = *(v4 + 168);
        goto LABEL_108;
      }
    }

    else
    {
      {
        v163 = v38;
        v38 = v163;
        v40 = v171;
        if (v164)
        {
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodePLOCRefit(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit const&)::smallRefitSingleThreadgroupSize = 0;
          v38 = v163;
          v40 = v171;
        }
      }

      v41 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodePLOCRefit(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit const&)::smallRefitSingleThreadgroupSize;
      if (!AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodePLOCRefit(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit const&)::smallRefitSingleThreadgroupSize)
      {
        v42 = *(v4 + 32);
LABEL_108:
        v117 = ((v42 >> 4) + 31) & 0x1FFFFFE0;
        if (v117 <= 0x40)
        {
          v117 = 64;
        }

        if (v117 >= 0x400)
        {
          LOWORD(v117) = 1024;
        }

        *v37 = v117;
        if (v40)
        {
          goto LABEL_113;
        }

        goto LABEL_106;
      }
    }

    v113 = v41 + 31;
    if (v113 >= 0x400)
    {
      v114 = 1024;
    }

    else
    {
      v114 = v113 & 0xFFE0;
    }

    *v37 = v114;
    if (v40)
    {
LABEL_113:
      v169 = v36;
      v118 = *(*(v4 + 224) + 122);
      if (v118 == 3)
      {
        v119 = 1024;
      }

      else
      {
        v119 = 640;
      }

      v120 = v33;
      if (v118 != 3 && v34 != 2)
      {
        v121 = v38;
        v122 = AGX::BVHDescriptor::maxInnerNodeCount(v4);
        v38 = v121;
        v119 = (v122 + 31) & 0xFFFFFFE0;
      }

      {
        v165 = v38;
        v38 = v165;
        if (v166)
        {
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodePLOCRefit(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit const&)::smallRefitQtbSingleThreadgroupSizeEv = 0;
          v38 = v165;
        }
      }

      {
        v168 = v38;
        v38 = v168;
        if (v167)
        {
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodePLOCRefit(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit const&)::mediumRefitQtbSingleThreadgroupSizeEv = 0;
          v38 = v168;
        }
      }

      v124 = v123[34];
      if (!v124)
      {
        v124 = v119;
      }

      v125 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodePLOCRefit(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit const&)::mediumRefitQtbSingleThreadgroupSizeEv;
      if (!AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodePLOCRefit(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit const&)::mediumRefitQtbSingleThreadgroupSizeEv)
      {
        v125 = v119;
      }

      if (v34 == 2)
      {
        v124 = v125;
      }

      v126 = v124 + 31;
      if ((v126 & 0xFFFFFC00) != 0)
      {
        v127 = 1024;
      }

      else
      {
        v127 = v126 & 0xFFE0;
      }

      *(v37 + 2) = v127;
      if (v118 == 3)
      {
        v115 = 4;
      }

      else
      {
        v115 = 1;
      }

      v116 = 2;
      v36 = v169;
      v33 = v120;
LABEL_134:
      *(v37 + 1) = v115;
      v128 = *(v4 + 216);
      v129 = *(v4 + 240);
      v130 = *(a1 + 16);
      *(v130 + 26464) = v128;
      v131 = *(v130 + 22488);
      v131[7] = v128;
      *(v130 + 22560) = v129;
      *(v130 + 27560) |= 0x80uLL;
      LODWORD(v129) = *(v130 + 27592) | 1;
      *(v130 + 26472) = v39;
      v131[8] = v39;
      *(v130 + 22568) = v38;
      *(v130 + 27560) |= 0x100uLL;
      *(v130 + 26480) = v174;
      v131[9] = v174;
      *(v130 + 22576) = v36;
      *(v130 + 27560) |= 0x200uLL;
      *(v130 + 27592) = v129;
      v132 = 32;
      if (*(v4 + 4))
      {
        v132 = 1;
      }

      v177 = v116;
      v178 = vdupq_n_s64(1uLL);
      v180 = v132;
      v181 = v178;
      *(v130 + 2060) |= 4u;
      v133 = *(v130 + 2336);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v130, v33);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelCommonImpl(v130, &v180, &v177);
      if (*(v130 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v130, 22, 0, 0);
      }

      if (v133)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v130, v133);
      }

      v134 = *(a1 + 16);
      if (*(v134 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
        *(v134 + 2306) = 0;
        if (*(v134 + 2292) == 1 && !*(v134 + 27624))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v134, 22, (v134 + 28192), (v134 + 28200), (v134 + 28208));
        }
      }

      v135 = *(a1 + 16);
      *(*(v135 + 22488) + 17436) = 0;
      v137 = *(v135 + 160);
      v136 = *(v135 + 168);
      v138 = v136 + 31;
      if (v34 == 2)
      {
        if (v138 <= v137)
        {
LABEL_146:
          v139 = 1;
LABEL_149:
          *(v135 + 176) = v138;
          goto LABEL_150;
        }

        v157 = AGX::DataBufferAllocator<44ul>::growNoInline(v135 + 24, 3, 0);
        v136 = *(v135 + 168);
        if (v157)
        {
          v138 = v136 + 31;
          if ((v136 + 31) > *(v135 + 160))
          {
            goto LABEL_91;
          }

          goto LABEL_146;
        }

        v139 = 1;
LABEL_150:
        v140 = ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
        v141 = v140 + *(v135 + 184);
        *(v135 + 168) = v140 + 4;
        *(v135 + 26216) = 0;
        v142 = *(v135 + 27592);
        *(v135 + 27560) |= 0x800uLL;
        *(v135 + 27592) = v142 | 1;
        v143 = *(v135 + 22488);
        *(v143 + 88) = v141;
        v144 = MEMORY[0x29EDC5638];
        *(v135 + 22592) = *(*(v135 + 48) + 224) + *MEMORY[0x29EDC5638];
        *(v143 + 17560) = 4;
        *(v143 + 17728) = 4;
        *(v143 + 17732) = v141 >> 8;
        *v140 = v139;
        v145 = *(a1 + 16);
        *(v145 + 2060) |= 4u;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v145, 22, Pipeline, v174, v36);
        if (v171)
        {
          v146 = *(a1 + 16);
          *(v146 + 2060) |= 4u;
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v146, 22, v170, v174 + 6, v36);
        }

        if (v34 != 2)
        {
          goto LABEL_162;
        }

        v147 = v36;
        v148 = v4;
        v149 = *(a1 + 16);
        if (*(v149 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
          *(v149 + 2306) = 0;
          if (*(v149 + 2292) == 1 && !*(v149 + 27624))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v149, 22, (v149 + 28192), (v149 + 28200), (v149 + 28208));
          }
        }

        v150 = *(a1 + 16);
        *(*(v150 + 22488) + 17436) = 0;
        v151 = *(v150 + 168);
        v152 = v151 + 31;
        if ((v151 + 31) > *(v150 + 160))
        {
          v159 = AGX::DataBufferAllocator<44ul>::growNoInline(v150 + 24, 3, 0);
          v151 = *(v150 + 168);
          if (!v159)
          {
            v4 = v148;
            goto LABEL_160;
          }

          v152 = v151 + 31;
          v4 = v148;
          if ((v151 + 31) > *(v150 + 160))
          {
            goto LABEL_91;
          }
        }

        else
        {
          v4 = v148;
        }

        *(v150 + 176) = v152;
LABEL_160:
        v110 = v147;
        v153 = ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
        v154 = v153 + *(v150 + 184);
        *(v150 + 168) = v153 + 4;
        *(v150 + 26216) = 0;
        *(v150 + 27560) |= 0x800uLL;
        *(v150 + 27592) |= 1u;
        v155 = *(v150 + 22488);
        *(v155 + 88) = v154;
        *(v150 + 22592) = *(*(v150 + 48) + 224) + *v144;
        *(v155 + 17560) = 4;
        *(v155 + 17728) = 4;
        *(v155 + 17732) = v154 >> 8;
        *v153 = 2;
        v111 = *(a1 + 16);
        *(v111 + 2060) |= 4u;
        v112 = v174 + 12;
        v109 = Pipeline;
        goto LABEL_161;
      }

      if (v138 > v137)
      {
        v158 = AGX::DataBufferAllocator<44ul>::growNoInline(v135 + 24, 3, 0);
        v136 = *(v135 + 168);
        if (!v158)
        {
          v139 = 0;
          goto LABEL_150;
        }

        v138 = v136 + 31;
        if ((v136 + 31) > *(v135 + 160))
        {
          goto LABEL_91;
        }
      }

      v139 = 0;
      goto LABEL_149;
    }

LABEL_106:
    v115 = 0;
    *(v37 + 2) = 0;
    v116 = 1;
    goto LABEL_134;
  }

  v43 = v4;
  v44 = *(v4 + 280);
  v45 = *(v43 + 200);
  v46 = [v45 buffer];
  v47 = [v45 bufferOffset];
  v48 = [v46 gpuAddress];
  [v46 length];
  v49 = *(v43 + 224);
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen(void)::riaBvhGenOverride = 0;
  }

  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen(void)::riaBvhGenOverride >= 5)
  {
    v50 = 2688;
  }

  else
  {
    v50 = 1536;
  }

  *(*(*(a1 + 16) + 22496) + 2036) = v50;
  v51 = (*v43 - 1);
  v175 = v43;
  v52 = v51 + (*(v43 + 280) & 1);
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v180, a1, 8 * (v52 + 2 * v52), 1);
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v177, a1, 8 * (v52 + 4 * v52), 0);
  v172 = v52 - 1;
  if (v52 <= 1)
  {
    v53 = 1;
  }

  else
  {
    v53 = v52;
  }

  if (!v52)
  {
    goto LABEL_77;
  }

  v54 = v48 + v47;
  if (v51)
  {
    v55 = 4 * v51 + 128;
    v56 = v178.i64[0] + 40 * v51 - 40;
    v57 = v51 + 2 * v51;
    v58 = v181.i64[0] + v57 * 8 - 24;
    v59 = &v180[v57 - 3];
    v60 = v51;
    do
    {
      if (v60 >= *(a1 + 40))
      {
        v61 = 1;
      }

      else
      {
        v61 = 8;
      }

      *v58 = xmmword_29D2F2440;
      *(v58 + 16) = 0x100000001;
      *v56 = v54;
      *(v56 + 8) = v59;
      *(v56 + 16) = 120;
      *(v56 + 24) = v55;
      *(v56 + 32) = v61;
      v55 -= 4;
      v56 -= 40;
      v58 -= 24;
      v59 -= 24;
      --v60;
    }

    while (v60);
  }

  if (*(v43 + 280))
  {
    v62 = (v53 - 1);
    v63 = 4 * (*v43 - 1);
    if (*(v49 + 122) == 3)
    {
      v64 = 4;
    }

    else
    {
      v64 = 1;
    }

    v65 = v62 + 2 * v62;
    v66 = &v180[v65];
    v67 = v65 * 8 + v181.i64[0];
    v68 = v178.i64[0] + 40 * v62;
    *v67 = xmmword_29D2F2440;
    *(v67 + 16) = 0x100000001;
    *v68 = v54;
    *(v68 + 8) = v66;
    *(v68 + 16) = 120;
    *(v68 + 24) = v63;
    *(v68 + 32) = v64;
  }

  v69 = *(a1 + 16);
  *(*(v69 + 22488) + 17396) = 0;
  v70 = *(v69 + 168);
  v71 = v70 + 31;
  if ((v70 + 31) > *(v69 + 160))
  {
    v160 = AGX::DataBufferAllocator<44ul>::growNoInline(v69 + 24, 3, 0);
    v70 = *(v69 + 168);
    if (!v160)
    {
      goto LABEL_69;
    }

    v71 = v70 + 31;
    if ((v70 + 31) > *(v69 + 160))
    {
      goto LABEL_91;
    }
  }

  *(v69 + 176) = v71;
LABEL_69:
  v72 = ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v72 + *(v69 + 184);
  *(v69 + 168) = v72 + 4;
  *(v69 + 26136) = 0;
  v74 = *(v69 + 27560) | 2;
  *(v69 + 27592) |= 1u;
  *(v69 + 27560) = v74;
  v75 = *(v69 + 22488);
  *(v75 + 8) = v73;
  *(v69 + 22512) = *(*(v69 + 48) + 224) + *MEMORY[0x29EDC5638];
  *(v75 + 17520) = 4;
  *(v75 + 17648) = 4;
  *(v75 + 17652) = v73 >> 8;
  *v72 = v52;
  v76 = v177;
  v77 = v179;
  v78 = *(a1 + 16);
  *(v78 + 26424) = v177;
  *(*(v78 + 22488) + 16) = v76;
  *(v78 + 22520) = v77;
  *(v78 + 27560) |= 4uLL;
  *(v78 + 27592) |= 1u;
  v79 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 133, 0);
  v80 = *(a1 + 16);
  *v184 = v52;
  *&v184[8] = vdupq_n_s64(1uLL);
  *v183 = v52;
  *&v183[8] = *&v184[8];
  *(v80 + 2060) |= 4u;
  v81 = *(v80 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v80, v79);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v80, 0x16u, v184, v183);
  if (*(v80 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v80, 22, 0, 0);
  }

  if (v81)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v80, v81);
  }

  v82 = *(a1 + 16);
  if (*(v82 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
    *(v82 + 2306) = 0;
    if (*(v82 + 2292) == 1 && !*(v82 + 27624))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v82, 22, (v82 + 28192), (v82 + 28200), (v82 + 28208));
    }
  }

LABEL_77:
  v83 = (v44 >> 1) & 1;
  if (v51)
  {
    v84 = v182;
    v85 = &v180[3 * v51 - 3];
    do
    {
      v86 = *(a1 + 40);
      v87 = *(a1 + 16);
      *(*(v87 + 22488) + 17432) = 0;
      v88 = *(v87 + 168);
      v89 = v88 + 31;
      if ((v88 + 31) > *(v87 + 160))
      {
        v98 = AGX::DataBufferAllocator<44ul>::growNoInline(v87 + 24, 3, 0);
        v88 = *(v87 + 168);
        if (!v98)
        {
          goto LABEL_82;
        }

        v89 = v88 + 31;
        if ((v88 + 31) > *(v87 + 160))
        {
          goto LABEL_91;
        }
      }

      *(v87 + 176) = v89;
LABEL_82:
      v90 = ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
      v91 = v90 + *(v87 + 184);
      *(v87 + 168) = v90 + 4;
      *(v87 + 26208) = 0;
      *(v87 + 27560) |= 0x400uLL;
      *(v87 + 27592) |= 1u;
      v92 = *(v87 + 22488);
      *(v92 + 80) = v91;
      *(v87 + 22584) = *(*(v87 + 48) + 224) + *MEMORY[0x29EDC5638];
      *(v92 + 17556) = 4;
      *(v92 + 17720) = 4;
      *(v92 + 17724) = v91 >> 8;
      *v90 = v51;
      if (v51 >= v86)
      {
        v93 = 119;
      }

      else
      {
        v93 = 117;
      }

      v94 = v52 & 0xFFFFFFFFFFFF0000 | v83;
      v52 = v94 | 0x100;
      v95 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, v93, v94 | 0x100u);
      v96 = *(a1 + 16);
      *(v96 + 2060) |= 4u;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v96, 22, v95, v85, v84);
      v97 = *(a1 + 16);
      if (*(v97 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
        *(v97 + 2306) = 0;
        if (*(v97 + 2292) == 1 && !*(v97 + 27624))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v97, 22, (v97 + 28192), (v97 + 28200), (v97 + 28208));
        }
      }

      v85 -= 6;
      --v51;
    }

    while (v51);
  }

  v99 = *(a1 + 16);
  *(*(v99 + 22488) + 17432) = 0;
  v100 = *(v99 + 168);
  v101 = v100 + 31;
  v4 = v175;
  if ((v100 + 31) > *(v99 + 160))
  {
    v156 = AGX::DataBufferAllocator<44ul>::growNoInline(v99 + 24, 3, 0);
    v100 = *(v99 + 168);
    if (!v156)
    {
      goto LABEL_94;
    }

    v101 = v100 + 31;
    if ((v100 + 31) > *(v99 + 160))
    {
LABEL_91:
      abort();
    }
  }

  *(v99 + 176) = v101;
LABEL_94:
  v102 = ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v102 + *(v99 + 184);
  *(v99 + 168) = v102 + 4;
  *(v99 + 26208) = 0;
  *(v99 + 27560) |= 0x400uLL;
  *(v99 + 27592) |= 1u;
  v104 = *(v99 + 22488);
  *(v104 + 80) = v103;
  *(v99 + 22584) = *(*(v99 + 48) + 224) + *MEMORY[0x29EDC5638];
  *(v104 + 17556) = 4;
  *(v104 + 17720) = 4;
  *(v104 + 17724) = v103 >> 8;
  *v102 = 0;
  v105 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 117, v83 | 0x100u);
  v106 = *(a1 + 16);
  *v184 = xmmword_29D2F23B0;
  *&v184[16] = 1;
  *v183 = xmmword_29D2F23B0;
  *&v183[16] = 1;
  *(v106 + 2060) |= 4u;
  v107 = *(v106 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v106, v105);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v106, 0x16u, v184, v183);
  if (*(v106 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v106, 22, 0, 0);
  }

  if (v107)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v106, v107);
  }

  if ((*(v175 + 280) & 1) == 0)
  {
    goto LABEL_162;
  }

  v108 = &v180[3 * v172];
  v109 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 121, v83 | 0x100u);
  v110 = v182;
  v111 = *(a1 + 16);
  *(v111 + 2060) |= 4u;
  v112 = v108;
LABEL_161:
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v111, 22, v109, v112, v110);
LABEL_162:
  if (*(v4 + 18) - 8 <= 0xFFFFFFFD && (*(v4 + 280) & 0x10) == 0)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyPPD(a1, v4, v4 + 248, v176);
  }
}

void std::vector<unsigned short>::push_back[abi:nn200100](uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= -2)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    *(2 * v8) = *a2;
    v5 = 2 * v8 + 2;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCoalescedRefits(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v66, a1, 24 * a3, 1);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v65, a1, 20 * a3, 0);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v64, a1, 40 * a3, 0);
    v8 = v66[3];
    v9 = *(a1 + 16);
    v11 = v66[0];
    v10 = v66[1];
    *(v9 + 26480) = v66[0];
    v12 = *(v9 + 22488);
    v12[9] = v11;
    v55 = v8;
    *(v9 + 22576) = v8;
    *(v9 + 27560) |= 0x200uLL;
    v13 = *(v9 + 27592) | 1;
    v14 = v65[3];
    v15 = v65[0];
    v16 = v65[1];
    *(v9 + 26472) = v65[0];
    v52 = v15;
    v53 = v14;
    v12[8] = v15;
    *(v9 + 22568) = v14;
    *(v9 + 27560) |= 0x100uLL;
    v17 = v64[3];
    v18 = v64[0];
    v19 = v64[1];
    *(v9 + 26464) = v64[0];
    v50 = v18;
    v51 = v17;
    v12[7] = v18;
    *(v9 + 22560) = v17;
    v20 = *(v9 + 27560) | 0x80;
    *(v9 + 27592) = v13;
    *(v9 + 27560) = v20;
    v61 = *a2;
    v21 = a2[12];
    v22 = a2[13];
    v57 = a2;
    *&v23 = *(a2 + 7);
    v59 = v23;
    if (!*a4)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v63, a1, 4 * v21, 1);
      v24 = *&v63[16];
      *a4 = *v63;
      *(a4 + 16) = v24;
    }

    v54 = v11;
    bzero(*(a4 + 8), 4 * v21);
    *v10 = 0;
    *(v10 + 8) = 0;
    *(&v25 + 1) = *(&v59 + 1);
    *(v10 + 12) = v59;
    *(v10 + 16) = 0x100000001;
    *v16 = v61;
    *(v16 + 4) = v22;
    *(v16 + 8) = *(a1 + 40);
    *(v16 + 12) = v59;
    *v19 = *a4;
    *(v19 + 8) = v21;
    *(v19 + 16) = *(a2 + 2);
    *(v19 + 24) = v21;
    *(v19 + 32) = v21;
    *(v19 + 36) = v22;
    v26 = (v21 + 31) & 0xFFFFFFE0;
    v56 = a3;
    v27 = a3 - 1;
    if (a3 != 1)
    {
      v28 = a4;
      v29 = v19 + 40;
      v30 = v16 + 20;
      v31 = v10 + 24;
      v32 = v57 + 30;
      do
      {
        v62 = *(v32 - 14);
        v33 = *(v32 - 2);
        v60 = *(v32 - 1);
        *&v25 = *v32;
        v58 = v25;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v63, a1, 4 * v33, 1);
        v34 = *&v63[16];
        *v28 = *v63;
        *(v28 + 16) = v34;
        bzero(*(v28 + 8), 4 * v33);
        *v31 = 0;
        *(v31 + 8) = 0;
        *(&v25 + 1) = *(&v58 + 1);
        *(v31 + 12) = v58;
        *(v31 + 16) = 0x100000001;
        *v30 = v62;
        *(v30 + 4) = v60;
        *(v30 + 8) = *(a1 + 40);
        *(v30 + 12) = v58;
        *v29 = *v28;
        *(v29 + 8) = v33;
        *(v29 + 16) = *(v32 - 5);
        *(v29 + 24) = v33;
        if (v26 <= v33)
        {
          v35 = v33;
        }

        else
        {
          v35 = v26;
        }

        v26 = (v35 + 31) & 0xFFFFFFE0;
        *(v29 + 32) = v33;
        *(v29 + 36) = v60;
        v29 += 40;
        v30 += 20;
        v31 += 24;
        v32 += 8;
        --v27;
      }

      while (v27);
    }

    v36 = v56;
    v37 = v54;
    if (v26)
    {
      Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 102, 256);
      v39 = *(a1 + 16);
      v67 = v56;
      v68 = vdupq_n_s64(1uLL);
      *v63 = v26;
      *&v63[8] = v68;
      *(v39 + 2060) |= 4u;
      v40 = *(v39 + 2336);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v39, Pipeline);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelCommonImpl(v39, v63, &v67);
      if (*(v39 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v39, 22, 0, 0);
      }

      if (v40)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v39, v40);
      }

      v41 = *(a1 + 16);
      if (*(v41 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
        *(v41 + 2306) = 0;
        if (*(v41 + 2292) == 1 && !*(v41 + 27624))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v41, 22, (v41 + 28192), (v41 + 28200), (v41 + 28208));
        }
      }

      v42 = (v57 + 2);
      v43 = v52;
      v44 = v50;
      do
      {
        v45 = *(a1 + 16);
        *(v45 + 26472) = v43;
        v46 = *(v45 + 22488);
        *(v46 + 64) = v43;
        *(v45 + 22568) = v53;
        *(v45 + 27560) |= 0x100uLL;
        v47 = *(v45 + 27592) | 1;
        *(v45 + 26464) = v44;
        *(v46 + 56) = v44;
        *(v45 + 22560) = v51;
        v48 = *(v45 + 27560) | 0x80;
        *(v45 + 27592) = v47;
        *(v45 + 27560) = v48;
        v49 = *v42;
        v42 += 8;
        *(v45 + 2060) |= 4u;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v45, 22, v49, v37, v55);
        v44 += 40;
        v43 += 20;
        v37 += 6;
        --v36;
      }

      while (v36);
    }
  }
}

BOOL AGX::BVHDescriptor::satisfiesPLOCLimits(AGX::BVHDescriptor *this)
{
  v1 = *(this + 18);
  if (v1 - 8 <= 0xFFFFFFFD)
  {
    v2 = *(this + 10);
    if (v2)
    {
      v3 = *(this + 8);
      v4 = v2 <= 0x4000;
      v6 = v2 < 0x8000001 && v3 < 0x8000001;
      if (v3 <= 0x4000)
      {
        v6 = v4;
      }

      v7 = v1 < 2 && v6;
      {
        v19 = v7;
        v7 = v19;
        if (v15)
        {
          AGX::BVHDescriptor::satisfiesPLOCLimits(void)const::forceTopDownForPrimitive = 0;
          v7 = v19;
        }
      }

      return v7 & (v8[2872] ^ 1);
    }

    return 1;
  }

  {
    v18 = this;
    v14 = v13;
    this = v18;
    if (v14)
    {
      AGX::BVHDescriptor::satisfiesPLOCLimits(void)const::forceTopDownForInstance = 0;
      this = v18;
    }
  }

  v9 = 0;
  if ((*(this + 15) & 1) == 0 && (v10[2888] & 1) == 0)
  {
    if (*(this + 2) > 2u)
    {
      return *(this + 2) > 2u;
    }

    {
      v20 = this;
      v17 = v16;
      this = v20;
      if (v17)
      {
        AGX::BVHDescriptor::isFastIntersection(void)const::forceFastintersection = 0;
        this = v20;
      }
    }

    if ((v11[2840] & 1) != 0 || (*(this + 28) & 0x10) != 0)
    {
      return *(this + 2) > 2u;
    }

    return 1;
  }

  return v9;
}

uint64_t ProgressBinsSynchronizeBuffer(int8x8_t *a1, void *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = [a2 gpuAddress];
  v4 = 73244475 * ((73244475 * (v3 ^ (v3 >> 16))) ^ ((73244475 * (v3 ^ (v3 >> 16))) >> 16));
  v5 = v4 ^ (v4 >> 16);
  v6 = a1[17].u32[0];
  v7 = v5 % v6;
  if (((v5 % v6) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a1[20];
  if (!*&v8)
  {
    goto LABEL_46;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v5 % v6;
    if (*&v8 <= v7)
    {
      v10 = v7 % v8.i32[0];
    }
  }

  else
  {
    v10 = (*&v8 + 0x7FFFFFFFLL) & v7;
  }

  v11 = *(*&a1[19] + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
    v16 = a1 + 18;
    goto LABEL_27;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v12[1];
      if (v14 == v7)
      {
        if (*(v12 + 4) == v7)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else if ((v14 & (*&v8 - 1)) != v10)
      {
        goto LABEL_26;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 != v7)
    {
      break;
    }

    if (*(v12 + 4) == v7)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_14:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_26;
    }
  }

  if (v13 >= *&v8)
  {
    v13 %= *&v8;
  }

  if (v13 == v10)
  {
    goto LABEL_14;
  }

LABEL_26:
  v16 = a1 + 18;
LABEL_27:
  v17 = vcnt_s8(v8);
  v17.i16[0] = vaddlv_u8(v17);
  if (v17.u32[0] > 1uLL)
  {
    v18 = v7;
    if (*&v8 <= v7)
    {
      v18 = v7 % v8.i32[0];
    }
  }

  else
  {
    v18 = (*&v8 + 0x7FFFFFFFLL) & v7;
  }

  v19 = *(*&a1[19] + 8 * v18);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_46:
    operator new();
  }

  if (v17.u32[0] < 2uLL)
  {
    while (1)
    {
      v22 = v20[1];
      if (v22 == v7)
      {
        if (*(v20 + 4) == v7)
        {
          return *(*v16 + 4 * v7);
        }
      }

      else if ((v22 & (*&v8 - 1)) != v18)
      {
        goto LABEL_46;
      }

      v20 = *v20;
      if (!v20)
      {
        goto LABEL_46;
      }
    }
  }

  while (1)
  {
    v21 = v20[1];
    if (v21 == v7)
    {
      break;
    }

    if (v21 >= *&v8)
    {
      v21 %= *&v8;
    }

    if (v21 != v18)
    {
      goto LABEL_46;
    }

LABEL_36:
    v20 = *v20;
    if (!v20)
    {
      goto LABEL_46;
    }
  }

  if (*(v20 + 4) != v7)
  {
    goto LABEL_36;
  }

  return *(*v16 + 4 * v7);
}

void *std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,ADSCommandProgressBins::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::equal_to,std::hash,true>,std::allocator<ADSCommandProgressBins::BufferUsage>>::__node_insert_multi(uint64_t *a1, void *a2)
{
  v4 = a2 + 2;
  v5 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) >> 47));
  *(v4 - 1) = v6;
  result = std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,ADSCommandProgressBins::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::equal_to,std::hash,true>,std::allocator<ADSCommandProgressBins::BufferUsage>>::__node_insert_multi_prepare(a1, v6, v4);
  v8 = a1[1];
  v9 = *(v4 - 1);
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  if (v9 >= *&v8)
  {
    v11 = v9 % *&v8;
  }

  else
  {
    v11 = *(v4 - 1);
  }

  v12 = *&v8 - 1;
  v13 = (*&v8 - 1) & v9;
  if (v10.u32[0] > 1uLL)
  {
    v13 = v11;
  }

  if (result)
  {
    *a2 = *result;
    *result = a2;
    if (*a2)
    {
      v14 = *(*a2 + 8);
      if (v10.u32[0] > 1uLL)
      {
        if (v14 >= *&v8)
        {
          v14 %= *&v8;
        }
      }

      else
      {
        v14 &= v12;
      }

      if (v14 != v13)
      {
        v17 = (*a1 + 8 * v14);
LABEL_20:
        *v17 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v15 = *a1;
    *(*a1 + 8 * v13) = a1 + 2;
    if (*a2)
    {
      v16 = *(*a2 + 8);
      if (v10.u32[0] > 1uLL)
      {
        if (v16 >= *&v8)
        {
          v16 %= *&v8;
        }
      }

      else
      {
        v16 &= v12;
      }

      v17 = (v15 + 8 * v16);
      goto LABEL_20;
    }
  }

  ++a1[3];
  return result;
}

uint64_t AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen()
{
  v0 = &unk_2A179F000;
  {
    v0 = &unk_2A179F000;
    if (v3)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen(void)::riaBvhGenOverride = 0;
      v0 = &unk_2A179F000;
    }
  }

  v1 = v0[884];
  if (v1 <= 0)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

void ProgressBinsSynchronizeBufferAccessRange(int8x8_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  {
    v22 = a2;
    v23 = a4;
    v24 = a3;
    a3 = v24;
    a4 = v23;
    a2 = v22;
    if (v25)
    {
      ProgressBinsSynchronizeBufferAccessRange(ADSCommandProgressBins *,objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long,MTLBindingAccess,void({block_pointer})(unsigned int,unsigned int))::useConservativeTracking = 0;
      a3 = v24;
      a4 = v23;
      a2 = v22;
    }
  }

  if (ProgressBinsSynchronizeBufferAccessRange(ADSCommandProgressBins *,objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long,MTLBindingAccess,void({block_pointer})(unsigned int,unsigned int))::useConservativeTracking == 1)
  {

    ProgressBinsSynchronizeBufferAccess(a1, a2, a5, a6);
  }

  else if (a1)
  {
    if (a1[6].i8[0])
    {
      v9 = a2;
      v10 = a4;
      v11 = [a2 gpuAddress] + a3;
      v12 = v11 + v10;
      v13 = v9;
      v14 = std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>(&a1[12], v9);
      v15 = v14;
      if (v14)
      {
        v16 = v14;
        do
        {
          v16 = *v16;
        }

        while (v16 && v16[2] == v13);
      }

      else
      {
        v16 = 0;
      }

      if (v16 != v14)
      {
        if (a5 == 1)
        {
          do
          {
            if ((v15[7] & 1) == 0 || (v11 < v15[6] ? (v20 = v12 >= v15[5]) : (v20 = 0), v20))
            {
              a1[5].i16[1] = *(v15 + 18);
              (*(a6 + 16))(a6);
            }

            v15 = *v15;
          }

          while (v15 != v16);
        }

        else
        {
          do
          {
            if (v15[3] == 1)
            {
              if ((v15[7] & 1) == 0 || (v11 < v15[6] ? (v21 = v12 >= v15[5]) : (v21 = 0), v21))
              {
                a1[5].i16[1] = *(v15 + 18);
                (*(a6 + 16))(a6);
              }
            }

            v15 = *v15;
          }

          while (v15 != v16);
        }
      }

      operator new();
    }

    v17 = ProgressBinsSynchronizeBuffer(a1, a2);
    if ((v17 & 0x80000000) == 0)
    {
      v18 = a1[5].u16[1];
      v19 = *(a6 + 16);

      v19(a6, v17, v18);
    }
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeDeserialize_impl(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*(a1 + 49) == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::flush(a1);
  }

  v10 = *a4 + 24;
  v11 = a4[3];
  v12 = *(a1 + 16);
  *(v12 + 26504) = v10;
  v13 = *(v12 + 22488);
  *(v13 + 96) = v10;
  *(v12 + 22600) = v11;
  *(v12 + 27560) |= 0x1000uLL;
  LODWORD(v10) = *(v12 + 27592) | 1;
  v14 = *a2;
  v15 = a2[3];
  *(v12 + 26448) = *a2;
  *(v13 + 40) = v14;
  *(v12 + 22544) = v15;
  *(v12 + 27560) |= 0x20uLL;
  *(v12 + 27592) = v10;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v47, a1, 8, 0);
  v16 = v48;
  *v47 = a5;
  v17 = v49;
  v18 = *(a1 + 16);
  *(v18 + 26528) = v16;
  *(*(v18 + 22488) + 120) = v16;
  *(v18 + 22624) = v17;
  *(v18 + 27560) |= 0x8000uLL;
  *(v18 + 27592) |= 1u;
  v50 = 0uLL;
  *&v51 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v50, a1, 4, 1);
  v19 = *(&v50 + 1);
  v20 = v51;
  v21 = *(a1 + 16);
  *(v21 + 26560) = *(&v50 + 1);
  *(*(v21 + 22488) + 152) = v19;
  *(v21 + 22656) = v20;
  *(v21 + 27560) |= 0x80000uLL;
  *(v21 + 27592) |= 1u;
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 122, 0);
  v23 = *a4;
  v24 = a4[3];
  v50 = 0u;
  v51 = 0u;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchWithIndirectThreadCountExtended(a1, Pipeline, v23 + 16, v24, &v50, 1, 0, 1);
  if (a3)
  {
    v25 = [a3 count];
    if ([a3 count] < 2)
    {
      v26 = 4;
    }

    else
    {
      v26 = 4 * [a3 count];
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v50, a1, v26, 0);
    if (v25)
    {
      v27 = 0;
      v28 = *(&v50 + 1);
      do
      {
        *(v28 + 4 * v27) = *([a3 objectAtIndexedSubscript:v27] + 360);
        ++v27;
      }

      while (v25 != v27);
    }

    v29 = v50;
    v30 = *(&v51 + 1);
    v31 = *(a1 + 16);
    *(v31 + 26544) = v50;
    *(*(v31 + 22488) + 136) = v29;
    *(v31 + 22640) = v30;
    *(v31 + 27560) |= 0x20000uLL;
    *(v31 + 27592) |= 1u;
    v32 = [a3 count];
    v33 = v32;
    if (v32 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = v32;
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v50, a1, 8 * v34, 0);
    if (v33)
    {
      v35 = 0;
      v36 = *(&v50 + 1);
      do
      {
        v37 = [a3 objectAtIndexedSubscript:v35];
        v38 = [objc_msgSend(v37 "buffer")];
        *(v36 + 8 * v35++) = [v37 bufferOffset] + v38;
      }

      while (v33 != v35);
    }

    v39 = v50;
    v40 = *(&v51 + 1);
    v41 = *(a1 + 16);
    *(v41 + 26552) = v50;
    v42 = *(v41 + 22488);
    *(v42 + 144) = v39;
    *(v41 + 22648) = v40;
    v43 = *(v41 + 27592);
    *(v41 + 27560) |= 0x40000uLL;
    LODWORD(v39) = v43 | 1;
    v44 = *a2;
    v45 = a2[3];
    *(v41 + 26448) = *a2;
    *(v42 + 40) = v44;
    *(v41 + 22544) = v45;
    *(v41 + 27560) |= 0x20uLL;
    *(v41 + 27592) = v39;
    v46 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 28, 0);
    v50 = 0u;
    v51 = 0u;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchWithIndirectThreadCountExtended(a1, v46, v19, v20, &v50, 1, 0, 1);
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeSerialize_impl(uint64_t *a1, void *a2, void *a3, void *a4)
{
  v44 = 0uLL;
  *&v45 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v44, a1, 40, 1);
  v8 = v44;
  v9 = v45;
  *(v44 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *v8 = *a2;
  *(v8 + 8) = *a4;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen(void)::riaBvhGenOverride = 0;
  }

  v10 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen(void)::riaBvhGenOverride;
  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen(void)::riaBvhGenOverride <= 0)
  {
    v10 = 3;
  }

  *(v8 + 28) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::kBvhChipCodes[v10];
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getVersionToEncode(BOOL,BOOL,BOOL)::gen = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen();
  }

  *(v8 + 32) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::kBvhVersions[AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getVersionToEncode(BOOL,BOOL,BOOL)::gen] & 0x1FFFFFFF;
  *(v8 + 36) = 0;
  v11 = a1[2];
  *(v11 + 26576) = *(&v8 + 1);
  v40 = *(&v8 + 1);
  *(*(v11 + 22488) + 168) = *(&v8 + 1);
  *(v11 + 22672) = v9;
  *(v11 + 27560) |= 0x200000uLL;
  *(v11 + 27592) |= 1u;
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 175, 0);
  v13 = a1[2];
  *(v13 + 2060) |= 4u;
  v14 = *(v13 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v13, Pipeline);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v13, 0x16u, qword_29D2F5330, qword_29D2F5330);
  if (*(v13 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v13, 22, 0, 0);
  }

  if (v14)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v13, v14);
  }

  v15 = a1[2];
  if (*(v15 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(a1[2], 22, 0, 0);
    *(v15 + 2306) = 0;
    if (*(v15 + 2292) == 1 && !*(v15 + 27624))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v15, 22, (v15 + 28192), (v15 + 28200), (v15 + 28208));
    }
  }

  v16 = v9;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeSerialize_impl(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,NSArray<objc_object  {objcproto24MTLAccelerationStructure}*> *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BOOL)::numBytesPerThread = 16;
  }

  v17 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeSerialize_impl(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,NSArray<objc_object  {objcproto24MTLAccelerationStructure}*> *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BOOL)::numBytesPerThread;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v41, a1, 4, 1);
  v18 = v42;
  v19 = v43;
  *&v44 = v42;
  *(&v44 + 1) = v41;
  *&v45 = 4;
  *(&v45 + 1) = v43;
  *v41 = v17;
  v20 = *a4;
  v21 = a4[2];
  v22 = v20 + 24;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v41, a1, 40, 0);
  v23 = v41;
  v24 = v42;
  v25 = v43;
  v26 = a2[2];
  *v41 = *a2;
  *(v23 + 1) = v26;
  *(v23 + 2) = v22;
  *(v23 + 3) = v21;
  *(v23 + 4) = 0;
  v27 = a1[2];
  *(v27 + 26504) = v24;
  v28 = *(v27 + 22488);
  *(v28 + 96) = v24;
  *(v27 + 22600) = v25;
  *(v27 + 27560) |= 0x1000uLL;
  LODWORD(v25) = *(v27 + 27592) | 1;
  *(v27 + 26536) = v18;
  *(v28 + 128) = v18;
  *(v27 + 22632) = v19;
  *(v27 + 27560) |= 0x10000uLL;
  *(v27 + 27592) = v25;
  v29 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 124, 0);
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchWithIndirectThreadCountExtended(a1, v29, *a2 + 72, a2[3], &v44, AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeSerialize_impl(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,NSArray<objc_object  {objcproto24MTLAccelerationStructure}*> *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,BOOL)::numBytesPerThread, 0, 1);
  v30 = a1[2];
  *(v30 + 26576) = *(&v8 + 1);
  *(*(v30 + 22488) + 168) = *(&v8 + 1);
  *(v30 + 22672) = v16;
  *(v30 + 27560) |= 0x200000uLL;
  *(v30 + 27592) |= 1u;
  if (*(v30 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v30, 22, 0, 0);
    *(v30 + 2306) = 0;
    if (*(v30 + 2292) == 1 && !*(v30 + 27624))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v30, 22, (v30 + 28192), (v30 + 28200), (v30 + 28208));
    }
  }

  v31 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 178, 0);
  v32 = a1[2];
  *(v32 + 2060) |= 4u;
  v33 = *(v32 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v32, v31);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v32, 0x16u, qword_29D2F5330, qword_29D2F5330);
  if (*(v32 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v32, 22, 0, 0);
  }

  if (v33)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v32, v33);
  }

  if (atomic_load_explicit((*(*a1 + 848) + 10188), memory_order_acquire) - 1 > 0xFFFFFFFD)
  {
    v36 = 4;
  }

  else
  {
    explicit = atomic_load_explicit((*(*a1 + 848) + 10188), memory_order_acquire);
    if (explicit)
    {
      v35 = explicit + 1;
    }

    else
    {
      v35 = 0;
    }

    v36 = 4 * v35;
  }

  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v44, a1, v36, 0);
  v37 = *(&v44 + 1);
  if ([a3 count])
  {
    v38 = 0;
    do
    {
      *(v37 + 4 * *([a3 objectAtIndexedSubscript:{v38, v40}] + 360)) = v38;
      ++v38;
    }

    while (v38 < [a3 count]);
  }

  *(v8 + 16) = v44;
  v39 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 123, 0);
  v44 = 0u;
  v45 = 0u;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchWithIndirectThreadCountExtended(a1, v39, *(&v8 + 1) + 24, v16, &v44, 1, 0, 1);
}

uint64_t ProgressBinsGetPrimitiveCountFromDescriptor(MTLAccelerationStructureDescriptor *a1)
{
  v26 = *MEMORY[0x29EDCA608];
  if (([(MTLAccelerationStructureDescriptor *)a1 isInstanceDescriptor]& 1) == 0)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = [(MTLAccelerationStructureDescriptor *)a1 geometryDescriptors];
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    v7 = 0;
    v8 = *v22;
LABEL_9:
    v9 = 0;
    while (1)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(&v21 + 1) + 8 * v9);
      v12 = objc_opt_class();
      if ([v12 isSubclassOfClass:objc_opt_class()])
      {
        v10 = [v11 triangleCount];
      }

      else
      {
        v13 = objc_opt_class();
        if ([v13 isSubclassOfClass:objc_opt_class()])
        {
          v10 = [v11 boundingBoxCount];
        }

        else
        {
          v14 = objc_opt_class();
          if ([v14 isSubclassOfClass:objc_opt_class()])
          {
            v15 = [v11 triangleCount];
            v16 = [v11 vertexBuffers];
LABEL_22:
            v7 += [v16 count] * v15;
            goto LABEL_12;
          }

          v17 = objc_opt_class();
          if ([v17 isSubclassOfClass:objc_opt_class()])
          {
            v15 = [v11 boundingBoxCount];
            v16 = [v11 boundingBoxBuffers];
            goto LABEL_22;
          }

          v18 = objc_opt_class();
          if (![v18 isSubclassOfClass:objc_opt_class()])
          {
            v19 = objc_opt_class();
            if (![v19 isSubclassOfClass:objc_opt_class()])
            {
              goto LABEL_12;
            }

            v15 = [v11 segmentCount];
            v16 = [v11 controlPointBuffers];
            goto LABEL_22;
          }

          v10 = [v11 segmentCount];
        }
      }

      v7 += v10;
LABEL_12:
      if (v6 == ++v9)
      {
        v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (!v6)
        {
          return v7;
        }

        goto LABEL_9;
      }
    }
  }

  v2 = objc_opt_class();
  if ([v2 isSubclassOfClass:objc_opt_class()])
  {

    return [(MTLAccelerationStructureDescriptor *)a1 instanceCount];
  }

  v20 = objc_opt_class();
  if ([v20 isSubclassOfClass:objc_opt_class()])
  {

    return [(MTLAccelerationStructureDescriptor *)a1 maxInstanceCount];
  }

  return 0;
}

AGX::BVHDescriptor *AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::newBVHDescriptor(AGX::BVHDescriptor *a1, void *a2, MTLAccelerationStructureDescriptor *a3)
{
  v3 = a3;
  v4 = a2;
  v5 = &unk_2A179F000;
  {
    v20 = a1;
    v18 = a3;
    v5 = &unk_2A179F000;
    v4 = a2;
    v3 = v18;
    v12 = v11;
    a1 = v20;
    if (v12)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen(void)::riaBvhGenOverride = 0;
      v5 = &unk_2A179F000;
      a1 = v20;
      v4 = a2;
      v3 = v18;
    }
  }

  v6 = v5[884];
  {
    v21 = a1;
    v19 = v3;
    v17 = v4;
    v15 = v6;
    v6 = v15;
    v4 = v17;
    v3 = v19;
    v14 = v13;
    a1 = v21;
    if (v14)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getBuilderAlgorithm(void)::riaBvhGen = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen();
      v6 = v15;
      a1 = v21;
      v4 = v17;
      v3 = v19;
    }
  }

  if (v6 <= 0)
  {
    v8 = 3;
  }

  else
  {
    v8 = v6;
  }

  if (v7[248] == 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  return AGX::BVHDescriptor::BVHDescriptor(a1, v8, v9, v4, v3);
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::newResourceBuffer(uint64_t *a1, uint64_t a2, uint64_t a3, MTLAccelerationStructureDescriptor *a4, uint64_t *a5)
{
  v8 = a2;
  v10 = *(a3 + 40);
  if (!v10)
  {
    v12 = 144;
    goto LABEL_14;
  }

  if ((~*(a3 + 15) & 0x820) == 0)
  {
    v11 = *(a3 + 18);
    if (v11 > 2)
    {
      if (v11 == 4 || v11 == 3)
      {
        goto LABEL_11;
      }
    }

    else if (v11 < 2)
    {
      goto LABEL_11;
    }

    if ((v11 & 0xFE) != 6)
    {
      v14 = 2 * *(a3 + 160);
      goto LABEL_12;
    }

LABEL_11:
    v14 = *(a3 + 160);
LABEL_12:
    v13 = 16 * v14 + 144;
    goto LABEL_13;
  }

  v13 = 144;
LABEL_13:
  v12 = v13 * v10;
LABEL_14:
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(a1, a2, v12, 0);
  if (!*(v8 + 51))
  {
    v8 = 0;
  }

  if (*(a3 + 40))
  {
    v17 = a1;
    v15 = *a1;
    v16 = v17[1];
    v18 = *a5;
    v19 = [(MTLAccelerationStructureDescriptor *)a4 type];
    if (v19 - 3 < 3)
    {

      AGX::BVHDescriptor::setResourceBufferContentsImplMTL4(a3, a4, v16, v18);
    }

    else if (v19 <= 2)
    {

      AGX::BVHDescriptor::setResourceBufferContentsImplMTL3(a3, a4, v16, v15, v18, v8);
    }
  }
}

void AGX::BVHDescriptor::isRefittable(AGX::BVHDescriptor *this)
{
  {
    AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
  }

  {
    AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
  }
}

uint64_t isQTBEnabled(unsigned int a1, const AGX::BVHDescriptor *a2, int a3, int a4)
{
  {
    v12 = a1;
    v15 = a4;
    v10 = a3;
    v11 = a2;
    a2 = v11;
    a3 = v10;
    v7 = v6;
    a1 = v12;
    a4 = v15;
    if (v7)
    {
      a1 = v12;
      a4 = v15;
      a2 = v11;
      a3 = v10;
    }
  }

  if (a1 >= 2)
  {
    if (*(a2 + 18))
    {
      v5 = *(a2 + 18) == 3;
    }

    else
    {
      v5 = 1;
    }

    result = v5;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    result = 0;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  {
    v13 = result;
    v16 = a4;
    result = v13;
    a4 = v16;
    if (v8)
    {
      result = v13;
      a4 = v16;
    }
  }

LABEL_13:
  {
    v14 = result;
    result = v14;
    if (v9)
    {
      return v14;
    }
  }

  return result;
}

void AGX::BVHDescriptor::setResourceBufferContentsImplMTL3(AGX::BVHDescriptor *this, MTLAccelerationStructureDescriptor *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v318 = a6;
  v311 = a4;
  v314 = a3;
  v321 = *MEMORY[0x29EDCA608];
  v6 = *(this + 10);
  if (!v6)
  {
    return;
  }

  v7 = a2;
  v8 = this;
  v9 = *(this + 40);
  v310 = 144 * v6;
  v10 = *(this + 18);
  v316 = this;
  if (v10 > 3)
  {
    if (v10 > 5)
    {
      if (v10 == 6)
      {
        if (v318)
        {
          v313 = a5;
          if (v6 > 0x20)
          {
            v17 = malloc_type_malloc(16 * v6, 0x80040B8603338uLL);
          }

          else
          {
            MEMORY[0x2A1C7C4A8](this);
            v17 = (&v303 - ((v44 + 15) & 0x1FFFFFFFF0));
            bzero(v17, v44);
          }

          v149 = [(MTLAccelerationStructureDescriptor *)v7 instanceDescriptorBuffer];
          if (v149)
          {
            *v17 = v149;
            v45 = 1;
          }

          else
          {
            v45 = 0;
          }

          v268 = [(MTLAccelerationStructureDescriptor *)v7 motionTransformBuffer];
          if (v268)
          {
            v17[v45++] = v268;
          }

          v269 = [(MTLAccelerationStructureDescriptor *)v7 instancedAccelerationStructures];
          if (v269)
          {
            v270 = v269;
            v311 = v45;
            v312 = v7;
            v304 = v6;
            memset(v319, 0, sizeof(v319));
            v271 = [v269 countByEnumeratingWithState:v319 objects:v320 count:16];
            if (v271)
            {
              v273 = v271;
              v274 = MEMORY[0x29EDC5638];
              v315 = v17;
              v317 = v270;
              do
              {
                if (v273)
                {
                  v276 = 0;
                  v277 = *(&v319[0] + 1);
                  v278 = v318[2];
                  do
                  {
                    v279 = v277[v276];
                    if (v279 && *(v279 + *v274 + 16) >> 61 == 3)
                    {
                      v280 = *(v279 + 312);
                      IOGPUResourceListAddResource();
                      v281 = *(v280 + 64);
                      v282 = *(v280 + 72);
                      while (v281 != v282)
                      {
                        if (*v281)
                        {
                          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v281);
                          IOGPUResourceListAddResource();
                        }

                        v281 += 2;
                      }
                    }

                    ++v276;
                  }

                  while (v276 != v273);
                  AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourcesCommon(v278, v277, v273, v272, 1, 1);
                  v17 = v315;
                  v270 = v317;
                }

                v275 = [v270 countByEnumeratingWithState:v319 objects:v320 count:16];
                v273 = v275;
              }

              while (v275);
            }

            a5 = v313;
            LODWORD(v6) = v304;
            v8 = v316;
            v7 = v312;
            v45 = v311;
          }

          else
          {
            a5 = v313;
          }
        }

        else
        {
          v17 = 0;
          v45 = 0;
        }

        v283 = (*(v8 + 15) & 1) == 0;
        v284 = v314;
        *(v314 + 7) = 0u;
        *(v284 + 8) = 0u;
        if (v283)
        {
          v285 = 24;
        }

        else
        {
          v285 = 56;
        }

        *(v284 + 5) = 0uLL;
        *(v284 + 6) = 0uLL;
        *(v284 + 3) = 0uLL;
        *(v284 + 4) = 0uLL;
        *(v284 + 1) = 0uLL;
        *(v284 + 2) = 0uLL;
        *v284 = 0uLL;
        *(v284 + 1) = a5;
        *(v284 + 15) = v285;
        *(v284 + 23) = [(MTLAccelerationStructureDescriptor *)v7 instanceCount];
        if (!v318)
        {
          return;
        }

        if (!v45)
        {
          goto LABEL_378;
        }

        v287 = v318[2];
        v288 = *v17;
        if (*v17 && *(v288 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
        {
          AGX::UserIntersectionFunctionTableGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResources(*(v288 + 312));
        }

        if (v45 != 1)
        {
          v289 = v17[1];
          if (v289)
          {
            if (*(v289 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
            {
              AGX::UserIntersectionFunctionTableGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResources(*(v289 + 312));
            }
          }
        }

        v290 = v287;
        v291 = v17;
        v292 = v45;
      }

      else
      {
        if (v10 != 7)
        {
          return;
        }

        if (v318)
        {
          v28 = a5;
          if (v6 > 0x20)
          {
            v17 = malloc_type_malloc(32 * v6, 0x80040B8603338uLL);
          }

          else
          {
            MEMORY[0x2A1C7C4A8](this);
            v17 = (&v303 - ((v29 + 15) & 0x3FFFFFFFF0));
            bzero(v17, v29);
          }

          v264 = [(MTLAccelerationStructureDescriptor *)v7 instanceCountBuffer];
          if (v264)
          {
            *v17 = v264;
            v46 = 1;
          }

          else
          {
            v46 = 0;
          }

          v293 = [(MTLAccelerationStructureDescriptor *)v7 instanceDescriptorBuffer];
          if (v293)
          {
            v17[v46++] = v293;
          }

          v294 = [(MTLAccelerationStructureDescriptor *)v7 motionTransformCountBuffer];
          if (v294)
          {
            v17[v46++] = v294;
          }

          v295 = [(MTLAccelerationStructureDescriptor *)v7 motionTransformBuffer];
          if (v295)
          {
            v17[v46++] = v295;
          }

          a5 = v28;
        }

        else
        {
          v17 = 0;
          v46 = 0;
        }

        v283 = (*(v8 + 15) & 1) == 0;
        v296 = v314;
        *(v314 + 7) = 0u;
        *(v296 + 8) = 0u;
        v297 = v283 ? 24 : 56;
        *(v296 + 5) = 0uLL;
        *(v296 + 6) = 0uLL;
        *(v296 + 3) = 0uLL;
        *(v296 + 4) = 0uLL;
        *(v296 + 1) = 0uLL;
        *(v296 + 2) = 0uLL;
        *v296 = 0uLL;
        *(v296 + 1) = a5;
        *(v296 + 15) = v297;
        *(v296 + 23) = [(MTLAccelerationStructureDescriptor *)v7 maxInstanceCount];
        if (!v318)
        {
          return;
        }

        if (!v46)
        {
          goto LABEL_378;
        }

        v298 = v318[2];
        v299 = *v17;
        if (*v17 && *(v299 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
        {
          AGX::UserIntersectionFunctionTableGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResources(*(v299 + 312));
        }

        if (v46 != 1)
        {
          v300 = v17[1];
          if (v300 && *(v300 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
          {
            AGX::UserIntersectionFunctionTableGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResources(*(v300 + 312));
          }

          if (v46 != 2)
          {
            v301 = v17[2];
            if (v301 && *(v301 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
            {
              AGX::UserIntersectionFunctionTableGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResources(*(v301 + 312));
            }

            if (v46 != 3)
            {
              v302 = v17[3];
              if (v302)
              {
                if (*(v302 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
                {
                  AGX::UserIntersectionFunctionTableGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResources(*(v302 + 312));
                }
              }
            }
          }
        }

        v290 = v298;
        v291 = v17;
        v292 = v46;
      }

      AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourcesCommon(v290, v291, v292, v286, 1, 1);
      goto LABEL_378;
    }

    if (v10 == 4)
    {
      v34 = [(MTLAccelerationStructureDescriptor *)a2 geometryDescriptors];
      v309 = v34;
      if (v9 <= 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = v9;
      }

      v36 = *(v8 + 10);
      if (v318)
      {
        v37 = 8 * v36 * (v35 + 1);
        if (v6 > 0x20)
        {
          v315 = malloc_type_malloc(v37, 0x80040B8603338uLL);
          if (!*(v8 + 10))
          {
            goto LABEL_384;
          }
        }

        else
        {
          MEMORY[0x2A1C7C4A8](v34);
          v315 = &v303 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v315, v38);
          if (!v36)
          {
            goto LABEL_384;
          }
        }
      }

      else
      {
        if (!v36)
        {
          return;
        }

        v315 = 0;
      }

      v304 = v6;
      v78 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v312 = 16 * v9;
      v82 = &v314[v310];
      v83 = v315;
      do
      {
        v90 = [v309 objectAtIndexedSubscript:v78];
        v91 = v90;
        v92 = &v314[144 * v78];
        v317 = v80;
        LODWORD(v313) = v81;
        if (v9 < 2)
        {
          if (v9 == 1)
          {
            v98 = [objc_msgSend(v90 "boundingBoxBuffers")];
            v99 = [objc_msgSend(v98 "buffer")];
            *(v92 + 1) = [v98 offset] + v99;
            if (v318)
            {
              *&v83[8 * v79++] = [v98 buffer];
            }
          }
        }

        else
        {
          if (v318)
          {
            v93 = 0;
            v308 = v79;
            v94 = &v83[8 * v79];
            v95 = v82;
            do
            {
              v96 = [objc_msgSend(v91 "boundingBoxBuffers")];
              v97 = [objc_msgSend(v96 "buffer")];
              *v95 = [v96 offset] + v97;
              v95 += 16;
              *&v94[8 * v93++] = [v96 buffer];
            }

            while (v9 != v93);
            v79 = v308 + v93;
          }

          else
          {
            v100 = 0;
            for (i = 0; i != v9; ++i)
            {
              v102 = [objc_msgSend(v91 "boundingBoxBuffers")];
              v103 = [objc_msgSend(v102 "buffer")];
              *&v82[v100] = [v102 offset] + v103;
              v100 += 16;
            }
          }

          *(v92 + 1) = v310 + v312 * v78 + v311;
          v83 = v315;
        }

        *(v92 + 15) = [v91 boundingBoxStride];
        *(v92 + 23) = [v91 boundingBoxCount];
        *(v92 + 25) = [v91 opaque];
        *(v92 + 24) = [v91 intersectionFunctionTableOffset];
        v104 = [v91 primitiveDataBuffer];
        if (v104)
        {
          v106 = v104;
          v107 = [objc_msgSend(v91 "primitiveDataBuffer")];
          *(v92 + 14) = [v91 primitiveDataBufferOffset] + v107;
          v84 = [v91 primitiveDataStride];
          LODWORD(v104) = [v91 primitiveDataElementSize];
          if (v318)
          {
            *&v83[8 * v79++] = v106;
          }

          v86 = v317;
          v87 = v313;
          v85 = 1 << -__clz(v104 - 1);
          if (v104 > 0x10)
          {
            v85 = 32;
          }

          if (v104 < 2)
          {
            v85 = 1;
          }
        }

        else
        {
          v84 = 0;
          *(v92 + 14) = 0;
          v85 = 1;
          v86 = v317;
          v87 = v313;
        }

        v88 = (v104 + v85 - 1) & -v85;
        v89 = *(v92 + 23);
        *(v92 + 15) = v86;
        v80 = &v86[(v89 * v88 + 31) & 0xFFFFFFFFFFFFFFE0];
        *(v92 + 32) = v84;
        *(v92 + 33) = v104;
        *(v92 + 26) = v88;
        *(v92 + 27) = v87;
        v81 = v89 + v87;
        ++v78;
        v82 += v312;
      }

      while (v78 < *(v316 + 10));
      LODWORD(v6) = v304;
      if (!v318)
      {
        return;
      }

      if (!v79 || !v79)
      {
        goto LABEL_384;
      }

      v108 = 0;
      v109 = v318[2];
      LODWORD(v110) = v79;
      v111 = v79;
      v112 = MEMORY[0x29EDC5638];
      do
      {
        v113 = *&v315[8 * v108];
        if (v113 && *(v113 + *v112 + 16) >> 61 == 3)
        {
          v114 = *(v113 + 312);
          IOGPUResourceListAddResource();
          v115 = *(v114 + 64);
          v116 = *(v114 + 72);
          while (v115 != v116)
          {
            if (*v115)
            {
              AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v115);
              IOGPUResourceListAddResource();
            }

            v115 += 2;
          }
        }

        ++v108;
      }

      while (v108 != v111);
LABEL_314:
      v265 = v109;
      v266 = v315;
      v267 = v110;
      goto LABEL_383;
    }

    v18 = [(MTLAccelerationStructureDescriptor *)a2 geometryDescriptors];
    v306 = v18;
    if (v9 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v9;
    }

    v20 = *(v8 + 10);
    if (v318)
    {
      v21 = 8 * v20 * (2 * v19 + 2);
      if (v6 > 0x20)
      {
        v315 = malloc_type_malloc(v21, 0x80040B8603338uLL);
        if (!*(v8 + 10))
        {
          goto LABEL_384;
        }
      }

      else
      {
        MEMORY[0x2A1C7C4A8](v18);
        v315 = &v303 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v315, v22);
        if (!v20)
        {
          goto LABEL_384;
        }
      }
    }

    else
    {
      if (!v20)
      {
        return;
      }

      v315 = 0;
    }

    v304 = v6;
    v169 = 0;
    v170 = 0;
    v171 = 0;
    v172 = 0;
    v173 = 0;
    v307 = 32 * v9;
    v305 = 16 * v9;
    if (v9 <= 1)
    {
      v174 = 1;
    }

    else
    {
      v174 = v9;
    }

    v317 = v174;
    v175 = &v314[v310];
    v176 = v315;
    while (1)
    {
      LODWORD(v308) = v173;
      v309 = v172;
      v185 = [v306 objectAtIndexedSubscript:v170];
      v186 = v185;
      v187 = &v314[144 * v170];
      LODWORD(v313) = v169;
      v312 = v170;
      if (v9 >= 2)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_232;
      }

      v193 = [objc_msgSend(v185 "controlPointBuffers")];
      v194 = [objc_msgSend(v193 "buffer")];
      *(v187 + 2) = [v193 offset] + v194;
      if (v318)
      {
        *&v176[8 * v171++] = [v193 buffer];
      }

      v195 = [objc_msgSend(v186 "radiusBuffers")];
      v196 = [objc_msgSend(v195 "buffer")];
      *(v187 + 3) = [v195 offset] + v196;
      if (v318)
      {
        *&v176[8 * v171++] = [v195 buffer];
LABEL_232:
        v205 = [objc_msgSend(v186 "indexBuffer")];
        *(v187 + 4) = [v186 indexBufferOffset] + v205;
        if (v318)
        {
          *&v176[8 * v171++] = [v186 indexBuffer];
        }

        goto LABEL_234;
      }

      v213 = [objc_msgSend(v186 "indexBuffer")];
      *(v187 + 4) = [v186 indexBufferOffset] + v213;
LABEL_234:
      *(v187 + 19) = [v186 controlPointFormat];
      v187[80] = [v186 radiusFormat];
      v206 = [v186 controlPointStride];
      if (!v206)
      {
        LODWORD(v206) = MTLAttributeFormatSize(*(v187 + 19));
      }

      *(v187 + 17) = v206;
      v207 = [v186 radiusStride];
      if (!v207)
      {
        LODWORD(v207) = MTLAttributeFormatSize(v187[80]);
      }

      *(v187 + 18) = v207;
      *(v187 + 21) = v169;
      v208 = [v186 controlPointCount];
      *(v187 + 34) = v208;
      v187[81] = [v186 curveBasis];
      *(v187 + 22) = [v186 segmentControlPointCount];
      v187[82] = [v186 curveType];
      v187[83] = [v186 curveEndCaps];
      if ([v186 indexType])
      {
        v209 = 64;
      }

      else
      {
        v209 = 32;
      }

      v187[67] = v209 & 0xF0 | v187[67] & 0xF;
      *(v187 + 23) = [v186 segmentCount];
      *(v187 + 25) = [v186 opaque];
      *(v187 + 24) = [v186 intersectionFunctionTableOffset];
      v210 = [v186 primitiveDataBuffer];
      if (v210)
      {
        v211 = v210;
        v212 = [objc_msgSend(v186 "primitiveDataBuffer")];
        *(v187 + 14) = [v186 primitiveDataBufferOffset] + v212;
        v177 = [v186 primitiveDataStride];
        LODWORD(v210) = [v186 primitiveDataElementSize];
        if (v318)
        {
          *&v176[8 * v171++] = v211;
        }

        v179 = v313;
        v180 = v312;
        v181 = v309;
        v182 = v308;
        v178 = 1 << -__clz(v210 - 1);
        if (v210 > 0x10)
        {
          v178 = 32;
        }

        if (v210 < 2)
        {
          v178 = 1;
        }
      }

      else
      {
        v177 = 0;
        *(v187 + 14) = 0;
        v178 = 1;
        v179 = v313;
        v180 = v312;
        v181 = v309;
        v182 = v308;
      }

      v169 = v179 + v9 * v208;
      v183 = (v210 + v178 - 1) & -v178;
      v184 = *(v187 + 23);
      *(v187 + 15) = v181;
      v172 = &v181[(v184 * v183 + 31) & 0xFFFFFFFFFFFFFFE0];
      *(v187 + 32) = v177;
      *(v187 + 33) = v210;
      *(v187 + 26) = v183;
      *(v187 + 27) = v182;
      v173 = v184 + v182;
      v170 = v180 + 1;
      v175 += v307;
      if (v170 >= *(v316 + 10))
      {
        LODWORD(v6) = v304;
        if (!v318)
        {
          return;
        }

        if (v171 && v171)
        {
          v214 = 0;
          v215 = v318[2];
          v216 = MEMORY[0x29EDC5638];
          do
          {
            v217 = *&v315[8 * v214];
            if (v217 && *(v217 + *v216 + 16) >> 61 == 3)
            {
              v218 = *(v217 + 312);
              IOGPUResourceListAddResource();
              v219 = *(v218 + 64);
              v220 = *(v218 + 72);
              while (v219 != v220)
              {
                if (*v219)
                {
                  AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v219);
                  IOGPUResourceListAddResource();
                }

                v219 += 2;
              }
            }

            ++v214;
          }

          while (v214 != v171);
          v265 = v215;
          v266 = v315;
          v267 = v171;
LABEL_383:
          AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourcesCommon(v265, v266, v267, v105, 1, 1);
          LODWORD(v6) = v304;
        }

LABEL_384:
        v17 = v315;
        if (v6 >= 0x21)
        {
          goto LABEL_379;
        }

        return;
      }
    }

    if (v318)
    {
      v188 = 0;
      v189 = &v176[8 * v171];
      v190 = v175;
      do
      {
        v191 = [objc_msgSend(v186 "controlPointBuffers")];
        v192 = [objc_msgSend(v191 "buffer")];
        *v190 = [v191 offset] + v192;
        v190 += 16;
        *&v189[8 * v188++] = [v191 buffer];
      }

      while (v9 != v188);
      v171 += v188;
    }

    else
    {
      v197 = 0;
      for (j = 0; j != v9; ++j)
      {
        v199 = [objc_msgSend(v186 "controlPointBuffers")];
        v200 = [objc_msgSend(v199 "buffer")];
        *&v175[v197] = [v199 offset] + v200;
        v197 += 16;
      }
    }

    v201 = 0;
    *(v187 + 2) = v310 + v307 * v312 + v311;
    v202 = v305;
    v176 = v315;
    do
    {
      v203 = [objc_msgSend(v186 "radiusBuffers")];
      v204 = [objc_msgSend(v203 "buffer")];
      *&v175[v202] = [v203 offset] + v204;
      if (v318)
      {
        *&v176[8 * v171++] = [v203 buffer];
      }

      ++v201;
      v202 += 16;
    }

    while (v317 != v201);
    *(v187 + 3) = *(v187 + 2) + v305;
    v169 = v313;
    goto LABEL_232;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      v23 = [(MTLAccelerationStructureDescriptor *)a2 geometryDescriptors];
      v309 = v23;
      if (v9 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v9;
      }

      v25 = *(v8 + 10);
      if (v318)
      {
        v26 = 8 * v25 * (v24 + 3);
        if (v6 > 0x20)
        {
          v315 = malloc_type_malloc(v26, 0x80040B8603338uLL);
          if (!*(v8 + 10))
          {
            goto LABEL_384;
          }
        }

        else
        {
          MEMORY[0x2A1C7C4A8](v23);
          v315 = &v303 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v315, v27);
          if (!v25)
          {
            goto LABEL_384;
          }
        }
      }

      else
      {
        if (!v25)
        {
          return;
        }

        v315 = 0;
      }

      v304 = v6;
      v221 = 0;
      v6 = 0;
      v222 = 0;
      v223 = 0;
      v312 = 16 * v9;
      v224 = &v314[v310];
      v225 = v315;
      do
      {
        LODWORD(v313) = v223;
        v317 = v222;
        v232 = [v309 objectAtIndexedSubscript:v221];
        v233 = v232;
        v234 = &v314[144 * v221];
        if (v9 < 2)
        {
          if (v9 == 1)
          {
            v240 = [objc_msgSend(v232 "vertexBuffers")];
            v241 = [objc_msgSend(v240 "buffer")];
            *v234 = [v240 offset] + v241;
            if (v318)
            {
              *&v225[8 * v6++] = [v240 buffer];
            }
          }
        }

        else
        {
          if (v318)
          {
            v235 = 0;
            v308 = v6;
            v236 = &v225[8 * v6];
            v237 = v224;
            do
            {
              v238 = [objc_msgSend(v233 "vertexBuffers")];
              v239 = [objc_msgSend(v238 "buffer")];
              *v237 = [v238 offset] + v239;
              v237 += 16;
              *&v236[8 * v235++] = [v238 buffer];
            }

            while (v9 != v235);
            v6 = v308 + v235;
          }

          else
          {
            v242 = 0;
            for (k = 0; k != v9; ++k)
            {
              v244 = [objc_msgSend(v233 "vertexBuffers")];
              v245 = [objc_msgSend(v244 "buffer")];
              *&v224[v242] = [v244 offset] + v245;
              v242 += 16;
            }
          }

          *v234 = v310 + v312 * v221 + v311;
          v225 = v315;
        }

        v246 = [v233 indexBuffer];
        if (v246)
        {
          v247 = v246;
          v248 = [v246 gpuAddress];
          *(v234 + 4) = [v233 indexBufferOffset] + v248;
          if ([v233 indexType] == 1)
          {
            v249 = 4;
          }

          else
          {
            v249 = 2;
          }

          if (v318)
          {
            *&v225[8 * v6++] = v247;
          }
        }

        else
        {
          v249 = 0;
          *(v234 + 4) = 0;
        }

        v234[67] = v234[67] & 0xF | (16 * v249);
        v250 = [v233 vertexStride];
        v251 = [v233 vertexFormat];
        if (!v250)
        {
          LODWORD(v250) = MTLAttributeFormatSize(v251);
        }

        *(v234 + 14) = v250;
        *(v234 + 32) = [v233 vertexFormat];
        v252 = [v233 transformationMatrixBuffer];
        if (v252)
        {
          v253 = v252;
          v254 = [objc_msgSend(v233 "transformationMatrixBuffer")];
          *(v234 + 6) = [v233 transformationMatrixBufferOffset] + v254;
          if (v318)
          {
            *&v225[8 * v6++] = v253;
          }
        }

        else
        {
          *(v234 + 6) = 0;
        }

        *(v234 + 23) = [v233 triangleCount];
        v234[66] = [v233 transformationMatrixLayout] == 1;
        *(v234 + 25) = [v233 opaque];
        *(v234 + 24) = [v233 intersectionFunctionTableOffset];
        v255 = [v233 primitiveDataBuffer];
        if (v255)
        {
          v256 = v255;
          v257 = [objc_msgSend(v233 "primitiveDataBuffer")];
          *(v234 + 14) = [v233 primitiveDataBufferOffset] + v257;
          v226 = [v233 primitiveDataStride];
          LODWORD(v255) = [v233 primitiveDataElementSize];
          if (v318)
          {
            *&v225[8 * v6++] = v256;
          }

          v228 = v317;
          v229 = v313;
          v227 = 1 << -__clz(v255 - 1);
          if (v255 > 0x10)
          {
            v227 = 32;
          }

          if (v255 < 2)
          {
            v227 = 1;
          }
        }

        else
        {
          v226 = 0;
          *(v234 + 14) = 0;
          v227 = 1;
          v228 = v317;
          v229 = v313;
        }

        v230 = (v255 + v227 - 1) & -v227;
        v231 = *(v234 + 23);
        *(v234 + 15) = v228;
        v222 = &v228[(v231 * v230 + 31) & 0xFFFFFFFFFFFFFFE0];
        *(v234 + 32) = v226;
        *(v234 + 33) = v255;
        *(v234 + 26) = v230;
        *(v234 + 27) = v229;
        v223 = v231 + v229;
        ++v221;
        v224 += v312;
      }

      while (v221 < *(v316 + 10));
      v110 = v6;
      LODWORD(v6) = v304;
      if (!v318)
      {
        return;
      }

      if (!v110 || !v110)
      {
        goto LABEL_384;
      }

      v258 = 0;
      v109 = v318[2];
      v259 = MEMORY[0x29EDC5638];
      do
      {
        v260 = *&v315[8 * v258];
        if (v260 && *(v260 + *v259 + 16) >> 61 == 3)
        {
          v261 = *(v260 + 312);
          IOGPUResourceListAddResource();
          v262 = *(v261 + 64);
          v263 = *(v261 + 72);
          while (v262 != v263)
          {
            if (*v262)
            {
              AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v262);
              IOGPUResourceListAddResource();
            }

            v262 += 2;
          }
        }

        ++v258;
      }

      while (v258 != v110);
      goto LABEL_314;
    }

    v39 = [(MTLAccelerationStructureDescriptor *)a2 geometryDescriptors];
    v317 = v39;
    if (v9 <= 1)
    {
      v40 = 1;
    }

    else
    {
      v40 = v9;
    }

    v41 = *(v8 + 10);
    if (v318)
    {
      v42 = 8 * v41 * (2 * v40 + 2);
      if (v6 > 0x20)
      {
        v315 = malloc_type_malloc(v42, 0x80040B8603338uLL);
        if (!*(v8 + 10))
        {
          goto LABEL_384;
        }
      }

      else
      {
        MEMORY[0x2A1C7C4A8](v39);
        v315 = &v303 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v315, v43);
        if (!v41)
        {
          goto LABEL_384;
        }
      }
    }

    else
    {
      if (!v41)
      {
        return;
      }

      v315 = 0;
    }

    v304 = v6;
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 0;
    v122 = v314 + 136;
    while (1)
    {
      v126 = [v317 objectAtIndexedSubscript:v118];
      v127 = [objc_msgSend(v126 "controlPointBuffer")];
      *(v122 - 15) = [v126 controlPointBufferOffset] + v127;
      if (v318)
      {
        v128 = [v126 controlPointBuffer];
        v129 = &v315[8 * v119];
        *v129 = v128;
        v130 = [objc_msgSend(v126 "radiusBuffer")];
        *(v122 - 14) = [v126 radiusBufferOffset] + v130;
        v119 += 2;
        v129[1] = [v126 radiusBuffer];
      }

      else
      {
        v131 = [objc_msgSend(v126 "radiusBuffer")];
        *(v122 - 14) = [v126 radiusBufferOffset] + v131;
      }

      v132 = [objc_msgSend(v126 "indexBuffer")];
      *(v122 - 13) = [v126 indexBufferOffset] + v132;
      if (v318)
      {
        v133 = [v126 indexBuffer];
        *&v315[8 * v119++] = v133;
      }

      *(v122 - 15) = [v126 controlPointFormat];
      *(v122 - 56) = [v126 radiusFormat];
      v134 = [v126 controlPointStride];
      if (!v134)
      {
        LODWORD(v134) = MTLAttributeFormatSize(*(v122 - 15));
      }

      *(v122 - 17) = v134;
      v135 = [v126 radiusStride];
      if (!v135)
      {
        LODWORD(v135) = MTLAttributeFormatSize(*(v122 - 56));
      }

      *(v122 - 16) = v135;
      *(v122 - 13) = v117;
      v136 = [v126 controlPointCount];
      *v122 = v136;
      *(v122 - 55) = [v126 curveBasis];
      *(v122 - 12) = [v126 segmentControlPointCount];
      *(v122 - 54) = [v126 curveType];
      *(v122 - 53) = [v126 curveEndCaps];
      if ([v126 indexType])
      {
        v137 = 64;
      }

      else
      {
        v137 = 32;
      }

      *(v122 - 69) = v137 & 0xF0 | *(v122 - 69) & 0xF;
      *(v122 - 11) = [v126 segmentCount];
      *(v122 - 9) = [v126 opaque];
      *(v122 - 10) = [v126 intersectionFunctionTableOffset];
      v138 = [v126 primitiveDataBuffer];
      if (v138)
      {
        v139 = v138;
        v140 = [objc_msgSend(v126 "primitiveDataBuffer")];
        *(v122 - 3) = [v126 primitiveDataBufferOffset] + v140;
        v141 = [v126 primitiveDataStride];
        LODWORD(v138) = [v126 primitiveDataElementSize];
        if (v318)
        {
          *&v315[8 * v119++] = v139;
        }

        if (v138 >= 2)
        {
          if (v138 <= 0x10)
          {
            v123 = 1 << -__clz(v138 - 1);
          }

          else
          {
            v123 = 32;
          }

          goto LABEL_146;
        }
      }

      else
      {
        v141 = 0;
        *(v122 - 3) = 0;
      }

      v123 = 1;
LABEL_146:
      v117 += v136;
      v124 = (v138 + v123 - 1) & -v123;
      v125 = *(v122 - 11);
      *(v122 - 2) = v120;
      v120 += (v125 * v124 + 31) & 0xFFFFFFFFFFFFFFE0;
      *(v122 - 2) = v141;
      *(v122 - 1) = v138;
      *(v122 - 8) = v124;
      *(v122 - 7) = v121;
      v121 += v125;
      ++v118;
      v122 += 36;
      if (v118 >= *(v316 + 10))
      {
        LODWORD(v6) = v304;
        if (!v318)
        {
          return;
        }

        if (v119 && v119)
        {
          v142 = 0;
          v143 = v318[2];
          v144 = MEMORY[0x29EDC5638];
          do
          {
            v145 = *&v315[8 * v142];
            if (v145 && *(v145 + *v144 + 16) >> 61 == 3)
            {
              v146 = *(v145 + 312);
              IOGPUResourceListAddResource();
              v147 = *(v146 + 64);
              v148 = *(v146 + 72);
              while (v147 != v148)
              {
                if (*v147)
                {
                  AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v147);
                  IOGPUResourceListAddResource();
                }

                v147 += 2;
              }
            }

            ++v142;
          }

          while (v142 != v119);
          v265 = v143;
          v266 = v315;
          v267 = v119;
          goto LABEL_383;
        }

        goto LABEL_384;
      }
    }
  }

  if (!v10)
  {
    v30 = [(MTLAccelerationStructureDescriptor *)a2 geometryDescriptors];
    v31 = v30;
    v32 = *(v8 + 10);
    if (v318)
    {
      if (v6 > 0x20)
      {
        v17 = malloc_type_malloc(32 * v32, 0x80040B8603338uLL);
        if (!*(v8 + 10))
        {
          goto LABEL_378;
        }
      }

      else
      {
        MEMORY[0x2A1C7C4A8](v30);
        v17 = (&v303 - ((v33 + 15) & 0x3FFFFFFFF0));
        bzero(v17, v33);
        if (!v32)
        {
          goto LABEL_378;
        }
      }
    }

    else
    {
      if (!v32)
      {
        return;
      }

      v17 = 0;
    }

    v304 = v6;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = v314 + 66;
    while (1)
    {
      v55 = [v31 objectAtIndexedSubscript:v47];
      v56 = [objc_msgSend(v55 "vertexBuffer")];
      *(v51 - 66) = [v55 vertexBufferOffset] + v56;
      if (v318)
      {
        v17[v48++] = [v55 vertexBuffer];
      }

      v57 = [v55 indexBuffer];
      if (v57)
      {
        v58 = v57;
        v59 = [v57 gpuAddress];
        *(v51 - 34) = [v55 indexBufferOffset] + v59;
        if ([v55 indexType] == 1)
        {
          v60 = 4;
        }

        else
        {
          v60 = 2;
        }

        if (v318)
        {
          v17[v48++] = v58;
        }
      }

      else
      {
        v60 = 0;
        *(v51 - 34) = 0;
      }

      v51[1] = v51[1] & 0xF | (16 * v60);
      v61 = [v55 vertexStride];
      v62 = [v55 vertexFormat];
      if (!v61)
      {
        LODWORD(v61) = MTLAttributeFormatSize(v62);
      }

      *(v51 - 10) = v61;
      *(v51 - 1) = [v55 vertexFormat];
      v63 = [v55 transformationMatrixBuffer];
      if (v63)
      {
        v64 = v63;
        v65 = [objc_msgSend(v55 "transformationMatrixBuffer")];
        *(v51 - 18) = [v55 transformationMatrixBufferOffset] + v65;
        if (v318)
        {
          v17[v48++] = v64;
        }
      }

      else
      {
        *(v51 - 18) = 0;
      }

      *(v51 + 26) = [v55 triangleCount];
      *v51 = [v55 transformationMatrixLayout] == 1;
      *(v51 + 34) = [v55 opaque];
      *(v51 + 30) = [v55 intersectionFunctionTableOffset];
      v66 = [v55 primitiveDataBuffer];
      if (v66)
      {
        v68 = v66;
        v69 = [objc_msgSend(v55 "primitiveDataBuffer")];
        *(v51 + 46) = [v55 primitiveDataBufferOffset] + v69;
        v70 = [v55 primitiveDataStride];
        LODWORD(v66) = [v55 primitiveDataElementSize];
        if (v318)
        {
          v17[v48++] = v68;
        }

        if (v66 >= 2)
        {
          if (v66 <= 0x10)
          {
            v52 = 1 << -__clz(v66 - 1);
          }

          else
          {
            v52 = 32;
          }

          goto LABEL_72;
        }
      }

      else
      {
        v70 = 0;
        *(v51 + 46) = 0;
      }

      v52 = 1;
LABEL_72:
      v53 = (v66 + v52 - 1) & -v52;
      v54 = *(v51 + 26);
      *(v51 + 54) = v49;
      v49 += (v54 * v53 + 31) & 0xFFFFFFFFFFFFFFE0;
      *(v51 + 62) = v70;
      *(v51 + 66) = v66;
      *(v51 + 38) = v53;
      *(v51 + 42) = v50;
      v50 += v54;
      ++v47;
      v51 += 144;
      if (v47 >= *(v316 + 10))
      {
        LODWORD(v6) = v304;
        if (v318)
        {
          if (v48 && v48)
          {
            v71 = 0;
            v72 = v318[2];
            v73 = MEMORY[0x29EDC5638];
            do
            {
              v74 = v17[v71];
              if (v74 && *(v74 + *v73 + 16) >> 61 == 3)
              {
                v75 = *(v74 + 312);
                IOGPUResourceListAddResource();
                v76 = *(v75 + 64);
                v77 = *(v75 + 72);
                while (v76 != v77)
                {
                  if (*v76)
                  {
                    AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v76);
                    IOGPUResourceListAddResource();
                  }

                  v76 += 2;
                }
              }

              ++v71;
            }

            while (v71 != v48);
LABEL_313:
            AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourcesCommon(v72, v17, v48, v67, 1, 1);
            LODWORD(v6) = v304;
          }

LABEL_378:
          if (v6 >= 0x21)
          {
LABEL_379:
            free(v17);
          }
        }

        return;
      }
    }
  }

  v11 = [(MTLAccelerationStructureDescriptor *)a2 geometryDescriptors];
  v12 = v11;
  if (v9 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v9;
  }

  v14 = *(v8 + 10);
  if (v318)
  {
    v15 = 8 * v14 * (v13 + 1);
    if (v6 > 0x20)
    {
      v17 = malloc_type_malloc(v15, 0x80040B8603338uLL);
      if (!*(v8 + 10))
      {
        goto LABEL_378;
      }
    }

    else
    {
      MEMORY[0x2A1C7C4A8](v11);
      v17 = (&v303 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v17, v16);
      if (!v14)
      {
        goto LABEL_378;
      }
    }
  }

  else
  {
    if (!v14)
    {
      return;
    }

    v17 = 0;
  }

  v304 = v6;
  v150 = 0;
  v48 = 0;
  v151 = 0;
  v152 = 0;
  v153 = v314 + 92;
  do
  {
    v158 = [v12 objectAtIndexedSubscript:v150];
    v159 = [objc_msgSend(v158 "boundingBoxBuffer")];
    *(v153 - 84) = [v158 boundingBoxBufferOffset] + v159;
    if (v318)
    {
      v17[v48++] = [v158 boundingBoxBuffer];
    }

    *(v153 - 8) = [v158 boundingBoxStride];
    *v153 = [v158 boundingBoxCount];
    *(v153 + 2) = [v158 opaque];
    *(v153 + 1) = [v158 intersectionFunctionTableOffset];
    v160 = [v158 primitiveDataBuffer];
    if (v160)
    {
      v161 = v160;
      v162 = [objc_msgSend(v158 "primitiveDataBuffer")];
      *(v153 + 20) = [v158 primitiveDataBufferOffset] + v162;
      v154 = [v158 primitiveDataStride];
      LODWORD(v160) = [v158 primitiveDataElementSize];
      if (v318)
      {
        v17[v48++] = v161;
      }

      v155 = 1 << -__clz(v160 - 1);
      if (v160 > 0x10)
      {
        v155 = 32;
      }

      if (v160 < 2)
      {
        v155 = 1;
      }
    }

    else
    {
      v154 = 0;
      *(v153 + 20) = 0;
      v155 = 1;
    }

    v156 = (v160 + v155 - 1) & -v155;
    v157 = *v153;
    *(v153 + 28) = v151;
    v151 += (v157 * v156 + 31) & 0xFFFFFFFFFFFFFFE0;
    *(v153 + 9) = v154;
    *(v153 + 10) = v160;
    *(v153 + 3) = v156;
    *(v153 + 4) = v152;
    v152 += v157;
    ++v150;
    v153 += 144;
  }

  while (v150 < *(v316 + 10));
  LODWORD(v6) = v304;
  if (v318)
  {
    if (v48 && v48)
    {
      v163 = 0;
      v72 = v318[2];
      v164 = MEMORY[0x29EDC5638];
      do
      {
        v165 = v17[v163];
        if (v165 && *(v165 + *v164 + 16) >> 61 == 3)
        {
          v166 = *(v165 + 312);
          IOGPUResourceListAddResource();
          v167 = *(v166 + 64);
          v168 = *(v166 + 72);
          while (v167 != v168)
          {
            if (*v167)
            {
              AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v167);
              IOGPUResourceListAddResource();
            }

            v167 += 2;
          }
        }

        ++v163;
      }

      while (v163 != v48);
      goto LABEL_313;
    }

    goto LABEL_378;
  }
}

uint64_t AGX::BVHDescriptor::setResourceBufferContentsImplMTL4(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (!*(result + 40))
  {
    return result;
  }

  v7 = result;
  result = [a2 type];
  if (result <= 2)
  {
    if (result < 3)
    {
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
    }

    return result;
  }

  if (result == 3)
  {
    v15 = (*(v7 + 15) & 1) == 0;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    if (v15)
    {
      v16 = 24;
    }

    else
    {
      v16 = 56;
    }

    *(a3 + 80) = 0uLL;
    *(a3 + 96) = 0uLL;
    *(a3 + 48) = 0uLL;
    *(a3 + 64) = 0uLL;
    *(a3 + 16) = 0uLL;
    *(a3 + 32) = 0uLL;
    *a3 = 0uLL;
    *(a3 + 8) = a4;
    *(a3 + 60) = v16;
    result = [a2 instanceCount];
    goto LABEL_22;
  }

  if (result == 4)
  {
    v15 = (*(v7 + 15) & 1) == 0;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    if (v15)
    {
      v17 = 24;
    }

    else
    {
      v17 = 56;
    }

    *(a3 + 80) = 0uLL;
    *(a3 + 96) = 0uLL;
    *(a3 + 48) = 0uLL;
    *(a3 + 64) = 0uLL;
    *(a3 + 16) = 0uLL;
    *(a3 + 32) = 0uLL;
    *a3 = 0uLL;
    *(a3 + 8) = a4;
    *(a3 + 60) = v17;
    result = [a2 maxInstanceCount];
LABEL_22:
    *(a3 + 92) = result;
    return result;
  }

  if (result != 5)
  {
    return result;
  }

  v8 = *(v7 + 18);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      result = [a2 geometryDescriptors];
      if (*(v7 + 40))
      {
        v81 = result;
        v82 = 0;
        v83 = 0;
        v84 = 0;
        v85 = a3 + 66;
        do
        {
          v90 = [v81 objectAtIndexedSubscript:v82];
          v91 = [v90 vertexBuffers];
          if (v92)
          {
            v93 = v91;
          }

          else
          {
            v93 = 0;
          }

          *(v85 - 66) = v93;
          v94 = [v90 indexBuffer];
          if (v95)
          {
            v96 = v94;
          }

          else
          {
            v96 = 0;
          }

          *(v85 - 34) = v96;
          if (v96)
          {
            if ([v90 indexType] == 1)
            {
              LOBYTE(v96) = 64;
            }

            else
            {
              LOBYTE(v96) = 32;
            }
          }

          *(v85 + 1) = *(v85 + 1) & 0xF | v96;
          v97 = [v90 vertexStride];
          v98 = [v90 vertexFormat];
          if (!v97)
          {
            LODWORD(v97) = MTLAttributeFormatSize(v98);
          }

          *(v85 - 10) = v97;
          *(v85 - 2) = [v90 vertexFormat];
          v99 = [v90 transformationMatrixBuffer];
          if (v100)
          {
            v101 = v99;
          }

          else
          {
            v101 = 0;
          }

          *(v85 - 18) = v101;
          *(v85 + 26) = [v90 triangleCount];
          *v85 = [v90 transformationMatrixLayout] == 1;
          *(v85 + 34) = [v90 opaque];
          *(v85 + 30) = [v90 intersectionFunctionTableOffset];
          result = [v90 primitiveDataBuffer];
          if (result)
          {
            *(v85 + 46) = result;
            v86 = [v90 primitiveDataStride];
            result = [v90 primitiveDataElementSize];
            v87 = 1 << -__clz(result - 1);
            if (result > 0x10)
            {
              v87 = 32;
            }

            if (result < 2)
            {
              v87 = 1;
            }
          }

          else
          {
            v86 = 0;
            *(v85 + 46) = 0;
            v87 = 1;
          }

          v88 = (result + v87 - 1) & -v87;
          v89 = *(v85 + 26);
          *(v85 + 54) = v83;
          v83 += (v89 * v88 + 31) & 0xFFFFFFFFFFFFFFE0;
          *(v85 + 62) = v86;
          *(v85 + 66) = result;
          *(v85 + 38) = v88;
          *(v85 + 42) = v84;
          v84 += v89;
          ++v82;
          v85 += 144;
        }

        while (v82 < *(v7 + 40));
      }

      return result;
    }

    if (v8 == 4)
    {
      result = [a2 geometryDescriptors];
      if (*(v7 + 40))
      {
        v115 = result;
        v116 = 0;
        v117 = 0;
        v118 = 0;
        v119 = (a3 + 92);
        do
        {
          v124 = [v115 objectAtIndexedSubscript:v116];
          v125 = [v124 boundingBoxBuffers];
          if (v126)
          {
            v127 = v125;
          }

          else
          {
            v127 = 0;
          }

          *(v119 - 21) = v127;
          *(v119 - 8) = [v124 boundingBoxStride];
          *v119 = [v124 boundingBoxCount];
          v119[2] = [v124 opaque];
          v119[1] = [v124 intersectionFunctionTableOffset];
          result = [v124 primitiveDataBuffer];
          if (result)
          {
            *(v119 + 5) = result;
            v120 = [v124 primitiveDataStride];
            result = [v124 primitiveDataElementSize];
            v121 = 1 << -__clz(result - 1);
            if (result > 0x10)
            {
              v121 = 32;
            }

            if (result < 2)
            {
              v121 = 1;
            }
          }

          else
          {
            v120 = 0;
            *(v119 + 5) = 0;
            v121 = 1;
          }

          v122 = (result + v121 - 1) & -v121;
          v123 = *v119;
          *(v119 + 7) = v117;
          v117 += (v123 * v122 + 31) & 0xFFFFFFFFFFFFFFE0;
          v119[9] = v120;
          v119[10] = result;
          v119[3] = v122;
          v119[4] = v118;
          v118 += v123;
          ++v116;
          v119 += 36;
        }

        while (v116 < *(v7 + 40));
      }

      return result;
    }

    if (v8 != 5)
    {
      return result;
    }

    v128 = *(v7 + 160);
    result = [a2 geometryDescriptors];
    if (!*(v7 + 40))
    {
      return result;
    }

    v36 = result;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    for (i = (a3 + 136); ; i += 36)
    {
      v45 = [v36 objectAtIndexedSubscript:v38];
      v46 = [v45 controlPointBuffers];
      if (v47)
      {
        v48 = v46;
      }

      else
      {
        v48 = 0;
      }

      *(i - 15) = v48;
      v49 = [v45 radiusBuffers];
      if (v50)
      {
        v51 = v49;
      }

      else
      {
        v51 = 0;
      }

      *(i - 14) = v51;
      v52 = [v45 indexBuffer];
      if (v53)
      {
        v54 = v52;
      }

      else
      {
        v54 = 0;
      }

      *(i - 13) = v54;
      *(i - 15) = [v45 controlPointFormat];
      *(i - 56) = [v45 radiusFormat];
      v55 = [v45 controlPointStride];
      if (!v55)
      {
        LODWORD(v55) = MTLAttributeFormatSize(*(i - 15));
      }

      *(i - 17) = v55;
      v56 = [v45 radiusStride];
      if (!v56)
      {
        LODWORD(v56) = MTLAttributeFormatSize(*(i - 56));
      }

      *(i - 16) = v56;
      *(i - 13) = v37;
      v57 = [v45 controlPointCount];
      *i = v57;
      *(i - 55) = [v45 curveBasis];
      *(i - 12) = [v45 segmentControlPointCount];
      *(i - 54) = [v45 curveType];
      *(i - 53) = [v45 curveEndCaps];
      if ([v45 indexType])
      {
        v58 = 64;
      }

      else
      {
        v58 = 32;
      }

      *(i - 69) = v58 & 0xF0 | *(i - 69) & 0xF;
      *(i - 11) = [v45 segmentCount];
      *(i - 9) = [v45 opaque];
      *(i - 10) = [v45 intersectionFunctionTableOffset];
      result = [v45 primitiveDataBuffer];
      if (result)
      {
        *(i - 3) = result;
        v59 = [v45 primitiveDataStride];
        result = [v45 primitiveDataElementSize];
        if (result >= 2)
        {
          if (result <= 0x10)
          {
            v42 = 1 << -__clz(result - 1);
          }

          else
          {
            v42 = 32;
          }

          goto LABEL_54;
        }
      }

      else
      {
        v59 = 0;
        *(i - 3) = 0;
      }

      v42 = 1;
LABEL_54:
      v37 += v128 * v57;
      v43 = (result + v42 - 1) & -v42;
      v44 = *(i - 11);
      *(i - 2) = v39;
      v39 += (v44 * v43 + 31) & 0xFFFFFFFFFFFFFFE0;
      *(i - 2) = v59;
      *(i - 1) = result;
      *(i - 8) = v43;
      *(i - 7) = v40;
      v40 += v44;
      if (++v38 >= *(v7 + 40))
      {
        return result;
      }
    }
  }

  if (*(v7 + 18))
  {
    if (v8 == 1)
    {
      result = [a2 geometryDescriptors];
      if (*(v7 + 40))
      {
        v102 = result;
        v103 = 0;
        v104 = 0;
        v105 = 0;
        v106 = (a3 + 92);
        do
        {
          v111 = [v102 objectAtIndexedSubscript:v103];
          v112 = [v111 boundingBoxBuffer];
          if (v113)
          {
            v114 = v112;
          }

          else
          {
            v114 = 0;
          }

          *(v106 - 21) = v114;
          *(v106 - 8) = [v111 boundingBoxStride];
          *v106 = [v111 boundingBoxCount];
          v106[2] = [v111 opaque];
          v106[1] = [v111 intersectionFunctionTableOffset];
          result = [v111 primitiveDataBuffer];
          if (result)
          {
            *(v106 + 5) = result;
            v107 = [v111 primitiveDataStride];
            result = [v111 primitiveDataElementSize];
            v108 = 1 << -__clz(result - 1);
            if (result > 0x10)
            {
              v108 = 32;
            }

            if (result < 2)
            {
              v108 = 1;
            }
          }

          else
          {
            v107 = 0;
            *(v106 + 5) = 0;
            v108 = 1;
          }

          v109 = (result + v108 - 1) & -v108;
          v110 = *v106;
          *(v106 + 7) = v104;
          v104 += (v110 * v109 + 31) & 0xFFFFFFFFFFFFFFE0;
          v106[9] = v107;
          v106[10] = result;
          v106[3] = v109;
          v106[4] = v105;
          v105 += v110;
          ++v103;
          v106 += 36;
        }

        while (v103 < *(v7 + 40));
      }
    }

    else if (v8 == 2)
    {
      result = [a2 geometryDescriptors];
      if (*(v7 + 40))
      {
        v9 = result;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = (a3 + 136);
        do
        {
          v21 = [v9 objectAtIndexedSubscript:v11];
          v22 = [v21 controlPointBuffer];
          if (v23)
          {
            v24 = v22;
          }

          else
          {
            v24 = 0;
          }

          *(v14 - 15) = v24;
          v25 = [v21 radiusBuffer];
          if (v26)
          {
            v27 = v25;
          }

          else
          {
            v27 = 0;
          }

          *(v14 - 14) = v27;
          v28 = [v21 indexBuffer];
          if (v29)
          {
            v30 = v28;
          }

          else
          {
            v30 = 0;
          }

          *(v14 - 13) = v30;
          *(v14 - 15) = [v21 controlPointFormat];
          *(v14 - 56) = [v21 radiusFormat];
          v31 = [v21 controlPointStride];
          if (!v31)
          {
            LODWORD(v31) = MTLAttributeFormatSize(*(v14 - 15));
          }

          *(v14 - 17) = v31;
          v32 = [v21 radiusStride];
          if (!v32)
          {
            LODWORD(v32) = MTLAttributeFormatSize(*(v14 - 56));
          }

          *(v14 - 16) = v32;
          *(v14 - 13) = v10;
          v33 = [v21 controlPointCount];
          *v14 = v33;
          *(v14 - 55) = [v21 curveBasis];
          *(v14 - 12) = [v21 segmentControlPointCount];
          *(v14 - 54) = [v21 curveType];
          *(v14 - 53) = [v21 curveEndCaps];
          if ([v21 indexType])
          {
            v34 = 64;
          }

          else
          {
            v34 = 32;
          }

          *(v14 - 69) = v34 & 0xF0 | *(v14 - 69) & 0xF;
          *(v14 - 11) = [v21 segmentCount];
          *(v14 - 9) = [v21 opaque];
          *(v14 - 10) = [v21 intersectionFunctionTableOffset];
          result = [v21 primitiveDataBuffer];
          if (result)
          {
            *(v14 - 3) = result;
            v35 = [v21 primitiveDataStride];
            result = [v21 primitiveDataElementSize];
            if (result >= 2)
            {
              if (result <= 0x10)
              {
                v18 = 1 << -__clz(result - 1);
              }

              else
              {
                v18 = 32;
              }

              goto LABEL_25;
            }
          }

          else
          {
            v35 = 0;
            *(v14 - 3) = 0;
          }

          v18 = 1;
LABEL_25:
          v10 += v33;
          v19 = (result + v18 - 1) & -v18;
          v20 = *(v14 - 11);
          *(v14 - 2) = v12;
          v12 += (v20 * v19 + 31) & 0xFFFFFFFFFFFFFFE0;
          *(v14 - 2) = v35;
          *(v14 - 1) = result;
          *(v14 - 8) = v19;
          *(v14 - 7) = v13;
          v13 += v20;
          ++v11;
          v14 += 36;
        }

        while (v11 < *(v7 + 40));
      }
    }
  }

  else
  {
    result = [a2 geometryDescriptors];
    if (*(v7 + 40))
    {
      v60 = result;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = a3 + 66;
      do
      {
        v69 = [v60 objectAtIndexedSubscript:v61];
        v70 = [v69 vertexBuffer];
        if (v71)
        {
          v72 = v70;
        }

        else
        {
          v72 = 0;
        }

        *(v64 - 66) = v72;
        v73 = [v69 indexBuffer];
        if (v74)
        {
          v75 = v73;
        }

        else
        {
          v75 = 0;
        }

        *(v64 - 34) = v75;
        if (v75)
        {
          if ([v69 indexType] == 1)
          {
            LOBYTE(v75) = 64;
          }

          else
          {
            LOBYTE(v75) = 32;
          }
        }

        *(v64 + 1) = *(v64 + 1) & 0xF | v75;
        v76 = [v69 vertexStride];
        v77 = [v69 vertexFormat];
        if (!v76)
        {
          LODWORD(v76) = MTLAttributeFormatSize(v77);
        }

        *(v64 - 10) = v76;
        *(v64 - 2) = [v69 vertexFormat];
        v78 = [v69 transformationMatrixBuffer];
        if (v79)
        {
          v80 = v78;
        }

        else
        {
          v80 = 0;
        }

        *(v64 - 18) = v80;
        *(v64 + 26) = [v69 triangleCount];
        *v64 = [v69 transformationMatrixLayout] == 1;
        *(v64 + 34) = [v69 opaque];
        *(v64 + 30) = [v69 intersectionFunctionTableOffset];
        result = [v69 primitiveDataBuffer];
        if (result)
        {
          *(v64 + 46) = result;
          v65 = [v69 primitiveDataStride];
          result = [v69 primitiveDataElementSize];
          v66 = 1 << -__clz(result - 1);
          if (result > 0x10)
          {
            v66 = 32;
          }

          if (result < 2)
          {
            v66 = 1;
          }
        }

        else
        {
          v65 = 0;
          *(v64 + 46) = 0;
          v66 = 1;
        }

        v67 = (result + v66 - 1) & -v66;
        v68 = *(v64 + 26);
        *(v64 + 54) = v62;
        v62 += (v68 * v67 + 31) & 0xFFFFFFFFFFFFFFE0;
        *(v64 + 62) = v65;
        *(v64 + 66) = result;
        *(v64 + 38) = v67;
        *(v64 + 42) = v63;
        v63 += v68;
        ++v61;
        v64 += 144;
      }

      while (v61 < *(v7 + 40));
    }
  }

  return result;
}

AGX::BVHDescriptor *AGX::BVHDescriptor::BVHDescriptor(AGX::BVHDescriptor *this, int a2, unsigned __int8 a3, void *a4, MTLAccelerationStructureDescriptor *a5)
{
  v300 = a5;
  v374 = *MEMORY[0x29EDCA608];
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 24) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 16;
  *(this + 13) = 2049;
  *(this + 2) = a2;
  *(this + 15) = 28;
  *(this + 5) = 65537;
  *(this + 12) = 3;
  *(this + 46) = 1065353216;
  *(this + 20) = 0x200000000001;
  *(this + 42) = 0x4000;
  *(this + 7) = [a4 usage];
  *(this + 47) = 1067450368;
  *(this + 17) = 0;
  *(this + 15) |= 0x18u;
  *(this + 7) = [a4 usage];
  v8 = [a4 type];
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      *(this + 18) = 6;
      *(this + 15) &= ~8u;
      *(this + 10) = 1;
      *(this + 13) = [a4 instanceCount];
      *(this + 8) = 0;
      *(this + 14) = [a4 instanceDescriptorType];
      v64 = [a4 instanceDescriptorStride];
      *(this + 10) = v64;
      if (!v64)
      {
        *(this + 10) = MTLAccelerationStructureInstanceDescriptorSize(*(this + 14));
      }

      *(this + 9) = [a4 instanceDescriptorBuffer];
      *(this + 15) = [a4 instanceTransformationMatrixLayout];
      v65 = *(this + 15) & 0xFFFE;
      if (*(this + 14) == 4)
      {
        ++v65;
      }

      *(this + 15) = v65;
      *(this + 16) = [a4 motionTransformType];
      *(this + 11) = [a4 motionTransformBuffer];
      goto LABEL_110;
    }

    if (v8 == 4)
    {
      *(this + 18) = 7;
      *(this + 15) &= ~8u;
      *(this + 10) = 1;
      *(this + 13) = [a4 maxInstanceCount];
      *(this + 8) = [a4 instanceCountBuffer];
      *(this + 14) = [a4 instanceDescriptorType];
      v76 = [a4 instanceDescriptorStride];
      *(this + 10) = v76;
      if (!v76)
      {
        *(this + 10) = MTLAccelerationStructureInstanceDescriptorSize(*(this + 14));
      }

      *(this + 9) = [a4 instanceDescriptorBuffer];
      *(this + 15) = [a4 instanceTransformationMatrixLayout];
      v77 = *(this + 15) & 0xFFFE;
      if (*(this + 14) == 4)
      {
        ++v77;
      }

      *(this + 15) = v77;
      *(this + 16) = [a4 motionTransformType];
      *(this + 11) = [a4 motionTransformBuffer];
      *(this + 14) = [a4 maxMotionTransformCount];
      *(this + 12) = [a4 motionTransformCountBuffer];
      v78 = [a4 motionTransformStride];
      v79 = 64;
      if (!*(this + 32))
      {
        v79 = 48;
      }

      if (v78)
      {
        v79 = v78;
      }

      *(this + 13) = v79;
      v68 = [a4 maxInstanceCount];
      goto LABEL_128;
    }

    if (v8 != 5)
    {
      return this;
    }

    *(this + 40) = [a4 motionKeyframeCount];
    [a4 motionStartTime];
    *(this + 45) = v32;
    [a4 motionEndTime];
    *(this + 46) = v33;
    *(this + 43) = [a4 motionStartBorderMode];
    *(this + 44) = [a4 motionEndBorderMode];
    v34 = *(this + 15) & 0xFFFE;
    if (*(this + 40) > 1u)
    {
      ++v34;
    }

    *(this + 15) = v34;
    obja = [a4 geometryDescriptors];
    v35 = [objc_msgSend(a4 "geometryDescriptors")];
    *(this + 10) = v35;
    if ((*(this + 28) & 4) != 0)
    {
      v36 = 0x3FFFFFFFLL;
    }

    else
    {
      v36 = 0xFFFFFFFLL;
    }

    if (v36 < v35)
    {
      v294 = [obja count];
      v296 = v36;
      MTLReportFailure();
      if (!*(this + 10))
      {
        goto LABEL_534;
      }
    }

    else if (!v35)
    {
      goto LABEL_534;
    }

    v37 = [obja objectAtIndexedSubscript:{0, v294, v296}];
    v310 = [v37 opaque];
    v308 = [v37 intersectionFunctionTableOffset];
    v38 = [v37 type];
    v39 = 1;
    v299 = a3;
    if (v38 <= 8)
    {
      if (v38 != 6)
      {
        if (v38 != 7)
        {
          v40 = 1;
          v41 = 1;
          if (v38 != 8)
          {
            goto LABEL_527;
          }

          *(this + 18) = 2;
          v325 = 0u;
          v326 = 0u;
          v327 = 0u;
          v328 = 0u;
          v42 = [obja countByEnumeratingWithState:&v325 objects:v365 count:16];
          v39 = 1;
          if (!v42)
          {
            goto LABEL_527;
          }

          v43 = *v326;
          v44 = 1;
          LOBYTE(v45) = 1;
LABEL_65:
          v46 = 0;
          while (1)
          {
            if (*v326 != v43)
            {
              objc_enumerationMutation(obja);
            }

            v47 = *(*(&v325 + 1) + 8 * v46);
            *(this + 9) += [v47 controlPointCount];
            if (v45)
            {
              if ([v47 indexBuffer])
              {
                v49 = v48 == 0;
              }

              else
              {
                v49 = 1;
              }

              v45 = !v49;
            }

            else
            {
              v45 = 0;
            }

            v50 = [v47 segmentCount];
            v51 = v50;
            *(this + 8) += v50;
            v52 = *(this + 11);
            if (v52 <= v50)
            {
              v52 = v50;
            }

            *(this + 11) = v52;
            if ([v47 primitiveDataElementSize])
            {
              v53 = [v47 primitiveDataElementSize];
              v54 = (1 << -__clz(v53 - 1));
              if (v53 > 0x10)
              {
                v54 = 32;
              }

              if (v53 < 2)
              {
                v54 = 1;
              }

              v55 = ((((v53 + v54 - 1) & -v54) * v51 + 31) & 0xFFFFFFFFFFFFFFE0) + *(this + 17);
              if (*(this + 18) <= v53)
              {
                v56 = v53;
              }

              else
              {
                v56 = *(this + 18);
              }

              *(this + 17) = v55;
              *(this + 18) = v56;
            }

            if ((v44 & 1) != 0 && ![v47 allowDuplicateIntersectionFunctionInvocation])
            {
              v44 = 0;
            }

            if (v40)
            {
              v40 = v310 ^ [v47 opaque] ^ 1;
              if (v41)
              {
                goto LABEL_96;
              }
            }

            else
            {
              v40 = 0;
              if (v41)
              {
LABEL_96:
                v41 = v308 == [v47 intersectionFunctionTableOffset];
                goto LABEL_67;
              }
            }

            v41 = 0;
LABEL_67:
            if (v42 == ++v46)
            {
              v42 = [obja countByEnumeratingWithState:&v325 objects:v365 count:16];
              if (!v42)
              {
                goto LABEL_399;
              }

              goto LABEL_65;
            }
          }
        }

        *(this + 18) = 1;
        *(this + 15) &= ~8u;
        v329 = 0u;
        v330 = 0u;
        v331 = 0u;
        v332 = 0u;
        v187 = [obja countByEnumeratingWithState:&v329 objects:v366 count:16];
        if (v187)
        {
          v188 = *v330;
          v39 = 1;
          LOBYTE(v40) = 1;
          LOBYTE(v41) = 1;
          while (1)
          {
            for (i = 0; i != v187; ++i)
            {
              if (*v330 != v188)
              {
                objc_enumerationMutation(obja);
              }

              v190 = *(*(&v329 + 1) + 8 * i);
              v191 = [v190 boundingBoxCount];
              v192 = v191;
              *(this + 8) += v191;
              v193 = *(this + 11);
              if (v193 <= v191)
              {
                v193 = v191;
              }

              *(this + 11) = v193;
              if ([v190 primitiveDataElementSize])
              {
                v194 = [v190 primitiveDataElementSize];
                v195 = (1 << -__clz(v194 - 1));
                if (v194 > 0x10)
                {
                  v195 = 32;
                }

                if (v194 < 2)
                {
                  v195 = 1;
                }

                v196 = ((((v194 + v195 - 1) & -v195) * v192 + 31) & 0xFFFFFFFFFFFFFFE0) + *(this + 17);
                if (*(this + 18) <= v194)
                {
                  v197 = v194;
                }

                else
                {
                  v197 = *(this + 18);
                }

                *(this + 17) = v196;
                *(this + 18) = v197;
              }

              if ((v39 & 1) != 0 && ![v190 allowDuplicateIntersectionFunctionInvocation])
              {
                v39 = 0;
              }

              if (v40)
              {
                v40 = v310 ^ [v190 opaque] ^ 1;
                if (!v41)
                {
                  goto LABEL_434;
                }
              }

              else
              {
                v40 = 0;
                if (!v41)
                {
LABEL_434:
                  v41 = 0;
                  continue;
                }
              }

              v41 = v308 == [v190 intersectionFunctionTableOffset];
            }

            v187 = [obja countByEnumeratingWithState:&v329 objects:v366 count:16];
            if (!v187)
            {
              goto LABEL_527;
            }
          }
        }

        goto LABEL_518;
      }

      *(this + 17) = 0;
      v333 = 0u;
      v334 = 0u;
      v335 = 0u;
      v336 = 0u;
      v304 = [obja countByEnumeratingWithState:&v333 objects:v367 count:16];
      v39 = 1;
      if (v304)
      {
        v302 = *v334;
        v44 = 1;
        LOBYTE(v40) = 1;
        LOBYTE(v41) = 1;
        LOBYTE(v45) = 1;
        while (1)
        {
          for (j = 0; j != v304; ++j)
          {
            if (*v334 != v302)
            {
              objc_enumerationMutation(obja);
            }

            v126 = *(*(&v333 + 1) + 8 * j);
            if (v45)
            {
              if ([*(*(&v333 + 1) + 8 * j) indexBuffer])
              {
                v128 = v127 == 0;
              }

              else
              {
                v128 = 1;
              }

              v45 = !v128;
            }

            else
            {
              v45 = 0;
            }

            v129 = [v126 triangleCount];
            v130 = v129;
            *(this + 8) += v129;
            v131 = *(this + 11);
            if (v131 <= v129)
            {
              v131 = v129;
            }

            *(this + 11) = v131;
            if ([v126 primitiveDataElementSize])
            {
              v132 = [v126 primitiveDataElementSize];
              v133 = (1 << -__clz(v132 - 1));
              if (v132 > 0x10)
              {
                v133 = 32;
              }

              if (v132 < 2)
              {
                v133 = 1;
              }

              v134 = ((((v132 + v133 - 1) & -v133) * v130 + 31) & 0xFFFFFFFFFFFFFFE0) + *(this + 17);
              if (*(this + 18) <= v132)
              {
                v135 = v132;
              }

              else
              {
                v135 = *(this + 18);
              }

              *(this + 17) = v134;
              *(this + 18) = v135;
            }

            if ((v44 & 1) != 0 && ![v126 allowDuplicateIntersectionFunctionInvocation])
            {
              v44 = 0;
            }

            if (v40)
            {
              v40 = v310 ^ [v126 opaque] ^ 1;
              if (v41)
              {
                goto LABEL_295;
              }
            }

            else
            {
              v40 = 0;
              if (v41)
              {
LABEL_295:
                v41 = v308 == [v126 intersectionFunctionTableOffset];
                goto LABEL_296;
              }
            }

            v41 = 0;
LABEL_296:
            v136 = [v126 indexType];
            if (![v126 indexBuffer] || (v136 ? (v125 = 4) : (v125 = 2), objc_msgSend(v126, "indexBuffer"), !v137))
            {
              v138 = 3 * [v126 triangleCount] - 1;
              if (v138 >= 0x100)
              {
                v123 = 8;
                if (!HIDWORD(v138))
                {
                  v123 = 4;
                }

                v124 = 3;
                if (v138 >> 24)
                {
                  v124 = v123;
                }

                if (v138 >= 0x10000)
                {
                  v125 = v124;
                }

                else
                {
                  v125 = 2;
                }
              }

              else
              {
                v125 = 1;
              }
            }

            *(this + 19) += (4 * v130 * v125 + 31) & 0x1FFFFFFE0;
          }

          v304 = [obja countByEnumeratingWithState:&v333 objects:v367 count:16];
          if (!v304)
          {
LABEL_399:
            v174 = *(this + 15) & 0xFFE7 | (16 * (v44 & 0xF));
            if (!v45)
            {
              v175 = 0;
LABEL_529:
              a3 = v299;
              if ((v40 & v41) != 0)
              {
                v221 = 4096;
              }

              else
              {
                v221 = 0;
              }

              v80 = v175 | v221 | v174 & 0xEFFF;
              goto LABEL_533;
            }

LABEL_528:
            v175 = 8;
            goto LABEL_529;
          }
        }
      }

LABEL_526:
      v40 = 1;
      v41 = 1;
      goto LABEL_527;
    }

    if (v38 != 9)
    {
      if (v38 != 10)
      {
        v40 = 1;
        v41 = 1;
        if (v38 != 11)
        {
          goto LABEL_527;
        }

        *(this + 18) = 5;
        v313 = 0u;
        v314 = 0u;
        v315 = 0u;
        v316 = 0u;
        v96 = [obja countByEnumeratingWithState:&v313 objects:v362 count:16];
        v39 = 1;
        if (!v96)
        {
          goto LABEL_527;
        }

        v97 = *v314;
        v44 = 1;
        LOBYTE(v45) = 1;
LABEL_176:
        v98 = 0;
        while (1)
        {
          if (*v314 != v97)
          {
            objc_enumerationMutation(obja);
          }

          v99 = *(*(&v313 + 1) + 8 * v98);
          *(this + 9) += [v99 controlPointCount];
          if (v45)
          {
            if ([v99 indexBuffer])
            {
              v101 = v100 == 0;
            }

            else
            {
              v101 = 1;
            }

            v45 = !v101;
          }

          else
          {
            v45 = 0;
          }

          v102 = [v99 segmentCount];
          v103 = v102;
          *(this + 8) += v102;
          v104 = *(this + 11);
          if (v104 <= v102)
          {
            v104 = v102;
          }

          *(this + 11) = v104;
          if ([v99 primitiveDataElementSize])
          {
            v105 = [v99 primitiveDataElementSize];
            v106 = (1 << -__clz(v105 - 1));
            if (v105 > 0x10)
            {
              v106 = 32;
            }

            if (v105 < 2)
            {
              v106 = 1;
            }

            v107 = ((((v105 + v106 - 1) & -v106) * v103 + 31) & 0xFFFFFFFFFFFFFFE0) + *(this + 17);
            if (*(this + 18) <= v105)
            {
              v108 = v105;
            }

            else
            {
              v108 = *(this + 18);
            }

            *(this + 17) = v107;
            *(this + 18) = v108;
          }

          if ((v44 & 1) != 0 && ![v99 allowDuplicateIntersectionFunctionInvocation])
          {
            v44 = 0;
          }

          if (v40)
          {
            v40 = v310 ^ [v99 opaque] ^ 1;
            if (v41)
            {
              goto LABEL_207;
            }
          }

          else
          {
            v40 = 0;
            if (v41)
            {
LABEL_207:
              v41 = v308 == [v99 intersectionFunctionTableOffset];
              goto LABEL_178;
            }
          }

          v41 = 0;
LABEL_178:
          if (v96 == ++v98)
          {
            v96 = [obja countByEnumeratingWithState:&v313 objects:v362 count:16];
            if (!v96)
            {
              goto LABEL_399;
            }

            goto LABEL_176;
          }
        }
      }

      *(this + 18) = 4;
      *(this + 15) &= ~8u;
      v317 = 0u;
      v318 = 0u;
      v319 = 0u;
      v320 = 0u;
      v209 = [obja countByEnumeratingWithState:&v317 objects:v363 count:16];
      if (!v209)
      {
LABEL_518:
        v39 = 1;
        goto LABEL_526;
      }

      v210 = *v318;
      v39 = 1;
      LOBYTE(v40) = 1;
      LOBYTE(v41) = 1;
LABEL_489:
      v211 = 0;
      while (1)
      {
        if (*v318 != v210)
        {
          objc_enumerationMutation(obja);
        }

        v212 = *(*(&v317 + 1) + 8 * v211);
        v213 = [v212 boundingBoxCount];
        v214 = v213;
        *(this + 8) += v213;
        v215 = *(this + 11);
        if (v215 <= v213)
        {
          v215 = v213;
        }

        *(this + 11) = v215;
        if ([v212 primitiveDataElementSize])
        {
          v216 = [v212 primitiveDataElementSize];
          v217 = (1 << -__clz(v216 - 1));
          if (v216 > 0x10)
          {
            v217 = 32;
          }

          if (v216 < 2)
          {
            v217 = 1;
          }

          v218 = ((((v216 + v217 - 1) & -v217) * v214 + 31) & 0xFFFFFFFFFFFFFFE0) + *(this + 17);
          if (*(this + 18) <= v216)
          {
            v219 = v216;
          }

          else
          {
            v219 = *(this + 18);
          }

          *(this + 17) = v218;
          *(this + 18) = v219;
        }

        if ((v39 & 1) != 0 && ![v212 allowDuplicateIntersectionFunctionInvocation])
        {
          v39 = 0;
        }

        if (v40)
        {
          v40 = v310 ^ [v212 opaque] ^ 1;
          if (v41)
          {
            goto LABEL_512;
          }
        }

        else
        {
          v40 = 0;
          if (v41)
          {
LABEL_512:
            v41 = v308 == [v212 intersectionFunctionTableOffset];
            goto LABEL_491;
          }
        }

        v41 = 0;
LABEL_491:
        if (v209 == ++v211)
        {
          v209 = [obja countByEnumeratingWithState:&v317 objects:v363 count:16];
          if (!v209)
          {
LABEL_527:
            v174 = *(this + 15) & 0xFFE7 | (16 * (v39 & 0xF));
            goto LABEL_528;
          }

          goto LABEL_489;
        }
      }
    }

    *(this + 18) = 3;
    v321 = 0u;
    v322 = 0u;
    v323 = 0u;
    v324 = 0u;
    v156 = [obja countByEnumeratingWithState:&v321 objects:v364 count:16];
    v39 = 1;
    if (!v156)
    {
      goto LABEL_526;
    }

    v306 = *v322;
    v44 = 1;
    LOBYTE(v40) = 1;
    LOBYTE(v41) = 1;
    LOBYTE(v45) = 1;
LABEL_353:
    v157 = 0;
    while (1)
    {
      if (*v322 != v306)
      {
        objc_enumerationMutation(obja);
      }

      v161 = *(*(&v321 + 1) + 8 * v157);
      if (v45)
      {
        if ([*(*(&v321 + 1) + 8 * v157) indexBuffer])
        {
          v163 = v162 == 0;
        }

        else
        {
          v163 = 1;
        }

        v45 = !v163;
      }

      else
      {
        v45 = 0;
      }

      v164 = [v161 triangleCount];
      v165 = v164;
      *(this + 8) += v164;
      v166 = *(this + 11);
      if (v166 <= v164)
      {
        v166 = v164;
      }

      *(this + 11) = v166;
      if ([v161 primitiveDataElementSize])
      {
        v167 = [v161 primitiveDataElementSize];
        v168 = (1 << -__clz(v167 - 1));
        if (v167 > 0x10)
        {
          v168 = 32;
        }

        if (v167 < 2)
        {
          v168 = 1;
        }

        v169 = ((((v167 + v168 - 1) & -v168) * v165 + 31) & 0xFFFFFFFFFFFFFFE0) + *(this + 17);
        if (*(this + 18) <= v167)
        {
          v170 = v167;
        }

        else
        {
          v170 = *(this + 18);
        }

        *(this + 17) = v169;
        *(this + 18) = v170;
      }

      if ((v44 & 1) != 0 && ![v161 allowDuplicateIntersectionFunctionInvocation])
      {
        v44 = 0;
      }

      if (v40)
      {
        v40 = v310 ^ [v161 opaque] ^ 1;
        if (!v41)
        {
          goto LABEL_388;
        }
      }

      else
      {
        v40 = 0;
        if (!v41)
        {
LABEL_388:
          v41 = 0;
          goto LABEL_391;
        }
      }

      v41 = v308 == [v161 intersectionFunctionTableOffset];
LABEL_391:
      v171 = [v161 indexType];
      if (![v161 indexBuffer] || (v171 ? (v160 = 4) : (v160 = 2), objc_msgSend(v161, "indexBuffer"), !v172))
      {
        v173 = 3 * [v161 triangleCount] - 1;
        if (v173 >= 0x100)
        {
          v158 = 8;
          if (!HIDWORD(v173))
          {
            v158 = 4;
          }

          v159 = 3;
          if (v173 >> 24)
          {
            v159 = v158;
          }

          if (v173 >= 0x10000)
          {
            v160 = v159;
          }

          else
          {
            v160 = 2;
          }
        }

        else
        {
          v160 = 1;
        }
      }

      *(this + 19) += (4 * v165 * v160 + 31) & 0x1FFFFFFE0;
      if (v156 == ++v157)
      {
        v156 = [obja countByEnumeratingWithState:&v321 objects:v364 count:16];
        if (!v156)
        {
          goto LABEL_399;
        }

        goto LABEL_353;
      }
    }
  }

  if (!v8)
  {
    *(this + 18) = 6;
    *(this + 15) &= ~8u;
    *(this + 10) = 1;
    *(this + 13) = [a4 instanceCount];
    *(this + 8) = 0;
    *(this + 10) = [a4 instanceDescriptorStride];
    v57 = a3;
    v58 = [objc_msgSend(a4 "instanceDescriptorBuffer")];
    *(this + 9) = [a4 instanceDescriptorBufferOffset] + v58;
    *(this + 14) = [a4 instanceDescriptorType];
    *(this + 15) = [a4 instanceTransformationMatrixLayout];
    v59 = *(this + 14);
    v60 = v59 == 2 || v59 == 4;
    v61 = *(this + 15) & 0xFFFE;
    if (v60)
    {
      ++v61;
    }

    *(this + 15) = v61;
    *(this + 16) = [a4 motionTransformType];
    v62 = [objc_msgSend(a4 "motionTransformBuffer")];
    v63 = [a4 motionTransformBufferOffset] + v62;
    a3 = v57;
    *(this + 11) = v63;
LABEL_110:
    *(this + 14) = [a4 motionTransformCount];
    *(this + 12) = 0;
    v66 = [a4 motionTransformStride];
    v67 = 64;
    if (!*(this + 32))
    {
      v67 = 48;
    }

    if (v66)
    {
      v67 = v66;
    }

    *(this + 13) = v67;
    v68 = [a4 instanceCount];
LABEL_128:
    *(this + 11) = v68;
    *(this + 8) += v68;
    v80 = *(this + 15) & 0xEFFF;
    goto LABEL_533;
  }

  if (v8 == 1)
  {
    v69 = a3;
    *(this + 18) = 7;
    *(this + 15) &= ~8u;
    *(this + 10) = 1;
    *(this + 13) = [a4 maxInstanceCount];
    v70 = [objc_msgSend(a4 "instanceCountBuffer")];
    *(this + 8) = [a4 instanceCountBufferOffset] + v70;
    *(this + 10) = [a4 instanceDescriptorStride];
    v71 = [objc_msgSend(a4 "instanceDescriptorBuffer")];
    *(this + 9) = [a4 instanceDescriptorBufferOffset] + v71;
    *(this + 14) = [a4 instanceDescriptorType];
    *(this + 15) = [a4 instanceTransformationMatrixLayout];
    v72 = *(this + 15) & 0xFFFE;
    if (*(this + 14) == 4)
    {
      ++v72;
    }

    *(this + 15) = v72;
    *(this + 16) = [a4 motionTransformType];
    v73 = [objc_msgSend(a4 "motionTransformBuffer")];
    *(this + 11) = [a4 motionTransformBufferOffset] + v73;
    *(this + 14) = [a4 maxMotionTransformCount];
    if ([a4 motionTransformCountBuffer])
    {
      v74 = [objc_msgSend(a4 "motionTransformCountBuffer")];
      v75 = [a4 motionTransformCountBufferOffset] + v74;
    }

    else
    {
      v75 = 0;
    }

    *(this + 12) = v75;
    v81 = [a4 motionTransformStride];
    v82 = 64;
    if (!*(this + 32))
    {
      v82 = 48;
    }

    if (v81)
    {
      v82 = v81;
    }

    *(this + 13) = v82;
    v83 = [a4 maxInstanceCount];
    *(this + 11) = v83;
    *(this + 8) += v83;
    v80 = *(this + 15) & 0xEFFF;
    a3 = v69;
    goto LABEL_533;
  }

  if (v8 != 2)
  {
    return this;
  }

  *(this + 40) = [a4 motionKeyframeCount];
  [a4 motionStartTime];
  *(this + 45) = v9;
  [a4 motionEndTime];
  *(this + 46) = v10;
  *(this + 43) = [a4 motionStartBorderMode];
  *(this + 44) = [a4 motionEndBorderMode];
  v11 = *(this + 15) & 0xFFFE;
  if (*(this + 40) > 1u)
  {
    ++v11;
  }

  *(this + 15) = v11;
  obj = [a4 geometryDescriptors];
  v12 = [objc_msgSend(a4 "geometryDescriptors")];
  *(this + 10) = v12;
  if ((*(this + 28) & 4) != 0)
  {
    v13 = 0x3FFFFFFFLL;
  }

  else
  {
    v13 = 0xFFFFFFFLL;
  }

  if (v13 < v12)
  {
    v294 = [obj count];
    v296 = v13;
    MTLReportFailure();
    if (!*(this + 10))
    {
      goto LABEL_534;
    }
  }

  else if (!v12)
  {
    goto LABEL_534;
  }

  v298 = a3;
  v14 = [obj objectAtIndexedSubscript:{0, v294, v296}];
  v309 = [v14 opaque];
  v307 = [v14 intersectionFunctionTableOffset];
  v15 = [v14 type];
  v16 = 1;
  if (v15 > 2)
  {
    if (v15 != 3)
    {
      if (v15 != 4)
      {
        v17 = 1;
        v18 = 1;
        if (v15 != 5)
        {
          goto LABEL_520;
        }

        *(this + 18) = 5;
        v337 = 0u;
        v338 = 0u;
        v339 = 0u;
        v340 = 0u;
        v84 = [obj countByEnumeratingWithState:&v337 objects:v368 count:16];
        v16 = 1;
        if (!v84)
        {
          goto LABEL_520;
        }

        v85 = *v338;
        v21 = 1;
        LOBYTE(v22) = 1;
LABEL_140:
        v86 = 0;
        while (1)
        {
          if (*v338 != v85)
          {
            objc_enumerationMutation(obj);
          }

          v87 = *(*(&v337 + 1) + 8 * v86);
          v88 = *(this + 40);
          if ([objc_msgSend(v87 "controlPointBuffers")] != v88)
          {
            v295 = *(this + 40);
            v297 = [objc_msgSend(v87 "controlPointBuffers")];
            MTLReportFailure();
          }

          *(this + 9) += [v87 controlPointCount];
          v22 = v22 && [v87 indexBuffer] != 0;
          v89 = [v87 segmentCount];
          v90 = v89;
          *(this + 8) += v89;
          v91 = *(this + 11);
          if (v91 <= v89)
          {
            v91 = v89;
          }

          *(this + 11) = v91;
          if ([v87 primitiveDataElementSize])
          {
            v92 = [v87 primitiveDataElementSize];
            v93 = (1 << -__clz(v92 - 1));
            if (v92 > 0x10)
            {
              v93 = 32;
            }

            if (v92 < 2)
            {
              v93 = 1;
            }

            v94 = ((((v92 + v93 - 1) & -v93) * v90 + 31) & 0xFFFFFFFFFFFFFFE0) + *(this + 17);
            if (*(this + 18) <= v92)
            {
              v95 = v92;
            }

            else
            {
              v95 = *(this + 18);
            }

            *(this + 17) = v94;
            *(this + 18) = v95;
          }

          if ((v21 & 1) != 0 && ![v87 allowDuplicateIntersectionFunctionInvocation])
          {
            v21 = 0;
          }

          if (v17)
          {
            v17 = v309 ^ [v87 opaque] ^ 1;
            if (v18)
            {
              goto LABEL_168;
            }
          }

          else
          {
            v17 = 0;
            if (v18)
            {
LABEL_168:
              v18 = v307 == [v87 intersectionFunctionTableOffset];
              goto LABEL_142;
            }
          }

          v18 = 0;
LABEL_142:
          if (v84 == ++v86)
          {
            v84 = [obj countByEnumeratingWithState:&v337 objects:v368 count:16];
            if (!v84)
            {
              goto LABEL_349;
            }

            goto LABEL_140;
          }
        }
      }

      *(this + 18) = 4;
      *(this + 15) &= ~8u;
      v341 = 0u;
      v342 = 0u;
      v343 = 0u;
      v344 = 0u;
      v198 = [obj countByEnumeratingWithState:&v341 objects:v369 count:16];
      if (!v198)
      {
LABEL_517:
        v16 = 1;
        goto LABEL_519;
      }

      v199 = *v342;
      v16 = 1;
      LOBYTE(v17) = 1;
      LOBYTE(v18) = 1;
LABEL_461:
      v200 = 0;
      while (1)
      {
        if (*v342 != v199)
        {
          objc_enumerationMutation(obj);
        }

        v201 = *(*(&v341 + 1) + 8 * v200);
        v202 = [v201 boundingBoxCount];
        v203 = v202;
        *(this + 8) += v202;
        v204 = *(this + 11);
        if (v204 <= v202)
        {
          v204 = v202;
        }

        *(this + 11) = v204;
        if ([v201 primitiveDataElementSize])
        {
          v205 = [v201 primitiveDataElementSize];
          v206 = (1 << -__clz(v205 - 1));
          if (v205 > 0x10)
          {
            v206 = 32;
          }

          if (v205 < 2)
          {
            v206 = 1;
          }

          v207 = ((((v205 + v206 - 1) & -v206) * v203 + 31) & 0xFFFFFFFFFFFFFFE0) + *(this + 17);
          if (*(this + 18) <= v205)
          {
            v208 = v205;
          }

          else
          {
            v208 = *(this + 18);
          }

          *(this + 17) = v207;
          *(this + 18) = v208;
        }

        if ((v16 & 1) != 0 && ![v201 allowDuplicateIntersectionFunctionInvocation])
        {
          v16 = 0;
        }

        if (v17)
        {
          v17 = v309 ^ [v201 opaque] ^ 1;
          if (v18)
          {
            goto LABEL_484;
          }
        }

        else
        {
          v17 = 0;
          if (v18)
          {
LABEL_484:
            v18 = v307 == [v201 intersectionFunctionTableOffset];
            goto LABEL_463;
          }
        }

        v18 = 0;
LABEL_463:
        if (v198 == ++v200)
        {
          v198 = [obj countByEnumeratingWithState:&v341 objects:v369 count:16];
          if (!v198)
          {
LABEL_520:
            v154 = *(this + 15) & 0xF7E7 | (16 * (v16 & 0xF));
            goto LABEL_521;
          }

          goto LABEL_461;
        }
      }
    }

    *(this + 18) = 3;
    v345 = 0u;
    v346 = 0u;
    v347 = 0u;
    v348 = 0u;
    v139 = [obj countByEnumeratingWithState:&v345 objects:v370 count:16];
    v16 = 1;
    if (!v139)
    {
      goto LABEL_519;
    }

    v305 = *v346;
    v21 = 1;
    LOBYTE(v17) = 1;
    LOBYTE(v18) = 1;
    LOBYTE(v22) = 1;
LABEL_307:
    v140 = 0;
    while (1)
    {
      if (*v346 != v305)
      {
        objc_enumerationMutation(obj);
      }

      v141 = *(*(&v345 + 1) + 8 * v140);
      v142 = *(this + 40);
      if ([objc_msgSend(v141 "vertexBuffers")] != v142)
      {
        v295 = *(this + 40);
        v297 = [objc_msgSend(v141 "vertexBuffers")];
        MTLReportFailure();
      }

      v22 = v22 && [v141 indexBuffer] != 0;
      v143 = [v141 triangleCount];
      v144 = v143;
      *(this + 8) += v143;
      v145 = *(this + 11);
      if (v145 <= v143)
      {
        v145 = v143;
      }

      *(this + 11) = v145;
      if ([v141 primitiveDataElementSize])
      {
        v146 = [v141 primitiveDataElementSize];
        v147 = (1 << -__clz(v146 - 1));
        if (v146 > 0x10)
        {
          v147 = 32;
        }

        if (v146 < 2)
        {
          v147 = 1;
        }

        v148 = ((((v146 + v147 - 1) & -v147) * v144 + 31) & 0xFFFFFFFFFFFFFFE0) + *(this + 17);
        if (*(this + 18) <= v146)
        {
          v149 = v146;
        }

        else
        {
          v149 = *(this + 18);
        }

        *(this + 17) = v148;
        *(this + 18) = v149;
      }

      if ((v21 & 1) != 0 && ![v141 allowDuplicateIntersectionFunctionInvocation])
      {
        v21 = 0;
      }

      if (v17)
      {
        v17 = v309 ^ [v141 opaque] ^ 1;
        if (v18)
        {
          goto LABEL_334;
        }
      }

      else
      {
        v17 = 0;
        if (v18)
        {
LABEL_334:
          v18 = v307 == [v141 intersectionFunctionTableOffset];
          goto LABEL_335;
        }
      }

      v18 = 0;
LABEL_335:
      if ([v141 indexType])
      {
        v150 = 4;
      }

      else
      {
        v150 = 2;
      }

      if (![v141 indexBuffer])
      {
        v151 = 3 * [v141 triangleCount] - 1;
        v152 = 4;
        if (HIDWORD(v151))
        {
          v152 = 8;
        }

        v153 = 3;
        if (v151 >> 24)
        {
          v153 = v152;
        }

        if (v151 < 0x10000)
        {
          v153 = 2;
        }

        if (v151 >= 0x100)
        {
          v150 = v153;
        }

        else
        {
          v150 = 1;
        }
      }

      *(this + 19) += (4 * v144 * v150 + 31) & 0x1FFFFFFE0;
      if (v139 == ++v140)
      {
        v139 = [obj countByEnumeratingWithState:&v345 objects:v370 count:16];
        if (!v139)
        {
          goto LABEL_349;
        }

        goto LABEL_307;
      }
    }
  }

  if (v15)
  {
    if (v15 != 1)
    {
      v17 = 1;
      v18 = 1;
      if (v15 != 2)
      {
        goto LABEL_520;
      }

      *(this + 18) = 2;
      v349 = 0u;
      v350 = 0u;
      v351 = 0u;
      v352 = 0u;
      v19 = [obj countByEnumeratingWithState:&v349 objects:v371 count:16];
      v16 = 1;
      if (!v19)
      {
        goto LABEL_520;
      }

      v20 = *v350;
      v21 = 1;
      LOBYTE(v22) = 1;
LABEL_18:
      v23 = 0;
      while (1)
      {
        if (*v350 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v349 + 1) + 8 * v23);
        if (*(this + 40) != 1)
        {
          v295 = *(this + 40);
          MTLReportFailure();
        }

        *(this + 9) += [v24 controlPointCount];
        v22 = v22 && [v24 indexBuffer] != 0;
        v25 = [v24 segmentCount];
        v26 = v25;
        *(this + 8) += v25;
        v27 = *(this + 11);
        if (v27 <= v25)
        {
          v27 = v25;
        }

        *(this + 11) = v27;
        if ([v24 primitiveDataElementSize])
        {
          v28 = [v24 primitiveDataElementSize];
          v29 = (1 << -__clz(v28 - 1));
          if (v28 > 0x10)
          {
            v29 = 32;
          }

          if (v28 < 2)
          {
            v29 = 1;
          }

          v30 = ((((v28 + v29 - 1) & -v29) * v26 + 31) & 0xFFFFFFFFFFFFFFE0) + *(this + 17);
          if (*(this + 18) <= v28)
          {
            v31 = v28;
          }

          else
          {
            v31 = *(this + 18);
          }

          *(this + 17) = v30;
          *(this + 18) = v31;
        }

        if ((v21 & 1) != 0 && ![v24 allowDuplicateIntersectionFunctionInvocation])
        {
          v21 = 0;
        }

        if (v17)
        {
          v17 = v309 ^ [v24 opaque] ^ 1;
          if (v18)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v17 = 0;
          if (v18)
          {
LABEL_46:
            v18 = v307 == [v24 intersectionFunctionTableOffset];
            goto LABEL_20;
          }
        }

        v18 = 0;
LABEL_20:
        if (v19 == ++v23)
        {
          v19 = [obj countByEnumeratingWithState:&v349 objects:v371 count:16];
          if (!v19)
          {
            goto LABEL_349;
          }

          goto LABEL_18;
        }
      }
    }

    *(this + 18) = 1;
    *(this + 15) &= ~8u;
    v353 = 0u;
    v354 = 0u;
    v355 = 0u;
    v356 = 0u;
    v176 = [obj countByEnumeratingWithState:&v353 objects:v372 count:16];
    if (v176)
    {
      v177 = *v354;
      v16 = 1;
      LOBYTE(v17) = 1;
      LOBYTE(v18) = 1;
      while (1)
      {
        for (k = 0; k != v176; ++k)
        {
          if (*v354 != v177)
          {
            objc_enumerationMutation(obj);
          }

          v179 = *(*(&v353 + 1) + 8 * k);
          if (*(this + 40) != 1)
          {
            v295 = *(this + 40);
            MTLReportFailure();
          }

          v180 = [v179 boundingBoxCount];
          v181 = v180;
          *(this + 8) += v180;
          v182 = *(this + 11);
          if (v182 <= v180)
          {
            v182 = v180;
          }

          *(this + 11) = v182;
          if ([v179 primitiveDataElementSize])
          {
            v183 = [v179 primitiveDataElementSize];
            v184 = (1 << -__clz(v183 - 1));
            if (v183 > 0x10)
            {
              v184 = 32;
            }

            if (v183 < 2)
            {
              v184 = 1;
            }

            v185 = ((((v183 + v184 - 1) & -v184) * v181 + 31) & 0xFFFFFFFFFFFFFFE0) + *(this + 17);
            if (*(this + 18) <= v183)
            {
              v186 = v183;
            }

            else
            {
              v186 = *(this + 18);
            }

            *(this + 17) = v185;
            *(this + 18) = v186;
          }

          if ((v16 & 1) != 0 && ![v179 allowDuplicateIntersectionFunctionInvocation])
          {
            v16 = 0;
          }

          if (v17)
          {
            v17 = v309 ^ [v179 opaque] ^ 1;
            if (!v18)
            {
              goto LABEL_404;
            }
          }

          else
          {
            v17 = 0;
            if (!v18)
            {
LABEL_404:
              v18 = 0;
              continue;
            }
          }

          v18 = v307 == [v179 intersectionFunctionTableOffset];
        }

        v176 = [obj countByEnumeratingWithState:&v353 objects:v372 count:16];
        if (!v176)
        {
          goto LABEL_520;
        }
      }
    }

    goto LABEL_517;
  }

  *(this + 17) = 0;
  v357 = 0u;
  v358 = 0u;
  v359 = 0u;
  v360 = 0u;
  v303 = [obj countByEnumeratingWithState:&v357 objects:v373 count:16];
  v16 = 1;
  if (!v303)
  {
LABEL_519:
    v17 = 1;
    v18 = 1;
    goto LABEL_520;
  }

  v301 = *v358;
  v21 = 1;
  LOBYTE(v17) = 1;
  LOBYTE(v18) = 1;
  LOBYTE(v22) = 1;
  do
  {
    for (m = 0; m != v303; ++m)
    {
      if (*v358 != v301)
      {
        objc_enumerationMutation(obj);
      }

      v114 = *(*(&v357 + 1) + 8 * m);
      if (*(this + 40) != 1)
      {
        v295 = *(this + 40);
        MTLReportFailure();
      }

      v22 = v22 && [v114 indexBuffer] != 0;
      v115 = [v114 triangleCount];
      v116 = v115;
      *(this + 8) += v115;
      v117 = *(this + 11);
      if (v117 <= v115)
      {
        v117 = v115;
      }

      *(this + 11) = v117;
      if ([v114 primitiveDataElementSize])
      {
        v118 = [v114 primitiveDataElementSize];
        v119 = (1 << -__clz(v118 - 1));
        if (v118 > 0x10)
        {
          v119 = 32;
        }

        if (v118 < 2)
        {
          v119 = 1;
        }

        v120 = ((((v118 + v119 - 1) & -v119) * v116 + 31) & 0xFFFFFFFFFFFFFFE0) + *(this + 17);
        if (*(this + 18) <= v118)
        {
          v121 = v118;
        }

        else
        {
          v121 = *(this + 18);
        }

        *(this + 17) = v120;
        *(this + 18) = v121;
      }

      if ((v21 & 1) != 0 && ![v114 allowDuplicateIntersectionFunctionInvocation])
      {
        v21 = 0;
      }

      if (v17)
      {
        v17 = v309 ^ [v114 opaque] ^ 1;
        if (!v18)
        {
          goto LABEL_246;
        }
      }

      else
      {
        v17 = 0;
        if (!v18)
        {
LABEL_246:
          v18 = 0;
          goto LABEL_249;
        }
      }

      v18 = v307 == [v114 intersectionFunctionTableOffset];
LABEL_249:
      if ([v114 indexType])
      {
        v113 = 4;
      }

      else
      {
        v113 = 2;
      }

      if (![v114 indexBuffer])
      {
        v110 = 3 * [v114 triangleCount] - 1;
        v111 = 4;
        if (HIDWORD(v110))
        {
          v111 = 8;
        }

        v112 = 3;
        if (v110 >> 24)
        {
          v112 = v111;
        }

        if (v110 < 0x10000)
        {
          v112 = 2;
        }

        if (v110 >= 0x100)
        {
          v113 = v112;
        }

        else
        {
          v113 = 1;
        }
      }

      *(this + 19) += (4 * v116 * v113 + 31) & 0x1FFFFFFE0;
    }

    v303 = [obj countByEnumeratingWithState:&v357 objects:v373 count:16];
  }

  while (v303);
LABEL_349:
  v154 = *(this + 15) & 0xF7E7 | (16 * (v21 & 0xF));
  if (!v22)
  {
    v155 = 0;
    a3 = v298;
    goto LABEL_522;
  }

LABEL_521:
  a3 = v298;
  v155 = 8;
LABEL_522:
  if ((v17 & v18) != 0)
  {
    v220 = 4096;
  }

  else
  {
    v220 = 0;
  }

  v80 = v154 & 0xE7FF | v155 | v220 | 0x800;
LABEL_533:
  *(this + 15) = v80;
LABEL_534:
  if (*(this + 40) < 2u)
  {
    v223 = 0;
  }

  else
  {
    v222 = *(this + 18);
    if ((v222 - 3) >= 2)
    {
      v223 = 32 * (v222 == 5);
    }

    else
    {
      v223 = 32;
    }
  }

  *(this + 15) = *(this + 15) & 0xFFDF | v223;
  {
    AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
  }

  if (AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild)
  {
    v224 = 1;
  }

  else
  {
    v224 = (*(this + 28) >> 1) & 1;
  }

  {
    AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
  }

  {
    AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
  }

  if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit)
  {
    v225 = 0;
  }

  else if (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable)
  {
    v225 = 1;
  }

  else
  {
    v225 = *(this + 28) & 1;
  }

  {
    AGX::BVHDescriptor::isFastIntersection(void)const::forceFastintersection = 0;
  }

  v226 = (AGX::BVHDescriptor::isFastIntersection(void)const::forceFastintersection & 1) == 0 && (*(this + 28) & 0x10) == 0;
  v227 = AGX::BVHDescriptor::satisfiesPLOCLimits(this);
  v228 = a3;
  if (a3)
  {
    v229 = v227;
  }

  else
  {
    v229 = 0;
  }

  {
    AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::smallTriangleLeafLimit = 0x4000;
  }

  {
    AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::smallBoundingBoxLeafLimit = 0x4000;
  }

  v230 = *(this + 18);
  v231 = v230 == 3 || v230 == 0;
  v232 = &AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::smallBoundingBoxLeafLimit;
  if (v231)
  {
    v232 = &AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::smallTriangleLeafLimit;
  }

  v233 = *(this + 8) <= *v232 && v229;
  {
    AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::useBinnedSah = 1;
  }

  {
    AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::disableSort = 1;
  }

  if (AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::disableSort)
  {
    v234 = 0;
  }

  else
  {
    v234 = 256;
  }

  *(this + 15) = v234 | *(this + 15) & 0xFE7F | ((AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::useBinnedSah & 1) << 7);
  v235 = *(this + 8);
  v236 = v235 - 1;
  if (v235 - 1 >= 0x20000)
  {
    v237 = 2;
  }

  else
  {
    v237 = 4;
  }

  if (v236 >= 0x40)
  {
    v238 = v237;
  }

  else
  {
    v238 = 16;
  }

  v239 = 1;
  if (v235 >= 2)
  {
    v240 = 32 - __clz(v236);
    if (v240 >= 0x1B)
    {
      v240 = 27;
    }

    if (v236 >= 0x20000)
    {
      v241 = 1;
    }

    else
    {
      v241 = 2;
    }

    v242 = dword_29D2F5348[v240];
    if (v236 < 0x40)
    {
      v241 = 4;
    }

    v238 = v242 << v241;
    v239 = v242;
  }

  *(this + 41) = v239;
  *(this + 42) = v238;
  {
    AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::forceEnableLoadBVH2 = 1;
  }

  {
    AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::forceEnableLoadBVH2Instance = 1;
  }

  v243 = *(this + 15);
  v244 = (v243 & 0x180) == 128;
  v245 = v243 & 0xFDFF;
  if ((*(this + 18) & 0xFE) == 6)
  {
    v246 = &AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::forceEnableLoadBVH2Instance;
  }

  else
  {
    v246 = &AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::forceEnableLoadBVH2;
  }

  if ((v244 & *v246) != 0)
  {
    v247 = 512;
  }

  else
  {
    v247 = 0;
  }

  *(this + 15) = v247 | v245;
  {
    AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::enableMediumRefit = 1;
  }

  {
    AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::mediumBuildFastTraceDefaultLimit = 0x80000;
  }

  if ((*(this + 18) & 0xFE) == 6 || v226)
  {
    v248 = 0;
    if (((v224 | v225) & 1) == 0)
    {
      goto LABEL_599;
    }

LABEL_601:
    v249 = v225 & (AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::enableMediumRefit ^ 1);
  }

  else
  {
    v248 = *(this + 8) > AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::mediumBuildFastTraceDefaultLimit;
    if ((v224 | v225))
    {
      goto LABEL_601;
    }

LABEL_599:
    v249 = 1;
  }

  v250 = *(this + 8);
  if (!v229 || ((v228 != 2) & ((v228 == 0) | v248 & v249)) != 0)
  {
    if (!v233)
    {
LABEL_610:
      v251 = 0;
      goto LABEL_611;
    }

LABEL_609:
    v251 = 1;
    *(this + 41) = 1;
    *(this + 42) = v250;
    goto LABEL_611;
  }

  if (v233)
  {
    goto LABEL_609;
  }

  if (*(this + 41) * *(this + 42) < v250 || (((AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::enableMediumRefit & v225) | v225 ^ 1) & 1) == 0)
  {
    goto LABEL_610;
  }

  v251 = 2;
LABEL_611:
  *(this + 1) = v251;
  {
    AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::enableSpatialSplitsWithQTBs = 1;
  }

  if (*(this + 1) || *(this + 2) != 1 && AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::enableSpatialSplitsWithQTBs != 1)
  {
    goto LABEL_613;
  }

  {
    AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
  }

  if ((AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild & 1) != 0 || (*(this + 28) & 2) != 0 || (*(this + 15) & 0x11) != 0x10 || *(this + 18) || (*(this + 12) = 3, !AGX::BVHDescriptor::useSpatialSplits(this)))
  {
LABEL_613:
    *(this + 12) = 2;
  }

  v252 = *(this + 2);
  if (v252 <= 4)
  {
    v253 = 2;
  }

  else
  {
    v253 = 4;
  }

  if (v252 <= 4)
  {
    v254 = 4;
  }

  else
  {
    v254 = 8;
  }

  if (v252 >= 5)
  {
    v255 = 28;
  }

  else
  {
    v255 = 16;
  }

  v256 = *(this + 18);
  if ((v256 - 8) > 0xFFFFFFFD)
  {
    v257 = 0;
    v258 = 1;
    v259 = v300;
  }

  else
  {
    v257 = 0;
    v258 = 1;
    v259 = v300;
    if (*(this + 18) <= 2u)
    {
      if (*(this + 18))
      {
        if (v256 != 1)
        {
LABEL_641:
          v258 = 0;
          v257 = 4;
          goto LABEL_644;
        }

LABEL_643:
        v258 = 0;
        v257 = 3;
        goto LABEL_644;
      }

LABEL_642:
      v258 = 0;
      v257 = 1;
      goto LABEL_644;
    }

    switch(v256)
    {
      case 3:
        goto LABEL_642;
      case 4:
        goto LABEL_643;
      case 5:
        goto LABEL_641;
    }
  }

LABEL_644:
  *(this + 15) &= ~0x40u;
  if (v259)
  {
    goto LABEL_645;
  }

  {
    AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
  }

  {
    AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
  }

  if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit & 1) == 0 && ((AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) != 0 || (*(this + 28)))
  {
LABEL_645:
    v260 = 1;
    if (!*(this + 10))
    {
      goto LABEL_652;
    }
  }

  else
  {
    v260 = *(this + 15) & 1;
    if (!*(this + 10))
    {
      goto LABEL_652;
    }
  }

  if (*(this + 18))
  {
    goto LABEL_652;
  }

  if ((*(this + 15) & 8) != 0)
  {
    v260 = 0;
  }

  if (v260 == 1)
  {
    {
      v361 = 0;
      findEnvVarNum<BOOL>("AGX_ALWAYS_ALLOW_PAIR_FALLBACK", &v361);
      if (v361)
      {
        v293 = 1;
      }

      else
      {
        v361 = 0;
        findEnvVarNum<BOOL>("AGX_ALWAYS_ALLOW_VERT_MATCHING_ON_POS", &v361);
        v293 = v361;
      }

      isVertMatchingOnPositionRequestedAlwaysAllowed(void)::allow = v293 & 1;
    }

    v262 = *(this + 15);
    if ((isVertMatchingOnPositionRequestedAlwaysAllowed(void)::allow & 1) == 0)
    {
      *(this + 15) = v262 & 0xFFBF;
      goto LABEL_652;
    }
  }

  else
  {
    v262 = *(this + 15);
  }

  *(this + 15) = v262 | 0x40;
  v263 = *(this + 2);
  {
  }

  if ((v262 & 1) != 0 || v263 <= 4)
  {
    v257 = 2;
    *(this + 17) = 2;
LABEL_668:
    v261 = 0;
    *(this + 15) |= 2u;
    *(this + 13) = 0;
  }

  else
  {
LABEL_652:
    if ((v258 & 1) == 0)
    {
      goto LABEL_668;
    }

    v257 = 0;
    v261 = 1;
  }

  {
    AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::overridenMinPrimitivesPerLeaf[0] = 1;
    *algn_2A179FC44 = v253;
    dword_2A179FC48 = v253;
    unk_2A179FC4C = 0x100000001;
  }

  {
    AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::overridenMaxPrimitivesPerLeaf[0] = 1;
    *algn_2A179FC64 = v254;
    dword_2A179FC68 = v254;
    unk_2A179FC6C = 0x100000001;
  }

  {
    AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::overridenMinPrimitivesPerInnerNode = xmmword_29D2F2450;
    dword_2A179FC90 = 0;
  }

  {
    AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::overridenMaxPrimitivesPerInnerNode[0] = 0;
    *algn_2A179FCA4 = v255;
    dword_2A179FCAC = 0;
    unk_2A179FCB0 = 0;
    dword_2A179FCA8 = v255;
  }

  {
    AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::overridenSplitCapacity = xmmword_29D2F2460;
    dword_2A179FCD0 = 1065353216;
  }

  {
    AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::primitiveEnableSahAwareWideBuild = 1;
  }

  {
    AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::instanceEnableSahAwareWideBuild = 1;
  }

  if (v261 && (AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::instanceEnableSahAwareWideBuild & 1) != 0 || *(this + 18) - 8 <= 0xFFFFFFFD && (AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::primitiveEnableSahAwareWideBuild & 1) != 0)
  {
    v264 = *(this + 15);
    if (v264)
    {
      v265 = 0;
    }

    else
    {
      v265 = 0;
      v266 = *(this + 18);
      if (v266 != 2 && v266 != 5)
      {
        v265 = (*(this + 2) < 5u) << 10;
      }
    }
  }

  else
  {
    v265 = 0;
    v264 = *(this + 15);
  }

  *(this + 15) = v264 & 0xFBFF | v265;
  *(this + 48) = *(&AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::overridenSplitCapacity + v257);
  if (*(this + 1) || !AGX::BVHDescriptor::useSpatialSplits(this))
  {
    *(this + 48) = 1065353216;
  }

  if (!*(this + 1) && (*(this + 15) & 0x400) == 0)
  {
    v267 = AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::overridenMinPrimitivesPerLeaf[v257];
    v268 = *(this + 2);
    if (v268 <= 4)
    {
      v269 = 4;
    }

    else
    {
      v269 = 8;
    }

    if (v267 >= v269)
    {
      v267 = v269;
    }

    *(this + 10) = v267;
    if (v267 <= AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::overridenMaxPrimitivesPerLeaf[v257])
    {
      v267 = AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::overridenMaxPrimitivesPerLeaf[v257];
    }

    if (v267 >= v269)
    {
      LOWORD(v267) = v269;
    }

    *(this + 11) = v267;
    v270 = *(&AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::overridenMinPrimitivesPerInnerNode + v257);
    if (v268 >= 5)
    {
      v271 = 28;
    }

    else
    {
      v271 = 16;
    }

    if (v270 >= v271)
    {
      v270 = v271;
    }

    *(this + 12) = v270;
    if (v270 <= AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::overridenMaxPrimitivesPerInnerNode[v257])
    {
      v270 = AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::overridenMaxPrimitivesPerInnerNode[v257];
    }

    if (v270 >= v271)
    {
      LOWORD(v270) = v271;
    }

    *(this + 13) = v270;
    {
      AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::twoPassBuildForBatchedInstance = 1;
    }

    {
      AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::batchingThreshold = 2048;
    }

    if (v261)
    {
      LODWORD(v272) = *(this + 8);
      if (AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::twoPassBuildForBatchedInstance == 1 && v272 >= AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::batchingThreshold && !AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::overridenMinPrimitivesPerInnerNode && !AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::overridenMaxPrimitivesPerInnerNode[0])
      {
        *(this + 6) = 524289;
      }
    }

    else
    {
      LODWORD(v272) = *(this + 8);
    }

    if (!*(this + 1) && *(this + 10) && !*(this + 18) && *(this + 12) == 3)
    {
      v291 = 0x3FFFFFFFLL;
      if ((*(this + 28) & 4) == 0)
      {
        v291 = 0xFFFFFFFLL;
      }

      v292 = *(this + 48) + -1.0;
      if (v292 < 0.0)
      {
        v292 = 0.0;
      }

      v272 = vcvtpd_u64_f64(v292 * v272) + v272;
      if (v291 < v272)
      {
        LODWORD(v272) = v291;
      }
    }

    v284 = *(this + 15);
    if ((v284 & 2) != 0)
    {
      v285 = *(this + 40);
      v286 = v285 - 1;
      if (v285 <= 1)
      {
        v286 = 1;
      }

      LODWORD(v272) = v286 * v272;
      if (v272 <= 1)
      {
        LODWORD(v272) = 1;
      }

      if (v285 > 1)
      {
        LODWORD(v272) = v272 << *(this + 13);
      }
    }

    else if (v272 <= 1)
    {
      LODWORD(v272) = 1;
    }

    v287 = 3.0;
    if ((v284 & 1) == 0)
    {
      v287 = 2.0;
    }

    if (v272)
    {
      v288 = 1.0;
      v289 = v272 - 1;
      if (v289)
      {
        v288 = (((86 * (34 - __clz(v289))) >> 8) + 1);
      }

      v290 = vcvtps_u32_f32(v287 * v288);
      if (v290 >= 0x10)
      {
        v290 = 16;
      }

      if (v290 <= 1)
      {
        v290 = 1;
      }

      *this = v290;
    }

    else
    {
      *this = 1;
    }

    return this;
  }

  {
    AGX::BVHDescriptor::isMinimizeMemory(void)const::forceMinimizeMemory = 0;
  }

  if ((AGX::BVHDescriptor::isMinimizeMemory(void)const::forceMinimizeMemory & 1) != 0 || (*(this + 7) & 0x20) != 0)
  {
    v273 = 2;
  }

  else
  {
    v273 = 0;
  }

  {
    AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::maxDepthEv = 16;
  }

  v274 = *(this + 8);
  if (v274)
  {
    v275 = AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::maxDepthEv;
    if (*(this + 14) == 2)
    {
      v276 = 33 - __clz(~(-1 << -__clz(v274 - 1)));
    }

    else
    {
      v276 = 16;
    }

    if (AGX::BVHDescriptor::BVHDescriptor(unsigned int,unsigned int,unsigned int,MTLAccelerationStructureDescriptor *,BOOL,BOOL)::maxDepthEv >= v276)
    {
      v275 = v276;
    }

    if (v275 <= 1)
    {
      v275 = 1;
    }
  }

  else
  {
    v275 = 1;
  }

  *this = v275;
  v277 = *(this + 18);
  if (*(this + 1) || v277 != 3 && *(this + 18))
  {
    *(this + 10) = 1;
    if (v277)
    {
      goto LABEL_741;
    }

    goto LABEL_742;
  }

  if (*(this + 2) <= 4u)
  {
    v278 = 2;
  }

  else
  {
    v278 = 4;
  }

  *(this + 10) = v278;
  if (!v277)
  {
LABEL_742:
    v279 = *(this + 2);
    if (v279 <= 4)
    {
      v280 = 4;
    }

    else
    {
      v280 = 8;
    }

    *(this + 11) = v280;
    if (v279 >= 5)
    {
      v281 = 28;
    }

    else
    {
      v281 = 16;
    }

    goto LABEL_749;
  }

LABEL_741:
  if (v277 == 3)
  {
    goto LABEL_742;
  }

  *(this + 11) = 1;
  v281 = 8;
LABEL_749:
  *(this + 13) = v281;
  if (v257 > 1)
  {
    if (v257 == 2)
    {
      v282 = v273 | 5;
    }

    else
    {
      if (v257 == 3)
      {
        goto LABEL_754;
      }

      v282 = *(this + 12);
    }
  }

  else
  {
    if (v257)
    {
      v282 = v273 | 4;
      goto LABEL_757;
    }

LABEL_754:
    v282 = v273 + 3;
  }

LABEL_757:
  if (v282 <= 3)
  {
    v282 = 3;
  }

  if (v282 >= 7)
  {
    LOWORD(v282) = 7;
  }

  *(this + 12) = v282;
  return this;
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeWriteCompactedSize(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v21, a1, 48, 1);
  v13 = v21;
  v12 = v22;
  v14 = [objc_msgSend(a2 "buffer")];
  v15 = [a2 bufferOffset] + v14;
  v16 = [a2 size];
  *v13 = v15;
  *(v13 + 8) = v16;
  v17 = a3 + a5;
  *(v13 + 16) = v17;
  if (a6 == 85)
  {
    v18 = 8;
  }

  else
  {
    v18 = 4;
  }

  *(v13 + 24) = v18;
  *(v13 + 28) = 0;
  *(v13 + 32) = 0;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeWriteCompactedSize(AGXG18PFamilyRayTracingAccelerationStructure *,MTL4BufferRange,unsigned long,MTLDataType,BOOL)::skipCompaction = 0;
  }

  *(v13 + 40) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeWriteCompactedSize(AGXG18PFamilyRayTracingAccelerationStructure *,MTL4BufferRange,unsigned long,MTLDataType,BOOL)::skipCompaction ^ 1;
  [objc_msgSend(a2 "buffer")];
  [a2 bufferOffset];
  [objc_msgSend(a2 "buffer")];
  [a2 bufferOffset];
  [objc_msgSend(a2 "buffer")];
  {
    {
    }

    {
    }

    if (shouldDumpOrVerifyBVHs(void)::once != -1)
    {
      dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeWriteCompactedSize(AGXG18PFamilyRayTracingAccelerationStructure *,MTL4BufferRange,unsigned long,MTLDataType,BOOL)::verify = 0;
  }

  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeWriteCompactedSize(AGXG18PFamilyRayTracingAccelerationStructure *,MTL4BufferRange,unsigned long,MTLDataType,BOOL)::verify == 1)
  {
    [**(a1 + 16) addCompletedHandler:&__block_literal_global_73];
  }

  if (*(a1 + 49) == 1)
  {
    if (v17 + a6 == 33)
    {
      v19 = 4;
    }

    else
    {
      v19 = 8;
    }

    BatchForCommand = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getBatchForCommand(a1, 2, a2, 0, a3, a4, v17, v19, 0, 0);
    v21 = v12;
    std::vector<unsigned long long>::push_back[abi:nn200100](BatchForCommand + 216, &v21);
  }

  else
  {
    v21 = v12;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeWriteCompactedSizes(a1, &v21, 1);
  }
}

unint64_t AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::calcRiaBvhSize(AGX::BVHDescriptor *this, unint64_t *a2)
{
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen();
  }

  v3 = *(this + 8);
  v4 = *(this + 18);
  if (*(this + 1))
  {
    v5 = 1;
  }

  else
  {
    v5 = *(this + 10) == 0;
  }

  if (!v5 && v4 == 0 && *(this + 12) == 3)
  {
    v8 = 0x3FFFFFFFLL;
    if ((*(this + 28) & 4) == 0)
    {
      v8 = 0xFFFFFFFLL;
    }

    v9 = *(this + 48) + -1.0;
    if (v9 < 0.0)
    {
      v9 = 0.0;
    }

    v3 += vcvtpd_u64_f64(v9 * v3);
    if (v8 < v3)
    {
      LODWORD(v3) = v8;
    }
  }

  if ((*(this + 15) & 2) != 0)
  {
    v10 = *(this + 40);
    if (v10 >= 2)
    {
      LODWORD(v3) = v3 * (v10 - 1);
    }
  }

  if (v3 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v3;
  }

  v12 = AGX::BVHDescriptor::maxInnerNodeCount(this);
  {
    getCoarseCurveTestMode(AGX::BVHDescriptor const&)::evCoarseCurveTestMode = 1;
  }

  if (getCoarseCurveTestMode(AGX::BVHDescriptor const&)::evCoarseCurveTestMode != 1)
  {
    goto LABEL_33;
  }

  {
    if (v129)
    {
      AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
    }
  }

  {
    if (v130)
    {
      AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
    }
  }

  if ((v13[2792] & 1) != 0 || (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) == 0 && (*(this + 28) & 1) == 0)
  {
    v14 = getCoarseCurveTestMode(AGX::BVHDescriptor const&)::evCoarseCurveTestMode;
  }

  else
  {
LABEL_33:
    v14 = 0;
  }

  v15 = (v12 << 6) + 128;
  v16 = *(this + 18);
  v143 = v4;
  if ((v16 & 0xFE) == 6)
  {
    v17 = *(this + 13);
    if (*(this + 15))
    {
      v138 = *(this + 14);
      v140 = *(this + 13);
      v19 = 9;
      v18 = 48;
    }

    else
    {
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen >= 5)
      {
        v18 = 132;
      }

      else
      {
        v18 = 128;
      }

      v19 = 8;
      v138 = *(this + 13);
      v140 = 48;
    }

    v25 = 0;
    v135 = 0;
    v15 += v17 * ((v18 + 63) & 0xC0);
    v26 = 16 * v17 + 143;
    goto LABEL_54;
  }

  if (*(this + 10))
  {
    v20 = *(this + 40);
    v136 = *(this + 10);
    v134 = v11;
    v141 = *(this + 18);
    if (v16 <= 5)
    {
      if (((1 << v16) & 9) == 0)
      {
        if (((1 << v16) & 0x12) != 0)
        {
          v139 = 0;
          v21 = 0;
          if (v20 <= 1)
          {
            v22 = 32;
          }

          else
          {
            v22 = 60;
          }

          if (v20 <= 1)
          {
            v23 = 4;
          }

          else
          {
            v23 = 5;
          }

          v24 = 1;
        }

        else
        {
          v139 = 0;
          v24 = 0;
          if (v20 <= 1)
          {
            v22 = 16;
          }

          else
          {
            v22 = 28;
          }

          if (v20 <= 1)
          {
            v23 = 6;
          }

          else
          {
            v23 = 7;
          }

          v21 = 1;
        }

        goto LABEL_67;
      }

      if (*(this + 17) == 2)
      {
        if (v20 <= 1)
        {
          PrimLeafEncodingMode = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(2, this, AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen);
          v139 = 0;
          v24 = 0;
          v21 = 0;
          v5 = PrimLeafEncodingMode == 3;
          v23 = 2;
          if (v5)
          {
            v22 = 36;
          }

          else
          {
            v22 = 60;
          }
        }

        else
        {
          v139 = 0;
          v24 = 0;
          v21 = 0;
          v23 = 3;
          v22 = 112;
        }

        goto LABEL_67;
      }

      if (!*(this + 17))
      {
        if (v20 <= 1)
        {
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(0, this, AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen) == 3)
          {
            v23 = 0;
            v24 = 0;
            v21 = 0;
            v139 = 8;
            v22 = 36;
          }

          else
          {
            v112 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(0, this, AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen);
            v24 = 0;
            v21 = 0;
            v113 = v112 == 2;
            v23 = 0;
            v114 = v113;
            if (v113)
            {
              v22 = -1;
            }

            else
            {
              v22 = 44;
            }

            v139 = 8 * v114;
          }
        }

        else
        {
          v139 = 0;
          v24 = 0;
          v21 = 0;
          v23 = 1;
          v22 = 84;
        }

LABEL_67:
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen > 4)
        {
          v29 = v23;
          v30 = v20;
          v31 = v14;
          v32 = v24;
          v33 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(v23, this, AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen);
          v24 = v32;
          v14 = v31;
          v20 = v30;
          if (v33 == 2)
          {
            v18 = -1;
          }

          else
          {
            v18 = v22 + 4;
          }
        }

        else
        {
          v28 = v22 + 4;
          v29 = v23;
          if ((v22 + 4) >= 5)
          {
            if (v28 >= 9)
            {
              if (v28 >= 0x11)
              {
                if (v28 >= 0x21)
                {
                  if (v28 >= 0x31)
                  {
                    if (v28 >= 0x41)
                    {
                      if (v28 <= 0x60)
                      {
                        v18 = 96;
                      }

                      else
                      {
                        v18 = 128;
                      }
                    }

                    else
                    {
                      v18 = 64;
                    }
                  }

                  else
                  {
                    v18 = 48;
                  }
                }

                else
                {
                  v18 = 32;
                }
              }

              else
              {
                v18 = 16;
              }
            }

            else
            {
              v18 = 8;
            }
          }

          else
          {
            v18 = 4;
          }
        }

        if (v141)
        {
          v19 = v29;
          if (v16 != 3 && v16)
          {
            if (v24)
            {
              v34 = v20 > 1;
              if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen > 4)
              {
                v35 = 40;
                v36 = 68;
              }

              else
              {
                v35 = 48;
                v36 = 96;
              }
            }

            else
            {
              v34 = v20 > 1;
              if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen > 4)
              {
                v35 = 24;
                v36 = 36;
              }

              else
              {
                v35 = 32;
                v36 = 48;
              }
            }

            goto LABEL_102;
          }

          if (*(this + 17) == 2)
          {
            v34 = v20 > 1;
            if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen > 4)
            {
              v35 = 76;
              v36 = 124;
            }

            else
            {
              v35 = 96;
              v36 = 128;
            }

            goto LABEL_102;
          }

          if (!*(this + 17))
          {
            v34 = v20 > 1;
            if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen > 4)
            {
              v35 = 52;
              v36 = 92;
            }

            else
            {
              v35 = 64;
              v36 = 96;
            }

LABEL_102:
            if (v34)
            {
              v18 = v36;
            }

            else
            {
              v18 = v35;
            }

            if (v20 < 2)
            {
              goto LABEL_116;
            }

            goto LABEL_106;
          }
        }

        else
        {
          v19 = v29;
        }

        if (v20 < 2)
        {
          goto LABEL_116;
        }

LABEL_106:
        if ((*(this + 15) & 2) != 0)
        {
          v15 += (32 * v12 - 32) & 0xFFFFFFFFFFFFFFC0;
          {
            goto LABEL_108;
          }
        }

        else
        {
          v15 = (v12 << 6) + 256;
          {
            goto LABEL_108;
          }
        }

        if (v119)
        {
          AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
        }

LABEL_108:
        {
          if (v131)
          {
            AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
          }
        }

        if ((v13[2792] & 1) != 0 || (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) == 0 && (*(this + 28) & 1) == 0)
        {
          if (*(this + 12) <= 1u)
          {
            v37 = 1;
          }

          else
          {
            v37 = *(this + 12);
          }

          v25 = (v134 + v37 - 1) / v37;
          goto LABEL_117;
        }

LABEL_116:
        v25 = 0;
LABEL_117:
        if ((v21 & v14) == 1)
        {
          v11 = v134;
          v38 = v134 << 6;
          if (v20 >= 2)
          {
            v38 = 0;
          }

          v15 += v38;
          v39 = ((v18 + 63) & 0x1FFFFFFC0) * v134;
        }

        else
        {
          v11 = v134;
          if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen < 5)
          {
            v39 = v134 * v18;
            if ((v18 & 0x3F) != 0)
            {
              if (v12 >= v134)
              {
                v42 = v134;
              }

              else
              {
                v42 = v12;
              }

              v39 = (v39 + 32 * v42 + 63) & 0xFFFFFFFFFFFFFFC0;
            }
          }

          else
          {
            v40 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(v19, this, AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen);
            v41 = v134 * v18;
            if (v40 == 2)
            {
              v41 = v134 << 6;
            }

            v39 = v41 + 60 * v12;
            if (v139)
            {
              v39 += 28 * v12 + v134 * v139;
            }
          }
        }

        v138 = 0;
        v140 = 0;
        v15 += v39;
        v135 = v20 - 1;
        v27 = 8 * v136 + 63;
        v137 = 143;
        goto LABEL_133;
      }
    }

    v22 = 0;
    v139 = 0;
    v23 = 0;
    v24 = 0;
    v21 = 0;
    goto LABEL_67;
  }

  v25 = 0;
  v135 = 0;
  v138 = 0;
  v140 = 0;
  v18 = 0;
  v19 = 0;
  v26 = 143;
LABEL_54:
  v137 = v26;
  v27 = 63;
LABEL_133:
  v43 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::calcRiaBvhSize(objc_object  {objcproto9MTLDevice}*,AGX::BVHDescriptor const&,unsigned long long *)::riaBvhGen;
  if (v25 >= v12)
  {
    v25 = v12;
  }

  {
    v120 = v43;
    v122 = v121;
    v43 = v120;
    if (v122)
    {
      AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
      v43 = v120;
    }
  }

  v44 = AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild;
  v45 = *(this + 7);
  {
    v132 = v43;
    v124 = v123;
    v43 = v132;
    if (v124)
    {
      AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
      v43 = v132;
    }
  }

  v46 = v45 & 2;
  {
    v133 = v43;
    v126 = v125;
    v43 = v133;
    if (v126)
    {
      AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
      v43 = v133;
    }
  }

  v47 = v15 + (v25 << 7);
  v48 = v44 | (v46 >> 1);
  if (v13[2792])
  {
    v49 = 0;
    v50 = &unk_2A179F000;
    v51 = a2;
  }

  else
  {
    v50 = &unk_2A179F000;
    v51 = a2;
    if (AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable)
    {
      v49 = 1;
    }

    else
    {
      v49 = *(this + 28) & 1;
    }
  }

  v52 = isQTBEnabled(v43, this, v48 & 1, v49);
  v53 = *(this + 1);
  if (v52)
  {
    if (*(this + 1) || (*(this + 15) & 0x400) != 0)
    {
      v57 = 0.0;
      if (v19 <= 3)
      {
        v57 = flt_29D2F27A0[v19];
      }

      v58 = v11 / v12;
      if (v58 < 1.0)
      {
        v58 = 1.0;
      }

      v59 = vcvtps_u32_f32(fminf(((v58 + v57) + -1.0) / v57, 4.0) * v12);
      if (v59 <= 1)
      {
        v59 = 1;
      }

      v60 = v59 << 6;
    }

    else
    {
      v54 = AGX::BVHDescriptor::topDownLeafNodeCapacity(this);
      if (v54 <= 1)
      {
        v55 = 1;
      }

      else
      {
        v55 = v54;
      }

      if (v19 > 3)
      {
        v56 = 0;
      }

      else
      {
        v56 = dword_29D2F2790[v19];
      }

      v110 = (*(this + 11) + v56 - 1) / v56;
      if (v110 >= 4)
      {
        v110 = 4;
      }

      v60 = v55 * (v110 << 6);
      if (((v11 + *(this + 12) - 1) / *(this + 12)) << 8 < v60)
      {
        v60 = ((v11 + *(this + 12) - 1) / *(this + 12)) << 8;
      }
    }

    v47 += v60;
  }

  v61 = v50[888];
  if (v61 == 1 && v53 != 2)
  {
    if (v47 <= 0x4000)
    {
      v63 = 0;
    }

    else
    {
      v62 = (16 * v18 + 319) & 0x1FFFFFFFC0;
      if (v18 <= 0xF)
      {
        v62 = 512;
      }

      v63 = (v47 - v62 + 0x3FFF) / (0x4000 - v62) * v62;
    }

    v47 += v63;
  }

  *v51 = v47;
  if (v53 == 1)
  {
    goto LABEL_173;
  }

  if (v53 == 2)
  {
    v64 = (*(this + 8) + *(this + 41) - 1) / *(this + 41);
    v65 = v64 + 1;
    v47 = (v47 + (v64 << 6) + 8 * (v64 + 1) + 63) & 0xFFFFFFFFFFFFFFC0;
LABEL_174:
    v67 = 2;
    goto LABEL_175;
  }

  v66 = v47 + 63;
  if (v47 + 63 < 0x4000)
  {
    v65 = 0;
    v67 = 1;
    goto LABEL_175;
  }

  if (v66 < 0x400000)
  {
LABEL_173:
    v65 = 0;
    goto LABEL_174;
  }

  v65 = 0;
  if (v66 >> 30)
  {
    if (v66 >> 38)
    {
      v67 = 8;
    }

    else
    {
      v67 = 4;
    }
  }

  else
  {
    v67 = 3;
  }

LABEL_175:
  if (*(this + 18) != 3 && *(this + 18))
  {
    v68 = 0;
  }

  else
  {
    v68 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(2 * (*(this + 17) == 2), this, v61);
  }

  if (AGX::BVHDescriptor::requiresCompactionMetadata(this, v68))
  {
    if (*(this + 4) == 2)
    {
      v70 = (v47 + 63) & 0xFFFFFFFFFFFFFFC0;
      v71 = 12 * v12 + 80 * v65;
    }

    else
    {
      v72 = 20;
      if (*v51 + 63 < 0x3FFFC0)
      {
        v72 = 12;
      }

      v70 = (v12 * v72 + 83) & 0xFFFFFFFFFFFFFFF8;
      v71 = (v47 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    v47 = (v71 + v70 + 63) & 0xFFFFFFFFFFFFFFC0;
  }

  else
  {
  }

  {
    if (v127)
    {
      AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
    }
  }

  {
    if (v128)
    {
      AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
    }
  }

  if (v69[2792] & 1) == 0 && ((AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) != 0 || (*(this + 28)))
  {
    v82 = *(this + 4);
    if (v82 == 1)
    {
      v83 = (*(this + 8) + *(this + 12) - 1) / *(this + 12);
      if (v83 < 2)
      {
        v84 = 0;
      }

      else
      {
        v84 = 0;
        do
        {
          v84 += v83;
          v85 = v83 + 7;
          v83 = (v83 + 7) >> 3;
        }

        while (v85 > 0xF);
      }

      v109 = v83 + v84;
      if (v109 <= 1)
      {
        v109 = 1;
      }

      v47 = ((v109 * v67 + 143) & 0x1FFFFFFC0) + ((v47 + 63) & 0xFFFFFFFFFFFFFFC0);
    }

    else if (v82 == 2)
    {
      v47 = v12 * v67 + 80 * v65 + ((v47 + 63) & 0xFFFFFFFFFFFFFFC0);
    }

    else
    {
      v47 = ((v47 + 279) & 0xFFFFFFFFFFFFFFF8) + ((v12 * v67 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*(this + 1) == 2)
  {
    v47 += 32 * v65;
    if (v50[888] == 1)
    {
      v73 = *(this + 8) - 1;
      LODWORD(v75) = *(this + 41);
      LODWORD(v74) = *(this + 42);
      v76 = v73 + v74;
      v77 = v75 + v73;
      v78 = *(this + 12);
      v79 = (v78 - 1 + v75) / v78;
      if (v79 < 2)
      {
        v80 = 0;
      }

      else
      {
        v80 = 0;
        do
        {
          v80 += v79;
          v81 = v79 + 7;
          v79 = (v79 + 7) >> 3;
        }

        while (v81 > 0xF);
      }

      v86 = v76 / v74;
      v87 = v77 / v75;
      if (v79 + v80 <= 1)
      {
        v88 = 1;
      }

      else
      {
        v88 = v79 + v80;
      }

      v89 = v75 * v18;
      if (v88 >= v75)
      {
        v75 = v75;
      }

      else
      {
        v75 = v88;
      }

      v90 = (v89 + 32 * v75 + 63) & 0xFFFFFFFFFFFFFFC0;
      if ((v18 & 0x3F) == 0)
      {
        v90 = v89;
      }

      v91 = ((v88 << 6) + v90 + 0x3FFF) & 0xFFFFFFFFFFFFC000;
      v92 = (16 * v18 + 319) & 0x1FFFFFFFC0;
      if (v18 <= 0xF)
      {
        v92 = 512;
      }

      v93 = 0x4000 - v92;
      v94 = (v91 - v92 + 16447) / (0x4000 - v92) + 1;
      v95 = (v78 - 1 + v74) / v78;
      if (v95 < 2)
      {
        v96 = 0;
      }

      else
      {
        v96 = 0;
        do
        {
          v96 += v95;
          v97 = v95 + 7;
          v95 = (v95 + 7) >> 3;
        }

        while (v97 > 0xF);
      }

      v98 = v95 + v96;
      if (v98 <= 1)
      {
        v98 = 1;
      }

      v99 = v74 * v18;
      if (v98 >= v74)
      {
        v74 = v74;
      }

      else
      {
        v74 = v98;
      }

      v100 = (v99 + 32 * v74 + 63) & 0xFFFFFFFFFFFFFFC0;
      if ((v18 & 0x3F) == 0)
      {
        v100 = v99;
      }

      v101 = v92 * v86 + v92 * v86 * (((((v98 << 6) + v100 + 0x3FFF) & 0xFFFFFFFFFFFFC000) - v92 + 16447) / v93);
      v102 = v92 * v87 * v94;
      if (v101 <= v102)
      {
        v101 = v102;
      }

      if (v92 + v92 * ((v47 - v92 + 0x3FFF) / v93) > v101)
      {
        v101 = v92 + v92 * ((v47 - v92 + 0x3FFF) / v93);
      }

      v47 += v101;
    }
  }

  v103 = v143 - 8;
  if ((*(this + 15) & 2) != 0)
  {
    if (v103 > 0xFFFFFFFD)
    {
      return (v27 + ((v137 + ((v47 + v138 * v140 + 63) & 0xFFFFFFFFFFFFFFC0)) & 0xFFFFFFFFFFFFFFC0)) & 0xFFFFFFFFFFFFFFC0;
    }

    goto LABEL_235;
  }

  if (v135 <= 1)
  {
    v115 = 1;
  }

  else
  {
    v115 = v135;
  }

  v117 = v50[888] <= 1u && v47 * v115 >= 0x4000 && v135 >= 2;
  v118 = (v47 + 0x3FFF) & 0xFFFFFFFFFFFFC000;
  if (!v117)
  {
    v118 = v47;
  }

  v47 = v118 * v115;
  if (v103 <= 0xFFFFFFFD)
  {
LABEL_235:
    v104 = *(this + 18);
    if (v104 == 5 || v104 == 2)
    {
      v105 = *(this + 40);
      if (v105 <= 1)
      {
        v105 = 1;
      }

      v47 = ((v47 + 15) & 0xFFFFFFFFFFFFFFF0) + 16 * *(this + 9) * v105;
    }

    v106 = *(this + 17);
    v107 = (v47 + 31) & 0xFFFFFFFFFFFFFFE0;
    if (!v106)
    {
      v107 = v47;
    }

    v47 = v107 + v106;
  }

  return (v27 + ((v137 + ((v47 + v138 * v140 + 63) & 0xFFFFFFFFFFFFFFC0)) & 0xFFFFFFFFFFFFFFC0)) & 0xFFFFFFFFFFFFFFC0;
}