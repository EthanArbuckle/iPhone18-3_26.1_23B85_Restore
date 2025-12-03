@interface MTLStageInputOutputDescriptorInternal
+ (id)vertexDescriptor;
- (BOOL)isEqual:(id)equal;
- (BOOL)validateWithVertexFunction:(id)function error:(id *)error renderPipelineDescriptor:(id)descriptor;
- (MTLStageInputOutputDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formattedDescription:(unint64_t)description;
- (id)newSerializedDescriptor;
- (unint64_t)hash;
- (void)dealloc;
- (void)reset;
@end

@implementation MTLStageInputOutputDescriptorInternal

- (MTLStageInputOutputDescriptorInternal)init
{
  v4.receiver = self;
  v4.super_class = MTLStageInputOutputDescriptorInternal;
  v2 = [(MTLStageInputOutputDescriptorInternal *)&v4 init];
  if (v2)
  {
    v2->_vertexBufferArray = objc_alloc_init(MTLBufferLayoutDescriptorArrayInternal);
    v2->_attributeArray = objc_alloc_init(MTLAttributeDescriptorArrayInternal);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLStageInputOutputDescriptorInternal;
  [(MTLStageInputOutputDescriptorInternal *)&v3 dealloc];
}

- (id)formattedDescription:(unint64_t)description
{
  v5 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MTLStageInputOutputDescriptorInternal;
  v6 = [(MTLStageInputOutputDescriptorInternal *)&v8 description];
  return [v5 stringWithFormat:@"%@%@", v6, MTLStageInputOutputDescriptorDescription(self, description)];
}

- (void)reset
{
  v2 = 31;
  v3 = 8;
  do
  {
    v4 = *(&self->_vertexBufferArray->super.super.isa + v3);
    if (v4)
    {
      v4[1] = 0;
      v4[2] = 1;
      v4[3] = 1;
    }

    v3 += 8;
    --v2;
  }

  while (v2);
  v5 = 8;
  v6 = 31;
  do
  {
    v7 = *(&self->_attributeArray->super.super.isa + v5);
    if (v7)
    {
      v7[1] = 0;
      v7[3] = 0;
      v7[2] = 0;
    }

    v5 += 8;
    --v6;
  }

  while (v6);
}

+ (id)vertexDescriptor
{
  v2 = objc_alloc_init(MTLStageInputOutputDescriptorInternal);

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    for (i = 0; i != 31; ++i)
    {
      v7 = self->_vertexBufferArray->_descriptors[i];
      if (v7)
      {
        *(v5[1] + 8 + i * 8) = [(MTLBufferLayoutDescriptorInternal *)v7 copyWithZone:zone];
      }
    }

    for (j = 0; j != 31; ++j)
    {
      v9 = self->_attributeArray->_descriptors[j];
      if (v9)
      {
        *(v5[2] + 8 + j * 8) = [(MTLAttributeDescriptorInternal *)v9 copyWithZone:zone];
      }
    }

    v5[3] = self->_indexBufferIndex;
    v5[4] = self->_indexType;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = 0;
  descriptors = self->_vertexBufferArray->_descriptors;
  do
  {
    v4 = *descriptors;
    if (*descriptors)
    {
      stepFunction = v4->_stepFunction;
      v6 = &v14[v2];
      *v6 = v4->_stride;
      *(v6 + 1) = stepFunction;
      instanceStepRate = v4->_instanceStepRate;
    }

    else
    {
      *&v14[v2] = xmmword_185DB7AF0;
      instanceStepRate = 1;
    }

    *&v14[v2 + 4] = instanceStepRate;
    v2 += 6;
    ++descriptors;
  }

  while (v2 != 186);
  v8 = 0;
  v9 = self->_attributeArray->_descriptors;
  do
  {
    v10 = *v9;
    if (*v9)
    {
      v11 = &v14[v8];
      bufferIndex = v10->_bufferIndex;
      *(v11 + 93) = v10->_vertexFormat;
      *(v11 + 94) = bufferIndex;
      *(v11 + 95) = v10->_offset;
    }

    else
    {
      *&v14[v8 + 190] = 0;
      *&v14[v8 + 186] = 0uLL;
    }

    v8 += 6;
    ++v9;
  }

  while (v8 != 186);
  indexBufferIndex = self->_indexBufferIndex;
  indexType = self->_indexType;
  return _MTLHashState(v14, 0x5E0uLL);
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  if (Class != object_getClass(equal))
  {
    return 0;
  }

  for (i = 0; i != 31; ++i)
  {
    v8 = self->_vertexBufferArray->_descriptors[i];
    v9 = *(*(equal + 1) + 8 + i * 8);
    if (v8 != v9)
    {
      if (v8)
      {
        v10 = v9 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        if (v8 && (v8->_stride || v8->_stepFunction != 1 || v8->_instanceStepRate != 1) || v9 && (v9->_stride || v9->_stepFunction != 1 || v9->_instanceStepRate != 1))
        {
          return 0;
        }
      }

      else if (v8->_stride != v9->_stride || v8->_stepFunction != v9->_stepFunction || v8->_instanceStepRate != v9->_instanceStepRate)
      {
        return 0;
      }
    }
  }

  for (j = 0; j != 31; ++j)
  {
    v12 = self->_attributeArray->_descriptors[j];
    v13 = *(*(equal + 2) + 8 + j * 8);
    if (v12 != v13)
    {
      if (v12)
      {
        v14 = v13 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        if (v12 && (v12->_vertexFormat || v12->_bufferIndex || v12->_offset) || v13 && (v13->_vertexFormat || v13->_bufferIndex || v13->_offset))
        {
          return 0;
        }
      }

      else if (v12->_vertexFormat != v13->_vertexFormat || v12->_bufferIndex != v13->_bufferIndex || v12->_offset != v13->_offset)
      {
        return 0;
      }
    }
  }

  return self->_indexBufferIndex == *(equal + 3) && self->_indexType == *(equal + 4);
}

- (id)newSerializedDescriptor
{
  v52[4] = *MEMORY[0x1E69E9840];
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  _MTLMessageContextBegin_(v50, "[MTLStageInputOutputDescriptorInternal newSerializedDescriptor]", 743, 0, 5, "Serialized Descriptor Creation");
  v7 = 0;
  v8 = 0;
  memset(v52, 0, 31);
  v9 = 0x1EA8D2000uLL;
  descriptors = self->_vertexBufferArray->_descriptors;
  do
  {
    v11 = descriptors[v7];
    if (v11 && v11->_stride)
    {
      ++v8;
      *(v52 + v7) = 1;
    }

    ++v7;
  }

  while (v7 != 31);
  v12 = 0;
  v13 = 0;
  v14 = 0x1EA8D2000uLL;
  do
  {
    v15 = self->_attributeArray->_descriptors[v12];
    if (v15 && *(&v15->super.super.isa + *(v14 + 1280)))
    {
      v16 = *(&self->_vertexBufferArray->super.super.isa + 8 * v15->_bufferIndex + *(v9 + 1276));
      v17 = v9;
      v18 = v14;
      validateVertexAttribute(v16, v12, v15, v50, v3, v4, v5, v6, v47);
      v14 = v18;
      v9 = v17;
      *(v52 + v15->_bufferIndex) = 0;
      ++v13;
    }

    ++v12;
  }

  while (v12 != 31);
  if (v13)
  {
    v19 = (v8 & 0x1F) << 6;
    v20 = (16 * v8) | 8;
    v21 = v20 + 8 * v13;
    v22 = v19 & 0xFFC0 | (v13 << 11) | (2 * (self->_indexBufferIndex & 0x1F)) | self->_indexType & 1;
    v23 = malloc_type_malloc(v21, 0x100004077774924uLL);
    bzero(v23, v21);
    v29 = 0;
    v30 = 0;
    *v23 = v21;
    v23[1] = v22;
    size = v21;
    v23[2] = 8;
    v23[3] = v20;
    v31 = *(v9 + 1276);
    v32 = 0x1EA8D2000uLL;
    do
    {
      vertexBufferArray = self->_vertexBufferArray;
      if (*(v52 + v29) == 1)
      {
        v48 = *(*(&vertexBufferArray->super.super.isa + 8 * v29 + v31) + *(v32 + 1264));
        _MTLMessageContextPush_(v50, 4, @"None of the attributes set bufferIndex to %d, but %s set buffer layout[%d].stride(%lu).", v24, v25, v26, v27, v28, v29);
        v31 = *(v9 + 1276);
        vertexBufferArray = self->_vertexBufferArray;
      }

      v34 = *(&vertexBufferArray->super.super.isa + 8 * v29 + v31);
      if (v34)
      {
        v35 = *(v34 + *(v32 + 1264));
        if (v35)
        {
          v36 = &v23[8 * v30 + 4];
          *(v36 + 8) = v35;
          v37 = *(v34 + 24);
          *v36 = v29 + (*v36 & 0xFFFFFFE0);
          *(v36 + 4) = v37;
          *v36 = v29 + 32 * *(v34 + 16);
          v38 = *(v34 + 16);
          if (v38 >= (MTLStepFunctionThreadPositionInGridYIndexed|MTLStepFunctionPerVertex))
          {
            _MTLMessageContextPush_(v50, 4, @"stepFunction is not a valid MTLStepFunction.", v24, v25, v26, v27, v28, v47);
            v38 = *(v34 + 16);
            v37 = *(v36 + 4);
          }

          ++v30;
          validateFunctionStepRate(v38, v37, v50, v24, v25, v26, v27, v28, v47);
          v31 = *(v9 + 1276);
          v32 = 0x1EA8D2000;
        }
      }

      ++v29;
    }

    while (v29 != 31);
    v39 = 0;
    v40 = 0;
    do
    {
      v41 = self->_attributeArray->_descriptors[v39];
      if (v41 && v41->_vertexFormat)
      {
        v42 = (&v23[4 * v40++] + (v20 & 0xFFF8));
        v43 = v39 + (*v42 & 0xFFFFFFE0);
        *v42 = v43;
        v42[1] = v41->_offset;
        v44 = v43 & 0xFFFFFC1F | (32 * (v41->_bufferIndex & 0x1F));
        *v42 = v44;
        *v42 = v44 & 0x3FF | (LODWORD(v41->_vertexFormat) << 10);
      }

      ++v39;
    }

    while (v39 != 31);
    _MTLMessageContextEnd(v50);
    result = dispatch_data_create(v23, size, 0, *MEMORY[0x1E69E9648]);
  }

  else
  {
    _MTLMessageContextEnd(v50);
    result = 0;
  }

  v46 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)validateWithVertexFunction:(id)function error:(id *)error renderPipelineDescriptor:(id)descriptor
{
  v70 = *MEMORY[0x1E69E9840];
  v68 = 0;
  memset(v67, 0, sizeof(v67));
  _MTLMessageContextBegin_(v67, "-[MTLStageInputOutputDescriptorInternal validateWithVertexFunction:error:renderPipelineDescriptor:]", 904, [function device], 4, "Vertex Descriptor Validation");
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  vertexAttributes = [function vertexAttributes];
  v9 = [vertexAttributes countByEnumeratingWithState:&v63 objects:v69 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v64;
    errorCopy = error;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v64 != v11)
      {
        objc_enumerationMutation(vertexAttributes);
      }

      v13 = *(*(&v63 + 1) + 8 * v12);
      attributeIndex = [v13 attributeIndex];
      if (![v13 isActive])
      {
        goto LABEL_28;
      }

      v19 = self->_attributeArray->_descriptors[attributeIndex];
      if (!v19 || !v19->_vertexFormat)
      {
        v36 = errorCopy;
        if (errorCopy)
        {
          name = [v13 name];
          v38 = @"Vertex attribute %@(%d) is missing from the vertex descriptor";
          _MTLMessageContextPush_(v67, 2, @"Vertex attribute %@(%d) is missing from the vertex descriptor", v39, v40, v41, v42, v43, name);
          name2 = [v13 name];
          goto LABEL_37;
        }

LABEL_38:
        _MTLMessageContextEnd(v67);
        result = 0;
        goto LABEL_39;
      }

      descriptors = self->_vertexBufferArray->_descriptors;
      bufferIndex = v19->_bufferIndex;
      v22 = descriptors[bufferIndex];
      if (!v22)
      {
        v36 = errorCopy;
        if (errorCopy)
        {
          name3 = [v13 name];
          v58 = v19->_bufferIndex;
          v38 = @"Vertex attribute %@(%d) references a vertex buffer at index %d, but there is no buffer layout set for that index";
          _MTLMessageContextPush_(v67, 2, @"Vertex attribute %@(%d) references a vertex buffer at index %d, but there is no buffer layout set for that index", v46, v47, v48, v49, v50, name3);
          name2 = [v13 name];
          v57 = v19->_bufferIndex;
LABEL_37:
          *v36 = compilerErrorWithMessage(&v38->isa, name2, attributeIndex, v57);
        }

        goto LABEL_38;
      }

      validateVertexAttribute(descriptors[bufferIndex], attributeIndex, v19, v67, v15, v16, v17, v18, v55);
      validateFunctionStepRate(v22->_stepFunction, v22->_instanceStepRate, v67, v23, v24, v25, v26, v27, v56);
      attributeType = [v13 attributeType];
      if (attributeType >= gAttributeTypesCount)
      {
        goto LABEL_28;
      }

      v29 = attributeType;
      v30 = &attributeTypes[3 * attributeType];
      openGLModeEnabled = [descriptor openGLModeEnabled];
      if (!v29 && openGLModeEnabled && !*(v30 + 20))
      {
        goto LABEL_28;
      }

      v62 = 0;
      v61 = 0;
      v32 = isVertexFormatInteger(v19->_vertexFormat, &v62, &v61);
      if ((*(v30 + 19) & 1) == 0)
      {
        break;
      }

      if (!v32 || (*(v30 + 19) & 2) != 0 && !v61 || (*(v30 + 19) & 2) == 0 && v61)
      {
        v33 = 0;
        goto LABEL_24;
      }

      [descriptor openGLModeEnabled];
LABEL_28:
      if (v10 == ++v12)
      {
        v10 = [vertexAttributes countByEnumeratingWithState:&v63 objects:v69 count:16];
        error = errorCopy;
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_30;
      }
    }

    if (v62 == 4)
    {
      v33 = v32 ^ 1;
    }

    else
    {
      v33 = 1;
    }

LABEL_24:
    openGLModeEnabled2 = [descriptor openGLModeEnabled];
    if ((v33 & 1) == 0 && (openGLModeEnabled2 & 1) == 0)
    {
      if (errorCopy)
      {
        name4 = [v13 name];
        v53 = v30[1];
        v54 = MTLAttributeFormatString(v19->_vertexFormat);
        *errorCopy = compilerErrorWithMessage(&cfstr_VertexAttribut_2.isa, name4, attributeIndex, v53, v54);
      }

      goto LABEL_38;
    }

    goto LABEL_28;
  }

LABEL_30:
  if (error)
  {
    *error = 0;
  }

  _MTLMessageContextEnd(v67);
  result = *&v67[0] == 0;
LABEL_39:
  v51 = *MEMORY[0x1E69E9840];
  return result;
}

@end