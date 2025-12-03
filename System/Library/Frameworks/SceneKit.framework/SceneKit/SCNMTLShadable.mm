@interface SCNMTLShadable
- (id)bufferAtIndices:(id)indices;
- (id)samplerAtIndices:(id)indices;
- (id)textureAtIndices:(id)indices;
- (void)dealloc;
- (void)setResource:(id)resource ofType:(unint64_t)type atIndices:(id)indices;
@end

@implementation SCNMTLShadable

- (void)dealloc
{
  for (i = 0; i != 31; ++i)
  {
  }

  for (j = 0; j != 31; ++j)
  {
  }

  for (k = 0; k != 16; ++k)
  {
  }

  v6.receiver = self;
  v6.super_class = SCNMTLShadable;
  [(SCNMTLShadable *)&v6 dealloc];
}

- (void)setResource:(id)resource ofType:(unint64_t)type atIndices:(id)indices
{
  var0 = indices.var0;
  v8 = *&indices.var0 >> 8;
  var1 = indices.var1;
  if (type == 3)
  {
    if (indices.var0 != 255)
    {
      resourceCopy = resource;
      v19 = (&self->super.isa + var0);

      v19[125] = resource;
    }

    if (var1 != 255)
    {
      resourceCopy2 = resource;
      v21 = (&self->super.isa + v8);

      v21[141] = resource;
    }
  }

  else if (type == 2)
  {
    if (indices.var0 != 255)
    {
      resourceCopy3 = resource;
      v15 = (&self->super.isa + var0);

      v15[63] = resource;
    }

    if (var1 != 255)
    {
      resourceCopy4 = resource;
      v17 = (&self->super.isa + v8);

      v17[94] = resource;
    }
  }

  else if (type)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLShadable setResource:ofType:atIndices:];
    }
  }

  else
  {
    if (indices.var0 != 255)
    {
      resourceCopy5 = resource;
      v11 = (&self->super.isa + var0);

      v11[1] = resource;
    }

    if (var1 != 255)
    {
      resourceCopy6 = resource;
      v13 = (&self->super.isa + v8);

      v13[32] = resource;
    }
  }
}

- (id)bufferAtIndices:(id)indices
{
  if (indices.var0 != -1)
  {
    return self->_vertexBuffers[indices.var0];
  }

  if ((~*&indices & 0xFF00) != 0)
  {
    return self->_fragmentBuffers[indices.var1];
  }

  v3 = scn_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [SCNMTLShadable bufferAtIndices:];
  }

  return 0;
}

- (id)textureAtIndices:(id)indices
{
  if (indices.var0 != -1)
  {
    return self->_vertexTextures[indices.var0];
  }

  if ((~*&indices & 0xFF00) != 0)
  {
    return self->_fragmentTextures[indices.var1];
  }

  v3 = scn_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [SCNMTLShadable bufferAtIndices:];
  }

  return 0;
}

- (id)samplerAtIndices:(id)indices
{
  if (indices.var0 != -1)
  {
    return self->_vertexSamplers[indices.var0];
  }

  if ((~*&indices & 0xFF00) != 0)
  {
    return self->_fragmentSamplers[indices.var1];
  }

  v3 = scn_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [SCNMTLShadable bufferAtIndices:];
  }

  return 0;
}

@end