void *MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer::newTileRenderPipelineDescriptor(MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer *this, unsigned __int8 **a2)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = objc_opt_new();
  MTLSerializer::SerializedCompactPropertyList::iterator(a2, &v33);
  if (v36 < v35)
  {
    while (1)
    {
      if (v38 > 3)
      {
        if (v38 > 5)
        {
          if (v38 == 6)
          {
            LODWORD(v41) = 0;
            if (v39 + v40 > v34)
            {
              goto LABEL_60;
            }

            memcpy(&v41, (v33 + v40), v39);
            [v4 setMaxTotalThreadsPerThreadgroup:v41];
          }

          else if (v38 == 8)
          {
            LODWORD(v41) = 0;
            if (v39 + v40 > v34)
            {
              goto LABEL_60;
            }

            memcpy(&v41, (v33 + v40), v39);
            [v4 setTextureWriteRoundingMode:v41];
          }
        }

        else if (v38 == 4)
        {
          LODWORD(v41) = 0;
          if (v39 + v40 > v34)
          {
            goto LABEL_60;
          }

          memcpy(&v41, (v33 + v40), v39);
          [v4 setThreadgroupSizeMatchesTileSize:v41 != 0];
        }

        else
        {
          PropertyAsObject = MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(&v33);
          v41 = PropertyAsObject;
          v42 = v7;
          if (PropertyAsObject)
          {
            if (v7 <= 3)
            {
              goto LABEL_60;
            }

            v8 = *PropertyAsObject;
            if (*PropertyAsObject)
            {
              v9 = 0;
              do
              {
                Object = MTLSerializer::SerializedObjectList::getObject(&v41, v9);
                if (Object)
                {
                  MTLPipelineLibrarySerializer::deserializeBuffers([v4 tileBuffers], Object, v11);
                }

                ++v9;
              }

              while (v8 != v9);
            }
          }
        }
      }

      else if (v38 > 1)
      {
        if (v38 == 2)
        {
          LODWORD(v41) = 0;
          if (v39 + v40 > v34)
          {
            goto LABEL_60;
          }

          memcpy(&v41, (v33 + v40), v39);
          [v4 setRasterSampleCount:v41];
        }

        else
        {
          v12 = MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(&v33);
          v32[0] = v12;
          v32[1] = v13;
          if (v12)
          {
            if (v13 <= 3)
            {
              goto LABEL_60;
            }

            v14 = *v12;
            if (*v12)
            {
              v15 = 0;
              do
              {
                v16 = MTLSerializer::SerializedObjectList::getObject(v32, v15);
                if (v16)
                {
                  v18 = v16;
                  v19 = v17;
                  v20 = [v4 colorAttachments];
                  v49[0] = v18;
                  v49[1] = v19;
                  MTLSerializer::SerializedCompactPropertyList::iterator(v49, &v41);
                  if (v44 < v43)
                  {
                    v21 = 0;
                    v22 = v46;
                    while (1)
                    {
                      if (v22 == 1)
                      {
                        __dst = 0;
                        if (v47 + v48 > v42)
                        {
                          goto LABEL_60;
                        }

                        memcpy(&__dst, v41 + v48, v47);
                        [v21 setPixelFormat:__dst];
                      }

                      else if (!v22)
                      {
                        __dst = 0;
                        if (v47 + v48 > v42)
                        {
                          goto LABEL_60;
                        }

                        memcpy(&__dst, v41 + v48, v47);
                        v21 = [v20 objectAtIndexedSubscript:__dst];
                      }

                      if (++v44 >= v43)
                      {
                        break;
                      }

                      if (v45 + 2 > v42)
                      {
                        goto LABEL_60;
                      }

                      v22 = *(v41 + v45);
                      v23 = *(v41 + v45 + 1);
                      v46 = v22;
                      v47 = v23;
                      v48 = v45 + 2;
                      v45 += 2 + v23;
                    }
                  }
                }

                ++v15;
              }

              while (v15 != v14);
            }
          }
        }
      }

      else
      {
        if (v38)
        {
          if (v38 != 1)
          {
            goto LABEL_55;
          }

          v5 = (*(*this + 16))(this, &v33);
          [v4 setTileFunction:v5];
        }

        else
        {
          v24 = MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(&v33);
          v26 = v25;
          v27 = objc_alloc(MEMORY[0x1E696AEC0]);
          if (v24)
          {
            if (!v26)
            {
              goto LABEL_60;
            }

            v28 = v24;
            while (*v28++)
            {
              if (!--v26)
              {
                goto LABEL_60;
              }
            }
          }

          v5 = [v27 initWithUTF8String:v24];
          [v4 setLabel:v5];
        }
      }

LABEL_55:
      if (++v36 >= v35)
      {
        return v4;
      }

      if (v37 + 2 > v34)
      {
LABEL_60:
        abort();
      }

      v30 = *(v33 + v37 + 1);
      v38 = *(v33 + v37);
      v39 = v30;
      v40 = v37 + 2;
      v37 += 2 + v30;
    }
  }

  return v4;
}

void *MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer::newMeshRenderPipelineDescriptor(MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer *this, unsigned __int8 **a2)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = objc_opt_new();
  MTLSerializer::SerializedCompactPropertyList::iterator(a2, &v41);
  if (v44 < v43)
  {
    while (1)
    {
      switch(v46)
      {
        case 0:
          PropertyAsObject = MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(&v41);
          v7 = v6;
          v8 = objc_alloc(MEMORY[0x1E696AEC0]);
          if (!PropertyAsObject)
          {
            goto LABEL_107;
          }

          if (!v7)
          {
            goto LABEL_114;
          }

          v9 = PropertyAsObject;
          break;
        case 1:
          v29 = (*(*this + 16))(this, &v41);
          [v4 setObjectFunction:v29];
          goto LABEL_108;
        case 2:
          v29 = (*(*this + 16))(this, &v41);
          [v4 setMeshFunction:v29];
          goto LABEL_108;
        case 3:
          v29 = (*(*this + 16))(this, &v41);
          [v4 setFragmentFunction:v29];
          goto LABEL_108;
        case 4:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setMaxTotalThreadsPerObjectThreadgroup:v39];
          goto LABEL_109;
        case 5:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setMaxTotalThreadsPerMeshThreadgroup:v39];
          goto LABEL_109;
        case 6:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setObjectThreadgroupSizeIsMultipleOfThreadExecutionWidth:v39 != 0];
          goto LABEL_109;
        case 7:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setMeshThreadgroupSizeIsMultipleOfThreadExecutionWidth:v39 != 0];
          goto LABEL_109;
        case 8:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setPayloadMemoryLength:v39];
          goto LABEL_109;
        case 9:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setMaxTotalThreadgroupsPerMeshGrid:v39];
          goto LABEL_109;
        case 10:
          v11 = MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(&v41);
          v39 = v11;
          v40 = v12;
          if (!v11)
          {
            goto LABEL_109;
          }

          if (v12 <= 3)
          {
            goto LABEL_114;
          }

          v13 = *v11;
          if (*v11)
          {
            v14 = 0;
            do
            {
              Object = MTLSerializer::SerializedObjectList::getObject(&v39, v14);
              if (Object)
              {
                MTLPipelineLibrarySerializer::deserializeBuffers([v4 objectBuffers], Object, v16);
              }

              ++v14;
            }

            while (v13 != v14);
          }

          goto LABEL_109;
        case 11:
          v30 = MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(&v41);
          v39 = v30;
          v40 = v31;
          if (!v30)
          {
            goto LABEL_109;
          }

          if (v31 <= 3)
          {
            goto LABEL_114;
          }

          v32 = *v30;
          if (*v30)
          {
            v33 = 0;
            do
            {
              v34 = MTLSerializer::SerializedObjectList::getObject(&v39, v33);
              if (v34)
              {
                MTLPipelineLibrarySerializer::deserializeBuffers([v4 meshBuffers], v34, v35);
              }

              ++v33;
            }

            while (v32 != v33);
          }

          goto LABEL_109;
        case 12:
          v17 = MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(&v41);
          v39 = v17;
          v40 = v18;
          if (!v17)
          {
            goto LABEL_109;
          }

          if (v18 <= 3)
          {
            goto LABEL_114;
          }

          v19 = *v17;
          if (*v17)
          {
            v20 = 0;
            do
            {
              v21 = MTLSerializer::SerializedObjectList::getObject(&v39, v20);
              if (v21)
              {
                MTLPipelineLibrarySerializer::deserializeBuffers([v4 fragmentBuffers], v21, v22);
              }

              ++v20;
            }

            while (v19 != v20);
          }

          goto LABEL_109;
        case 13:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setRasterSampleCount:v39];
          goto LABEL_109;
        case 14:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setAlphaToCoverageEnabled:v39 != 0];
          goto LABEL_109;
        case 15:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setAlphaToOneEnabled:v39 != 0];
          goto LABEL_109;
        case 16:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setRasterizationEnabled:v39 != 0];
          goto LABEL_109;
        case 18:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setMaxVertexAmplificationCount:v39];
          goto LABEL_109;
        case 19:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setVertexAmplificationMode:v39];
          goto LABEL_109;
        case 20:
          v23 = MTLSerializer::SerializedCompactPropertyList::Iterator::getPropertyAsObject(&v41);
          v39 = v23;
          v40 = v24;
          if (!v23)
          {
            goto LABEL_109;
          }

          if (v24 <= 3)
          {
            goto LABEL_114;
          }

          v25 = *v23;
          if (*v23)
          {
            v26 = 0;
            do
            {
              v27 = MTLSerializer::SerializedObjectList::getObject(&v39, v26);
              if (v27)
              {
                MTLPipelineLibrarySerializer::deserializeColorAttachments([v4 colorAttachments], v27, v28);
              }

              ++v26;
            }

            while (v25 != v26);
          }

          goto LABEL_109;
        case 21:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setDepthAttachmentPixelFormat:v39];
          goto LABEL_109;
        case 22:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setStencilAttachmentPixelFormat:v39];
          goto LABEL_109;
        case 23:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setSupportIndirectCommandBuffers:v39 != 0];
          goto LABEL_109;
        case 27:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setSampleMask:v39];
          goto LABEL_109;
        case 28:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          LODWORD(v36) = v39;
          [v4 setSampleCoverage:v36];
          goto LABEL_109;
        case 29:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setTextureWriteRoundingMode:v39];
          goto LABEL_109;
        case 30:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setAlphaTestEnabled:v39 != 0];
          goto LABEL_109;
        case 31:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setAlphaTestFunction:v39];
          goto LABEL_109;
        case 32:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setLogicOperationEnabled:v39 != 0];
          goto LABEL_109;
        case 33:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setClipDistanceEnableMask:v39];
          goto LABEL_109;
        case 34:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setPointSmoothEnabled:v39 != 0];
          goto LABEL_109;
        case 35:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setPointCoordLowerLeft:v39 != 0];
          goto LABEL_109;
        case 36:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setPointSizeOutputVS:v39 != 0];
          goto LABEL_109;
        case 37:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setTwoSideEnabled:v39 != 0];
          goto LABEL_109;
        case 38:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setFragmentDepthCompareClampMask:v39];
          goto LABEL_109;
        case 39:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setLogicOperation:v39];
          goto LABEL_109;
        case 40:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setDepthStencilWriteDisabled:v39 != 0];
          goto LABEL_109;
        case 41:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setNeedsCustomBorderColorSamplers:v39 != 0];
          goto LABEL_109;
        case 58:
          LODWORD(v39) = 0;
          if (v47 + v48 > v42)
          {
            goto LABEL_114;
          }

          memcpy(&v39, (v41 + v48), v47);
          [v4 setExplicitVisibilityGroupID:v39];
          goto LABEL_109;
        default:
          goto LABEL_109;
      }

      while (*v9++)
      {
        if (!--v7)
        {
          goto LABEL_114;
        }
      }

LABEL_107:
      v29 = [v8 initWithUTF8String:{PropertyAsObject, v39}];
      [v4 setLabel:v29];
LABEL_108:

LABEL_109:
      if (++v44 >= v43)
      {
        break;
      }

      if (v45 + 2 > v42)
      {
LABEL_114:
        abort();
      }

      v37 = *(v41 + v45 + 1);
      v46 = *(v41 + v45);
      v47 = v37;
      v48 = v45 + 2;
      v45 += 2 + v37;
    }
  }

  return v4;
}

void *MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::PipelineDescriptorDeserializer(void *a1, void *a2)
{
  *a1 = &unk_1EF473728;
  a1[1] = a2;
  return a1;
}

void MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::~PipelineDescriptorDeserializer(id *this)
{
  *this = &unk_1EF473728;
}

{
  MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::~PipelineDescriptorDeserializer(this);

  JUMPOUT(0x1865FF210);
}

void *MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::newComputePipelineDescriptor(MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer *a1, dispatch_data_t data)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v3 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  v6[0] = buffer_ptr;
  v6[1] = size_ptr;
  v4 = MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer::newComputePipelineDescriptor(a1, v6);
  dispatch_release(v3);
  return v4;
}

void *MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::newRenderPipelineDescriptor(MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer *a1, dispatch_data_t data)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v3 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  v6[0] = buffer_ptr;
  v6[1] = size_ptr;
  v4 = MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer::newRenderPipelineDescriptor(a1, v6);
  dispatch_release(v3);
  return v4;
}

void *MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::newTileRenderPipelineDescriptor(MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer *a1, dispatch_data_t data)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v3 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  v6[0] = buffer_ptr;
  v6[1] = size_ptr;
  v4 = MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer::newTileRenderPipelineDescriptor(a1, v6);
  dispatch_release(v3);
  return v4;
}

void *MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::newMeshRenderPipelineDescriptor(MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer *a1, dispatch_data_t data)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v3 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  v6[0] = buffer_ptr;
  v6[1] = size_ptr;
  v4 = MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer::newMeshRenderPipelineDescriptor(a1, v6);
  dispatch_release(v3);
  return v4;
}

id MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::newFunctionWithFunctionProperty(id *this, MTLSerializer::SerializedCompactPropertyList::Iterator *a2)
{
  __dst = 0;
  v2 = *(a2 + 6);
  v3 = *(a2 + 7);
  if (v2 + v3 > *(a2 + 1))
  {
    abort();
  }

  memcpy(&__dst, (*a2 + v3), v2);
  v5 = [this[1] functionWithFunctionRef:__dst];

  return v5;
}

uint64_t MTLPipelineLibrarySerializer::NamedObjectJSONSerializer::setUIntValue(uint64_t this, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    v6 = this;
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v8 = *(v6 + 8);
    v9 = *(*(v6 + 16) + 8 * a2);

    return [v8 setObject:v7 forKeyedSubscript:v9];
  }

  return this;
}

uint64_t MTLPipelineLibrarySerializer::NamedObjectJSONSerializer::setFloatValue(uint64_t this, unsigned int a2, float a3, float a4)
{
  if (a3 != a4)
  {
    v6 = this;
    v7 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    v8 = *(v6 + 8);
    v9 = *(*(v6 + 16) + 8 * a2);

    return [v8 setObject:v7 forKeyedSubscript:v9];
  }

  return this;
}

uint64_t MTLPipelineLibrarySerializer::NamedObjectJSONSerializer::Finalize(MTLPipelineLibrarySerializer::NamedObjectJSONSerializer *this)
{
  v1 = *(this + 1);
  *(this + 1) = 0;
  return v1;
}

uint64_t MTLPipelineLibrarySerializer::NamedObjectJSONSerializer::setType(MTLPipelineLibrarySerializer::NamedObjectJSONSerializer *this, const char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v4 = *(this + 1);

  return [v4 setObject:v3 forKeyedSubscript:@"type"];
}

void MTLPipelineLibrarySerializer::JSONSerializationContext::~JSONSerializationContext(id *this)
{
  MTLPipelineLibrarySerializer::JSONSerializationContext::~JSONSerializationContext(this);

  JUMPOUT(0x1865FF210);
}

{
  *this = &unk_1EF473840;

  v2 = this[2];
  if (v2)
  {
    this[3] = v2;
    operator delete(v2);
  }
}

void *MTLPipelineLibrarySerializer::JSONSerializationContext::createObjectArray(uint64_t a1, uint64_t **a2)
{
  v3 = [MEMORY[0x1E695DF70] array];
  v5 = *a2;
  v4 = a2[1];
  while (v5 != v4)
  {
    v6 = *v5++;
    [v3 addObject:v6];
  }

  return v3;
}

uint64_t MTLPipelineLibrarySerializer::JSONSerializationContext::addSerializedSpecializedFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 8) containsObject:?];
  if ((result & 1) == 0)
  {
    v6 = *(a1 + 8);

    return [v6 addObject:a3];
  }

  return result;
}

uint64_t MTLPipelineLibrarySerializer::JSONSerializationContext::addSerializedComputePipeline(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 8) containsObject:?];
  if ((result & 1) == 0)
  {
    v6 = *(a1 + 8);

    return [v6 addObject:a3];
  }

  return result;
}

uint64_t MTLPipelineLibrarySerializer::JSONSerializationContext::addSerializedRenderPipeline(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 8) containsObject:?];
  if ((result & 1) == 0)
  {
    v6 = *(a1 + 8);

    return [v6 addObject:a3];
  }

  return result;
}

uint64_t MTLPipelineLibrarySerializer::JSONSerializationContext::addSerializedTileRenderPipeline(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 8) containsObject:?];
  if ((result & 1) == 0)
  {
    v6 = *(a1 + 8);

    return [v6 addObject:a3];
  }

  return result;
}

uint64_t MTLPipelineLibrarySerializer::JSONSerializationContext::addSerializedMeshRenderPipeline(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 8) containsObject:?];
  if ((result & 1) == 0)
  {
    v6 = *(a1 + 8);

    return [v6 addObject:a3];
  }

  return result;
}

void MTLPipelineLibrarySerializer::BinarySerializationContext::~BinarySerializationContext(MTLPipelineLibrarySerializer::BinarySerializationContext *this)
{
  MTLPipelineLibrarySerializer::BinarySerializationContext::~BinarySerializationContext(this);

  JUMPOUT(0x1865FF210);
}

{
  *this = &unk_1EF473960;
  MTLSerializer::Context::~Context((this + 312));
  v2 = *(this + 36);
  if (v2)
  {
    *(this + 37) = v2;
    operator delete(v2);
  }

  v3 = *(this + 33);
  if (v3)
  {
    *(this + 34) = v3;
    operator delete(v3);
  }

  v4 = *(this + 30);
  if (v4)
  {
    *(this + 31) = v4;
    operator delete(v4);
  }

  v5 = *(this + 26);
  if (v5)
  {
    *(this + 27) = v5;
    operator delete(v5);
  }

  v6 = *(this + 23);
  if (v6)
  {
    *(this + 24) = v6;
    operator delete(v6);
  }

  v7 = *(this + 19);
  if (v7)
  {
    *(this + 20) = v7;
    operator delete(v7);
  }

  v8 = *(this + 16);
  if (v8)
  {
    *(this + 17) = v8;
    operator delete(v8);
  }

  v9 = *(this + 12);
  if (v9)
  {
    *(this + 13) = v9;
    operator delete(v9);
  }

  v10 = *(this + 9);
  if (v10)
  {
    *(this + 10) = v10;
    operator delete(v10);
  }

  v11 = *(this + 5);
  if (v11)
  {
    *(this + 6) = v11;
    operator delete(v11);
  }

  v12 = *(this + 2);
  if (v12)
  {
    *(this + 3) = v12;
    operator delete(v12);
  }
}

void MTLPipelineLibrarySerializer::BinarySerializationContext::createObjectArray(uint64_t a1, uint64_t **a2)
{
  memset(__p, 0, sizeof(__p));
  std::vector<MTLSerializer::ObjectRef>::reserve(__p, a2[1] - *a2);
  v4 = *a2;
  v3 = a2[1];
  while (v4 != v3)
  {
    v5 = *v4;
    std::vector<MTLSerializer::ObjectRef>::push_back[abi:ne200100](__p, &v5);
    ++v4;
  }

  MTLSerializer::Context::CreateObjectArray<MTLSerializer::ObjectRef>();
}

void sub_185C02B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLPipelineLibrarySerializer::BinarySerializationContext::createUint32Array(uint64_t a1, void *a2)
{
  if (a2[1] == *a2)
  {
    return 0;
  }

  else
  {
    return MTLSerializer::Context::CreateArray<unsigned int>(a1 + 312, a2);
  }
}

void MTLPipelineLibrarySerializer::BinarySerializationContext::addSerializedSpecializedFunction(uint64_t a1, char *a2, void *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v5 = *(a1 + 48) - *(a1 + 40);
  MTLPipelineLibrarySerializer::BinarySerializationContext::addNamedDescriptor(a1, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = a3;
  std::vector<MTLSerializer::ObjectRef>::push_back[abi:ne200100](a1 + 40, __p);
}

void sub_185C02C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLPipelineLibrarySerializer::BinarySerializationContext::addSerializedComputePipeline(uint64_t a1, char *a2, void *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v5 = *(a1 + 104) - *(a1 + 96);
  MTLPipelineLibrarySerializer::BinarySerializationContext::addNamedDescriptor(a1, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = a3;
  std::vector<MTLSerializer::ObjectRef>::push_back[abi:ne200100](a1 + 96, __p);
}

void sub_185C02CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLPipelineLibrarySerializer::BinarySerializationContext::addSerializedRenderPipeline(uint64_t a1, char *a2, void *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v5 = *(a1 + 160) - *(a1 + 152);
  MTLPipelineLibrarySerializer::BinarySerializationContext::addNamedDescriptor(a1, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = a3;
  std::vector<MTLSerializer::ObjectRef>::push_back[abi:ne200100](a1 + 152, __p);
}

void sub_185C02D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLPipelineLibrarySerializer::BinarySerializationContext::addSerializedTileRenderPipeline(uint64_t a1, char *a2, void *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v5 = *(a1 + 216) - *(a1 + 208);
  MTLPipelineLibrarySerializer::BinarySerializationContext::addNamedDescriptor(a1, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = a3;
  std::vector<MTLSerializer::ObjectRef>::push_back[abi:ne200100](a1 + 208, __p);
}

void sub_185C02E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLPipelineLibrarySerializer::BinarySerializationContext::addSerializedMeshRenderPipeline(uint64_t a1, char *a2, void *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v5 = *(a1 + 272) - *(a1 + 264);
  MTLPipelineLibrarySerializer::BinarySerializationContext::addNamedDescriptor(a1, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = a3;
  std::vector<MTLSerializer::ObjectRef>::push_back[abi:ne200100](a1 + 264, __p);
}

void sub_185C02EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLPipelineLibrarySerializer::PipelineDescriptorSerializerPrivate::~PipelineDescriptorSerializerPrivate(MTLPipelineLibrarySerializer::PipelineDescriptorSerializerPrivate *this)
{
  *this = &unk_1EF473A70;
  MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer::~PipelineLibraryBinarySerializer((this + 8));
}

{
  *this = &unk_1EF473A70;
  MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer::~PipelineLibraryBinarySerializer((this + 8));

  JUMPOUT(0x1865FF210);
}

void MTLSerializer::DirectObjectListSerializer::~DirectObjectListSerializer(MTLSerializer::DirectObjectListSerializer *this)
{
  *this = &unk_1EF473578;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  *this = &unk_1EF473B18;
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_1EF473578;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  *this = &unk_1EF473B18;
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1865FF210);
}

void MTLSerializer::ObjectSerializer::~ObjectSerializer(MTLSerializer::ObjectSerializer *this)
{
  *this = &unk_1EF473B18;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1EF473B18;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1865FF210);
}

MTLPipelineLibrarySerializer::JSONSerializationContext *MTLPipelineLibrarySerializer::JSONSerializationContext::JSONSerializationContext(MTLPipelineLibrarySerializer::JSONSerializationContext *this, char a2)
{
  *this = &unk_1EF473840;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 1) = objc_opt_new();
  *(this + 40) = a2;
  return this;
}

void sub_185C031C4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    *(v1 + 24) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MTLSerializer::PropertyListSerializer::~PropertyListSerializer(MTLSerializer::PropertyListSerializer *this)
{
  *this = &unk_1EF473578;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  *this = &unk_1EF473B18;
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_1EF473578;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  *this = &unk_1EF473B18;
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1865FF210);
}

MTLSerializer::StringSerializer *MTLSerializer::StringSerializer::StringSerializer(MTLSerializer::StringSerializer *this, const char *__s)
{
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 24) = 0u;
  *(this + 5) = 8;
  *this = &unk_1EF473B88;
  v5 = strlen(__s);
  v6 = v5 + 1;
  if (v5 == -1)
  {
    begin = 0;
  }

  else
  {
    std::vector<unsigned char>::__append(v4, v6);
    begin = v4->__begin_;
  }

  memcpy(begin, __s, v6);
  *(this + 5) = 1;
  return this;
}

void sub_185C033BC(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[1];
  if (v4)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void MTLSerializer::StringSerializer::~StringSerializer(MTLSerializer::StringSerializer *this)
{
  *this = &unk_1EF473B18;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1EF473B18;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1865FF210);
}

void MTLSerializer::Context::~Context(MTLSerializer::Context *this)
{
  v2 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *this;
  }

  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

uint64_t MTLSerializer::PropertyListSerializer::setSmallValue<unsigned int>(uint64_t a1, uint64_t a2, int a3)
{
  begin = *(a1 + 8);
  v7 = (a1 + 8);
  v8 = *(a1 + 16) - begin;
  v9 = v8 & 3;
  if ((v8 & 3) != 0)
  {
    v10 = 4 - v9;
    v11 = 4 - v9 + v8;
    if (v8 >= v11)
    {
      if (v8 > v11)
      {
        *(a1 + 16) = &begin[v11];
      }
    }

    else
    {
      std::vector<unsigned char>::__append((a1 + 8), v10);
      begin = v7->__begin_;
    }

    bzero(&begin[v8], v10);
    begin = *(a1 + 8);
    v8 = *(a1 + 16) - begin;
  }

  if (v8 > 0xFFFFFFFFFFFFFFFBLL)
  {
    *(a1 + 16) = &begin[v8 + 4];
  }

  else
  {
    std::vector<unsigned char>::__append(v7, 4uLL);
    begin = v7->__begin_;
  }

  *&begin[v8] = a3;
  v12 = *(*a1 + 24);

  return v12(a1, a2, v8);
}

void *MTLPipelineLibrarySerializer::NamedObjectBinarySerializer::setString(MTLPipelineLibrarySerializer::NamedObjectBinarySerializer *this, unsigned int a2, NSString *a3)
{
  v4 = *(this + 2);
  *(*(v4 + 48) + 8 * a2) = MTLSerializer::Context::CreateString(*(this + 1), [(NSString *)a3 UTF8String]);
  *(*(v4 + 72) + 4 * a2) = *(v4 + 16) - *(v4 + 8) + 2;
  *v6 = 0;
  return MTLSerializer::CompactPropertyListSerializer::setPropertyData(v4, a2, v6, 4uLL);
}

void *MTLPipelineLibrarySerializer::NamedObjectBinarySerializer::setObject(void *result, unsigned int a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result[2];
    *(*(v3 + 48) + 8 * a2) = a3;
    *(*(v3 + 72) + 4 * a2) = *(v3 + 16) - *(v3 + 8) + 2;
    *v4 = 0;
    return MTLSerializer::CompactPropertyListSerializer::setPropertyData(v3, a2, v4, 4uLL);
  }

  return result;
}

void *MTLPipelineLibrarySerializer::NamedObjectBinarySerializer::setUIntValue(void *this, char a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    v8 = v4;
    v9 = v5;
    v6 = *(this + 2);
    v7 = a3;
    return MTLSerializer::CompactPropertyListSerializer::setPropertyData(v6, a2, &v7, 4uLL);
  }

  return this;
}

void *MTLPipelineLibrarySerializer::NamedObjectBinarySerializer::setFloatValue(void *this, char a2, float a3, float a4)
{
  if (a3 != a4)
  {
    v8 = v4;
    v9 = v5;
    v6 = *(this + 2);
    v7 = a3;
    return MTLSerializer::CompactPropertyListSerializer::setPropertyData(v6, a2, &v7, 4uLL);
  }

  return this;
}

void *MTLPipelineLibrarySerializer::NamedObjectBinarySerializer::setVector(MTLPipelineLibrarySerializer::NamedObjectBinarySerializer *this, char a2, uint64_t a3, const char *a4)
{
  v7 = _MTLConstantDataSize(a3);
  v8 = *(this + 2);

  return MTLSerializer::CompactPropertyListSerializer::setPropertyData(v8, a2, a4, v7);
}

MTLSerializer::ObjectListSerializer *MTLPipelineLibrarySerializer::NamedObjectBinarySerializer::Finalize(MTLPipelineLibrarySerializer::NamedObjectBinarySerializer *this)
{
  v1 = *(this + 2);
  **(v1 + 8) = *(v1 + 96);
  return MTLSerializer::ObjectListSerializer::FinalizeInternal(v1);
}

MTLSerializer::CompactPropertyListSerializer *MTLSerializer::CompactPropertyListSerializer::CompactPropertyListSerializer(MTLSerializer::CompactPropertyListSerializer *this, unsigned int a2)
{
  v4 = MTLSerializer::ObjectListSerializer::ObjectListSerializer(this, a2);
  *v4 = &unk_1EF473C40;
  std::vector<unsigned int>::vector[abi:ne200100](v4 + 9, a2);
  *(this + 24) = 0;
  std::vector<unsigned char>::reserve((this + 8), a2);
  v5 = *(this + 9);
  v6 = *(this + 10) - v5;
  if (v6 >= 1)
  {
    bzero(v5, v6);
  }

  v7 = *(this + 1);
  v8 = *(this + 2) - v7;
  if (v8 == -1)
  {
    *(this + 2) = v7;
  }

  else
  {
    std::vector<unsigned char>::__append((this + 8), 1uLL);
    v7 = *(this + 1);
  }

  *(v7 + v8) = 0;
  *(this + 5) = 1;
  return this;
}

void sub_185C03A90(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 10) = v4;
    operator delete(v4);
  }

  MTLSerializer::ObjectListSerializer::~ObjectListSerializer(v1);
  _Unwind_Resume(a1);
}

void MTLSerializer::CompactPropertyListSerializer::~CompactPropertyListSerializer(MTLSerializer::CompactPropertyListSerializer *this)
{
  *this = &unk_1EF473C40;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  *this = &unk_1EF473578;
  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  *this = &unk_1EF473B18;
  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

{
  *this = &unk_1EF473C40;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  *this = &unk_1EF473578;
  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  *this = &unk_1EF473B18;
  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x1865FF210);
}

void *std::vector<unsigned int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_185C03CA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, a2);
  }

  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
}

void *MTLSerializer::CompactPropertyListSerializer::setPropertyData(MTLSerializer::CompactPropertyListSerializer *this, char a2, const char *a3, std::vector<char>::size_type a4)
{
  begin = *(this + 1);
  v9 = (this + 8);
  v10 = *(this + 2) - begin;
  if (v10 == -1)
  {
    *(this + 2) = begin;
  }

  else
  {
    std::vector<unsigned char>::__append((this + 8), 1uLL);
    begin = v9->__begin_;
  }

  begin[v10] = a2;
  v11 = *(this + 1);
  v12 = *(this + 2) - v11;
  if (v12 == -1)
  {
    *(this + 2) = v11;
  }

  else
  {
    std::vector<unsigned char>::__append(v9, 1uLL);
    v11 = v9->__begin_;
  }

  v11[v12] = a4;
  v13 = *(this + 1);
  v14 = *(this + 2) - v13;
  if (v14 >= v14 + a4)
  {
    if (v14 > v14 + a4)
    {
      *(this + 2) += a4;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(v9, a4);
    v13 = v9->__begin_;
  }

  result = memcpy(&v13[v14], a3, a4);
  ++*(this + 24);
  return result;
}

void *std::vector<MTLSerializer::ObjectRef>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLSerializer::ObjectSerializer *>>(result, a2);
    }

    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t MTLSerializer::Context::CreateArray<unsigned int>(uint64_t a1, void *a2)
{
  if (a2[1] != *a2)
  {
    operator new();
  }

  return 0;
}

uint64_t MTLSerializer::ArraySerializer<unsigned int>::ArraySerializer(uint64_t a1, int **a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *a1 = &unk_1EF473C88;
  *(a1 + 40) = 4;
  v6 = *a2;
  v5 = a2[1];
  std::vector<unsigned char>::__append((a1 + 8), 4uLL);
  *v4->__begin_ = (v5 - v6) >> 2;
  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    do
    {
      v9 = *v7;
      begin = *(a1 + 8);
      v11 = *(a1 + 16) - begin;
      v12 = v11 & 3;
      if ((v11 & 3) != 0)
      {
        v13 = 4 - v12;
        v14 = 4 - v12 + v11;
        if (v11 >= v14)
        {
          if (v11 > v14)
          {
            *(a1 + 16) = &begin[v14];
          }
        }

        else
        {
          std::vector<unsigned char>::__append(v4, v13);
          begin = v4->__begin_;
        }

        bzero(&begin[v11], v13);
        begin = *(a1 + 8);
        v11 = *(a1 + 16) - begin;
      }

      if (v11 > 0xFFFFFFFFFFFFFFFBLL)
      {
        *(a1 + 16) = &begin[v11 + 4];
      }

      else
      {
        std::vector<unsigned char>::__append(v4, 4uLL);
        begin = v4->__begin_;
      }

      *&begin[v11] = v9;
      ++v7;
    }

    while (v7 != v8);
  }

  return a1;
}

void sub_185C04084(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[1];
  if (v4)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *MTLSerializer::ArraySerializer<unsigned int>::~ArraySerializer(void *a1)
{
  *a1 = &unk_1EF473B18;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void MTLSerializer::ArraySerializer<unsigned int>::~ArraySerializer(void *a1)
{
  *a1 = &unk_1EF473B18;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1865FF210);
}

uint64_t MTLPipelineLibrarySerializer::BinarySerializationContext::addNamedDescriptor(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    MTLSerializer::Context::CreatePropertyListSerializer((result + 312));
  }

  return result;
}

void std::vector<unsigned char>::__append(std::vector<char> *this, std::vector<char>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      bzero(this->__end_, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = (end - this->__begin_);
    v8 = &v7[__n];
    if (&v7[__n] < 0)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
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

    v11 = end - this->__begin_;
    bzero(v7, __n);
    memcpy(&v7[begin - end], begin, v11);
    this->__begin_ = &v7[begin - end];
    this->__end_ = &v7[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void *std::vector<MTLSerializer::ObjectSerializer *>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<MTLSerializer::ObjectSerializer *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_185C043B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MTLSerializer::ObjectSerializer *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLSerializer::ObjectSerializer *>>(a1, a2);
  }

  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
}

MTLSerializer::DirectObjectListSerializer *MTLSerializer::ObjectArraySerializer<MTLSerializer::ObjectRef>::ObjectArraySerializer(MTLSerializer::DirectObjectListSerializer *a1, void *a2)
{
  result = MTLSerializer::DirectObjectListSerializer::DirectObjectListSerializer(a1, (a2[1] - *a2) >> 3);
  *result = &unk_1EF473CC8;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v4 != *a2)
  {
    v6 = 0;
    v7 = v5 >> 3;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      *(*(result + 6) + 8 * v6) = *(*a2 + 8 * v6);
      ++v6;
    }

    while (v7 != v6);
  }

  return result;
}

void *MTLSerializer::ObjectArraySerializer<MTLSerializer::ObjectRef>::~ObjectArraySerializer(void *a1)
{
  *a1 = &unk_1EF473578;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  *a1 = &unk_1EF473B18;
  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void MTLSerializer::ObjectArraySerializer<MTLSerializer::ObjectRef>::~ObjectArraySerializer(void *a1)
{
  *a1 = &unk_1EF473578;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  *a1 = &unk_1EF473B18;
  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1865FF210);
}

uint64_t AirReflection::Node::node_as_PatchFnAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 4100) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_PointSizeRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 131073) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_RenderTargetArrayIndexRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 131075) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ViewportArrayIndexRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 131077) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_DepthRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 135169) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_StencilRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 135170) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_SampleMaskRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 135171) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_AcceptIntersectionRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 139264)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::Node::node_as_ContinueSearchRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 139265) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_DistanceRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 139266) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_MeshPrimitiveDataRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 143360)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::Node::node_as_PrimitiveCulledRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 143362) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_PrimitiveIDRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 143363) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ClipDistanceRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 0x20000)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t MTLReflectionByNameDeserializerAIR::createArgumentDeserializerForFunction(uint64_t a1, int *a2)
{
  v4 = (a2 - *a2);
  v5 = *v4;
  v6 = (a1 + 144);
  v7 = *(a1 + 167);
  if (v7 < 0)
  {
    v8 = *(a1 + 144);
    v9 = *(a1 + 152);
  }

  else
  {
    v8 = (a1 + 144);
    v9 = *(a1 + 167);
  }

  if (v5 >= 7)
  {
    v10 = v4[3];
    if (v4[3])
    {
      v10 += a2 + *(a2 + v10);
    }

    if (v5 >= 0xD)
    {
      v11 = v4[6];
      if (v11)
      {
        v12 = a2 + v11;
        v13 = *(a2 + v11);
        if (*(a2 + v11 + v13))
        {
          v14 = 0;
          v15 = v10 + 4;
          v16 = a2 + v11 + v13 + 4;
          do
          {
            v17 = (v15 + 4 * *(v16 + 4 * v14));
            v18 = AirReflection::Node::node_as_KernelFunction((v17 + *v17));
            if (v18)
            {
              v19 = (v18 - *v18);
              if (*v19 < 5u)
              {
                v23 = 0;
                v20 = 0;
              }

              else
              {
                v20 = v19[2];
                if (v20)
                {
                  v21 = (v18 + v20);
                  v22 = *v21;
                  v23 = v21 + v22 + 4;
                  v20 = *(v21 + v22);
                }

                else
                {
                  v23 = 0;
                }
              }

              if (v20 == v9 && !memcmp(v23, v8, v9))
              {
                *(a1 + 136) = 3;
                operator new();
              }
            }

            ++v14;
          }

          while (v14 < *&v12[v13]);
          LOBYTE(v7) = *(a1 + 167);
        }
      }
    }
  }

  if ((v7 & 0x80) != 0)
  {
    v25 = *(a1 + 144);
    v24 = *(a1 + 152);
  }

  else
  {
    v24 = v7;
    v25 = v6;
  }

  v26 = (a2 - *a2);
  v27 = *v26;
  if (v27 >= 7)
  {
    v28 = v26[3];
    if (v26[3])
    {
      v28 += a2 + *(a2 + v28);
    }

    if (v27 >= 0xF)
    {
      v29 = v26[7];
      if (v29)
      {
        v30 = a2 + v29;
        v31 = *(a2 + v29);
        if (*(a2 + v29 + v31))
        {
          v32 = 0;
          v33 = v28 + 4;
          v34 = a2 + v29 + v31 + 4;
          do
          {
            v35 = (v33 + 4 * *(v34 + 4 * v32));
            v36 = AirReflection::Node::node_as_VertexFunction((v35 + *v35));
            if (v36)
            {
              v37 = (v36 - *v36);
              if (*v37 < 5u)
              {
                v41 = 0;
                v38 = 0;
              }

              else
              {
                v38 = v37[2];
                if (v38)
                {
                  v39 = (v36 + v38);
                  v40 = *v39;
                  v41 = v39 + v40 + 4;
                  v38 = *(v39 + v40);
                }

                else
                {
                  v41 = 0;
                }
              }

              if (v38 == v24 && !memcmp(v41, v25, v24))
              {
                *(a1 + 136) = 1;
                operator new();
              }
            }

            ++v32;
          }

          while (v32 < *&v30[v31]);
          LOBYTE(v7) = *(a1 + 167);
        }
      }
    }
  }

  if ((v7 & 0x80) != 0)
  {
    v43 = *(a1 + 144);
    v42 = *(a1 + 152);
  }

  else
  {
    v42 = v7;
    v43 = v6;
  }

  v44 = (a2 - *a2);
  v45 = *v44;
  if (v45 >= 7)
  {
    v46 = v44[3];
    if (v44[3])
    {
      v46 += a2 + *(a2 + v46);
    }

    if (v45 >= 9)
    {
      v47 = v44[4];
      if (v47)
      {
        v48 = a2 + v47;
        v49 = *(a2 + v47);
        if (*(a2 + v47 + v49))
        {
          v50 = 0;
          v51 = v46 + 4;
          v52 = a2 + v47 + v49 + 4;
          do
          {
            v53 = (v51 + 4 * *(v52 + 4 * v50));
            v54 = AirReflection::Node::node_as_FragmentFunction((v53 + *v53));
            if (v54)
            {
              v55 = (v54 - *v54);
              if (*v55 < 5u)
              {
                v59 = 0;
                v56 = 0;
              }

              else
              {
                v56 = v55[2];
                if (v56)
                {
                  v57 = (v54 + v56);
                  v58 = *v57;
                  v59 = v57 + v58 + 4;
                  v56 = *(v57 + v58);
                }

                else
                {
                  v59 = 0;
                }
              }

              if (v56 == v42 && !memcmp(v59, v43, v42))
              {
                *(a1 + 136) = 2;
                operator new();
              }
            }

            ++v50;
          }

          while (v50 < *&v48[v49]);
          LOBYTE(v7) = *(a1 + 167);
        }
      }
    }
  }

  if ((v7 & 0x80) != 0)
  {
    v61 = *(a1 + 144);
    v60 = *(a1 + 152);
  }

  else
  {
    v60 = v7;
    v61 = v6;
  }

  v62 = (a2 - *a2);
  v63 = *v62;
  if (v63 >= 7)
  {
    v64 = v62[3];
    if (v62[3])
    {
      v64 += a2 + *(a2 + v64);
    }

    if (v63 >= 0x13)
    {
      v65 = v62[9];
      if (v65)
      {
        v66 = a2 + v65;
        v67 = *(a2 + v65);
        if (*(a2 + v65 + v67))
        {
          v68 = 0;
          v69 = v64 + 4;
          v70 = a2 + v65 + v67 + 4;
          do
          {
            v71 = (v69 + 4 * *(v70 + 4 * v68));
            v72 = AirReflection::Node::node_as_MeshFunction((v71 + *v71));
            if (v72)
            {
              v73 = (v72 - *v72);
              if (*v73 < 5u)
              {
                v77 = 0;
                v74 = 0;
              }

              else
              {
                v74 = v73[2];
                if (v74)
                {
                  v75 = (v72 + v74);
                  v76 = *v75;
                  v77 = v75 + v76 + 4;
                  v74 = *(v75 + v76);
                }

                else
                {
                  v77 = 0;
                }
              }

              if (v74 == v60 && !memcmp(v77, v61, v60))
              {
                *(a1 + 136) = 7;
                operator new();
              }
            }

            ++v68;
          }

          while (v68 < *&v66[v67]);
          LOBYTE(v7) = *(a1 + 167);
        }
      }
    }
  }

  if ((v7 & 0x80) != 0)
  {
    v79 = *(a1 + 144);
    v78 = *(a1 + 152);
  }

  else
  {
    v78 = v7;
    v79 = v6;
  }

  v80 = (a2 - *a2);
  v81 = *v80;
  if (v81 >= 7)
  {
    v82 = v80[3];
    if (v80[3])
    {
      v82 += a2 + *(a2 + v82);
    }

    if (v81 >= 0x15)
    {
      v83 = v80[10];
      if (v83)
      {
        v84 = a2 + v83;
        v85 = *(a2 + v83);
        if (*(a2 + v83 + v85))
        {
          v86 = 0;
          v87 = v82 + 4;
          v88 = a2 + v83 + v85 + 4;
          do
          {
            v89 = (v87 + 4 * *(v88 + 4 * v86));
            v90 = AirReflection::Node::node_as_ObjectFunction((v89 + *v89));
            if (v90)
            {
              v91 = (v90 - *v90);
              if (*v91 < 5u)
              {
                v95 = 0;
                v92 = 0;
              }

              else
              {
                v92 = v91[2];
                if (v92)
                {
                  v93 = (v90 + v92);
                  v94 = *v93;
                  v95 = v93 + v94 + 4;
                  v92 = *(v93 + v94);
                }

                else
                {
                  v95 = 0;
                }
              }

              if (v92 == v78 && !memcmp(v95, v79, v78))
              {
                *(a1 + 136) = 8;
                operator new();
              }
            }

            ++v86;
          }

          while (v86 < *&v84[v85]);
          LOBYTE(v7) = *(a1 + 167);
        }
      }
    }
  }

  if ((v7 & 0x80) != 0)
  {
    v97 = *(a1 + 144);
    v96 = *(a1 + 152);
  }

  else
  {
    v96 = v7;
    v97 = v6;
  }

  v98 = (a2 - *a2);
  v99 = *v98;
  if (v99 >= 7)
  {
    v100 = v98[3];
    if (v98[3])
    {
      v100 += a2 + *(a2 + v100);
    }

    if (v99 >= 0x11)
    {
      v101 = v98[8];
      if (v101)
      {
        v102 = a2 + v101;
        v103 = *(a2 + v101);
        if (*(a2 + v101 + v103))
        {
          v104 = 0;
          v105 = v100 + 4;
          v106 = a2 + v101 + v103 + 4;
          do
          {
            v107 = (v105 + 4 * *(v106 + 4 * v104));
            v108 = AirReflection::Node::node_as_VisibleFunction((v107 + *v107));
            if (v108)
            {
              v109 = (v108 - *v108);
              if (*v109 < 5u)
              {
                v113 = 0;
                v110 = 0;
              }

              else
              {
                v110 = v109[2];
                if (v110)
                {
                  v111 = (v108 + v110);
                  v112 = *v111;
                  v113 = v111 + v112 + 4;
                  v110 = *(v111 + v112);
                }

                else
                {
                  v113 = 0;
                }
              }

              if (v110 == v96 && !memcmp(v113, v97, v96))
              {
                *(a1 + 136) = 5;
                operator new();
              }
            }

            ++v104;
          }

          while (v104 < *&v102[v103]);
        }
      }
    }
  }

  v114 = *(a1 + 167);
  if ((v114 & 0x8000000000000000) != 0)
  {
    v6 = *(a1 + 144);
    v114 = *(a1 + 152);
  }

  if ((findFunctionByName<AirReflection::IntersectionFunction>(a2, v6, v114) & 0x100000000) != 0)
  {
    *(a1 + 136) = 6;
    operator new();
  }

  return 0;
}

uint64_t AirReflection::Node::node_as_MeshFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 6) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ObjectFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 7) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_VisibleFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 4) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t findFunctionByName<AirReflection::IntersectionFunction>(int *a1, const void *a2, size_t a3)
{
  v3 = (a1 - *a1);
  v4 = *v3;
  if (v4 < 7)
  {
    v8 = 0;
    v21 = 0;
    v22 = 0;
    return v21 | v22 | v8;
  }

  v7 = v3[3];
  if (v3[3])
  {
    v7 += a1 + *(a1 + v7);
  }

  if (v4 < 0xB)
  {
    goto LABEL_17;
  }

  v8 = v3[5];
  if (!v8)
  {
LABEL_18:
    v21 = 0;
    v22 = 0;
    return v21 | v22 | v8;
  }

  v9 = a1 + v8;
  v10 = *(a1 + v8);
  if (!*(a1 + v8 + v10))
  {
LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  v11 = 0;
  v12 = v7 + 4;
  v13 = a1 + v8 + v10 + 4;
  while (1)
  {
    v14 = (v12 + 4 * *(v13 + 4 * v11));
    v15 = AirReflection::Node::node_as_IntersectionFunction((v14 + *v14));
    if (v15)
    {
      v16 = (v15 - *v15);
      if (*v16 < 5u)
      {
        v20 = 0;
        v17 = 0;
      }

      else
      {
        v17 = v16[2];
        if (v17)
        {
          v18 = (v15 + v17);
          v19 = *v18;
          v20 = v18 + v19 + 4;
          v17 = *(v18 + v19);
        }

        else
        {
          v20 = 0;
        }
      }

      if (v17 == a3 && !memcmp(v20, a2, a3))
      {
        break;
      }
    }

    if (++v11 >= *&v9[v10])
    {
      goto LABEL_17;
    }
  }

  v22 = v11 & 0xFFFFFF00;
  v8 = v11;
  v21 = 0x100000000;
  return v21 | v22 | v8;
}

uint64_t AirReflection::Node::node_as_IntersectionFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 5) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

void MTLReflectionByNameDeserializerAIR::deserialize(uint64_t a1, uint64_t a2, dispatch_data_t data)
{
  if (data)
  {
    v16 = 0;
    buffer_ptr = 0;
    v6 = dispatch_data_create_map(data, &buffer_ptr, &v16);
    v7 = (buffer_ptr + *buffer_ptr);
    v8 = *v7;
    v9 = -v8;
    v10 = (v7 - v8);
    if (*v10 >= 5u)
    {
      v11 = v10[2];
      if (v11)
      {
        *(a1 + 112) = *(v7 + v11 + 4) | (*(v7 + v11) << 16);
        v9 = -*v7;
      }
    }

    v12 = (v7 + v9);
    if (*v12 >= 7u)
    {
      v13 = v12[3];
      if (v13)
      {
        if (*(v7 + v13 + *(v7 + v13)))
        {
          ArgumentDeserializerForFunction = MTLReflectionByNameDeserializerAIR::createArgumentDeserializerForFunction(a1, v7);
          *(a1 + 128) = ArgumentDeserializerForFunction;
          if (ArgumentDeserializerForFunction)
          {
            (*(*ArgumentDeserializerForFunction + 16))(ArgumentDeserializerForFunction, a2, data);
            v15 = *(a1 + 128);
            *(a1 + 16) = *(v15 + 16);
            *(a1 + 8) = *(v15 + 8);
            *(a1 + 24) = *(v15 + 24);
            *(a1 + 36) = *(v15 + 36);
            *(a1 + 48) = *(v15 + 48);
            *(a1 + 120) = *(v15 + 120);
            *(a1 + 40) = *(v15 + 40);
          }
        }
      }
    }

    dispatch_release(v6);
  }
}

void MTLReturnValueInternal::~MTLReturnValueInternal(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void MTLVisibleReflectionDeserializerAIR::deserialize(uint64_t a1, void *a2, dispatch_data_t data)
{
  if (data)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v5 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
    v6 = v5;
    v7 = (buffer_ptr + *buffer_ptr);
    v8 = *v7;
    v9 = -v8;
    v10 = (v7 - v8);
    if (*v10 >= 5u)
    {
      v11 = v10[2];
      if (v11)
      {
        *(a1 + 112) = *(v7 + v11 + 4) | (*(v7 + v11) << 16);
        v9 = -*v7;
      }
    }

    v12 = (v7 + v9);
    v13 = *v12;
    if (v13 >= 7 && (!v12[3] ? (v14 = 0) : (v14 = (v7 + v12[3] + *(v7 + v12[3]))), v13 >= 0x11 && (v15 = v12[8]) != 0 && v14 && *v14))
    {
      v16 = v7 + v15;
      v17 = *(v7 + v15);
      memset(v27, 0, sizeof(v27));
      memset(v25, 0, sizeof(v25));
      v26 = 1065353216;
      v23 = 5;
      v24 = 0;
      memset(v30, 0, sizeof(v30));
      v31 = 1065353216;
      std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__move_assign(v25, v30);
      std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v30);
      std::deque<ContextStack>::push_back(v27, &v23);
      ContextStack::~ContextStack(&v23);
      v18 = &v14[*&v16[4 * *(a1 + 128) + 4 + v17]];
      v19 = AirReflection::Node::node_as_VisibleFunction((v18 + v18[1] + 4));
      v20 = (v7 - *v7);
      if (*v20 >= 0x1Du && (v21 = v20[14]) != 0)
      {
        v22 = (v7 + v21 + *(v7 + v21));
      }

      else
      {
        v22 = 0;
      }

      *(a1 + 32) = deserializeGlobalBindings(a2, v22, v27, v14, (a1 + 24)) >> 32;
      *(a1 + 40) = deserializeUserAnnotation<AirReflection::VisibleFunction const*>(v14, v19);
      dispatch_release(v6);
      std::deque<ContextStack>::~deque[abi:ne200100](v27);
    }

    else
    {
      dispatch_release(v5);
    }
  }
}

void sub_185C05BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::deque<ContextStack>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t deserializeUserAnnotation<AirReflection::VisibleFunction const*>(uint64_t a1, int *a2)
{
  v2 = (a2 - *a2);
  if (*v2 < 9u)
  {
    return 0;
  }

  v3 = v2[4];
  if (!v3)
  {
    return 0;
  }

  v4 = a1 + 4 * *(a2 + v3);
  v5 = AirReflection::Node::node_as_UserAnnotationFnAttr((v4 + 4 + *(v4 + 4)));
  v6 = (v5 - *v5);
  if (*v6 < 5u)
  {
    return 0;
  }

  v7 = v6[2];
  if (!v7)
  {
    return 0;
  }

  v8 = v5 + v7 + *(v5 + v7);
  v9 = MEMORY[0x1E696AEC0];

  return [v9 stringWithUTF8String:v8 + 4];
}

void MTLIntersectionReflectionDeserializerAIR::deserialize(uint64_t a1, void *a2, dispatch_data_t data)
{
  if (data)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v5 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
    v6 = v5;
    v7 = (buffer_ptr + *buffer_ptr);
    v8 = *v7;
    v9 = -v8;
    v10 = (v7 - v8);
    if (*v10 >= 5u)
    {
      v11 = v10[2];
      if (v11)
      {
        *(a1 + 112) = *(v7 + v11 + 4) | (*(v7 + v11) << 16);
        v9 = -*v7;
      }
    }

    v12 = (v7 + v9);
    v13 = *v12;
    if (v13 >= 7 && (!v12[3] ? (v14 = 0) : (v14 = (v7 + v12[3] + *(v7 + v12[3]))), v13 >= 0xB && (v15 = v12[5]) != 0 && v14 && *v14))
    {
      v16 = v7 + v15;
      v17 = *(v7 + v15);
      memset(v58, 0, sizeof(v58));
      *__p = 0u;
      v53 = 0u;
      v55 = 1065353216;
      v51 = 6;
      LOBYTE(v52) = 0;
      v61 = 0u;
      v62 = 0u;
      v63 = 1065353216;
      std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__move_assign(&v53, &v61);
      std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&v61);
      std::deque<ContextStack>::push_back(v58, &v51);
      ContextStack::~ContextStack(&v51);
      v18 = &v14[*&v16[4 * *(a1 + 148) + 4 + v17]];
      v19 = AirReflection::Node::node_as_IntersectionFunction((v18 + v18[1] + 4));
      v20 = v19;
      v21 = *v19;
      v22 = -v21;
      v23 = (v19 - v21);
      if (*v23 >= 7u)
      {
        v24 = v23[3];
        if (v24)
        {
          v25 = (v19 + v24 + *(v19 + v24));
          *&v62 = 0;
          v26 = 0uLL;
          v61 = 0u;
          if (*v25)
          {
            v27 = 0;
            v28 = v25 + 1;
            do
            {
              deserializeReturn(a2, v28, v14, v58, &v57, &v51);
              std::vector<MTLReturnValueInternal>::push_back[abi:ne200100](&v61, &v51);
              if (v56 < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v53) < 0)
              {
                operator delete(v52);
              }

              ++v27;
              ++v28;
            }

            while (v27 < *v25);
            v26 = v61;
            v29 = v62;
          }

          else
          {
            v29 = 0;
          }

          v49 = v26;
          v50 = v29;
          *&v62 = 0;
          v61 = 0uLL;
          *(a1 + 120) = newReturnValueFromArray(&v49);
          v51 = &v49;
          std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&v51);
          v51 = &v61;
          std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&v51);
          v22 = -*v20;
        }
      }

      v30 = (v20 + v22);
      if (*v30 >= 9u && (v31 = v30[4]) != 0)
      {
        v32 = (v20 + v31 + *(v20 + v31));
      }

      else
      {
        v32 = 0;
      }

      v33 = deserializeArguments(a2, v32, v14, v58, (a1 + 8), (*(a1 + 104) & 0x200000) == 0, (a1 + 48));
      v34 = (v7 - *v7);
      if (*v34 >= 0x1Du && (v35 = v34[14]) != 0)
      {
        v36 = (v7 + v35 + *(v7 + v35));
      }

      else
      {
        v36 = 0;
      }

      v37 = deserializeGlobalBindings(a2, v36, v58, v14, (a1 + 24));
      v51 = 0;
      v52 = 0;
      *&v53 = 0;
      v38 = *v20;
      v39 = -v38;
      v40 = (v20 - v38);
      if (*v40 >= 0xDu)
      {
        v41 = v40[6];
        if (v41)
        {
          if (*(v20 + v41))
          {
            *&v61 = 1;
            std::vector<MTLTagType>::push_back[abi:ne200100](&v51, &v61);
            v39 = -*v20;
          }
        }
      }

      if (*(v20 + v39) >= 0xFu && *(v20 + v39 + 14) && *(v20 + *(v20 + v39 + 14)))
      {
        *&v61 = 2;
        std::vector<MTLTagType>::push_back[abi:ne200100](&v51, &v61);
        v39 = -*v20;
      }

      if (*(v20 + v39) >= 0x11u && *(v20 + v39 + 16) && *(v20 + *(v20 + v39 + 16)))
      {
        *&v61 = 3;
        std::vector<MTLTagType>::push_back[abi:ne200100](&v51, &v61);
        v39 = -*v20;
      }

      if (*(v20 + v39) >= 0x13u && *(v20 + v39 + 18) && *(v20 + *(v20 + v39 + 18)))
      {
        *&v61 = 5;
        std::vector<MTLTagType>::push_back[abi:ne200100](&v51, &v61);
        v39 = -*v20;
      }

      if (*(v20 + v39) >= 0x15u && *(v20 + v39 + 20) && *(v20 + *(v20 + v39 + 20)))
      {
        *&v61 = 4;
        std::vector<MTLTagType>::push_back[abi:ne200100](&v51, &v61);
        v39 = -*v20;
      }

      if (*(v20 + v39) >= 0x17u && *(v20 + v39 + 22) && *(v20 + *(v20 + v39 + 22)))
      {
        *&v61 = 6;
        std::vector<MTLTagType>::push_back[abi:ne200100](&v51, &v61);
        v39 = -*v20;
      }

      if (*(v20 + v39) >= 0x19u && *(v20 + v39 + 24) && *(v20 + *(v20 + v39 + 24)))
      {
        *&v61 = 7;
        std::vector<MTLTagType>::push_back[abi:ne200100](&v51, &v61);
        v39 = -*v20;
      }

      if (*(v20 + v39) >= 0x1Du && *(v20 + v39 + 28) && *(v20 + *(v20 + v39 + 28)))
      {
        *&v61 = 9;
        std::vector<MTLTagType>::push_back[abi:ne200100](&v51, &v61);
        v39 = -*v20;
      }

      v42 = (v20 + v39);
      if (*v42 >= 0x1Fu)
      {
        v43 = v42[15];
        if (v43)
        {
          if (*(v20 + v43))
          {
            *&v61 = 10;
            std::vector<MTLTagType>::push_back[abi:ne200100](&v51, &v61);
          }
        }
      }

      v44 = (v52 - v51) >> 3;
      *(a1 + 144) = v44;
      *(a1 + 136) = malloc_type_calloc(v44, 8uLL, 0x80040B8603338uLL);
      if (*(a1 + 144))
      {
        v45 = 0;
        do
        {
          v46 = [MTLTag alloc];
          *(*(a1 + 136) + 8 * v45) = [(MTLTag *)v46 initWithTagType:*(v51 + v45)];
          ++v45;
        }

        while (v45 < *(a1 + 144));
      }

      v47 = (v20 - *v20);
      if (*v47 < 0xBu)
      {
        v48 = 0;
      }

      else
      {
        v48 = v47[5];
        if (v48)
        {
          v48 = *(v20 + v48);
        }
      }

      *(a1 + 128) = v48;
      *(a1 + 16) = HIDWORD(v33);
      *(a1 + 32) = HIDWORD(v37);
      *(a1 + 36) = v33;
      *(a1 + 40) = deserializeUserAnnotation<AirReflection::IntersectionFunction const*>(v14, v20);
      dispatch_release(v6);
      if (v51)
      {
        v52 = v51;
        operator delete(v51);
      }

      std::deque<ContextStack>::~deque[abi:ne200100](v58);
    }

    else
    {
      dispatch_release(v5);
    }
  }
}

void sub_185C062AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::deque<ContextStack>::~deque[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

uint64_t deserializeUserAnnotation<AirReflection::IntersectionFunction const*>(uint64_t a1, int *a2)
{
  v2 = (a2 - *a2);
  if (*v2 < 0x21u)
  {
    return 0;
  }

  v3 = v2[16];
  if (!v3)
  {
    return 0;
  }

  v4 = a1 + 4 * *(a2 + v3);
  v5 = AirReflection::Node::node_as_UserAnnotationFnAttr((v4 + 4 + *(v4 + 4)));
  v6 = (v5 - *v5);
  if (*v6 < 5u)
  {
    return 0;
  }

  v7 = v6[2];
  if (!v7)
  {
    return 0;
  }

  v8 = v5 + v7 + *(v5 + v7);
  v9 = MEMORY[0x1E696AEC0];

  return [v9 stringWithUTF8String:v8 + 4];
}

uint64_t MTLObjectDeserializerAIR::deserialize(uint64_t result, void *a2, dispatch_data_t data)
{
  if (data)
  {
    v4 = result;
    size_ptr = 0;
    buffer_ptr = 0;
    v5 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
    v6 = (buffer_ptr + *buffer_ptr);
    v7 = *v6;
    v8 = -v7;
    v9 = (v6 - v7);
    if (*v9 >= 5u)
    {
      v10 = v9[2];
      if (v10)
      {
        *(v4 + 112) = *(v6 + v10 + 4) | (*(v6 + v10) << 16);
        v8 = -*v6;
      }
    }

    v11 = (v6 + v8);
    if (*v11 >= 7u && (v12 = v11[3]) != 0)
    {
      v13 = (v6 + v12 + *(v6 + v12));
    }

    else
    {
      v13 = 0;
    }

    memset(v34, 0, sizeof(v34));
    v44 = 0u;
    __p = 0u;
    v46 = 1065353216;
    v42 = 8;
    LOBYTE(v43) = 0;
    v37 = 0u;
    v38 = 0u;
    v39 = 1065353216;
    std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__move_assign(&v44, &v37);
    std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&v37);
    std::deque<ContextStack>::push_back(v34, &v42);
    ContextStack::~ContextStack(&v42);
    v14 = (v6 - *v6);
    if (*v14 < 0x15u)
    {
      goto LABEL_36;
    }

    v15 = v14[10];
    if (!v15 || !v13 || !*v13)
    {
      goto LABEL_36;
    }

    v16 = &v13[*(v6 + v15 + *(v6 + v15) + 4)];
    v17 = AirReflection::Node::node_as_ObjectFunction((v16 + v16[1] + 4));
    v18 = v17;
    v19 = (v17 - *v17);
    v20 = *v19;
    if (v20 < 9)
    {
      v21 = 0;
      v22 = 0;
      if (v20 < 7)
      {
LABEL_31:
        *(v4 + 120) = v22;
        *(v4 + 40) = deserializeUserAnnotation<AirReflection::ObjectFunction const*>(v13, v18);
        v29 = deserializeArguments(a2, v21, v13, v34, (v4 + 8), (*(v4 + 104) & 0x200000) == 0, (v4 + 48));
        v30 = (v6 - *v6);
        if (*v30 >= 0x1Du && (v31 = v30[14]) != 0)
        {
          v32 = (v6 + v31 + *(v6 + v31));
        }

        else
        {
          v32 = 0;
        }

        v33 = deserializeGlobalBindings(a2, v32, v34, v13, (v4 + 24));
        *(v4 + 16) = HIDWORD(v29);
        *(v4 + 32) = HIDWORD(v33);
        *(v4 + 36) = v29;
LABEL_36:
        dispatch_release(v5);
        return std::deque<ContextStack>::~deque[abi:ne200100](v34);
      }
    }

    else if (v19[4])
    {
      v21 = (v17 + v19[4] + *(v17 + v19[4]));
    }

    else
    {
      v21 = 0;
    }

    v23 = v19[3];
    if (v23)
    {
      v24 = (v17 + v23 + *(v17 + v23));
      *&v38 = 0;
      v25 = 0uLL;
      v37 = 0u;
      if (*v24)
      {
        v26 = 0;
        v27 = v24 + 1;
        do
        {
          deserializeReturn(a2, v27, v13, v34, &v48, &v42);
          std::vector<MTLReturnValueInternal>::push_back[abi:ne200100](&v37, &v42);
          if (v47 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v44) < 0)
          {
            operator delete(v43);
          }

          ++v26;
          ++v27;
        }

        while (v26 < *v24);
        v25 = v37;
        v28 = v38;
      }

      else
      {
        v28 = 0;
      }

      v40 = v25;
      v41 = v28;
      *&v38 = 0;
      v37 = 0uLL;
      v22 = newReturnValueFromArray(&v40);
      v42 = &v40;
      std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&v42);
      v42 = &v37;
      std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&v42);
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_31;
  }

  return result;
}

void sub_185C06740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = &a17;
  std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::deque<ContextStack>::~deque[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t deserializeUserAnnotation<AirReflection::ObjectFunction const*>(uint64_t a1, int *a2)
{
  v2 = (a2 - *a2);
  if (*v2 < 0xFu)
  {
    return 0;
  }

  v3 = v2[7];
  if (!v3)
  {
    return 0;
  }

  v4 = a1 + 4 * *(a2 + v3);
  v5 = AirReflection::Node::node_as_UserAnnotationFnAttr((v4 + 4 + *(v4 + 4)));
  v6 = (v5 - *v5);
  if (*v6 < 5u)
  {
    return 0;
  }

  v7 = v6[2];
  if (!v7)
  {
    return 0;
  }

  v8 = v5 + v7 + *(v5 + v7);
  v9 = MEMORY[0x1E696AEC0];

  return [v9 stringWithUTF8String:v8 + 4];
}

uint64_t MTLMeshDeserializerAIR::deserialize(uint64_t result, void *a2, dispatch_data_t data)
{
  if (data)
  {
    v4 = result;
    size_ptr = 0;
    buffer_ptr = 0;
    v5 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
    v6 = (buffer_ptr + *buffer_ptr);
    v7 = *v6;
    v8 = -v7;
    v9 = (v6 - v7);
    if (*v9 >= 5u)
    {
      v10 = v9[2];
      if (v10)
      {
        *(v4 + 112) = *(v6 + v10 + 4) | (*(v6 + v10) << 16);
        v8 = -*v6;
      }
    }

    v11 = (v6 + v8);
    if (*v11 >= 7u && (v12 = v11[3]) != 0)
    {
      v13 = (v6 + v12 + *(v6 + v12));
    }

    else
    {
      v13 = 0;
    }

    memset(v34, 0, sizeof(v34));
    v44 = 0u;
    __p = 0u;
    v46 = 1065353216;
    v42 = 7;
    LOBYTE(v43) = 0;
    v37 = 0u;
    v38 = 0u;
    v39 = 1065353216;
    std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__move_assign(&v44, &v37);
    std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&v37);
    std::deque<ContextStack>::push_back(v34, &v42);
    ContextStack::~ContextStack(&v42);
    v14 = (v6 - *v6);
    if (*v14 < 0x13u)
    {
      goto LABEL_36;
    }

    v15 = v14[9];
    if (!v15 || !v13 || !*v13)
    {
      goto LABEL_36;
    }

    v16 = &v13[*(v6 + v15 + *(v6 + v15) + 4)];
    v17 = AirReflection::Node::node_as_MeshFunction((v16 + v16[1] + 4));
    v18 = v17;
    v19 = (v17 - *v17);
    v20 = *v19;
    if (v20 < 9)
    {
      v21 = 0;
      v22 = 0;
      if (v20 < 7)
      {
LABEL_31:
        *(v4 + 120) = v22;
        *(v4 + 40) = deserializeUserAnnotation<AirReflection::VertexFunction const*>(v13, v18);
        v29 = deserializeArguments(a2, v21, v13, v34, (v4 + 8), (*(v4 + 104) & 0x200000) == 0, (v4 + 48));
        v30 = (v6 - *v6);
        if (*v30 >= 0x1Du && (v31 = v30[14]) != 0)
        {
          v32 = (v6 + v31 + *(v6 + v31));
        }

        else
        {
          v32 = 0;
        }

        v33 = deserializeGlobalBindings(a2, v32, v34, v13, (v4 + 24));
        *(v4 + 16) = HIDWORD(v29);
        *(v4 + 32) = HIDWORD(v33);
        *(v4 + 36) = v29;
LABEL_36:
        dispatch_release(v5);
        return std::deque<ContextStack>::~deque[abi:ne200100](v34);
      }
    }

    else if (v19[4])
    {
      v21 = (v17 + v19[4] + *(v17 + v19[4]));
    }

    else
    {
      v21 = 0;
    }

    v23 = v19[3];
    if (v23)
    {
      v24 = (v17 + v23 + *(v17 + v23));
      *&v38 = 0;
      v25 = 0uLL;
      v37 = 0u;
      if (*v24)
      {
        v26 = 0;
        v27 = v24 + 1;
        do
        {
          deserializeReturn(a2, v27, v13, v34, &v48, &v42);
          std::vector<MTLReturnValueInternal>::push_back[abi:ne200100](&v37, &v42);
          if (v47 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v44) < 0)
          {
            operator delete(v43);
          }

          ++v26;
          ++v27;
        }

        while (v26 < *v24);
        v25 = v37;
        v28 = v38;
      }

      else
      {
        v28 = 0;
      }

      v40 = v25;
      v41 = v28;
      *&v38 = 0;
      v37 = 0uLL;
      v22 = newReturnValueFromArray(&v40);
      v42 = &v40;
      std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&v42);
      v42 = &v37;
      std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&v42);
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_31;
  }

  return result;
}

void sub_185C06B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = &a17;
  std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::deque<ContextStack>::~deque[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void MTLDynamicLibraryReflectionDeserializerAIR::deserialize(uint64_t a1, void *a2, dispatch_data_t data)
{
  if (data)
  {
    buffer_ptr = 0;
    size_ptr = 0;
    v5 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
    v6 = buffer_ptr;
    if (!strncmp(buffer_ptr + 4, "AIRR", 4uLL))
    {
      v7 = (v6 + *v6);
      v8 = (v7 - *v7);
      if (*v8 >= 7u && (v9 = v8[3]) != 0)
      {
        v10 = v7 + v9;
        v11 = *(v7 + v9);
        memset(v19, 0, sizeof(v19));
        memset(v17, 0, sizeof(v17));
        v18 = 1065353216;
        v15 = 0xFFFFLL;
        v16 = 0;
        memset(v22, 0, sizeof(v22));
        v23 = 1065353216;
        std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__move_assign(v17, v22);
        std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v22);
        std::deque<ContextStack>::push_back(v19, &v15);
        ContextStack::~ContextStack(&v15);
        v12 = (v7 - *v7);
        if (*v12 >= 0x1Du && (v13 = v12[14]) != 0)
        {
          v14 = (v7 + v13 + *(v7 + v13));
        }

        else
        {
          v14 = 0;
        }

        *(a1 + 32) = deserializeGlobalBindings(a2, v14, v19, &v10[v11], (a1 + 24)) >> 32;
        std::deque<ContextStack>::~deque[abi:ne200100](v19);
      }

      else
      {
        *(a1 + 32) = 0;
      }
    }

    dispatch_release(v5);
  }
}

void sub_185C06D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::deque<ContextStack>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ReflectionReaderFactory<MTLIntersectionReflectionReader>::Create(uint64_t a1, NSObject *a2)
{
  if (ShouldCreateAIRVersion(a2))
  {
    operator new();
  }

  operator new();
}

void ReflectionReaderFactory<MTLVisibleReflectionReader>::Create(uint64_t a1, NSObject *a2)
{
  if (ShouldCreateAIRVersion(a2))
  {
    operator new();
  }

  operator new();
}

uint64_t validateArguments(MTLBindingInternal **a1, MTLBindingInternal **a2, unsigned int a3)
{
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = a3;
    do
    {
      if (![(MTLBindingInternal *)a1[v5] isEqual:a2[v5]])
      {
        v8 = a1[v5];
        NSLog(&cfstr_ArgumentDDiffe.isa, v5, v8, a2[v5]);
        v6 = 1;
      }

      ++v5;
    }

    while (v7 != v5);
    v9 = v6 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

uint64_t validateUserAnnotation(unint64_t a1, NSString *a2)
{
  if (!(a1 | a2))
  {
    return 1;
  }

  if ([a1 isEqualToString:a2])
  {
    return 1;
  }

  NSLog(&cfstr_UserAnnotation.isa, a1, a2);
  return 0;
}

uint64_t ReflectionValidator<MTLIntersectionReflectionReader>::Validate(uint64_t a1, uint64_t a2, NSObject *a3)
{
  if (MTLEnvVarAggregator::GET_MTL_VERIFY_REFLECTION(0, 0))
  {
    if ((a2 & 0x800000) != 0)
    {
      v5 = MTLNewEmulationReflectionData(a3);
    }

    else
    {
      v5 = MTLNewReflectionData(a3);
    }

    v6 = v5;
    MTLNewLegacyReflectionData(a3);
    ReflectionReaderFactory<MTLIntersectionReflectionReader>::Create(a2, v6);
  }

  return 1;
}

uint64_t ReflectionValidator<MTLStitchingReflectionReader>::Validate(uint64_t a1, int a2, NSObject *a3)
{
  if (MTLEnvVarAggregator::GET_MTL_VERIFY_REFLECTION(0, 0))
  {
    if ((a2 & 0x800000) != 0)
    {
      MTLNewEmulationReflectionData(a3);
    }

    else
    {
      MTLNewReflectionData(a3);
    }

    MTLNewLegacyReflectionData(a3);
    ReflectionReaderFactory<MTLStitchingReflectionReader>::Create();
  }

  return 1;
}

uint64_t ReflectionValidator<MTLObjectReflectionReader>::Validate(uint64_t a1, uint64_t a2, NSObject *a3)
{
  if (MTLEnvVarAggregator::GET_MTL_VERIFY_REFLECTION(0, 0))
  {
    if ((a2 & 0x800000) != 0)
    {
      v5 = MTLNewEmulationReflectionData(a3);
    }

    else
    {
      v5 = MTLNewReflectionData(a3);
    }

    v6 = v5;
    MTLNewLegacyReflectionData(a3);
    ReflectionReaderFactory<MTLObjectReflectionReader>::Create(a2, v6);
  }

  return 1;
}

uint64_t ReflectionValidator<MTLMeshReflectionReader>::Validate(uint64_t a1, uint64_t a2, NSObject *a3)
{
  if (MTLEnvVarAggregator::GET_MTL_VERIFY_REFLECTION(0, 0))
  {
    if ((a2 & 0x800000) != 0)
    {
      v5 = MTLNewEmulationReflectionData(a3);
    }

    else
    {
      v5 = MTLNewReflectionData(a3);
    }

    v6 = v5;
    MTLNewLegacyReflectionData(a3);
    ReflectionReaderFactory<MTLMeshReflectionReader>::Create(a2, v6);
  }

  return 1;
}

void MTLReflectionByNameDeserializerAIR::~MTLReflectionByNameDeserializerAIR(MTLReflectionByNameDeserializerAIR *this)
{
  MTLReflectionByNameDeserializer::~MTLReflectionByNameDeserializer(this);

  JUMPOUT(0x1865FF210);
}

void MTLVisibleReflectionDeserializerAIR::~MTLVisibleReflectionDeserializerAIR(MTLVisibleReflectionDeserializerAIR *this)
{
  MTLArgumentDeserializer::~MTLArgumentDeserializer(this);

  JUMPOUT(0x1865FF210);
}

void MTLIntersectionReflectionDeserializerAIR::~MTLIntersectionReflectionDeserializerAIR(MTLIntersectionReflectionDeserializerAIR *this)
{
  MTLIntersectionReflectionDeserializer::~MTLIntersectionReflectionDeserializer(this);

  JUMPOUT(0x1865FF210);
}

void MTLObjectDeserializerAIR::~MTLObjectDeserializerAIR(MTLObjectDeserializerAIR *this)
{
  MTLArgumentDeserializer::~MTLArgumentDeserializer(this);

  JUMPOUT(0x1865FF210);
}

void MTLMeshDeserializerAIR::~MTLMeshDeserializerAIR(MTLMeshDeserializerAIR *this)
{
  MTLArgumentDeserializer::~MTLArgumentDeserializer(this);

  JUMPOUT(0x1865FF210);
}

void MTLDynamicLibraryReflectionDeserializerAIR::~MTLDynamicLibraryReflectionDeserializerAIR(MTLDynamicLibraryReflectionDeserializerAIR *this)
{
  MTLArgumentDeserializer::~MTLArgumentDeserializer(this);

  JUMPOUT(0x1865FF210);
}

void MTLVisibleReflectionDeserializer::~MTLVisibleReflectionDeserializer(MTLVisibleReflectionDeserializer *this)
{
  MTLArgumentDeserializer::~MTLArgumentDeserializer(this);

  JUMPOUT(0x1865FF210);
}

uint64_t AirReflection::Node::node_as_ImageblockDataRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 135172) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_IndirectBufferArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262148) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ConstantArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262147) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_IndirectConstantArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262149) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_TensorArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262160) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_BaseVertexArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270337) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_BaseInstanceArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 270336)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::Node::node_as_ThreadsPerGridArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266241) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ThreadPositionInThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266244) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ThreadIndexInThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266247) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ThreadsPerThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266245) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ThreadgroupsPerGridArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266243) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ThreadgroupPositionInGridArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266242) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ThreadExecutionWidthArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266248) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_PatchIDArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270342) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_PositionInPatchArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270343) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_StageInGridOriginArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266250) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_StageInGridSizeArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266251) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ThreadIndexInQuadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266257) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ThreadIndexInSimdgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266252) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ThreadsPerSimdgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266253) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_AmplificationIDArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270351) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_AmplificationCountArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270350) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_MeshGridPropertiesArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 290816)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::Node::node_as_MeshArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 286720)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::Node::node_as_MeshTypeInfo(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 524291) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

MTLStructTypeInternal *deserializeMeshStructArgument(unsigned int *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *a1;
    if (v3)
    {
      v5 = malloc_type_calloc(*a1, 8uLL, 0x80040B8603338uLL);
      v6 = 0;
      v7 = a1 + 1;
      v8 = a2 + 4;
      while (1)
      {
        v9 = (v8 + 4 * v7[v6]);
        v10 = (v9 + *v9);
        v11 = (v10 - *v10);
        if (*v11 < 5u)
        {
          LODWORD(v12) = 0;
        }

        else
        {
          v12 = v11[2];
          if (v12)
          {
            LODWORD(v12) = *(v10 + v12);
            if (v12 > 135170)
            {
              if (v12 <= 139265)
              {
                if (v12 >= 139264)
                {
                  if (v12 == 139264)
                  {
                    v13 = AirReflection::Node::node_as_AcceptIntersectionRet(v10);
                  }

                  else
                  {
                    v13 = AirReflection::Node::node_as_ContinueSearchRet(v10);
                  }

                  goto LABEL_67;
                }

                if (v12 == 135171)
                {
                  v13 = AirReflection::Node::node_as_SampleMaskRet(v10);
                  goto LABEL_67;
                }

                if (v12 == 135172)
                {
                  v17 = AirReflection::Node::node_as_ImageblockDataRet(v10);
                  v18 = *v17;
                  v19 = -v18;
                  v20 = (v17 - v18);
                  if (*v20 >= 0x15u && (v21 = v20[10]) != 0)
                  {
                    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17 + v21 + *(v17 + v21) + 4];
                    v19 = -*v17;
                  }

                  else
                  {
                    v15 = &stru_1EF478240;
                  }

                  v28 = *(v17 + v19 + 18);
                  goto LABEL_72;
                }
              }

              else if (v12 <= 143360)
              {
                if (v12 == 139266)
                {
                  v13 = AirReflection::Node::node_as_DistanceRet(v10);
LABEL_67:
                  v17 = v13;
                  v41 = *v13;
                  v42 = -v41;
                  v43 = (v13 - v41);
                  if (*v43 >= 9u && (v44 = v43[4]) != 0)
                  {
                    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13 + v44 + *(v13 + v44) + 4];
                    v42 = -*v17;
                  }

                  else
                  {
                    v15 = &stru_1EF478240;
                  }

                  v28 = *(v17 + v42 + 6);
                  goto LABEL_72;
                }

                if (v12 == 143360)
                {
                  v22 = AirReflection::Node::node_as_MeshPrimitiveDataRet(v10);
                  goto LABEL_61;
                }
              }

              else
              {
                switch(v12)
                {
                  case 0x23001:
                    v22 = AirReflection::Node::node_as_MeshVertexDataRet(v10);
LABEL_61:
                    v17 = v22;
                    v37 = *v22;
                    v38 = -v37;
                    v39 = (v22 - v37);
                    if (*v39 >= 0xFu && (v40 = v39[7]) != 0)
                    {
                      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v22 + v40 + *(v22 + v40) + 4];
                      v38 = -*v17;
                    }

                    else
                    {
                      v15 = &stru_1EF478240;
                    }

                    v28 = *(v17 + v38 + 12);
                    goto LABEL_72;
                  case 0x23002:
                    v16 = AirReflection::Node::node_as_PrimitiveCulledRet(v10);
                    goto LABEL_51;
                  case 0x23003:
                    v16 = AirReflection::Node::node_as_PrimitiveIDRet(v10);
LABEL_51:
                    v17 = v16;
                    v29 = *v16;
                    v30 = -v29;
                    v31 = (v16 - v29);
                    if (*v31 >= 0xBu && (v32 = v31[5]) != 0)
                    {
                      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16 + v32 + *(v16 + v32) + 4];
                      v30 = -*v17;
                    }

                    else
                    {
                      v15 = &stru_1EF478240;
                    }

                    v28 = *(v17 + v30 + 8);
LABEL_72:
                    v45 = v17 + v28 + *(v17 + v28);
                    v46 = strlen(v45 + 4);
                    v14 = dataTypeFromString(v45 + 4, v46);
                    goto LABEL_73;
                }
              }
            }

            else if (v12 <= 131075)
            {
              if (v12 > 131073)
              {
                if (v12 != 131074)
                {
                  v16 = AirReflection::Node::node_as_RenderTargetArrayIndexRet(v10);
                  goto LABEL_51;
                }

                v23 = AirReflection::Node::node_as_PositionRet(v10);
                goto LABEL_43;
              }

              if (v12 == 0x20000)
              {
                v23 = AirReflection::Node::node_as_ClipDistanceRet(v10);
LABEL_43:
                v17 = v23;
                v24 = *v23;
                v25 = -v24;
                v26 = (v23 - v24);
                if (*v26 >= 0xDu && (v27 = v26[6]) != 0)
                {
                  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v23 + v27 + *(v23 + v27) + 4];
                  v25 = -*v17;
                }

                else
                {
                  v15 = &stru_1EF478240;
                }

                v28 = *(v17 + v25 + 10);
                goto LABEL_72;
              }

              if (v12 == 131073)
              {
                v16 = AirReflection::Node::node_as_PointSizeRet(v10);
                goto LABEL_51;
              }
            }

            else
            {
              if (v12 >= 135168)
              {
                if (v12 == 135168)
                {
                  v17 = AirReflection::Node::node_as_RenderTargetRet(v10);
                  v33 = *v17;
                  v34 = -v33;
                  v35 = (v17 - v33);
                  if (*v35 >= 0x11u && (v36 = v35[8]) != 0)
                  {
                    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17 + v36 + *(v17 + v36) + 4];
                    v34 = -*v17;
                  }

                  else
                  {
                    v15 = &stru_1EF478240;
                  }

                  v28 = *(v17 + v34 + 14);
                  goto LABEL_72;
                }

                if (v12 == 135169)
                {
                  v16 = AirReflection::Node::node_as_DepthRet(v10);
                  goto LABEL_51;
                }

                v13 = AirReflection::Node::node_as_StencilRet(v10);
                goto LABEL_67;
              }

              if (v12 == 131076)
              {
                v22 = AirReflection::Node::node_as_VertexOutputRet(v10);
                goto LABEL_61;
              }

              if (v12 == 131077)
              {
                v16 = AirReflection::Node::node_as_ViewportArrayIndexRet(v10);
                goto LABEL_51;
              }
            }
          }
        }

        AirReflection::EnumNameNodeType(v12);
        v14 = 0;
        v15 = 0;
LABEL_73:
        v5[v6++] = [[MTLStructMemberInternal alloc] initWithName:v15 offset:0 dataType:v14 pixelFormat:0 aluType:0 indirectArgumentIndex:0 render_target:0xFFFFFFFFLL raster_order_group:0xFFFFFFFFLL details:0];
        if (v3 == v6)
        {
          v47 = 0;
          goto LABEL_80;
        }
      }
    }
  }

  v5 = 0;
  v3 = 0;
  v47 = 1;
LABEL_80:
  v48 = [[MTLStructTypeInternal alloc] initWithMembers:v5 count:v3];
  if (v47)
  {
    if (!v5)
    {
      return v48;
    }
  }

  else
  {
    v49 = v5;
    do
    {
      v50 = *v49++;

      --v3;
    }

    while (v3);
  }

  free(v5);
  return v48;
}

uint64_t AirReflection::Node::node_as_ImageblockArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 278531) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ImageblockDataArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 278532) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ComputePipelineStateArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262151) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_RenderPipelineStateArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262152) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_DepthStencilStateArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262158) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_CommandBufferArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262150) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_IntersectionFunctionTableArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262154) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_PrimitiveAccelerationStructureArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262156) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_InstanceAccelerationStructureArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262155) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_PayloadArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 282624)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::Node::node_as_BufferStrideArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262157) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_GlobalBinding(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 524292) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_VertexInputArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270340) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_StageInArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266249) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

MTLArgumentDeserializer *MTLReflectionByNameDeserializer::MTLReflectionByNameDeserializer(MTLArgumentDeserializer *a1, uint64_t a2, uint64_t a3)
{
  MTLArgumentDeserializer::MTLArgumentDeserializer(a1, 0);
  *v6 = &unk_1EF474038;
  *(v6 + 144) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 156) = 0u;
  MEMORY[0x1865FEFD0](v6 + 144, a2, a3);
  return a1;
}

void sub_185C091B8(_Unwind_Exception *a1)
{
  if (v1[167] < 0)
  {
    operator delete(*v2);
  }

  MTLArgumentDeserializer::~MTLArgumentDeserializer(v1);
  _Unwind_Resume(a1);
}

void MTLReflectionByNameDeserializer::~MTLReflectionByNameDeserializer(MTLReflectionByNameDeserializer *this)
{
  MTLReflectionByNameDeserializer::~MTLReflectionByNameDeserializer(this);

  JUMPOUT(0x1865FF210);
}

{
  *(this + 4) = 0;
  *(this + 3) = 0;
  *this = &unk_1EF474038;
  *(this + 1) = 0;
  *(this + 15) = 0;
  *(this + 44) = 0;
  *(this + 36) = 0;
  v2 = *(this + 16);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  MTLArgumentDeserializer::~MTLArgumentDeserializer(this);
}

void MTLObjectReflectionReader::~MTLObjectReflectionReader(MTLObjectReflectionReader *this)
{
  MTLArgumentReader::~MTLArgumentReader(this);

  JUMPOUT(0x1865FF210);
}

void MTLMeshReflectionReader::~MTLMeshReflectionReader(MTLMeshReflectionReader *this)
{
  MTLArgumentReader::~MTLArgumentReader(this);

  JUMPOUT(0x1865FF210);
}

void MTLDynamicLibraryReflectionDeserializer::~MTLDynamicLibraryReflectionDeserializer(MTLDynamicLibraryReflectionDeserializer *this)
{
  MTLArgumentDeserializer::~MTLArgumentDeserializer(this);

  JUMPOUT(0x1865FF210);
}

void *std::__split_buffer<ContextStack *>::emplace_back<ContextStack *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLSerializer::ObjectSerializer *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<ContextStack *>::emplace_front<ContextStack *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLSerializer::ObjectSerializer *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

const void **std::__split_buffer<ContextStack *>::emplace_front<ContextStack *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLSerializer::ObjectSerializer *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,MTLStructTypeInternal *> const&>(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<MTLReturnValueInternal>,MTLReturnValueInternal*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 80;
      std::allocator<MTLReturnValueInternal>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t AirReflection::Node::node_as_UserAnnotationFnAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 4102) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

void MTLCompileToken::setCompilerTask(MTLCompileToken *this, _MTL4CompilerTask *a2)
{
  v4 = *(this + 2);
  if (v4)
  {
    [v4 clearInternalCompileTokenIfMatches:this];

    *(this + 2) = 0;
  }

  if (a2)
  {
    v5 = a2;
    *(this + 2) = v5;

    [(_MTL4CompilerTask *)v5 setInternalCompileToken:this];
  }
}

void *MTLCompileToken::getStatus(MTLCompileToken *this)
{
  result = *(this + 2);
  if (result)
  {
    return [result status];
  }

  return result;
}

void MTLCompileToken::waitUntilCompleted(MTLCompileToken *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    v17 = v3;
    if (v3)
    {
      v4 = *this;
      v16 = v4;
      if (!v4)
      {
        goto LABEL_20;
      }

      v5 = *(v4 + 96);
      if (!v5)
      {
        goto LABEL_20;
      }

      v6 = *(v5 + 88);
      v14 = (v6 + 88);
      v15 = 1;
      std::mutex::lock((v6 + 88));
      *(v4 + 161) = 1;
      *(v4 + 136) = qos_class_self();
      v7 = *(v4 + 80);
      if (v7)
      {
        _Block_release(v7);
        *(v4 + 80) = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, *(v4 + 136), -1, &__block_literal_global_1);
      }

      while ((*(v16 + 165) & 1) == 0)
      {
        if (MTLCompilerScheduler::shouldScheduleAfterCompilerBoost(v6, &v16, &v14))
        {
          v8 = v16;
          v9 = v17;
          v10 = *(v16 + 96);
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v11 = *(v10 + 56);
          *(v10 + 48) = v8;
          *(v10 + 56) = v9;
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
            v8 = v16;
          }

          v12 = *(v8 + 96);
          *&v13 = v8;
          *(&v13 + 1) = v17;
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          MTLCompilerConnection::scheduleRequest(v12, 1, &v13, &v14);
          if (*(&v13 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
          }

          break;
        }
      }

      if (v15 == 1)
      {
        std::mutex::unlock(v14);
      }

      v3 = v17;
      if (v17)
      {
LABEL_20:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }
    }
  }
}

void sub_185C09B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::mutex *a11, char a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void MTLCompilerCache::MTLCompilerCache(MTLCompilerCache *this)
{
  this->var0 = &unk_1EF474148;
  *&this->var1._os_unfair_lock_opaque = 0;
  this->var3 = 0;
}

void makeShaderCacheWritableByAllUsers()
{
  if (didPreviouslyGetCacheMainFolder == 1 && gShaderCachePermissions == 0)
  {
    if (_MTLIsInternalBuild())
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        makeShaderCacheWritableByAllUsers_cold_1();
      }
    }
  }

  else
  {
    gShaderCachePermissions = 438;
  }
}

void setShaderCacheMainFolder(const char *a1)
{
  os_unfair_lock_lock(&gCacheOverrideLock);
  v2 = gOverridePath;
  if (gOverridePath != a1 && (!a1 || !gOverridePath || strcmp(gOverridePath, a1)))
  {
    if ((didPreviouslyGetCacheMainFolder & 1) != 0 || didPreviouslySetCacheMainFolder == 1)
    {
      if (_MTLIsInternalBuild() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        setShaderCacheMainFolder_cold_1();
      }
    }

    else
    {
      if (v2)
      {
        free(v2);
      }

      if (a1)
      {
        v3 = strlen(a1);
        gOverridePath = malloc_type_malloc(v3 + 1, 0x100004077774924uLL);
        memcpy(gOverridePath, a1, v3 + 1);
        didPreviouslySetCacheMainFolder = 1;
      }

      else
      {
        gOverridePath = 0;
      }
    }
  }

  os_unfair_lock_unlock(&gCacheOverrideLock);
}

void MTLCompilerFSCache::invalidateCache(MTLCompilerFSCache *this)
{
  v2 = *(this + 6);
  fscache_close();
  *(this + 6) = 0;
  os_unfair_lock_lock(this + 34);
  v3 = *(this + 18);
  if (v3)
  {
    v4 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v3);
    MEMORY[0x1865FF210](v4, 0x10A0C408EF24B1CLL);
  }

  *(this + 18) = 0;
  os_unfair_lock_unlock(this + 34);
  *(this + 24) = 1;
}

uint64_t MTLCompilerFSCache::open(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 2);
  v2 = MTLCompilerFSCache::openSync(this);
  os_unfair_lock_unlock(this + 2);
  return v2;
}

void MTLCompilerFSCache::close(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 2);
  if (*&this[12]._os_unfair_lock_opaque)
  {
    fscache_close();
    *&this[12]._os_unfair_lock_opaque = 0;
    os_unfair_lock_lock(this + 34);
    v2 = *&this[36]._os_unfair_lock_opaque;
    if (v2)
    {
      v3 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v2);
      MEMORY[0x1865FF210](v3, 0x10A0C408EF24B1CLL);
    }

    *&this[36]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(this + 34);
  }

  this[3]._os_unfair_lock_opaque = 0;
  this[4]._os_unfair_lock_opaque = 0;

  os_unfair_lock_unlock(this + 2);
}

void MTLCompilerFSCache::~MTLCompilerFSCache(MTLCompilerFSCache *this)
{
  *this = &unk_1EF4741B0;
  MTLCompilerFSCache::close(this);
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }
}

{
  MTLCompilerFSCache::~MTLCompilerFSCache(this);

  JUMPOUT(0x1865FF210);
}

uint64_t MTLCompilerFSCache::copyShaderCache(os_unfair_lock_s *this, NSString *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 2);
  v4 = objc_autoreleasePoolPush();
  if (*&this[12]._os_unfair_lock_opaque)
  {
    fscache_close();
    *&this[12]._os_unfair_lock_opaque = 0;
  }

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v33 = 0;
  if (([v5 fileExistsAtPath:a2 isDirectory:&v33] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MTLCompilerFSCache::copyShaderCache([(NSString *)a2 UTF8String], __s);
    }

    goto LABEL_17;
  }

  if ((v33 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MTLCompilerFSCache::copyShaderCache([(NSString *)a2 UTF8String], __s);
    }

    goto LABEL_17;
  }

  v32 = 0;
  v6 = &this[14];
  if ((SHIBYTE(this[19]._os_unfair_lock_opaque) & 0x80000000) == 0)
  {
    v7 = this + 14;
    if (!HIBYTE(this[19]._os_unfair_lock_opaque))
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (*&this[16]._os_unfair_lock_opaque)
  {
    v7 = *v6;
LABEL_14:
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
    v9 = [(NSString *)a2 stringByAppendingString:v8];
    if ([v5 createDirectoryAtPath:v9 withIntermediateDirectories:0 attributes:0 error:&v32])
    {
      goto LABEL_20;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MTLCompilerFSCache::copyShaderCache([v8 UTF8String], -[NSString UTF8String](a2, "UTF8String"), __s);
    }

LABEL_17:
    v10 = 0;
    v11 = 0;
    goto LABEL_18;
  }

LABEL_19:
  v9 = a2;
LABEL_20:
  v26 = v4;
  if (!this[5]._os_unfair_lock_opaque)
  {
    goto LABEL_27;
  }

  if (SHIBYTE(this[19]._os_unfair_lock_opaque) < 0)
  {
    v6 = *v6;
  }

  if (!getCacheMainFolder(__s, "com.apple.metal", 1) || v6 && (v14 = strlen(__s), strncat(__s, "/", 1024 - v14), v15 = strlen(__s), strncat(__s, v6, 1024 - v15), stat(__s, &v34)) && mkdir(__s, 0x1FFu))
  {
LABEL_27:
    v11 = 0;
    v10 = 1;
  }

  else
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:__s];
    obj = [v5 contentsOfDirectoryAtPath:v16 error:&v32];
    v17 = this + 20;
    if (SHIBYTE(this[25]._os_unfair_lock_opaque) < 0)
    {
      v17 = *&v17->_os_unfair_lock_opaque;
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v19)
    {
      v20 = v9;
      v21 = *v29;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v28 + 1) + 8 * i);
          if ([v23 hasPrefix:v18])
          {
            v24 = [v16 stringByAppendingPathComponent:v23];
            v25 = [(NSString *)v20 stringByAppendingPathComponent:v23];
            if ([v5 fileExistsAtPath:v24 isDirectory:&v33])
            {
              if ((v33 & 1) == 0)
              {
                if ([v5 fileExistsAtPath:v25 isDirectory:&v33] && ((v33 & 1) != 0 || (objc_msgSend(v5, "removeItemAtPath:error:", v25, &v32) & 1) == 0))
                {
                  NSLog(&cfstr_FailedToRemove.isa, v25);
LABEL_49:
                  v10 = 0;
                  v11 = 0;
                  goto LABEL_28;
                }

                if (([v5 copyItemAtPath:v24 toPath:v25 error:&v32] & 1) == 0)
                {
                  NSLog(&cfstr_FailedToCopyTo.isa, v24, v25);
                  goto LABEL_49;
                }
              }
            }
          }
        }

        v19 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
        v10 = 1;
        v11 = 1;
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 1;
      v11 = 1;
    }
  }

LABEL_28:
  v4 = v26;
LABEL_18:
  objc_autoreleasePoolPop(v4);
  os_unfair_lock_unlock(this + 2);
  v12 = *MEMORY[0x1E69E9840];
  return v10 & v11;
}

void MTLCompilerFSCache::getElementList(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t MTLCompilerFSCache::getShaderCacheKeys(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 2);
  if (*&this[12]._os_unfair_lock_opaque)
  {
    cache_keys = fscache_get_cache_keys();
  }

  else
  {
    cache_keys = 0;
  }

  os_unfair_lock_unlock(this + 2);
  return cache_keys;
}

uint64_t MTLPipelineDataCache::MTLPipelineDataCache(uint64_t a1, char a2, char *__s, void *a4)
{
  *(a1 + 16) = 0;
  *a1 = &unk_1EF474218;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 24), __s);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1065353216;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = *a4;
  *(a1 + 48) = a2;
  return a1;
}

void MTLPipelineDataCache::writeToDisc(MTLPipelineDataCache *this)
{
  if (*(this + 48) == 1)
  {
    os_unfair_lock_lock(this + 2);
    v20 = 0;
    asprintf(&v20, "%s.tmp", *(this + 7));
    v2 = fopen(v20, "wb");
    if (!v2)
    {
      printf("Failed to open: %s\n", v20);
      exit(1);
    }

    v3 = *(this + 11);
    __ptr[0] = 0x14D50504CLL;
    __ptr[1] = *(this + 19);
    v4 = 48 * v3 + 48;
    __ptr[3] = 40;
    __ptr[4] = v4;
    for (i = *(this + 14); i != *(this + 15); i += 3)
    {
      v6 = *i;
      v4 += v6;
    }

    __ptr[2] = v4;
    v18 = v3;
    if (fwrite(__ptr, 1uLL, 0x28uLL, v2) != 40 || fwrite(&v18, 1uLL, 8uLL, v2) != 8)
    {
      printf("Failed to write to: %s\n", v20);
      exit(1);
    }

    for (j = *(this + 10); j; j = *j)
    {
      if (*(j + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v15, j[2], j[3]);
      }

      else
      {
        v15 = *(j + 2);
      }

      v8 = *(j + 5);
      v17 = j[7];
      v16 = v8;
      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v15;
      }

      else
      {
        v9 = v15.__r_.__value_.__r.__words[0];
      }

      v14 = v16;
      if (fwrite(v9, 1uLL, 0x20uLL, v2) != 32 || fwrite(&v14 + 8, 1uLL, 8uLL, v2) != 8 || fwrite(&v14, 1uLL, 8uLL, v2) != 8)
      {
        printf("Failed to write to: %s\n", v20);
        exit(1);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }
    }

    memset(&v15, 0, sizeof(v15));
    std::vector<unsigned long>::reserve(&v15, 0xAAAAAAAAAAAAAAABLL * ((*(this + 15) - *(this + 14)) >> 3));
    v10 = *(this + 14);
    v11 = *(this + 15);
    while (v10 != v11)
    {
      if (*v10 != fwrite(*(v10 + 16), 1uLL, *v10, v2))
      {
        printf("Failed to write to: %s\n", v20);
        exit(1);
      }

      v10 += 24;
    }

    if (fclose(v2))
    {
      printf("Failed to write to: %s\n", v20);
      exit(1);
    }

    rename(v20, *(this + 7), v12);
    if (v13)
    {
      printf("Failed to write to: %s\n", *(this + 7));
    }

    free(v20);
    if (v15.__r_.__value_.__r.__words[0])
    {
      v15.__r_.__value_.__l.__size_ = v15.__r_.__value_.__r.__words[0];
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    os_unfair_lock_unlock(this + 2);
  }
}

void *std::vector<unsigned long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLTagType>>(result, a2);
    }

    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t MTLPipelineDataCache::addElement(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    os_unfair_lock_lock((result + 8));
    operator new();
  }

  return result;
}

void MTLPipelineDataCache::getElementList(os_unfair_lock_s *this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  os_unfair_lock_lock(this + 2);
  for (i = *&this[20]._os_unfair_lock_opaque; i; i = *i)
  {
    if (*(i + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, i[2], i[3]);
    }

    else
    {
      __p = *(i + 2);
    }

    v20 = *(i + 5);
    v21 = i[7];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v6 = a2[1];
    v7 = a2[2];
    if (v6 >= v7)
    {
      v10 = *a2;
      v11 = v6 - *a2;
      v12 = v11 >> 5;
      v13 = (v11 >> 5) + 1;
      if (v13 >> 59)
      {
        std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
      }

      v14 = v7 - v10;
      if (v14 >> 4 > v13)
      {
        v13 = v14 >> 4;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFE0)
      {
        v13 = 0x7FFFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<MTLUINT256_t>>(a2, v13);
      }

      v15 = (32 * v12);
      v16 = *&p_p->__r_.__value_.__r.__words[2];
      *v15 = *&p_p->__r_.__value_.__l.__data_;
      v15[1] = v16;
      v9 = 32 * v12 + 32;
      v17 = &v15[-2 * (v11 >> 5)];
      memcpy(v17, v10, v11);
      v18 = *a2;
      *a2 = v17;
      a2[1] = v9;
      a2[2] = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      v8 = *&p_p->__r_.__value_.__r.__words[2];
      *v6 = *&p_p->__r_.__value_.__l.__data_;
      *(v6 + 1) = v8;
      v9 = (v6 + 32);
    }

    a2[1] = v9;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  os_unfair_lock_unlock(this + 2);
}

void sub_185C0B948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(v15 + 2);
  v17 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<DataBlock>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void initLogMode()
{
  if (initLogMode_pred != -1)
  {
    initLogMode_cold_1();
  }
}

uint64_t __initLogMode_block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = @"METAL_TELEMETRY_LOG_MODE";
  v5[0] = &unk_1EF4CFB58;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  _CFXPreferencesRegisterDefaultValues();
  v1 = getenv([@"METAL_TELEMETRY_LOG_MODE" UTF8String]);
  if (v1)
  {
    result = strtol(v1, 0, 0);
  }

  else
  {
    result = [v0 integerForKey:@"METAL_TELEMETRY_LOG_MODE"];
  }

  logMode = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MTLHashKey::MTLHashKey(uint64_t a1, _OWORD *a2, void *a3, int **a4)
{
  *(a1 + 16) = 4;
  *a1 = xmmword_185DB8240;
  *(a1 + 56) = 0;
  v8 = a1 + 56;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<MTLUINT256_t>::reserve((a1 + 56), 0x8E38E38E38E38E39 * (a4[1] - *a4) + ((a3[1] - *a3) >> 5) + 1);
  std::vector<MTLUINT256_t>::push_back[abi:ne200100](v8, a2);
  *a1 |= 1uLL;
  v10 = *a3;
  for (i = a3[1]; v10 != i; v10 += 2)
  {
    std::vector<MTLUINT256_t>::push_back[abi:ne200100](v8, v10);
    *a1 += 1 << *(a1 + 16);
  }

  v12 = *(a1 + 56);
  v11 = *(a1 + 64);
  if (v11 - v12 > 0x20)
  {
    v13 = v12 + 32;
    v14 = 126 - 2 * __clz((v11 - (v12 + 32)) >> 5);
    if (v11 == v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    std::__introsort<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,false>(v13, v11, v15, 1);
  }

  v17 = *a4;
  v16 = a4[1];
  while (v17 != v16)
  {
    std::vector<MTLUINT256_t>::push_back[abi:ne200100](v8, v17 + 1);
    v18 = *v17;
    if (*v17 == 1026)
    {
      v19 = 2;
    }

    else if (v18 == 1027)
    {
      v19 = 4;
    }

    else
    {
      if (v18 != 1032)
      {
        goto LABEL_17;
      }

      v19 = 8;
    }

    *a1 |= v19;
LABEL_17:
    v17 += 9;
  }

  CC_SHA256(*(a1 + 56), (*(a1 + 64) - *(a1 + 56)) & 0xFFFFFFE0, (a1 + 24));
  return a1;
}

void sub_185C0BCA8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void MTLHashKey::getHashTools(unint64_t *a1, void *__dst, void *a3)
{
  memcpy(__dst, a1[7], a1[8] - a1[7]);
  bzero(a3, (a1[8] - a1[7]) >> 3);
  v5 = *a1;
  if ((*a1 & 2) != 0)
  {
    *(a3 + (v5 >> *(a1 + 16)) + 1) = 1026;
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        return;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + (v5 >> *(a1 + 16)) + 2) = 1027;
  if ((v5 & 8) == 0)
  {
    return;
  }

LABEL_4:
  *(a3 + (v5 >> *(a1 + 16)) + 3) = 1032;
}

BOOL MTLHashKey::areBitcodesEqual(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = (v6 - *a3) >> 5;
  if (v7 != *a1 >> *(a1 + 16))
  {
    return 0;
  }

  v8 = *(a1 + 56);
  v9 = *v8;
  v10 = v8[1];
  v11 = *a2;
  v12 = a2[1];
  v14 = v8[2];
  v13 = v8[3];
  v16 = a2[2];
  v15 = a2[3];
  v17 = v9 == v11 && v10 == v12;
  v18 = v17 && v14 == v16;
  if (!v18 || v13 != v15)
  {
    return 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  std::__introsort<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,false>(v5, v6, 126 - 2 * __clz(v7), 1);
  return memcmp((*(a1 + 56) + 32), *a3, *(a3 + 8) - *a3) == 0;
}

uint64_t MTLHashKey::getHash(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 && !a3)
  {
    if ((*a1 & (1 << a2)) != 0)
    {
      return *(a1 + 56) + 32 * (*a1 >> *(a1 + 16)) + 32 * a2;
    }

    return 0;
  }

  if (!(a3 | a2))
  {
    return *(a1 + 56);
  }

  if (*a1 >> *(a1 + 16) < a3)
  {
    return 0;
  }

  return *(a1 + 56) + 32 * a3;
}

unint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,0>(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = bswap64(*a2);
  v5 = bswap64(*result);
  if (v4 == v5 && (v4 = bswap64(a2[1]), v5 = bswap64(result[1]), v4 == v5) && (v4 = bswap64(a2[2]), v5 = bswap64(result[2]), v4 == v5) && (v4 = bswap64(a2[3]), v5 = bswap64(result[3]), v4 == v5))
  {
    v6 = 0;
  }

  else if (v4 < v5)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  v7 = bswap64(*a3);
  v8 = bswap64(*a2);
  if (v7 != v8 || (v7 = bswap64(a3[1]), v8 = bswap64(a2[1]), v7 != v8) || (v7 = bswap64(a3[2]), v8 = bswap64(a2[2]), v7 != v8) || (v7 = bswap64(a3[3]), v8 = bswap64(a2[3]), v7 != v8))
  {
    if (v7 < v8)
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }

    if (v6 < 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    if (v9 < 0)
    {
      v17 = *a2;
      v16 = *(a2 + 1);
      v18 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v18;
      *a3 = v17;
      *(a3 + 1) = v16;
      v19 = bswap64(*a2);
      v20 = bswap64(*result);
      if (v19 != v20)
      {
        goto LABEL_35;
      }

      v19 = bswap64(a2[1]);
      v20 = bswap64(result[1]);
      if (v19 == v20 && (v19 = bswap64(a2[2]), v20 = bswap64(result[2]), v19 == v20) && (v19 = bswap64(a2[3]), v20 = bswap64(result[3]), v19 == v20))
      {
        v21 = 0;
      }

      else
      {
LABEL_35:
        v21 = v19 < v20 ? -1 : 1;
      }

      if (v21 < 0)
      {
        v26 = *result;
        v25 = *(result + 1);
        v27 = *(a2 + 1);
        *result = *a2;
        *(result + 1) = v27;
        *a2 = v26;
        *(a2 + 1) = v25;
      }
    }

    goto LABEL_42;
  }

  v9 = 0;
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  if (v9 < 0)
  {
    v23 = *result;
    v22 = *(result + 1);
    v28 = *(a3 + 1);
    *result = *a3;
    *(result + 1) = v28;
    goto LABEL_41;
  }

  v11 = *result;
  v10 = *(result + 1);
  v12 = *(a2 + 1);
  *result = *a2;
  *(result + 1) = v12;
  *a2 = v11;
  *(a2 + 1) = v10;
  v13 = bswap64(*a3);
  v14 = bswap64(*a2);
  if (v13 == v14 && (v13 = bswap64(a3[1]), v14 = bswap64(a2[1]), v13 == v14) && (v13 = bswap64(a3[2]), v14 = bswap64(a2[2]), v13 == v14) && (v13 = bswap64(a3[3]), v14 = bswap64(a2[3]), v13 == v14))
  {
    v15 = 0;
  }

  else if (v13 < v14)
  {
    v15 = -1;
  }

  else
  {
    v15 = 1;
  }

  if (v15 < 0)
  {
    v23 = *a2;
    v22 = *(a2 + 1);
    v24 = *(a3 + 1);
    *a2 = *a3;
    *(a2 + 1) = v24;
LABEL_41:
    *a3 = v23;
    *(a3 + 1) = v22;
  }

LABEL_42:
  v29 = bswap64(*a4);
  v30 = bswap64(*a3);
  if (v29 != v30 || (v29 = bswap64(a4[1]), v30 = bswap64(a3[1]), v29 != v30) || (v29 = bswap64(a4[2]), v30 = bswap64(a3[2]), v29 != v30) || (v29 = bswap64(a4[3]), v30 = bswap64(a3[3]), v29 != v30))
  {
    v31 = v29 < v30 ? -1 : 1;
    if (v31 < 0)
    {
      v33 = *a3;
      v32 = *(a3 + 1);
      v34 = *(a4 + 1);
      *a3 = *a4;
      *(a3 + 1) = v34;
      *a4 = v33;
      *(a4 + 1) = v32;
      v35 = bswap64(*a3);
      v36 = bswap64(*a2);
      if (v35 != v36)
      {
        goto LABEL_55;
      }

      v35 = bswap64(a3[1]);
      v36 = bswap64(a2[1]);
      if (v35 == v36 && (v35 = bswap64(a3[2]), v36 = bswap64(a2[2]), v35 == v36) && (v35 = bswap64(a3[3]), v36 = bswap64(a2[3]), v35 == v36))
      {
        v37 = 0;
      }

      else
      {
LABEL_55:
        v37 = v35 < v36 ? -1 : 1;
      }

      if (v37 < 0)
      {
        v39 = *a2;
        v38 = *(a2 + 1);
        v40 = *(a3 + 1);
        *a2 = *a3;
        *(a2 + 1) = v40;
        *a3 = v39;
        *(a3 + 1) = v38;
        v41 = bswap64(*a2);
        v42 = bswap64(*result);
        if (v41 == v42 && (v41 = bswap64(a2[1]), v42 = bswap64(result[1]), v41 == v42) && (v41 = bswap64(a2[2]), v42 = bswap64(result[2]), v41 == v42) && (v41 = bswap64(a2[3]), v42 = bswap64(result[3]), v41 == v42))
        {
          v43 = 0;
        }

        else if (v41 < v42)
        {
          v43 = -1;
        }

        else
        {
          v43 = 1;
        }

        if (v43 < 0)
        {
          v45 = *result;
          v44 = *(result + 1);
          v46 = *(a2 + 1);
          *result = *a2;
          *(result + 1) = v46;
          *a2 = v45;
          *(a2 + 1) = v44;
        }
      }
    }
  }

  v47 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*>(unint64_t *a1, unint64_t *a2)
{
  v109 = *MEMORY[0x1E69E9840];
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v14 = a1 + 4;
        v15 = a2 - 4;
        v16 = bswap64(a1[4]);
        v17 = bswap64(*a1);
        if (v16 == v17 && (v16 = bswap64(a1[5]), v17 = bswap64(a1[1]), v16 == v17) && (v16 = bswap64(a1[6]), v17 = bswap64(a1[2]), v16 == v17) && (v16 = bswap64(a1[7]), v17 = bswap64(a1[3]), v16 == v17))
        {
          v18 = 0;
        }

        else if (v16 < v17)
        {
          v18 = -1;
        }

        else
        {
          v18 = 1;
        }

        v24 = bswap64(*v15);
        v25 = bswap64(*v14);
        if (v24 == v25 && (v24 = bswap64(*(a2 - 3)), v25 = bswap64(a1[5]), v24 == v25) && (v24 = bswap64(*(a2 - 2)), v25 = bswap64(a1[6]), v24 == v25) && (v24 = bswap64(*(a2 - 1)), v25 = bswap64(a1[7]), v24 == v25))
        {
          v26 = 0;
        }

        else if (v24 < v25)
        {
          v26 = -1;
        }

        else
        {
          v26 = 1;
        }

        if ((v18 & 0x80000000) == 0)
        {
          if (v26 < 0)
          {
            v28 = *v14;
            v27 = *(a1 + 3);
            v29 = *(a2 - 1);
            *v14 = *v15;
            *(a1 + 3) = v29;
            *v15 = v28;
            *(a2 - 1) = v27;
            v30 = bswap64(a1[4]);
            v31 = bswap64(*a1);
            if (v30 != v31)
            {
              goto LABEL_99;
            }

            v30 = bswap64(a1[5]);
            v31 = bswap64(a1[1]);
            if (v30 == v31 && (v30 = bswap64(a1[6]), v31 = bswap64(a1[2]), v30 == v31) && (v30 = bswap64(a1[7]), v31 = bswap64(a1[3]), v30 == v31))
            {
              v32 = 0;
            }

            else
            {
LABEL_99:
              v32 = v30 < v31 ? -1 : 1;
            }

            if (v32 < 0)
            {
              v70 = *a1;
              v69 = *(a1 + 1);
              v71 = *(a1 + 3);
              *a1 = *v14;
              *(a1 + 1) = v71;
              *v14 = v70;
              *(a1 + 3) = v69;
            }
          }

          break;
        }

        if (v26 < 0)
        {
          v73 = *a1;
          v72 = *(a1 + 1);
          v81 = *(a2 - 1);
          *a1 = *v15;
          *(a1 + 1) = v81;
        }

        else
        {
          v52 = *a1;
          v51 = *(a1 + 1);
          v53 = *(a1 + 3);
          *a1 = *v14;
          *(a1 + 1) = v53;
          *v14 = v52;
          *(a1 + 3) = v51;
          v54 = bswap64(*v15);
          v55 = bswap64(a1[4]);
          if (v54 == v55 && (v54 = bswap64(*(a2 - 3)), v55 = bswap64(a1[5]), v54 == v55) && (v54 = bswap64(*(a2 - 2)), v55 = bswap64(a1[6]), v54 == v55) && (v54 = bswap64(*(a2 - 1)), v55 = bswap64(a1[7]), v54 == v55))
          {
            v56 = 0;
          }

          else if (v54 < v55)
          {
            v56 = -1;
          }

          else
          {
            v56 = 1;
          }

          if ((v56 & 0x80000000) == 0)
          {
            break;
          }

          v73 = *v14;
          v72 = *(a1 + 3);
          v74 = *(a2 - 1);
          *v14 = *v15;
          *(a1 + 3) = v74;
        }

        *v15 = v73;
        *(a2 - 1) = v72;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,0>(a1, a1 + 4, a1 + 8, a2 - 4);
        break;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,0>(a1, a1 + 4, a1 + 8, a1 + 12);
        v10 = *(a2 - 4);
        v9 = a2 - 4;
        v11 = bswap64(v10);
        v12 = bswap64(a1[12]);
        if (v11 == v12 && (v11 = bswap64(v9[1]), v12 = bswap64(a1[13]), v11 == v12) && (v11 = bswap64(v9[2]), v12 = bswap64(a1[14]), v11 == v12) && (v11 = bswap64(v9[3]), v12 = bswap64(a1[15]), v11 == v12))
        {
          v13 = 0;
        }

        else if (v11 < v12)
        {
          v13 = -1;
        }

        else
        {
          v13 = 1;
        }

        if (v13 < 0)
        {
          v46 = *(a1 + 6);
          v45 = *(a1 + 7);
          v47 = *(v9 + 1);
          *(a1 + 6) = *v9;
          *(a1 + 7) = v47;
          *v9 = v46;
          *(v9 + 1) = v45;
          v48 = bswap64(a1[12]);
          v49 = bswap64(a1[8]);
          if (v48 != v49)
          {
            goto LABEL_90;
          }

          v48 = bswap64(a1[13]);
          v49 = bswap64(a1[9]);
          if (v48 == v49 && (v48 = bswap64(a1[14]), v49 = bswap64(a1[10]), v48 == v49) && (v48 = bswap64(a1[15]), v49 = bswap64(a1[11]), v48 == v49))
          {
            v50 = 0;
          }

          else
          {
LABEL_90:
            v50 = v48 < v49 ? -1 : 1;
          }

          if (v50 < 0)
          {
            v64 = *(a1 + 4);
            v63 = *(a1 + 5);
            v65 = *(a1 + 7);
            *(a1 + 4) = *(a1 + 6);
            *(a1 + 5) = v65;
            *(a1 + 6) = v64;
            *(a1 + 7) = v63;
            v66 = bswap64(a1[8]);
            v67 = bswap64(a1[4]);
            if (v66 != v67)
            {
              goto LABEL_151;
            }

            v66 = bswap64(a1[9]);
            v67 = bswap64(a1[5]);
            if (v66 == v67 && (v66 = bswap64(a1[10]), v67 = bswap64(a1[6]), v66 == v67) && (v66 = bswap64(a1[11]), v67 = bswap64(a1[7]), v66 == v67))
            {
              v68 = 0;
            }

            else
            {
LABEL_151:
              v68 = v66 < v67 ? -1 : 1;
            }

            if (v68 < 0)
            {
              v99 = *(a1 + 2);
              v98 = *(a1 + 3);
              v100 = *(a1 + 5);
              *(a1 + 2) = *(a1 + 4);
              *(a1 + 3) = v100;
              *(a1 + 4) = v99;
              *(a1 + 5) = v98;
              v101 = bswap64(a1[4]);
              v102 = bswap64(*a1);
              if (v101 != v102)
              {
                goto LABEL_160;
              }

              v101 = bswap64(a1[5]);
              v102 = bswap64(a1[1]);
              if (v101 == v102 && (v101 = bswap64(a1[6]), v102 = bswap64(a1[2]), v101 == v102) && (v101 = bswap64(a1[7]), v102 = bswap64(a1[3]), v101 == v102))
              {
                v103 = 0;
              }

              else
              {
LABEL_160:
                v103 = v101 < v102 ? -1 : 1;
              }

              if (v103 < 0)
              {
                v105 = *a1;
                v104 = *(a1 + 1);
                v106 = *(a1 + 3);
                *a1 = *(a1 + 2);
                *(a1 + 1) = v106;
                *(a1 + 2) = v105;
                *(a1 + 3) = v104;
              }
            }
          }
        }

        break;
      default:
        goto LABEL_22;
    }

LABEL_148:
    result = 1;
    goto LABEL_149;
  }

  if (v4 < 2)
  {
    goto LABEL_148;
  }

  if (v4 == 2)
  {
    v5 = a2 - 4;
    v6 = bswap64(*(a2 - 4));
    v7 = bswap64(*a1);
    if (v6 == v7 && (v6 = bswap64(*(a2 - 3)), v7 = bswap64(a1[1]), v6 == v7) && (v6 = bswap64(*(a2 - 2)), v7 = bswap64(a1[2]), v6 == v7) && (v6 = bswap64(*(a2 - 1)), v7 = bswap64(a1[3]), v6 == v7))
    {
      v8 = 0;
    }

    else if (v6 < v7)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }

    if (v8 < 0)
    {
      v43 = *a1;
      v42 = *(a1 + 1);
      v44 = *(a2 - 1);
      *a1 = *v5;
      *(a1 + 1) = v44;
      *v5 = v43;
      *(a2 - 1) = v42;
    }

    goto LABEL_148;
  }

LABEL_22:
  v19 = a1 + 8;
  v20 = a1 + 4;
  v21 = bswap64(a1[4]);
  v22 = bswap64(*a1);
  if (v21 == v22 && (v21 = bswap64(a1[5]), v22 = bswap64(a1[1]), v21 == v22) && (v21 = bswap64(a1[6]), v22 = bswap64(a1[2]), v21 == v22) && (v21 = bswap64(a1[7]), v22 = bswap64(a1[3]), v21 == v22))
  {
    v23 = 0;
  }

  else if (v21 < v22)
  {
    v23 = -1;
  }

  else
  {
    v23 = 1;
  }

  v33 = bswap64(*v19);
  v34 = bswap64(*v20);
  if (v33 == v34 && (v33 = bswap64(a1[9]), v34 = bswap64(a1[5]), v33 == v34) && (v33 = bswap64(a1[10]), v34 = bswap64(a1[6]), v33 == v34) && (v33 = bswap64(a1[11]), v34 = bswap64(a1[7]), v33 == v34))
  {
    v35 = 0;
  }

  else if (v33 < v34)
  {
    v35 = -1;
  }

  else
  {
    v35 = 1;
  }

  if (v23 < 0)
  {
    if (v35 < 0)
    {
      v79 = *a1;
      v78 = *(a1 + 1);
      v82 = *(a1 + 5);
      *a1 = *v19;
      *(a1 + 1) = v82;
    }

    else
    {
      v58 = *a1;
      v57 = *(a1 + 1);
      v59 = *(a1 + 3);
      *a1 = *v20;
      *(a1 + 1) = v59;
      *v20 = v58;
      *(a1 + 3) = v57;
      v60 = bswap64(a1[8]);
      v61 = bswap64(a1[4]);
      if (v60 == v61 && (v60 = bswap64(a1[9]), v61 = bswap64(a1[5]), v60 == v61) && (v60 = bswap64(a1[10]), v61 = bswap64(a1[6]), v60 == v61) && (v60 = bswap64(a1[11]), v61 = bswap64(a1[7]), v60 == v61))
      {
        v62 = 0;
      }

      else if (v60 < v61)
      {
        v62 = -1;
      }

      else
      {
        v62 = 1;
      }

      if ((v62 & 0x80000000) == 0)
      {
        goto LABEL_123;
      }

      v79 = *v20;
      v78 = *(a1 + 3);
      v80 = *(a1 + 5);
      *v20 = *v19;
      *(a1 + 3) = v80;
    }

    *v19 = v79;
    *(a1 + 5) = v78;
    goto LABEL_123;
  }

  if (v35 < 0)
  {
    v37 = *v20;
    v36 = *(a1 + 3);
    v38 = *(a1 + 5);
    *v20 = *v19;
    *(a1 + 3) = v38;
    *v19 = v37;
    *(a1 + 5) = v36;
    v39 = bswap64(a1[4]);
    v40 = bswap64(*a1);
    if (v39 != v40)
    {
      goto LABEL_109;
    }

    v39 = bswap64(a1[5]);
    v40 = bswap64(a1[1]);
    if (v39 == v40 && (v39 = bswap64(a1[6]), v40 = bswap64(a1[2]), v39 == v40) && (v39 = bswap64(a1[7]), v40 = bswap64(a1[3]), v39 == v40))
    {
      v41 = 0;
    }

    else
    {
LABEL_109:
      v41 = v39 < v40 ? -1 : 1;
    }

    if (v41 < 0)
    {
      v76 = *a1;
      v75 = *(a1 + 1);
      v77 = *(a1 + 3);
      *a1 = *v20;
      *(a1 + 1) = v77;
      *v20 = v76;
      *(a1 + 3) = v75;
    }
  }

LABEL_123:
  v83 = a1 + 12;
  if (a1 + 12 == a2)
  {
    goto LABEL_148;
  }

  v84 = 0;
  v85 = 0;
  while (1)
  {
    v86 = bswap64(*v83);
    v87 = bswap64(*v19);
    if (v86 != v87 || (v86 = bswap64(v83[1]), v87 = bswap64(v19[1]), v86 != v87) || (v86 = bswap64(v83[2]), v87 = bswap64(v19[2]), v86 != v87) || (v86 = bswap64(v83[3]), v87 = bswap64(v19[3]), v86 != v87))
    {
      v88 = v86 < v87 ? -1 : 1;
      if (v88 < 0)
      {
        v107 = *v83;
        v108 = *(v83 + 1);
        v89 = v84;
        while (1)
        {
          v90 = a1 + v89;
          v91 = *(a1 + v89 + 80);
          *(v90 + 6) = *(a1 + v89 + 64);
          *(v90 + 7) = v91;
          if (v89 == -64)
          {
            break;
          }

          v92 = bswap64(v107);
          v93 = bswap64(*(v90 + 4));
          if (v92 == v93 && (v92 = bswap64(*(&v107 + 1)), v93 = bswap64(*(v90 + 5)), v92 == v93) && (v92 = bswap64(v108), v93 = bswap64(*(v90 + 6)), v92 == v93) && (v92 = bswap64(*(&v108 + 1)), v93 = bswap64(*(v90 + 7)), v92 == v93))
          {
            v94 = 0;
          }

          else if (v92 < v93)
          {
            v94 = -1;
          }

          else
          {
            v94 = 1;
          }

          v89 -= 32;
          if ((v94 & 0x80000000) == 0)
          {
            v95 = (a1 + v89 + 96);
            goto LABEL_146;
          }
        }

        v95 = a1;
LABEL_146:
        *v95 = v107;
        *(v95 + 1) = v108;
        if (++v85 == 8)
        {
          break;
        }
      }
    }

    v19 = v83;
    v84 += 32;
    v83 += 4;
    if (v83 == a2)
    {
      goto LABEL_148;
    }
  }

  result = v83 + 4 == a2;
LABEL_149:
  v97 = *MEMORY[0x1E69E9840];
  return result;
}

MTL4MetalScriptBuilder *std::unique_ptr<MTL4MetalScriptBuilder>::reset[abi:ne200100](MTL4MetalScriptBuilder **a1, MTL4MetalScriptBuilder *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MTL4MetalScriptBuilder::~MTL4MetalScriptBuilder(result);

    JUMPOUT(0x1865FF210);
  }

  return result;
}

uint64_t MTL4MetalScriptBuilderImpl::makeValue(MTL4MetalScriptBuilderImpl *this, MTLDataType a2, uint64_t *a3)
{
  switch(a2)
  {
    case MTLDataTypeFloat:
    case MTLDataTypeInt:
    case MTLDataTypeUInt:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt>(this + 368, a3);
      break;
    case MTLDataTypeFloat2:
    case MTLDataTypeInt2:
    case MTLDataTypeUInt2:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt2>(this + 368, a3);
      break;
    case MTLDataTypeFloat3:
    case MTLDataTypeInt3:
    case MTLDataTypeUInt3:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt3>(this + 368, a3);
      break;
    case MTLDataTypeFloat4:
    case MTLDataTypeInt4:
    case MTLDataTypeUInt4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt4>(this + 368, a3);
      break;
    case MTLDataTypeHalf:
    case MTLDataTypeShort:
    case MTLDataTypeUShort:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort>(this + 368, a3);
      break;
    case MTLDataTypeHalf2:
    case MTLDataTypeShort2:
    case MTLDataTypeUShort2:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort2>(this + 368, a3);
      break;
    case MTLDataTypeHalf3:
    case MTLDataTypeShort3:
    case MTLDataTypeUShort3:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort3>(this + 368, a3);
      break;
    case MTLDataTypeHalf4:
    case MTLDataTypeShort4:
    case MTLDataTypeUShort4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort4>(this + 368, a3);
      break;
    case MTLDataTypeChar:
    case MTLDataTypeUChar:
    case MTLDataTypeBool:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool>(this + 368, a3);
      break;
    case MTLDataTypeChar2:
    case MTLDataTypeUChar2:
    case MTLDataTypeBool2:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool2>(this + 368, a3);
      break;
    case MTLDataTypeChar3:
    case MTLDataTypeUChar3:
    case MTLDataTypeBool3:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool3>(this + 368, a3);
      break;
    case MTLDataTypeChar4:
    case MTLDataTypeUChar4:
    case MTLDataTypeBool4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool4>(this + 368, a3);
      break;
    case MTLDataTypeLong:
    case MTLDataTypeULong:
    case MTLDataTypeULong4|MTLDataTypeStruct:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong>(this + 368, a3);
      break;
    case MTLDataTypeLong2:
    case MTLDataTypeULong2:
    case MTLDataTypeULong4|MTLDataTypeArray:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong2>(this + 368, a3);
      break;
    case MTLDataTypeLong3:
    case MTLDataTypeULong3:
    case MTLDataTypeULong4|MTLDataTypeFloat:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong3>(this + 368, a3);
      break;
    case MTLDataTypeLong4:
    case MTLDataTypeULong4:
    case MTLDataTypeULong4|MTLDataTypeFloat2:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong4>(this + 368, a3);
      break;
    case MTLDataTypeULong4|MTLDataTypeFloat3:
    case MTLDataTypeR16Snorm|MTLDataTypeInt4:
    case MTLDataTypeRG8Snorm|MTLDataTypeInt4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt8>(this + 368, a3);
      break;
    case MTLDataTypeULong4|MTLDataTypeFloat4:
    case MTLDataTypeRG8Unorm|MTLDataTypeInt4:
    case MTLDataTypeRG16Unorm|MTLDataTypeInt4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt16>(this + 368, a3);
      break;
    case MTLDataTypeULong4|MTLDataTypeFloat2x2:
    case MTLDataTypeRG16Snorm|MTLDataTypeInt4:
    case MTLDataTypeRGBA8Unorm_sRGB|MTLDataTypeInt4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort8>(this + 368, a3);
      break;
    case MTLDataTypeR16Unorm|MTLDataTypeInt4:
    case MTLDataTypeRGBA8Unorm|MTLDataTypeInt4:
    case MTLDataTypeRGBA8Snorm|MTLDataTypeInt4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort16>(this + 368, a3);
      break;
    case MTLDataTypeRGBA16Unorm|MTLDataTypeInt4:
    case MTLDataTypeRGB10A2Unorm|MTLDataTypeInt4:
    case MTLDataTypeInstanceAccelerationStructure|MTLDataTypeStruct:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool8>(this + 368, a3);
      break;
    case MTLDataTypeRGBA16Snorm|MTLDataTypeInt4:
    case MTLDataTypeRG11B10Float|MTLDataTypeInt4:
    case MTLDataTypeULong4|MTLDataTypeInt4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool16>(this + 368, a3);
      break;
    case MTLDataTypeRGB9E5Float|MTLDataTypeInt4:
    case MTLDataTypeComputePipeline|MTLDataTypeInt4:
    case MTLDataTypeLong|MTLDataTypeInt4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong8>(this + 368, a3);
      break;
    case MTLDataTypeRenderPipeline|MTLDataTypeInt4:
    case MTLDataTypeIndirectCommandBuffer|MTLDataTypeInt4:
    case MTLDataTypeLong2|MTLDataTypeInt4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong16>(this + 368, a3);
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool3>(uint64_t a1, __int16 *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 1uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 2)
  {
    flatbuffers::vector_downward::reallocate(a1, 3uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 3;
  v5 = *a2;
  *(v4 - 1) = *(a2 + 2);
  *(v4 - 3) = v5;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool8>(uint64_t a1, void *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 1uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 7)
  {
    flatbuffers::vector_downward::reallocate(a1, 8uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 8;
  *(v4 - 8) = *a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool16>(uint64_t a1, _OWORD *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 1uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 0xF)
  {
    flatbuffers::vector_downward::reallocate(a1, 0x10uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 16;
  *(v4 - 16) = *a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort>(uint64_t a1, _WORD *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 2uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 1)
  {
    flatbuffers::vector_downward::reallocate(a1, 2uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 2) = *a2;
  v5 = v4 - 2;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort2>(uint64_t a1, _DWORD *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 2uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 3)
  {
    flatbuffers::vector_downward::reallocate(a1, 4uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 4;
  *(v4 - 4) = *a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort3>(uint64_t a1, int *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 2uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 5)
  {
    flatbuffers::vector_downward::reallocate(a1, 6uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 6;
  v5 = *a2;
  *(v4 - 2) = *(a2 + 2);
  *(v4 - 6) = v5;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort4>(uint64_t a1, void *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 2uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 7)
  {
    flatbuffers::vector_downward::reallocate(a1, 8uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 8;
  *(v4 - 8) = *a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort8>(uint64_t a1, _OWORD *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 2uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 0xF)
  {
    flatbuffers::vector_downward::reallocate(a1, 0x10uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 16;
  *(v4 - 16) = *a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort16>(uint64_t a1, _OWORD *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 2uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 0x1F)
  {
    flatbuffers::vector_downward::reallocate(a1, 0x20uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 32;
  v5 = a2[1];
  *(v4 - 32) = *a2;
  *(v4 - 16) = v5;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt2>(uint64_t a1, void *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 7)
  {
    flatbuffers::vector_downward::reallocate(a1, 8uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 8;
  *(v4 - 8) = *a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt3>(uint64_t a1, uint64_t *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 0xB)
  {
    flatbuffers::vector_downward::reallocate(a1, 0xCuLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 12;
  v5 = *a2;
  *(v4 - 4) = *(a2 + 2);
  *(v4 - 12) = v5;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt8>(uint64_t a1, _OWORD *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 0x1F)
  {
    flatbuffers::vector_downward::reallocate(a1, 0x20uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 32;
  v5 = a2[1];
  *(v4 - 32) = *a2;
  *(v4 - 16) = v5;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt16>(uint64_t a1, __int128 *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 0x3F)
  {
    flatbuffers::vector_downward::reallocate(a1, 0x40uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 64;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  *(v4 - 32) = a2[2];
  *(v4 - 16) = v7;
  *(v4 - 64) = v5;
  *(v4 - 48) = v6;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong>(uint64_t a1, void *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 7)
  {
    flatbuffers::vector_downward::reallocate(a1, 8uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 8) = *a2;
  v5 = v4 - 8;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong2>(uint64_t a1, _OWORD *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 0xF)
  {
    flatbuffers::vector_downward::reallocate(a1, 0x10uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 16;
  *(v4 - 16) = *a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong3>(uint64_t a1, __int128 *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 0x17)
  {
    flatbuffers::vector_downward::reallocate(a1, 0x18uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 24;
  v5 = *a2;
  *(v4 - 8) = *(a2 + 2);
  *(v4 - 24) = v5;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong4>(uint64_t a1, _OWORD *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 0x1F)
  {
    flatbuffers::vector_downward::reallocate(a1, 0x20uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 32;
  v5 = a2[1];
  *(v4 - 32) = *a2;
  *(v4 - 16) = v5;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong8>(uint64_t a1, __int128 *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 0x3F)
  {
    flatbuffers::vector_downward::reallocate(a1, 0x40uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 64;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  *(v4 - 32) = a2[2];
  *(v4 - 16) = v7;
  *(v4 - 64) = v5;
  *(v4 - 48) = v6;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong16>(uint64_t a1, __int128 *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 0x7F)
  {
    flatbuffers::vector_downward::reallocate(a1, 0x80uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 128;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  *(v4 - 96) = a2[2];
  *(v4 - 80) = v7;
  *(v4 - 128) = v5;
  *(v4 - 112) = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[7];
  *(v4 - 32) = a2[6];
  *(v4 - 16) = v10;
  *(v4 - 64) = v8;
  *(v4 - 48) = v9;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t MTL4MetalScriptBuilderImpl::createFunctionConstantValue(MTL4MetalScriptBuilderImpl *this, MTLNamedConstantValue *a2)
{
  v2 = a2;
  v4 = [(MTLNamedConstantValue *)a2 name];
  v6 = MTLMetalScriptSerializer::addString((this + 368), v4, v5);
  v7 = [(MTLNamedConstantValue *)v2 dataType];
  LODWORD(v2) = MTL4MetalScriptBuilderImpl::makeValue(this, v7, [(MTLNamedConstantValue *)v2 data]);
  *(this + 438) = 1;
  v8 = *(this + 102);
  v9 = *(this + 100) - *(this + 104);
  v10 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 368, 2);
  flatbuffers::FlatBufferBuilder::TrackField(this + 46, 4, v10);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v6);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 8, v7, 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 10, v2);

  return flatbuffers::FlatBufferBuilder::EndTable((this + 368), v9 + v8);
}

uint64_t MTL4MetalScriptBuilderImpl::createFunctionConstantValue(MTL4MetalScriptBuilderImpl *this, MTLIndexedConstantValue *a2)
{
  v2 = a2;
  v10 = [(MTLIndexedConstantValue *)a2 index];
  v4 = [(MTLIndexedConstantValue *)v2 dataType];
  LODWORD(v2) = MTL4MetalScriptBuilderImpl::makeValue(this, v4, [(MTLIndexedConstantValue *)v2 data]);
  v5 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort>(this + 368, &v10);
  *(this + 438) = 1;
  v6 = *(this + 102);
  v7 = *(this + 100) - *(this + 104);
  v8 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 368, 1);
  flatbuffers::FlatBufferBuilder::TrackField(this + 46, 4, v8);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v5);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 8, v4, 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 10, v2);
  return flatbuffers::FlatBufferBuilder::EndTable((this + 368), v7 + v6);
}

uint64_t MTL4MetalScriptBuilderImpl::createGraph(MTL4MetalScriptBuilderImpl *this, MTLFunctionStitchingGraph *a2)
{
  v191 = *MEMORY[0x1E69E9840];
  reorderStitchingGraphNodes(a2, &v184);
  v181 = 0;
  v182 = 0;
  v183 = 0;
  v3 = v184;
  v151 = v185;
  if (v184 != v185)
  {
    while (1)
    {
      v4 = *v3;
      if ([*v3 isMemberOfClass:objc_opt_class()])
      {
        break;
      }

      if (![v4 isMemberOfClass:objc_opt_class()])
      {
        if ([v4 isMemberOfClass:objc_opt_class()])
        {
          v44 = [v4 argumentIndex];
          *(this + 438) = 1;
          v45 = *(this + 51);
          v46 = *(this + 52);
          v47 = *(this + 50);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 46, 4, v44, 0);
          v48 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v47 - v46 + v45);
          *(this + 438) = 1;
          LODWORD(v46) = *(this + 100);
          LODWORD(v47) = *(this + 104);
          LODWORD(v45) = *(this + 102);
          flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v48);
          v49 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 368, 1);
          flatbuffers::FlatBufferBuilder::TrackField(this + 46, 4, v49);
          LODWORD(v178) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v46 - v47 + v45);
          std::vector<unsigned int>::push_back[abi:ne200100](&v181, &v178);
        }

        else if ([v4 isMemberOfClass:objc_opt_class()])
        {
          v153 = v3;
          v50 = [v4 bindIndex];
          *(this + 438) = 1;
          v51 = *(this + 100);
          v52 = *(this + 104);
          v53 = *(this + 102);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 46, 6, v50, 0);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 46, 4, 0, 0);
          v54 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v51 - v52 + v53);
          v55 = [v4 byteOffset];
          *(this + 438) = 1;
          v56 = *(this + 100);
          v57 = *(this + 104);
          v58 = *(this + 102);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 46, 6, v55, 0);
          flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 4, v54);
          v59 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v56 - v57 + v58);
          v60 = [v4 dereference];
          v61 = v59;
          *(this + 438) = 1;
          if (v60)
          {
            v62 = *(this + 51);
            v63 = *(this + 52);
            v64 = *(this + 50);
            flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 4, v61);
            v3 = v153;
            v65 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v64 - v63 + v62);
            *(this + 438) = 1;
            v66 = *(this + 100);
            v67 = *(this + 104);
            v68 = *(this + 102);
            flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v65);
            v69 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 368, 5);
          }

          else
          {
            v66 = *(this + 100);
            v67 = *(this + 104);
            v68 = *(this + 102);
            flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v61);
            v3 = v153;
            v69 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 368, 4);
          }

          flatbuffers::FlatBufferBuilder::TrackField(this + 46, 4, v69);
          LODWORD(v178) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v66 - v67 + v68);
          std::vector<unsigned int>::push_back[abi:ne200100](&v181, &v178);
        }

        else if ([v4 isMemberOfClass:objc_opt_class()])
        {
          v70 = [v4 bindIndex];
          *(this + 438) = 1;
          v71 = *(this + 100);
          v72 = *(this + 104);
          v73 = *(this + 102);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 46, 6, v70, 0);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 46, 4, 0, 0);
          v74 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v71 - v72 + v73);
          *(this + 438) = 1;
          v75 = *(this + 100);
          v76 = *(this + 104);
          v77 = *(this + 102);
          flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v74);
          v78 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 368, 3);
          flatbuffers::FlatBufferBuilder::TrackField(this + 46, 4, v78);
          LODWORD(v178) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v75 - v76 + v77);
          std::vector<unsigned int>::push_back[abi:ne200100](&v181, &v178);
        }

        else if ([v4 isMemberOfClass:objc_opt_class()])
        {
          v79 = [v4 bindIndex];
          *(this + 438) = 1;
          v80 = *(this + 51);
          v81 = *(this + 52);
          v82 = *(this + 50);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 46, 4, v79, 0);
          v83 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v82 - v81 + v80);
          *(this + 438) = 1;
          LODWORD(v81) = *(this + 100);
          LODWORD(v82) = *(this + 104);
          LODWORD(v80) = *(this + 102);
          flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v83);
          v84 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 368, 6);
          flatbuffers::FlatBufferBuilder::TrackField(this + 46, 4, v84);
          LODWORD(v178) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v81 - v82 + v80);
          std::vector<unsigned int>::push_back[abi:ne200100](&v181, &v178);
        }

        else if ([v4 isMemberOfClass:objc_opt_class()])
        {
          v85 = [v4 bindIndex];
          *(this + 438) = 1;
          v86 = *(this + 51);
          v87 = *(this + 52);
          v88 = *(this + 50);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 46, 4, v85, 0);
          v89 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v88 - v87 + v86);
          *(this + 438) = 1;
          LODWORD(v87) = *(this + 100);
          LODWORD(v88) = *(this + 104);
          LODWORD(v86) = *(this + 102);
          flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v89);
          v90 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 368, 7);
          flatbuffers::FlatBufferBuilder::TrackField(this + 46, 4, v90);
          LODWORD(v178) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v87 - v88 + v86);
          std::vector<unsigned int>::push_back[abi:ne200100](&v181, &v178);
        }

        else if ([v4 isMemberOfClass:objc_opt_class()])
        {
          v91 = [v4 bindIndex];
          *(this + 438) = 1;
          v92 = *(this + 51);
          v93 = *(this + 52);
          v94 = *(this + 50);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 46, 4, v91, 0);
          v95 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v94 - v93 + v92);
          *(this + 438) = 1;
          LODWORD(v93) = *(this + 100);
          LODWORD(v94) = *(this + 104);
          LODWORD(v92) = *(this + 102);
          flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v95);
          v96 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 368, 8);
          flatbuffers::FlatBufferBuilder::TrackField(this + 46, 4, v96);
          LODWORD(v178) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v93 - v94 + v92);
          std::vector<unsigned int>::push_back[abi:ne200100](&v181, &v178);
        }

        else if ([v4 isMemberOfClass:objc_opt_class()])
        {
          *(this + 438) = 1;
          v97 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), *(this + 200) - *(this + 208) + *(this + 102));
          *(this + 438) = 1;
          v98 = *(this + 100);
          v99 = *(this + 104);
          v100 = *(this + 102);
          flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v97);
          v101 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 368, 9);
          flatbuffers::FlatBufferBuilder::TrackField(this + 46, 4, v101);
          LODWORD(v178) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v98 - v99 + v100);
          std::vector<unsigned int>::push_back[abi:ne200100](&v181, &v178);
        }

        else if ([v4 isMemberOfClass:objc_opt_class()])
        {
          *(this + 438) = 1;
          v102 = *(this + 100);
          v103 = *(this + 104);
          v104 = *(this + 102);
          v105 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 368, 1);
          flatbuffers::FlatBufferBuilder::TrackField(this + 46, 4, v105);
          v106 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v102 - v103 + v104);
          *(this + 438) = 1;
          v107 = *(this + 100);
          v108 = *(this + 104);
          v109 = *(this + 102);
          flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v106);
          v110 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 368, 10);
          flatbuffers::FlatBufferBuilder::TrackField(this + 46, 4, v110);
          LODWORD(v178) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v107 - v108 + v109);
          std::vector<unsigned int>::push_back[abi:ne200100](&v181, &v178);
        }

        else if ([v4 isMemberOfClass:objc_opt_class()])
        {
          BuiltinNode = Mtl4::FunctionStitching::CreateBuiltinNode(this + 368, 0);
          LODWORD(v178) = Mtl4::FunctionStitching::CreateNode(this + 368, 10, BuiltinNode);
          std::vector<unsigned int>::push_back[abi:ne200100](&v181, &v178);
        }

        goto LABEL_50;
      }

      v178 = 0;
      v179 = 0;
      v180 = 0;
      __p[0] = [v4 condition];
      v175 = __p;
      LODWORD(v169) = *(std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode}&&>,std::piecewise_construct_t const&<>>(v186, __p) + 6);
      v159 = 0u;
      v160 = 0u;
      v161 = 0u;
      v162 = 0u;
      v30 = [v4 controlDependencies];
      v31 = [v30 countByEnumeratingWithState:&v159 objects:v188 count:16];
      if (v31)
      {
        v32 = *v160;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v160 != v32)
            {
              objc_enumerationMutation(v30);
            }

            __p[0] = *(*(&v159 + 1) + 8 * i);
            v175 = __p;
            v170 = *(std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode}&&>,std::piecewise_construct_t const&<>>(v186, __p) + 6);
            std::vector<unsigned int>::push_back[abi:ne200100](&v178, &v170);
          }

          v31 = [v30 countByEnumeratingWithState:&v159 objects:v188 count:16];
        }

        while (v31);
      }

      if (v179 == v178)
      {
        v34 = &flatbuffers::data<Mtl4::FunctionStitching::NodeId,std::allocator<Mtl4::FunctionStitching::NodeId>>(std::vector<Mtl4::FunctionStitching::NodeId> const&)::t;
      }

      else
      {
        v34 = v178;
      }

      v35 = flatbuffers::FlatBufferBuilder::CreateVectorOfStructs<Mtl4::FunctionStitching::NodeId>((this + 368), v34, (v179 - v178) >> 2);
      *(this + 438) = 1;
      v36 = *(this + 100);
      v37 = *(this + 104);
      v38 = *(this + 102);
      flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v35);
      flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::FunctionStitching::NodeId>((this + 368), 4, &v169);
      v39 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v36 - v37 + v38);
      *(this + 438) = 1;
      v40 = *(this + 100);
      v41 = *(this + 104);
      v42 = *(this + 102);
      flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v39);
      v43 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 368, 11);
      flatbuffers::FlatBufferBuilder::TrackField(this + 46, 4, v43);
      LODWORD(v175) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v40 - v41 + v42);
      std::vector<unsigned int>::push_back[abi:ne200100](&v181, &v175);
      v29 = v178;
      if (v178)
      {
        goto LABEL_47;
      }

LABEL_50:
      if (++v3 == v151)
      {
        goto LABEL_71;
      }
    }

    v152 = v3;
    v178 = 0;
    v179 = 0;
    v180 = 0;
    v175 = 0;
    v176 = 0;
    v177 = 0;
    v171 = 0u;
    v172 = 0u;
    v173 = 0u;
    v174 = 0u;
    v5 = [v4 arguments];
    v6 = [v5 countByEnumeratingWithState:&v171 objects:v190 count:16];
    if (v6)
    {
      v7 = *v172;
      do
      {
        for (j = 0; j != v6; ++j)
        {
          if (*v172 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v169 = *(*(&v171 + 1) + 8 * j);
          __p[0] = &v169;
          v170 = *(std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode}&&>,std::piecewise_construct_t const&<>>(v186, &v169) + 6);
          std::vector<unsigned int>::push_back[abi:ne200100](&v178, &v170);
        }

        v6 = [v5 countByEnumeratingWithState:&v171 objects:v190 count:16];
      }

      while (v6);
    }

    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v9 = [v4 controlDependencies];
    v10 = [v9 countByEnumeratingWithState:&v165 objects:v189 count:16];
    if (v10)
    {
      v11 = *v166;
      do
      {
        for (k = 0; k != v10; ++k)
        {
          if (*v166 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v169 = *(*(&v165 + 1) + 8 * k);
          __p[0] = &v169;
          v170 = *(std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode}&&>,std::piecewise_construct_t const&<>>(v186, &v169) + 6);
          std::vector<unsigned int>::push_back[abi:ne200100](&v175, &v170);
        }

        v10 = [v9 countByEnumeratingWithState:&v165 objects:v189 count:16];
      }

      while (v10);
    }

    if (v179 == v178)
    {
      v13 = &flatbuffers::data<Mtl4::FunctionStitching::NodeId,std::allocator<Mtl4::FunctionStitching::NodeId>>(std::vector<Mtl4::FunctionStitching::NodeId> const&)::t;
    }

    else
    {
      v13 = v178;
    }

    v14 = flatbuffers::FlatBufferBuilder::CreateVectorOfStructs<Mtl4::FunctionStitching::NodeId>((this + 368), v13, (v179 - v178) >> 2);
    if (v176 == v175)
    {
      v15 = &flatbuffers::data<Mtl4::FunctionStitching::NodeId,std::allocator<Mtl4::FunctionStitching::NodeId>>(std::vector<Mtl4::FunctionStitching::NodeId> const&)::t;
    }

    else
    {
      v15 = v175;
    }

    v16 = flatbuffers::FlatBufferBuilder::CreateVectorOfStructs<Mtl4::FunctionStitching::NodeId>((this + 368), v15, (v176 - v175) >> 2);
    std::string::basic_string[abi:ne200100]<0>(__p, [objc_msgSend(v4 "name")]);
    if ((v164 & 0x80u) == 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    if ((v164 & 0x80u) == 0)
    {
      v18 = v164;
    }

    else
    {
      v18 = __p[1];
    }

    String = flatbuffers::FlatBufferBuilder::CreateString((this + 368), v17, v18);
    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    v20 = v16;
    *(this + 438) = 1;
    v21 = *(this + 100);
    v22 = *(this + 104);
    v23 = *(this + 102);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 8, v20);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v14);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 4, String);
    v24 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v21 - v22 + v23);
    *(this + 438) = 1;
    v25 = *(this + 100);
    v26 = *(this + 104);
    v27 = *(this + 102);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v24);
    v28 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 368, 2);
    flatbuffers::FlatBufferBuilder::TrackField(this + 46, 4, v28);
    LODWORD(__p[0]) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v25 - v26 + v27);
    std::vector<unsigned int>::push_back[abi:ne200100](&v181, __p);
    if (v175)
    {
      v176 = v175;
      operator delete(v175);
    }

    v29 = v178;
    v3 = v152;
    if (!v178)
    {
      goto LABEL_50;
    }

LABEL_47:
    v179 = v29;
    operator delete(v29);
    goto LABEL_50;
  }

LABEL_71:
  v112 = a2;
  v113 = [(NSString *)[(MTLFunctionStitchingGraph *)a2 functionName] UTF8String];
  v114 = strlen(v113);
  v115 = flatbuffers::FlatBufferBuilder::CreateString((this + 368), v113, v114);
  v178 = 0;
  v179 = 0;
  v180 = 0;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v116 = [(MTLFunctionStitchingGraph *)a2 attributes];
  v117 = [(NSArray *)v116 countByEnumeratingWithState:&v155 objects:v187 count:16];
  if (!v117)
  {
    goto LABEL_83;
  }

  v154 = 0;
  v118 = *v156;
  do
  {
    for (m = 0; m != v117; ++m)
    {
      if (*v156 != v118)
      {
        objc_enumerationMutation(v116);
      }

      v120 = *(*(&v155 + 1) + 8 * m);
      if ([v120 isMemberOfClass:objc_opt_class()])
      {
        *(this + 438) = 1;
        v121 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), *(this + 200) - *(this + 208) + *(this + 204));
        *(this + 438) = 1;
        v122 = *(this + 100);
        v123 = *(this + 104);
        v124 = *(this + 102);
        flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v121);
        v125 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 368, 1);
        flatbuffers::FlatBufferBuilder::TrackField(this + 46, 4, v125);
        LODWORD(v175) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v122 - v123 + v124);
        std::vector<unsigned int>::push_back[abi:ne200100](&v178, &v175);
      }

      else if ([v120 isMemberOfClass:objc_opt_class()])
      {
        *(this + 438) = 1;
        v126 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), *(this + 200) - *(this + 208) + *(this + 204));
        *(this + 438) = 1;
        v127 = *(this + 100);
        v128 = *(this + 104);
        v129 = *(this + 102);
        flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v126);
        v130 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 368, 2);
        flatbuffers::FlatBufferBuilder::TrackField(this + 46, 4, v130);
        LODWORD(v175) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v127 - v128 + v129);
        std::vector<unsigned int>::push_back[abi:ne200100](&v178, &v175);
        v154 = 1;
      }
    }

    v117 = [(NSArray *)v116 countByEnumeratingWithState:&v155 objects:v187 count:16];
  }

  while (v117);
  v112 = a2;
  if ((v154 & 1) == 0)
  {
LABEL_83:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(this + 438) = 1;
      v131 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), *(this + 200) - *(this + 208) + *(this + 102));
      *(this + 438) = 1;
      v132 = *(this + 100);
      v133 = *(this + 104);
      v134 = *(this + 102);
      flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v131);
      v135 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 368, 2);
      flatbuffers::FlatBufferBuilder::TrackField(this + 46, 4, v135);
      LODWORD(v175) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v132 - v133 + v134);
      std::vector<unsigned int>::push_back[abi:ne200100](&v178, &v175);
      v112 = a2;
    }
  }

  if (v179 == v178)
  {
    v136 = &flatbuffers::data<flatbuffers::Offset<Mtl4::FunctionStitching::Attribute>,std::allocator<flatbuffers::Offset<Mtl4::FunctionStitching::Attribute>>>(std::vector<flatbuffers::Offset<Mtl4::FunctionStitching::Attribute>> const&)::t;
  }

  else
  {
    v136 = v178;
  }

  v137 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 368), v136, (v179 - v178) >> 2);
  if (v182 == v181)
  {
    v138 = &flatbuffers::data<flatbuffers::Offset<Mtl4::FunctionStitching::Node>,std::allocator<flatbuffers::Offset<Mtl4::FunctionStitching::Node>>>(std::vector<flatbuffers::Offset<Mtl4::FunctionStitching::Node>> const&)::t;
  }

  else
  {
    v138 = v181;
  }

  v139 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 368), v138, (v182 - v181) >> 2);
  if ([(MTLFunctionStitchingGraph *)v112 outputNode])
  {
    __p[0] = [(MTLFunctionStitchingGraph *)v112 outputNode];
    v175 = __p;
    v140 = *(std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode}&&>,std::piecewise_construct_t const&<>>(v186, __p) + 6);
  }

  else
  {
    v140 = 0;
  }

  LODWORD(v169) = v140;
  v141 = [(MTLFunctionStitchingGraph *)v112 outputNode];
  v142 = v137;
  *(this + 438) = 1;
  v143 = *(this + 100);
  v144 = *(this + 104);
  v145 = *(this + 102);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 10, v142);
  if (v141)
  {
    v146 = &v169;
  }

  else
  {
    v146 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::FunctionStitching::NodeId>((this + 368), 8, v146);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v139);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 4, v115);
  v147 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v143 - v144 + v145);
  if (v178)
  {
    v179 = v178;
    operator delete(v178);
  }

  if (v181)
  {
    v182 = v181;
    operator delete(v181);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v186);
  if (v184)
  {
    v185 = v184;
    operator delete(v184);
  }

  v148 = *MEMORY[0x1E69E9840];
  return v147;
}

void sub_185C0EEB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, uint64_t a62, char a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::pair<std::vector<objc_object  {objcproto24MTLFunctionStitchingNode}*>,std::unordered_map<objc_object  {objcproto24MTLFunctionStitchingNode},unsigned int,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,objc_object  {objcproto24MTLFunctionStitchingNode}*<std::pair<objc_object  {objcproto24MTLFunctionStitchingNode} const,unsigned int>>>>::~pair(&a63);
  _Unwind_Resume(a1);
}

uint64_t Mtl4::FunctionStitching::CreateNode(uint64_t a1, int a2, int a3)
{
  *(a1 + 70) = 1;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32) - *(a1 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, a3);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 4, a2, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v6 + v5);
}

uint64_t Mtl4::FunctionStitching::CreateBuiltinNode(uint64_t a1, int a2)
{
  *(a1 + 70) = 1;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32) - *(a1 + 48);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 4, a2, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v4 + v3);
}

uint64_t MTL4MetalScriptBuilderImpl::createVertexDescriptor(MTL4MetalScriptBuilderImpl *this, MTLVertexDescriptor *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  for (i = 0; i != 248; i += 8)
  {
    v7 = *(a2[1].super.isa + i + 8);
    if (!v7)
    {
      ++v5;
LABEL_13:
      v10 = v4;
      goto LABEL_14;
    }

    if (v7[1])
    {
      v8 = 0;
    }

    else
    {
      v8 = v7[3] == 1;
    }

    v9 = v8 && v7[2] == 1;
    v10 = ++v5;
    if (v9)
    {
      goto LABEL_13;
    }

LABEL_14:
    v4 = v10;
  }

  v11 = 0;
  v12 = 0;
  for (j = 0; j != 248; j += 8)
  {
    v14 = *(a2[2].super.isa + j + 8);
    if (v14)
    {
      v15 = ++v12;
      if (v14[2] | v14[1] | v14[3])
      {
        goto LABEL_21;
      }
    }

    else
    {
      ++v12;
    }

    v15 = v11;
LABEL_21:
    v11 = v15;
  }

  if (!(v10 | v15))
  {
    return 0;
  }

  if (!v10)
  {
    v38 = 0;
    if (v15)
    {
      goto LABEL_47;
    }

    goto LABEL_70;
  }

  __src = 0;
  v62 = 0;
  v63 = 0;
  std::vector<flatbuffers::Offset<Mtl4::VertexBufferLayoutDescriptor>>::reserve(&__src, v10);
  for (k = 0; k != v10; ++k)
  {
    v18 = *(a2[1].super.isa + k + 1);
    if (v18)
    {
      v19 = *(v18 + 24);
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
    }

    else
    {
      v20 = 0;
      v19 = 1;
      v21 = 1;
    }

    *(this + 438) = 1;
    v22 = *(this + 100);
    v23 = *(this + 104);
    v24 = *(this + 102);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 4, v21, 1);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 46, 6, v19, 1);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 46, 8, v20, 0);
    v25 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v22 - v23 + v24);
    v26 = v62;
    if (v62 >= v63)
    {
      v28 = __src;
      v29 = v62 - __src;
      v30 = (v62 - __src) >> 2;
      v31 = v30 + 1;
      if ((v30 + 1) >> 62)
      {
        std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
      }

      v32 = v63 - __src;
      if ((v63 - __src) >> 1 > v31)
      {
        v31 = v32 >> 1;
      }

      v33 = v32 >= 0x7FFFFFFFFFFFFFFCLL;
      v34 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v33)
      {
        v34 = v31;
      }

      if (v34)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v34);
      }

      *(4 * v30) = v25;
      v27 = (4 * v30 + 4);
      memcpy(0, v28, v29);
      v35 = __src;
      __src = 0;
      v62 = v27;
      v63 = 0;
      if (v35)
      {
        operator delete(v35);
      }
    }

    else
    {
      *v62 = v25;
      v27 = v26 + 4;
    }

    v62 = v27;
  }

  if (v27 == __src)
  {
    v36 = &flatbuffers::data<flatbuffers::Offset<Mtl4::VertexBufferLayoutDescriptor>,std::allocator<flatbuffers::Offset<Mtl4::VertexBufferLayoutDescriptor>>>(std::vector<flatbuffers::Offset<Mtl4::VertexBufferLayoutDescriptor>> const&)::t;
  }

  else
  {
    v36 = __src;
  }

  v37 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 368), v36, (v27 - __src) >> 2);
  if (__src)
  {
    v62 = __src;
    operator delete(__src);
  }

  v38 = v37;
  if (!v15)
  {
LABEL_70:
    v57 = 0;
    goto LABEL_71;
  }

LABEL_47:
  v60 = v38;
  __src = 0;
  v62 = 0;
  v63 = 0;
  std::vector<flatbuffers::Offset<Mtl4::VertexBufferLayoutDescriptor>>::reserve(&__src, v15);
  for (m = 0; m != v15; ++m)
  {
    v40 = *(a2[2].super.isa + m + 1);
    if (v40)
    {
      v41 = *(v40 + 16);
      v42 = *(v40 + 24);
      LOBYTE(v40) = *(v40 + 8);
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }

    *(this + 438) = 1;
    v43 = *(this + 100);
    v44 = *(this + 104);
    v45 = *(this + 102);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 4, v40, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 46, 6, v41, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 46, 8, v42, 0);
    v46 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v43 - v44 + v45);
    v47 = v62;
    if (v62 >= v63)
    {
      v49 = __src;
      v50 = v62 - __src;
      v51 = (v62 - __src) >> 2;
      v52 = v51 + 1;
      if ((v51 + 1) >> 62)
      {
        std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
      }

      v53 = v63 - __src;
      if ((v63 - __src) >> 1 > v52)
      {
        v52 = v53 >> 1;
      }

      v33 = v53 >= 0x7FFFFFFFFFFFFFFCLL;
      v54 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v33)
      {
        v54 = v52;
      }

      if (v54)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v54);
      }

      *(4 * v51) = v46;
      v48 = (4 * v51 + 4);
      memcpy(0, v49, v50);
      v55 = __src;
      __src = 0;
      v62 = v48;
      v63 = 0;
      if (v55)
      {
        operator delete(v55);
      }
    }

    else
    {
      *v62 = v46;
      v48 = v47 + 4;
    }

    v62 = v48;
  }

  if (v48 == __src)
  {
    v56 = &flatbuffers::data<flatbuffers::Offset<Mtl4::VertexAttributeDescriptor>,std::allocator<flatbuffers::Offset<Mtl4::VertexAttributeDescriptor>>>(std::vector<flatbuffers::Offset<Mtl4::VertexAttributeDescriptor>> const&)::t;
  }

  else
  {
    v56 = __src;
  }

  v57 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 368), v56, (v48 - __src) >> 2);
  if (__src)
  {
    v62 = __src;
    operator delete(__src);
  }

  v38 = v60;
LABEL_71:
  *(this + 438) = 1;
  v58 = *(this + 102);
  v59 = *(this + 100) - *(this + 104);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v38);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 4, v57);
  return flatbuffers::FlatBufferBuilder::EndTable((this + 368), v59 + v58);
}

void sub_185C0F668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<flatbuffers::Offset<Mtl4::VertexBufferLayoutDescriptor>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(result, a2);
    }

    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void MTL4MetalScriptBuilderImpl::HashToString(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::reserve(a2, 0x40uLL);
  for (i = 0; i != 32; ++i)
  {
    v5 = *(a1 + i);
    std::string::push_back(a2, MTL4MetalScriptBuilderImpl::HashToString(MTLUINT256_t)::hexChars[v5 >> 4]);
    std::string::push_back(a2, MTL4MetalScriptBuilderImpl::HashToString(MTLUINT256_t)::hexChars[v5 & 0xF]);
  }
}

void sub_185C0F7CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MTL4MetalScriptBuilderImpl::addPipelineWithDescriptor(os_unfair_lock_s *this, MTL4ComputePipelineDescriptor *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this);
  memset(v6, 0, sizeof(v6));
  generatePipelineHashWithDescriptor(&a2->super, v6);
  std::__hash_table<MTLUINT256_t,MTL4DescriptorHashAndEqual,MTL4DescriptorHashAndEqual,std::allocator<MTLUINT256_t>>::__emplace_unique_key_args<MTLUINT256_t,MTLUINT256_t const&>(&this[2]._os_unfair_lock_opaque, v6);
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      MTL4MetalScriptBuilderImpl::addComputePipelineWithDescriptor(this, a2);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        MTL4MetalScriptBuilderImpl::addRenderPipelineWithDescriptor(this, a2);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          MTL4MetalScriptBuilderImpl::addTileRenderPipelineWithDescriptor(this, a2);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            MTL4MetalScriptBuilderImpl::addMeshPipelineWithDescriptor(this, a2);
          }
        }
      }
    }
  }

  os_unfair_lock_unlock(this);
  v5 = *MEMORY[0x1E69E9840];
}

void MTL4MetalScriptBuilderImpl::addComputePipelineWithDescriptor(const void **this, MTL4ComputePipelineDescriptor *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  MTL4MetalScriptBuilderImpl::hashAndAddFunctionWithDescriptor(this, [(MTL4ComputePipelineDescriptor *)a2 computeFunctionDescriptor], v17);
  if (v18 == 1)
  {
    *v16 = v17[0];
    *&v16[16] = v17[1];
    MTL4MetalScriptBuilderImpl::HashToString(v16, &v14);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &v14;
    }

    else
    {
      v4 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    MTL4MetalScriptBuilderImpl::makeFunctionName(v4, size, &__p);
    v6 = MTLMetalScriptSerializer::addString((this + 46), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    PipelineOptions = MTL4MetalScriptBuilderImpl::createPipelineOptions(this, [(MTL4PipelineDescriptor *)a2 options]);
    StaticLinkingDescriptor = MTL4MetalScriptBuilderImpl::createStaticLinkingDescriptor(this, [(MTL4ComputePipelineDescriptor *)a2 staticLinkingDescriptor]);
    if (a2)
    {
      [(MTL4ComputePipelineDescriptor *)a2 requiredThreadsPerThreadgroup];
    }

    else
    {
      memset(v16, 0, 24);
    }

    v9 = MTL4MetalScriptBuilderImpl::addSize(this, v16);
    *(this + 438) = 1;
    v10 = *(this + 100);
    v11 = *(this + 104);
    v12 = *(this + 102);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 8, [(MTL4ComputePipelineDescriptor *)a2 threadGroupSizeIsMultipleOfThreadExecutionWidth], 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 46, 10, [(MTL4ComputePipelineDescriptor *)a2 maxTotalThreadsPerThreadgroup], 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 16, [(MTL4ComputePipelineDescriptor *)a2 supportBinaryLinking], 0);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 6, v6);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 14, StaticLinkingDescriptor);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 18, [(MTL4ComputePipelineDescriptor *)a2 supportIndirectCommandBuffers], 0);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 22, PipelineOptions);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 12, v9);
    *v16 = flatbuffers::FlatBufferBuilder::EndTable((this + 46), v10 - v11 + v12);
    std::vector<unsigned int>::push_back[abi:ne200100](this + 31, v16);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_185C0FBA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void MTL4MetalScriptBuilderImpl::addRenderPipelineWithDescriptor(const void **this, MTL4RenderPipelineDescriptor *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v23 = 0;
  MTL4MetalScriptBuilderImpl::hashAndAddFunctionWithDescriptor(this, [(MTL4RenderPipelineDescriptor *)a2 vertexFunctionDescriptor], v28);
  MTL4MetalScriptBuilderImpl::hashAndAddFunctionWithDescriptor(this, [(MTL4RenderPipelineDescriptor *)a2 fragmentFunctionDescriptor], v26);
  if (v29 == 1)
  {
    v24 = v28[0];
    v25 = v28[1];
    MTL4MetalScriptBuilderImpl::HashToString(&v24, &v21);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &v21;
    }

    else
    {
      v4 = v21.__r_.__value_.__r.__words[0];
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v21.__r_.__value_.__l.__size_;
    }

    MTL4MetalScriptBuilderImpl::makeFunctionName(v4, size, &__p);
    v6 = MTLMetalScriptSerializer::addString((this + 46), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v27 == 1)
  {
    v24 = v26[0];
    v25 = v26[1];
    MTL4MetalScriptBuilderImpl::HashToString(&v24, &v21);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v21;
    }

    else
    {
      v8 = v21.__r_.__value_.__r.__words[0];
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = v21.__r_.__value_.__l.__size_;
    }

    MTL4MetalScriptBuilderImpl::makeFunctionName(v8, v9, &__p);
    v10 = MTLMetalScriptSerializer::addString((this + 46), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  StaticLinkingDescriptor = MTL4MetalScriptBuilderImpl::createStaticLinkingDescriptor(this, [(MTL4RenderPipelineDescriptor *)a2 vertexStaticLinkingDescriptor]);
  v13 = MTL4MetalScriptBuilderImpl::createStaticLinkingDescriptor(this, [(MTL4RenderPipelineDescriptor *)a2 fragmentStaticLinkingDescriptor]);
  VertexDescriptor = MTL4MetalScriptBuilderImpl::createVertexDescriptor(this, [(MTL4RenderPipelineDescriptor *)a2 vertexDescriptor]);
  v15 = MTL4MetalScriptBuilderImpl::createColorAttachments(this, [(MTL4RenderPipelineDescriptor *)a2 colorAttachments], &v23);
  PipelineOptions = MTL4MetalScriptBuilderImpl::createPipelineOptions(this, [(MTL4PipelineDescriptor *)a2 options]);
  *(this + 438) = 1;
  v17 = *(this + 104);
  v19 = *(this + 100);
  v20 = *(this + 102);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 4, 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 6, v7);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 8, v11);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 10, StaticLinkingDescriptor);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 12, v13);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 44, [(MTL4RenderPipelineDescriptor *)a2 supportIndirectCommandBuffers], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 42, [(MTL4RenderPipelineDescriptor *)a2 colorAttachmentMappingState], 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 18, VertexDescriptor);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 40, v15);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 46, 30, [(MTL4RenderPipelineDescriptor *)a2 rasterSampleCount], 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 46, 32, [(MTL4RenderPipelineDescriptor *)a2 colorSampleCount], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 26, [(MTL4RenderPipelineDescriptor *)a2 alphaToCoverageState], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 28, [(MTL4RenderPipelineDescriptor *)a2 alphaToOneState], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 24, [(MTL4RenderPipelineDescriptor *)a2 isRasterizationEnabled], 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 46, 22, [(MTL4RenderPipelineDescriptor *)a2 maxVertexAmplificationCount], 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 20, [(MTL4RenderPipelineDescriptor *)a2 inputPrimitiveTopology], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 14, [(MTL4RenderPipelineDescriptor *)a2 supportVertexBinaryLinking], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 16, [(MTL4RenderPipelineDescriptor *)a2 supportFragmentBinaryLinking], 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 66, PipelineOptions);
  LODWORD(v24) = flatbuffers::FlatBufferBuilder::EndTable((this + 46), v19 - v17 + v20);
  std::vector<unsigned int>::push_back[abi:ne200100](this + 34, &v24);
  v18 = *MEMORY[0x1E69E9840];
}

void sub_185C10018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void MTL4MetalScriptBuilderImpl::addTileRenderPipelineWithDescriptor(const void **this, MTL4TileRenderPipelineDescriptor *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  MTL4MetalScriptBuilderImpl::hashAndAddFunctionWithDescriptor(this, [(MTL4TileRenderPipelineDescriptor *)a2 tileFunctionDescriptor], v18);
  if (v19 == 1)
  {
    *v17 = v18[0];
    *&v17[16] = v18[1];
    MTL4MetalScriptBuilderImpl::HashToString(v17, &v15);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &v15;
    }

    else
    {
      v4 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    MTL4MetalScriptBuilderImpl::makeFunctionName(v4, size, &__p);
    v6 = MTLMetalScriptSerializer::addString((this + 46), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    StaticLinkingDescriptor = MTL4MetalScriptBuilderImpl::createStaticLinkingDescriptor(this, [(MTL4TileRenderPipelineDescriptor *)a2 staticLinkingDescriptor]);
    ColorAttachments = MTL4MetalScriptBuilderImpl::createColorAttachments(this, [(MTL4TileRenderPipelineDescriptor *)a2 colorAttachments]);
    PipelineOptions = MTL4MetalScriptBuilderImpl::createPipelineOptions(this, [(MTL4PipelineDescriptor *)a2 options]);
    if (a2)
    {
      [(MTL4TileRenderPipelineDescriptor *)a2 requiredThreadsPerThreadgroup];
    }

    else
    {
      memset(v17, 0, 24);
    }

    v10 = MTL4MetalScriptBuilderImpl::addSize(this, v17);
    *(this + 438) = 1;
    v11 = *(this + 100);
    v12 = *(this + 104);
    v13 = *(this + 102);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 4, 0);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 6, v6);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 14, StaticLinkingDescriptor);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 22, ColorAttachments);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 46, 18, [(MTL4TileRenderPipelineDescriptor *)a2 rasterSampleCount], 1);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 8, [(MTL4TileRenderPipelineDescriptor *)a2 threadgroupSizeMatchesTileSize], 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 46, 10, [(MTL4TileRenderPipelineDescriptor *)a2 maxTotalThreadsPerThreadgroup], 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 16, [(MTL4TileRenderPipelineDescriptor *)a2 supportBinaryLinking], 0);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 24, PipelineOptions);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 12, v10);
    *v17 = flatbuffers::FlatBufferBuilder::EndTable((this + 46), v11 - v12 + v13);
    std::vector<unsigned int>::push_back[abi:ne200100](this + 37, v17);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_185C102DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void MTL4MetalScriptBuilderImpl::addMeshPipelineWithDescriptor(const void **this, MTL4MeshRenderPipelineDescriptor *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v29 = 0;
  MTL4MetalScriptBuilderImpl::hashAndAddFunctionWithDescriptor(this, [(MTL4MeshRenderPipelineDescriptor *)a2 meshFunctionDescriptor], v35);
  MTL4MetalScriptBuilderImpl::hashAndAddFunctionWithDescriptor(this, [(MTL4MeshRenderPipelineDescriptor *)a2 objectFunctionDescriptor], v33);
  MTL4MetalScriptBuilderImpl::hashAndAddFunctionWithDescriptor(this, [(MTL4MeshRenderPipelineDescriptor *)a2 fragmentFunctionDescriptor], v31);
  if (v36 == 1)
  {
    *v30 = v35[0];
    *&v30[16] = v35[1];
    MTL4MetalScriptBuilderImpl::HashToString(v30, &v27);
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &v27;
    }

    else
    {
      v4 = v27.__r_.__value_.__r.__words[0];
    }

    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v27.__r_.__value_.__l.__size_;
    }

    MTL4MetalScriptBuilderImpl::makeFunctionName(v4, size, &__p);
    v6 = MTLMetalScriptSerializer::addString((this + 46), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v34 == 1)
  {
    *v30 = v33[0];
    *&v30[16] = v33[1];
    MTL4MetalScriptBuilderImpl::HashToString(v30, &v27);
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v27;
    }

    else
    {
      v8 = v27.__r_.__value_.__r.__words[0];
    }

    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = v27.__r_.__value_.__l.__size_;
    }

    MTL4MetalScriptBuilderImpl::makeFunctionName(v8, v9, &__p);
    v10 = MTLMetalScriptSerializer::addString((this + 46), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v32 == 1)
  {
    *v30 = v31[0];
    *&v30[16] = v31[1];
    MTL4MetalScriptBuilderImpl::HashToString(v30, &v27);
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v27;
    }

    else
    {
      v12 = v27.__r_.__value_.__r.__words[0];
    }

    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v13 = v27.__r_.__value_.__l.__size_;
    }

    MTL4MetalScriptBuilderImpl::makeFunctionName(v12, v13, &__p);
    v14 = MTLMetalScriptSerializer::addString((this + 46), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  StaticLinkingDescriptor = MTL4MetalScriptBuilderImpl::createStaticLinkingDescriptor(this, [(MTL4MeshRenderPipelineDescriptor *)a2 meshStaticLinkingDescriptor]);
  v17 = MTL4MetalScriptBuilderImpl::createStaticLinkingDescriptor(this, [(MTL4MeshRenderPipelineDescriptor *)a2 objectStaticLinkingDescriptor]);
  v18 = MTL4MetalScriptBuilderImpl::createStaticLinkingDescriptor(this, [(MTL4MeshRenderPipelineDescriptor *)a2 fragmentStaticLinkingDescriptor]);
  v26 = MTL4MetalScriptBuilderImpl::createColorAttachments(this, [(MTL4MeshRenderPipelineDescriptor *)a2 colorAttachments], &v29);
  PipelineOptions = MTL4MetalScriptBuilderImpl::createPipelineOptions(this, [(MTL4PipelineDescriptor *)a2 options]);
  if ([(MTL4MeshRenderPipelineDescriptor *)a2 objectFunctionDescriptor])
  {
    if (a2)
    {
      [(MTL4MeshRenderPipelineDescriptor *)a2 requiredThreadsPerObjectThreadgroup];
    }

    else
    {
      memset(v30, 0, 24);
    }

    v19 = MTL4MetalScriptBuilderImpl::addSize(this, v30);
    if (a2)
    {
      goto LABEL_47;
    }

LABEL_44:
    memset(v30, 0, 24);
    goto LABEL_48;
  }

  v19 = 0;
  if (!a2)
  {
    goto LABEL_44;
  }

LABEL_47:
  [(MTL4MeshRenderPipelineDescriptor *)a2 requiredThreadsPerMeshThreadgroup];
LABEL_48:
  v20 = MTL4MetalScriptBuilderImpl::addSize(this, v30);
  *(this + 438) = 1;
  v22 = this[50];
  v23 = this[52];
  v24 = this[51];
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 4, 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 8, v7);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 6, v11);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 10, v15);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 30, StaticLinkingDescriptor);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 28, v17);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 32, v18);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 46, 16, [(MTL4MeshRenderPipelineDescriptor *)a2 maxTotalThreadsPerObjectThreadgroup], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 46, 18, [(MTL4MeshRenderPipelineDescriptor *)a2 maxTotalThreadsPerMeshThreadgroup], 0);
  if ([(MTL4MeshRenderPipelineDescriptor *)a2 objectFunctionDescriptor])
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 20, v19);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 22, v20);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 12, [(MTL4MeshRenderPipelineDescriptor *)a2 objectThreadgroupSizeIsMultipleOfThreadExecutionWidth], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 14, [(MTL4MeshRenderPipelineDescriptor *)a2 meshThreadgroupSizeIsMultipleOfThreadExecutionWidth], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 46, 24, [(MTL4MeshRenderPipelineDescriptor *)a2 payloadMemoryLength], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 46, 26, [(MTL4MeshRenderPipelineDescriptor *)a2 maxTotalThreadgroupsPerMeshGrid], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 46, 48, [(MTL4MeshRenderPipelineDescriptor *)a2 rasterSampleCount], 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 44, [(MTL4MeshRenderPipelineDescriptor *)a2 alphaToCoverageState], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 46, [(MTL4MeshRenderPipelineDescriptor *)a2 alphaToOneState], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 42, [(MTL4MeshRenderPipelineDescriptor *)a2 isRasterizationEnabled], 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 46, 40, [(MTL4MeshRenderPipelineDescriptor *)a2 maxVertexAmplificationCount], 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 60, [(MTL4MeshRenderPipelineDescriptor *)a2 colorAttachmentMappingState], 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 58, v26);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 36, [(MTL4MeshRenderPipelineDescriptor *)a2 supportMeshBinaryLinking], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 34, [(MTL4MeshRenderPipelineDescriptor *)a2 supportObjectBinaryLinking], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 38, [(MTL4MeshRenderPipelineDescriptor *)a2 supportFragmentBinaryLinking], 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 82, PipelineOptions);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 62, [(MTL4MeshRenderPipelineDescriptor *)a2 supportIndirectCommandBuffers], 0);
  *v30 = flatbuffers::FlatBufferBuilder::EndTable((this + 46), v22 - v23 + v24);
  std::vector<unsigned int>::push_back[abi:ne200100](this + 40, v30);
  v21 = *MEMORY[0x1E69E9840];
}

void sub_185C10928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void MTL4MetalScriptBuilderImpl::addBinaryFunctionWithDescriptor(MTL4MetalScriptBuilderImpl *this, MTL4BinaryFunctionDescriptor *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this);
  MTL4MetalScriptBuilderImpl::hashAndAddFunctionWithDescriptor(this, [(MTL4BinaryFunctionDescriptor *)a2 functionDescriptor], data);
  if (v27)
  {
    *md = 0u;
    v25 = 0u;
    CC_SHA256_Init(&c);
    CC_SHA256_Update(&c, data, 0x20u);
    v4 = [(MTL4BinaryFunctionDescriptor *)a2 pipelineOptions];
    v5 = v4;
    if (v4)
    {
      __p[0] = [(MTL4PipelineOptions *)v4 shaderReflection];
      CC_SHA256_Update(&c, __p, 8u);
      __p[0] = [(MTL4PipelineOptions *)v5 shaderValidation];
      CC_SHA256_Update(&c, __p, 8u);
      __p[0] = [(MTL4PipelineOptions *)v5 maxNumRegisters];
      CC_SHA256_Update(&c, __p, 8u);
      LOBYTE(__p[0]) = [(MTL4PipelineOptions *)v5 enablePerformanceStatistics];
      CC_SHA256_Update(&c, __p, 1u);
      LOBYTE(__p[0]) = [(MTL4PipelineOptions *)v5 enablePostMeshDump];
      CC_SHA256_Update(&c, __p, 1u);
      LOBYTE(__p[0]) = [(MTL4PipelineOptions *)v5 enablePostVertexDump];
      CC_SHA256_Update(&c, __p, 1u);
      LOBYTE(__p[0]) = [(MTL4PipelineOptions *)v5 enableResourceUsageInstrumentation];
      CC_SHA256_Update(&c, __p, 1u);
      LOBYTE(__p[0]) = [(MTL4PipelineOptions *)v5 enableAccelerationStructureViewerInstrumentation];
      CC_SHA256_Update(&c, __p, 1u);
      __p[0] = [(MTL4PipelineOptions *)v5 postVertexDumpBufferIndex];
      CC_SHA256_Update(&c, __p, 8u);
      v6 = [(MTL4PipelineOptions *)v5 shaderValidationConfig];
      LOBYTE(__p[0]) = [(MTLShaderValidationConfiguration *)v6 enableStackOverflow];
      CC_SHA256_Update(&c, __p, 1u);
      LOBYTE(__p[0]) = [(MTLShaderValidationConfiguration *)v6 enableTextureChecks];
      CC_SHA256_Update(&c, __p, 1u);
      LOBYTE(__p[0]) = [(MTLShaderValidationConfiguration *)v6 enableBoundsChecking];
      CC_SHA256_Update(&c, __p, 1u);
      LOBYTE(__p[0]) = [(MTLShaderValidationConfiguration *)v6 enableResourceUsageValidation];
      CC_SHA256_Update(&c, __p, 1u);
      LOBYTE(__p[0]) = [(MTLShaderValidationConfiguration *)v6 enableThreadgroupMemoryChecks];
      CC_SHA256_Update(&c, __p, 1u);
    }

    if ([(MTL4BinaryFunctionDescriptor *)a2 name])
    {
      v7 = [(NSString *)[(MTL4BinaryFunctionDescriptor *)a2 name] cStringUsingEncoding:4];
      v8 = strlen([(NSString *)[(MTL4BinaryFunctionDescriptor *)a2 name] cStringUsingEncoding:4]);
      CC_SHA256_Update(&c, v7, v8);
    }

    CC_SHA256_Final(md, &c);
    std::__hash_table<MTLUINT256_t,MTL4DescriptorHashAndEqual,MTL4DescriptorHashAndEqual,std::allocator<MTLUINT256_t>>::__emplace_unique_key_args<MTLUINT256_t,MTLUINT256_t const&>(this + 6, md);
    if (v9)
    {
      *__p = data[0];
      v23 = data[1];
      MTL4MetalScriptBuilderImpl::HashToString(__p, &v20);
      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v20;
      }

      else
      {
        v10 = v20.__r_.__value_.__r.__words[0];
      }

      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v20.__r_.__value_.__l.__size_;
      }

      MTL4MetalScriptBuilderImpl::makeFunctionName(v10, size, __p);
      v12 = MTLMetalScriptSerializer::addString((this + 368), __p);
      if (SBYTE7(v23) < 0)
      {
        operator delete(__p[0]);
      }

      if ([(MTL4BinaryFunctionDescriptor *)a2 name])
      {
        v13 = [(MTL4BinaryFunctionDescriptor *)a2 name];
        MTLMetalScriptSerializer::addString((this + 368), v13, v14);
      }

      PipelineOptions = MTL4MetalScriptBuilderImpl::createPipelineOptions(this, [(MTL4BinaryFunctionDescriptor *)a2 pipelineOptions]);
      *(this + 438) = 1;
      v16 = *(this + 100);
      v17 = *(this + 104);
      v18 = *(this + 102);
      flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v12);
      flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 8, PipelineOptions);
      LODWORD(__p[0]) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v16 - v17 + v18);
      std::vector<unsigned int>::push_back[abi:ne200100](this + 43, __p);
      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }
    }
  }

  os_unfair_lock_unlock(this);
  v19 = *MEMORY[0x1E69E9840];
}

void sub_185C10D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  os_unfair_lock_unlock(v33);
  _Unwind_Resume(a1);
}

void MTL4MetalScriptBuilderImpl::hashAndAddFunctionWithDescriptor(MTL4MetalScriptBuilderImpl *this@<X0>, MTL4FunctionDescriptor *a2@<X1>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    MTL4MetalScriptBuilderImpl::addFunctionWithDescriptor(this, a2, v10);
    if (v13 == 1)
    {
      v6 = v10[0];
      v7 = v10[1];
      v4 = SHIBYTE(v11.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v11;
      }

      v9 = v12;
      if (v12)
      {
      }

      *a3 = v6;
      *(a3 + 16) = v7;
      *(a3 + 32) = 1;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((v4 & 0x80000000) == 0)
        {
          goto LABEL_11;
        }
      }

      else if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      operator delete(v11.__r_.__value_.__l.__data_);
      goto LABEL_11;
    }
  }

  *a3 = 0;
  *(a3 + 32) = 0;
LABEL_11:
  v5 = *MEMORY[0x1E69E9840];
}

void MTL4MetalScriptBuilderImpl::makeFunctionName(const void *a1@<X1>, size_t a2@<X2>, std::string *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v11, "fnd:");
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 >= 0x17)
  {
    operator new();
  }

  v10 = a2;
  if (a2)
  {
    memmove(__p, a1, a2);
  }

  *(__p + a2) = 0;
  if ((v10 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v11, v6, v7);
  *a3 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_185C10FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTL4MetalScriptBuilderImpl::createPipelineOptions(MTL4MetalScriptBuilderImpl *this, MTL4PipelineOptions *a2)
{
  if (!a2)
  {
    return 0;
  }

  ShaderValidationConfiguration = MTL4MetalScriptBuilderImpl::createShaderValidationConfiguration(this, [(MTL4PipelineOptions *)a2 shaderValidationConfig]);
  *(this + 438) = 1;
  v5 = *(this + 102);
  v6 = *(this + 100) - *(this + 104);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 46, 6, [(MTL4PipelineOptions *)a2 shaderReflection], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 4, [(MTL4PipelineOptions *)a2 shaderValidation], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 46, 20, [(MTL4PipelineOptions *)a2 maxNumRegisters], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 10, [(MTL4PipelineOptions *)a2 enablePerformanceStatistics], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 14, [(MTL4PipelineOptions *)a2 enablePostMeshDump], 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 8, ShaderValidationConfiguration);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 12, [(MTL4PipelineOptions *)a2 enablePostVertexDump], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 18, [(MTL4PipelineOptions *)a2 enableResourceUsageInstrumentation], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 16, [(MTL4PipelineOptions *)a2 enableAccelerationStructureViewerInstrumentation], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 46, 22, [(MTL4PipelineOptions *)a2 postVertexDumpBufferIndex], 0);

  return flatbuffers::FlatBufferBuilder::EndTable((this + 368), v6 + v5);
}

uint64_t MTL4MetalScriptBuilderImpl::createShaderValidationConfiguration(MTL4MetalScriptBuilderImpl *this, MTLShaderValidationConfiguration *a2)
{
  if (!a2)
  {
    return 0;
  }

  *(this + 438) = 1;
  v4 = *(this + 102);
  v5 = *(this + 100) - *(this + 104);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 12, [(MTLShaderValidationConfiguration *)a2 enableStackOverflow], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 8, [(MTLShaderValidationConfiguration *)a2 enableTextureChecks], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 4, [(MTLShaderValidationConfiguration *)a2 enableBoundsChecking], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 10, [(MTLShaderValidationConfiguration *)a2 enableResourceUsageValidation], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 46, 6, [(MTLShaderValidationConfiguration *)a2 enableThreadgroupMemoryChecks], 0);

  return flatbuffers::FlatBufferBuilder::EndTable((this + 368), v5 + v4);
}

void MTL4MetalScriptBuilderImpl::addFunctionFromLibrary(uint64_t a1, __int128 *a2, flatbuffers::FlatBufferBuilder *a3, __int128 *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a2[1];
  v20 = *a2;
  v21 = v7;
  MTL4MetalScriptBuilderImpl::HashToString(&v20, &v19);
  if (!std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>((a1 + 128), &v19.__r_.__value_.__l.__data_))
  {
    v8 = MTLMetalScriptSerializer::addString((a1 + 368), &v19);
    v9 = a4[1];
    v20 = *a4;
    v21 = v9;
    MTL4MetalScriptBuilderImpl::HashToString(&v20, &__p);
    v11 = MTLMetalScriptSerializer::addString((a1 + 368), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v12 = MTLMetalScriptSerializer::addString((a1 + 368), a3, v10);
    *(a1 + 438) = 1;
    v13 = *(a1 + 400);
    v14 = *(a1 + 416);
    v15 = *(a1 + 408);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 368), 4, v8);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 368), 6, v12);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 368), 8, v11);
    v16 = flatbuffers::FlatBufferBuilder::EndTable((a1 + 368), v13 - v14 + v15);
    *&v20 = &v19;
    *(std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 128), &v19.__r_.__value_.__l.__data_) + 10) = v16;
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_185C11434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **MTL4MetalScriptBuilderImpl::addLibrary(uint64_t a1, flatbuffers::FlatBufferBuilder *a2, char *a3)
{
  v6 = MTLMetalScriptSerializer::addString((a1 + 368), a3);
  LODWORD(a2) = MTLMetalScriptSerializer::addString((a1 + 368), a2, v7);
  *(a1 + 438) = 1;
  v8 = *(a1 + 408);
  v9 = *(a1 + 400) - *(a1 + 416);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 368), 4, v6);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 368), 6, a2);
  LODWORD(a2) = flatbuffers::FlatBufferBuilder::EndTable((a1 + 368), v9 + v8);
  result = std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 88), a3);
  *(result + 10) = a2;
  return result;
}

void MTL4MetalScriptBuilderImpl::addLibraryData(uint64_t a1, flatbuffers::FlatBufferBuilder *a2, _OWORD *a3, int a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a3[1];
  v12[0] = *a3;
  v12[1] = v7;
  MTL4MetalScriptBuilderImpl::HashToString(v12, &__p);
  if (!a2)
  {
    v8 = "data";
    if (a4)
    {
      v8 = "source";
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    a2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_Path_not_available_for_lib_from_%s_with_UUID_%s", v8, p_p];
  }

  if (!std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>((a1 + 88), &__p.__r_.__value_.__l.__data_))
  {
    MTL4MetalScriptBuilderImpl::addLibrary(a1, a2, &__p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_185C11644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTL4MetalScriptBuilderImpl::createFunctionConstantValues(MTL4MetalScriptBuilderImpl *this, MTLFunctionConstantValuesInternal *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    __p = 0;
    v26 = 0;
    v27 = 0;
    v4 = [(MTLFunctionConstantValuesInternal *)a2 newNamedConstantArray];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v5)
    {
      v6 = *v22;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(v4);
          }

          FunctionConstantValue = MTL4MetalScriptBuilderImpl::createFunctionConstantValue(this, *(*(&v21 + 1) + 8 * i));
          std::vector<unsigned int>::push_back[abi:ne200100](&__p, &FunctionConstantValue);
        }

        v5 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v5);
    }

    v8 = [(MTLFunctionConstantValuesInternal *)a2 newIndexedConstantArray];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v28 count:16];
    if (v9)
    {
      v10 = *v17;
      do
      {
        for (j = 0; j != v9; ++j)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v8);
          }

          FunctionConstantValue = MTL4MetalScriptBuilderImpl::createFunctionConstantValue(this, *(*(&v16 + 1) + 8 * j));
          std::vector<unsigned int>::push_back[abi:ne200100](&__p, &FunctionConstantValue);
        }

        v9 = [v8 countByEnumeratingWithState:&v16 objects:v28 count:16];
      }

      while (v9);
    }

    v12 = __p;
    if (__p != v26)
    {
      v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 368), __p, (v26 - __p) >> 2);
      v12 = __p;
      if (!__p)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v13 = 0;
    if (__p)
    {
LABEL_21:
      v26 = v12;
      operator delete(v12);
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_22:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_185C11874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTL4MetalScriptBuilderImpl::addSpecializedFunction(uint64_t a1, __int128 *a2, __int128 *a3, flatbuffers::FlatBufferBuilder *a4, MTLFunctionConstantValuesInternal *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a2[1];
  v26 = *a2;
  v27 = v9;
  MTL4MetalScriptBuilderImpl::HashToString(&v26, &v25);
  if (!std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>((a1 + 168), &v25.__r_.__value_.__l.__data_))
  {
    v10 = MTLMetalScriptSerializer::addString((a1 + 368), &v25);
    v11 = a3[1];
    v26 = *a3;
    v27 = v11;
    MTL4MetalScriptBuilderImpl::HashToString(&v26, &v23);
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v23;
    }

    else
    {
      v12 = v23.__r_.__value_.__r.__words[0];
    }

    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v23.__r_.__value_.__l.__size_;
    }

    MTL4MetalScriptBuilderImpl::makeFunctionName(v12, size, &__p);
    v15 = MTLMetalScriptSerializer::addString((a1 + 368), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    v16 = MTLMetalScriptSerializer::addString((a1 + 368), a4, v14);
    FunctionConstantValues = MTL4MetalScriptBuilderImpl::createFunctionConstantValues(a1, a5);
    *(a1 + 438) = 1;
    v18 = *(a1 + 400);
    v19 = *(a1 + 416);
    v20 = *(a1 + 408);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 368), 4, v10);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 368), 6, v15);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 368), 12, FunctionConstantValues);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 368), 8, v16);
    v21 = flatbuffers::FlatBufferBuilder::EndTable((a1 + 368), v18 - v19 + v20);
    *&v26 = &v25;
    *(std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 168), &v25.__r_.__value_.__l.__data_) + 10) = v21;
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_185C11A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTL4MetalScriptBuilderImpl::addStitchedFunction(uint64_t a1, _OWORD *a2, void **a3, MTLFunctionStitchingGraph *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a2[1];
  v19[0] = *a2;
  v19[1] = v7;
  MTL4MetalScriptBuilderImpl::HashToString(v19, &__p);
  if (!std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>((a1 + 208), &__p.__r_.__value_.__l.__data_))
  {
    v8 = MTLMetalScriptSerializer::addString((a1 + 368), &__p);
    v9 = a3[1] - *a3;
    if (v9)
    {
      v10 = *a3;
    }

    else
    {
      v10 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
    }

    v11 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((a1 + 368), v10, v9 >> 2);
    Graph = MTL4MetalScriptBuilderImpl::createGraph(a1, a4);
    *(a1 + 438) = 1;
    v13 = *(a1 + 400);
    v14 = *(a1 + 416);
    v15 = *(a1 + 408);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 368), 4, v8);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 368), 6, v11);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 368), 8, Graph);
    v16 = flatbuffers::FlatBufferBuilder::EndTable((a1 + 368), v13 - v14 + v15);
    *&v19[0] = &__p;
    *(std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 208), &__p.__r_.__value_.__l.__data_) + 10) = v16;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v17 = *MEMORY[0x1E69E9840];
}