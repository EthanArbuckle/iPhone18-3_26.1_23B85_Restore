@interface MTLVertexDescriptorInternal
+ (id)vertexDescriptor;
- (BOOL)isEqual:(id)a3;
- (BOOL)validateWithVertexFunction:(id)a3 error:(id *)a4 renderPipelineDescriptor:(id)a5;
- (MTLVertexDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formattedDescription:(unint64_t)a3;
- (id)newSerializedDescriptor;
- (unint64_t)hash;
- (void)dealloc;
- (void)reset;
@end

@implementation MTLVertexDescriptorInternal

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLVertexDescriptorInternal;
  [(MTLVertexDescriptorInternal *)&v3 dealloc];
}

- (id)newSerializedDescriptor
{
  v51[4] = *MEMORY[0x1E69E9840];
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  _MTLMessageContextBegin_(v49, "[MTLVertexDescriptorInternal newSerializedDescriptor]", 743, 0, 5, "Serialized Descriptor Creation");
  v7 = 0;
  v8 = 0;
  memset(v51, 0, 31);
  v9 = &OBJC_IVAR____MTLCommandBuffer__strongObjectReferences;
  descriptors = self->_vertexBufferArray->_descriptors;
  v11 = &OBJC_IVAR____MTLCommandBuffer__strongObjectReferences;
  do
  {
    v12 = descriptors[v7];
    if (v12 && v12->_stride)
    {
      ++v8;
      *(v51 + v7) = 1;
    }

    ++v7;
  }

  while (v7 != 31);
  v13 = 0;
  v14 = 0;
  v15 = &OBJC_IVAR____MTLCommandBuffer__strongObjectReferences;
  do
  {
    v16 = self->_attributeArray->_descriptors[v13];
    if (v16 && *(&v16->super.super.isa + v15[6]))
    {
      v17 = *(&self->_vertexBufferArray->super.super.isa + 8 * v16->_bufferIndex + v9[5]);
      v18 = v9;
      v19 = v15;
      validateVertexAttribute(v17, v13, v16, v49, v3, v4, v5, v6, v45);
      v15 = v19;
      v9 = v18;
      v11 = &OBJC_IVAR____MTLCommandBuffer__strongObjectReferences;
      *(v51 + v16->_bufferIndex) = 0;
      ++v14;
    }

    ++v13;
  }

  while (v13 != 31);
  if (v14)
  {
    v20 = (16 * v8) | 8;
    v48 = ((v8 & 0x1F) << 6) | (v14 << 11);
    v21 = v20 + 8 * v14;
    v22 = malloc_type_malloc(v21, 0x100004077774924uLL);
    bzero(v22, v21);
    v28 = 0;
    v29 = 0;
    *v22 = v21;
    v22[1] = v48;
    v22[2] = 8;
    v47 = v20;
    v22[3] = v20;
    v30 = v9[5];
    do
    {
      vertexBufferArray = self->_vertexBufferArray;
      if (*(v51 + v28) == 1)
      {
        v46 = *(*(&vertexBufferArray->super.super.isa + 8 * v28 + v30) + v11[2]);
        _MTLMessageContextPush_(v49, 4, @"None of the attributes set bufferIndex to %d, but %s set buffer layout[%d].stride(%lu).", v23, v24, v25, v26, v27, v28);
        v30 = v9[5];
        vertexBufferArray = self->_vertexBufferArray;
      }

      v32 = *(&vertexBufferArray->super.super.isa + 8 * v28 + v30);
      if (v32)
      {
        v33 = *(v32 + v11[2]);
        if (v33)
        {
          v34 = &v22[8 * v29 + 4];
          *(v34 + 8) = v33;
          v35 = *(v32 + 24);
          *v34 = v28 + (*v34 & 0xFFFFFFE0);
          *(v34 + 4) = v35;
          *v34 = v28 + 32 * *(v32 + 16);
          v36 = *(v32 + 16);
          if (v36 >= 5)
          {
            _MTLMessageContextPush_(v49, 4, @"stepFunction is not a valid MTLVertexStepFunction.", v23, v24, v25, v26, v27, v45);
            v36 = *(v32 + 16);
            v35 = *(v34 + 4);
          }

          ++v29;
          validateFunctionStepRate(0, v36, v35, v49);
          v30 = v9[5];
          v11 = &OBJC_IVAR____MTLCommandBuffer__strongObjectReferences;
        }
      }

      ++v28;
    }

    while (v28 != 31);
    v37 = 0;
    v38 = 0;
    do
    {
      v39 = self->_attributeArray->_descriptors[v37];
      if (v39 && v39->_vertexFormat)
      {
        v40 = (&v22[4 * v38++] + (v47 & 0xFFF8));
        v41 = v37 + (*v40 & 0xFFFFFFE0);
        *v40 = v41;
        v40[1] = v39->_offset;
        v42 = v41 & 0xFFFFFC1F | (32 * (v39->_bufferIndex & 0x1F));
        *v40 = v42;
        *v40 = v42 & 0x3FF | (LODWORD(v39->_vertexFormat) << 10);
      }

      ++v37;
    }

    while (v37 != 31);
    _MTLMessageContextEnd(v49);
    result = dispatch_data_create(v22, v21, 0, *MEMORY[0x1E69E9648]);
  }

  else
  {
    _MTLMessageContextEnd(v49);
    result = 0;
  }

  v44 = *MEMORY[0x1E69E9840];
  return result;
}

- (MTLVertexDescriptorInternal)init
{
  v4.receiver = self;
  v4.super_class = MTLVertexDescriptorInternal;
  v2 = [(MTLVertexDescriptorInternal *)&v4 init];
  if (v2)
  {
    v2->_vertexBufferArray = objc_alloc_init(MTLVertexBufferLayoutDescriptorArrayInternal);
    v2->_attributeArray = objc_alloc_init(MTLVertexAttributeDescriptorArrayInternal);
  }

  return v2;
}

- (id)formattedDescription:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MTLVertexDescriptorInternal;
  v6 = [(MTLVertexDescriptorInternal *)&v8 description];
  return [v5 stringWithFormat:@"%@%@", v6, MTLVertexDescriptorDescription(self, a3)];
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
  v2 = objc_alloc_init(MTLVertexDescriptorInternal);

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    for (i = 0; i != 31; ++i)
    {
      v7 = self->_vertexBufferArray->_descriptors[i];
      if (v7)
      {
        *(v5[1] + 8 + i * 8) = [(MTLVertexBufferLayoutDescriptorInternal *)v7 copyWithZone:a3];
      }
    }

    for (j = 0; j != 31; ++j)
    {
      v9 = self->_attributeArray->_descriptors[j];
      if (v9)
      {
        *(v5[2] + 8 + j * 8) = [(MTLVertexAttributeDescriptorInternal *)v9 copyWithZone:a3];
      }
    }
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
  return _MTLHashState(v14, 0x5D0uLL);
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  if (Class == object_getClass(a3))
  {
    v7 = 0;
    while (1)
    {
      v8 = self->_vertexBufferArray->_descriptors[v7];
      v9 = *(*(a3 + 1) + 8 + v7 * 8);
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

      if (++v7 == 31)
      {
        v11 = 0;
        result = 1;
        while (1)
        {
          v12 = self->_attributeArray->_descriptors[v11];
          v13 = *(*(a3 + 2) + 8 + v11 * 8);
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

          if (++v11 == 31)
          {
            return result;
          }
        }
      }
    }
  }

  return 0;
}

- (BOOL)validateWithVertexFunction:(id)a3 error:(id *)a4 renderPipelineDescriptor:(id)a5
{
  v65 = *MEMORY[0x1E69E9840];
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  _MTLMessageContextBegin_(v62, "-[MTLVertexDescriptorInternal validateWithVertexFunction:error:renderPipelineDescriptor:]", 904, [a3 device], 4, "Vertex Descriptor Validation");
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v55 = a3;
  v8 = [a3 vertexAttributes];
  v9 = [v8 countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v59;
    v53 = a4;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v59 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v58 + 1) + 8 * v12);
      v14 = [v13 attributeIndex];
      if (![v13 isActive])
      {
        goto LABEL_28;
      }

      v19 = self->_attributeArray->_descriptors[v14];
      if (!v19 || !v19->_vertexFormat)
      {
        v31 = v53;
        if (v53)
        {
          v32 = [v13 name];
          v33 = @"Vertex attribute %@(%d) is missing from the vertex descriptor";
          _MTLMessageContextPush_(v62, 2, @"Vertex attribute %@(%d) is missing from the vertex descriptor", v34, v35, v36, v37, v38, v32);
          v39 = [v13 name];
          goto LABEL_37;
        }

LABEL_38:
        _MTLMessageContextEnd(v62);
        result = 0;
        goto LABEL_39;
      }

      descriptors = self->_vertexBufferArray->_descriptors;
      bufferIndex = v19->_bufferIndex;
      v22 = descriptors[bufferIndex];
      if (!v22)
      {
        v31 = v53;
        if (v53)
        {
          v40 = [v13 name];
          v52 = v19->_bufferIndex;
          v33 = @"Vertex attribute %@(%d) references a vertex buffer at index %d, but there is no buffer layout set for that index";
          _MTLMessageContextPush_(v62, 2, @"Vertex attribute %@(%d) references a vertex buffer at index %d, but there is no buffer layout set for that index", v41, v42, v43, v44, v45, v40);
          v39 = [v13 name];
          v51 = v19->_bufferIndex;
LABEL_37:
          *v31 = compilerErrorWithMessage(&v33->isa, v39, v14, v51);
        }

        goto LABEL_38;
      }

      validateVertexAttribute(descriptors[bufferIndex], v14, v19, v62, v15, v16, v17, v18, v50);
      validateFunctionStepRate(v55, v22->_stepFunction, v22->_instanceStepRate, v62);
      v23 = [v13 attributeType];
      if (v23 >= gAttributeTypesCount)
      {
        goto LABEL_28;
      }

      v24 = v23;
      v25 = &attributeTypes[3 * v23];
      v26 = [a5 openGLModeEnabled];
      if (!v24 && v26 && !*(v25 + 20))
      {
        goto LABEL_28;
      }

      v57 = 0;
      v56 = 0;
      v27 = isVertexFormatInteger(v19->_vertexFormat, &v57, &v56);
      if ((*(v25 + 19) & 1) == 0)
      {
        break;
      }

      if (!v27 || (*(v25 + 19) & 2) != 0 && !v56 || (*(v25 + 19) & 2) == 0 && v56)
      {
        v28 = 0;
        goto LABEL_24;
      }

      [a5 openGLModeEnabled];
LABEL_28:
      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v58 objects:v64 count:16];
        a4 = v53;
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_30;
      }
    }

    if (v57 == 4)
    {
      v28 = v27 ^ 1;
    }

    else
    {
      v28 = 1;
    }

LABEL_24:
    v29 = [a5 openGLModeEnabled];
    if ((v28 & 1) == 0 && (v29 & 1) == 0)
    {
      if (v53)
      {
        v47 = [v13 name];
        v48 = v25[1];
        v49 = MTLAttributeFormatString(v19->_vertexFormat);
        *v53 = compilerErrorWithMessage(&cfstr_VertexAttribut_2.isa, v47, v14, v48, v49);
      }

      goto LABEL_38;
    }

    goto LABEL_28;
  }

LABEL_30:
  if (a4)
  {
    *a4 = 0;
  }

  _MTLMessageContextEnd(v62);
  result = *&v62[0] == 0;
LABEL_39:
  v46 = *MEMORY[0x1E69E9840];
  return result;
}

@end