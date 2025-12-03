@interface AVAudioSharedBufferToken
- (AVAudioSharedBufferToken)initWithCoder:(id)coder;
- (AVAudioSharedBufferToken)initWithSurface:(__IOSurface *)surface taskToken:(unsigned int)token;
- (ObjectRef<__IOSurface)surface;
- (_xpc_type_s)surfaceXPCType;
- (_xpc_type_s)taskTokenXPCType;
- (id).cxx_construct;
- (mach_port)taskToken;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVAudioSharedBufferToken

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 2) = 0;
  return self;
}

- (ObjectRef<__IOSurface)surface
{
  v3 = v2;
  mCFObject = self->surface.mCFObject;
  if (mCFObject)
  {
    self = CFRetain(self->surface.mCFObject);
  }

  *v3 = mCFObject;
  return self;
}

- (mach_port)taskToken
{
  m_mach_port = self->taskToken.m_mach_port;
  *v2 = m_mach_port;
  if (m_mach_port)
  {
    self = mach_port_mod_refs(*MEMORY[0x1E69E9A60], m_mach_port, 0, 1);
    if (self)
    {
      selfCopy = self;
      exception = __cxa_allocate_exception(0x20uLL);
      v6 = &unk_1F384E358;
      MEMORY[0x1BFAF55E0](exception, selfCopy, &v6, "failed to add the send right");
    }
  }

  return self;
}

- (_xpc_type_s)taskTokenXPCType
{
  token = 0;
  v2 = MEMORY[0x1E69E9A60];
  if (task_create_identity_token(*MEMORY[0x1E69E9A60], &token))
  {
    return MEMORY[0x1E69E9ED0];
  }

  v4 = xpc_mach_send_create();
  v3 = MEMORY[0x1BFAF66E0]();
  mach_port_deallocate(*v2, token);
  xpc_release(v4);
  return v3;
}

- (_xpc_type_s)surfaceXPCType
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E696D0D8];
  v8[0] = *MEMORY[0x1E696CE30];
  v8[1] = v2;
  v9[0] = &unk_1F385A2E8;
  v9[1] = MEMORY[0x1E695E118];
  v3 = IOSurfaceCreate([MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2]);
  XPCObject = IOSurfaceCreateXPCObject(v3);
  v5 = MEMORY[0x1BFAF66E0](XPCObject);
  xpc_release(XPCObject);
  if (v3)
  {
    CFRelease(v3);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v14 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [coder encodeXPCObject:IOSurfaceCreateXPCObject(self->surface.mCFObject) forKey:@"surface"];
    m_mach_port = self->taskToken.m_mach_port;
    v6 = xpc_mach_send_create();
    v7 = *MEMORY[0x1E69E9840];

    [coder encodeXPCObject:v6 forKey:@"token"];
  }

  else
  {
    v8 = gAVAudioBufferLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "AVAudioSharedBufferToken.mm";
      v12 = 1024;
      v13 = 53;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d encodeWithCoder called with an incompatible coder", &v10, 0x12u);
    }

    v9 = *MEMORY[0x1E69E9840];
  }
}

- (AVAudioSharedBufferToken)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14.receiver = self;
    v14.super_class = AVAudioSharedBufferToken;
    v5 = [(AVAudioSharedBufferToken *)&v14 init];
    v6 = v5;
    if (v5)
    {
      v7 = IOSurfaceLookupFromXPCObject([coder decodeXPCObjectOfType:-[AVAudioSharedBufferToken surfaceXPCType](v5 forKey:{"surfaceXPCType"), @"surface"}]);
      mCFObject = v6->surface.mCFObject;
      v6->surface.mCFObject = v7;
      if (mCFObject)
      {
        CFRelease(mCFObject);
      }

      [coder decodeXPCObjectOfType:-[AVAudioSharedBufferToken taskTokenXPCType](v6 forKey:{"taskTokenXPCType"), @"token"}];
      v9 = xpc_mach_send_copy_right();
      m_mach_port = v6->taskToken.m_mach_port;
      v6->taskToken.m_mach_port = v9;
      *buf = m_mach_port;
      caulk::mach::mach_port::~mach_port(buf);
    }
  }

  else
  {
    v11 = gAVAudioBufferLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "AVAudioSharedBufferToken.mm";
      v17 = 1024;
      v18 = 36;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d initWithCoder called with an incompatible coder", buf, 0x12u);
    }

    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

- (AVAudioSharedBufferToken)initWithSurface:(__IOSurface *)surface taskToken:(unsigned int)token
{
  v12.receiver = self;
  v12.super_class = AVAudioSharedBufferToken;
  v6 = [(AVAudioSharedBufferToken *)&v12 init];
  v7 = v6;
  if (v6)
  {
    mCFObject = v6->surface.mCFObject;
    v7->surface.mCFObject = surface;
    if (mCFObject)
    {
      CFRelease(mCFObject);
    }

    m_mach_port = v7->taskToken.m_mach_port;
    v7->taskToken.m_mach_port = token;
    v11 = m_mach_port;
    caulk::mach::mach_port::~mach_port(&v11);
  }

  return v7;
}

@end