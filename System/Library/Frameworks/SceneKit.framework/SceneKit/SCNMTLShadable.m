@interface SCNMTLShadable
- (id)bufferAtIndices:(id)a3;
- (id)samplerAtIndices:(id)a3;
- (id)textureAtIndices:(id)a3;
- (void)dealloc;
- (void)setResource:(id)a3 ofType:(unint64_t)a4 atIndices:(id)a5;
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

- (void)setResource:(id)a3 ofType:(unint64_t)a4 atIndices:(id)a5
{
  var0 = a5.var0;
  v8 = *&a5.var0 >> 8;
  var1 = a5.var1;
  if (a4 == 3)
  {
    if (a5.var0 != 255)
    {
      v18 = a3;
      v19 = (&self->super.isa + var0);

      v19[125] = a3;
    }

    if (var1 != 255)
    {
      v20 = a3;
      v21 = (&self->super.isa + v8);

      v21[141] = a3;
    }
  }

  else if (a4 == 2)
  {
    if (a5.var0 != 255)
    {
      v14 = a3;
      v15 = (&self->super.isa + var0);

      v15[63] = a3;
    }

    if (var1 != 255)
    {
      v16 = a3;
      v17 = (&self->super.isa + v8);

      v17[94] = a3;
    }
  }

  else if (a4)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLShadable setResource:ofType:atIndices:];
    }
  }

  else
  {
    if (a5.var0 != 255)
    {
      v10 = a3;
      v11 = (&self->super.isa + var0);

      v11[1] = a3;
    }

    if (var1 != 255)
    {
      v12 = a3;
      v13 = (&self->super.isa + v8);

      v13[32] = a3;
    }
  }
}

- (id)bufferAtIndices:(id)a3
{
  if (a3.var0 != -1)
  {
    return self->_vertexBuffers[a3.var0];
  }

  if ((~*&a3 & 0xFF00) != 0)
  {
    return self->_fragmentBuffers[a3.var1];
  }

  v3 = scn_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [SCNMTLShadable bufferAtIndices:];
  }

  return 0;
}

- (id)textureAtIndices:(id)a3
{
  if (a3.var0 != -1)
  {
    return self->_vertexTextures[a3.var0];
  }

  if ((~*&a3 & 0xFF00) != 0)
  {
    return self->_fragmentTextures[a3.var1];
  }

  v3 = scn_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [SCNMTLShadable bufferAtIndices:];
  }

  return 0;
}

- (id)samplerAtIndices:(id)a3
{
  if (a3.var0 != -1)
  {
    return self->_vertexSamplers[a3.var0];
  }

  if ((~*&a3 & 0xFF00) != 0)
  {
    return self->_fragmentSamplers[a3.var1];
  }

  v3 = scn_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [SCNMTLShadable bufferAtIndices:];
  }

  return 0;
}

@end