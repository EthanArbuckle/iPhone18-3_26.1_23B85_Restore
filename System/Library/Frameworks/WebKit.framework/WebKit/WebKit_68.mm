uint64_t WebKit::RemoteGraphicsContextGL::bindAttribLocation(uint64_t result, uint64_t a2, uint64_t a3, WTF::String *a4)
{
  v8 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v6 = result;
    if (a2)
    {
      a2 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v8);
      v8 = a2;
    }

    v7 = *(v6 + 56);
    if (v7)
    {
      ++*(v7 + 2);
      result = WebCore::GraphicsContextGLANGLE::bindAttribLocation(v7, a2, a3, a4);
      if (*(v7 + 2) == 1)
      {
        return (*(*v7 + 16))(v7);
      }

      else
      {
        --*(v7 + 2);
      }
    }

    else
    {
      return WebCore::GraphicsContextGLANGLE::bindAttribLocation(0, a2, a3, a4);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::blendColor(WebKit::RemoteGraphicsContextGL *this, float a2, float a3, float a4, float a5)
{
  v5 = *(this + 7);
  if (v5)
  {
    ++*(v5 + 2);
    result = WebCore::GraphicsContextGLANGLE::blendColor(v5, a2, a3, a4, a5);
    if (*(v5 + 2) == 1)
    {
      v7 = *(*v5 + 16);

      return v7(v5);
    }

    else
    {
      --*(v5 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::blendColor(0, a2, a3, a4, a5);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::blendFuncSeparate(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::blendFuncSeparate(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::blendFuncSeparate(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::clearColor(WebKit::RemoteGraphicsContextGL *this, float a2, float a3, float a4, float a5)
{
  v5 = *(this + 7);
  if (v5)
  {
    ++*(v5 + 2);
    result = WebCore::GraphicsContextGLANGLE::clearColor(v5, a2, a3, a4, a5);
    if (*(v5 + 2) == 1)
    {
      v7 = *(*v5 + 16);

      return v7(v5);
    }

    else
    {
      --*(v5 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::clearColor(0, a2, a3, a4, a5);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::colorMask(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::colorMask(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::colorMask(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::copyTexImage2D(WebKit::RemoteGraphicsContextGL *this, unsigned int a2, int a3, unsigned int a4, int a5, int a6, int a7, int a8, int a9)
{
  v9 = *(this + 7);
  if (v9)
  {
    ++*(v9 + 2);
    result = WebCore::GraphicsContextGLANGLE::copyTexImage2D(v9, a2, a3, a4, a5, a6, a7, a8, a9);
    if (*(v9 + 2) == 1)
    {
      v11 = *(*v9 + 16);

      return v11(v9);
    }

    else
    {
      --*(v9 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::copyTexImage2D(0, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::copyTexSubImage2D(WebKit::RemoteGraphicsContextGL *this, unsigned int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9)
{
  v9 = *(this + 7);
  if (v9)
  {
    ++*(v9 + 2);
    result = WebCore::GraphicsContextGLANGLE::copyTexSubImage2D(v9, a2, a3, a4, a5, a6, a7, a8, a9);
    if (*(v9 + 2) == 1)
    {
      v11 = *(*v9 + 16);

      return v11(v9);
    }

    else
    {
      --*(v9 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::copyTexSubImage2D(0, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::drawElements(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::drawElements(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::drawElements(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::framebufferRenderbuffer(uint64_t this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v7 = a5;
  if (a5 <= 0xFFFFFFFD)
  {
    v5 = this;
    if (a5)
    {
      v7 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((this + 216), &v7);
    }

    v6 = *(v5 + 56);
    if (v6)
    {
      ++*(v6 + 2);
      this = WebCore::GraphicsContextGLANGLE::framebufferRenderbuffer(v6);
      if (*(v6 + 2) == 1)
      {
        return (*(*v6 + 16))(v6);
      }

      else
      {
        --*(v6 + 2);
      }
    }

    else
    {
      return WebCore::GraphicsContextGLANGLE::framebufferRenderbuffer(0);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGL::framebufferTexture2D(uint64_t this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v7 = a5;
  if (a5 <= 0xFFFFFFFD)
  {
    v5 = this;
    if (a5)
    {
      v7 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((this + 216), &v7);
    }

    v6 = *(v5 + 56);
    if (v6)
    {
      ++*(v6 + 2);
      this = WebCore::GraphicsContextGLANGLE::framebufferTexture2D(v6);
      if (*(v6 + 2) == 1)
      {
        return (*(*v6 + 16))(v6);
      }

      else
      {
        --*(v6 + 2);
      }
    }

    else
    {
      return WebCore::GraphicsContextGLANGLE::framebufferTexture2D(0);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGL::renderbufferStorage(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::renderbufferStorage(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::renderbufferStorage(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::scissor(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::scissor(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::scissor(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::shaderSource(uint64_t result, uint64_t a2, WTF::String *a3)
{
  v6 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v4 = result;
    if (a2)
    {
      a2 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v6);
      v6 = a2;
    }

    v5 = *(v4 + 56);
    if (v5)
    {
      ++*(v5 + 2);
      result = WebCore::GraphicsContextGLANGLE::shaderSource(v5, a2, a3);
      if (*(v5 + 2) == 1)
      {
        return (*(*v5 + 16))(v5);
      }

      else
      {
        --*(v5 + 2);
      }
    }

    else
    {
      return WebCore::GraphicsContextGLANGLE::shaderSource(0, a2, a3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::stencilFuncSeparate(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::stencilFuncSeparate(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::stencilFuncSeparate(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::stencilOpSeparate(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::stencilOpSeparate(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::stencilOpSeparate(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::uniform3f(WebKit::RemoteGraphicsContextGL *this, float a2, float a3, float a4)
{
  v4 = *(this + 7);
  if (v4)
  {
    ++*(v4 + 2);
    result = WebCore::GraphicsContextGLANGLE::uniform3f(v4, a2, a3, a4);
    if (*(v4 + 2) == 1)
    {
      v6 = *(*v4 + 16);

      return v6(v4);
    }

    else
    {
      --*(v4 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::uniform3f(0, a2, a3, a4);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::uniform3i(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::uniform3i(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::uniform3i(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::uniform4f(WebKit::RemoteGraphicsContextGL *this, float a2, float a3, float a4, float a5)
{
  v5 = *(this + 7);
  if (v5)
  {
    ++*(v5 + 2);
    result = WebCore::GraphicsContextGLANGLE::uniform4f(v5, a2, a3, a4, a5);
    if (*(v5 + 2) == 1)
    {
      v7 = *(*v5 + 16);

      return v7(v5);
    }

    else
    {
      --*(v5 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::uniform4f(0, a2, a3, a4, a5);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::uniform4i(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::uniform4i(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::uniform4i(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::vertexAttrib1fv(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    ++v1[2];
    result = WebCore::GraphicsContextGLANGLE::vertexAttrib1fv();
    if (v1[2] == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --v1[2];
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::vertexAttrib1fv();
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::vertexAttrib2fv(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    ++v1[2];
    result = WebCore::GraphicsContextGLANGLE::vertexAttrib2fv();
    if (v1[2] == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --v1[2];
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::vertexAttrib2fv();
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::vertexAttrib3f(WebKit::RemoteGraphicsContextGL *this, float a2, float a3, float a4)
{
  v4 = *(this + 7);
  if (v4)
  {
    ++*(v4 + 2);
    result = WebCore::GraphicsContextGLANGLE::vertexAttrib3f(v4, a2, a3, a4);
    if (*(v4 + 2) == 1)
    {
      v6 = *(*v4 + 16);

      return v6(v4);
    }

    else
    {
      --*(v4 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::vertexAttrib3f(0, a2, a3, a4);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::vertexAttrib3fv(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    ++v1[2];
    result = WebCore::GraphicsContextGLANGLE::vertexAttrib3fv();
    if (v1[2] == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --v1[2];
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::vertexAttrib3fv();
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::vertexAttrib4f(WebKit::RemoteGraphicsContextGL *this, float a2, float a3, float a4, float a5)
{
  v5 = *(this + 7);
  if (v5)
  {
    ++*(v5 + 2);
    result = WebCore::GraphicsContextGLANGLE::vertexAttrib4f(v5, a2, a3, a4, a5);
    if (*(v5 + 2) == 1)
    {
      v7 = *(*v5 + 16);

      return v7(v5);
    }

    else
    {
      --*(v5 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::vertexAttrib4f(0, a2, a3, a4, a5);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::vertexAttrib4fv(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    ++v1[2];
    result = WebCore::GraphicsContextGLANGLE::vertexAttrib4fv();
    if (v1[2] == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --v1[2];
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::vertexAttrib4fv();
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::vertexAttribPointer(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::vertexAttribPointer(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::vertexAttribPointer(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::viewport(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::viewport(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::viewport(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::bufferData0(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::bufferData(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::bufferData(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::bufferData1(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    ++v1[2];
    result = WebCore::GraphicsContextGLANGLE::bufferData();
    if (v1[2] == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --v1[2];
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::bufferData();
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::bufferSubData(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    ++v1[2];
    result = WebCore::GraphicsContextGLANGLE::bufferSubData();
    if (v1[2] == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --v1[2];
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::bufferSubData();
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::readPixelsBufferObject(uint64_t a1, IntRect *a2)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    ++*(v2 + 2);
    result = WebCore::GraphicsContextGLANGLE::readPixelsBufferObject(v2, *a2);
    if (*(v2 + 2) == 1)
    {
      v4 = *(*v2 + 16);

      return v4(v2);
    }

    else
    {
      --*(v2 + 2);
    }
  }

  else
  {
    v5 = *a2;

    return WebCore::GraphicsContextGLANGLE::readPixelsBufferObject(0, v5);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::texImage2D0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    return WebCore::GraphicsContextGLANGLE::texImage2D();
  }

  ++v1[2];
  result = WebCore::GraphicsContextGLANGLE::texImage2D();
  if (v1[2] == 1)
  {
    v3 = *(*v1 + 16);

    return v3(v1);
  }

  else
  {
    --v1[2];
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::texImage2D1(WebKit::RemoteGraphicsContextGL *this, unsigned int a2, int a3, unsigned int a4, int a5, int a6, int a7, unsigned int a8, unsigned int a9, unint64_t a10)
{
  v10 = *(this + 7);
  if (v10)
  {
    ++*(v10 + 2);
    result = WebCore::GraphicsContextGLANGLE::texImage2D(v10, a2, a3, a4, a5, a6, a7, a8, a9, a10);
    if (*(v10 + 2) == 1)
    {
      v12 = *(*v10 + 16);

      return v12(v10);
    }

    else
    {
      --*(v10 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::texImage2D(0, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::texSubImage2D0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    return WebCore::GraphicsContextGLANGLE::texSubImage2D();
  }

  ++v1[2];
  result = WebCore::GraphicsContextGLANGLE::texSubImage2D();
  if (v1[2] == 1)
  {
    v3 = *(*v1 + 16);

    return v3(v1);
  }

  else
  {
    --v1[2];
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::texSubImage2D1(WebKit::RemoteGraphicsContextGL *this, unsigned int a2, int a3, int a4, int a5, int a6, int a7, unsigned int a8, unsigned int a9, unint64_t a10)
{
  v10 = *(this + 7);
  if (v10)
  {
    ++*(v10 + 2);
    result = WebCore::GraphicsContextGLANGLE::texSubImage2D(v10, a2, a3, a4, a5, a6, a7, a8, a9, a10);
    if (*(v10 + 2) == 1)
    {
      v12 = *(*v10 + 16);

      return v12(v10);
    }

    else
    {
      --*(v10 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::texSubImage2D(0, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::compressedTexImage2D0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    return WebCore::GraphicsContextGLANGLE::compressedTexImage2D();
  }

  ++v1[2];
  result = WebCore::GraphicsContextGLANGLE::compressedTexImage2D();
  if (v1[2] == 1)
  {
    v3 = *(*v1 + 16);

    return v3(v1);
  }

  else
  {
    --v1[2];
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::compressedTexImage2D1(WebKit::RemoteGraphicsContextGL *this, unsigned int a2, int a3, unsigned int a4, int a5, int a6, int a7, int a8, unint64_t a9)
{
  v9 = *(this + 7);
  if (v9)
  {
    ++*(v9 + 2);
    result = WebCore::GraphicsContextGLANGLE::compressedTexImage2D(v9, a2, a3, a4, a5, a6, a7, a8, a9);
    if (*(v9 + 2) == 1)
    {
      v11 = *(*v9 + 16);

      return v11(v9);
    }

    else
    {
      --*(v9 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::compressedTexImage2D(0, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::compressedTexSubImage2D0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    return WebCore::GraphicsContextGLANGLE::compressedTexSubImage2D();
  }

  ++v1[2];
  result = WebCore::GraphicsContextGLANGLE::compressedTexSubImage2D();
  if (v1[2] == 1)
  {
    v3 = *(*v1 + 16);

    return v3(v1);
  }

  else
  {
    --v1[2];
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::compressedTexSubImage2D1(WebKit::RemoteGraphicsContextGL *this, unsigned int a2, int a3, int a4, int a5, int a6, int a7, unsigned int a8, int a9, unint64_t a10)
{
  v10 = *(this + 7);
  if (v10)
  {
    ++*(v10 + 2);
    result = WebCore::GraphicsContextGLANGLE::compressedTexSubImage2D(v10, a2, a3, a4, a5, a6, a7, a8, a9, a10);
    if (*(v10 + 2) == 1)
    {
      v12 = *(*v10 + 16);

      return v12(v10);
    }

    else
    {
      --*(v10 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::compressedTexSubImage2D(0, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::drawArraysInstanced(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::drawArraysInstanced(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::drawArraysInstanced(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::drawElementsInstanced(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::drawElementsInstanced(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::drawElementsInstanced(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::copyBufferSubData(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::copyBufferSubData(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::copyBufferSubData(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::blitFramebuffer(WebKit::RemoteGraphicsContextGL *this, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, unsigned int a10, unsigned int a11)
{
  v11 = *(this + 7);
  if (v11)
  {
    ++*(v11 + 2);
    result = WebCore::GraphicsContextGLANGLE::blitFramebuffer(v11, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
    if (*(v11 + 2) == 1)
    {
      v13 = *(*v11 + 16);

      return v13(v11);
    }

    else
    {
      --*(v11 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::blitFramebuffer(0, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::framebufferTextureLayer(uint64_t this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v6 = a4;
  if (a4 <= 0xFFFFFFFD)
  {
    v4 = this;
    if (a4)
    {
      v6 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((this + 216), &v6);
    }

    v5 = *(v4 + 56);
    if (v5)
    {
      ++*(v5 + 2);
      this = WebCore::GraphicsContextGLANGLE::framebufferTextureLayer(v5);
      if (*(v5 + 2) == 1)
      {
        return (*(*v5 + 16))(v5);
      }

      else
      {
        --*(v5 + 2);
      }
    }

    else
    {
      return WebCore::GraphicsContextGLANGLE::framebufferTextureLayer(0);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGL::renderbufferStorageMultisample(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::renderbufferStorageMultisample(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::renderbufferStorageMultisample(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::texStorage2D(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::texStorage2D(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::texStorage2D(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::texStorage3D(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::texStorage3D(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::texStorage3D(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::texImage3D0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    return WebCore::GraphicsContextGLANGLE::texImage3D();
  }

  ++v1[2];
  result = WebCore::GraphicsContextGLANGLE::texImage3D();
  if (v1[2] == 1)
  {
    v3 = *(*v1 + 16);

    return v3(v1);
  }

  else
  {
    --v1[2];
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::texImage3D1(WebKit::RemoteGraphicsContextGL *this, unsigned int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned int a9, unsigned int a10, unint64_t a11)
{
  v11 = *(this + 7);
  if (v11)
  {
    ++*(v11 + 2);
    result = WebCore::GraphicsContextGLANGLE::texImage3D(v11, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
    if (*(v11 + 2) == 1)
    {
      v13 = *(*v11 + 16);

      return v13(v11);
    }

    else
    {
      --*(v11 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::texImage3D(0, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::texSubImage3D0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    return WebCore::GraphicsContextGLANGLE::texSubImage3D();
  }

  ++v1[2];
  result = WebCore::GraphicsContextGLANGLE::texSubImage3D();
  if (v1[2] == 1)
  {
    v3 = *(*v1 + 16);

    return v3(v1);
  }

  else
  {
    --v1[2];
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::texSubImage3D1(WebKit::RemoteGraphicsContextGL *this, unsigned int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, unsigned int a10, unsigned int a11, unint64_t a12)
{
  v12 = *(this + 7);
  if (v12)
  {
    ++*(v12 + 2);
    result = WebCore::GraphicsContextGLANGLE::texSubImage3D(v12, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
    if (*(v12 + 2) == 1)
    {
      v14 = *(*v12 + 16);

      return v14(v12);
    }

    else
    {
      --*(v12 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::texSubImage3D(0, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::copyTexSubImage3D(WebKit::RemoteGraphicsContextGL *this, unsigned int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  v10 = *(this + 7);
  if (v10)
  {
    ++*(v10 + 2);
    result = WebCore::GraphicsContextGLANGLE::copyTexSubImage3D(v10, a2, a3, a4, a5, a6, a7, a8, a9, a10);
    if (*(v10 + 2) == 1)
    {
      v12 = *(*v10 + 16);

      return v12(v10);
    }

    else
    {
      --*(v10 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::copyTexSubImage3D(0, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::compressedTexImage3D0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    return WebCore::GraphicsContextGLANGLE::compressedTexImage3D();
  }

  ++v1[2];
  result = WebCore::GraphicsContextGLANGLE::compressedTexImage3D();
  if (v1[2] == 1)
  {
    v3 = *(*v1 + 16);

    return v3(v1);
  }

  else
  {
    --v1[2];
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::compressedTexImage3D1(WebKit::RemoteGraphicsContextGL *this, unsigned int a2, int a3, unsigned int a4, int a5, int a6, int a7, int a8, int a9, unint64_t a10)
{
  v10 = *(this + 7);
  if (v10)
  {
    ++*(v10 + 2);
    result = WebCore::GraphicsContextGLANGLE::compressedTexImage3D(v10, a2, a3, a4, a5, a6, a7, a8, a9, a10);
    if (*(v10 + 2) == 1)
    {
      v12 = *(*v10 + 16);

      return v12(v10);
    }

    else
    {
      --*(v10 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::compressedTexImage3D(0, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::compressedTexSubImage3D0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    return WebCore::GraphicsContextGLANGLE::compressedTexSubImage3D();
  }

  ++v1[2];
  result = WebCore::GraphicsContextGLANGLE::compressedTexSubImage3D();
  if (v1[2] == 1)
  {
    v3 = *(*v1 + 16);

    return v3(v1);
  }

  else
  {
    --v1[2];
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::compressedTexSubImage3D1(WebKit::RemoteGraphicsContextGL *this, unsigned int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, unsigned int a10, int a11, unint64_t a12)
{
  v12 = *(this + 7);
  if (v12)
  {
    ++*(v12 + 2);
    result = WebCore::GraphicsContextGLANGLE::compressedTexSubImage3D(v12, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
    if (*(v12 + 2) == 1)
    {
      v14 = *(*v12 + 16);

      return v14(v12);
    }

    else
    {
      --*(v12 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::compressedTexSubImage3D(0, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::uniform3ui(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::uniform3ui(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::uniform3ui(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::uniform4ui(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::uniform4ui(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::uniform4ui(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::vertexAttribI4i(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::vertexAttribI4i(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::vertexAttribI4i(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::vertexAttribI4iv(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    ++v1[2];
    result = WebCore::GraphicsContextGLANGLE::vertexAttribI4iv();
    if (v1[2] == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --v1[2];
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::vertexAttribI4iv();
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::vertexAttribI4ui(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::vertexAttribI4ui(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::vertexAttribI4ui(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::vertexAttribI4uiv(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    ++v1[2];
    result = WebCore::GraphicsContextGLANGLE::vertexAttribI4uiv();
    if (v1[2] == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --v1[2];
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::vertexAttribI4uiv();
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::vertexAttribIPointer(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::vertexAttribIPointer(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::vertexAttribIPointer(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::drawRangeElements(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::drawRangeElements(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::drawRangeElements(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::clearBufferiv(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    ++v1[2];
    result = WebCore::GraphicsContextGLANGLE::clearBufferiv();
    if (v1[2] == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --v1[2];
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::clearBufferiv();
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::clearBufferuiv(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    ++v1[2];
    result = WebCore::GraphicsContextGLANGLE::clearBufferuiv();
    if (v1[2] == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --v1[2];
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::clearBufferuiv();
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::clearBufferfv(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    ++v1[2];
    result = WebCore::GraphicsContextGLANGLE::clearBufferfv();
    if (v1[2] == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --v1[2];
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::clearBufferfv();
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::clearBufferfi(WebKit::RemoteGraphicsContextGL *this, float a2)
{
  v2 = *(this + 7);
  if (v2)
  {
    ++*(v2 + 2);
    result = WebCore::GraphicsContextGLANGLE::clearBufferfi(v2, a2);
    if (*(v2 + 2) == 1)
    {
      v4 = *(*v2 + 16);

      return v4(v2);
    }

    else
    {
      --*(v2 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::clearBufferfi(0, a2);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::waitSync(WebKit::RemoteGraphicsContextGL *this, void *a2)
{
  v2 = *(this + 7);
  if (v2)
  {
    ++*(v2 + 2);
    result = WebCore::GraphicsContextGLANGLE::waitSync(v2, a2);
    if (*(v2 + 2) == 1)
    {
      v4 = *(*v2 + 16);

      return v4(v2);
    }

    else
    {
      --*(v2 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::waitSync(0, a2);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::transformFeedbackVaryings(uint64_t result, unsigned int a2)
{
  v4 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v2 = result;
    if (a2)
    {
      v4 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v4);
    }

    v3 = *(v2 + 56);
    if (v3)
    {
      ++v3[2];
      result = WebCore::GraphicsContextGLANGLE::transformFeedbackVaryings();
      if (v3[2] == 1)
      {
        return (*(*v3 + 16))(v3);
      }

      else
      {
        --v3[2];
      }
    }

    else
    {
      return WebCore::GraphicsContextGLANGLE::transformFeedbackVaryings();
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::bindBufferRange(uint64_t this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v6 = a4;
  if (a4 <= 0xFFFFFFFD)
  {
    v4 = this;
    if (a4)
    {
      v6 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((this + 216), &v6);
    }

    v5 = *(v4 + 56);
    if (v5)
    {
      ++*(v5 + 2);
      this = WebCore::GraphicsContextGLANGLE::bindBufferRange(v5);
      if (*(v5 + 2) == 1)
      {
        return (*(*v5 + 16))(v5);
      }

      else
      {
        --*(v5 + 2);
      }
    }

    else
    {
      return WebCore::GraphicsContextGLANGLE::bindBufferRange(0);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGL::blendFuncSeparateiOES(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::blendFuncSeparateiOES(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::blendFuncSeparateiOES(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::colorMaskiOES(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::colorMaskiOES(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::colorMaskiOES(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::drawArraysInstancedBaseInstanceANGLE(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::drawArraysInstancedBaseInstanceANGLE(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::drawArraysInstancedBaseInstanceANGLE(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::drawElementsInstancedBaseVertexBaseInstanceANGLE(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::drawElementsInstancedBaseVertexBaseInstanceANGLE(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::drawElementsInstancedBaseVertexBaseInstanceANGLE(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::renderbufferStorageMultisampleANGLE(WebKit::RemoteGraphicsContextGL *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    ++*(v1 + 2);
    result = WebCore::GraphicsContextGLANGLE::renderbufferStorageMultisampleANGLE(v1);
    if (*(v1 + 2) == 1)
    {
      v3 = *(*v1 + 16);

      return v3(v1);
    }

    else
    {
      --*(v1 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::renderbufferStorageMultisampleANGLE(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::setDrawingBufferColorSpace(uint64_t a1, const WebCore::DestinationColorSpace *a2)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    ++*(v2 + 2);
    result = WebCore::GraphicsContextGLCocoa::setDrawingBufferColorSpace(v2, a2);
    if (*(v2 + 2) == 1)
    {
      v4 = *(*v2 + 16);

      return v4(v2);
    }

    else
    {
      --*(v2 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLCocoa::setDrawingBufferColorSpace(0, a2);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::checkFramebufferStatus(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    ++*(v4 + 2);
    v5 = WebCore::GraphicsContextGLANGLE::checkFramebufferStatus(v4);
    if (*(v4 + 2) == 1)
    {
      (*(*v4 + 16))(v4);
    }

    else
    {
      --*(v4 + 2);
    }
  }

  else
  {
    v5 = WebCore::GraphicsContextGLANGLE::checkFramebufferStatus(0);
  }

  v6 = *a3;
  *a3 = 0;
  (*(*v6 + 16))(v6, v5);
  v7 = *(*v6 + 8);

  return v7(v6);
}

uint64_t *WebKit::RemoteGraphicsContextGL::getActiveAttrib(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v12 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v6 = result;
    if (a2)
    {
      a2 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(result + 27, &v12);
      v12 = a2;
    }

    v11[0] = 0;
    v11[1] = 0;
    v7 = v6[7];
    if (v7)
    {
      ++v7[2];
      v8 = MEMORY[0x19EB0A640](v7, a2, a3, v11);
      if (v7[2] == 1)
      {
        (*(*v7 + 16))(v7);
      }

      else
      {
        --v7[2];
      }
    }

    else
    {
      v8 = MEMORY[0x19EB0A640](0, a2, a3, v11);
    }

    v9 = *a4;
    *a4 = 0;
    (*(*v9 + 16))(v9, v8, v11);
    (*(*v9 + 8))(v9);
    result = v11[0];
    v11[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v10);
      }
    }
  }

  return result;
}

uint64_t *WebKit::RemoteGraphicsContextGL::getActiveUniform(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v12 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v6 = result;
    if (a2)
    {
      a2 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(result + 27, &v12);
      v12 = a2;
    }

    v11[0] = 0;
    v11[1] = 0;
    v7 = v6[7];
    if (v7)
    {
      ++v7[2];
      v8 = MEMORY[0x19EB0A6F0](v7, a2, a3, v11);
      if (v7[2] == 1)
      {
        (*(*v7 + 16))(v7);
      }

      else
      {
        --v7[2];
      }
    }

    else
    {
      v8 = MEMORY[0x19EB0A6F0](0, a2, a3, v11);
    }

    v9 = *a4;
    *a4 = 0;
    (*(*v9 + 16))(v9, v8, v11);
    (*(*v9 + 8))(v9);
    result = v11[0];
    v11[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v10);
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getAttribLocation(uint64_t result, uint64_t a2, WTF::String *a3, uint64_t *a4)
{
  v10 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v6 = result;
    if (a2)
    {
      a2 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v10);
      v10 = a2;
    }

    v7 = *(v6 + 56);
    if (v7)
    {
      ++*(v7 + 2);
      AttribLocation = WebCore::GraphicsContextGLANGLE::getAttribLocation(v7, a2, a3);
      if (*(v7 + 2) == 1)
      {
        (*(*v7 + 16))(v7);
      }

      else
      {
        --*(v7 + 2);
      }
    }

    else
    {
      AttribLocation = WebCore::GraphicsContextGLANGLE::getAttribLocation(0, a2, a3);
    }

    v9 = *a4;
    *a4 = 0;
    (*(*v9 + 16))(v9, AttribLocation);
    return (*(*v9 + 8))(v9);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getBufferParameteri(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 56);
  if (v5)
  {
    ++*(v5 + 2);
    BufferParameteri = WebCore::GraphicsContextGLANGLE::getBufferParameteri(v5);
    if (*(v5 + 2) == 1)
    {
      (*(*v5 + 16))(v5);
    }

    else
    {
      --*(v5 + 2);
    }
  }

  else
  {
    BufferParameteri = WebCore::GraphicsContextGLANGLE::getBufferParameteri(0);
  }

  v7 = *a4;
  *a4 = 0;
  (*(*v7 + 16))(v7, BufferParameteri);
  v8 = *(*v7 + 8);

  return v8(v7);
}

WTF::StringImpl *WebKit::RemoteGraphicsContextGL::getString(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    ++*(v4 + 2);
    WebCore::GraphicsContextGLANGLE::getString(v4);
    v9 = v8;
    if (*(v4 + 2) == 1)
    {
      (*(*v4 + 16))(v4);
    }

    else
    {
      --*(v4 + 2);
    }
  }

  else
  {
    WebCore::GraphicsContextGLANGLE::getString(0);
    v9 = v8;
  }

  v5 = *a3;
  *a3 = 0;
  (*(*v5 + 16))(v5, &v9);
  (*(*v5 + 8))(v5);
  result = v9;
  v9 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getFloatv(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v12 = v13;
  if (a3 >> 30)
  {
    v6 = 16;
  }

  else
  {
    v6 = a3;
  }

  if (v6 < 0x11)
  {
    v7 = v13;
    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = WTF::fastMalloc((4 * v6));
  v12 = v7;
  if (v6)
  {
LABEL_8:
    bzero(v7, 4 * v6);
  }

LABEL_9:
  v8 = *(a1 + 56);
  if (v8)
  {
    ++v8[2];
    WebCore::GraphicsContextGLANGLE::getFloatv();
    if (v8[2] == 1)
    {
      (*(*v8 + 16))(v8);
    }

    else
    {
      --v8[2];
    }
  }

  else
  {
    WebCore::GraphicsContextGLANGLE::getFloatv();
  }

  v9 = *a4;
  *a4 = 0;
  (*(*v9 + 16))(v9, v12, v6);
  (*(*v9 + 8))(v9);
  result = v12;
  if (v13 != v12)
  {
    if (v12)
    {
      return WTF::fastFree(v12, v10);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getIntegerv(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v12 = v13;
  if (a3 >> 30)
  {
    v6 = 4;
  }

  else
  {
    v6 = a3;
  }

  if (v6 < 5)
  {
    v7 = v13;
    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = WTF::fastMalloc((4 * v6));
  v12 = v7;
  if (v6)
  {
LABEL_8:
    bzero(v7, 4 * v6);
  }

LABEL_9:
  v8 = *(a1 + 56);
  if (v8)
  {
    ++v8[2];
    WebCore::GraphicsContextGLANGLE::getIntegerv();
    if (v8[2] == 1)
    {
      (*(*v8 + 16))(v8);
    }

    else
    {
      --v8[2];
    }
  }

  else
  {
    WebCore::GraphicsContextGLANGLE::getIntegerv();
  }

  v9 = *a4;
  *a4 = 0;
  (*(*v9 + 16))(v9, v12, v6);
  (*(*v9 + 8))(v9);
  result = v12;
  if (v13 != v12)
  {
    if (v12)
    {
      return WTF::fastFree(v12, v10);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getIntegeri_v(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8[0] = 0;
  v8[1] = 0;
  v5 = *(a1 + 56);
  if (v5)
  {
    ++v5[2];
    WebCore::GraphicsContextGLANGLE::getIntegeri_v();
    if (v5[2] == 1)
    {
      (*(*v5 + 16))(v5);
    }

    else
    {
      --v5[2];
    }
  }

  else
  {
    WebCore::GraphicsContextGLANGLE::getIntegeri_v();
  }

  v6 = *a4;
  *a4 = 0;
  (*(*v6 + 16))(v6, v8);
  return (*(*v6 + 8))(v6);
}

uint64_t WebKit::RemoteGraphicsContextGL::getInteger64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    ++*(v4 + 2);
    Integer64 = WebCore::GraphicsContextGLANGLE::getInteger64(v4);
    if (*(v4 + 2) == 1)
    {
      (*(*v4 + 16))(v4);
    }

    else
    {
      --*(v4 + 2);
    }
  }

  else
  {
    Integer64 = WebCore::GraphicsContextGLANGLE::getInteger64(0);
  }

  v6 = *a3;
  *a3 = 0;
  (*(*v6 + 16))(v6, Integer64);
  v7 = *(*v6 + 8);

  return v7(v6);
}

uint64_t WebKit::RemoteGraphicsContextGL::getInteger64i(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 56);
  if (v5)
  {
    ++*(v5 + 2);
    Integer64i = WebCore::GraphicsContextGLANGLE::getInteger64i(v5);
    if (*(v5 + 2) == 1)
    {
      (*(*v5 + 16))(v5);
    }

    else
    {
      --*(v5 + 2);
    }
  }

  else
  {
    Integer64i = WebCore::GraphicsContextGLANGLE::getInteger64i(0);
  }

  v7 = *a4;
  *a4 = 0;
  (*(*v7 + 16))(v7, Integer64i);
  v8 = *(*v7 + 8);

  return v8(v7);
}

uint64_t WebKit::RemoteGraphicsContextGL::getProgrami(uint64_t result, unsigned int a2, unsigned int a3, uint64_t *a4)
{
  v9 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v5 = result;
    if (a2)
    {
      v9 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v9);
    }

    v6 = *(v5 + 56);
    if (v6)
    {
      ++*(v6 + 2);
      Programi = WebCore::GraphicsContextGLANGLE::getProgrami(v6);
      if (*(v6 + 2) == 1)
      {
        (*(*v6 + 16))(v6);
      }

      else
      {
        --*(v6 + 2);
      }
    }

    else
    {
      Programi = WebCore::GraphicsContextGLANGLE::getProgrami(0);
    }

    v8 = *a4;
    *a4 = 0;
    (*(*v8 + 16))(v8, Programi);
    return (*(*v8 + 8))(v8);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getBooleanv(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v12 = (&v13 + 4);
  if (HIDWORD(a3))
  {
    v6 = 4;
  }

  else
  {
    v6 = a3;
  }

  if (v6 < 5)
  {
    v7 = (&v13 + 4);
  }

  else
  {
    v7 = WTF::fastMalloc(v6);
    v12 = v7;
  }

  bzero(v7, v6);
  v8 = *(a1 + 56);
  if (v8)
  {
    ++v8[2];
    WebCore::GraphicsContextGLANGLE::getBooleanv();
    if (v8[2] == 1)
    {
      (*(*v8 + 16))(v8);
    }

    else
    {
      --v8[2];
    }
  }

  else
  {
    WebCore::GraphicsContextGLANGLE::getBooleanv();
  }

  v9 = *a4;
  *a4 = 0;
  (*(*v9 + 16))(v9, v12, v6);
  (*(*v9 + 8))(v9);
  result = v12;
  if ((&v13 + 4) != v12)
  {
    if (v12)
    {
      return WTF::fastFree(v12, v10);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getFramebufferAttachmentParameteri(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    ++*(v6 + 2);
    FramebufferAttachmentParameteri = WebCore::GraphicsContextGLANGLE::getFramebufferAttachmentParameteri(v6);
    if (*(v6 + 2) == 1)
    {
      (*(*v6 + 16))(v6);
    }

    else
    {
      --*(v6 + 2);
    }
  }

  else
  {
    FramebufferAttachmentParameteri = WebCore::GraphicsContextGLANGLE::getFramebufferAttachmentParameteri(0);
  }

  v8 = *a5;
  *a5 = 0;
  (*(*v8 + 16))(v8, FramebufferAttachmentParameteri);
  v9 = *(*v8 + 8);

  return v9(v8);
}

uint64_t *WebKit::RemoteGraphicsContextGL::getProgramInfoLog(uint64_t *result, unsigned int a2, uint64_t *a3)
{
  v10 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v4 = result;
    if (a2)
    {
      v10 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(result + 27, &v10);
    }

    v5 = v4[7];
    if (v5)
    {
      ++*(v5 + 2);
      WebCore::GraphicsContextGLANGLE::getProgramInfoLog(v5);
      v9 = v8;
      if (*(v5 + 2) == 1)
      {
        (*(*v5 + 16))(v5);
      }

      else
      {
        --*(v5 + 2);
      }
    }

    else
    {
      WebCore::GraphicsContextGLANGLE::getProgramInfoLog(0);
      v9 = v8;
    }

    v6 = *a3;
    *a3 = 0;
    (*(*v6 + 16))(v6, &v9);
    (*(*v6 + 8))(v6);
    result = v9;
    v9 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getRenderbufferParameteri(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 56);
  if (v5)
  {
    ++*(v5 + 2);
    RenderbufferParameteri = WebCore::GraphicsContextGLANGLE::getRenderbufferParameteri(v5);
    if (*(v5 + 2) == 1)
    {
      (*(*v5 + 16))(v5);
    }

    else
    {
      --*(v5 + 2);
    }
  }

  else
  {
    RenderbufferParameteri = WebCore::GraphicsContextGLANGLE::getRenderbufferParameteri(0);
  }

  v7 = *a4;
  *a4 = 0;
  (*(*v7 + 16))(v7, RenderbufferParameteri);
  v8 = *(*v7 + 8);

  return v8(v7);
}

uint64_t WebKit::RemoteGraphicsContextGL::getShaderi(uint64_t result, unsigned int a2, unsigned int a3, uint64_t *a4)
{
  v9 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v5 = result;
    if (a2)
    {
      v9 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v9);
    }

    v6 = *(v5 + 56);
    if (v6)
    {
      ++*(v6 + 2);
      Shaderi = WebCore::GraphicsContextGLANGLE::getShaderi(v6);
      if (*(v6 + 2) == 1)
      {
        (*(*v6 + 16))(v6);
      }

      else
      {
        --*(v6 + 2);
      }
    }

    else
    {
      Shaderi = WebCore::GraphicsContextGLANGLE::getShaderi(0);
    }

    v8 = *a4;
    *a4 = 0;
    (*(*v8 + 16))(v8, Shaderi);
    return (*(*v8 + 8))(v8);
  }

  return result;
}

uint64_t *WebKit::RemoteGraphicsContextGL::getShaderInfoLog(uint64_t *result, unsigned int a2, uint64_t *a3)
{
  v10 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v4 = result;
    if (a2)
    {
      v10 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(result + 27, &v10);
    }

    v5 = v4[7];
    if (v5)
    {
      ++*(v5 + 2);
      WebCore::GraphicsContextGLANGLE::getShaderInfoLog(v5);
      v9 = v8;
      if (*(v5 + 2) == 1)
      {
        (*(*v5 + 16))(v5);
      }

      else
      {
        --*(v5 + 2);
      }
    }

    else
    {
      WebCore::GraphicsContextGLANGLE::getShaderInfoLog(0);
      v9 = v8;
    }

    v6 = *a3;
    *a3 = 0;
    (*(*v6 + 16))(v6, &v9);
    (*(*v6 + 8))(v6);
    result = v9;
    v9 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getShaderPrecisionFormat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = 0;
  v5 = *(a1 + 56);
  if (v5)
  {
    ++v5[2];
    WebCore::GraphicsContextGLANGLE::getShaderPrecisionFormat();
    if (v5[2] == 1)
    {
      (*(*v5 + 16))(v5);
    }

    else
    {
      --v5[2];
    }
  }

  else
  {
    WebCore::GraphicsContextGLANGLE::getShaderPrecisionFormat();
  }

  v6 = *a4;
  *a4 = 0;
  (*(*v6 + 16))(v6, &v8, 0);
  return (*(*v6 + 8))(v6);
}

uint64_t *WebKit::RemoteGraphicsContextGL::getShaderSource(uint64_t *result, unsigned int a2, uint64_t *a3)
{
  v10 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v4 = result;
    if (a2)
    {
      v10 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(result + 27, &v10);
    }

    v5 = v4[7];
    if (v5)
    {
      ++*(v5 + 2);
      WebCore::GraphicsContextGLANGLE::getShaderSource(v5);
      v9 = v8;
      if (*(v5 + 2) == 1)
      {
        (*(*v5 + 16))(v5);
      }

      else
      {
        --*(v5 + 2);
      }
    }

    else
    {
      WebCore::GraphicsContextGLANGLE::getShaderSource(0);
      v9 = v8;
    }

    v6 = *a3;
    *a3 = 0;
    (*(*v6 + 16))(v6, &v9);
    (*(*v6 + 8))(v6);
    result = v9;
    v9 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getTexParameterf(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 56);
  if (v5)
  {
    ++*(v5 + 2);
    WebCore::GraphicsContextGLANGLE::getTexParameterf(v5);
    v7 = v6;
    if (*(v5 + 2) == 1)
    {
      (*(*v5 + 16))(v5);
    }

    else
    {
      --*(v5 + 2);
    }
  }

  else
  {
    WebCore::GraphicsContextGLANGLE::getTexParameterf(0);
    v7 = v11;
  }

  v8 = *a4;
  *a4 = 0;
  (*(*v8 + 16))(v8, v7);
  v9 = *(*v8 + 8);

  return v9(v8);
}

uint64_t WebKit::RemoteGraphicsContextGL::getTexParameteri(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 56);
  if (v5)
  {
    ++*(v5 + 2);
    TexParameteri = WebCore::GraphicsContextGLANGLE::getTexParameteri(v5);
    if (*(v5 + 2) == 1)
    {
      (*(*v5 + 16))(v5);
    }

    else
    {
      --*(v5 + 2);
    }
  }

  else
  {
    TexParameteri = WebCore::GraphicsContextGLANGLE::getTexParameteri(0);
  }

  v7 = *a4;
  *a4 = 0;
  (*(*v7 + 16))(v7, TexParameteri);
  v8 = *(*v7 + 8);

  return v8(v7);
}

uint64_t WebKit::RemoteGraphicsContextGL::getUniformfv(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v15 = a2;
  if (a2 > 0xFFFFFFFD)
  {
    return result;
  }

  v7 = result;
  if (a2)
  {
    v15 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v15);
  }

  v13 = v14;
  if (a4 >> 30)
  {
    v8 = 16;
  }

  else
  {
    v8 = a4;
  }

  if (v8 >= 0x11)
  {
    v9 = WTF::fastMalloc((4 * v8));
    v13 = v9;
    if (!v8)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = v14;
  if (v8)
  {
LABEL_11:
    bzero(v9, 4 * v8);
  }

LABEL_12:
  v10 = *(v7 + 56);
  if (v10)
  {
    ++v10[2];
    WebCore::GraphicsContextGLANGLE::getUniformfv();
    if (v10[2] == 1)
    {
      (*(*v10 + 16))(v10);
    }

    else
    {
      --v10[2];
    }
  }

  else
  {
    WebCore::GraphicsContextGLANGLE::getUniformfv();
  }

  v11 = *a5;
  *a5 = 0;
  (*(*v11 + 16))(v11, v13, v8);
  (*(*v11 + 8))(v11);
  result = v13;
  if (v14 != v13)
  {
    if (v13)
    {
      return WTF::fastFree(v13, v12);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getUniformiv(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v15 = a2;
  if (a2 > 0xFFFFFFFD)
  {
    return result;
  }

  v7 = result;
  if (a2)
  {
    v15 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v15);
  }

  v13 = v14;
  if (a4 >> 30)
  {
    v8 = 4;
  }

  else
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v9 = WTF::fastMalloc((4 * v8));
    v13 = v9;
    if (!v8)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = v14;
  if (v8)
  {
LABEL_11:
    bzero(v9, 4 * v8);
  }

LABEL_12:
  v10 = *(v7 + 56);
  if (v10)
  {
    ++v10[2];
    WebCore::GraphicsContextGLANGLE::getUniformiv();
    if (v10[2] == 1)
    {
      (*(*v10 + 16))(v10);
    }

    else
    {
      --v10[2];
    }
  }

  else
  {
    WebCore::GraphicsContextGLANGLE::getUniformiv();
  }

  v11 = *a5;
  *a5 = 0;
  (*(*v11 + 16))(v11, v13, v8);
  (*(*v11 + 8))(v11);
  result = v13;
  if (v14 != v13)
  {
    if (v13)
    {
      return WTF::fastFree(v13, v12);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getUniformuiv(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v15 = a2;
  if (a2 > 0xFFFFFFFD)
  {
    return result;
  }

  v7 = result;
  if (a2)
  {
    v15 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v15);
  }

  v13 = v14;
  if (a4 >> 30)
  {
    v8 = 4;
  }

  else
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v9 = WTF::fastMalloc((4 * v8));
    v13 = v9;
    if (!v8)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = v14;
  if (v8)
  {
LABEL_11:
    bzero(v9, 4 * v8);
  }

LABEL_12:
  v10 = *(v7 + 56);
  if (v10)
  {
    ++v10[2];
    WebCore::GraphicsContextGLANGLE::getUniformuiv();
    if (v10[2] == 1)
    {
      (*(*v10 + 16))(v10);
    }

    else
    {
      --v10[2];
    }
  }

  else
  {
    WebCore::GraphicsContextGLANGLE::getUniformuiv();
  }

  v11 = *a5;
  *a5 = 0;
  (*(*v11 + 16))(v11, v13, v8);
  (*(*v11 + 8))(v11);
  result = v13;
  if (v14 != v13)
  {
    if (v13)
    {
      return WTF::fastFree(v13, v12);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getUniformLocation(uint64_t result, uint64_t a2, WTF::String *a3, uint64_t *a4)
{
  v10 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v6 = result;
    if (a2)
    {
      a2 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v10);
      v10 = a2;
    }

    v7 = *(v6 + 56);
    if (v7)
    {
      ++*(v7 + 2);
      UniformLocation = WebCore::GraphicsContextGLANGLE::getUniformLocation(v7, a2, a3);
      if (*(v7 + 2) == 1)
      {
        (*(*v7 + 16))(v7);
      }

      else
      {
        --*(v7 + 2);
      }
    }

    else
    {
      UniformLocation = WebCore::GraphicsContextGLANGLE::getUniformLocation(0, a2, a3);
    }

    v9 = *a4;
    *a4 = 0;
    (*(*v9 + 16))(v9, UniformLocation);
    return (*(*v9 + 8))(v9);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getVertexAttribOffset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 56);
  if (v5)
  {
    ++*(v5 + 2);
    VertexAttribOffset = WebCore::GraphicsContextGLANGLE::getVertexAttribOffset(v5);
    if (*(v5 + 2) == 1)
    {
      (*(*v5 + 16))(v5);
    }

    else
    {
      --*(v5 + 2);
    }
  }

  else
  {
    VertexAttribOffset = WebCore::GraphicsContextGLANGLE::getVertexAttribOffset(0);
  }

  v7 = *a4;
  *a4 = 0;
  (*(*v7 + 16))(v7, VertexAttribOffset);
  v8 = *(*v7 + 8);

  return v8(v7);
}

uint64_t WebKit::RemoteGraphicsContextGL::isBuffer(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v8 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v4 = result;
    if (a2)
    {
      v8 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v8);
    }

    v5 = *(v4 + 56);
    if (v5)
    {
      ++*(v5 + 2);
      isBuffer = WebCore::GraphicsContextGLANGLE::isBuffer(v5);
      if (*(v5 + 2) == 1)
      {
        (*(*v5 + 16))(v5);
      }

      else
      {
        --*(v5 + 2);
      }
    }

    else
    {
      isBuffer = WebCore::GraphicsContextGLANGLE::isBuffer(0);
    }

    v7 = *a3;
    *a3 = 0;
    (*(*v7 + 16))(v7, isBuffer != 0);
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::isEnabled(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    ++*(v4 + 2);
    isEnabled = WebCore::GraphicsContextGLANGLE::isEnabled(v4);
    if (*(v4 + 2) == 1)
    {
      (*(*v4 + 16))(v4);
    }

    else
    {
      --*(v4 + 2);
    }
  }

  else
  {
    isEnabled = WebCore::GraphicsContextGLANGLE::isEnabled(0);
  }

  v6 = *a3;
  *a3 = 0;
  (*(*v6 + 16))(v6, isEnabled != 0);
  v7 = *(*v6 + 8);

  return v7(v6);
}

uint64_t WebKit::RemoteGraphicsContextGL::isFramebuffer(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v8 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v4 = result;
    if (a2)
    {
      v8 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v8);
    }

    v5 = *(v4 + 56);
    if (v5)
    {
      ++*(v5 + 2);
      isFramebuffer = WebCore::GraphicsContextGLANGLE::isFramebuffer(v5);
      if (*(v5 + 2) == 1)
      {
        (*(*v5 + 16))(v5);
      }

      else
      {
        --*(v5 + 2);
      }
    }

    else
    {
      isFramebuffer = WebCore::GraphicsContextGLANGLE::isFramebuffer(0);
    }

    v7 = *a3;
    *a3 = 0;
    (*(*v7 + 16))(v7, isFramebuffer != 0);
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::isProgram(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v8 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v4 = result;
    if (a2)
    {
      v8 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v8);
    }

    v5 = *(v4 + 56);
    if (v5)
    {
      ++*(v5 + 2);
      isProgram = WebCore::GraphicsContextGLANGLE::isProgram(v5);
      if (*(v5 + 2) == 1)
      {
        (*(*v5 + 16))(v5);
      }

      else
      {
        --*(v5 + 2);
      }
    }

    else
    {
      isProgram = WebCore::GraphicsContextGLANGLE::isProgram(0);
    }

    v7 = *a3;
    *a3 = 0;
    (*(*v7 + 16))(v7, isProgram != 0);
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::isRenderbuffer(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v8 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v4 = result;
    if (a2)
    {
      v8 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v8);
    }

    v5 = *(v4 + 56);
    if (v5)
    {
      ++*(v5 + 2);
      isRenderbuffer = WebCore::GraphicsContextGLANGLE::isRenderbuffer(v5);
      if (*(v5 + 2) == 1)
      {
        (*(*v5 + 16))(v5);
      }

      else
      {
        --*(v5 + 2);
      }
    }

    else
    {
      isRenderbuffer = WebCore::GraphicsContextGLANGLE::isRenderbuffer(0);
    }

    v7 = *a3;
    *a3 = 0;
    (*(*v7 + 16))(v7, isRenderbuffer != 0);
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::isShader(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v8 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v4 = result;
    if (a2)
    {
      v8 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v8);
    }

    v5 = *(v4 + 56);
    if (v5)
    {
      ++*(v5 + 2);
      isShader = WebCore::GraphicsContextGLANGLE::isShader(v5);
      if (*(v5 + 2) == 1)
      {
        (*(*v5 + 16))(v5);
      }

      else
      {
        --*(v5 + 2);
      }
    }

    else
    {
      isShader = WebCore::GraphicsContextGLANGLE::isShader(0);
    }

    v7 = *a3;
    *a3 = 0;
    (*(*v7 + 16))(v7, isShader != 0);
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::isTexture(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v8 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v4 = result;
    if (a2)
    {
      v8 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v8);
    }

    v5 = *(v4 + 56);
    if (v5)
    {
      ++*(v5 + 2);
      isTexture = WebCore::GraphicsContextGLANGLE::isTexture(v5);
      if (*(v5 + 2) == 1)
      {
        (*(*v5 + 16))(v5);
      }

      else
      {
        --*(v5 + 2);
      }
    }

    else
    {
      isTexture = WebCore::GraphicsContextGLANGLE::isTexture(0);
    }

    v7 = *a3;
    *a3 = 0;
    (*(*v7 + 16))(v7, isTexture != 0);
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::isVertexArray(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v8 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v4 = result;
    if (a2)
    {
      v8 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v8);
    }

    v5 = *(v4 + 56);
    if (v5)
    {
      ++*(v5 + 2);
      isVertexArray = WebCore::GraphicsContextGLANGLE::isVertexArray(v5);
      if (*(v5 + 2) == 1)
      {
        (*(*v5 + 16))(v5);
      }

      else
      {
        --*(v5 + 2);
      }
    }

    else
    {
      isVertexArray = WebCore::GraphicsContextGLANGLE::isVertexArray(0);
    }

    v7 = *a3;
    *a3 = 0;
    (*(*v7 + 16))(v7, isVertexArray != 0);
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getFragDataLocation(uint64_t result, uint64_t a2, WTF::String *a3, uint64_t *a4)
{
  v10 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v6 = result;
    if (a2)
    {
      a2 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v10);
      v10 = a2;
    }

    v7 = *(v6 + 56);
    if (v7)
    {
      ++*(v7 + 2);
      FragDataLocation = WebCore::GraphicsContextGLANGLE::getFragDataLocation(v7, a2, a3);
      if (*(v7 + 2) == 1)
      {
        (*(*v7 + 16))(v7);
      }

      else
      {
        --*(v7 + 2);
      }
    }

    else
    {
      FragDataLocation = WebCore::GraphicsContextGLANGLE::getFragDataLocation(0, a2, a3);
    }

    v9 = *a4;
    *a4 = 0;
    (*(*v9 + 16))(v9, FragDataLocation);
    return (*(*v9 + 8))(v9);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::isQuery(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v8 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v4 = result;
    if (a2)
    {
      v8 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v8);
    }

    v5 = *(v4 + 56);
    if (v5)
    {
      ++*(v5 + 2);
      isQuery = WebCore::GraphicsContextGLANGLE::isQuery(v5);
      if (*(v5 + 2) == 1)
      {
        (*(*v5 + 16))(v5);
      }

      else
      {
        --*(v5 + 2);
      }
    }

    else
    {
      isQuery = WebCore::GraphicsContextGLANGLE::isQuery(0);
    }

    v7 = *a3;
    *a3 = 0;
    (*(*v7 + 16))(v7, isQuery != 0);
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getQuery(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 56);
  if (v5)
  {
    ++*(v5 + 2);
    Query = WebCore::GraphicsContextGLANGLE::getQuery(v5);
    if (*(v5 + 2) == 1)
    {
      (*(*v5 + 16))(v5);
    }

    else
    {
      --*(v5 + 2);
    }
  }

  else
  {
    Query = WebCore::GraphicsContextGLANGLE::getQuery(0);
  }

  v7 = *a4;
  *a4 = 0;
  (*(*v7 + 16))(v7, Query);
  v8 = *(*v7 + 8);

  return v8(v7);
}

uint64_t WebKit::RemoteGraphicsContextGL::getQueryObjectui(uint64_t result, unsigned int a2, unsigned int a3, uint64_t *a4)
{
  v9 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v5 = result;
    if (a2)
    {
      v9 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v9);
    }

    v6 = *(v5 + 56);
    if (v6)
    {
      ++*(v6 + 2);
      QueryObjectui = WebCore::GraphicsContextGLANGLE::getQueryObjectui(v6);
      if (*(v6 + 2) == 1)
      {
        (*(*v6 + 16))(v6);
      }

      else
      {
        --*(v6 + 2);
      }
    }

    else
    {
      QueryObjectui = WebCore::GraphicsContextGLANGLE::getQueryObjectui(0);
    }

    v8 = *a4;
    *a4 = 0;
    (*(*v8 + 16))(v8, QueryObjectui);
    return (*(*v8 + 8))(v8);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::isSampler(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v8 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v4 = result;
    if (a2)
    {
      v8 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v8);
    }

    v5 = *(v4 + 56);
    if (v5)
    {
      ++*(v5 + 2);
      isSampler = WebCore::GraphicsContextGLANGLE::isSampler(v5);
      if (*(v5 + 2) == 1)
      {
        (*(*v5 + 16))(v5);
      }

      else
      {
        --*(v5 + 2);
      }
    }

    else
    {
      isSampler = WebCore::GraphicsContextGLANGLE::isSampler(0);
    }

    v7 = *a3;
    *a3 = 0;
    (*(*v7 + 16))(v7, isSampler != 0);
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getSamplerParameterf(uint64_t result, unsigned int a2, unsigned int a3, uint64_t *a4)
{
  v11 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v5 = result;
    if (a2)
    {
      v11 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v11);
    }

    v6 = *(v5 + 56);
    if (v6)
    {
      ++*(v6 + 2);
      WebCore::GraphicsContextGLANGLE::getSamplerParameterf(v6);
      v8 = v7;
      if (*(v6 + 2) == 1)
      {
        (*(*v6 + 16))(v6);
      }

      else
      {
        --*(v6 + 2);
      }
    }

    else
    {
      WebCore::GraphicsContextGLANGLE::getSamplerParameterf(0);
      v8 = v10;
    }

    v9 = *a4;
    *a4 = 0;
    (*(*v9 + 16))(v9, v8);
    return (*(*v9 + 8))(v9);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getSamplerParameteri(uint64_t result, unsigned int a2, unsigned int a3, uint64_t *a4)
{
  v9 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v5 = result;
    if (a2)
    {
      v9 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v9);
    }

    v6 = *(v5 + 56);
    if (v6)
    {
      ++*(v6 + 2);
      SamplerParameteri = WebCore::GraphicsContextGLANGLE::getSamplerParameteri(v6);
      if (*(v6 + 2) == 1)
      {
        (*(*v6 + 16))(v6);
      }

      else
      {
        --*(v6 + 2);
      }
    }

    else
    {
      SamplerParameteri = WebCore::GraphicsContextGLANGLE::getSamplerParameteri(0);
    }

    v8 = *a4;
    *a4 = 0;
    (*(*v8 + 16))(v8, SamplerParameteri);
    return (*(*v8 + 8))(v8);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::fenceSync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 56);
  if (v5)
  {
    ++*(v5 + 2);
    v6 = WebCore::GraphicsContextGLANGLE::fenceSync(v5);
    if (*(v5 + 2) == 1)
    {
      (*(*v5 + 16))(v5);
    }

    else
    {
      --*(v5 + 2);
    }
  }

  else
  {
    v6 = WebCore::GraphicsContextGLANGLE::fenceSync(0);
  }

  v7 = *a4;
  *a4 = 0;
  (*(*v7 + 16))(v7, v6);
  v8 = *(*v7 + 8);

  return v8(v7);
}

uint64_t WebKit::RemoteGraphicsContextGL::isSync(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    ++*(v4 + 2);
    isSync = WebCore::GraphicsContextGLANGLE::isSync(v4, a2);
    if (*(v4 + 2) == 1)
    {
      (*(*v4 + 16))(v4);
    }

    else
    {
      --*(v4 + 2);
    }
  }

  else
  {
    isSync = WebCore::GraphicsContextGLANGLE::isSync(0, a2);
  }

  v6 = *a3;
  *a3 = 0;
  (*(*v6 + 16))(v6, isSync != 0);
  v7 = *(*v6 + 8);

  return v7(v6);
}

uint64_t WebKit::RemoteGraphicsContextGL::clientWaitSync(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    ++*(v6 + 2);
    v7 = WebCore::GraphicsContextGLANGLE::clientWaitSync(v6, a2);
    if (*(v6 + 2) == 1)
    {
      (*(*v6 + 16))(v6);
    }

    else
    {
      --*(v6 + 2);
    }
  }

  else
  {
    v7 = WebCore::GraphicsContextGLANGLE::clientWaitSync(0, a2);
  }

  v8 = *a5;
  *a5 = 0;
  (*(*v8 + 16))(v8, v7);
  v9 = *(*v8 + 8);

  return v9(v8);
}

uint64_t WebKit::RemoteGraphicsContextGL::getSynci(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 56);
  if (v5)
  {
    ++*(v5 + 2);
    Synci = WebCore::GraphicsContextGLANGLE::getSynci(v5, a2);
    if (*(v5 + 2) == 1)
    {
      (*(*v5 + 16))(v5);
    }

    else
    {
      --*(v5 + 2);
    }
  }

  else
  {
    Synci = WebCore::GraphicsContextGLANGLE::getSynci(0, a2);
  }

  v7 = *a4;
  *a4 = 0;
  (*(*v7 + 16))(v7, Synci);
  v8 = *(*v7 + 8);

  return v8(v7);
}

uint64_t WebKit::RemoteGraphicsContextGL::isTransformFeedback(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v8 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v4 = result;
    if (a2)
    {
      v8 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v8);
    }

    v5 = *(v4 + 56);
    if (v5)
    {
      ++*(v5 + 2);
      isTransformFeedback = WebCore::GraphicsContextGLANGLE::isTransformFeedback(v5);
      if (*(v5 + 2) == 1)
      {
        (*(*v5 + 16))(v5);
      }

      else
      {
        --*(v5 + 2);
      }
    }

    else
    {
      isTransformFeedback = WebCore::GraphicsContextGLANGLE::isTransformFeedback(0);
    }

    v7 = *a3;
    *a3 = 0;
    (*(*v7 + 16))(v7, isTransformFeedback != 0);
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t *WebKit::RemoteGraphicsContextGL::getTransformFeedbackVarying(uint64_t *result, unsigned int a2, uint64_t a3, uint64_t *a4)
{
  v10 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v5 = result;
    if (a2)
    {
      v10 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(result + 27, &v10);
    }

    v9[0] = 0;
    v9[1] = 0;
    v6 = v5[7];
    if (v6)
    {
      ++v6[2];
      WebCore::GraphicsContextGLANGLE::getTransformFeedbackVarying();
      if (v6[2] == 1)
      {
        (*(*v6 + 16))(v6);
      }

      else
      {
        --v6[2];
      }
    }

    else
    {
      WebCore::GraphicsContextGLANGLE::getTransformFeedbackVarying();
    }

    v7 = *a4;
    *a4 = 0;
    (*(*v7 + 16))(v7, v9);
    (*(*v7 + 8))(v7);
    result = v9[0];
    v9[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  return result;
}

uint64_t *WebKit::RemoteGraphicsContextGL::getUniformIndices(uint64_t *result, unsigned int a2, uint64_t a3, uint64_t *a4)
{
  v13 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v5 = result;
    if (a2)
    {
      v13 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(result + 27, &v13);
    }

    v6 = v5[7];
    if (v6)
    {
      ++v6[2];
    }

    WebCore::GraphicsContextGLANGLE::getUniformIndices();
    v11 = v9;
    v12 = v10;
    if (v6)
    {
      if (v6[2] == 1)
      {
        (*(*v6 + 16))(v6);
      }

      else
      {
        --v6[2];
      }
    }

    v7 = *a4;
    *a4 = 0;
    (*(*v7 + 16))(v7, &v11);
    (*(*v7 + 8))(v7);
    result = v11;
    if (v11)
    {
      v11 = 0;
      LODWORD(v12) = 0;
      return WTF::fastFree(result, v8);
    }
  }

  return result;
}

uint64_t *WebKit::RemoteGraphicsContextGL::getActiveUniforms(uint64_t *result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v14 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v6 = result;
    if (a2)
    {
      v14 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(result + 27, &v14);
    }

    v7 = v6[7];
    if (v7)
    {
      ++v7[2];
    }

    WebCore::GraphicsContextGLANGLE::getActiveUniforms();
    v12 = v10;
    v13 = v11;
    if (v7)
    {
      if (v7[2] == 1)
      {
        (*(*v7 + 16))(v7);
      }

      else
      {
        --v7[2];
      }
    }

    v8 = *a5;
    *a5 = 0;
    (*(*v8 + 16))(v8, &v12);
    (*(*v8 + 8))(v8);
    result = v12;
    if (v12)
    {
      v12 = 0;
      LODWORD(v13) = 0;
      return WTF::fastFree(result, v9);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getUniformBlockIndex(uint64_t result, uint64_t a2, WTF::String *a3, uint64_t *a4)
{
  v10 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v6 = result;
    if (a2)
    {
      a2 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v10);
      v10 = a2;
    }

    v7 = *(v6 + 56);
    if (v7)
    {
      ++*(v7 + 2);
      UniformBlockIndex = WebCore::GraphicsContextGLANGLE::getUniformBlockIndex(v7, a2, a3);
      if (*(v7 + 2) == 1)
      {
        (*(*v7 + 16))(v7);
      }

      else
      {
        --*(v7 + 2);
      }
    }

    else
    {
      UniformBlockIndex = WebCore::GraphicsContextGLANGLE::getUniformBlockIndex(0, a2, a3);
    }

    v9 = *a4;
    *a4 = 0;
    (*(*v9 + 16))(v9, UniformBlockIndex);
    return (*(*v9 + 8))(v9);
  }

  return result;
}

uint64_t *WebKit::RemoteGraphicsContextGL::getActiveUniformBlockName(uint64_t *result, unsigned int a2, unsigned int a3, uint64_t *a4)
{
  v11 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v5 = result;
    if (a2)
    {
      v11 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(result + 27, &v11);
    }

    v6 = v5[7];
    if (v6)
    {
      ++*(v6 + 2);
      WebCore::GraphicsContextGLANGLE::getActiveUniformBlockName(v6);
      v10 = v9;
      if (*(v6 + 2) == 1)
      {
        (*(*v6 + 16))(v6);
      }

      else
      {
        --*(v6 + 2);
      }
    }

    else
    {
      WebCore::GraphicsContextGLANGLE::getActiveUniformBlockName(0);
      v10 = v9;
    }

    v7 = *a4;
    *a4 = 0;
    (*(*v7 + 16))(v7, &v10);
    (*(*v7 + 8))(v7);
    result = v10;
    v10 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getActiveUniformBlockiv(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t *a6)
{
  v16 = a2;
  if (a2 > 0xFFFFFFFD)
  {
    return result;
  }

  v8 = result;
  if (a2)
  {
    v16 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v16);
  }

  v14 = v15;
  if (a5 >> 30)
  {
    v9 = 4;
  }

  else
  {
    v9 = a5;
  }

  if (v9 >= 5)
  {
    v10 = WTF::fastMalloc((4 * v9));
    v14 = v10;
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = v15;
  if (v9)
  {
LABEL_11:
    bzero(v10, 4 * v9);
  }

LABEL_12:
  v11 = *(v8 + 56);
  if (v11)
  {
    ++v11[2];
    WebCore::GraphicsContextGLANGLE::getActiveUniformBlockiv();
    if (v11[2] == 1)
    {
      (*(*v11 + 16))(v11);
    }

    else
    {
      --v11[2];
    }
  }

  else
  {
    WebCore::GraphicsContextGLANGLE::getActiveUniformBlockiv();
  }

  v12 = *a6;
  *a6 = 0;
  (*(*v12 + 16))(v12, v14, v9);
  (*(*v12 + 8))(v12);
  result = v14;
  if (v15 != v14)
  {
    if (v14)
    {
      return WTF::fastFree(v14, v13);
    }
  }

  return result;
}

uint64_t *WebKit::RemoteGraphicsContextGL::getTranslatedShaderSourceANGLE(uint64_t *result, uint64_t a2, uint64_t *a3)
{
  v11 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v4 = result;
    if (a2)
    {
      a2 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(result + 27, &v11);
      v11 = a2;
    }

    v5 = v4[7];
    if (v5)
    {
      ++v5[2];
    }

    (*(*v5 + 1984))(&v9, v5, a2);
    v6 = v9;
    v9 = 0;
    v10 = v6;
    if (v5[2] == 1)
    {
      (*(*v5 + 16))(v5);
    }

    else
    {
      --v5[2];
    }

    v7 = *a3;
    *a3 = 0;
    (*(*v7 + 16))(v7, &v10);
    (*(*v7 + 8))(v7);
    result = v10;
    v10 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::isQueryEXT(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v8 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v4 = result;
    if (a2)
    {
      v8 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v8);
    }

    v5 = *(v4 + 56);
    if (v5)
    {
      ++*(v5 + 2);
      isQueryEXT = WebCore::GraphicsContextGLANGLE::isQueryEXT(v5);
      if (*(v5 + 2) == 1)
      {
        (*(*v5 + 16))(v5);
      }

      else
      {
        --*(v5 + 2);
      }
    }

    else
    {
      isQueryEXT = WebCore::GraphicsContextGLANGLE::isQueryEXT(0);
    }

    v7 = *a3;
    *a3 = 0;
    (*(*v7 + 16))(v7, isQueryEXT != 0);
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getQueryiEXT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 56);
  if (v5)
  {
    ++*(v5 + 2);
    QueryiEXT = WebCore::GraphicsContextGLANGLE::getQueryiEXT(v5);
    if (*(v5 + 2) == 1)
    {
      (*(*v5 + 16))(v5);
    }

    else
    {
      --*(v5 + 2);
    }
  }

  else
  {
    QueryiEXT = WebCore::GraphicsContextGLANGLE::getQueryiEXT(0);
  }

  v7 = *a4;
  *a4 = 0;
  (*(*v7 + 16))(v7, QueryiEXT);
  v8 = *(*v7 + 8);

  return v8(v7);
}

uint64_t WebKit::RemoteGraphicsContextGL::getQueryObjectiEXT(uint64_t result, unsigned int a2, unsigned int a3, uint64_t *a4)
{
  v9 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v5 = result;
    if (a2)
    {
      v9 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v9);
    }

    v6 = *(v5 + 56);
    if (v6)
    {
      ++*(v6 + 2);
      QueryObjectiEXT = WebCore::GraphicsContextGLANGLE::getQueryObjectiEXT(v6);
      if (*(v6 + 2) == 1)
      {
        (*(*v6 + 16))(v6);
      }

      else
      {
        --*(v6 + 2);
      }
    }

    else
    {
      QueryObjectiEXT = WebCore::GraphicsContextGLANGLE::getQueryObjectiEXT(0);
    }

    v8 = *a4;
    *a4 = 0;
    (*(*v8 + 16))(v8, QueryObjectiEXT);
    return (*(*v8 + 8))(v8);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getQueryObjectui64EXT(uint64_t result, unsigned int a2, unsigned int a3, uint64_t *a4)
{
  v9 = a2;
  if (a2 <= 0xFFFFFFFD)
  {
    v5 = result;
    if (a2)
    {
      v9 = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>((result + 216), &v9);
    }

    v6 = *(v5 + 56);
    if (v6)
    {
      ++*(v6 + 2);
      QueryObjectui64EXT = WebCore::GraphicsContextGLANGLE::getQueryObjectui64EXT(v6);
      if (*(v6 + 2) == 1)
      {
        (*(*v6 + 16))(v6);
      }

      else
      {
        --*(v6 + 2);
      }
    }

    else
    {
      QueryObjectui64EXT = WebCore::GraphicsContextGLANGLE::getQueryObjectui64EXT(0);
    }

    v8 = *a4;
    *a4 = 0;
    (*(*v8 + 16))(v8, QueryObjectui64EXT);
    return (*(*v8 + 8))(v8);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getInteger64EXT(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    ++*(v4 + 2);
    Integer64EXT = WebCore::GraphicsContextGLANGLE::getInteger64EXT(v4);
    if (*(v4 + 2) == 1)
    {
      (*(*v4 + 16))(v4);
    }

    else
    {
      --*(v4 + 2);
    }
  }

  else
  {
    Integer64EXT = WebCore::GraphicsContextGLANGLE::getInteger64EXT(0);
  }

  v6 = *a3;
  *a3 = 0;
  (*(*v6 + 16))(v6, Integer64EXT);
  v7 = *(*v6 + 8);

  return v7(v6);
}

uint64_t WebKit::RemoteGraphicsContextGL::getInternalformativ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t *a6)
{
  v14 = v15;
  if (a5 >> 30)
  {
    v8 = 4;
  }

  else
  {
    v8 = a5;
  }

  if (v8 < 5)
  {
    v9 = v15;
    if (!v8)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v9 = WTF::fastMalloc((4 * v8));
  v14 = v9;
  if (v8)
  {
LABEL_8:
    bzero(v9, 4 * v8);
  }

LABEL_9:
  v10 = *(a1 + 56);
  if (v10)
  {
    ++v10[2];
    WebCore::GraphicsContextGLANGLE::getInternalformativ();
    if (v10[2] == 1)
    {
      (*(*v10 + 16))(v10);
    }

    else
    {
      --v10[2];
    }
  }

  else
  {
    WebCore::GraphicsContextGLANGLE::getInternalformativ();
  }

  v11 = *a6;
  *a6 = 0;
  (*(*v11 + 16))(v11, v14, v8);
  (*(*v11 + 8))(v11);
  result = v14;
  if (v15 != v14)
  {
    if (v14)
    {
      return WTF::fastFree(v14, v12);
    }
  }

  return result;
}

uint64_t WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(uint64_t *a1, int *a2)
{
  v2 = *a2;
  if (*a2 == -2 || v2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D91A954);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 8);
    v5 = 9 * ((v2 + ~(v2 << 15)) ^ ((v2 + ~(v2 << 15)) >> 10));
    v6 = (v5 ^ (v5 >> 6)) + ~((v5 ^ (v5 >> 6)) << 11);
    v7 = v4 & (v6 ^ HIWORD(v6));
    v8 = *(v3 + 8 * v7);
    if (v8 == v2)
    {
      return *(v3 + 8 * v7 + 4);
    }

    v9 = 1;
    while (v8 != -1)
    {
      v7 = (v7 + v9) & v4;
      v8 = *(v3 + 8 * v7);
      ++v9;
      if (v8 == v2)
      {
        return *(v3 + 8 * v7 + 4);
      }
    }
  }

  return 0;
}

void *WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<unsigned int &>(void *result, uint64_t *a2, int *a3, _DWORD *a4)
{
  v4 = *a3;
  if (*a3 == -2 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D91AB08);
  }

  v8 = result;
  v9 = *a2;
  if (!*a2)
  {
    result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned int>>,WTF::IntHash<unsigned int>,WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::expand(a2, 0);
    v9 = *a2;
    v4 = *a3;
  }

  v10 = *(v9 - 8);
  v11 = 9 * ((v4 + ~(v4 << 15)) ^ ((v4 + ~(v4 << 15)) >> 10));
  v12 = (v11 ^ (v11 >> 6)) + ~((v11 ^ (v11 >> 6)) << 11);
  v13 = (v12 ^ HIWORD(v12)) & v10;
  v14 = (v9 + 8 * v13);
  v15 = *v14;
  if (*v14 != -1)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      if (v15 == v4)
      {
        v22 = 0;
        v23 = v9 + 8 * *(v9 - 4);
        goto LABEL_20;
      }

      if (v15 == -2)
      {
        v16 = v14;
      }

      v13 = (v13 + v17) & v10;
      v14 = (v9 + 8 * v13);
      v15 = *v14;
      ++v17;
    }

    while (*v14 != -1);
    if (v16)
    {
      *v16 = 0xFFFFFFFFLL;
      --*(v9 - 16);
      v4 = *a3;
      v14 = v16;
    }
  }

  *v14 = v4;
  v14[1] = *a4;
  v18 = *(v9 - 16);
  v19 = *(v9 - 12) + 1;
  *(v9 - 12) = v19;
  v20 = (v18 + v19);
  v21 = *(v9 - 4);
  if (v21 > 0x400)
  {
    if (v21 <= 2 * v20)
    {
LABEL_15:
      result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned int>>,WTF::IntHash<unsigned int>,WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::expand(a2, v14);
      v14 = result;
      v9 = *a2;
      if (*a2)
      {
        v21 = *(v9 - 4);
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else if (3 * v21 <= 4 * v20)
  {
    goto LABEL_15;
  }

  v23 = v9 + 8 * v21;
  v22 = 1;
LABEL_20:
  *v8 = v14;
  v8[1] = v23;
  *(v8 + 16) = v22;
  return result;
}

void *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned int>>,WTF::IntHash<unsigned int>,WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::expand(uint64_t *a1, _DWORD *a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = v4 << (6 * *(v3 - 12) >= (2 * v4));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned int>>,WTF::IntHash<unsigned int>,WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned int>>,WTF::IntHash<unsigned int>,WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, _DWORD *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastMalloc((8 * a2 + 16));
  if (a2)
  {
    v11 = a2;
    v12 = v9 + 4;
    do
    {
      *v12++ = 0xFFFFFFFFLL;
      --v11;
    }

    while (v11);
  }

  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = (v6 + 8 * v13);
      if (*v15 <= 0xFFFFFFFD)
      {
        v16 = *a1;
        if (*a1)
        {
          v17 = *(v16 - 8);
        }

        else
        {
          v17 = 0;
        }

        v18 = 0;
        v19 = 9 * ((*v15 + ~(*v15 << 15)) ^ ((*v15 + ~(*v15 << 15)) >> 10));
        v20 = ((v19 ^ (v19 >> 6)) + ~((v19 ^ (v19 >> 6)) << 11)) ^ (((v19 ^ (v19 >> 6)) + ~((v19 ^ (v19 >> 6)) << 11)) >> 16);
        do
        {
          v21 = v20 & v17;
          v20 = ++v18 + v21;
        }

        while (*(v16 + 8 * v21) != -1);
        v22 = (v16 + 8 * v21);
        *v22 = *v15;
        if (v15 == a3)
        {
          v14 = v22;
        }
      }

      ++v13;
    }

    while (v13 != v7);
  }

  else
  {
    v14 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v14;
}

uint64_t WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(uint64_t *a1, int a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (a2 == -2 || a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D91ADC4);
  }

  v3 = *(v2 - 8);
  v4 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
  v5 = (v4 ^ (v4 >> 6)) + ~((v4 ^ (v4 >> 6)) << 11);
  v6 = v3 & (v5 ^ HIWORD(v5));
  v7 = *(v2 + 8 * v6);
  if (v7 != a2)
  {
    v8 = 1;
    while (v7 != -1)
    {
      v6 = (v6 + v8) & v3;
      v7 = *(v2 + 8 * v6);
      ++v8;
      if (v7 == a2)
      {
        goto LABEL_10;
      }
    }

    v6 = *(v2 - 4);
  }

LABEL_10:
  v9 = *(v2 - 4);
  if (v6 == v9)
  {
    return 0;
  }

  v12 = (v2 + 8 * v6);
  v10 = v12[1];
  *v12 = -2;
  v13 = vadd_s32(*(v2 - 16), 0xFFFFFFFF00000001);
  *(v2 - 16) = v13;
  if (6 * v13.i32[1] < v9 && v9 >= 9)
  {
    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,unsigned int>>,WTF::IntHash<unsigned int>,WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::FastMalloc>::rehash(a1, v9 >> 1, 0);
  }

  return v10;
}

unint64_t IPC::ArgumentCoder<std::tuple<unsigned int,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = *a1;
  v6 = v4 - *a1;
  v7 = v3 >= v6;
  v8 = v3 - v6;
  if (!v7 || v8 <= 3)
  {
    *a1 = 0;
    a1[1] = 0;
    v15 = a1;
    v14 = a1[3];
    if (v14)
    {
      if (v3)
      {
        (*(*v14 + 16))(v14);
        v5 = *v15;
        v3 = v15[1];
        goto LABEL_12;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_12:
    *v15 = 0;
    v15[1] = 0;
    result = v15[3];
    if (result && v3)
    {
      result = (*(*result + 16))(result, v5);
    }

    goto LABEL_13;
  }

  a1[2] = (v4 + 1);
  if (!v4)
  {
    v15 = a1;
    goto LABEL_12;
  }

  v10 = *v4;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v12 & 1) == 0)
  {
LABEL_13:
    v13 = 0;
    *a2 = 0;
    goto LABEL_14;
  }

  *a2 = v10;
  *(a2 + 8) = result;
  v13 = 1;
LABEL_14:
  *(a2 + 16) = v13;
  return result;
}

unint64_t IPC::Decoder::decodeSpan<unsigned int>(IPC::Decoder *a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = (*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v4 = v3 - *a1;
  v5 = 4 * a2;
  v7 = v2 >= v4;
  v6 = v2 - v4;
  v7 = v7 && v6 >= v5;
  if (v7)
  {
    *(a1 + 2) = v3 + v5;
  }

  else
  {
    IPC::Decoder::markInvalid(a1);
    return 0;
  }

  return v3;
}

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WebKit::WebGPU::ComputePipelineDescriptor,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebKit::WebGPU::ComputePipelineDescriptor,void>::decode(a2, &v18);
  if (v24)
  {
    while (1)
    {
      v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
      v6 = v5;
      if ((v5 & 1) == 0)
      {
        break;
      }

      if (v24)
      {
        v7 = v18;
        v18 = 0;
        *a1 = v7;
        *(a1 + 8) = v19;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        if (v21 == 1)
        {
          v8 = v20;
          v20 = 0;
          *(a1 + 24) = v8;
          *(a1 + 32) = 1;
        }

        *(a1 + 40) = v22;
        v9 = v23;
        v22 = 0;
        v23 = 0;
        *(a1 + 48) = v9;
        *(a1 + 56) = v4;
        *(a1 + 64) = 1;
        goto LABEL_8;
      }

      __break(1u);
LABEL_31:
      (*(*v4 + 16))(v4, v5);
      if ((v24 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    *a1 = 0;
    v10 = v24;
    *(a1 + 64) = 0;
    if ((v10 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_8:
    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, v5);
    if (v21 == 1)
    {
      v12 = v20;
      v20 = 0;
      if (v12)
      {
        if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v11);
        }
      }
    }

    result = v18;
    v18 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v11);
      if (v6)
      {
        return result;
      }
    }

    else if (v6)
    {
      return result;
    }
  }

  else
  {
    v5 = *a2;
    v14 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v4 = *(a2 + 3);
    if (v4)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      goto LABEL_31;
    }

LABEL_23:
    *a1 = 0;
    *(a1 + 64) = 0;
  }

LABEL_24:
  v16 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v16)
  {
    v17 = *(*result + 16);

    return v17();
  }

  return result;
}

void IPC::Decoder::decode<std::tuple<WebKit::WebGPU::RenderPipelineDescriptor,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebKit::WebGPU::RenderPipelineDescriptor,void>::decode(a2, &v21);
  if (v37)
  {
    while (1)
    {
      v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
      if ((v5 & 1) == 0)
      {
        break;
      }

      if (v37)
      {
        v6 = v21;
        v21 = 0;
        *a1 = v6;
        *(&v7 + 1) = *(&v22 + 1);
        *(a1 + 8) = v22;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        if (v24 == 1)
        {
          v8 = v23;
          v23 = 0;
          *(a1 + 24) = v8;
          *(a1 + 32) = 1;
        }

        *&v7 = 0;
        v9 = *(&v25 + 1);
        *(a1 + 40) = v25;
        *(a1 + 48) = v9;
        v10 = v26;
        v25 = v7;
        v26 = v7;
        *(a1 + 56) = v10;
        v11 = v29;
        *(a1 + 88) = v28;
        *(a1 + 104) = v11;
        *(a1 + 120) = *v30;
        *(a1 + 133) = *&v30[13];
        *(&v11 + 1) = *(&v27 + 1);
        *(a1 + 72) = v27;
        *(a1 + 144) = 0;
        *(a1 + 200) = 0;
        if (v36 == 1)
        {
          *(a1 + 144) = v31;
          *(a1 + 152) = 0;
          *(a1 + 160) = 0;
          if (v33 == 1)
          {
            v12 = v32;
            v32 = 0;
            *(a1 + 152) = v12;
            *(a1 + 160) = 1;
          }

          *&v11 = 0;
          v13 = v34;
          v34 = v11;
          *(a1 + 168) = v13;
          v14 = v35;
          v35 = v11;
          *(a1 + 184) = v14;
          *(a1 + 200) = 1;
        }

        *(a1 + 208) = v4;
        *(a1 + 216) = 1;
        WebKit::WebGPU::RenderPipelineDescriptor::~RenderPipelineDescriptor(&v21, v5);
        return;
      }

      __break(1u);
LABEL_26:
      (*(*v4 + 16))(v4, v5);
      if ((v37 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    *a1 = 0;
    v15 = v37;
    *(a1 + 216) = 0;
    if (v15)
    {
      WebKit::WebGPU::RenderPipelineDescriptor::~RenderPipelineDescriptor(&v21, v5);
    }
  }

  else
  {
    v5 = *a2;
    v19 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v4 = *(a2 + 3);
    if (v4)
    {
      v20 = v19 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      goto LABEL_26;
    }

LABEL_24:
    *a1 = 0;
    *(a1 + 216) = 0;
  }

  v16 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v17 = *(a2 + 3);
  if (v17 && v16)
  {
    v18 = *(*v17 + 16);

    v18();
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12RemoteDevice26CreateComputePipelineAsyncENS2_22StreamServerConnectionEN6WebKit12RemoteDeviceES9_FvRKNS8_6WebGPU25ComputePipelineDescriptorENS_23ObjectIdentifierGenericINS8_20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbONS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EC468;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12RemoteDevice26CreateComputePipelineAsyncENS2_22StreamServerConnectionEN6WebKit12RemoteDeviceES9_FvRKNS8_6WebGPU25ComputePipelineDescriptorENS_23ObjectIdentifierGenericINS8_20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbONS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC468;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12RemoteDevice26CreateComputePipelineAsyncENS2_22StreamServerConnectionEN6WebKit12RemoteDeviceES9_FvRKNS8_6WebGPU25ComputePipelineDescriptorENS_23ObjectIdentifierGenericINS8_20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbONS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSL_EE4callEbSL_(uint64_t a1, void *a2, uint64_t *a3)
{
  v12 = a2;
  v4 = *(a1 + 8);
  v5 = *(*(a1 + 16) + 40);
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3499;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  v7 = IPC::Encoder::operator<<<BOOL>(v6, &v12);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, a3);
  IPC::Connection::sendMessageImpl(v5, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12RemoteDevice25CreateRenderPipelineAsyncENS2_22StreamServerConnectionEN6WebKit12RemoteDeviceES9_FvRKNS8_6WebGPU24RenderPipelineDescriptorENS_23ObjectIdentifierGenericINS8_20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbONS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EC490;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12RemoteDevice25CreateRenderPipelineAsyncENS2_22StreamServerConnectionEN6WebKit12RemoteDeviceES9_FvRKNS8_6WebGPU24RenderPipelineDescriptorENS_23ObjectIdentifierGenericINS8_20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbONS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC490;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12RemoteDevice25CreateRenderPipelineAsyncENS2_22StreamServerConnectionEN6WebKit12RemoteDeviceES9_FvRKNS8_6WebGPU24RenderPipelineDescriptorENS_23ObjectIdentifierGenericINS8_20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbONS_6StringEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSL_EE4callEbSL_(uint64_t a1, void *a2, uint64_t *a3)
{
  v12 = a2;
  v4 = *(a1 + 8);
  v5 = *(*(a1 + 16) + 40);
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3500;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  v7 = IPC::Encoder::operator<<<BOOL>(v6, &v12);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, a3);
  IPC::Connection::sendMessageImpl(v5, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12RemoteDevice13PopErrorScopeENS2_22StreamServerConnectionEN6WebKit12RemoteDeviceES9_FvONS_17CompletionHandlerIFvbONSt3__18optionalIN5mpark7variantIJNS8_6WebGPU16OutOfMemoryErrorENSF_15ValidationErrorENSF_13InternalErrorEEEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EC4B8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12RemoteDevice13PopErrorScopeENS2_22StreamServerConnectionEN6WebKit12RemoteDeviceES9_FvONS_17CompletionHandlerIFvbONSt3__18optionalIN5mpark7variantIJNS8_6WebGPU16OutOfMemoryErrorENSF_15ValidationErrorENSF_13InternalErrorEEEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC4B8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12RemoteDevice13PopErrorScopeENS2_22StreamServerConnectionEN6WebKit12RemoteDeviceES9_FvONS_17CompletionHandlerIFvbONSt3__18optionalIN5mpark7variantIJNS8_6WebGPU16OutOfMemoryErrorENSF_15ValidationErrorENSF_13InternalErrorEEEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSL_EE4callEbSL_(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v4 = *(a1 + 8);
  v5 = *(*(a1 + 16) + 40);
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3501;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  v7 = IPC::Encoder::operator<<<BOOL>(v6, &v12);
  IPC::ArgumentCoder<std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>>>(v7, a3);
  IPC::Connection::sendMessageImpl(v5, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

mpark *IPC::ArgumentCoder<std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>>>(IPC::Encoder *a1, uint64_t a2)
{
  if ((*(a2 + 16) & 1) == 0)
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }

  v6 = 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  if ((*(a2 + 16) & 1) == 0)
  {
    v5 = std::__throw_bad_optional_access[abi:sn200100]();
    return _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12RemoteDevice27ResolveUncapturedErrorEventENS2_22StreamServerConnectionEN6WebKit12RemoteDeviceES9_FvONS_17CompletionHandlerIFvbONSt3__18optionalIN5mpark7variantIJNS8_6WebGPU16OutOfMemoryErrorENSF_15ValidationErrorENSF_13InternalErrorEEEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSL_EED1Ev(v5);
  }

  v8 = *(a2 + 8);
  result = IPC::Encoder::operator<<<BOOL>(a1, &v8);
  if (v8 == 2)
  {
    if (*(a2 + 8) != 2)
    {
      goto LABEL_13;
    }

    return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  }

  if (v8 == 1)
  {
    if (*(a2 + 8) != 1)
    {
      goto LABEL_13;
    }

    return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  }

  if (!v8 && *(a2 + 8))
  {
LABEL_13:
    mpark::throw_bad_variant_access(result);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12RemoteDevice27ResolveUncapturedErrorEventENS2_22StreamServerConnectionEN6WebKit12RemoteDeviceES9_FvONS_17CompletionHandlerIFvbONSt3__18optionalIN5mpark7variantIJNS8_6WebGPU16OutOfMemoryErrorENSF_15ValidationErrorENSF_13InternalErrorEEEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EC4E0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12RemoteDevice27ResolveUncapturedErrorEventENS2_22StreamServerConnectionEN6WebKit12RemoteDeviceES9_FvONS_17CompletionHandlerIFvbONSt3__18optionalIN5mpark7variantIJNS8_6WebGPU16OutOfMemoryErrorENSF_15ValidationErrorENSF_13InternalErrorEEEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC4E0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12RemoteDevice27ResolveUncapturedErrorEventENS2_22StreamServerConnectionEN6WebKit12RemoteDeviceES9_FvONS_17CompletionHandlerIFvbONSt3__18optionalIN5mpark7variantIJNS8_6WebGPU16OutOfMemoryErrorENSF_15ValidationErrorENSF_13InternalErrorEEEEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSL_EE4callEbSL_(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v4 = *(a1 + 8);
  v5 = *(*(a1 + 16) + 40);
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3503;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v4;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  v7 = IPC::Encoder::operator<<<BOOL>(v6, &v12);
  IPC::ArgumentCoder<std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WebKit::WebGPU::OutOfMemoryError,WebKit::WebGPU::ValidationError,WebKit::WebGPU::InternalError>>>(v7, a3);
  IPC::Connection::sendMessageImpl(v5, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12RemoteDevice24ResolveDeviceLostPromiseENS2_22StreamServerConnectionEN6WebKit12RemoteDeviceES9_FvONS_17CompletionHandlerIFvN7WebCore6WebGPU16DeviceLostReasonEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EC508;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12RemoteDevice24ResolveDeviceLostPromiseENS2_22StreamServerConnectionEN6WebKit12RemoteDeviceES9_FvONS_17CompletionHandlerIFvN7WebCore6WebGPU16DeviceLostReasonEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC508;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages12RemoteDevice24ResolveDeviceLostPromiseENS2_22StreamServerConnectionEN6WebKit12RemoteDeviceES9_FvONS_17CompletionHandlerIFvN7WebCore6WebGPU16DeviceLostReasonEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSD_EE4callESD_(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  v4 = *(*(a1 + 16) + 40);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3502;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v3;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v5, v2);
  IPC::Connection::sendMessageImpl(v4, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<BOOL>>(IPC::Decoder *a1)
{
  result = IPC::ArgumentCoder<WebCore::HighlightVisibility,void>::decode<IPC::Decoder>(a1);
  if ((result & 0x100) == 0)
  {
    v3 = result;
    IPC::Decoder::markInvalid(a1);
    return v3;
  }

  return result;
}

void IPC::Decoder::decode<std::tuple<IPC::Semaphore>>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<std::tuple<IPC::Semaphore>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 8) & 1) == 0)
  {
    v4 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v5 = *(a1 + 3);
    if (v5 && v4 != 0)
    {
      v7 = *(*v5 + 16);

      v7();
    }
  }
}

void IPC::ArgumentCoder<std::tuple<IPC::Semaphore>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<IPC::Semaphore,void>::decode(a1, v9);
  if (v11 & 1) != 0 || ((v5 = *a1, v6 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v7 = *(a1 + 3)) != 0) ? (v8 = v6 == 0) : (v8 = 1), !v8 && ((*(*v7 + 16))(v7, v5), (v11)))
  {
    WTF::MachSendRight::MachSendRight();
    v4 = v10;
    v10 = 0;
    *(a2 + 4) = v4;
    LOBYTE(v4) = v11;
    *(a2 + 8) = 1;
    if (v4)
    {
      IPC::Semaphore::destroy(v9);
      WTF::MachSendRight::~MachSendRight(v9);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }
}

void IPC::Decoder::decode<std::tuple<WebCore::SharedMemoryHandle>>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<std::tuple<WebCore::SharedMemoryHandle>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a1);
  }
}

void IPC::ArgumentCoder<std::tuple<WebCore::SharedMemoryHandle>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WebCore::SharedMemoryHandle>(a1, v4);
  if (v6 == 1)
  {
    WTF::MachSendRight::MachSendRight();
    *(a2 + 8) = v5;
    v3 = v6;
    *(a2 + 16) = 1;
    if (v3)
    {
      WTF::MachSendRight::~MachSendRight(v4);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

unint64_t IPC::Decoder::decode<std::tuple<float,float>>(IPC::Decoder *a1)
{
  v1 = *(a1 + 1);
  v2 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v3 = *a1;
  v4 = v2 - *a1;
  v6 = v1 >= v4;
  v5 = v1 - v4;
  v6 = v6 && v5 >= 4;
  if (!v6)
  {
LABEL_14:
    v14 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v14;
    goto LABEL_15;
  }

  *(a1 + 2) = v2 + 1;
  if (v2)
  {
    v7 = *v2;
    v8 = ((v2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v9 = v8 - v3;
    v6 = v1 >= v9;
    v10 = v1 - v9;
    if (!v6 || v10 < 4)
    {
      goto LABEL_14;
    }

    *(a1 + 2) = v8 + 1;
    if (v8)
    {
      return v7 & 0xFFFFFF00 | (*v8 << 32) | v7;
    }
  }

LABEL_15:
  v13 = a1;
  IPC::Decoder::markInvalid(a1);
  IPC::Decoder::markInvalid(v13);
  return 0;
}

uint64_t IPC::Decoder::decode<std::tuple<float>>(IPC::Decoder *a1)
{
  v1 = *(a1 + 1);
  v2 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v3 = v2 - *a1;
  v4 = v1 >= v3;
  v5 = v1 - v3;
  if (v4 && v5 > 3)
  {
    *(a1 + 2) = v2 + 1;
    if (v2)
    {
      return *v2 | 0x100000000;
    }
  }

  else
  {
    v9 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v9;
  }

  v8 = a1;
  IPC::Decoder::markInvalid(a1);
  IPC::Decoder::markInvalid(v8);
  return 0;
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::FloatSize>>(IPC::Decoder *a1)
{
  result = IPC::ArgumentCoder<std::tuple<WebCore::FloatSize>,void>::decode<IPC::Decoder>(a1);
  if ((v3 & 1) == 0)
  {
    v4 = result;
    IPC::Decoder::markInvalid(a1);
    return v4;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::FloatSize>,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  if ((v3 & 1) == 0)
  {
    v6 = result;
    v4 = a1;
    v5 = v3;
    IPC::Decoder::markInvalid(v4);
    result = v6;
    v3 = v5;
  }

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<WebCore::AffineTransform>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::AffineTransform,void>::decode(a2, a1);
  if ((*(a1 + 48) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::Color>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::tuple<WebCore::Color>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 8) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::Color>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WebCore::Color>(a1, &v7);
  if (v8)
  {
    *a2 = 0;
    if (&v7 != a2)
    {
      v4 = v7;
      v7 = 0;
      *a2 = v4;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 8) = v5;
  return std::optional<WebCore::Color>::~optional(&v7, v3);
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::AffineTransform>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::AffineTransform>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 56) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::AffineTransform>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *this)
{
  v4 = *(this + 1);
  v5 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *this;
  v7 = v5 - *this;
  v12 = v4 >= v7;
  v8 = v4 - v7;
  if (!v12 || v8 <= 7)
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_16;
  }

  *(this + 2) = v5 + 1;
  if (!v5)
  {
LABEL_16:
    IPC::Decoder::markInvalid(this);
    if (*this)
    {
      __break(1u);
    }

LABEL_18:
    result = IPC::Decoder::markInvalid(this);
    *a1 = 0;
    *(a1 + 56) = 0;
    return result;
  }

  v10 = *v5;
  v11 = *v5 - 1;
  if (v6)
  {
    v12 = v11 >= 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    goto LABEL_18;
  }

  result = IPC::ArgumentCoder<WebCore::AffineTransform,void>::decode(this, v16);
  if (v17)
  {
    *a1 = v10;
    v14 = v16[1];
    *(a1 + 8) = v16[0];
    *(a1 + 24) = v14;
    *(a1 + 40) = v16[2];
    v15 = 1;
  }

  else
  {
    result = IPC::Decoder::markInvalid(this);
    v15 = 0;
    *a1 = 0;
  }

  *(a1 + 56) = v15;
  return result;
}

uint64_t IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(IPC::Decoder *a1)
{
  v1 = *(a1 + 1);
  v2 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = *a1;
  v4 = v2 - *a1;
  v8 = v1 >= v4;
  v5 = v1 - v4;
  if (!v8 || v5 <= 7)
  {
    v10 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v10;
    goto LABEL_12;
  }

  *(a1 + 2) = v2 + 1;
  if (!v2)
  {
LABEL_12:
    v11 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v11;
    if (*v11)
    {
      __break(1u);
    }

LABEL_14:
    IPC::Decoder::markInvalid(a1);
    return 0;
  }

  v7 = *v2;
  if (v3)
  {
    v8 = (v7 - 1) >= 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_14;
  }

  return v7;
}

atomic_uchar ***IPC::Decoder::decode<std::tuple<WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>,WebCore::AffineTransform>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>,WebCore::AffineTransform>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 56) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

atomic_uchar ***IPC::ArgumentCoder<std::tuple<WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>,WebCore::AffineTransform>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::Gradient,void>::decode(a2, &v9);
  if (v10)
  {
    IPC::ArgumentCoder<WebCore::AffineTransform,void>::decode(a2, v11);
    if (v12)
    {
      v5 = v9;
      v9 = 0;
      *a1 = v5;
      v6 = v11[1];
      *(a1 + 8) = v11[0];
      *(a1 + 24) = v6;
      *(a1 + 40) = v11[2];
      v7 = 1;
    }

    else
    {
      IPC::Decoder::markInvalid(a2);
      v7 = 0;
      *a1 = 0;
    }

    *(a1 + 56) = v7;
    return WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v9, v4);
  }

  else
  {
    result = IPC::Decoder::markInvalid(a2);
    *a1 = 0;
    *(a1 + 56) = 0;
  }

  return result;
}

void *IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::PatternParameters>>(uint64_t a1, uint64_t *a2)
{
  v4 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = a2[1];
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v18 = a2[3];
    if (v18)
    {
      goto LABEL_35;
    }

    v6 = 0;
LABEL_25:
    v5 = 0;
    while (1)
    {
LABEL_26:
      *a2 = 0;
      a2[1] = 0;
      v19 = a2[3];
      if (!v19)
      {
        v6 = 0;
LABEL_28:
        v5 = 0;
        goto LABEL_29;
      }

      if (!v6)
      {
        goto LABEL_28;
      }

      v18 = (*(*v19 + 16))(v19, v5);
      v5 = *a2;
      if (!*a2)
      {
        break;
      }

      __break(1u);
LABEL_35:
      if (!v6)
      {
        goto LABEL_25;
      }

      (*(*v18 + 16))(v18);
      v5 = *a2;
      v6 = a2[1];
    }

    v6 = a2[1];
    goto LABEL_29;
  }

  a2[2] = (v4 + 1);
  if (!v4)
  {
    goto LABEL_26;
  }

  v8 = *v4;
  v9 = *v4 - 1;
  if (v5)
  {
    v10 = v9 >= 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
LABEL_29:
    *a2 = 0;
    a2[1] = 0;
    v20 = a2[3];
    if (v20 && v6)
    {
      (*(*v20 + 16))(v20, v5);
    }

    goto LABEL_15;
  }

  result = IPC::ArgumentCoder<WebCore::PatternParameters,void>::decode(a2, v21);
  if (v23 & 1) != 0 || (v13 = *a2, v14 = a2[1], *a2 = 0, a2[1] = 0, (v15 = a2[3]) != 0) && v14 && (result = (*(*v15 + 16))(v15, v13), (v23))
  {
    *a1 = v8;
    v12 = v21[1];
    *(a1 + 8) = v21[0];
    *(a1 + 24) = v12;
    *(a1 + 40) = v21[2];
    *(a1 + 56) = v22;
    *(a1 + 64) = 1;
    return result;
  }

LABEL_15:
  *a1 = 0;
  *(a1 + 64) = 0;
  v16 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result && v16)
  {
    v17 = *(*result + 16);

    return v17();
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::StrokeStyle>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 1) <= &v1[-*a1])
  {
    v5 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v5;
    goto LABEL_7;
  }

  *(a1 + 2) = v1 + 1;
  if (!v1)
  {
LABEL_7:
    v6 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v6;
    goto LABEL_8;
  }

  v2 = *v1;
  if (v2 >= 6)
  {
LABEL_8:
    IPC::Decoder::markInvalid(a1);
    v3 = 0;
    v2 = 0;
    return v2 | (v3 << 8);
  }

  v3 = 1;
  return v2 | (v3 << 8);
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::CompositeMode>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WebCore::CompositeMode,void>::decode(a1);
  if ((v2 & 0x10000) == 0)
  {
    v4 = v2;
    IPC::Decoder::markInvalid(a1);
    IPC::Decoder::markInvalid(a1);
    v2 = v4;
  }

  return v2 & 0x1FF00 | (v2 & ((v2 << 15 >> 8) >> 23));
}

unsigned int *IPC::Decoder::decode<WebCore::GraphicsDropShadow>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::GraphicsDropShadow,void>::decode(a2, a1);
  if ((*(a1 + 32) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t mpark::variant<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>::variant(uint64_t result, uint64_t *a2)
{
  *result = 0;
  *(result + 80) = -1;
  if (*(a2 + 80) > 1u)
  {
    if (*(a2 + 80) != 2)
    {
      return result;
    }

    *result = *a2;
    v4 = *(a2 + 1);
    v5 = *(a2 + 2);
    v6 = *(a2 + 4);
    *(result + 48) = *(a2 + 3);
    *(result + 64) = v6;
    *(result + 16) = v4;
    *(result + 32) = v5;
  }

  else if (*(a2 + 80))
  {
    *result = *a2;
  }

  else
  {
    v2 = *a2;
    *(result + 8) = *(a2 + 2);
    *result = v2;
    *(result + 16) = 0;
    if (result != a2)
    {
      v3 = a2[2];
      a2[2] = 0;
      *(result + 16) = v3;
    }

    *(result + 24) = a2[3];
  }

  *(result + 80) = *(a2 + 80);
  return result;
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>,(mpark::detail::Trait)1>::~move_constructor(uint64_t result, void *a2)
{
  if (!*(result + 80))
  {
    v2 = *(result + 16);
    if ((v2 & 0x8000000000000) != 0)
    {
      v3 = (v2 & 0xFFFFFFFFFFFFLL);
      add = atomic_fetch_add(v3, 0xFFFFFFFF);
      if (add == 1)
      {
        atomic_store(add, v3);
        v5 = result;
        WTF::fastFree(v3, a2);
        result = v5;
      }
    }
  }

  *(result + 80) = -1;
  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::OptionSet<WebCore::TextDrawingMode>>>(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v12 = a1;
    v7 = a1[3];
    if (v7)
    {
      if (v1)
      {
        (*(*v7 + 16))(v7);
        v3 = *v12;
        v1 = v12[1];
LABEL_9:
        *v12 = 0;
        v12[1] = 0;
        v8 = v12[3];
        if (v8)
        {
          if (v1)
          {
            (*(*v8 + 16))(v8, v3);
            a1 = v12;
            v3 = *v12;
            v1 = v12[1];
            goto LABEL_12;
          }
        }

        else
        {
          v1 = 0;
        }

        v3 = 0;
        a1 = v12;
        goto LABEL_12;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_9;
  }

  a1[2] = v2 + 1;
  if (!v2)
  {
    v12 = a1;
    goto LABEL_9;
  }

  v4 = *v2;
  if (v4 < 4)
  {
    LODWORD(v5) = 256;
    return v4 | v5;
  }

LABEL_12:
  *a1 = 0;
  a1[1] = 0;
  v5 = a1[3];
  if (!v5)
  {
LABEL_13:
    v4 = 0;
    return v4 | v5;
  }

  v13 = a1;
  if (!v1)
  {
LABEL_18:
    LODWORD(v5) = 0;
    goto LABEL_13;
  }

  (*(*v5 + 16))(v5, v3);
  LODWORD(v5) = 0;
  v9 = *v13;
  v10 = v13[1];
  v11 = v13[3];
  *v13 = 0;
  v13[1] = 0;
  v4 = 0;
  if (v11 && v10)
  {
    (*(*v11 + 16))(v11, v9);
    goto LABEL_18;
  }

  return v4 | v5;
}

uint64_t *WTF::EmbeddedFixedVector<double,WTF::FastMalloc>::create<double const,18446744073709551615ul>@<X0>(uint64_t *result@<X0>, unint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  if (HIDWORD(a2))
  {
    __break(0xC471u);
  }

  else
  {
    v5 = result;
    v6 = 8 * a2;
    result = WTF::fastMalloc((8 * a2 + 8));
    *result = a2;
    if (a2)
    {
      v7 = result + 1;
      do
      {
        v8 = *v5++;
        *v7++ = v8;
        v6 -= 8;
      }

      while (v6);
    }

    *a3 = result;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::FloatRect>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a1, &v6);
  if (v7)
  {
    *a2 = v6;
    v5 = 1;
  }

  else
  {
    result = IPC::Decoder::markInvalid(a1);
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v5;
  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::FloatRoundedRect>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::decode(a2, v7);
  if (v8 & 1) != 0 || (result = IPC::Decoder::markInvalid(a2), (v8))
  {
    v5 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7[2];
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a1 = 0;
  }

  *(a1 + 48) = v6;
  return result;
}

WTF *IPC::Decoder::decode<WebCore::Path>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::Path,void>::decode(a2, a2, a1);
  if ((*(a1 + 64) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<IPC::ArrayReferenceTuple<unsigned short,WebCore::FloatSize>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 1);
  v3 = ((*(result + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = v3 - *result;
  v5 = v2 >= v4;
  v6 = v2 - v4;
  if (!v5 || v6 <= 7)
  {
    v10 = a2;
    v11 = result;
    IPC::Decoder::markInvalid(result);
    a2 = v10;
    result = v11;
LABEL_14:
    v9 = a2;
    result = IPC::Decoder::markInvalid(result);
    *v9 = 0;
    v9[24] = 0;
    return result;
  }

  *(result + 2) = v3 + 1;
  if (!v3)
  {
    goto LABEL_14;
  }

  v8 = *v3;
  if (*v3)
  {
    if (v8 >> 61)
    {
      *a2 = 0;
      *(a2 + 24) = 0;
    }

    else
    {

      return IPC::ArgumentCoder<IPC::ArrayReferenceTuple<unsigned short,WebCore::FloatSize>,void>::decode<IPC::Decoder>(result, v8, a2);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<IPC::ArrayReferenceTuple<unsigned short,WebCore::FloatSize>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v3 = *(result + 1);
  v4 = (*(result + 2) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v5 = v4 - *result;
  v6 = 2 * a2;
  v8 = v3 >= v5;
  v7 = v3 - v5;
  v8 = v8 && v7 >= v6;
  if (!v8)
  {
    v9 = a3;
    result = IPC::Decoder::markInvalid(result);
    a3 = v9;
LABEL_10:
    *a3 = 0;
    a3[24] = 0;
    return result;
  }

  *(result + 2) = v4 + v6;
  if (!v4)
  {
    goto LABEL_10;
  }

  v10 = v4;
  return IPC::ArgumentCoder<IPC::ArrayReferenceTuple<unsigned short,WebCore::FloatSize>,void>::decode<IPC::Decoder,unsigned short const*>(result, a2, &v10, a3);
}

IPC::Decoder *IPC::ArgumentCoder<IPC::ArrayReferenceTuple<unsigned short,WebCore::FloatSize>,void>::decode<IPC::Decoder,unsigned short const*>@<X0>(IPC::Decoder *result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 >> 61)
  {
    goto LABEL_12;
  }

  v4 = *(result + 1);
  v5 = (*(result + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = v5 - *result;
  v7 = 8 * a2;
  v9 = v4 >= v6;
  v8 = v4 - v6;
  v9 = v9 && v8 >= v7;
  if (!v9)
  {
    v12 = a4;
    result = IPC::Decoder::markInvalid(result);
    a4 = v12;
LABEL_12:
    v11 = 0;
    *a4 = 0;
    goto LABEL_11;
  }

  *(result + 2) = v5 + v7;
  if (!v5)
  {
    goto LABEL_12;
  }

  v10 = *a3;
  if (!a2)
  {
    v5 = 0;
    v10 = 0;
  }

  *a4 = a2;
  *(a4 + 8) = v10;
  *(a4 + 16) = v5;
  v11 = 1;
LABEL_11:
  *(a4 + 24) = v11;
  return result;
}

uint64_t IPC::Decoder::decode<WebCore::FontSmoothingMode>(IPC::Decoder *a1)
{
  result = IPC::ArgumentCoder<WebCore::RenderingMode,void>::decode<IPC::Decoder>(a1);
  if ((result & 0x100) == 0)
  {
    v3 = result;
    IPC::Decoder::markInvalid(a1);
    return v3;
  }

  return result;
}

unint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::ImagePaintingOptions>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *this)
{
  v4 = *(this + 1);
  v5 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *this;
  v7 = v5 - *this;
  v12 = v4 >= v7;
  v8 = v4 - v7;
  if (!v12 || v8 <= 7)
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_18;
  }

  *(this + 2) = v5 + 1;
  if (!v5)
  {
LABEL_18:
    IPC::Decoder::markInvalid(this);
    if (*this)
    {
      __break(1u);
    }

LABEL_20:
    result = IPC::Decoder::markInvalid(this);
    *a1 = 0;
    *(a1 + 56) = 0;
    return result;
  }

  v10 = *v5;
  v11 = *v5 - 1;
  if (v6)
  {
    v12 = v11 >= 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    goto LABEL_20;
  }

  IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(this, &v16);
  if ((v17 & 1) == 0)
  {
    goto LABEL_20;
  }

  IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(this, &v18);
  if ((v19 & 1) != 0 && (result = IPC::ArgumentCoder<WebCore::ImagePaintingOptions,void>::decode(this), (v14 & 0x100000000) != 0))
  {
    *a1 = v10;
    *(a1 + 8) = v16;
    *(a1 + 24) = v18;
    *(a1 + 40) = result;
    *(a1 + 48) = v14;
    v15 = 1;
  }

  else
  {
    result = IPC::Decoder::markInvalid(this);
    v15 = 0;
    *a1 = 0;
  }

  *(a1 + 56) = v15;
  return result;
}

unint64_t IPC::Decoder::decode<WebCore::ImagePaintingOptions>(IPC::Decoder *a1)
{
  result = IPC::ArgumentCoder<WebCore::ImagePaintingOptions,void>::decode(a1);
  if ((v3 & 0x100000000) == 0)
  {
    v4 = result;
    IPC::Decoder::markInvalid(a1);
    return v4;
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform,WebCore::FloatPoint,WebCore::FloatSize,WebCore::ImagePaintingOptions>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform,WebCore::FloatPoint,WebCore::FloatSize,WebCore::ImagePaintingOptions>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[120] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform,WebCore::FloatPoint,WebCore::FloatSize,WebCore::ImagePaintingOptions>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v6 = result;
  v7 = v5;
  if (v5)
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform,WebCore::FloatPoint,WebCore::FloatSize,WebCore::ImagePaintingOptions>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1, a2, &v6);
  }

  *a1 = 0;
  a1[120] = 0;
  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform,WebCore::FloatPoint,WebCore::FloatSize,WebCore::ImagePaintingOptions>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<WebCore::FloatRect>(a2, v7);
  if (v7[16])
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform,WebCore::FloatPoint,WebCore::FloatSize,WebCore::ImagePaintingOptions>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect>(a1, a2, a3, v7);
  }

  *a1 = 0;
  a1[120] = 0;
  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform,WebCore::FloatPoint,WebCore::FloatSize,WebCore::ImagePaintingOptions>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3, uint64_t a4)
{
  result = IPC::Decoder::decode<WebCore::FloatRect>(a2, v9);
  if (v9[16])
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform,WebCore::FloatPoint,WebCore::FloatSize,WebCore::ImagePaintingOptions>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect>(a1, a2, a3, a4, v9);
  }

  *a1 = 0;
  a1[120] = 0;
  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform,WebCore::FloatPoint,WebCore::FloatSize,WebCore::ImagePaintingOptions>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = IPC::Decoder::decode<WebCore::AffineTransform>(v11, a2);
  if (v11[48])
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform,WebCore::FloatPoint,WebCore::FloatSize,WebCore::ImagePaintingOptions>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform>(a1, a2, a3, a4, a5, v11);
  }

  *a1 = 0;
  a1[120] = 0;
  return result;
}

unint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform,WebCore::FloatPoint,WebCore::FloatSize,WebCore::ImagePaintingOptions>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
  v14 = result;
  v15 = v13;
  if (v13)
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform,WebCore::FloatPoint,WebCore::FloatSize,WebCore::ImagePaintingOptions>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform,WebCore::FloatPoint>(a1, a2, a3, a4, a5, a6, &v14);
  }

  *a1 = 0;
  a1[120] = 0;
  return result;
}

unint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform,WebCore::FloatPoint,WebCore::FloatSize,WebCore::ImagePaintingOptions>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform,WebCore::FloatPoint>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  result = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
  v16 = result;
  v17 = v15;
  if (v15)
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform,WebCore::FloatPoint,WebCore::FloatSize,WebCore::ImagePaintingOptions>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform,WebCore::FloatPoint,WebCore::FloatSize>(a1, a2, a3, a4, a5, a6, a7, &v16);
  }

  *a1 = 0;
  a1[120] = 0;
  return result;
}

unint64_t IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform,WebCore::FloatPoint,WebCore::FloatSize,WebCore::ImagePaintingOptions>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform,WebCore::FloatPoint,WebCore::FloatSize>(uint64_t a1, IPC::Decoder *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  result = IPC::Decoder::decode<WebCore::ImagePaintingOptions>(a2);
  if ((v16 & 0x100000000) == 0)
  {
    v20 = 0;
    *a1 = 0;
    goto LABEL_9;
  }

  if (*(a3 + 8) & 1) != 0 && (*(a4 + 16) & 1) != 0 && (*(a5 + 16) & 1) != 0 && (*(a6 + 48) & 1) != 0 && (a7[1] & 1) != 0 && (a8[1])
  {
    *(a1 + 8) = *a4;
    *(a1 + 24) = *a5;
    v17 = *(a6 + 16);
    *(a1 + 40) = *a6;
    v18 = *a7;
    v19 = *a8;
    *a1 = *a3;
    *(a1 + 56) = v17;
    *(a1 + 72) = *(a6 + 32);
    *(a1 + 88) = v18;
    *(a1 + 96) = v19;
    *(a1 + 104) = result;
    v20 = 1;
    *(a1 + 112) = v16;
LABEL_9:
    *(a1 + 120) = v20;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::FloatRect,float>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a2, &v13);
  if ((v14 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *(a2 + 1);
  v6 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = v6 - *a2;
  v8 = v5 >= v7;
  v9 = v5 - v7;
  if (!v8 || v9 <= 3)
  {
    IPC::Decoder::markInvalid(a2);
LABEL_10:
    result = IPC::Decoder::markInvalid(a2);
    v12 = 0;
    *a1 = 0;
    goto LABEL_9;
  }

  *(a2 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_10;
  }

  v11 = *v6;
  *a1 = v13;
  *(a1 + 16) = v11;
  v12 = 1;
LABEL_9:
  *(a1 + 20) = v12;
  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::tuple<WebCore::PathDataLine>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::PathDataLine,void>::decode(a2, &v6);
  if (v7)
  {
    *a1 = v6;
    v5 = 1;
  }

  else
  {
    result = IPC::Decoder::markInvalid(a2);
    v5 = 0;
    *a1 = 0;
  }

  *(a1 + 16) = v5;
  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::PathClosedArc>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::PathClosedArc,void>::decode(a2, &v6);
  if (v8)
  {
    *a1 = v6;
    *(a1 + 16) = v7;
    v5 = 1;
  }

  else
  {
    result = IPC::Decoder::markInvalid(a2);
    v5 = 0;
    *a1 = 0;
  }

  *(a1 + 24) = v5;
  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::PathDataQuadCurve>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::PathDataQuadCurve,void>::decode(a2, &v6);
  if (v8)
  {
    *a1 = v6;
    *(a1 + 16) = v7;
    v5 = 1;
  }

  else
  {
    result = IPC::Decoder::markInvalid(a2);
    v5 = 0;
    *a1 = 0;
  }

  *(a1 + 24) = v5;
  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::tuple<WebCore::PathSegment>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *this)
{
  v10 = *MEMORY[0x1E69E9840];
  result = IPC::ArgumentCoder<WebCore::PathSegment,void>::decode(this, v7);
  if (v9)
  {
    v5 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v8;
    v6 = 1;
  }

  else
  {
    result = IPC::Decoder::markInvalid(this);
    v6 = 0;
    *a1 = 0;
  }

  *(a1 + 56) = v6;
  return result;
}

unint64_t IPC::Decoder::decode<std::tuple<WebCore::IntSize>>(IPC::Decoder *a1)
{
  result = IPC::Decoder::decode<WebCore::IntSize>(a1);
  if ((v3 & 1) == 0)
  {
    v5 = *a1;
    v4 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v6 = *(a1 + 3);
    if (v6 && v4 != 0)
    {
      v9 = result;
      v8 = v3;
      (*(*v6 + 16))(v6, v5);
      result = v9;
      v3 = v8;
    }
  }

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t std::__tuple_leaf<0ul,WebKit::SharedVideoFrame,false>::__tuple_leaf[abi:sn200100]<WebKit::SharedVideoFrame,0>(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 4);
  *a1 = v4;
  *(a1 + 24) = 0;
  v5 = (a1 + 24);
  *(a1 + 40) = -1;
  v6 = *(a2 + 40);
  if (v6 <= 1)
  {
    if (*(a2 + 40))
    {
      *v5 = *(a2 + 24);
    }

    else
    {
      *v5 = 0;
    }

    goto LABEL_9;
  }

  if (v6 == 2)
  {
    WTF::MachSendRight::MachSendRight();
    goto LABEL_9;
  }

  if (v6 == 3)
  {
    *v5 = *(a2 + 3);
LABEL_9:
    *(a1 + 40) = *(a2 + 40);
  }

  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages18RemoteFaceDetector6DetectENS2_22StreamServerConnectionEN6WebKit18RemoteFaceDetectorES9_FvNS_23ObjectIdentifierGenericIN7WebCore31RenderingResourceIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6VectorINSB_14ShapeDetection12DetectedFaceELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EC530;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages18RemoteFaceDetector6DetectENS2_22StreamServerConnectionEN6WebKit18RemoteFaceDetectorES9_FvNS_23ObjectIdentifierGenericIN7WebCore31RenderingResourceIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6VectorINSB_14ShapeDetection12DetectedFaceELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC530;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages18RemoteFaceDetector6DetectENS2_22StreamServerConnectionEN6WebKit18RemoteFaceDetectorES9_FvNS_23ObjectIdentifierGenericIN7WebCore31RenderingResourceIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONS_6VectorINSB_14ShapeDetection12DetectedFaceELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 8);
  v4 = *(*(a1 + 16) + 40);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3504;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v3;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v13 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2[3]);
  v6 = a2[3];
  if (v6)
  {
    v7 = *a2;
    v8 = &v7[10 * v6];
    do
    {
      IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v5, v7);
      IPC::ArgumentCoder<std::optional<WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(v5, (v7 + 4));
      v7 += 10;
    }

    while (v7 != v8);
  }

  IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages9RemoteGPU14RequestAdapterEN6WebKit9RemoteGPUES8_FvRKNS7_6WebGPU21RequestAdapterOptionsENS_23ObjectIdentifierGenericINS7_20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt3__18optionalINS7_31RemoteGPURequestAdapterResponseEEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EC558;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages9RemoteGPU14RequestAdapterEN6WebKit9RemoteGPUES8_FvRKNS7_6WebGPU21RequestAdapterOptionsENS_23ObjectIdentifierGenericINS7_20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt3__18optionalINS7_31RemoteGPURequestAdapterResponseEEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC558;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages9RemoteGPU14RequestAdapterEN6WebKit9RemoteGPUES8_FvRKNS7_6WebGPU21RequestAdapterOptionsENS_23ObjectIdentifierGenericINS7_20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt3__18optionalINS7_31RemoteGPURequestAdapterResponseEEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSN_EE4callESN_(uint64_t result, _BYTE *a2)
{
  v5 = *(result + 8);
  v4 = *(result + 16);
  if (*(v4 + 120) == 1)
  {
    v6 = *(v4 + 56);
    v7 = *(v4 + 64);
    v8 = *(v7 + 8);
    if (v6 == 1)
    {
      if (v8 < 0x100)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    else
    {
      v9 = v8 >= 0x100;
      v10 = v8 - 256;
      if (!v9)
      {
        goto LABEL_26;
      }

      v2 = *(v7 + 16);
      if (v6)
      {
        v9 = v10 >= v6 - 1;
        v10 = v6 - 1;
        if (!v9)
        {
          goto LABEL_26;
        }
      }

      v17 = v10;
      if (v10 > 1)
      {
        *(v2 + 256) = 3199;
        if ((a2[192] & 1) == 0)
        {
          if (v10 != 2)
          {
            *(v2 + 258) = 0;
            return result;
          }

          goto LABEL_11;
        }

        if (v10 != 2)
        {
          *(v2 + 258) = 1;
          v15 = (v2 + 259);
          v16 = v10 - 3;
          if ((a2[192] & 1) == 0)
          {
LABEL_28:
            std::__throw_bad_optional_access[abi:sn200100]();
            goto LABEL_29;
          }

          goto LABEL_10;
        }

LABEL_27:
        v15 = 0;
        v16 = 0;
LABEL_10:
        result = IPC::ArgumentCoder<WebKit::RemoteGPURequestAdapterResponse,void>::encode(&v15, a2);
        if (v15)
        {
          return result;
        }

LABEL_11:
        *(v2 + 256) = 3197;
        goto LABEL_12;
      }
    }

LABEL_29:
    result = 1067;
    __break(0xC471u);
    return result;
  }

LABEL_12:
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3199;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v5;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v15 = v11;
  if (a2[192])
  {
    v18 = 1;
    IPC::Encoder::operator<<<BOOL>(v11, &v18);
    if (a2[192])
    {
      IPC::ArgumentCoder<WebKit::RemoteGPURequestAdapterResponse,void>::encode(v11, a2);
      goto LABEL_16;
    }

    goto LABEL_28;
  }

  v18 = 0;
  IPC::Encoder::operator<<<BOOL>(v11, &v18);
LABEL_16:
  if (*(v4 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v4 + 128), v11);
  }

  IPC::Connection::sendMessageImpl(*(v4 + 40), &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages9RemoteGPU7IsValidEN6WebKit9RemoteGPUES8_FvNS_23ObjectIdentifierGenericINS7_20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EC580;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages9RemoteGPU7IsValidEN6WebKit9RemoteGPUES8_FvNS_23ObjectIdentifierGenericINS7_20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EC580;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages9RemoteGPU7IsValidEN6WebKit9RemoteGPUES8_FvNS_23ObjectIdentifierGenericINS7_20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbbEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJbbEE4callEbb(uint64_t result, void *a2, char a3)
{
  v16 = a2;
  v15 = a3;
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_15;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 != 1)
  {
    v8 = v7 >= 0x100;
    v9 = v7 - 256;
    if (!v8)
    {
      goto LABEL_13;
    }

    v5 = *(v5 + 16);
    if (v6)
    {
      v8 = v9 >= v6 - 1;
      v9 = v6 - 1;
      if (!v8)
      {
        goto LABEL_13;
      }
    }

    if (v9 > 1)
    {
      *(v5 + 256) = 3199;
      if (v9 != 2)
      {
        *(v5 + 258) = a2;
        if (v9 != 3)
        {
          *(v5 + 259) = a3;
          return result;
        }
      }

      goto LABEL_14;
    }

LABEL_20:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v7 > 0xFF)
  {
    goto LABEL_20;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  *(v5 + 256) = 3197;
LABEL_15:
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 3199;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v4;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  v11 = IPC::Encoder::operator<<<BOOL>(v10, &v16);
  IPC::Encoder::operator<<<BOOL>(v11, &v15);
  if (*(v3 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v10);
  }

  IPC::Connection::sendMessageImpl(*(v3 + 40), &v17, 0, 0);
  result = v17;
  v17 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v12);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

unint64_t IPC::Decoder::decode<std::tuple<int,int>>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<std::tuple<int,int>,void>::decode<IPC::Decoder>(a1);
  if ((v3 & 1) == 0)
  {
    v5 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
    if (v6)
    {
      v7 = v4 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = result;
      (*(*v6 + 16))(v6, v5);
      return v8;
    }
  }

  return result;
}

unint64_t IPC::ArgumentCoder<std::tuple<int,int>,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v3 = *a1;
  v4 = v2 - *a1;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (v5 && v6 > 3)
  {
    a1[2] = (v2 + 1);
    if (v2)
    {
      v8 = *v2;
      v13 = 1;
      v12 = v8;
      return IPC::ArgumentCoder<std::tuple<int,int>,void>::decode<IPC::Decoder,int>(a1, &v12);
    }

    v11 = a1;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    v11 = a1;
    v10 = a1[3];
    if (!v10)
    {
      v1 = 0;
LABEL_10:
      v3 = 0;
      goto LABEL_11;
    }

    if (!v1)
    {
      goto LABEL_10;
    }

    (*(*v10 + 16))(v10);
    v3 = *v11;
    v1 = v11[1];
  }

LABEL_11:
  *v11 = 0;
  v11[1] = 0;
  result = v11[3];
  if (result)
  {
    if (v1)
    {
      (*(*result + 16))(result, v3);
    }

    return 0;
  }

  return result;
}

unint64_t IPC::ArgumentCoder<std::tuple<int,int>,void>::decode<IPC::Decoder,int>(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = *a1;
  v6 = v4 - *a1;
  v7 = v3 >= v6;
  v8 = v3 - v6;
  if (v7 && v8 > 3)
  {
    a1[2] = (v4 + 1);
    if (!v4)
    {
      v15 = a1;
      goto LABEL_14;
    }

    if (*(a2 + 4))
    {
      LODWORD(v11) = *a2;
      v10 = v11 & 0xFFFFFF00 | (*v4 << 32);
      v11 = v11;
      return v10 | v11;
    }

    __break(1u);
  }

  *a1 = 0;
  a1[1] = 0;
  v15 = a1;
  v13 = a1[3];
  if (!v13)
  {
    v3 = 0;
LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  if (!v3)
  {
    goto LABEL_13;
  }

  (*(*v13 + 16))(v13);
  v5 = *v15;
  v3 = v15[1];
LABEL_14:
  *v15 = 0;
  v15[1] = 0;
  v14 = v15[3];
  if (v14 && v3)
  {
    (*(*v14 + 16))(v14, v5);
  }

  v11 = 0;
  v10 = 0;
  return v10 | v11;
}

unint64_t *IPC::Decoder::decode<IPC::ArrayReferenceTuple<int,int>>(unint64_t *result, IPC::Decoder *a2)
{
  v3 = result;
  v4 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (v11)
    {
      if (v6)
      {
        (*(*v11 + 16))(v11);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_17;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_17:
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *(a2 + 3);
    if (v12 && v6)
    {
      (*(*v12 + 16))(v12, v5);
    }

    goto LABEL_18;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_17;
  }

  v8 = *v4;
  if (!*v4)
  {
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    goto LABEL_12;
  }

  if (!(v8 >> 62))
  {
    v9 = IPC::Decoder::decodeSpan<unsigned int>(a2, v8);
    if (v9)
    {
      v10 = v9;
      result = IPC::Decoder::decodeSpan<unsigned int>(a2, v8);
      if (result)
      {
        *v3 = v8;
        v3[1] = v10;
        v3[2] = result;
LABEL_12:
        *(v3 + 24) = 1;
        return result;
      }
    }
  }

LABEL_18:
  *v3 = 0;
  *(v3 + 24) = 0;
  v13 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v13)
  {
    v14 = *(*result + 16);

    return v14();
  }

  return result;
}

_OWORD *IPC::Decoder::decode<IPC::ArrayReferenceTuple<int,int,int>>(_OWORD *result, IPC::Decoder *a2)
{
  v3 = result;
  v4 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 3);
    if (v13)
    {
      if (v6)
      {
        (*(*v13 + 16))(v13);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_18;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_18:
    *a2 = 0;
    *(a2 + 1) = 0;
    v14 = *(a2 + 3);
    if (v14 && v6)
    {
      (*(*v14 + 16))(v14, v5);
    }

    goto LABEL_19;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_18;
  }

  v8 = *v4;
  if (!*v4)
  {
    *result = 0u;
    result[1] = 0u;
    goto LABEL_13;
  }

  if (!(v8 >> 62))
  {
    v9 = IPC::Decoder::decodeSpan<unsigned int>(a2, v8);
    if (v9)
    {
      v10 = v9;
      v11 = IPC::Decoder::decodeSpan<unsigned int>(a2, v8);
      if (v11)
      {
        v12 = v11;
        result = IPC::Decoder::decodeSpan<unsigned int>(a2, v8);
        if (result)
        {
          *v3 = v8;
          *(v3 + 1) = v10;
          *(v3 + 2) = v12;
          *(v3 + 3) = result;
LABEL_13:
          *(v3 + 32) = 1;
          return result;
        }
      }
    }
  }

LABEL_19:
  *v3 = 0;
  *(v3 + 32) = 0;
  v15 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v15)
  {
    v16 = *(*result + 16);

    return v16();
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<std::span<unsigned int const,18446744073709551615ul>>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, &v8);
  if (v9)
  {
    goto LABEL_2;
  }

  v5 = *a1;
  v6 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    if (v6)
    {
      result = (*(*result + 16))(result, v5);
      if (v9)
      {
LABEL_2:
        *a2 = v8;
        *(a2 + 16) = 1;
        return result;
      }

      v6 = *(a1 + 1);
      result = *(a1 + 3);
    }
  }

  else
  {
    v6 = 0;
  }

  *a2 = 0;
  *(a2 + 16) = 0;
  *a1 = 0;
  *(a1 + 1) = 0;
  if (result && v6)
  {
    v7 = *(*result + 16);

    return v7();
  }

  return result;
}

unint64_t IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v3 = *a1;
  v4 = v2 - *a1;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (v5 && v6 > 3)
  {
    a1[2] = (v2 + 1);
    if (v2)
    {
      v8 = *v2;
      v9 = ((v2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
      if (v1 < v9 - v3 || v1 - (v9 - v3) <= 3)
      {
        goto LABEL_14;
      }

      a1[2] = (v9 + 1);
      if (v9)
      {
        return v8 & 0xFFFFFF00 | (*v9 << 32) | v8;
      }
    }

    v16 = a1;
    goto LABEL_17;
  }

LABEL_14:
  *a1 = 0;
  a1[1] = 0;
  v16 = a1;
  v12 = a1[3];
  if (!v12)
  {
    v1 = 0;
LABEL_16:
    v3 = 0;
    goto LABEL_17;
  }

  if (!v1)
  {
    goto LABEL_16;
  }

  (*(*v12 + 16))(v12);
  v3 = *v16;
  v1 = v16[1];
LABEL_17:
  *v16 = 0;
  v16[1] = 0;
  v13 = v16[3];
  if (v13 && v1)
  {
    (*(*v13 + 16))(v13, v3);
  }

  v14 = *v16;
  v15 = v16[1];
  *v16 = 0;
  v16[1] = 0;
  result = v16[3];
  if (result)
  {
    if (v15)
    {
      (*(*result + 16))(result, v14);
    }

    return 0;
  }

  return result;
}

uint64_t *IPC::Decoder::decode<std::tuple<float,float,float,float>>(_BYTE *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<std::tuple<float,float,float,float>,void>::decode<IPC::Decoder>(a2, a1);
  if ((a1[16] & 1) == 0)
  {
    v5 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t *IPC::ArgumentCoder<std::tuple<float,float,float,float>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1[1];
  v3 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = *a1;
  v5 = v3 - *a1;
  v6 = v2 >= v5;
  v7 = v2 - v5;
  if (v6 && v7 > 3)
  {
    a1[2] = (v3 + 1);
    if (v3)
    {
      v9 = *v3;
      v15 = 1;
      v14 = v9;
      return IPC::ArgumentCoder<std::tuple<float,float,float,float>,void>::decode<IPC::Decoder,float>(a1, &v14, a2);
    }

    v12 = a2;
    v13 = a1;
  }

  else
  {
    v12 = a2;
    v13 = a1;
    *a1 = 0;
    a1[1] = 0;
    v11 = a1[3];
    if (v11)
    {
      if (v2)
      {
        (*(*v11 + 16))(v11);
        v4 = *v13;
        v2 = v13[1];
        goto LABEL_13;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
  }

LABEL_13:
  *v13 = 0;
  v13[1] = 0;
  result = v13[3];
  if (result)
  {
    if (v2)
    {
      result = (*(*result + 16))(result, v4);
    }
  }

  *v12 = 0;
  v12[16] = 0;
  return result;
}

uint64_t *IPC::ArgumentCoder<std::tuple<float,float,float,float>,void>::decode<IPC::Decoder,float>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = a1[1];
  v5 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = *a1;
  v7 = v5 - *a1;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (v8 && v9 > 3)
  {
    a1[2] = (v5 + 1);
    if (v5)
    {
      v11 = *v5;
      v17 = 1;
      v16 = v11;
      return IPC::ArgumentCoder<std::tuple<float,float,float,float>,void>::decode<IPC::Decoder,float,float>(a1, a2, &v16, a3);
    }

    v14 = a3;
    v15 = a1;
  }

  else
  {
    v14 = a3;
    v15 = a1;
    *a1 = 0;
    a1[1] = 0;
    v13 = a1[3];
    if (v13)
    {
      if (v4)
      {
        (*(*v13 + 16))(v13);
        v6 = *v15;
        v4 = v15[1];
        goto LABEL_13;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
  }

LABEL_13:
  *v15 = 0;
  v15[1] = 0;
  result = v15[3];
  if (result)
  {
    if (v4)
    {
      result = (*(*result + 16))(result, v6);
    }
  }

  *v14 = 0;
  v14[16] = 0;
  return result;
}

uint64_t *IPC::ArgumentCoder<std::tuple<float,float,float,float>,void>::decode<IPC::Decoder,float,float>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a1[1];
  v7 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = *a1;
  v9 = v7 - *a1;
  v10 = v6 >= v9;
  v11 = v6 - v9;
  if (v10 && v11 > 3)
  {
    a1[2] = (v7 + 1);
    if (v7)
    {
      v13 = *v7;
      v19 = 1;
      v18 = v13;
      return IPC::ArgumentCoder<std::tuple<float,float,float,float>,void>::decode<IPC::Decoder,float,float,float>(a1, a2, a3, &v18, a4);
    }

    v16 = a4;
    v17 = a1;
  }

  else
  {
    v16 = a4;
    v17 = a1;
    *a1 = 0;
    a1[1] = 0;
    v15 = a1[3];
    if (v15)
    {
      if (v6)
      {
        (*(*v15 + 16))(v15);
        v8 = *v17;
        v6 = v17[1];
        goto LABEL_13;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
  }

LABEL_13:
  *v17 = 0;
  v17[1] = 0;
  result = v17[3];
  if (result)
  {
    if (v6)
    {
      result = (*(*result + 16))(result, v8);
    }
  }

  *v16 = 0;
  v16[16] = 0;
  return result;
}

uint64_t *IPC::ArgumentCoder<std::tuple<float,float,float,float>,void>::decode<IPC::Decoder,float,float,float>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v7 = result[1];
  v8 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = *result;
  v10 = v8 - *result;
  v11 = v7 >= v10;
  v12 = v7 - v10;
  if (v11 && v12 > 3)
  {
    result[2] = (v8 + 1);
    if (!v8)
    {
      v18 = a5;
      v19 = result;
      goto LABEL_17;
    }

    if (*(a2 + 4) & 1) != 0 && (a3[1] & 1) != 0 && (*(a4 + 4))
    {
      v14 = *v8;
      v15 = *a3;
      *a5 = *a2;
      *(a5 + 1) = v15;
      *(a5 + 2) = *a4;
      *(a5 + 3) = v14;
      v16 = 1;
      goto LABEL_11;
    }

    __break(1u);
  }

  v18 = a5;
  v19 = result;
  *result = 0;
  result[1] = 0;
  v17 = result[3];
  if (!v17)
  {
    v7 = 0;
LABEL_15:
    v9 = 0;
    goto LABEL_17;
  }

  if (!v7)
  {
    goto LABEL_15;
  }

  (*(*v17 + 16))(v17);
  v9 = *v19;
  v7 = v19[1];
LABEL_17:
  *v19 = 0;
  v19[1] = 0;
  result = v19[3];
  if (result && v7)
  {
    result = (*(*result + 16))(result, v9);
  }

  v16 = 0;
  a5 = v18;
  *v18 = 0;
LABEL_11:
  a5[16] = v16;
  return result;
}

uint64_t *IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int,unsigned int>>(_BYTE *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<std::tuple<unsigned int,unsigned int,unsigned int,unsigned int>,void>::decode<IPC::Decoder>(a2, a1);
  if ((a1[16] & 1) == 0)
  {
    v5 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t *IPC::ArgumentCoder<std::tuple<unsigned int,unsigned int,unsigned int,unsigned int>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1[1];
  v3 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = *a1;
  v5 = v3 - *a1;
  v6 = v2 >= v5;
  v7 = v2 - v5;
  if (v6 && v7 > 3)
  {
    a1[2] = (v3 + 1);
    if (v3)
    {
      v9 = *v3;
      v15 = 1;
      v14 = v9;
      return IPC::ArgumentCoder<std::tuple<unsigned int,unsigned int,unsigned int,unsigned int>,void>::decode<IPC::Decoder,unsigned int>(a1, &v14, a2);
    }

    v12 = a2;
    v13 = a1;
  }

  else
  {
    v12 = a2;
    v13 = a1;
    *a1 = 0;
    a1[1] = 0;
    v11 = a1[3];
    if (v11)
    {
      if (v2)
      {
        (*(*v11 + 16))(v11);
        v4 = *v13;
        v2 = v13[1];
        goto LABEL_12;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
  }

LABEL_12:
  *v13 = 0;
  v13[1] = 0;
  result = v13[3];
  if (result)
  {
    if (v2)
    {
      result = (*(*result + 16))(result, v4);
    }
  }

  *v12 = 0;
  v12[16] = 0;
  return result;
}

uint64_t *IPC::ArgumentCoder<std::tuple<unsigned int,unsigned int,unsigned int,unsigned int>,void>::decode<IPC::Decoder,unsigned int>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = a1[1];
  v5 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = *a1;
  v7 = v5 - *a1;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (v8 && v9 > 3)
  {
    a1[2] = (v5 + 1);
    if (v5)
    {
      v11 = *v5;
      v17 = 1;
      v16 = v11;
      return IPC::ArgumentCoder<std::tuple<unsigned int,unsigned int,unsigned int,unsigned int>,void>::decode<IPC::Decoder,unsigned int,unsigned int>(a1, a2, &v16, a3);
    }

    v14 = a3;
    v15 = a1;
  }

  else
  {
    v14 = a3;
    v15 = a1;
    *a1 = 0;
    a1[1] = 0;
    v13 = a1[3];
    if (v13)
    {
      if (v4)
      {
        (*(*v13 + 16))(v13);
        v6 = *v15;
        v4 = v15[1];
        goto LABEL_12;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
  }

LABEL_12:
  *v15 = 0;
  v15[1] = 0;
  result = v15[3];
  if (result)
  {
    if (v4)
    {
      result = (*(*result + 16))(result, v6);
    }
  }

  *v14 = 0;
  v14[16] = 0;
  return result;
}

uint64_t *IPC::ArgumentCoder<std::tuple<unsigned int,unsigned int,unsigned int,unsigned int>,void>::decode<IPC::Decoder,unsigned int,unsigned int>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a1[1];
  v7 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = *a1;
  v9 = v7 - *a1;
  v10 = v6 >= v9;
  v11 = v6 - v9;
  if (v10 && v11 > 3)
  {
    a1[2] = (v7 + 1);
    if (v7)
    {
      v13 = *v7;
      v19 = 1;
      v18 = v13;
      return IPC::ArgumentCoder<std::tuple<unsigned int,unsigned int,unsigned int,unsigned int>,void>::decode<IPC::Decoder,unsigned int,unsigned int,unsigned int>(a1, a2, a3, &v18, a4);
    }

    v16 = a4;
    v17 = a1;
  }

  else
  {
    v16 = a4;
    v17 = a1;
    *a1 = 0;
    a1[1] = 0;
    v15 = a1[3];
    if (v15)
    {
      if (v6)
      {
        (*(*v15 + 16))(v15);
        v8 = *v17;
        v6 = v17[1];
        goto LABEL_12;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
  }

LABEL_12:
  *v17 = 0;
  v17[1] = 0;
  result = v17[3];
  if (result)
  {
    if (v6)
    {
      result = (*(*result + 16))(result, v8);
    }
  }

  *v16 = 0;
  v16[16] = 0;
  return result;
}

uint64_t *IPC::ArgumentCoder<std::tuple<unsigned int,unsigned int,unsigned int,unsigned int>,void>::decode<IPC::Decoder,unsigned int,unsigned int,unsigned int>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v7 = result[1];
  v8 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = *result;
  v10 = v8 - *result;
  v11 = v7 >= v10;
  v12 = v7 - v10;
  if (v11 && v12 > 3)
  {
    result[2] = (v8 + 1);
    if (!v8)
    {
      v18 = a5;
      v19 = result;
      goto LABEL_16;
    }

    if (*(a2 + 4) & 1) != 0 && (a3[1] & 1) != 0 && (*(a4 + 4))
    {
      v14 = *v8;
      v15 = *a3;
      *a5 = *a2;
      *(a5 + 1) = v15;
      *(a5 + 2) = *a4;
      *(a5 + 3) = v14;
      v16 = 1;
      goto LABEL_11;
    }

    __break(1u);
  }

  v18 = a5;
  v19 = result;
  *result = 0;
  result[1] = 0;
  v17 = result[3];
  if (!v17)
  {
    v7 = 0;
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  if (!v7)
  {
    goto LABEL_15;
  }

  (*(*v17 + 16))(v17);
  v9 = *v19;
  v7 = v19[1];
LABEL_16:
  *v19 = 0;
  v19[1] = 0;
  result = v19[3];
  if (result && v7)
  {
    result = (*(*result + 16))(result, v9);
  }

  v16 = 0;
  a5 = v18;
  *v18 = 0;
LABEL_11:
  a5[16] = v16;
  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<int>>(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<float>(a1);
  v3 = v2;
  v4 = v2 & 0x100000000;
  if ((v2 & 0x100000000) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  v5 = v3;
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v4;
}

uint64_t IPC::Decoder::decode<std::tuple<int,int,int,int>>(uint64_t result, uint64_t *a2)
{
  v3 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = *a2;
  v5 = a2[1];
  if (v5 >= v3 - v4 && v5 - (v3 - v4) > 3)
  {
    a2[2] = (v3 + 1);
    if (v3)
    {
      v7 = *v3;
      v8 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
      if (v5 < v8 - v4 || v5 - (v8 - v4) <= 3)
      {
        goto LABEL_27;
      }

      a2[2] = (v8 + 1);
      if (v8)
      {
        v10 = *v8;
        v11 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v5 < v11 - v4 || v5 - (v11 - v4) <= 3)
        {
          goto LABEL_27;
        }

        a2[2] = (v11 + 1);
        if (v11)
        {
          v13 = *v11;
          v14 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
          if (v5 < v14 - v4 || v5 - (v14 - v4) <= 3)
          {
            goto LABEL_27;
          }

          a2[2] = (v14 + 1);
          if (v14)
          {
            v16 = *v14;
            *result = v7;
            *(result + 4) = v10;
            *(result + 8) = v13;
            *(result + 12) = v16;
            *(result + 16) = 1;
            return result;
          }
        }
      }
    }

    v21 = result;
    v22 = a2;
    goto LABEL_30;
  }

LABEL_27:
  v21 = result;
  v22 = a2;
  *a2 = 0;
  a2[1] = 0;
  v17 = a2[3];
  if (!v17)
  {
    v5 = 0;
LABEL_29:
    v4 = 0;
    goto LABEL_30;
  }

  if (!v5)
  {
    goto LABEL_29;
  }

  (*(*v17 + 16))(v17);
  v4 = *v22;
  v5 = v22[1];
LABEL_30:
  *v22 = 0;
  v22[1] = 0;
  v18 = v22[3];
  if (v18 && v5)
  {
    (*(*v18 + 16))(v18, v4);
  }

  *v21 = 0;
  v21[16] = 0;
  v19 = v22[1];
  *v22 = 0;
  v22[1] = 0;
  result = v22[3];
  if (result && v19)
  {
    v20 = *(*result + 16);

    return v20();
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<unsigned int,WTF::String>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<unsigned int,WTF::String>,void>::decode<IPC::Decoder>(a2, a1);
  if ((*(a1 + 16) & 1) == 0)
  {
    v5 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::tuple<unsigned int,WTF::String>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 1);
  v3 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = *a1;
  v5 = v3 - *a1;
  v6 = v2 >= v5;
  v7 = v2 - v5;
  if (v6 && v7 > 3)
  {
    *(a1 + 2) = v3 + 1;
    if (v3)
    {
      v9 = *v3;
      v15 = 1;
      v14 = v9;
      return IPC::ArgumentCoder<std::tuple<unsigned int,WTF::String>,void>::decode<IPC::Decoder,unsigned int>(a1, &v14, a2);
    }

    v12 = a2;
    v13 = a1;
  }

  else
  {
    v12 = a2;
    v13 = a1;
    *a1 = 0;
    *(a1 + 1) = 0;
    v11 = *(a1 + 3);
    if (v11)
    {
      if (v2)
      {
        (*(*v11 + 16))(v11);
        v4 = *v13;
        v2 = *(v13 + 1);
        goto LABEL_12;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
  }

LABEL_12:
  *v13 = 0;
  *(v13 + 1) = 0;
  result = *(v13 + 3);
  if (result)
  {
    if (v2)
    {
      result = (*(*result + 16))(result, v4);
    }
  }

  *v12 = 0;
  v12[16] = 0;
  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::tuple<unsigned int,WTF::String>,void>::decode<IPC::Decoder,unsigned int>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v11);
  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

  do
  {
    if (*(a2 + 4))
    {
      *a3 = *a2;
      *(a3 + 8) = v11;
      v7 = 1;
      goto LABEL_4;
    }

    __break(1u);
LABEL_6:
    v8 = *a1;
    v9 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      break;
    }

    result = (*(*result + 16))(result, v8);
  }

  while ((v12 & 1) != 0);
  v7 = 0;
  *a3 = 0;
LABEL_4:
  *(a3 + 16) = v7;
  return result;
}

unint64_t IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,float>>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v3 = *a1;
  v4 = v2 - *a1;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (v5 && v6 > 3)
  {
    a1[2] = (v2 + 1);
    if (v2)
    {
      v8 = *v2;
      v9 = ((v2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
      if (v1 < v9 - v3 || v1 - (v9 - v3) <= 3)
      {
        goto LABEL_20;
      }

      a1[2] = (v9 + 1);
      if (v9)
      {
        v11 = *v9;
        v12 = (v9 + 7) & 0xFFFFFFFFFFFFFFFCLL;
        if (v1 < v12 - v3 || v1 - (v12 - v3) <= 3)
        {
          goto LABEL_20;
        }

        a1[2] = v12 + 4;
        if (v12)
        {
          return v8 & 0xFFFFFF00 | (v11 << 32) | v8;
        }
      }
    }

    v19 = a1;
    goto LABEL_23;
  }

LABEL_20:
  *a1 = 0;
  a1[1] = 0;
  v19 = a1;
  v15 = a1[3];
  if (!v15)
  {
    v1 = 0;
LABEL_22:
    v3 = 0;
    goto LABEL_23;
  }

  if (!v1)
  {
    goto LABEL_22;
  }

  (*(*v15 + 16))(v15);
  v3 = *v19;
  v1 = v19[1];
LABEL_23:
  *v19 = 0;
  v19[1] = 0;
  v16 = v19[3];
  if (v16 && v1)
  {
    (*(*v16 + 16))(v16, v3);
  }

  v17 = *v19;
  v18 = v19[1];
  *v19 = 0;
  v19[1] = 0;
  result = v19[3];
  if (result)
  {
    if (v18)
    {
      (*(*result + 16))(result, v17);
    }

    return 0;
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<int,std::span<float const,18446744073709551615ul>>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v15 = *(a2 + 3);
    if (v15)
    {
      if (v6)
      {
        (*(*v15 + 16))(v15);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_22;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_22:
    *a2 = 0;
    *(a2 + 1) = 0;
    v16 = *(a2 + 3);
    if (v16 && v6)
    {
      (*(*v16 + 16))(v16, v5);
    }

    goto LABEL_11;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_22;
  }

  v8 = *v4;
  result = IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a2, &v17);
  if (v18 & 1) != 0 || (v10 = *a2, v11 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v12 = *(a2 + 3)) != 0) && v11 && (result = (*(*v12 + 16))(v12, v10), (v18))
  {
    *a1 = v8;
    *(a1 + 8) = v17;
    *(a1 + 24) = 1;
    return result;
  }

LABEL_11:
  *a1 = 0;
  *(a1 + 24) = 0;
  v13 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v13)
  {
    v14 = *(*result + 16);

    return v14();
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<int,std::span<int const,18446744073709551615ul>>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v15 = *(a2 + 3);
    if (v15)
    {
      if (v6)
      {
        (*(*v15 + 16))(v15);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_19;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_19:
    *a2 = 0;
    *(a2 + 1) = 0;
    v16 = *(a2 + 3);
    if (v16 && v6)
    {
      (*(*v16 + 16))(v16, v5);
    }

    goto LABEL_11;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_19;
  }

  v8 = *v4;
  result = IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a2, &v17);
  if (v18 & 1) != 0 || (v10 = *a2, v11 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v12 = *(a2 + 3)) != 0) && v11 && (result = (*(*v12 + 16))(v12, v10), (v18))
  {
    *a1 = v8;
    *(a1 + 8) = v17;
    *(a1 + 24) = 1;
    return result;
  }

LABEL_11:
  *a1 = 0;
  *(a1 + 24) = 0;
  v13 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v13)
  {
    v14 = *(*result + 16);

    return v14();
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<int,BOOL,std::span<float const,18446744073709551615ul>>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 3)
  {
    goto LABEL_25;
  }

  v8 = (v4 + 1);
  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_28;
  }

  if (v6 <= &v8[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v17 = *(a2 + 3);
    if (v17)
    {
      if (v6)
      {
        (*(*v17 + 16))(v17);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_25;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_25:
    *a2 = 0;
    *(a2 + 1) = 0;
    v18 = *(a2 + 3);
    if (v18)
    {
      if (v6)
      {
        (*(*v18 + 16))(v18, v5);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_28;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_28:
    *a2 = 0;
    *(a2 + 1) = 0;
    v19 = *(a2 + 3);
    if (v19 && v6)
    {
      (*(*v19 + 16))(v19, v5);
    }

    goto LABEL_14;
  }

  v9 = *v4;
  *(a2 + 2) = v4 + 5;
  if (v4 == -4)
  {
    goto LABEL_25;
  }

  v10 = *v8;
  if (v10 >= 2)
  {
    goto LABEL_28;
  }

  result = IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a2, &v20);
  if (v21 & 1) != 0 || (v12 = *a2, v13 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v14 = *(a2 + 3)) != 0) && v13 && (result = (*(*v14 + 16))(v14, v12), (v21))
  {
    *a1 = v9;
    *(a1 + 4) = v10;
    *(a1 + 8) = v20;
    *(a1 + 24) = 1;
    return result;
  }

LABEL_14:
  *a1 = 0;
  *(a1 + 24) = 0;
  v15 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v15)
  {
    v16 = *(*result + 16);

    return v16();
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<unsigned int,int,unsigned int,int,int>>(uint64_t result, uint64_t *a2)
{
  v3 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = *a2;
  v5 = a2[1];
  if (v5 >= v3 - v4 && v5 - (v3 - v4) > 3)
  {
    a2[2] = (v3 + 1);
    if (v3)
    {
      v7 = *v3;
      v8 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
      if (v5 < v8 - v4 || v5 - (v8 - v4) <= 3)
      {
        goto LABEL_33;
      }

      a2[2] = (v8 + 1);
      if (v8)
      {
        v10 = *v8;
        v11 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v5 < v11 - v4 || v5 - (v11 - v4) <= 3)
        {
          goto LABEL_33;
        }

        a2[2] = (v11 + 1);
        if (v11)
        {
          v13 = *v11;
          v14 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
          if (v5 < v14 - v4 || v5 - (v14 - v4) <= 3)
          {
            goto LABEL_33;
          }

          a2[2] = (v14 + 1);
          if (v14)
          {
            v16 = *v14;
            v17 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
            if (v5 < v17 - v4 || v5 - (v17 - v4) <= 3)
            {
              goto LABEL_33;
            }

            a2[2] = (v17 + 1);
            if (v17)
            {
              v19 = *v17;
              *result = v7;
              *(result + 4) = v10;
              *(result + 8) = v13;
              *(result + 12) = v16;
              *(result + 16) = v19;
              *(result + 20) = 1;
              return result;
            }
          }
        }
      }
    }

    v24 = result;
    v25 = a2;
    goto LABEL_36;
  }

LABEL_33:
  v24 = result;
  v25 = a2;
  *a2 = 0;
  a2[1] = 0;
  v20 = a2[3];
  if (!v20)
  {
    v5 = 0;
LABEL_35:
    v4 = 0;
    goto LABEL_36;
  }

  if (!v5)
  {
    goto LABEL_35;
  }

  (*(*v20 + 16))(v20);
  v4 = *v25;
  v5 = v25[1];
LABEL_36:
  *v25 = 0;
  v25[1] = 0;
  v21 = v25[3];
  if (v21 && v5)
  {
    (*(*v21 + 16))(v21, v4);
  }

  *v24 = 0;
  v24[20] = 0;
  v22 = v25[1];
  *v25 = 0;
  v25[1] = 0;
  result = v25[3];
  if (result && v22)
  {
    v23 = *(*result + 16);

    return v23();
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<int,std::span<unsigned int const,18446744073709551615ul>>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v15 = *(a2 + 3);
    if (v15)
    {
      if (v6)
      {
        (*(*v15 + 16))(v15);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_22;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_22:
    *a2 = 0;
    *(a2 + 1) = 0;
    v16 = *(a2 + 3);
    if (v16 && v6)
    {
      (*(*v16 + 16))(v16, v5);
    }

    goto LABEL_11;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_22;
  }

  v8 = *v4;
  result = IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a2, &v17);
  if (v18 & 1) != 0 || (v10 = *a2, v11 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v12 = *(a2 + 3)) != 0) && v11 && (result = (*(*v12 + 16))(v12, v10), (v18))
  {
    *a1 = v8;
    *(a1 + 8) = v17;
    *(a1 + 24) = 1;
    return result;
  }

LABEL_11:
  *a1 = 0;
  *(a1 + 24) = 0;
  v13 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v13)
  {
    v14 = *(*result + 16);

    return v14();
  }

  return result;
}

unint64_t IPC::Decoder::decode<std::span<int const,4ul>>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<std::span<int const,4ul>,void>::decode<IPC::Decoder>(a1);
  if ((v3 & 1) == 0)
  {
    v5 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
    if (v6)
    {
      v7 = v4 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = result;
      (*(*v6 + 16))(v6, v5);
      return v8;
    }
  }

  return result;
}

unint64_t IPC::ArgumentCoder<std::span<int const,4ul>,void>::decode<IPC::Decoder>(void *a1)
{
  v1 = a1[1];
  v2 = a1[2] + 3;
  v3 = v2 & 0xFFFFFFFFFFFFFFFCLL;
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL) - *a1;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (v5 && v6 > 0xF)
  {
    a1[2] = v3 + 16;
    v8 = v2 & 0xFFFFFFFFFFFFFF00;
    v9 = v2 & 0xFC;
    v10 = v3 == 0;
    if (v3)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = v8;
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    v14 = a1[3];
    if (v14 && v1)
    {
      (*(*v14 + 16))(v14);
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  return v12 | v11;
}

unint64_t IPC::Decoder::decode<std::tuple<unsigned long long>>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<std::tuple<unsigned long long>,void>::decode<IPC::Decoder>(a1);
  if ((v3 & 1) == 0)
  {
    v5 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
    if (v6)
    {
      v7 = v4 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = result;
      (*(*v6 + 16))(v6, v5);
      return v8;
    }
  }

  return result;
}

unint64_t IPC::ArgumentCoder<std::tuple<unsigned long long>,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = *a1;
  v4 = v2 - *a1;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (v5 && v6 > 7)
  {
    a1[2] = (v2 + 1);
    if (v2)
    {
      v9 = *v2;
      v8 = v9 & 0xFFFFFFFFFFFFFF00;
      v9 = v9;
      return v8 | v9;
    }

    v13 = a1;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    v13 = a1;
    v11 = a1[3];
    if (!v11)
    {
      v1 = 0;
LABEL_11:
      v3 = 0;
      goto LABEL_12;
    }

    if (!v1)
    {
      goto LABEL_11;
    }

    (*(*v11 + 16))(v11);
    v3 = *v13;
    v1 = v13[1];
  }

LABEL_12:
  *v13 = 0;
  v13[1] = 0;
  v12 = v13[3];
  if (v12 && v1)
  {
    (*(*v12 + 16))(v12, v3);
  }

  v9 = 0;
  v8 = 0;
  return v8 | v9;
}

void IPC::ArgumentCoder<std::tuple<WebCore::DestinationColorSpace>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(a1, &v9);
  if (v10)
  {
    *a2 = v9;
    v4 = 1;
  }

  else
  {
    v5 = *a1;
    v6 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v7 = *(a1 + 3);
    if (v7)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      (*(*v7 + 16))(v7, v5);
    }

    v4 = 0;
    *a2 = 0;
  }

  *(a2 + 8) = v4;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteGraphicsContextGL17PrepareForDisplayEN6WebKit23RemoteGraphicsContextGLES8_FvONS2_9SemaphoreEONS_17CompletionHandlerIFvONS_13MachSendRightEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSD_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EC5A8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}