uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::StencilFunc>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::StencilFunc,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::StencilFunc,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::stencilFuncSeparate(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5)
{
  if (*(this + 11))
  {
    v5 = this;
    v6[0] = a2;
    v6[1] = a3;
    v6[2] = a4;
    v6[3] = a5;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::StencilFuncSeparate>(this, v6);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::StencilFuncSeparate>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::StencilFuncSeparate,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::StencilFuncSeparate,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::stencilMask(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::StencilMask>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::StencilMask>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::StencilMask,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::StencilMask,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::stencilMaskSeparate(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::StencilMaskSeparate>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::StencilMaskSeparate>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::StencilMaskSeparate,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::StencilMaskSeparate,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::stencilOp(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4)
{
  if (*(this + 11))
  {
    v4 = this;
    v5[0] = a2;
    v5[1] = a3;
    v5[2] = a4;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::StencilOp>(this, v5);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::StencilOp>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::StencilOp,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::StencilOp,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::stencilOpSeparate(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5)
{
  if (*(this + 11))
  {
    v5 = this;
    v6[0] = a2;
    v6[1] = a3;
    v6[2] = a4;
    v6[3] = a5;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::StencilOpSeparate>(this, v6);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::StencilOpSeparate>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::StencilOpSeparate,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::StencilOpSeparate,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::texParameterf(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, float a4)
{
  if (*(this + 11))
  {
    v4 = this;
    v5[0] = a2;
    v5[1] = a3;
    *&v5[2] = a4;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TexParameterf>(this, v5);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TexParameterf>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexParameterf,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexParameterf,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::texParameteri(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4)
{
  if (*(this + 11))
  {
    v4 = this;
    v5[0] = a2;
    v5[1] = a3;
    v5[2] = a4;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TexParameteri>(this, v5);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TexParameteri>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexParameteri,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexParameteri,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::uniform1f(WebKit::RemoteGraphicsContextGLProxy *this, int a2, float a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    *&v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform1f>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform1f>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform1f,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform1f,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::uniform1fv(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  if (*(result + 88))
  {
    v4 = result;
    v5 = a2;
    v6 = v7;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform1fv>(result, &v5);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform1fv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform1fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform1fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::uniform1i(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform1i>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform1i>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform1i,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform1i,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::uniform1iv(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  if (*(result + 88))
  {
    v4 = result;
    v5 = a2;
    v6 = v7;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform1iv>(result, &v5);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform1iv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform1iv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform1iv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::uniform2f(WebKit::RemoteGraphicsContextGLProxy *this, int a2, float a3, float a4)
{
  if (*(this + 11))
  {
    v4 = this;
    v5[0] = a2;
    *&v5[1] = a3;
    *&v5[2] = a4;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform2f>(this, v5);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform2f>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform2f,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform2f,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::uniform2fv(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  if (*(result + 88))
  {
    v4 = result;
    v5 = a2;
    v6 = v7;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform2fv>(result, &v5);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform2fv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform2fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform2fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::uniform2i(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4)
{
  if (*(this + 11))
  {
    v4 = this;
    v5[0] = a2;
    v5[1] = a3;
    v5[2] = a4;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform2i>(this, v5);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform2i>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform2i,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform2i,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::uniform2iv(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  if (*(result + 88))
  {
    v4 = result;
    v5 = a2;
    v6 = v7;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform2iv>(result, &v5);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform2iv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform2iv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform2iv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::uniform3f(WebKit::RemoteGraphicsContextGLProxy *this, int a2, float a3, float a4, float a5)
{
  if (*(this + 11))
  {
    v5 = this;
    v6[0] = a2;
    *&v6[1] = a3;
    *&v6[2] = a4;
    *&v6[3] = a5;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform3f>(this, v6);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform3f>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform3f,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform3f,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::uniform3fv(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  if (*(result + 88))
  {
    v4 = result;
    v5 = a2;
    v6 = v7;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform3fv>(result, &v5);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform3fv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform3fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform3fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::uniform3i(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5)
{
  if (*(this + 11))
  {
    v5 = this;
    v6[0] = a2;
    v6[1] = a3;
    v6[2] = a4;
    v6[3] = a5;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform3i>(this, v6);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform3i>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform3i,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform3i,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::uniform3iv(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  if (*(result + 88))
  {
    v4 = result;
    v5 = a2;
    v6 = v7;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform3iv>(result, &v5);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform3iv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform3iv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform3iv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::uniform4f(WebKit::RemoteGraphicsContextGLProxy *this, int a2, float a3, float a4, float a5, float a6)
{
  if (*(this + 11))
  {
    v6 = this;
    v7[0] = a2;
    *&v7[1] = a3;
    *&v7[2] = a4;
    *&v7[3] = a5;
    *&v7[4] = a6;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform4f>(this, v7);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v6);
      return (*(*(v6 + 3) + 2288))(v6 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform4f>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform4f,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform4f,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::uniform4fv(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  if (*(result + 88))
  {
    v4 = result;
    v5 = a2;
    v6 = v7;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform4fv>(result, &v5);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform4fv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform4fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform4fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::uniform4i(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6)
{
  if (*(this + 11))
  {
    v6 = this;
    v7[0] = a2;
    v7[1] = a3;
    v7[2] = a4;
    v7[3] = a5;
    v7[4] = a6;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform4i>(this, v7);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v6);
      return (*(*(v6 + 3) + 2288))(v6 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform4i>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform4i,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform4i,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::uniform4iv(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  if (*(result + 88))
  {
    v4 = result;
    v5 = a2;
    v6 = v7;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform4iv>(result, &v5);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform4iv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform4iv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform4iv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::uniformMatrix2fv(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a4;
  v9[1] = a5;
  if (*(result + 88))
  {
    v5 = result;
    v6 = a2;
    v7 = a3 != 0;
    v8 = v9;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::UniformMatrix2fv>(result, &v6);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::UniformMatrix2fv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix2fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix2fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::uniformMatrix3fv(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a4;
  v9[1] = a5;
  if (*(result + 88))
  {
    v5 = result;
    v6 = a2;
    v7 = a3 != 0;
    v8 = v9;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::UniformMatrix3fv>(result, &v6);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::UniformMatrix3fv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix3fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix3fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::uniformMatrix4fv(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a4;
  v9[1] = a5;
  if (*(result + 88))
  {
    v5 = result;
    v6 = a2;
    v7 = a3 != 0;
    v8 = v9;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::UniformMatrix4fv>(result, &v6);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::UniformMatrix4fv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix4fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix4fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::useProgram(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::UseProgram>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::UseProgram>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UseProgram,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UseProgram,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::validateProgram(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ValidateProgram>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ValidateProgram>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ValidateProgram,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ValidateProgram,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::vertexAttrib1f(WebKit::RemoteGraphicsContextGLProxy *this, int a2, float a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    *&v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::VertexAttrib1f>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::VertexAttrib1f>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttrib1f,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttrib1f,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

double WebKit::RemoteGraphicsContextGLProxy::vertexAttrib1fv(WebKit::RemoteGraphicsContextGLProxy *a1, int a2, uint64_t a3)
{
  v10 = a3;
  v3 = *(a1 + 11);
  if (v3)
  {
    v8 = a2;
    v9 = &v10;
    atomic_fetch_add(v3, 1u);
    v5 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttrib1fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, &v8, *(a1 + 9));
    v7 = v5;
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      result = IPC::StreamClientConnection::operator delete(v3);
      if (!v7)
      {
        return result;
      }
    }

    else if (!v5)
    {
      return result;
    }

    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(a1);
    (*(*(a1 + 3) + 2288))(a1 + 3);
  }

  return result;
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::vertexAttrib2f(WebKit::RemoteGraphicsContextGLProxy *this, int a2, float a3, float a4)
{
  if (*(this + 11))
  {
    v4 = this;
    v5[0] = a2;
    *&v5[1] = a3;
    *&v5[2] = a4;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::VertexAttrib2f>(this, v5);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::VertexAttrib2f>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttrib2f,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttrib2f,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

double WebKit::RemoteGraphicsContextGLProxy::vertexAttrib2fv(WebKit::RemoteGraphicsContextGLProxy *a1, int a2, uint64_t a3)
{
  v10 = a3;
  v3 = *(a1 + 11);
  if (v3)
  {
    v8 = a2;
    v9 = &v10;
    atomic_fetch_add(v3, 1u);
    v5 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttrib2fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, &v8, *(a1 + 9));
    v7 = v5;
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      result = IPC::StreamClientConnection::operator delete(v3);
      if (!v7)
      {
        return result;
      }
    }

    else if (!v5)
    {
      return result;
    }

    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(a1);
    (*(*(a1 + 3) + 2288))(a1 + 3);
  }

  return result;
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::vertexAttrib3f(WebKit::RemoteGraphicsContextGLProxy *this, int a2, float a3, float a4, float a5)
{
  if (*(this + 11))
  {
    v5 = this;
    v6[0] = a2;
    *&v6[1] = a3;
    *&v6[2] = a4;
    *&v6[3] = a5;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::VertexAttrib3f>(this, v6);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::VertexAttrib3f>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttrib3f,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttrib3f,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

double WebKit::RemoteGraphicsContextGLProxy::vertexAttrib3fv(WebKit::RemoteGraphicsContextGLProxy *a1, int a2, uint64_t a3)
{
  v10 = a3;
  v3 = *(a1 + 11);
  if (v3)
  {
    v8 = a2;
    v9 = &v10;
    atomic_fetch_add(v3, 1u);
    v5 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttrib3fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, &v8, *(a1 + 9));
    v7 = v5;
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      result = IPC::StreamClientConnection::operator delete(v3);
      if (!v7)
      {
        return result;
      }
    }

    else if (!v5)
    {
      return result;
    }

    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(a1);
    (*(*(a1 + 3) + 2288))(a1 + 3);
  }

  return result;
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::vertexAttrib4f(WebKit::RemoteGraphicsContextGLProxy *this, int a2, float a3, float a4, float a5, float a6)
{
  if (*(this + 11))
  {
    v6 = this;
    v7[0] = a2;
    *&v7[1] = a3;
    *&v7[2] = a4;
    *&v7[3] = a5;
    *&v7[4] = a6;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::VertexAttrib4f>(this, v7);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v6);
      return (*(*(v6 + 3) + 2288))(v6 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::VertexAttrib4f>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttrib4f,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttrib4f,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::vertexAttrib4fv(uint64_t result, int a2, uint64_t a3)
{
  v6 = a3;
  if (*(result + 88))
  {
    v3 = result;
    v4 = a2;
    v5 = &v6;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::VertexAttrib4fv>(result, &v4);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::VertexAttrib4fv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttrib4fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttrib4fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::vertexAttribPointer(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6, uint64_t a7)
{
  if (*(this + 11))
  {
    v7 = this;
    v8[0] = a2;
    v8[1] = a3;
    v8[2] = a4;
    v9 = a5 != 0;
    v10 = a6;
    v11 = a7;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::VertexAttribPointer>(this, v8);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v7);
      return (*(*(v7 + 3) + 2288))(v7 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::VertexAttribPointer>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttribPointer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttribPointer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::viewport(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5)
{
  if (*(this + 11))
  {
    v5 = this;
    v6[0] = a2;
    v6[1] = a3;
    v6[2] = a4;
    v6[3] = a5;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Viewport>(this, v6);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Viewport>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Viewport,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Viewport,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::bufferData(WebKit::RemoteGraphicsContextGLProxy *this, int a2, uint64_t a3, int a4)
{
  if (*(this + 11))
  {
    v4 = this;
    v5 = a2;
    v6 = a3;
    v7 = a4;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BufferData0>(this, &v5);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BufferData0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BufferData0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BufferData0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::bufferData(uint64_t result, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v9[0] = a3;
  v9[1] = a4;
  if (*(result + 88))
  {
    v5 = result;
    v6 = a2;
    v7 = v9;
    v8 = a5;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BufferData1>(result, &v6);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BufferData1>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BufferData1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BufferData1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::bufferSubData(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a4;
  v9[1] = a5;
  if (*(result + 88))
  {
    v5 = result;
    v6 = a2;
    v7 = a3;
    v8 = v9;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BufferSubData>(result, &v6);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BufferSubData>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BufferSubData,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BufferSubData,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::readPixelsBufferObject(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, int a8)
{
  v15[0] = a2;
  v15[1] = a3;
  if (*(result + 88))
  {
    v8 = result;
    v9 = v15;
    v10 = a4;
    v11 = a5;
    v12 = a6;
    v13 = a7;
    v14 = a8;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ReadPixelsBufferObject>(result, &v9);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v8);
      return (*(*(v8 + 3) + 2288))(v8 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ReadPixelsBufferObject>(uint64_t a1, uint64_t **a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ReadPixelsBufferObject,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ReadPixelsBufferObject,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::texImage2D(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a10;
  v14[1] = a11;
  if (*(result + 88))
  {
    v11 = result;
    v12[0] = a2;
    v12[1] = a3;
    v12[2] = a4;
    v12[3] = a5;
    v12[4] = a6;
    v12[5] = a7;
    v12[6] = a8;
    v12[7] = a9;
    v13 = v14;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TexImage2D0>(result, v12);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v11);
      return (*(*(v11 + 3) + 2288))(v11 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TexImage2D0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexImage2D0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexImage2D0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::texImage2D(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned int a9, uint64_t a10)
{
  if (*(this + 11))
  {
    v10 = this;
    v11[0] = a2;
    v11[1] = a3;
    v11[2] = a4;
    v11[3] = a5;
    v11[4] = a6;
    v11[5] = a7;
    v11[6] = a8;
    v11[7] = a9;
    v12 = a10;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TexImage2D1>(this, v11);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v10);
      return (*(*(v10 + 3) + 2288))(v10 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TexImage2D1>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexImage2D1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexImage2D1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::texSubImage2D(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a10;
  v14[1] = a11;
  if (*(result + 88))
  {
    v11 = result;
    v12[0] = a2;
    v12[1] = a3;
    v12[2] = a4;
    v12[3] = a5;
    v12[4] = a6;
    v12[5] = a7;
    v12[6] = a8;
    v12[7] = a9;
    v13 = v14;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TexSubImage2D0>(result, v12);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v11);
      return (*(*(v11 + 3) + 2288))(v11 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TexSubImage2D0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexSubImage2D0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexSubImage2D0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::texSubImage2D(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned int a9, uint64_t a10)
{
  if (*(this + 11))
  {
    v10 = this;
    v11[0] = a2;
    v11[1] = a3;
    v11[2] = a4;
    v11[3] = a5;
    v11[4] = a6;
    v11[5] = a7;
    v11[6] = a8;
    v11[7] = a9;
    v12 = a10;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TexSubImage2D1>(this, v11);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v10);
      return (*(*(v10 + 3) + 2288))(v10 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TexSubImage2D1>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexSubImage2D1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexSubImage2D1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::compressedTexImage2D(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v13[0] = a9;
  v13[1] = a10;
  if (*(result + 88))
  {
    v10 = result;
    v11[0] = a2;
    v11[1] = a3;
    v11[2] = a4;
    v11[3] = a5;
    v11[4] = a6;
    v11[5] = a7;
    v11[6] = a8;
    v12 = v13;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CompressedTexImage2D0>(result, v11);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v10);
      return (*(*(v10 + 3) + 2288))(v10 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CompressedTexImage2D0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompressedTexImage2D0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompressedTexImage2D0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::compressedTexImage2D(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (*(this + 11))
  {
    v9 = this;
    v10[0] = a2;
    v10[1] = a3;
    v10[2] = a4;
    v10[3] = a5;
    v10[4] = a6;
    v10[5] = a7;
    v10[6] = a8;
    v11 = a9;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CompressedTexImage2D1>(this, v10);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v9);
      return (*(*(v9 + 3) + 2288))(v9 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CompressedTexImage2D1>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompressedTexImage2D1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompressedTexImage2D1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::compressedTexSubImage2D(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a10;
  v14[1] = a11;
  if (*(result + 88))
  {
    v11 = result;
    v12[0] = a2;
    v12[1] = a3;
    v12[2] = a4;
    v12[3] = a5;
    v12[4] = a6;
    v12[5] = a7;
    v12[6] = a8;
    v12[7] = a9;
    v13 = v14;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CompressedTexSubImage2D0>(result, v12);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v11);
      return (*(*(v11 + 3) + 2288))(v11 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CompressedTexSubImage2D0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompressedTexSubImage2D0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompressedTexSubImage2D0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::compressedTexSubImage2D(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10)
{
  if (*(this + 11))
  {
    v10 = this;
    v11[0] = a2;
    v11[1] = a3;
    v11[2] = a4;
    v11[3] = a5;
    v11[4] = a6;
    v11[5] = a7;
    v11[6] = a8;
    v11[7] = a9;
    v12 = a10;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CompressedTexSubImage2D1>(this, v11);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v10);
      return (*(*(v10 + 3) + 2288))(v10 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CompressedTexSubImage2D1>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompressedTexSubImage2D1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompressedTexSubImage2D1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::drawArraysInstanced(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5)
{
  if (*(this + 11))
  {
    v5 = this;
    v6[0] = a2;
    v6[1] = a3;
    v6[2] = a4;
    v6[3] = a5;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DrawArraysInstanced>(this, v6);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DrawArraysInstanced>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawArraysInstanced,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawArraysInstanced,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::drawElementsInstanced(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, uint64_t a5, int a6)
{
  if (*(this + 11))
  {
    v6 = this;
    v7[0] = a2;
    v7[1] = a3;
    v7[2] = a4;
    v8 = a5;
    v9 = a6;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DrawElementsInstanced>(this, v7);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v6);
      return (*(*(v6 + 3) + 2288))(v6 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DrawElementsInstanced>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawElementsInstanced,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawElementsInstanced,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::vertexAttribDivisor(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::VertexAttribDivisor>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::VertexAttribDivisor>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttribDivisor,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttribDivisor,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::createVertexArray(WebKit::RemoteGraphicsContextGLProxy *this)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v2 = *(this + 44);
  v3 = (v2 + 1);
  *(this + 44) = v3;
  v5 = v2 + 1;
  if (WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CreateVertexArray>(this, &v5))
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    return 0;
  }

  return v3;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CreateVertexArray>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateVertexArray,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateVertexArray,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::deleteVertexArray(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteVertexArray>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteVertexArray>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteVertexArray,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteVertexArray,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::isVertexArray(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v8 = a2;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsVertexArray>(this, &v8, &v9);
  if (v11)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v3 = 0;
    if (v11)
    {
      return v3;
    }
  }

  else
  {
    v3 = v10;
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    IPC::Decoder::~Decoder(v4);
    bmalloc::api::tzoneFree(v6, v7);
  }

  return v3;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsVertexArray>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsVertexArray,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsVertexArray,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::bindVertexArray(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BindVertexArray>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BindVertexArray>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindVertexArray,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindVertexArray,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::copyBufferSubData(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(this + 11))
  {
    v6 = this;
    v7[0] = a2;
    v7[1] = a3;
    v8 = a4;
    v9 = a5;
    v10 = a6;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CopyBufferSubData>(this, v7);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v6);
      return (*(*(v6 + 3) + 2288))(v6 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CopyBufferSubData>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CopyBufferSubData,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CopyBufferSubData,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::blitFramebuffer(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, unsigned int a10, unsigned int a11)
{
  if (*(this + 11))
  {
    v11 = this;
    v12[0] = a2;
    v12[1] = a3;
    v12[2] = a4;
    v12[3] = a5;
    v12[4] = a6;
    v12[5] = a7;
    v12[6] = a8;
    v12[7] = a9;
    v12[8] = a10;
    v12[9] = a11;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BlitFramebuffer>(this, v12);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v11);
      return (*(*(v11 + 3) + 2288))(v11 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BlitFramebuffer>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlitFramebuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlitFramebuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::framebufferTextureLayer(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6)
{
  if (*(this + 11))
  {
    v6 = this;
    v7[0] = a2;
    v7[1] = a3;
    v7[2] = a4;
    v7[3] = a5;
    v7[4] = a6;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::FramebufferTextureLayer>(this, v7);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v6);
      return (*(*(v6 + 3) + 2288))(v6 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::FramebufferTextureLayer>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::FramebufferTextureLayer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::FramebufferTextureLayer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::readBuffer(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ReadBuffer>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ReadBuffer>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ReadBuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ReadBuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::renderbufferStorageMultisample(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6)
{
  if (*(this + 11))
  {
    v6 = this;
    v7[0] = a2;
    v7[1] = a3;
    v7[2] = a4;
    v7[3] = a5;
    v7[4] = a6;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::RenderbufferStorageMultisample>(this, v7);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v6);
      return (*(*(v6 + 3) + 2288))(v6 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::RenderbufferStorageMultisample>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::RenderbufferStorageMultisample,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::RenderbufferStorageMultisample,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::texStorage2D(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6)
{
  if (*(this + 11))
  {
    v6 = this;
    v7[0] = a2;
    v7[1] = a3;
    v7[2] = a4;
    v7[3] = a5;
    v7[4] = a6;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TexStorage2D>(this, v7);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v6);
      return (*(*(v6 + 3) + 2288))(v6 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TexStorage2D>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexStorage2D,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexStorage2D,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::texStorage3D(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6, int a7)
{
  if (*(this + 11))
  {
    v7 = this;
    v8[0] = a2;
    v8[1] = a3;
    v8[2] = a4;
    v8[3] = a5;
    v8[4] = a6;
    v8[5] = a7;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TexStorage3D>(this, v8);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v7);
      return (*(*(v7 + 3) + 2288))(v7 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TexStorage3D>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexStorage3D,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexStorage3D,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::texImage3D(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  v15[0] = a11;
  v15[1] = a12;
  if (*(result + 88))
  {
    v12 = result;
    v13[0] = a2;
    v13[1] = a3;
    v13[2] = a4;
    v13[3] = a5;
    v13[4] = a6;
    v13[5] = a7;
    v13[6] = a8;
    v13[7] = a9;
    v13[8] = a10;
    v14 = v15;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TexImage3D0>(result, v13);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v12);
      return (*(*(v12 + 3) + 2288))(v12 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TexImage3D0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexImage3D0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexImage3D0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::texImage3D(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned int a9, unsigned int a10, uint64_t a11)
{
  if (*(this + 11))
  {
    v11 = this;
    v12[0] = a2;
    v12[1] = a3;
    v12[2] = a4;
    v12[3] = a5;
    v12[4] = a6;
    v12[5] = a7;
    v12[6] = a8;
    v12[7] = a9;
    v12[8] = a10;
    v13 = a11;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TexImage3D1>(this, v12);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v11);
      return (*(*(v11 + 3) + 2288))(v11 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TexImage3D1>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexImage3D1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexImage3D1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::texSubImage3D(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, uint64_t a12, uint64_t a13)
{
  v16[0] = a12;
  v16[1] = a13;
  if (*(result + 88))
  {
    v13 = result;
    v14[0] = a2;
    v14[1] = a3;
    v14[2] = a4;
    v14[3] = a5;
    v14[4] = a6;
    v14[5] = a7;
    v14[6] = a8;
    v14[7] = a9;
    v14[8] = a10;
    v14[9] = a11;
    v15 = v16;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TexSubImage3D0>(result, v14);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v13);
      return (*(*(v13 + 3) + 2288))(v13 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TexSubImage3D0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexSubImage3D0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexSubImage3D0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::texSubImage3D(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, unsigned int a10, unsigned int a11, uint64_t a12)
{
  if (*(this + 11))
  {
    v12 = this;
    v13[0] = a2;
    v13[1] = a3;
    v13[2] = a4;
    v13[3] = a5;
    v13[4] = a6;
    v13[5] = a7;
    v13[6] = a8;
    v13[7] = a9;
    v13[8] = a10;
    v13[9] = a11;
    v14 = a12;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TexSubImage3D1>(this, v13);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v12);
      return (*(*(v12 + 3) + 2288))(v12 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TexSubImage3D1>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexSubImage3D1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexSubImage3D1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::copyTexSubImage3D(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  if (*(this + 11))
  {
    v10 = this;
    v11[0] = a2;
    v11[1] = a3;
    v11[2] = a4;
    v11[3] = a5;
    v11[4] = a6;
    v11[5] = a7;
    v11[6] = a8;
    v11[7] = a9;
    v11[8] = a10;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CopyTexSubImage3D>(this, v11);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v10);
      return (*(*(v10 + 3) + 2288))(v10 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CopyTexSubImage3D>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CopyTexSubImage3D,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CopyTexSubImage3D,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::compressedTexImage3D(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a10;
  v14[1] = a11;
  if (*(result + 88))
  {
    v11 = result;
    v12[0] = a2;
    v12[1] = a3;
    v12[2] = a4;
    v12[3] = a5;
    v12[4] = a6;
    v12[5] = a7;
    v12[6] = a8;
    v12[7] = a9;
    v13 = v14;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CompressedTexImage3D0>(result, v12);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v11);
      return (*(*(v11 + 3) + 2288))(v11 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CompressedTexImage3D0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompressedTexImage3D0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompressedTexImage3D0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::compressedTexImage3D(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10)
{
  if (*(this + 11))
  {
    v10 = this;
    v11[0] = a2;
    v11[1] = a3;
    v11[2] = a4;
    v11[3] = a5;
    v11[4] = a6;
    v11[5] = a7;
    v11[6] = a8;
    v11[7] = a9;
    v12 = a10;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CompressedTexImage3D1>(this, v11);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v10);
      return (*(*(v10 + 3) + 2288))(v10 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CompressedTexImage3D1>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompressedTexImage3D1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompressedTexImage3D1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::compressedTexSubImage3D(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, uint64_t a12, uint64_t a13)
{
  v16[0] = a12;
  v16[1] = a13;
  if (*(result + 88))
  {
    v13 = result;
    v14[0] = a2;
    v14[1] = a3;
    v14[2] = a4;
    v14[3] = a5;
    v14[4] = a6;
    v14[5] = a7;
    v14[6] = a8;
    v14[7] = a9;
    v14[8] = a10;
    v14[9] = a11;
    v15 = v16;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CompressedTexSubImage3D0>(result, v14);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v13);
      return (*(*(v13 + 3) + 2288))(v13 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CompressedTexSubImage3D0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompressedTexSubImage3D0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompressedTexSubImage3D0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::compressedTexSubImage3D(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, unsigned int a10, int a11, uint64_t a12)
{
  if (*(this + 11))
  {
    v12 = this;
    v13[0] = a2;
    v13[1] = a3;
    v13[2] = a4;
    v13[3] = a5;
    v13[4] = a6;
    v13[5] = a7;
    v13[6] = a8;
    v13[7] = a9;
    v13[8] = a10;
    v13[9] = a11;
    v14 = a12;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CompressedTexSubImage3D1>(this, v13);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v12);
      return (*(*(v12 + 3) + 2288))(v12 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CompressedTexSubImage3D1>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompressedTexSubImage3D1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompressedTexSubImage3D1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getFragDataLocation(WebKit::RemoteGraphicsContextGLProxy *this, int a2, const WTF::String *a3)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v9 = a2;
  v10 = a3;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetFragDataLocation>(this, &v9, &v11);
  if (v13)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v4 = 0;
    if (v13)
    {
      return v4;
    }
  }

  else
  {
    v4 = v12;
  }

  v5 = v11;
  v11 = 0;
  if (v5)
  {
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v7, v8);
  }

  return v4;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetFragDataLocation>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetFragDataLocation,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetFragDataLocation,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::uniform1ui(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform1ui>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform1ui>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform1ui,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform1ui,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::uniform2ui(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4)
{
  if (*(this + 11))
  {
    v4 = this;
    v5[0] = a2;
    v5[1] = a3;
    v5[2] = a4;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform2ui>(this, v5);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform2ui>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform2ui,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform2ui,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::uniform3ui(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5)
{
  if (*(this + 11))
  {
    v5 = this;
    v6[0] = a2;
    v6[1] = a3;
    v6[2] = a4;
    v6[3] = a5;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform3ui>(this, v6);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform3ui>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform3ui,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform3ui,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::uniform4ui(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6)
{
  if (*(this + 11))
  {
    v6 = this;
    v7[0] = a2;
    v7[1] = a3;
    v7[2] = a4;
    v7[3] = a5;
    v7[4] = a6;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform4ui>(this, v7);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v6);
      return (*(*(v6 + 3) + 2288))(v6 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform4ui>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform4ui,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform4ui,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::uniform1uiv(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  if (*(result + 88))
  {
    v4 = result;
    v5 = a2;
    v6 = v7;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform1uiv>(result, &v5);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform1uiv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform1uiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform1uiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::uniform2uiv(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  if (*(result + 88))
  {
    v4 = result;
    v5 = a2;
    v6 = v7;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform2uiv>(result, &v5);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform2uiv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform2uiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform2uiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::uniform3uiv(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  if (*(result + 88))
  {
    v4 = result;
    v5 = a2;
    v6 = v7;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform3uiv>(result, &v5);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform3uiv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform3uiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform3uiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::uniform4uiv(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  if (*(result + 88))
  {
    v4 = result;
    v5 = a2;
    v6 = v7;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform4uiv>(result, &v5);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Uniform4uiv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform4uiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform4uiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::uniformMatrix2x3fv(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a4;
  v9[1] = a5;
  if (*(result + 88))
  {
    v5 = result;
    v6 = a2;
    v7 = a3 != 0;
    v8 = v9;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::UniformMatrix2x3fv>(result, &v6);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::UniformMatrix2x3fv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix2x3fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix2x3fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::uniformMatrix3x2fv(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a4;
  v9[1] = a5;
  if (*(result + 88))
  {
    v5 = result;
    v6 = a2;
    v7 = a3 != 0;
    v8 = v9;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::UniformMatrix3x2fv>(result, &v6);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::UniformMatrix3x2fv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix3x2fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix3x2fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::uniformMatrix2x4fv(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a4;
  v9[1] = a5;
  if (*(result + 88))
  {
    v5 = result;
    v6 = a2;
    v7 = a3 != 0;
    v8 = v9;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::UniformMatrix2x4fv>(result, &v6);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::UniformMatrix2x4fv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix2x4fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix2x4fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::uniformMatrix4x2fv(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a4;
  v9[1] = a5;
  if (*(result + 88))
  {
    v5 = result;
    v6 = a2;
    v7 = a3 != 0;
    v8 = v9;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::UniformMatrix4x2fv>(result, &v6);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::UniformMatrix4x2fv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix4x2fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix4x2fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::uniformMatrix3x4fv(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a4;
  v9[1] = a5;
  if (*(result + 88))
  {
    v5 = result;
    v6 = a2;
    v7 = a3 != 0;
    v8 = v9;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::UniformMatrix3x4fv>(result, &v6);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::UniformMatrix3x4fv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix3x4fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix3x4fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::uniformMatrix4x3fv(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a4;
  v9[1] = a5;
  if (*(result + 88))
  {
    v5 = result;
    v6 = a2;
    v7 = a3 != 0;
    v8 = v9;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::UniformMatrix4x3fv>(result, &v6);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::UniformMatrix4x3fv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix4x3fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix4x3fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::vertexAttribI4i(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6)
{
  if (*(this + 11))
  {
    v6 = this;
    v7[0] = a2;
    v7[1] = a3;
    v7[2] = a4;
    v7[3] = a5;
    v7[4] = a6;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::VertexAttribI4i>(this, v7);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v6);
      return (*(*(v6 + 3) + 2288))(v6 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::VertexAttribI4i>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttribI4i,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttribI4i,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

double WebKit::RemoteGraphicsContextGLProxy::vertexAttribI4iv(WebKit::RemoteGraphicsContextGLProxy *a1, int a2, uint64_t a3)
{
  v10 = a3;
  v3 = *(a1 + 11);
  if (v3)
  {
    v8 = a2;
    v9 = &v10;
    atomic_fetch_add(v3, 1u);
    v5 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttribI4iv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, &v8, *(a1 + 9));
    v7 = v5;
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      result = IPC::StreamClientConnection::operator delete(v3);
      if (!v7)
      {
        return result;
      }
    }

    else if (!v5)
    {
      return result;
    }

    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(a1);
    (*(*(a1 + 3) + 2288))(a1 + 3);
  }

  return result;
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::vertexAttribI4ui(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6)
{
  if (*(this + 11))
  {
    v6 = this;
    v7[0] = a2;
    v7[1] = a3;
    v7[2] = a4;
    v7[3] = a5;
    v7[4] = a6;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::VertexAttribI4ui>(this, v7);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v6);
      return (*(*(v6 + 3) + 2288))(v6 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::VertexAttribI4ui>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttribI4ui,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttribI4ui,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

double WebKit::RemoteGraphicsContextGLProxy::vertexAttribI4uiv(WebKit::RemoteGraphicsContextGLProxy *a1, int a2, uint64_t a3)
{
  v10 = a3;
  v3 = *(a1 + 11);
  if (v3)
  {
    v8 = a2;
    v9 = &v10;
    atomic_fetch_add(v3, 1u);
    v5 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttribI4uiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, &v8, *(a1 + 9));
    v7 = v5;
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      result = IPC::StreamClientConnection::operator delete(v3);
      if (!v7)
      {
        return result;
      }
    }

    else if (!v5)
    {
      return result;
    }

    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(a1);
    (*(*(a1 + 3) + 2288))(a1 + 3);
  }

  return result;
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::vertexAttribIPointer(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, uint64_t a6)
{
  if (*(this + 11))
  {
    v6 = this;
    v7[0] = a2;
    v7[1] = a3;
    v7[2] = a4;
    v7[3] = a5;
    v8 = a6;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::VertexAttribIPointer>(this, v7);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v6);
      return (*(*(v6 + 3) + 2288))(v6 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::VertexAttribIPointer>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttribIPointer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttribIPointer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::drawRangeElements(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6, uint64_t a7)
{
  if (*(this + 11))
  {
    v7 = this;
    v8[0] = a2;
    v8[1] = a3;
    v8[2] = a4;
    v8[3] = a5;
    v8[4] = a6;
    v9 = a7;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DrawRangeElements>(this, v8);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v7);
      return (*(*(v7 + 3) + 2288))(v7 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DrawRangeElements>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawRangeElements,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawRangeElements,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::clearBufferiv(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a4;
  v8[1] = a5;
  if (*(result + 88))
  {
    v5 = result;
    v6[0] = a2;
    v6[1] = a3;
    v7 = v8;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ClearBufferiv>(result, v6);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ClearBufferiv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ClearBufferiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ClearBufferiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::clearBufferuiv(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a4;
  v8[1] = a5;
  if (*(result + 88))
  {
    v5 = result;
    v6[0] = a2;
    v6[1] = a3;
    v7 = v8;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ClearBufferuiv>(result, v6);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ClearBufferuiv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ClearBufferuiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ClearBufferuiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::clearBufferfv(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a4;
  v8[1] = a5;
  if (*(result + 88))
  {
    v5 = result;
    v6[0] = a2;
    v6[1] = a3;
    v7 = v8;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ClearBufferfv>(result, v6);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ClearBufferfv>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ClearBufferfv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ClearBufferfv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::clearBufferfi(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, float a4, int a5)
{
  if (*(this + 11))
  {
    v5 = this;
    v6[0] = a2;
    v6[1] = a3;
    *&v6[2] = a4;
    v6[3] = a5;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ClearBufferfi>(this, v6);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ClearBufferfi>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ClearBufferfi,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ClearBufferfi,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::createQuery(WebKit::RemoteGraphicsContextGLProxy *this)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v2 = *(this + 44);
  v3 = (v2 + 1);
  *(this + 44) = v3;
  v5 = v2 + 1;
  if (WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CreateQuery>(this, &v5))
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    return 0;
  }

  return v3;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CreateQuery>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateQuery,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateQuery,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::deleteQuery(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteQuery>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteQuery>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteQuery,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteQuery,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::isQuery(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v8 = a2;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsQuery>(this, &v8, &v9);
  if (v11)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v3 = 0;
    if (v11)
    {
      return v3;
    }
  }

  else
  {
    v3 = v10;
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    IPC::Decoder::~Decoder(v4);
    bmalloc::api::tzoneFree(v6, v7);
  }

  return v3;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsQuery>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsQuery,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsQuery,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::beginQuery(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BeginQuery>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BeginQuery>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BeginQuery,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BeginQuery,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::endQuery(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::EndQuery>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::EndQuery>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::EndQuery,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::EndQuery,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getQuery(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v9[0] = a2;
  v9[1] = a3;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetQuery>(this, v9, &v10);
  if (v12)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v4 = 0;
    if (v12)
    {
      return v4;
    }
  }

  else
  {
    v4 = v11;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v7, v8);
  }

  return v4;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetQuery>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetQuery,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetQuery,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getQueryObjectui(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v9[0] = a2;
  v9[1] = a3;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetQueryObjectui>(this, v9, &v10);
  if (v12)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v4 = 0;
    if (v12)
    {
      return v4;
    }
  }

  else
  {
    v4 = v11;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v7, v8);
  }

  return v4;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetQueryObjectui>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetQueryObjectui,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetQueryObjectui,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::createSampler(WebKit::RemoteGraphicsContextGLProxy *this)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v2 = *(this + 44);
  v3 = (v2 + 1);
  *(this + 44) = v3;
  v5 = v2 + 1;
  if (WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CreateSampler>(this, &v5))
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    return 0;
  }

  return v3;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CreateSampler>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateSampler,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateSampler,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::deleteSampler(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteSampler>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteSampler>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteSampler,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteSampler,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::isSampler(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v8 = a2;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsSampler>(this, &v8, &v9);
  if (v11)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v3 = 0;
    if (v11)
    {
      return v3;
    }
  }

  else
  {
    v3 = v10;
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    IPC::Decoder::~Decoder(v4);
    bmalloc::api::tzoneFree(v6, v7);
  }

  return v3;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsSampler>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsSampler,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsSampler,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::bindSampler(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BindSampler>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BindSampler>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindSampler,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindSampler,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::samplerParameteri(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4)
{
  if (*(this + 11))
  {
    v4 = this;
    v5[0] = a2;
    v5[1] = a3;
    v5[2] = a4;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::SamplerParameteri>(this, v5);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::SamplerParameteri>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::SamplerParameteri,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::SamplerParameteri,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::samplerParameterf(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, float a4)
{
  if (*(this + 11))
  {
    v4 = this;
    v5[0] = a2;
    v5[1] = a3;
    *&v5[2] = a4;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::SamplerParameterf>(this, v5);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::SamplerParameterf>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::SamplerParameterf,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::SamplerParameterf,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

float WebKit::RemoteGraphicsContextGLProxy::getSamplerParameterf(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (!*(this + 11))
  {
    return 0.0;
  }

  v9[0] = a2;
  v9[1] = a3;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetSamplerParameterf>(this, v9, &v10);
  if (v12)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v4 = 0.0;
    if (v12)
    {
      return v4;
    }
  }

  else
  {
    v4 = v11;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v7, v8);
  }

  return v4;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetSamplerParameterf>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetSamplerParameterf,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetSamplerParameterf,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getSamplerParameteri(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v9[0] = a2;
  v9[1] = a3;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetSamplerParameteri>(this, v9, &v10);
  if (v12)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v4 = 0;
    if (v12)
    {
      return v4;
    }
  }

  else
  {
    v4 = v11;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v7, v8);
  }

  return v4;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetSamplerParameteri>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetSamplerParameteri,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetSamplerParameteri,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

IPC::Decoder *WebKit::RemoteGraphicsContextGLProxy::fenceSync(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v9[0] = a2;
  v9[1] = a3;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::FenceSync>(this, v9, v10);
  if (v11)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v4 = 0;
    if (v11)
    {
      return v4;
    }
  }

  else
  {
    v4 = v10[1];
  }

  v5 = v10[0];
  v10[0] = 0;
  if (v5)
  {
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v7, v8);
  }

  return v4;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::FenceSync>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::FenceSync,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::FenceSync,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::isSync(WebKit::RemoteGraphicsContextGLProxy *this, void *a2)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v8 = a2;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsSync>(this, &v8, &v9);
  if (v11)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v3 = 0;
    if (v11)
    {
      return v3;
    }
  }

  else
  {
    v3 = v10;
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    IPC::Decoder::~Decoder(v4);
    bmalloc::api::tzoneFree(v6, v7);
  }

  return v3;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsSync>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsSync,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsSync,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::deleteSync(WebKit::RemoteGraphicsContextGLProxy *this, uint64_t a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteSync>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteSync>(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteSync,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteSync,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::clientWaitSync(WebKit::RemoteGraphicsContextGLProxy *this, void *a2, int a3, uint64_t a4)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v10 = a2;
  v11 = a3;
  v12 = a4;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::ClientWaitSync>(this, &v10, &v13);
  if (v15)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v5 = 0;
    if (v15)
    {
      return v5;
    }
  }

  else
  {
    v5 = v14;
  }

  v6 = v13;
  v13 = 0;
  if (v6)
  {
    IPC::Decoder::~Decoder(v6);
    bmalloc::api::tzoneFree(v8, v9);
  }

  return v5;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::ClientWaitSync>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::ClientWaitSync,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::ClientWaitSync,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::waitSync(WebKit::RemoteGraphicsContextGLProxy *this, void *a2, int a3, uint64_t a4)
{
  if (*(this + 11))
  {
    v4 = this;
    v5 = a2;
    v6 = a3;
    v7 = a4;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::WaitSync>(this, &v5);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::WaitSync>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::WaitSync,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::WaitSync,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getSynci(WebKit::RemoteGraphicsContextGLProxy *this, void *a2, int a3)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v9 = a2;
  v10 = a3;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetSynci>(this, &v9, &v11);
  if (v13)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v4 = 0;
    if (v13)
    {
      return v4;
    }
  }

  else
  {
    v4 = v12;
  }

  v5 = v11;
  v11 = 0;
  if (v5)
  {
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v7, v8);
  }

  return v4;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetSynci>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetSynci,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetSynci,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::createTransformFeedback(WebKit::RemoteGraphicsContextGLProxy *this)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v2 = *(this + 44);
  v3 = (v2 + 1);
  *(this + 44) = v3;
  v5 = v2 + 1;
  if (WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CreateTransformFeedback>(this, &v5))
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    return 0;
  }

  return v3;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CreateTransformFeedback>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateTransformFeedback,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateTransformFeedback,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::deleteTransformFeedback(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteTransformFeedback>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteTransformFeedback>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteTransformFeedback,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteTransformFeedback,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::isTransformFeedback(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v8 = a2;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsTransformFeedback>(this, &v8, &v9);
  if (v11)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v3 = 0;
    if (v11)
    {
      return v3;
    }
  }

  else
  {
    v3 = v10;
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    IPC::Decoder::~Decoder(v4);
    bmalloc::api::tzoneFree(v6, v7);
  }

  return v3;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsTransformFeedback>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsTransformFeedback,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsTransformFeedback,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::bindTransformFeedback(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BindTransformFeedback>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BindTransformFeedback>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindTransformFeedback,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindTransformFeedback,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::beginTransformFeedback(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BeginTransformFeedback>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BeginTransformFeedback>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BeginTransformFeedback,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BeginTransformFeedback,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::endTransformFeedback(WebKit::RemoteGraphicsContextGLProxy *this)
{
  if (*(this + 11))
  {
    v1 = this;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::EndTransformFeedback>(this, &v2);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v1);
      return (*(*(v1 + 3) + 2288))(v1 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::EndTransformFeedback>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::EndTransformFeedback,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::EndTransformFeedback,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::transformFeedbackVaryings(uint64_t result, int a2, uint64_t a3, int a4)
{
  if (*(result + 88))
  {
    v4 = result;
    v5 = a2;
    v6 = a3;
    v7 = a4;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TransformFeedbackVaryings>(result, &v5);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::TransformFeedbackVaryings>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TransformFeedbackVaryings,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TransformFeedbackVaryings,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

IPC::Decoder *WebKit::RemoteGraphicsContextGLProxy::getTransformFeedbackVarying(IPC::Decoder *result, int a2, int a3, uint64_t a4)
{
  if (*(result + 11))
  {
    v5 = result;
    v11[0] = a2;
    v11[1] = a3;
    WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetTransformFeedbackVarying>(result, v11, &v12);
    if (v15)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      result = (*(*(v5 + 3) + 2288))(v5 + 3);
    }

    else
    {
      v7 = v13;
      v13 = 0;
      result = *a4;
      *a4 = v7;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v6);
      }

      *(a4 + 8) = v14;
    }

    if (!v15)
    {
      v8 = v13;
      v13 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v6);
      }

      result = v12;
      v12 = 0;
      if (result)
      {
        IPC::Decoder::~Decoder(result);
        return bmalloc::api::tzoneFree(v9, v10);
      }
    }
  }

  return result;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetTransformFeedbackVarying>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetTransformFeedbackVarying,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetTransformFeedbackVarying,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::pauseTransformFeedback(WebKit::RemoteGraphicsContextGLProxy *this)
{
  if (*(this + 11))
  {
    v1 = this;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::PauseTransformFeedback>(this, &v2);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v1);
      return (*(*(v1 + 3) + 2288))(v1 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::PauseTransformFeedback>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::PauseTransformFeedback,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::PauseTransformFeedback,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::resumeTransformFeedback(WebKit::RemoteGraphicsContextGLProxy *this)
{
  if (*(this + 11))
  {
    v1 = this;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ResumeTransformFeedback>(this, &v2);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v1);
      return (*(*(v1 + 3) + 2288))(v1 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ResumeTransformFeedback>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ResumeTransformFeedback,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ResumeTransformFeedback,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::bindBufferBase(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4)
{
  if (*(this + 11))
  {
    v4 = this;
    v5[0] = a2;
    v5[1] = a3;
    v5[2] = a4;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BindBufferBase>(this, v5);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BindBufferBase>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindBufferBase,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindBufferBase,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::bindBufferRange(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  if (*(this + 11))
  {
    v6 = this;
    v7[0] = a2;
    v7[1] = a3;
    v7[2] = a4;
    v8 = a5;
    v9 = a6;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BindBufferRange>(this, v7);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v6);
      return (*(*(v6 + 3) + 2288))(v6 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BindBufferRange>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindBufferRange,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindBufferRange,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::getUniformIndices@<X0>(WebKit::RemoteGraphicsContextGLProxy *result@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(result + 11))
  {
    v5 = result;
    v10 = a2;
    v11 = a3;
    WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetUniformIndices>(result, &v10, &v12);
    if (v15)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      result = (*(*(v5 + 3) + 2288))(v5 + 3);
      *a4 = 0;
      a4[1] = 0;
    }

    else
    {
      result = WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a4, &v13);
    }

    if (!v15)
    {
      v7 = v13;
      if (v13)
      {
        v13 = 0;
        v14 = 0;
        WTF::fastFree(v7, v6);
      }

      result = v12;
      v12 = 0;
      if (result)
      {
        IPC::Decoder::~Decoder(result);
        return bmalloc::api::tzoneFree(v8, v9);
      }
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  return result;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetUniformIndices>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetUniformIndices,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetUniformIndices,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::getActiveUniforms@<X0>(WebKit::RemoteGraphicsContextGLProxy *result@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  if (*(result + 11))
  {
    v6 = result;
    v11 = a2;
    v12 = a3;
    v13 = a4;
    WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetActiveUniforms>(result, &v11, &v14);
    if (v17)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v6);
      result = (*(*(v6 + 3) + 2288))(v6 + 3);
      *a5 = 0;
      a5[1] = 0;
    }

    else
    {
      result = WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a5, &v15);
    }

    if (!v17)
    {
      v8 = v15;
      if (v15)
      {
        v15 = 0;
        v16 = 0;
        WTF::fastFree(v8, v7);
      }

      result = v14;
      v14 = 0;
      if (result)
      {
        IPC::Decoder::~Decoder(result);
        return bmalloc::api::tzoneFree(v9, v10);
      }
    }
  }

  else
  {
    *a5 = 0;
    a5[1] = 0;
  }

  return result;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetActiveUniforms>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetActiveUniforms,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetActiveUniforms,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getUniformBlockIndex(WebKit::RemoteGraphicsContextGLProxy *this, int a2, const WTF::String *a3)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v9 = a2;
  v10 = a3;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetUniformBlockIndex>(this, &v9, &v11);
  if (v13)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v4 = 0;
    if (v13)
    {
      return v4;
    }
  }

  else
  {
    v4 = v12;
  }

  v5 = v11;
  v11 = 0;
  if (v5)
  {
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v7, v8);
  }

  return v4;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetUniformBlockIndex>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetUniformBlockIndex,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetUniformBlockIndex,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

void WebKit::RemoteGraphicsContextGLProxy::getActiveUniformBlockName(WebKit::RemoteGraphicsContextGLProxy *this@<X0>, int a2@<W1>, int a3@<W2>, WTF::StringImpl **a4@<X8>)
{
  if (*(this + 11))
  {
    v12[0] = a2;
    v12[1] = a3;
    WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetActiveUniformBlockName>(this, v12, &v13);
    if (v15)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
      (*(*(this + 3) + 2288))(this + 24);
      v7 = 0;
    }

    else
    {
      v7 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      }
    }

    *a4 = v7;
    if (!v15)
    {
      v8 = v14;
      v14 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v6);
      }

      v9 = v13;
      v13 = 0;
      if (v9)
      {
        IPC::Decoder::~Decoder(v9);
        bmalloc::api::tzoneFree(v10, v11);
      }
    }
  }

  else
  {
    *a4 = 0;
  }
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetActiveUniformBlockName>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetActiveUniformBlockName,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetActiveUniformBlockName,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::uniformBlockBinding(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4)
{
  if (*(this + 11))
  {
    v4 = this;
    v5[0] = a2;
    v5[1] = a3;
    v5[2] = a4;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::UniformBlockBinding>(this, v5);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::UniformBlockBinding>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformBlockBinding,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformBlockBinding,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getActiveUniformBlockiv(uint64_t result, int a2, int a3, int a4, void *a5, unint64_t a6)
{
  if (*(result + 88))
  {
    v8 = result;
    v11[0] = a2;
    v11[1] = a3;
    v11[2] = a4;
    v12 = a6;
    WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetActiveUniformBlockiv>(result, v11, v13);
    if (v15)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v8);
      result = (*(*(v8 + 3) + 2288))(v8 + 3);
    }

    else
    {
      if (a6 < v14)
      {
        result = 1067;
        __break(0xC471u);
        return result;
      }

      result = memcpy(a5, v13[1], 4 * v14);
    }

    if (!v15)
    {
      result = v13[0];
      v13[0] = 0;
      if (result)
      {
        IPC::Decoder::~Decoder(result);
        return bmalloc::api::tzoneFree(v9, v10);
      }
    }
  }

  return result;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetActiveUniformBlockiv>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetActiveUniformBlockiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetActiveUniformBlockiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

void WebKit::RemoteGraphicsContextGLProxy::getTranslatedShaderSourceANGLE(WebKit::RemoteGraphicsContextGLProxy *this@<X0>, int a2@<W1>, WTF::StringImpl **a3@<X8>)
{
  if (*(this + 11))
  {
    v11 = a2;
    WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetTranslatedShaderSourceANGLE>(this, &v11, &v12);
    if (v14)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
      (*(*(this + 3) + 2288))(this + 24);
      v6 = 0;
    }

    else
    {
      v6 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      }
    }

    *a3 = v6;
    if (!v14)
    {
      v7 = v13;
      v13 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v5);
      }

      v8 = v12;
      v12 = 0;
      if (v8)
      {
        IPC::Decoder::~Decoder(v8);
        bmalloc::api::tzoneFree(v9, v10);
      }
    }
  }

  else
  {
    *a3 = 0;
  }
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetTranslatedShaderSourceANGLE>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetTranslatedShaderSourceANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetTranslatedShaderSourceANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::createQueryEXT(WebKit::RemoteGraphicsContextGLProxy *this)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v2 = *(this + 44);
  v3 = (v2 + 1);
  *(this + 44) = v3;
  v5 = v2 + 1;
  if (WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CreateQueryEXT>(this, &v5))
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    return 0;
  }

  return v3;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CreateQueryEXT>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateQueryEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateQueryEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::deleteQueryEXT(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteQueryEXT>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteQueryEXT>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteQueryEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteQueryEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::isQueryEXT(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v8 = a2;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsQueryEXT>(this, &v8, &v9);
  if (v11)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v3 = 0;
    if (v11)
    {
      return v3;
    }
  }

  else
  {
    v3 = v10;
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    IPC::Decoder::~Decoder(v4);
    bmalloc::api::tzoneFree(v6, v7);
  }

  return v3;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsQueryEXT>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsQueryEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsQueryEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::beginQueryEXT(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BeginQueryEXT>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BeginQueryEXT>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BeginQueryEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BeginQueryEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::endQueryEXT(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::EndQueryEXT>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::EndQueryEXT>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::EndQueryEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::EndQueryEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::queryCounterEXT(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::QueryCounterEXT>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::QueryCounterEXT>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::QueryCounterEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::QueryCounterEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getQueryiEXT(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v9[0] = a2;
  v9[1] = a3;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetQueryiEXT>(this, v9, &v10);
  if (v12)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v4 = 0;
    if (v12)
    {
      return v4;
    }
  }

  else
  {
    v4 = v11;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v7, v8);
  }

  return v4;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetQueryiEXT>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetQueryiEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetQueryiEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getQueryObjectiEXT(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v9[0] = a2;
  v9[1] = a3;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetQueryObjectiEXT>(this, v9, &v10);
  if (v12)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v4 = 0;
    if (v12)
    {
      return v4;
    }
  }

  else
  {
    v4 = v11;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v7, v8);
  }

  return v4;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetQueryObjectiEXT>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetQueryObjectiEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetQueryObjectiEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

IPC::Decoder *WebKit::RemoteGraphicsContextGLProxy::getQueryObjectui64EXT(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v9[0] = a2;
  v9[1] = a3;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetQueryObjectui64EXT>(this, v9, v10);
  if (v11)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v4 = 0;
    if (v11)
    {
      return v4;
    }
  }

  else
  {
    v4 = v10[1];
  }

  v5 = v10[0];
  v10[0] = 0;
  if (v5)
  {
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v7, v8);
  }

  return v4;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetQueryObjectui64EXT>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetQueryObjectui64EXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetQueryObjectui64EXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

IPC::Decoder *WebKit::RemoteGraphicsContextGLProxy::getInteger64EXT(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v8 = a2;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetInteger64EXT>(this, &v8, v9);
  if (v10)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v3 = 0;
    if (v10)
    {
      return v3;
    }
  }

  else
  {
    v3 = v9[1];
  }

  v4 = v9[0];
  v9[0] = 0;
  if (v4)
  {
    IPC::Decoder::~Decoder(v4);
    bmalloc::api::tzoneFree(v6, v7);
  }

  return v3;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetInteger64EXT>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetInteger64EXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetInteger64EXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::enableiOES(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::EnableiOES>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::EnableiOES>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::EnableiOES,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::EnableiOES,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::disableiOES(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DisableiOES>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DisableiOES>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DisableiOES,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DisableiOES,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::blendEquationiOES(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BlendEquationiOES>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BlendEquationiOES>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendEquationiOES,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendEquationiOES,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::blendEquationSeparateiOES(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4)
{
  if (*(this + 11))
  {
    v4 = this;
    v5[0] = a2;
    v5[1] = a3;
    v5[2] = a4;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BlendEquationSeparateiOES>(this, v5);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BlendEquationSeparateiOES>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendEquationSeparateiOES,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendEquationSeparateiOES,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::blendFunciOES(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4)
{
  if (*(this + 11))
  {
    v4 = this;
    v5[0] = a2;
    v5[1] = a3;
    v5[2] = a4;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BlendFunciOES>(this, v5);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BlendFunciOES>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendFunciOES,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendFunciOES,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::blendFuncSeparateiOES(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6)
{
  if (*(this + 11))
  {
    v6 = this;
    v7[0] = a2;
    v7[1] = a3;
    v7[2] = a4;
    v7[3] = a5;
    v7[4] = a6;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BlendFuncSeparateiOES>(this, v7);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v6);
      return (*(*(v6 + 3) + 2288))(v6 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BlendFuncSeparateiOES>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendFuncSeparateiOES,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendFuncSeparateiOES,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::colorMaskiOES(WebKit::RemoteGraphicsContextGLProxy *this, int a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6)
{
  if (*(this + 11))
  {
    v6 = this;
    v7.i16[0] = a3;
    v7.i16[1] = a4;
    v7.i16[2] = a5;
    v7.i16[3] = a6;
    v9[0] = a2;
    v8 = vbic_s8(0x1000100010001, vceqz_s16(v7));
    v9[1] = vuzp1_s8(v8, v8).u32[0];
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ColorMaskiOES>(this, v9);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v6);
      return (*(*(v6 + 3) + 2288))(v6 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ColorMaskiOES>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ColorMaskiOES,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ColorMaskiOES,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::drawArraysInstancedBaseInstanceANGLE(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6)
{
  if (*(this + 11))
  {
    v6 = this;
    v7[0] = a2;
    v7[1] = a3;
    v7[2] = a4;
    v7[3] = a5;
    v7[4] = a6;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DrawArraysInstancedBaseInstanceANGLE>(this, v7);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v6);
      return (*(*(v6 + 3) + 2288))(v6 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DrawArraysInstancedBaseInstanceANGLE>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawArraysInstancedBaseInstanceANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawArraysInstancedBaseInstanceANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::drawElementsInstancedBaseVertexBaseInstanceANGLE(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  if (*(this + 11))
  {
    v8 = this;
    v9[0] = a2;
    v9[1] = a3;
    v9[2] = a4;
    v10 = a5;
    v11 = a6;
    v12 = a7;
    v13 = a8;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DrawElementsInstancedBaseVertexBaseInstanceANGLE>(this, v9);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v8);
      return (*(*(v8 + 3) + 2288))(v8 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DrawElementsInstancedBaseVertexBaseInstanceANGLE>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawElementsInstancedBaseVertexBaseInstanceANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawElementsInstancedBaseVertexBaseInstanceANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::clipControlEXT(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ClipControlEXT>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ClipControlEXT>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ClipControlEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ClipControlEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::provokingVertexANGLE(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ProvokingVertexANGLE>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ProvokingVertexANGLE>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ProvokingVertexANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ProvokingVertexANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::polygonModeANGLE(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::PolygonModeANGLE>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::PolygonModeANGLE>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::PolygonModeANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::PolygonModeANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::polygonOffsetClampEXT(WebKit::RemoteGraphicsContextGLProxy *this, float a2, float a3, float a4)
{
  if (*(this + 11))
  {
    v4 = this;
    v5[0] = a2;
    v5[1] = a3;
    v5[2] = a4;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::PolygonOffsetClampEXT>(this, v5);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::PolygonOffsetClampEXT>(uint64_t a1, float *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::PolygonOffsetClampEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::PolygonOffsetClampEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::renderbufferStorageMultisampleANGLE(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6)
{
  if (*(this + 11))
  {
    v6 = this;
    v7[0] = a2;
    v7[1] = a3;
    v7[2] = a4;
    v7[3] = a5;
    v7[4] = a6;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::RenderbufferStorageMultisampleANGLE>(this, v7);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v6);
      return (*(*(v6 + 3) + 2288))(v6 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::RenderbufferStorageMultisampleANGLE>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::RenderbufferStorageMultisampleANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::RenderbufferStorageMultisampleANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getInternalformativ(uint64_t result, int a2, int a3, int a4, void *a5, unint64_t a6)
{
  if (*(result + 88))
  {
    v8 = result;
    v11[0] = a2;
    v11[1] = a3;
    v11[2] = a4;
    v12 = a6;
    WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetInternalformativ>(result, v11, v13);
    if (v15)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v8);
      result = (*(*(v8 + 3) + 2288))(v8 + 3);
    }

    else
    {
      if (a6 < v14)
      {
        result = 1067;
        __break(0xC471u);
        return result;
      }

      result = memcpy(a5, v13[1], 4 * v14);
    }

    if (!v15)
    {
      result = v13[0];
      v13[0] = 0;
      if (result)
      {
        IPC::Decoder::~Decoder(result);
        return bmalloc::api::tzoneFree(v9, v10);
      }
    }
  }

  return result;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetInternalformativ>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetInternalformativ,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetInternalformativ,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::setDrawingBufferColorSpace(WebKit::RemoteGraphicsContextGLProxy *this, CFTypeRef *a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::SetDrawingBufferColorSpace>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::SetDrawingBufferColorSpace>(uint64_t a1, CFTypeRef **a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::SetDrawingBufferColorSpace,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::SetDrawingBufferColorSpace,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::deleteExternalSync(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteExternalSync>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteExternalSync>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteExternalSync,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteExternalSync,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteImageBufferProxy::RemoteImageBufferProxy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[38] = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  cf = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v24 = 0;
  v25[0] = 0;
  if (WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    WebCore::ImageBuffer::ImageBuffer();
    WTF::MachSendRight::~MachSendRight((v25 + 4));
    v24 = 0;
    if (cf)
    {
      CFRelease(cf);
    }

    *a1 = &unk_1F1124E98;
    v7 = *(a1 + 32);
    v22 = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    v8 = *(a1 + 48);
    WebCore::GraphicsContextState::GraphicsContextState();
    WebCore::DisplayList::Recorder::Recorder();
    WebCore::GraphicsContextState::~GraphicsContextState(&v24, v9);
    *(a1 + 136) = &unk_1F1123948;
    *(a1 + 3632) = v8;
    *(a1 + 3640) = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    *(a1 + 3648) = 0;
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a4 + 8), a4);
    v10 = *(a4 + 8);
    atomic_fetch_add(v10, 1u);
    *(a1 + 3656) = v10;
    *(a1 + 3664) = 0;
    *(a1 + 3696) = 0;
    *(a1 + 3704) = 0;
    *(a1 + 3708) = 0;
    *(a1 + 3672) = 0u;
    *(a1 + 3688) = 0;
    __asm { FMOV            V0.2S, #1.0 }

    *(a1 + 3712) = _D0;
    *(a1 + 3720) = 1;
    if (v22)
    {
      CFRelease(v22);
    }

    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a4 + 8), a4);
    v16 = *(a4 + 8);
    atomic_fetch_add(v16, 1u);
    *(a1 + 3728) = v16;
    v17 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::controlBlock((a1 + 8));
    v19 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v17);
    v20 = *(a1 + 3680);
    *(a1 + 3680) = v19;
    if (v20)
    {
      WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v20, v18);
    }

    *(a1 + 3672) = a1;
    return a1;
  }

  return result;
}

void WebKit::RemoteImageBufferProxy::~RemoteImageBufferProxy(WebKit::RemoteImageBufferProxy *this, void *a2)
{
  v3 = *(this + 466);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      ++*(v4 + 20);
      if (*(v4 + 64))
      {
        WebKit::RemoteImageBufferProxy::flushDrawingContextAsync(this, a2);
      }

      WebKit::RemoteRenderingBackendProxy::releaseImageBuffer(v4, this);
      if (*(v4 + 20) == 1)
      {
        (*(*v4 + 24))(v4);
      }

      else
      {
        --*(v4 + 20);
      }
    }

    v5 = *(this + 466);
    *(this + 466) = 0;
    if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5);
      WTF::fastFree(v5, a2);
    }
  }

  WebKit::RemoteDisplayListRecorderProxy::~RemoteDisplayListRecorderProxy(this + 17);

  MEMORY[0x1EEE54488](this);
}

{
  WebKit::RemoteImageBufferProxy::~RemoteImageBufferProxy(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::RemoteImageBufferProxy::flushDrawingContextAsync(WebKit::RemoteImageBufferProxy *this, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(this + 466);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  v5 = *(this + 3720);
  *(this + 3720) = 0;
  if (v5 != 1)
  {
    return 0;
  }

  ++*(v3 + 5);
  v8 = WebKit::RemoteRenderingBackendProxy::connection(v3, a2, &v32);
  if (*(v3 + 5) == 1)
  {
    v7 = (*(*v3 + 24))(v3, v8);
  }

  else
  {
    --*(v3 + 5);
  }

  v9 = v32;
  if (v32)
  {
    v10 = *(this + 15);
    v11 = *(v32 + 128);
    v12 = INFINITY;
    if (fabs(v11) != INFINITY)
    {
      WTF::ApproximateTime::now(v7);
      v12 = v11 + v13;
    }

    if (*(v9 + 64) != v10)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, buf, v12);
      if (buf[16] != 1)
      {
        goto LABEL_41;
      }

      v20 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        goto LABEL_45;
      }

      v21 = *buf;
      **buf = 3198;
      v22 = v21 + 2;
      if (v20 - 2 < (-v22 & 7 | 8uLL))
      {
        goto LABEL_41;
      }

      v23 = -v22 & 7;
      *(v22 + v23) = v10;
      v24 = 6;
      if (v23 > 6)
      {
        v24 = v23;
      }

      v25 = v24 + 10;
      v26 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v27 = *(v9 + 72);
      if (v26 + 16 >= v27)
      {
        v26 = 0;
      }

      v28 = v25 + v26;
      if (v27 <= v28)
      {
        v28 = 0;
      }

      *(v9 + 88) = v28;
      v29 = *(v9 + 80);
      if (*(v29 + 8) <= 0xFFuLL)
      {
        goto LABEL_40;
      }

      IPC::StreamClientConnection::wakeUpServerBatched(v9, atomic_exchange((*(v29 + 16) + 128), v28) == 0x80000000);
      *(v9 + 64) = v10;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, buf, v12);
    if (buf[16] == 1)
    {
      if (*&buf[8] > 1uLL)
      {
        **buf = 1375;
        v14 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v15 = *(v9 + 72);
        if (v14 + 16 >= v15)
        {
          v14 = 0;
        }

        v16 = v14 + 16;
        if (v15 <= v16)
        {
          v17 = 0;
        }

        else
        {
          v17 = v16;
        }

        *(v9 + 88) = v17;
        v18 = *(v9 + 80);
        if (*(v18 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v18 + 16) + 128), v17) == 0x80000000 || *(v9 + 124))
          {
            if (*(v9 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v9 + 100));
            }

            *(v9 + 124) = 0;
          }

LABEL_21:
          v19 = v32;
          v32 = 0;
          if (v19)
          {
            if (atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v19);
              IPC::StreamClientConnection::operator delete(v19);
            }
          }

          return 1;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

LABEL_45:
      __break(0xC471u);
      JUMPOUT(0x19E1D9304);
    }

LABEL_41:
    v30 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v31 = IPC::errorAsString();
      *buf = 136446466;
      *&buf[4] = "RemoteImageBuffer_FlushContext";
      *&buf[12] = 2082;
      *&buf[14] = v31;
      _os_log_impl(&dword_19D52D000, v30, OS_LOG_TYPE_DEFAULT, "RemoteImageBufferProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
    }

    WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 466));
    goto LABEL_21;
  }

  return 1;
}

uint64_t WebKit::RemoteImageBufferProxy::backingStoreWillChange(WebKit::RemoteImageBufferProxy *this, void *a2)
{
  result = WebKit::RemoteImageBufferProxy::ensureBackend(this, a2);
  if (result)
  {
    v3 = *(*result + 168);

    return v3();
  }

  return result;
}

uint64_t WebKit::RemoteImageBufferProxy::didCreateBackend(uint64_t a1, uint64_t a2)
{
  v34 = 0;
  v4 = WebCore::ImageBuffer::backendParameters();
  v6 = *(a1 + 48);
  if (v6 == 1)
  {
    if (*(a2 + 88) == 1 && *(a2 + 80) == 1)
    {
      canMapRemoteImageBufferBackendBackingStore = WebKit::RemoteRenderingBackendProxy::canMapRemoteImageBufferBackendBackingStore(v4, v5);
      if (canMapRemoteImageBufferBackendBackingStore)
      {
        if ((*(a2 + 88) & 1) == 0)
        {
          goto LABEL_43;
        }

        mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>::variant(v31, a2);
        WebKit::ImageBufferShareableMappedIOSurfaceBackend::create(v31, &v26);
        v8 = v26;
        v34 = v26;
        *&v26 = 0;
        v9 = v31;
      }

      else
      {
        if ((*(a2 + 88) & 1) == 0)
        {
          goto LABEL_43;
        }

        mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>::variant(v30, a2);
        WebKit::ImageBufferRemoteIOSurfaceBackend::create(v30, &v26);
        v8 = v26;
        v34 = v26;
        v9 = v30;
      }

      mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v9);
LABEL_8:
      if (*(a2 + 88) != 1 || *(a2 + 80))
      {
        goto LABEL_10;
      }

      LOBYTE(v26) = 0;
      WebCore::ImageBufferBackend::calculateBaseTransform();
      canMapRemoteImageBufferBackendBackingStore = WebKit::ImageBufferShareableBitmapBackend::calculateMemoryCost(v32, v12, v13);
      *(&v29 + 1) = canMapRemoteImageBufferBackendBackingStore;
      v14 = *v27;
      *(a1 + 48) = v26;
      *(a1 + 64) = v14;
      v15 = v29;
      *(a1 + 80) = v28;
      *(a1 + 96) = v15;
      if (*(a2 + 88))
      {
        if (!*(a2 + 80))
        {
          WebCore::ShareableBitmapHandle::ShareableBitmapHandle(&v26, a2);
          WebCore::SharedMemoryHandle::takeOwnershipOfMemory();
          WebCore::ShareableBitmapHandle::ShareableBitmapHandle(v22, &v26);
          WebKit::ImageBufferShareableBitmapBackend::create(v32, &v25);
          v16 = v25;
          v34 = v25;
          if (v8)
          {
            (*(*v8 + 8))(v8);
          }

          if (v24 == 1)
          {
            v17 = cf;
            cf = 0;
            if (v17)
            {
              CFRelease(v17);
            }
          }

          WTF::MachSendRight::~MachSendRight(v22);
          if (v28 == 1)
          {
            v18 = v27[1];
            v27[1] = 0;
            if (v18)
            {
              CFRelease(v18);
            }
          }

          WTF::MachSendRight::~MachSendRight(&v26);
          v8 = v16;
          goto LABEL_10;
        }

LABEL_44:
        mpark::throw_bad_variant_access(canMapRemoteImageBufferBackendBackingStore);
      }

LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

LABEL_18:
    v8 = 0;
    goto LABEL_8;
  }

  if (!*(a1 + 48))
  {
    goto LABEL_18;
  }

  if (v6 == 2)
  {
    WebKit::ImageBufferRemotePDFDocumentBackend::create(v5, &v26);
  }

  else
  {
    if (v6 != 3)
    {
      goto LABEL_33;
    }

    WebKit::ImageBufferRemoteDisplayListBackend::create(v5, &v26);
  }

  v8 = v26;
  v34 = v26;
LABEL_10:
  if (v8)
  {
    WebCore::ImageBuffer::setBackend();
    goto LABEL_12;
  }

LABEL_33:
  WebKit::RemoteDisplayListRecorderProxy::abandon((a1 + 136));
  v20 = *(a1 + 3728);
  if (v20)
  {
    v21 = *(v20 + 8);
    if (v21)
    {
      ++*(v21 + 5);
      *(a1 + 3728) = 0;
      if (atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v20);
        WTF::fastFree(v20, v19);
      }

      WebKit::RemoteRenderingBackendProxy::releaseImageBuffer(v21, a1);
      if (*(v21 + 5) == 1)
      {
        (*(*v21 + 24))(v21);
      }

      else
      {
        --*(v21 + 5);
      }
    }
  }

LABEL_12:
  v10 = v33;
  v33 = 0;
  if (v10)
  {
    CFRelease(v10);
  }

  result = v34;
  v34 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WebKit::RemoteImageBufferProxy::ensureBackend(WebKit::RemoteImageBufferProxy *this, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(this + 14);
  if (!v2)
  {
    v4 = *(this + 466);
    if (!v4)
    {
      return 0;
    }

    v2 = *(v4 + 8);
    if (v2)
    {
      ++*(v2 + 20);
      v7 = WebKit::RemoteRenderingBackendProxy::connection(v2, a2, &v28);
      if (*(v2 + 20) == 1)
      {
        v6 = (*(*v2 + 24))(v2, v7);
      }

      else
      {
        --*(v2 + 20);
      }

      v2 = v28;
      if (v28)
      {
        v8 = *(this + 15);
        v9 = *(v28 + 128);
        v10 = INFINITY;
        if (fabs(v9) != INFINITY)
        {
          WTF::ApproximateTime::now(v6);
          v10 = v9 + v11;
        }

        v12 = *(v2 + 8);
        v13 = IPC::Connection::waitForMessage(v12, 0x55Au, v8, 0, buf, v10);
        if (buf[8])
        {
          if (buf[8] == 1)
          {
            v16 = buf[0];
            goto LABEL_19;
          }
        }

        else
        {
          v14 = atomic_load((v12 + 33));
          if ((v14 & 1) == 0)
          {
            v16 = 1;
            goto LABEL_16;
          }

          v15 = *(v12 + 8);
          if (v15)
          {
            v13 = (**v15)(*(v12 + 8));
          }

          if (!buf[8])
          {
            (*(*v15 + 32))(v15, v12, *buf);
            (*(*v15 + 8))(v15);
            v16 = 0;
LABEL_16:
            if (!buf[8])
            {
              v17 = *buf;
              *buf = 0;
              if (v17)
              {
                IPC::Decoder::~Decoder(v17);
                bmalloc::api::tzoneFree(v19, v20);
              }
            }

LABEL_19:
            if (!v16)
            {
              v2 = *(this + 14);
LABEL_21:
              v18 = v28;
              v28 = 0;
              if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v18);
                IPC::StreamClientConnection::operator delete(v18);
              }

              return v2;
            }

            v21 = *(this + 466);
            if (v21 && (v22 = *(v21 + 8)) != 0)
            {
              ++*(v22 + 5);
              v23 = qword_1ED6410D0;
              if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
              {
                v24 = WebKit::RemoteRenderingBackendProxy::renderingBackendIdentifier(v22);
                v25 = IPC::errorAsString();
                *buf = 134218242;
                *&buf[4] = v24;
                v30 = 2082;
                v31 = v25;
                _os_log_impl(&dword_19D52D000, v23, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteImageBufferProxy::ensureBackendCreated - waitForAndDispatchImmediately returned error: %{public}s", buf, 0x16u);
              }

              WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 466));
              if (*(v22 + 5) != 1)
              {
                v2 = 0;
                --*(v22 + 5);
                goto LABEL_21;
              }

              (*(*v22 + 24))(v22);
            }

            else
            {
              v26 = qword_1ED6410D0;
              if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
              {
                v27 = IPC::errorAsString();
                *buf = 136446210;
                *&buf[4] = v27;
                _os_log_impl(&dword_19D52D000, v26, OS_LOG_TYPE_DEFAULT, "[renderingBackend was deleted] RemoteImageBufferProxy::ensureBackendCreated - waitForAndDispatchImmediately returned error: %{public}s", buf, 0xCu);
              }
            }

            v2 = 0;
            goto LABEL_21;
          }
        }

        mpark::throw_bad_variant_access(v13);
      }
    }
  }

  return v2;
}

uint64_t WebKit::RemoteImageBufferProxy::copyNativeImage@<X0>(WebKit::RemoteImageBufferProxy *this@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = WebKit::RemoteImageBufferProxy::ensureBackend(this, a2);
  if (!result)
  {
    goto LABEL_14;
  }

  result = (*(*result + 160))(result);
  if (result)
  {
    WebKit::RemoteImageBufferProxy::flushDrawingContext(this);
    v9 = this;

    return MEMORY[0x1EEE5C2B8](v9, v6, v7, v8);
  }

  v10 = *(this + 466);
  if (!v10 || (v11 = *(v10 + 8)) == 0)
  {
LABEL_14:
    *a3 = 0;
    return result;
  }

  ++*(v11 + 5);
  WebKit::RemoteRenderingBackendProxy::getShareableBitmap(v11, *(this + 15), 1, &v14);
  result = v14;
  if (v14)
  {
    WebCore::ShareableBitmap::createPlatformImage();
    if (WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      v6 = "/AppleInternal/Library/BuildRoots/4~CAtBugAdX2ypK3woS13W0YBGfMX4uuy1xhucdh4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/ObjectIdentifier.h";
      v7 = "static ObjectIdentifierGeneric<type-parameter-0-0, type-parameter-0-1, type-parameter-0-2> WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType, WTF::ObjectIdentifierThreadSafeAccessTraits<uint64_t>, unsigned long long>::generate() [T = WebCore::RenderingResourceIdentifierType, ThreadSafety = WTF::ObjectIdentifierThreadSafeAccessTraits<uint64_t>, RawValue = unsigned long long]";
      v9 = 141;
      v8 = 60;
      __break(0xC471u);
      return MEMORY[0x1EEE5C2B8](v9, v6, v7, v8);
    }

    WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    WebCore::NativeImage::create();
    if (cf)
    {
      CFRelease(cf);
    }

    result = v14;
    v14 = 0;
    if (result)
    {
      result = WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(result, v12);
    }
  }

  else
  {
    *a3 = 0;
  }

  if (*(v11 + 5) == 1)
  {
    return (*(*v11 + 24))(v11);
  }

  --*(v11 + 5);
  return result;
}

uint64_t WebKit::RemoteImageBufferProxy::flushDrawingContext(uint64_t this)
{
  v65 = *MEMORY[0x1E69E9840];
  v1 = *(this + 3728);
  if (v1)
  {
    if (*(v1 + 8))
    {
      v2 = this;
      v3 = *(this + 3720);
      *(this + 3720) = 0;
      if (v3 == 1)
      {
        kdebug_trace();
        v5 = *(v2 + 466);
        if (!v5)
        {
          return kdebug_trace();
        }

        v6 = *(v5 + 8);
        if (!v6)
        {
          return kdebug_trace();
        }

        ++*(v6 + 5);
        v8 = WebKit::RemoteRenderingBackendProxy::connection(v6, v4, &v60);
        if (*(v6 + 5) == 1)
        {
          v7 = (*(*v6 + 24))(v6, v8);
        }

        else
        {
          --*(v6 + 5);
        }

        v9 = v60;
        if (!v60)
        {
          return kdebug_trace();
        }

        v10 = *(v2 + 15);
        v11 = *(v60 + 128);
        v12 = INFINITY;
        if (fabs(v11) != INFINITY)
        {
          WTF::ApproximateTime::now(v7);
          v12 = v11 + v13;
        }

        if (*(v9 + 64) == v10)
        {
LABEL_12:
          IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, buf, v12);
          if (buf[16])
          {
            if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected != 1)
            {
              v14 = *buf;
              v15 = *&buf[8];
              IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
              v17 = IPC::Connection::pushPendingSyncRequestID(*(v9 + 8), IdentifierInternal);
              if (!v17)
              {
                v29 = 12;
                goto LABEL_63;
              }

              if (v15 <= 1)
              {
                __break(0xC471u);
                JUMPOUT(0x19E1DA260);
              }

              *v14 = 4099;
              v19 = v14 + 1;
              if (v15 - 2 >= (-v19 & 7 | 8uLL))
              {
                v20 = -v19 & 7;
                *(v19 + v20) = IdentifierInternal;
                if (v20 != 7)
                {
                  v20 = 6;
                }

                v21 = v20 + 10;
                v22 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
                v23 = *(v9 + 72);
                if (v22 + 16 >= v23)
                {
                  v22 = 0;
                }

                v24 = v21 + v22;
                if (v23 <= v24)
                {
                  v24 = 0;
                }

                *(v9 + 88) = v24;
                v25 = *(v9 + 80);
                if (*(v25 + 8) <= 0xFFuLL)
                {
                  goto LABEL_54;
                }

                if (atomic_exchange((*(v25 + 16) + 128), v24) == 0x80000000 || *(v9 + 124))
                {
                  if (*(v9 + 112) == 1)
                  {
                    v17 = MEMORY[0x19EB16320](*(v9 + 100));
                  }

                  *(v9 + 124) = 0;
                }

                while (1)
                {
                  v24 = *(v9 + 80);
                  if (*(v24 + 8) <= 0xFFuLL)
                  {
                    goto LABEL_54;
                  }

                  v24 = atomic_exchange(*(v24 + 16), 0x80000000uLL);
                  v26 = *(v9 + 80);
                  if (*(v26 + 8) <= 0xFFuLL)
                  {
                    goto LABEL_54;
                  }

                  if (!(v24 | atomic_load_explicit((*(v26 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
                  {
                    break;
                  }

                  if (*(v9 + 112) == 1)
                  {
                    v27 = IPC::Semaphore::waitFor((v9 + 104), v12);
                    if (v27)
                    {
                      v17 = WTF::ApproximateTime::now(v27);
                      if (v28 < v12)
                      {
                        continue;
                      }
                    }
                  }

                  IPC::Connection::popPendingSyncRequestID(*(v9 + 8));
                  v29 = 17;
                  goto LABEL_63;
                }

                v24 = *(v9 + 80);
                if (*(v24 + 8) <= 0xFFuLL)
                {
                  goto LABEL_54;
                }

                v24 = *(v24 + 16);
                atomic_store(0, v24);
                *(v9 + 88) = 0;
                v30 = *(v9 + 80);
                v31 = *(v30 + 8);
                if (v31 <= 0xFF)
                {
                  goto LABEL_54;
                }

                v32 = *(v9 + 72);
                v33 = *(v30 + 16);
                v34 = v31 - 256;
                if (v32)
                {
                  v24 = v32 - 1;
                  v37 = v34 >= v24;
                  v34 = v24;
                  if (!v37)
                  {
                    goto LABEL_54;
                  }
                }

                v35 = IPC::Decoder::operator new(0x58, v18);
                if (*(IPC::Decoder::Decoder(v35, v33 + 256, v34, *(v9 + 64)) + 25) != 3197)
                {
                  goto LABEL_37;
                }

                IPC::Decoder::~Decoder(v35);
                bmalloc::api::tzoneFree(v44, v45);
                IPC::Connection::waitForSyncReply(*(v9 + 8), IdentifierInternal, 0x1003u, &v61, v12);
                v46 = v62;
                if (!v62)
                {
                  v35 = v61;
LABEL_37:
                  IPC::Connection::popPendingSyncRequestID(*(v9 + 8));
                  if (*(v35 + 25) != 3194)
                  {
                    LODWORD(v9) = 0;
                    v61 = v35;
                    goto LABEL_39;
                  }

                  IPC::Decoder::~Decoder(v35);
                  bmalloc::api::tzoneFree(v47, v48);
                  v29 = 11;
                  goto LABEL_63;
                }

                if (v62 == 255)
                {
                  v59 = IPC::Connection::popPendingSyncRequestID(*(v9 + 8));
                  mpark::throw_bad_variant_access(v59);
                }

                v29 = v61;
                v41 = IPC::Connection::popPendingSyncRequestID(*(v9 + 8));
                if (v46 != 1)
                {
                  goto LABEL_67;
                }

LABEL_63:
                LOBYTE(v61) = v29;
                LODWORD(v9) = 1;
                goto LABEL_39;
              }

              v17 = IPC::Connection::popPendingSyncRequestID(*(v9 + 8));
              LODWORD(v24) = buf[16];
              if (buf[16])
              {
                IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v9, *buf, *&buf[8]);
                IPC::Connection::sendSync<Messages::RemoteImageBuffer::FlushContextSync>(&v61, *(v9 + 8), v10, v12);
                LODWORD(v9) = v63;
LABEL_39:
                if (!v9)
                {
                  v2 = v61;
LABEL_41:
                  v17 = v60;
                  v60 = 0;
                  if (!v17 || (LODWORD(v24) = atomic_fetch_add(v17, 0xFFFFFFFF), v24 != 1))
                  {
LABEL_43:
                    if (v2)
                    {
                      v36 = v9;
                    }

                    else
                    {
                      v36 = 1;
                    }

                    if ((v36 & 1) == 0)
                    {
                      IPC::Decoder::~Decoder(v2);
                      bmalloc::api::tzoneFree(v38, v39);
                    }

                    return kdebug_trace();
                  }

LABEL_55:
                  atomic_store(v24, v17);
                  IPC::StreamClientConnection::operator delete(v17);
                  goto LABEL_43;
                }

                goto LABEL_57;
              }

LABEL_54:
              __break(1u);
              goto LABEL_55;
            }

LABEL_93:
            __break(0xC471u);
            JUMPOUT(0x19E1DA240);
          }

          LOBYTE(v61) = 16;
          LODWORD(v9) = 1;
LABEL_57:
          v40 = qword_1ED6410D0;
          v41 = os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT);
          if (!v41)
          {
            WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v2 + 466));
            if (v9 == 255)
            {
              v2 = 0;
              goto LABEL_61;
            }

            v42 = v61;
LABEL_60:
            v2 = v42;
LABEL_61:
            LOBYTE(v9) = 1;
            goto LABEL_41;
          }

          if (v9 == 1)
          {
            v42 = v61;
            v43 = IPC::errorAsString();
            *buf = 136446466;
            *&buf[4] = "RemoteImageBuffer_FlushContextSync";
            *&buf[12] = 2082;
            *&buf[14] = v43;
            _os_log_impl(&dword_19D52D000, v40, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::sendSync - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
            WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v2 + 466));
            goto LABEL_60;
          }

LABEL_67:
          mpark::throw_bad_variant_access(v41);
        }

        v17 = IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, buf, v12);
        if (buf[16] == 1)
        {
          v49 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            goto LABEL_93;
          }

          v50 = *buf;
          **buf = 3198;
          v51 = v50 + 2;
          if (v49 - 2 >= (-v51 & 7 | 8uLL))
          {
            v52 = -v51 & 7;
            *(v51 + v52) = v10;
            v53 = 6;
            if (v52 > 6)
            {
              v53 = v52;
            }

            v54 = v53 + 10;
            v55 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v56 = *(v9 + 72);
            if (v55 + 16 >= v56)
            {
              v55 = 0;
            }

            v24 = v54 + v55;
            if (v56 <= v24)
            {
              v24 = 0;
            }

            *(v9 + 88) = v24;
            v57 = *(v9 + 80);
            if (*(v57 + 8) <= 0xFFuLL)
            {
              goto LABEL_54;
            }

            IPC::StreamClientConnection::wakeUpServerBatched(v9, atomic_exchange((*(v57 + 16) + 128), v24) == 0x80000000);
            *(v9 + 64) = v10;
            goto LABEL_12;
          }

          v58 = 18;
        }

        else
        {
          v58 = 16;
        }

        LOBYTE(v61) = v58;
        LODWORD(v9) = 1;
        v63 = 1;
        goto LABEL_57;
      }
    }
  }

  return this;
}

uint64_t WebKit::RemoteImageBufferProxy::createNativeImageReference@<X0>(WebKit::RemoteImageBufferProxy *this@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = WebKit::RemoteImageBufferProxy::ensureBackend(this, a2);
  if (result)
  {
    if ((*(*result + 160))(result))
    {
      WebKit::RemoteImageBufferProxy::flushDrawingContext(this);

      return MEMORY[0x1EEE5C2D0](this);
    }

    else
    {

      return WebKit::RemoteImageBufferProxy::copyNativeImage(this, v6, a3);
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t WebKit::RemoteImageBufferProxy::sinkIntoBufferForDifferentThread@<X0>(WebKit::RemoteImageBufferProxy *this@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(this + 4);
  cf = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  WebCore::ImageBuffer::create();
  if (cf)
  {
    CFRelease(cf);
  }

  result = v7;
  if (v7)
  {
    (*(*v7 + 16))();
    result = WebCore::GraphicsContext::drawImageBuffer();
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void WebKit::RemoteImageBufferProxy::filteredNativeImage(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v122 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 3728);
  if (!v4 || !*(v4 + 8))
  {
    goto LABEL_126;
  }

  while (1)
  {
    v7 = *(a2 + 8);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v8 = *(a2 + 8);
    atomic_compare_exchange_strong_explicit((a2 + 8), &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a2 + 8));
LABEL_5:
  v91 = a2;
  v9 = *(a1 + 3728);
  if (!v9 || (v10 = *(v9 + 8)) == 0 || ((++*(v10 + 5), v12 = WebKit::RemoteRenderingBackendProxy::connection(v10, a2, &v92), *(v10 + 5) == 1) ? (v11 = (*(*v10 + 24))(v10, v12)) : --*(v10 + 5), (v13 = v92) == 0))
  {
    buf[0] = 1;
    v120 = 1;
    goto LABEL_125;
  }

  v14 = *(a1 + 120);
  v15 = *(v92 + 128);
  v16 = INFINITY;
  if (fabs(v15) != INFINITY)
  {
    WTF::ApproximateTime::now(v11);
    v16 = v15 + v17;
  }

  if (*(v13 + 64) == v14)
  {
    goto LABEL_13;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v13 + 72, buf, v16);
  if (buf[16] != 1)
  {
    v90 = 16;
LABEL_178:
    LOBYTE(v102) = v90;
    v110 = 1;
    v87 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_168;
    }

    goto LABEL_169;
  }

  v75 = *&buf[8];
  if (*&buf[8] <= 1uLL)
  {
    __break(0xC471u);
    goto LABEL_185;
  }

  v76 = *buf;
  **buf = 3198;
  v77 = v76 + 2;
  if (v75 - 2 < (-v77 & 7 | 8uLL))
  {
    v90 = 18;
    goto LABEL_178;
  }

  v78 = -v77 & 7;
  *(v77 + v78) = v14;
  v79 = 6;
  if (v78 > 6)
  {
    v79 = v78;
  }

  v80 = v79 + 10;
  v81 = (*(v13 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v82 = *(v13 + 72);
  if (v81 + 16 >= v82)
  {
    v81 = 0;
  }

  v83 = v80 + v81;
  if (v82 <= v83)
  {
    v83 = 0;
  }

  *(v13 + 88) = v83;
  v84 = *(v13 + 80);
  if (*(v84 + 8) <= 0xFFuLL)
  {
    goto LABEL_185;
  }

  IPC::StreamClientConnection::wakeUpServerBatched(v13, atomic_exchange((*(v84 + 16) + 128), v83) == 0x80000000);
  *(v13 + 64) = v14;
LABEL_13:
  IPC::StreamClientConnectionBuffer::tryAcquire(v13 + 72, &v93, v16);
  if ((v95 & 1) == 0)
  {
    LOBYTE(v102) = 16;
    v31 = 1;
LABEL_37:
    v110 = v31;
    goto LABEL_110;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_186;
  }

  v18 = v93;
  v19 = v94;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  if ((IPC::Connection::pushPendingSyncRequestID(*(v13 + 8), IdentifierInternal) & 1) == 0)
  {
    LOBYTE(v102) = 12;
    v110 = 1;
    std::optional<IPC::ConnectionSendSyncResult<Messages::RemoteImageBuffer::FilteredNativeImage>>::optional[abi:sn200100]<IPC::ConnectionSendSyncResult<Messages::RemoteImageBuffer::FilteredNativeImage>,0>(buf, &v102);
    if (v110)
    {
      goto LABEL_68;
    }

    if (v109 == 1)
    {
      if (v107 == 1)
      {
        v32 = cf;
        cf = 0;
        if (v32)
        {
          CFRelease(v32);
        }
      }

      WTF::MachSendRight::~MachSendRight(&v103);
    }

    v33 = v102;
    v102 = 0;
    if (!v33)
    {
      goto LABEL_68;
    }

LABEL_50:
    IPC::Decoder::~Decoder(v33);
    bmalloc::api::tzoneFree(v35, v36);
    goto LABEL_68;
  }

  v104 = v19;
  if (v19 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1DAF84);
  }

  *v18 = 4098;
  v21 = v18 + 1;
  v22 = -v21 & 7 | 8;
  if (v19 - 2 < v22)
  {
    v102 = 0;
    v103 = 0;
  }

  else
  {
    *(v21 + (-v21 & 7)) = IdentifierInternal;
    v102 = (v21 + v22);
    v103 = v19 - 2 - v22;
  }

  IPC::ArgumentCoder<WebCore::Filter,void>::encode(&v102, v91);
  if (!v102)
  {
    IPC::Connection::popPendingSyncRequestID(*(v13 + 8));
    buf[0] = 0;
    v121 = 0;
    goto LABEL_68;
  }

  v23 = v104 - v103;
  if (v104 - v103 <= 0x10)
  {
    v23 = 16;
  }

  v24 = (*(v13 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v25 = *(v13 + 72);
  if (v24 + 16 >= v25)
  {
    v24 = 0;
  }

  v26 = v24 + v23;
  if (v25 <= v26)
  {
    v26 = 0;
  }

  *(v13 + 88) = v26;
  v27 = *(v13 + 80);
  if (*(v27 + 8) <= 0xFFuLL)
  {
    goto LABEL_185;
  }

  if (atomic_exchange((*(v27 + 16) + 128), v26) == 0x80000000 || *(v13 + 124))
  {
    if (*(v13 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v13 + 100));
    }

    *(v13 + 124) = 0;
  }

  *(v13 + 88) = 0;
  IPC::Connection::waitForSyncReply(*(v13 + 8), IdentifierInternal, 0x1002u, &v96, v16);
  v28 = v97;
  if (!v97)
  {
    v34 = v96;
    IPC::Connection::popPendingSyncRequestID(*(v13 + 8));
    v112 = v34;
    if (*(v34 + 25) == 3194)
    {
      buf[0] = 11;
      v120 = 1;
      v121 = 1;
    }

    else
    {
      LOBYTE(v96) = 0;
      v101 = 0;
      IPC::Decoder::operator>><std::tuple<std::optional<WebCore::ShareableBitmapHandle>>>(v34, &v96);
      if (v101 == 1)
      {
        IPC::ConnectionSendSyncResult<Messages::RemoteImageBuffer::FilteredNativeImage>::ConnectionSendSyncResult(&v102, &v112, &v96);
        std::optional<IPC::ConnectionSendSyncResult<Messages::RemoteImageBuffer::FilteredNativeImage>>::optional[abi:sn200100]<IPC::ConnectionSendSyncResult<Messages::RemoteImageBuffer::FilteredNativeImage>,0>(buf, &v102);
        if (!v110)
        {
          if (v109 == 1)
          {
            if (v107 == 1)
            {
              v37 = cf;
              cf = 0;
              if (v37)
              {
                CFRelease(v37);
              }
            }

            WTF::MachSendRight::~MachSendRight(&v103);
          }

          v38 = v102;
          v102 = 0;
          if (v38)
          {
            IPC::Decoder::~Decoder(v38);
            bmalloc::api::tzoneFree(v85, v86);
          }
        }

        if ((v101 & 1) != 0 && v100 == 1)
        {
          if (v99 == 1)
          {
            v39 = v98;
            v98 = 0;
            if (v39)
            {
              CFRelease(v39);
            }
          }

          WTF::MachSendRight::~MachSendRight(&v96);
        }
      }

      else
      {
        buf[0] = 14;
        v120 = 1;
        v121 = 1;
      }

      v34 = v112;
      if (!v112)
      {
        goto LABEL_68;
      }
    }

    v33 = v34;
    goto LABEL_50;
  }

  if (v97 == 255)
  {
    v89 = IPC::Connection::popPendingSyncRequestID(*(v13 + 8));
    mpark::throw_bad_variant_access(v89);
  }

  v29 = v96;
  v30 = IPC::Connection::popPendingSyncRequestID(*(v13 + 8));
  if (v28 != 1)
  {
    goto LABEL_174;
  }

  buf[0] = v29;
  v120 = 1;
  v121 = 1;
LABEL_68:
  if (v121 != 1)
  {
    if (v95)
    {
      if (v94 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1DAFA4);
      }

      *v93 = 3197;
      v42 = (*(v13 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v43 = *(v13 + 72);
      if (v42 + 16 >= v43)
      {
        v42 = 0;
      }

      v44 = v42 + 16;
      v45 = v43 <= v44 ? 0 : v44;
      *(v13 + 88) = v45;
      v46 = *(v13 + 80);
      if (*(v46 + 8) > 0xFFuLL)
      {
        atomic_exchange((*(v46 + 16) + 128), v45);
        *(v13 + 124) = 0;
        v47 = *(v13 + 8);
        IPC::Connection::createSyncMessageEncoder(0x1002, v14, &v96);
        IPC::ArgumentCoder<WebCore::Filter,void>::encode(v96, v91);
        v30 = IPC::Connection::sendSyncMessage(v47, v97, &v96, 0, &v112, v16);
        if (v113)
        {
          if (v113 != 1)
          {
            goto LABEL_174;
          }

          LOBYTE(v102) = v112;
          v110 = 1;
          goto LABEL_109;
        }

        v48 = v112;
        v112 = 0;
        v111 = v48;
        if (*(v48 + 25) == 3194)
        {
          LOBYTE(v102) = 11;
          v110 = 1;
        }

        else
        {
          buf[0] = 0;
          v119 = 0;
          IPC::Decoder::operator>><std::tuple<std::optional<WebCore::ShareableBitmapHandle>>>(v48, buf);
          if (v119 == 1)
          {
            IPC::ConnectionSendSyncResult<Messages::RemoteImageBuffer::FilteredNativeImage>::ConnectionSendSyncResult(&v102, &v111, buf);
            if ((v119 & 1) != 0 && v118 == 1)
            {
              if (v116 == 1)
              {
                v51 = v115;
                v115 = 0;
                if (v51)
                {
                  CFRelease(v51);
                }
              }

              WTF::MachSendRight::~MachSendRight(buf);
            }
          }

          else
          {
            LOBYTE(v102) = 14;
            v110 = 1;
          }

          v48 = v111;
          if (!v111)
          {
            goto LABEL_106;
          }
        }

        IPC::Decoder::~Decoder(v48);
        bmalloc::api::tzoneFree(v49, v50);
LABEL_106:
        if (!v113)
        {
          v55 = v112;
          v112 = 0;
          if (v55)
          {
            IPC::Decoder::~Decoder(v55);
            bmalloc::api::tzoneFree(v73, v74);
          }
        }

LABEL_109:
        v56 = v96;
        v96 = 0;
        if (!v56)
        {
          goto LABEL_110;
        }

        IPC::Encoder::~Encoder(v56, a2);
        goto LABEL_152;
      }
    }

LABEL_185:
    __break(1u);
LABEL_186:
    JUMPOUT(0x19E1DAF64);
  }

  LOBYTE(v102) = 0;
  v110 = -1;
  v31 = v120;
  if (v120 == 255)
  {
    goto LABEL_110;
  }

  if (v120)
  {
    LOBYTE(v102) = buf[0];
    goto LABEL_37;
  }

  v40 = *buf;
  *buf = 0;
  v102 = v40;
  LOBYTE(v103) = 0;
  v109 = 0;
  if (v119 != 1)
  {
    v110 = 0;
LABEL_102:
    v52 = *buf;
    *buf = 0;
    if (!v52)
    {
      goto LABEL_110;
    }

    IPC::Decoder::~Decoder(v52);
LABEL_152:
    bmalloc::api::tzoneFree(v53, v54);
    goto LABEL_110;
  }

  WebCore::ShareableBitmapHandle::ShareableBitmapHandle(&v103, &buf[8]);
  v109 = 1;
  v110 = v120;
  if ((v121 & 1) != 0 && !v120)
  {
    if (v119)
    {
      if (v117 == 1)
      {
        v41 = v116;
        v116 = 0;
        if (v41)
        {
          CFRelease(v41);
        }
      }

      WTF::MachSendRight::~MachSendRight(&buf[8]);
    }

    goto LABEL_102;
  }

LABEL_110:
  v57 = v110;
  if (!v110)
  {
    v120 = -1;
    goto LABEL_112;
  }

  v87 = qword_1ED6410D0;
  v30 = os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT);
  if (v30)
  {
    if (v57 == 1)
    {
LABEL_168:
      v88 = IPC::errorAsString();
      *buf = 136446466;
      *&buf[4] = "RemoteImageBuffer_FilteredNativeImage";
      *&buf[12] = 2082;
      *&buf[14] = v88;
      _os_log_impl(&dword_19D52D000, v87, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::sendSync - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
      goto LABEL_169;
    }

LABEL_174:
    mpark::throw_bad_variant_access(v30);
  }

LABEL_169:
  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3728));
  v58 = v110;
  buf[0] = 0;
  v120 = -1;
  if (v110 != 255)
  {
    if (v110)
    {
      buf[0] = v102;
LABEL_114:
      v120 = v58;
      if (!v110)
      {
        if (v109 == 1)
        {
          if (v107 == 1)
          {
            v60 = cf;
            cf = 0;
            if (v60)
            {
              CFRelease(v60);
            }
          }

          WTF::MachSendRight::~MachSendRight(&v103);
        }

        v61 = v102;
        v102 = 0;
        if (v61)
        {
          IPC::Decoder::~Decoder(v61);
          bmalloc::api::tzoneFree(v69, v70);
        }
      }

      goto LABEL_122;
    }

LABEL_112:
    v58 = 0;
    v59 = v102;
    v102 = 0;
    *buf = v59;
    buf[8] = 0;
    v119 = 0;
    if (v109 == 1)
    {
      WebCore::ShareableBitmapHandle::ShareableBitmapHandle(&buf[8], &v103);
      v119 = 1;
      v58 = v110;
    }

    goto LABEL_114;
  }

LABEL_122:
  v62 = v92;
  v92 = 0;
  if (v62 && atomic_fetch_add(v62, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v62);
    IPC::StreamClientConnection::operator delete(v62);
  }

LABEL_125:
  WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v91, a2);
  if (v120)
  {
LABEL_126:
    *a3 = 0;
    return;
  }

  LOBYTE(v102) = 0;
  v108 = 0;
  if (v119 == 1)
  {
    WebCore::ShareableBitmapHandle::ShareableBitmapHandle(&v102, &buf[8]);
    v108 = 1;
    WebCore::SharedMemoryHandle::takeOwnershipOfMemory();
    if (v108)
    {
      WebCore::ShareableBitmap::create();
      if (v96)
      {
        WebCore::ShareableBitmap::createPlatformImage();
        if (WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
        {
          __break(0xC471u);
          JUMPOUT(0x19E1DAFC4);
        }

        WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
        WebCore::NativeImage::create();
        v64 = v93;
        v93 = 0;
        if (v64)
        {
          CFRelease(v64);
        }

        v65 = v96;
        v96 = 0;
        if (v65)
        {
          WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v65, v63);
        }
      }

      else
      {
        *a3 = 0;
      }

      if (v108)
      {
        if (cf == 1)
        {
          v66 = v105;
          v105 = 0;
          if (v66)
          {
            CFRelease(v66);
          }
        }

        WTF::MachSendRight::~MachSendRight(&v102);
      }

      goto LABEL_142;
    }

    goto LABEL_185;
  }

  *a3 = 0;
LABEL_142:
  if (!v120)
  {
    if (v119 == 1)
    {
      if (v117 == 1)
      {
        v67 = v116;
        v116 = 0;
        if (v67)
        {
          CFRelease(v67);
        }
      }

      WTF::MachSendRight::~MachSendRight(&buf[8]);
    }

    v68 = *buf;
    *buf = 0;
    if (v68)
    {
      IPC::Decoder::~Decoder(v68);
      bmalloc::api::tzoneFree(v71, v72);
    }
  }
}