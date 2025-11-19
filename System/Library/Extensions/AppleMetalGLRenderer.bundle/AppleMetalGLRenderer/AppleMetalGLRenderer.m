void GLRQueryResultBuffer::~GLRQueryResultBuffer(GLRQueryResultBuffer *this)
{
  GLDObject::~GLDObject(this);

  GLDObject::operator delete(v1);
}

uint64_t GLRQueryResultBuffer::initWithShareGroup(GLRQueryResultBuffer *this, GLDShareGroupRec *a2)
{
  *(this + 2) = a2;
  GLDObject::retain(a2);
  *(this + 13) = 2048;
  *(this + 6) = 0;
  v3 = malloc_type_malloc(0x100uLL, 0x100004052888210uLL);
  *(this + 4) = v3;
  bzero(v3, *(this + 13) >> 3);
  v4 = malloc_type_malloc(8 * *(this + 13), 0x100004000313F17uLL);
  *(this + 5) = v4;
  bzero(v4, 8 * *(this + 13));
  return 1;
}

uint64_t GLRQueryResultBuffer::dealloc(GLRQueryResultBuffer *this)
{
  free(*(this + 4));
  free(*(this + 5));
  GLDObject::release(*(this + 2));

  return GLDObject::dealloc(this);
}

uint64_t GLRQueryResultBuffer::allocateQueryIndex(GLRQueryResultBuffer *this, unsigned int *a2)
{
  _os_nospin_lock_lock();
  v5 = *(this + 12);
  v4 = *(this + 13);
  if (v5 == v4)
  {
    *(this + 13) = 2 * v5;
    v6 = malloc_type_realloc(*(this + 4), (v5 >> 2) & 0x1FFFFFFF, 0x100004052888210uLL);
    *(this + 4) = v6;
    bzero(&v6[(v5 >> 3) & 0x1FFFFFFC], (*(this + 13) - v5) >> 3);
    v4 = *(this + 13);
  }

  v7 = *(this + 4);
  if (v4 >= 0x20)
  {
    v9 = 0;
    v8 = v4 >> 5;
    while (*(v7 + 4 * v9) == -1)
    {
      if (v8 == ++v9)
      {
        goto LABEL_10;
      }
    }

    LODWORD(v8) = v9;
  }

  else
  {
    LODWORD(v8) = 0;
  }

LABEL_10:
  v10 = *(v7 + 4 * v8);
  v11 = __clz(__rbit32(~v10));
  *(v7 + 4 * v8) = (1 << v11) | v10;
  *a2 = v11 + 32 * v8;

  return _os_nospin_lock_unlock();
}

uint64_t GLRQueryResultBuffer::processResults(GLRQueryResultBuffer *this, uint64_t *a2, unsigned int *a3, int a4, unsigned int a5)
{
  _os_nospin_lock_lock();
  if (a5)
  {
    v10 = *(this + 5);
    v11 = a5;
    do
    {
      v12 = a3[a4];
      *(v10 + 8 * v12) += a2[a4++];
      --v11;
    }

    while (v11);
  }

  return _os_nospin_lock_unlock();
}

void GLDQueryStagingBuffer::~GLDQueryStagingBuffer(GLDQueryStagingBuffer *this)
{
  GLDObject::~GLDObject(this);

  GLDObject::operator delete(v1);
}

uint64_t GLDQueryStagingBuffer::initWithShareGroup(GLDQueryStagingBuffer *this, GLDShareGroupRec *a2)
{
  *(this + 2) = a2;
  GLDObject::retain(a2);
  v3 = [*(*(this + 2) + 232) newBufferWithLength:0x4000 options:0];
  [v3 setLabel:*MEMORY[0x29EDBB7B0]];
  *(this + 6) = [v3 contents];
  *(this + 10) = 2048;
  v4 = GLDObject::operator new(0x30);
  GLRBufferResource::GLRBufferResource(v4);
  *(this + 3) = v4;
  GLRBufferResource::initWithMetalBuffer(v4, v3, 0x4000);

  *(this + 7) = malloc_type_malloc(0x2000uLL, 0x100004052888210uLL);
  return 1;
}

uint64_t GLDQueryStagingBuffer::dealloc(GLDQueryStagingBuffer *this)
{
  (*(**(this + 3) + 24))(*(this + 3));
  free(*(this + 7));
  GLDObject::release(*(this + 2));

  return GLDObject::dealloc(this);
}

BOOL GLDQueryStagingBuffer::allocateResultOffset(GLDQueryStagingBuffer *this, unsigned int *a2, int a3)
{
  v3 = *(this + 9);
  v4 = *(this + 10);
  if (v3 != v4)
  {
    *a2 = 8 * v3;
    v5 = *(this + 9);
    v6 = *(this + 7);
    *(*(this + 6) + 8 * v5) = 0;
    *(v6 + 4 * v5) = a3;
    ++*(this + 9);
  }

  return v3 != v4;
}

uint64_t GLDQueryStagingBuffer::deferProcessResults(uint64_t this, GLDContextRec *a2, GLRQueryResultBuffer *a3)
{
  if (*(this + 36) > *(this + 32))
  {
    v3 = *(this + 32);
    GLDContextRec::addCompletionBlock();
  }

  return this;
}

void GLDQueryRec::~GLDQueryRec(GLDQueryRec *this)
{
  GLDObject::~GLDObject(this);

  GLDObject::operator delete(v1);
}

uint64_t GLDQueryRec::dealloc(GLDQueryRec *this)
{
  v2 = *(this + 3);
  v3 = *(this + 10);
  _os_nospin_lock_lock();
  *(*(v2 + 32) + ((v3 >> 3) & 0x1FFFFFFC)) &= ~(1 << v3);
  _os_nospin_lock_unlock();
  GLDObject::release(*(this + 3));

  return GLDObject::dealloc(this);
}

uint64_t GLDQueryRec::setCounter(GLDQueryRec *this, uint64_t a2)
{
  v3 = *(this + 3);
  v4 = *(this + 10);
  _os_nospin_lock_lock();
  *(*(v3 + 40) + 8 * v4) = a2;

  return _os_nospin_lock_unlock();
}

uint64_t GLDQueryRec::getCounter(GLDQueryRec *this)
{
  GLDContextRec::waitQueryStamp(*(this + 2), *(this + 6));
  v2 = *(this + 3);
  v3 = *(this + 10);
  _os_nospin_lock_lock();
  v4 = *(*(v2 + 40) + 8 * v3);
  _os_nospin_lock_unlock();
  return v4;
}

intptr_t GLDContextRec::waitQueryStamp(intptr_t this, unint64_t a2)
{
  v3 = this;
  if (*(this + 4776) < a2)
  {
    this = GLDContextRec::flushContext(this);
  }

  if (*(v3 + 4784) < a2)
  {
    pthread_mutex_lock((v3 + 4888));
    while (*(v3 + 4784) < a2)
    {
      pthread_cond_wait((v3 + 4952), (v3 + 4888));
    }

    return pthread_mutex_unlock((v3 + 4888));
  }

  return this;
}

uint64_t GLDQueryRec::getQueryInfo(GLDQueryRec *this, unsigned int a2, uint64_t *a3)
{
  GLDContextRec::waitQueryStamp(*(this + 2), *(this + 6));
  v5 = *(this + 3);
  v6 = *(this + 10);
  _os_nospin_lock_lock();
  v7 = *(*(v5 + 40) + 8 * v6);
  _os_nospin_lock_unlock();
  *a3 = v7;
  return 0;
}

uint64_t GLDContextRec::signalQueryStamp(GLDContextRec *this, uint64_t a2)
{
  pthread_mutex_lock((this + 4888));
  *(this + 598) = a2;
  pthread_cond_broadcast((this + 4952));

  return pthread_mutex_unlock((this + 4888));
}

atomic_uint *GLDContextRec::releaseQueryStagingBuffer(GLDContextRec *this, atomic_uint *a2)
{
  _os_nospin_lock_lock();
  v4 = *(this + 781);
  if (v4 > 0x1F)
  {
    result = _os_nospin_lock_unlock();
    if (a2)
    {

      return GLDObject::release(a2);
    }
  }

  else
  {
    *(a2 + 4) = 0;
    *(this + 781) = v4 + 1;
    *(this + v4 + 749) = a2;

    return _os_nospin_lock_unlock();
  }

  return result;
}

GLDObject *GLDContextRec::allocQueryStagingBuffer(GLDContextRec *this)
{
  _os_nospin_lock_lock();
  v2 = *(this + 781);
  if (!v2)
  {
    _os_nospin_lock_unlock();
LABEL_5:
    v4 = GLDObject::operator new(0x40);
    GLDObject::GLDObject(v4);
    *v4 = &unk_2A240E768;
    GLDQueryStagingBuffer::initWithShareGroup(v4, *(this + 11));
    return v4;
  }

  v3 = v2 - 1;
  *(this + 781) = v3;
  v4 = *(this + v3 + 749);
  _os_nospin_lock_unlock();
  if (!v4)
  {
    goto LABEL_5;
  }

  return v4;
}

uint64_t GLDContextRec::endQuery(uint64_t this, GLDQueryRec *a2, int a3)
{
  if (a3 == 6)
  {
    *(this + 3368) = 0;
  }

  else if (a3)
  {
    v5 = MTLReleaseAssertionFailure();
    return GLDContextRec::beginQuery(v5, v6, v7);
  }

  else
  {
    *(a2 + 8) = 0;
    v4 = *(this + 16);

    return [v4 setVisibilityResultMode:0 offset:0];
  }

  return this;
}

void *GLDContextRec::beginQuery(GLDContextRec *this, GLDQueryRec *a2, int a3)
{
  if (a3 == 6)
  {
    *(a2 + 8) = 6;
    v8 = (this + 3352);

    return GLDTransformFeedbackMachine::beginQuery(v8, a2);
  }

  else if (a3)
  {
    v12 = MTLReleaseAssertionFailure();
    return GLDContextRec::loadCurrentQueries(v12);
  }

  else
  {
    *(a2 + 8) = 0;
    v5 = *(this + 595);
    v6 = *(v5 + 36);
    if (v6 == *(v5 + 40))
    {
      if (*(this + 1151))
      {
        GLDContextRec::beginRenderPass(this);
      }

      if (*(this + 2))
      {
        GLDContextRec::endRenderPass(this);
      }

      v7 = 0;
    }

    else
    {
      v10 = *(a2 + 10);
      v11 = *(v5 + 56);
      *(*(v5 + 48) + 8 * v6) = 0;
      v7 = (8 * v6);
      *(v11 + 4 * v6) = v10;
      ++*(v5 + 36);
    }

    result = *(this + 2);
    if (result)
    {
      *(a2 + 6) = *(this + 596);
      *(this + 5088) = 1;
      result = [result setVisibilityResultMode:1 offset:v7];
      *(this + 53) |= 0x1000uLL;
    }
  }

  return result;
}

GLDContextRec *GLDContextRec::loadCurrentQueries(GLDContextRec *this)
{
  v1 = this;
  v2 = 0;
  v3 = (this + 4792);
  do
  {
    v4 = *(v1 + 14) + 8 * v2;
    v5 = *(v4 + 432);
    v6 = v3[v2];
    if (v5 != v6)
    {
      if (v5)
      {
        v7 = v5[9];
        if (v7 != 12)
        {
          this = GLDContextRec::endQuery(v1, *(v4 + 432), v5[9]);
          v5[9] = 12;
          v3[v7] = 0;
          v6 = v3[v2];
        }
      }

      if (v6)
      {
        v8 = v6[9];
        this = GLDContextRec::endQuery(v1, v6, v6[9]);
        v6[9] = 12;
        v3[v8] = 0;
      }

      if (v5)
      {
        this = GLDContextRec::beginQuery(v1, v5, v2);
        v5[9] = v2;
        v3[v2] = v5;
      }
    }

    ++v2;
  }

  while (v2 != 11);
  return this;
}

uint64_t gldCreateQuery(uint64_t a1, unsigned int **a2)
{
  v4 = GLDObject::operator new(0x38);
  GLDObject::GLDObject(v4);
  *v4 = &unk_2A240E7A0;
  *(v4 + 2) = a1;
  GLRQueryResultBuffer::allocateQueryIndex(*(a1 + 4752), v4 + 10);
  v5 = *(a1 + 4752);
  *(v4 + 3) = v5;
  GLDObject::retain(v5);
  *(v4 + 4) = 0xCFFFFFFFFLL;
  *a2 = v4;
  return 0;
}

uint64_t gldDestroyQuery(uint64_t a1, GLDQueryRec *a2)
{
  v3 = *(a2 + 9);
  if (v3 != 12)
  {
    GLDContextRec::endQuery(a1, a2, *(a2 + 9));
    *(a2 + 9) = 12;
    *(a1 + 8 * v3 + 4792) = 0;
  }

  GLDObject::release(a2);
  return 0;
}

uint64_t gldGetQueryInfo(uint64_t a1, GLDQueryRec *this, int a3, uint64_t *a4)
{
  if (!a3)
  {
    return 0;
  }

  if (*(this + 8) == -1)
  {
    if (a3 == 34918)
    {
      result = 0;
      *a4 = 0;
    }

    else if (a3 == 34919)
    {
      result = 0;
      *a4 = 1;
    }

    else
    {
      return 10010;
    }
  }

  else
  {
    v6 = *(this + 9);
    if (v6 <= 9)
    {
      GLDContextRec::endQuery(a1, this, *(this + 9));
      *(this + 9) = 12;
      *(a1 + 8 * v6 + 4792) = 0;
    }

    GLDQueryRec::getQueryInfo(this, this, a4);
    return 0;
  }

  return result;
}

uint64_t gldModifyQuery(uint64_t a1, GLDQueryRec *a2, int a3, uint64_t *a4)
{
  v7 = *(a2 + 9);
  if (v7 != 12)
  {
    GLDContextRec::endQuery(a1, a2, *(a2 + 9));
    *(a2 + 9) = 12;
    *(a1 + 8 * v7 + 4792) = 0;
  }

  if (a3)
  {
    return 10010;
  }

  v10 = *a4;
  v11 = *(a2 + 3);
  v12 = *(a2 + 10);
  _os_nospin_lock_lock();
  *(*(v11 + 40) + 8 * v12) = v10;
  _os_nospin_lock_unlock();
  return 0;
}

void GLDMemoryPluginRec::~GLDMemoryPluginRec(GLDMemoryPluginRec *this)
{
  GLDObject::~GLDObject(this);

  GLDObject::operator delete(v1);
}

uint64_t GLDMemoryPluginRec::dealloc(GLDMemoryPluginRec *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  return GLDObject::dealloc(this);
}

uint64_t GLDMemoryPluginRec::setBufferResource(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 24);
  if (result)
  {
    result = (*(*result + 24))(result);
  }

  if (a2)
  {
    *(a1 + 24) = a2;
    v5 = *(*a2 + 16);

    return v5(a2);
  }

  return result;
}

void GLDBufferRec::~GLDBufferRec(GLDBufferRec *this)
{
  GLDObject::~GLDObject(this);

  GLDObject::operator delete(v1);
}

uint64_t GLDBufferRec::dealloc(GLDBufferRec *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(*(this + 6));
  }

  return GLDObject::dealloc(this);
}

uint64_t GLDBufferRec::update(GLDBufferRec *this, char a2)
{
  v2 = *(this + 3);
  if (!*v2)
  {
    return 0;
  }

  if ((a2 & 1) == 0)
  {
    return 1;
  }

  v4 = *(*(this + 2) + 232);
  if (!*(this + 5))
  {
    v5 = GLDObject::operator new(0x20);
    GLDObject::GLDObject(v5);
    *v5 = &unk_2A240E820;
    *(this + 5) = v5;
    v6 = *(this + 2);
    GLDLibrary::getAllDisplayMask(v5);
    *(v5 + 2) = v6;
    v2 = *(this + 3);
    v7 = *v2;
  }

  v8 = v2[1];
  result = [v4 newBufferWithBytesNoCopy:? length:? options:? deallocator:?];
  if (result)
  {
    v10 = result;
    [result setLabel:*MEMORY[0x29EDBB7B0]];
    v11 = GLDObject::operator new(0x30);
    GLRBufferResource::GLRBufferResource(v11);
    GLRBufferResource::initWithMetalBuffer(v11, v10, *(*(this + 3) + 8));

    GLDMemoryPluginRec::setBufferResource(*(this + 5), v11);
    (*(*v11 + 24))(v11);
    return 1;
  }

  return result;
}

uint64_t GLDBufferRec::load(GLDBufferRec *this)
{
  v1 = **(this + 4);
  if (!v1)
  {
    return 1;
  }

  v3 = *(this + 2);
  if (*(v3 + 248))
  {
    pthread_mutex_lock((v3 + 256));
    v1 = **(this + 4);
    if (!v1)
    {
      goto LABEL_6;
    }
  }

  if (GLDBufferRec::update(this, v1))
  {
    **(this + 4) = 0;
LABEL_6:
    v4 = 1;
    goto LABEL_9;
  }

  v4 = 0;
LABEL_9:
  v5 = *(this + 2);
  if (*(v5 + 248))
  {
    pthread_mutex_unlock((v5 + 256));
  }

  return v4;
}

uint64_t GLDBufferRec::loadUnlocked(GLDBufferRec *this)
{
  v1 = **(this + 4);
  if (v1)
  {
    result = GLDBufferRec::update(this, v1);
    if (!result)
    {
      return result;
    }

    **(this + 4) = 0;
  }

  return 1;
}

void GLDBufferRec::dispatchGroupAsync(uint64_t a1, dispatch_queue_t queue, dispatch_block_t block)
{
  v6 = *(a1 + 48);
  if (!v6)
  {
    v6 = dispatch_group_create();
    *(a1 + 48) = v6;
  }

  dispatch_group_async(v6, queue, block);
}

NSObject *GLDBufferRec::finishCPUAccess(GLDBufferRec *this)
{
  result = *(this + 6);
  if (result)
  {
    return dispatch_group_wait(result, 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t GLDBufferRec::restoreData(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  if (*(v2 + 248))
  {
    this = pthread_mutex_lock((v2 + 256));
  }

  v3 = v1[5];
  if (v3)
  {
    v4 = *(v3 + 24);
    if (v4)
    {
      this = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v1[2];
  if (*(v5 + 248))
  {
    this = pthread_mutex_unlock((v5 + 256));
  }

  if (v4)
  {
    if (*(v1[3] + 29))
    {
      (*(*v4 + 40))(v4, v1[2]);
    }

    v6 = *(*v4 + 24);

    return v6(v4);
  }

  return this;
}

uint64_t gldCreateBuffer(uint64_t a1, GLDObject **a2, uint64_t a3, uint64_t a4)
{
  v8 = GLDObject::operator new(0x38);
  GLDObject::GLDObject(v8);
  *v8 = &unk_2A240E858;
  GLDLibrary::getAllDisplayMask(v8);
  *(v8 + 2) = a1;
  *(v8 + 3) = a3;
  *(v8 + 4) = a4;
  *a2 = v8;
  return 0;
}

uint64_t gldDestroyBuffer(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 248))
  {
    pthread_mutex_lock((a1 + 256));
  }

  if (a2)
  {
    (*(*a2 + 24))(a2);
  }

  if (*(a1 + 248))
  {
    pthread_mutex_unlock((a1 + 256));
  }

  return 0;
}

void gldGetMemoryPlugin(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    *(a2 + 40) = 0;
    **(a2 + 32) |= 1u;
  }

  *a3 = v3;
}

uint64_t gldDestroyMemoryPlugin(uint64_t a1, void **a2)
{
  if (a2)
  {
    (*(*a2[3] + 40))(a2[3], a1);
    ((*a2)[3])(a2);
  }

  return 0;
}

void GLDDeviceRec::~GLDDeviceRec(GLDDeviceRec *this)
{
  GLDObject::~GLDObject(this);

  GLDObject::operator delete(v1);
}

BOOL GLDDeviceRec::init(GLDDeviceRec *this)
{
  GLDLibrary::getAllDisplayMask(this);
  v2 = MTLCreateSystemDefaultDevice();
  *(this + 3) = v2;
  if (!v2)
  {
    return v2 != 0;
  }

  if (GLDDeviceRec::init(void)::onceToken != -1)
  {
LABEL_22:
    GLDDeviceRec::init();
  }

  v3 = *(this + 3);
  if ((GLDDeviceRec::init(void)::enableMetalCapture & 1) == 0)
  {
    v4 = *(this + 3);
    if (objc_opt_respondsToSelector())
    {
      v3 = [v3 originalObject];
    }

    v5 = v3;

    *(this + 3) = v3;
  }

  v6 = [objc_msgSend(v3 "name")];
  v7 = strlen(v6);
  v8 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
  *(this + 121) = v8;
  strncpy(v8, v6, v7 + 1);
  v9 = [objc_msgSend(MEMORY[0x29EDBA0F8] stringWithFormat:@"Metal%@GLDriver", objc_msgSend(*(this + 3), "familyName")), "cStringUsingEncoding:", 1];
  v10 = strlen(v9);
  v11 = malloc_type_malloc(v10 + 1, 0x100004077774924uLL);
  *(this + 122) = v11;
  strncpy(v11, v9, v10 + 1);
  *(this + 4) = 850045863;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  v12 = [objc_alloc(MEMORY[0x29EDB9F48]) initWithPath:@"/System/Library/Extensions/AppleMetalGLRenderer.bundle"];
  v13 = [v12 pathForResource:@"default" ofType:@"metallib"];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = ___ZN12GLDDeviceRec4initEv_block_invoke_2;
  block[3] = &unk_29F349C30;
  block[4] = v13;
  block[5] = this;
  if (GLDDeviceRec::init(void)::once != -1)
  {
    dispatch_once(&GLDDeviceRec::init(void)::once, block);
  }

  v14 = GLDDeviceRec::init(void)::defaultLibrary;
  *(this + 12) = v14;
  if (v14)
  {

    *(this + 55) = objc_alloc_init(MEMORY[0x29EDB8E00]);
    *(this + 26) = objc_alloc_init(MEMORY[0x29EDB8E00]);
    GLRFunctionCache::init((this + 216));
    *(this + 56) = dispatch_queue_create("glmtl.pipelinecache", MEMORY[0x29EDCA580]);
    GLRRenderPipelineCache::init((this + 456));
    GLRDepthStencilCache::init((this + 464));
    *(this + 26) = GLRFunctionCache::registerBuiltInFunction(this + 216, [*(this + 12) newFunctionWithName:@"clearVertex"]);
    *(this + 14) = malloc_type_calloc(0x100uLL, 4uLL, 0x100004052888210uLL);
    v15 = off_29F349C50;
    for (i = 120; i != 188; i += 4)
    {
      v17 = GLRFunctionCache::registerBuiltInFunction(this + 216, [*(this + 12) newFunctionWithName:*v15]);
      *(this + i) = v17;
      if (!v17)
      {
        GLDDeviceRec::init();
        goto LABEL_22;
      }

      ++v15;
    }

    v18 = GLDObject::operator new(0x30);
    GLRResourceListPool::GLRResourceListPool(v18);
    *(this + 59) = v18;
    GLRResourceListPool::initWithResourceListCapacity(v18, 4096);
    v19 = [MEMORY[0x29EDB9F48] mainBundle];
    if (v19 && [objc_msgSend(v19 "bundlePath")] != 0x7FFFFFFFFFFFFFFFLL)
    {
      *(this + 61) = [MEMORY[0x29EDB8E00] dictionaryWithCapacity:4];
      *(this + 62) = [MEMORY[0x29EDB8E00] dictionaryWithCapacity:64];
      *(this + 64) = dispatch_queue_create("glmtl.telemetry", 0);
      GLDDeviceRec::telemetryStartTimer(this, 60.0);
    }

    *(this + 480) = 0;
    if (atomic_load_explicit(&qword_2A1A12DD8, memory_order_acquire))
    {
      goto LABEL_17;
    }
  }

  else
  {
    GLDDeviceRec::init();
  }

  GLDDeviceRec::init();
LABEL_17:
  if (_MergedGlobals && *_MergedGlobals == 49)
  {
    *(this + 480) = 1;
  }

  return v2 != 0;
}

uint64_t ___ZN12GLDDeviceRec4initEv_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"MetalCaptureEnabled", @"com.apple.opengl", &keyExistsAndHasValidFormat);
  GLDDeviceRec::init(void)::enableMetalCapture = result != 0;
  return result;
}

void ___ZN12GLDDeviceRec4initEv_block_invoke_2(uint64_t a1)
{
  v1 = 0;
  GLDDeviceRec::init(void)::defaultLibrary = [*(*(a1 + 40) + 24) newLibraryWithFile:*(a1 + 32) error:&v1];
  if (v1)
  {
    NSLog(&cfstr_ErrorLoadingBu.isa, v1);
  }
}

uint64_t GLDDeviceRec::dealloc(GLDDeviceRec *this)
{
  v2 = *(this + 64);
  if (v2)
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = ___ZN12GLDDeviceRec7deallocEv_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = this;
    dispatch_sync(v2, block);
    dispatch_release(*(this + 64));
  }

  v3 = *(this + 63);
  if (v3)
  {
    dispatch_release(v3);
  }

  GLRFunctionCache::destroy((this + 216));
  v4 = *(this + 57);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 58);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 56);
  if (v6)
  {
    dispatch_release(v6);
  }

  free(*(this + 14));
  *(this + 14) = 0;

  v7 = *(this + 59);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  free(*(this + 121));
  free(*(this + 122));
  return GLDObject::dealloc(this);
}

void ___ZN12GLDDeviceRec7deallocEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_source_cancel(*(v1 + 520));
  v2 = *(v1 + 520);

  dispatch_release(v2);
}

void *GLDDeviceRec::getDepthStencilStateFromDescriptor(GLDDeviceRec *this, MTLDepthStencilDescriptor *a2)
{
  pthread_mutex_lock((this + 32));
  v4 = [*(this + 55) objectForKey:a2];
  if (!v4)
  {
    v4 = [*(this + 3) newDepthStencilStateWithDescriptor:a2];
    if (v4)
    {
      [*(this + 55) setObject:v4 forKey:a2];
    }
  }

  pthread_mutex_unlock((this + 32));
  return v4;
}

uint64_t GLDDeviceRec::getRenderPipelineStateFromKey(GLDDeviceRec *this, const GLRRenderPipelineKey *a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  context[0] = this + 456;
  context[1] = a2;
  context[2] = &v20;
  dispatch_sync_f(*(this + 56), context, _getRenderPipelineState);
  v4 = v16[5];
  if (!v4)
  {
    v5 = objc_autoreleasePoolPush();
    v13 = 0;
    v6 = GLRRenderPipelineKey::copyDescriptor(a2, (this + 216));
    v12 = 0;
    v7 = [*(this + 3) newRenderPipelineStateWithDescriptor:v6 options:1 reflection:&v12 error:&v13];
    if (v7)
    {
      *(this + 3) |= 0x300000u;
      v8 = *(this + 56);
      v11[0] = MEMORY[0x29EDCA5F8];
      v11[1] = 3221225472;
      v11[2] = ___ZN12GLDDeviceRec29getRenderPipelineStateFromKeyEPK20GLRRenderPipelineKey_block_invoke;
      v11[3] = &unk_29F349D00;
      v11[7] = this;
      v11[8] = a2;
      v11[6] = &v15;
      v11[4] = v7;
      v11[5] = v12;
      dispatch_barrier_sync(v8, v11);
    }

    else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      GLDDeviceRec::getRenderPipelineStateFromKey([v13 localizedDescription], buf);
    }

    objc_autoreleasePoolPop(v5);
    v4 = v16[5];
  }

  _Block_object_dispose(&v15, 8);
  v9 = *MEMORY[0x29EDCA608];
  return v4;
}

void sub_29D36335C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void *_getRenderPipelineState(uint64_t a1)
{
  result = CFDictionaryGetValue(**a1, *(a1 + 8));
  **(a1 + 16) = result;
  return result;
}

void ___ZN12GLDDeviceRec29getRenderPipelineStateFromKeyEPK20GLRRenderPipelineKey_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  Value = CFDictionaryGetValue(*(v2 + 456), *(a1 + 64));
  if (Value)
  {
    v4 = Value;

    *(*(*(a1 + 48) + 8) + 40) = v4;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 40) = [[GLRRenderPipelineStateES alloc] initWithPipelineState:*(a1 + 32) reflection:*(a1 + 40)];
    CFDictionarySetValue(*(v2 + 456), *(a1 + 64), *(*(*(a1 + 48) + 8) + 40));

    v5 = *(*(*(a1 + 48) + 8) + 40);
  }
}

uint64_t GLDDeviceRec::getDepthStencilStateFromKey(GLDDeviceRec *this, const GLRDepthStencilKey *a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  context[0] = this + 464;
  context[1] = a2;
  context[2] = &v16;
  dispatch_sync_f(*(this + 56), context, _getDepthStencilState);
  v4 = v12[5];
  if (v4)
  {
    goto LABEL_4;
  }

  v5 = GLRDepthStencilKey::copyDescriptor(a2);
  v6 = [*(this + 3) newDepthStencilStateWithDescriptor:v5];
  v12[5] = v6;
  if (v6)
  {
    v7 = *(this + 56);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = ___ZN12GLDDeviceRec27getDepthStencilStateFromKeyEPK18GLRDepthStencilKey_block_invoke;
    v9[3] = &unk_29F349D28;
    v9[5] = this;
    v9[6] = a2;
    v9[4] = &v11;
    dispatch_barrier_sync(v7, v9);

    v4 = v12[5];
LABEL_4:
    _Block_object_dispose(&v11, 8);
    return v4;
  }

  result = MTLReleaseAssertionFailure();
  __break(1u);
  return result;
}

void sub_29D363608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void *_getDepthStencilState(uint64_t a1)
{
  result = CFDictionaryGetValue(**a1, *(a1 + 8));
  **(a1 + 16) = result;
  return result;
}

uint64_t GLDDeviceRec::getClearShaderFragmentFunction(GLDDeviceRec *this, uint64_t a2)
{
  pthread_mutex_lock((this + 32));
  v4 = *(*(this + 14) + 4 * a2);
  if (v4)
  {
    goto LABEL_4;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"clearFragment%02X", a2];
  v4 = GLRFunctionCache::registerBuiltInFunction(this + 216, [*(this + 12) newFunctionWithName:v6]);

  if (v4)
  {
    *(*(this + 14) + 4 * a2) = v4;
    objc_autoreleasePoolPop(v5);
LABEL_4:
    pthread_mutex_unlock((this + 32));
    return v4;
  }

  ClearShaderFragmentFunction = GLDDeviceRec::getClearShaderFragmentFunction();
  return GLDDeviceRec::getBlitFramebufferSampler(ClearShaderFragmentFunction, v9);
}

uint64_t GLDDeviceRec::getBlitFramebufferSampler(GLDDeviceRec *this, int a2)
{
  v4 = a2 - 9728;
  pthread_mutex_lock((this + 32));
  v5 = *(this + v4 + 24);
  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x29EDBB628]);
    v7 = v6;
    if (a2 == 9728)
    {
      v8 = 0;
    }

    else
    {
      if (a2 != 9729)
      {
LABEL_7:
        [v7 setMipFilter:0];
        [v7 setMaxAnisotropy:1];
        [v7 setSAddressMode:0];
        [v7 setTAddressMode:0];
        [v7 setRAddressMode:0];
        [v7 setNormalizedCoordinates:0];
        [v7 setLodMinClamp:0.0];
        [v7 setLodMaxClamp:0.0];
        v5 = [*(this + 3) newSamplerStateWithDescriptor:v7];
        *(this + v4 + 24) = v5;
        goto LABEL_8;
      }

      v8 = 1;
    }

    [v6 setMinFilter:v8];
    [v7 setMagFilter:v8];
    goto LABEL_7;
  }

LABEL_8:
  pthread_mutex_unlock((this + 32));
  return v5;
}

const char *GLDDeviceRec::getBlitPipelineStateFromDescriptor(GLDDeviceRec *this, MTLRenderPipelineDescriptor *a2)
{
  pthread_mutex_lock((this + 32));
  v4 = [*(this + 26) objectForKey:a2];
  if (v4)
  {
    goto LABEL_4;
  }

  v9 = 0;
  v5 = [*(this + 3) newRenderPipelineStateWithDescriptor:a2 error:&v9];
  if (v5)
  {
    v4 = v5;
    [*(this + 26) setObject:v5 forKey:a2];

LABEL_4:
    pthread_mutex_unlock((this + 32));
    return v4;
  }

  BlitPipelineStateFromDescriptor = GLDDeviceRec::getBlitPipelineStateFromDescriptor();
  return gldGetDeviceString(BlitPipelineStateFromDescriptor, v8);
}

const char *gldGetDeviceString(uint64_t a1, int a2)
{
  if (a2 <= 7937)
  {
    if (a2 == 7936)
    {
      return "Apple Inc.";
    }

    else if (a2 == 7937)
    {
      return *(a1 + 968);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    switch(a2)
    {
      case 7938:
        return "Metal - 104";
      case 7940:
        return *(a1 + 976);
      case 7941:
        return &gl_device;
      default:
        return 0;
    }
  }
}

uint64_t gldCreateDevice(GLDObject **a1, uint64_t a2, uint64_t a3)
{
  v5 = GLDObject::operator new(0x3D8);
  GLDObject::GLDObject(v5);
  *v5 = &unk_2A240E8C0;
  *(v5 + 68) = 0;
  *(v5 + 241) = 0;
  *(v5 + 61) = 0;
  *(v5 + 62) = 0;
  if (GLDDeviceRec::init(v5))
  {
    result = 0;
    *a1 = v5;
  }

  else
  {
    GLDObject::release(v5);
    result = 10017;
  }

  *a3 = 0;
  *(a3 + 4) = 1;
  return result;
}

uint64_t gldDestroyDevice(atomic_uint *a1)
{
  if (a1)
  {
    GLDObject::release(a1);
  }

  return 0;
}

uint64_t gldPopulateRendererInfo(uint64_t a1, uint64_t a2)
{
  v2 = *g_Library;
  *a2 = 0;
  *(a2 + 8) = xmmword_29D37A400;
  *(a2 + 24) = 0x100108000000;
  *(a2 + 32) = 129;
  *(a2 + 36) = v2;
  *(a2 + 40) = 0x10000;
  *(a2 + 44) = 16;
  *(a2 + 48) = 1;
  *(a2 + 46) = 1;
  *(a2 + 60) = 0u;
  *(a2 + 76) = 0u;
  *(a2 + 92) = 0u;
  *(a2 + 108) = 0u;
  *(a2 + 120) = 0u;
  return 0;
}

void GLDFenceRec::~GLDFenceRec(GLDFenceRec *this)
{
  GLRResource::~GLRResource(this);

  GLDObject::operator delete(v1);
}

uint64_t GLDFenceRec::getStatus(GLDFenceRec *this)
{
  if (*(this + 8))
  {
    return 3;
  }

  if (*(this + 3))
  {
    return 0;
  }

  v2 = *(this + 4) == 0;
  *(this + 8) = v2;
  if (v2)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

uint64_t gldCreateFence(uint64_t a1, GLRResource **a2)
{
  v3 = GLDObject::operator new(0x28);
  GLRResource::GLRResource(v3);
  *v3 = &unk_2A240E930;
  GLDLibrary::getAllDisplayMask(v3);
  *(v3 + 8) = 1;
  *a2 = v3;
  return 0;
}

void gldClearFence(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 32) = 1;
  }
}

uint64_t gldDestroyFence(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    (*(*a2 + 24))(a2);
  }

  return 0;
}

uint64_t gldGetFenceStatus(uint64_t a1, _DWORD *a2)
{
  if (!a2 || a2[8])
  {
    return 3;
  }

  if (a2[3])
  {
    return 0;
  }

  v3 = a2[4] == 0;
  a2[8] = v3;
  if (v3)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

void GLDFramebufferRec::~GLDFramebufferRec(GLDFramebufferRec *this)
{
  GLDObject::~GLDObject(this);

  GLDObject::operator delete(v1);
}

uint64_t GLDFramebufferRec::load(GLDFramebufferRec *this)
{
  v2 = *(this + 2);
  if (*(v2 + 248))
  {
    pthread_mutex_lock((v2 + 256));
  }

  v3 = *(*(this + 4) + 200);
  *(*(this + 5) + 81) = 1;
  if (!v3)
  {
LABEL_9:
    v12 = *(this + 2);
    v13 = *(v12 + 20) + 1;
    *(v12 + 20) = v13;
    *(this + 6) = v13;
    updated = GLDFramebufferRec::updateState(this);
    v15 = *(this + 5);
    *(v15 + 81) = updated ^ 1;
    *(v15 + 80) = 0;
    goto LABEL_11;
  }

  while (1)
  {
    v4 = __clz(__rbit32(v3));
    v5 = *(*(this + 5) + 8 * v4);
    v6 = *(v5 + 56);
    v7 = *(v6 + 20);
    if (v7)
    {
      break;
    }

LABEL_7:
    v11 = 1 << v4 == v3;
    v3 ^= 1 << v4;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  v8 = *(this + 2);
  v9 = *(v8 + 24) + 1;
  *(v8 + 24) = v9;
  *(v5 + 12) = v9;
  if (GLDTextureRec::update(v5, v7, (v6 + 8)))
  {
    v10 = *(v5 + 56);
    *(v10 + 13) = 0;
    *(v10 + 8) = 0;
    goto LABEL_7;
  }

  updated = *(*(this + 5) + 81) == 0;
LABEL_11:
  v16 = *(this + 2);
  if (*(v16 + 248))
  {
    pthread_mutex_unlock((v16 + 256));
  }

  return updated;
}

uint64_t GLDFramebufferRec::updateState(GLDFramebufferRec *this)
{
  v2 = *(this + 4);
  v1 = *(this + 5);
  *(v1 + 82) = 0;
  if (*(v2 + 178) <= 0x4000u)
  {
    v4 = 1;
    if (*(v2 + 180) > 0x4000u)
    {
      result = 0;
      goto LABEL_5;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      if ((*(v2 + 200) & (1 << v6)) != 0)
      {
        v1 = *(this + 5);
        v9 = *(v1 + 8 * v6);
        if (!v9)
        {
          return 0;
        }

        if (v6 <= 7)
        {
          v10 = &(&glrTextureFormats)[5 * *(v9 + 64)];
          if ((*(v10 + 36) & 1) == 0)
          {
            goto LABEL_2;
          }

          v11 = v10[3];
          v25 = 0;
          v24 = 0u;
          v12 = *(*(this + 2) + 232);
          MTLPixelFormatGetInfoForDevice();
          if (*(*(v9 + 48) + 212) <= 1u)
          {
            v13 = &v24 + 2;
          }

          else
          {
            v13 = &v25;
          }

          v14 = *v13;
          v2 = *(this + 4);
          if (*(v2 + 176) && v6 == *(v2 + 176) - 36064)
          {
            v15 = *(this + 5);
            v16 = *(v10 + 3);
            *(v15 + 84) = *(v10 + 2);
            *(v15 + 86) = v16;
          }

          v8 += 8 * v14;
          v7 |= 1 << v6;
        }
      }

      ++v6;
    }

    while (v6 != 10);
    v17 = [*(*(this + 2) + 232) maxFramebufferStorageBits];
    v1 = *(this + 5);
    if (v17 >= v8)
    {
      v18 = *(v1 + 64);
      if (!v18 || (*(&glrTextureFormats + 40 * *(v18 + 64) + 36) & 2) != 0)
      {
        v19 = *(v1 + 72);
        if (v19)
        {
          result = 0;
          v20 = 68;
          if (*(v19 + 76) == 1)
          {
            v20 = 64;
          }

          v21 = &(&glrTextureFormats)[5 * *(v19 + v20)];
          if (v18)
          {
            v22 = v19 == v18;
          }

          else
          {
            v22 = 1;
          }

          v23 = !v22;
          v4 = 1;
          if (*(v21 + 36) & 4) == 0 || (v23)
          {
            goto LABEL_5;
          }

          goto LABEL_38;
        }

        if (v7 || v18)
        {
LABEL_38:
          v4 = 0;
          result = 1;
          goto LABEL_5;
        }
      }
    }
  }

LABEL_2:
  result = 0;
  v4 = 1;
LABEL_5:
  *(v1 + 81) = v4;
  return result;
}

uint64_t gldCreateFramebuffer(uint64_t a1, GLDObject **a2, uint64_t a3, uint64_t a4)
{
  v8 = GLDObject::operator new(0x30);
  GLDObject::GLDObject(v8);
  *v8 = &unk_2A240E990;
  GLDLibrary::getAllDisplayMask(v8);
  *(v8 + 2) = a1;
  *(v8 + 4) = a3;
  *(v8 + 5) = a4;
  *a2 = v8;
  return 0;
}

uint64_t gldDestroyFramebuffer(uint64_t a1, atomic_uint *this)
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

uint64_t GLDContextRec::loadCurrentProgram(GLDContextRec *this, GLDProgramRec *a2, GLDPipelineProgramRec *a3, unsigned int *a4, unsigned int a5)
{
  v14 = 0;
  if (a3)
  {
    result = GLDPipelineProgramRec::update(a3, a2, a5, &v14);
    if (!result)
    {
      GLDContextRec::loadCurrentProgram();
      return GLDContextRec::loadCurrentPipelinePrograms(v12, v13);
    }

    v10 = v14;
  }

  else
  {
    v10 = 0;
    result = 0;
  }

  if (*(this + a5 + 511) != result)
  {
    *(this + a5 + 511) = result;
    *(this + 330) = -1;
    *(this + 618) |= 0x40Cu;
  }

  if (!a5)
  {
    *(this + 516) = v10;
  }

  v11 = this + 8 * a5;
  *(v11 + 188) = a2;
  *(v11 + 183) = a3;
  return result;
}

uint64_t GLDContextRec::loadCurrentPipelinePrograms(uint64_t this, unsigned int *a2, uint64_t a3, unsigned int *a4)
{
  v5 = this;
  v6 = a2[3];
  if ((v6 & 0x20000000) != 0)
  {
    this = GLDContextRec::updateUniformBuffers(this);
    v7 = this;
    v6 = a2[3];
  }

  else
  {
    v7 = 1;
  }

  if ((v6 & 0x90040000) != 0)
  {
    v8 = *(v5 + 112);
    v9 = *(v8 + 328);
    v10 = *(v5 + 384);
    *(v5 + 384) = v10 & 0xFFF7FF00;
    if ((v10 & 0x3F03F00) != 0)
    {
      v9 = 0;
      v11 = 0;
    }

    else
    {
      if (v9 && (**(v9 + 24) & 1) != 0)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_30;
        }

        v12 = *(v9 + 32);
      }

      else
      {
        v9 = 0;
        v12 = (v8 + 256);
      }

      v11 = *v12;
    }

    this = GLDContextRec::loadCurrentProgram(v5, v9, v11, a4, 0);
    v6 = a2[3];
  }

  if ((v6 & 0x10400000) != 0)
  {
    v13 = *(v5 + 112);
    v14 = *(v13 + 360);
    if (!v14 || (**(v14 + 24) & 0x10) == 0)
    {
      v14 = 0;
      v15 = (v13 + 288);
LABEL_20:
      this = GLDContextRec::loadCurrentProgram(v5, v14, *v15, a4, 4u);
      v6 = a2[3];
      goto LABEL_21;
    }

    if (v7)
    {
      v15 = (*(v14 + 32) + 32);
      goto LABEL_20;
    }

LABEL_30:
    MTLReleaseAssertionFailure();
    return gldGetPipelineProgramInfo();
  }

LABEL_21:
  if ((v6 & 0x903C0000) != 0)
  {
    if (*(v5 + 384))
    {
      v16 = *(*(v5 + 112) + 296);
      if (*(v5 + 1464) != v16)
      {
        v18 = 0;
        this = GLDPipelineProgramRec::update(v16, 0, 0, &v18);
        if (!this)
        {
          v16 = 0;
          *(v5 + 384) |= 0x80000u;
          a2[3] |= 0x10400000u;
        }

        v17 = v18;
        if (*(v5 + 4088) != this)
        {
          *(v5 + 4088) = this;
          *(v5 + 2640) = -1;
          *(v5 + 2472) |= 0x40Cu;
        }

        *(v5 + 4128) = v17;
        *(v5 + 1504) = 0;
        *(v5 + 1464) = v16;
      }
    }
  }

  return this;
}

void gldInitializeLibrary(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  gldInitializeLibrary::space = a3;
  qword_2A1A12E28 = a4;
  unk_2A1A12E30 = a5;
  g_Library = &gldInitializeLibrary::space;
}

uint64_t gldGetVersion(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  if (!*g_Library)
  {
    return 0;
  }

  *a1 = 4;
  result = 1;
  *a2 = 1;
  *a3 = 16;
  *a4 = 32512;
  return result;
}

void GLDObject::~GLDObject(GLDObject *this)
{
  *this = &unk_2A240E9E0;
  *(this + 2) = -1;
}

{
  *this = &unk_2A240E9E0;
  *(this + 2) = -1;
}

uint64_t GLDObject::dealloc(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

atomic_uint *GLDObject::release(atomic_uint *this)
{
  if (atomic_fetch_add_explicit(this + 2, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    return (*(*this + 32))();
  }

  return this;
}

void *GLDObject::operator new(GLDObject *this)
{
  v2 = malloc_type_malloc(this, 0xACCAF14AuLL);
  bzero(v2, this);
  return v2;
}

uint64_t gpusPixelBytes(int a1, int a2)
{
  result = 2;
  if (a2 <= 33634)
  {
    if (a2 <= 32818)
    {
      if ((a2 - 5120) <= 0xB)
      {
        if (((1 << a2) & 0x70) != 0)
        {
          return 4 * gpulComponents(a1);
        }

        if (((1 << a2) & 0x80C) != 0)
        {
          return 2 * gpulComponents(a1);
        }

        if (((1 << a2) & 3) != 0)
        {
          result = 1;
          v5 = a1 - 101;
          if ((a1 - 35429) > 0xF)
          {
            if ((a1 - 37883) < 3)
            {
              return result;
            }

            if (a1 != 37902 && (a1 - 37875) >= 6)
            {
              v7 = a1;

              return gpulComponents(v7);
            }
          }

          else if (((1 << v5) & 0xE2E2) == 0)
          {
            if (((1 << v5) & 0xD0D) == 0)
            {
              return 4;
            }

            return result;
          }

          return 2;
        }
      }

      if (a2)
      {
LABEL_54:
        MTLReleaseAssertionFailure();
        goto LABEL_55;
      }

      if (a1 > 37839)
      {
        v8 = a1 - 37840;
        if (v8 > 0x3D || ((1 << v8) & 0x3FFFC00000003FFFLL) == 0)
        {
          goto LABEL_55;
        }
      }

      else if (a1 > 37807)
      {
        if ((a1 - 37808) >= 0xE)
        {
          goto LABEL_55;
        }
      }

      else
      {
        result = 8;
        if (a1 > 37487)
        {
          v9 = a1 - 37488;
          if (v9 > 9)
          {
LABEL_55:
            v7 = MTLReleaseAssertionFailure();
            return gpulComponents(v7);
          }

          if (((1 << v9) & 0xF3) != 0)
          {
            return result;
          }
        }

        else
        {
          if ((a1 - 35412) < 4)
          {
            return result;
          }

          if ((a1 - 35420) >= 4)
          {
            if ((a1 - 35840) >= 4)
            {
              goto LABEL_55;
            }

            return result;
          }
        }
      }

      return 16;
    }

    if ((a2 - 32819) < 2)
    {
      return result;
    }

    v4 = 32822;
LABEL_24:
    if (a2 == v4)
    {
      return 4;
    }

    goto LABEL_54;
  }

  if (a2 <= 34233)
  {
    if ((a2 - 33635) <= 5)
    {
      v6 = 1 << (a2 - 99);
      if ((v6 & 0xD) != 0)
      {
        return result;
      }

      if ((v6 & 0x30) != 0)
      {
        return 4;
      }
    }

    v4 = 34042;
    goto LABEL_24;
  }

  if (a2 > 36192)
  {
    if (a2 != 36193)
    {
      if (a2 == 36269)
      {
        return 8;
      }

      v4 = 37882;
      goto LABEL_24;
    }

    return 2 * gpulComponents(a1);
  }

  if ((a2 - 34234) >= 2)
  {
    if (a2 != 35899)
    {
      v4 = 35902;
      goto LABEL_24;
    }

    return 4;
  }

  return result;
}

uint64_t gpulComponents(int a1)
{
  result = 1;
  if (a1 <= 35428)
  {
    if (a1 <= 6408)
    {
      if ((a1 - 6400) < 7)
      {
        return result;
      }

      v4 = 6407;
LABEL_22:
      if (a1 == v4)
      {
        return 3;
      }

      return 4;
    }

    if (a1 > 32991)
    {
      if ((a1 - 33319) >= 2)
      {
        v4 = 32992;
        goto LABEL_22;
      }
    }

    else
    {
      if (a1 == 6409)
      {
        return result;
      }

      if (a1 != 6410)
      {
        if (a1 != 32841)
        {
          return 4;
        }

        return result;
      }
    }

    return 2;
  }

  if ((a1 - 35429) < 0x10 || (a1 - 37875) <= 0x1B && ((1 << (a1 + 13)) & 0x800073F) != 0)
  {
    return 3;
  }

  v3 = a1 - 36244;
  if (v3 > 9)
  {
    return 4;
  }

  if (((1 << v3) & 0x10F) == 0)
  {
    if (((1 << v3) & 0x50) != 0)
    {
      return 3;
    }

    if (v3 != 9)
    {
      return 4;
    }

    return 2;
  }

  return result;
}

uint64_t gpusRowBytes(int a1, int a2, int a3)
{
  if (a2)
  {
    return gpusPixelBytes(a1, a2) * a3;
  }

  if (a1 > 37807)
  {
    switch(a1)
    {
      case 37808:
      case 37840:
      case 37886:
      case 37887:
        goto LABEL_27;
      case 37809:
      case 37810:
      case 37841:
      case 37842:
      case 37888:
      case 37889:
        v4 = 1;
        v5 = 5;
        return (((a3 + v5 - 1) / v5 * gpusPixelBytes(a1, 0)) / v4);
      case 37811:
      case 37812:
      case 37843:
      case 37844:
      case 37890:
      case 37891:
        v4 = 1;
        v5 = 6;
        return (((a3 + v5 - 1) / v5 * gpusPixelBytes(a1, 0)) / v4);
      case 37813:
      case 37814:
      case 37815:
      case 37845:
      case 37846:
      case 37847:
      case 37892:
      case 37893:
      case 37894:
      case 37895:
        goto LABEL_28;
      case 37816:
      case 37817:
      case 37818:
      case 37819:
      case 37848:
      case 37849:
      case 37850:
      case 37851:
      case 37896:
      case 37897:
      case 37898:
      case 37899:
        v4 = 1;
        v5 = 10;
        return (((a3 + v5 - 1) / v5 * gpusPixelBytes(a1, 0)) / v4);
      case 37820:
      case 37821:
      case 37852:
      case 37853:
      case 37900:
      case 37901:
        v4 = 1;
        v5 = 12;
        return (((a3 + v5 - 1) / v5 * gpusPixelBytes(a1, 0)) / v4);
      default:
        goto LABEL_35;
    }
  }

  if (a1 > 35841)
  {
    if ((a1 - 37488) < 0xA)
    {
      v5 = 4;
      v4 = 4;
      return (((a3 + v5 - 1) / v5 * gpusPixelBytes(a1, 0)) / v4);
    }

    if (a1 == 35842)
    {
      goto LABEL_33;
    }

    v7 = 35843;
    goto LABEL_31;
  }

  if (a1 <= 35420)
  {
    if (a1 <= 35413)
    {
      if (a1 != 35412)
      {
        if (a1 != 35413)
        {
          goto LABEL_35;
        }

        goto LABEL_33;
      }
    }

    else if (a1 != 35414)
    {
      if (a1 != 35415)
      {
        v6 = 35420;
        goto LABEL_26;
      }

LABEL_33:
      v5 = 8;
      v4 = 8;
      return (((a3 + v5 - 1) / v5 * gpusPixelBytes(a1, 0)) / v4);
    }

LABEL_32:
    v4 = 8;
    v5 = 16;
    return (((a3 + v5 - 1) / v5 * gpusPixelBytes(a1, 0)) / v4);
  }

  if (a1 > 35422)
  {
    if (a1 != 35423)
    {
      if (a1 == 35840)
      {
        goto LABEL_33;
      }

      v7 = 35841;
LABEL_31:
      if (a1 != v7)
      {
        goto LABEL_35;
      }

      goto LABEL_32;
    }

LABEL_28:
    v4 = 1;
    v5 = 8;
    return (((a3 + v5 - 1) / v5 * gpusPixelBytes(a1, 0)) / v4);
  }

  if (a1 == 35421)
  {
    goto LABEL_28;
  }

  v6 = 35422;
LABEL_26:
  if (a1 == v6)
  {
LABEL_27:
    v4 = 1;
    v5 = 4;
    return (((a3 + v5 - 1) / v5 * gpusPixelBytes(a1, 0)) / v4);
  }

LABEL_35:
  v8 = MTLReleaseAssertionFailure();
  return glrPixelSettings(v8);
}

uint64_t glrPixelSettings(int a1, int a2, int a3, int a4, int *a5, _DWORD *a6, _DWORD *a7, int *a8, char a9)
{
  result = gpusPixelBytes(a1, a2);
  *a6 = result;
  if (a2 && a8)
  {
    v18 = result;
    v19 = a8[1];
    if (!v19)
    {
      result = *a8 < 1 ? gpusRowBytes(a1, a2, a3) : (*a8 * result);
      v20 = a8[7];
      v21 = result % v20;
      v19 = v20 + result - result % v20;
      if (!v21)
      {
        v19 = result;
      }
    }

    *a5 = v19;
    v22 = a8[3];
    if (!v22)
    {
      v23 = a8[2];
      if (v23 <= 0)
      {
        v23 = a4;
      }

      v22 = v23 * v19;
    }

    if ((a9 & 4) != 0)
    {
      v24 = a8[6];
    }

    else
    {
      v24 = 0;
    }

    *a7 = a8[5] * v18 + v24 * v22 + a8[4] * v19;
  }

  else
  {
    *a7 = 0;
    result = gpusRowBytes(a1, a2, a3);
    *a5 = result;
  }

  return result;
}

void GLDPipelineProgramRec::~GLDPipelineProgramRec(GLDPipelineProgramRec *this)
{
  GLDObject::~GLDObject(this);

  GLDObject::operator delete(v1);
}

uint64_t GLDPipelineProgramRec::dealloc(id *this)
{

  return GLDObject::dealloc(this);
}

void *GLDPipelineProgramRec::createMetalFunction(GLDPipelineProgramRec *this, GLDProgramRec *a2, unsigned int a3, int a4)
{
  v5 = *(this + 3);
  if (!a4)
  {
    v23 = 0;
    v24 = 1;
LABEL_30:
    v25 = GLRFunctionCache::newFunctionWithGLIR((*(*(this + 2) + 224) + 216), *(*(*(this + 2) + 224) + 24), *(v5 + 16), v23, v24);
    if (v23)
    {
      dispatch_release(v23);
    }

    return v25;
  }

  if (a4 == 4)
  {
    v6 = *(v5 + 56);
    if (v6)
    {
      v7 = *v6;
      if (v7)
      {
        v8 = 0;
        v9 = v6 + 2;
        v10 = (v6 + 2);
        v11 = *v6;
        do
        {
          v12 = *v10;
          v10 += 2;
          if ((v12 & 0x1F00) == 0x1C00)
          {
            ++v8;
          }

          --v11;
        }

        while (v11);
        if (v8)
        {
          v13 = 2 * v8;
          v14 = malloc_type_malloc(v13 + 2, 0x1000040BDFB0063uLL);
          bzero(v14, v13 + 2);
          v15 = 0;
          *v14 = v8;
          v16 = v14 + 1;
          while ((*v9 & 0x1F00) != 0x1C00)
          {
LABEL_25:
            v9 += 2;
            if (!--v7)
            {
              v23 = dispatch_data_create(v14, v13 + 2, 0, *MEMORY[0x29EDCA558]);
              goto LABEL_29;
            }
          }

          v17 = v16[v15] & 0xFFE0 | v9[1] & 0x1F;
          v16[v15] = v17;
          v18 = (*v9 >> 3) & 7;
          v19 = *v9 & 7;
          if (v18 > 1)
          {
            if (v18 == 2)
            {
              v21 = v19 >= 4;
              v20 = 0x4A004A003A003A0uLL >> (16 * v19);
            }

            else
            {
              if (v18 != 3)
              {
                goto LABEL_34;
              }

              v21 = v19 >= 4;
              v20 = 0x520052004200420uLL >> (16 * v19);
            }
          }

          else
          {
            if (v18)
            {
              if (v18 != 1)
              {
                goto LABEL_34;
              }

              LOWORD(v20) = 1696;
              goto LABEL_24;
            }

            v21 = v19 >= 4;
            v20 = 0x200020000600060uLL >> (16 * v19);
          }

          if (v21)
          {
            LOWORD(v20) = 1696;
          }

LABEL_24:
          v22 = v20 | v17 & 0xF81F;
          v16[v15] = v22;
          v16[v15++] = (32 * *v9) & 0x1800 | v22 & 0xE7FF;
          goto LABEL_25;
        }
      }
    }

    v23 = 0;
LABEL_29:
    v24 = 2;
    goto LABEL_30;
  }

  MTLReleaseAssertionFailure();
LABEL_34:
  v27 = MTLReleaseAssertionFailure();
  return GLDPipelineProgramRec::update(v27);
}

uint64_t GLDPipelineProgramRec::update(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = *v6;
  *v6 = 0;
  if (v7)
  {

    *(a1 + 40) = GLDPipelineProgramRec::createMetalFunction(a1, v9, v10, a3);
    if (!a3)
    {

      v11 = *(*(a1 + 24) + 80);
      if (v11)
      {
        v12 = GLRFunctionCache::newFunctionWithGLIR((*(*(a1 + 16) + 224) + 216), *(*(*(a1 + 16) + 224) + 24), v11, 0, 1);
      }

      else
      {
        v12 = 0;
      }

      *(a1 + 48) = v12;
    }
  }

  *a4 = *(a1 + 48);
  return *(a1 + 40);
}

void GLDProgramRec::~GLDProgramRec(GLDProgramRec *this)
{
  GLDObject::~GLDObject(this);

  GLDObject::operator delete(v1);
}

uint64_t gldCreatePipelineProgram(uint64_t a1, GLDObject **a2, uint64_t a3, uint64_t a4)
{
  v8 = GLDObject::operator new(0x38);
  GLDObject::GLDObject(v8);
  *v8 = &unk_2A240EA28;
  GLDLibrary::getAllDisplayMask(v8);
  *(v8 + 2) = a1;
  *(v8 + 3) = a3;
  *(v8 + 4) = a4;
  *a2 = v8;
  return 0;
}

uint64_t gldDestroyPipelineProgram(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 248))
  {
    pthread_mutex_lock((a1 + 256));
  }

  if (a2)
  {
    (*(*a2 + 24))(a2);
  }

  if (*(a1 + 248))
  {
    pthread_mutex_unlock((a1 + 256));
  }

  return 0;
}

uint64_t gldCreateProgram(uint64_t a1, GLDObject **a2, uint64_t a3, uint64_t a4)
{
  v8 = GLDObject::operator new(0x28);
  GLDObject::GLDObject(v8);
  *v8 = &unk_2A240EA60;
  GLDLibrary::getAllDisplayMask(v8);
  *(v8 + 2) = a1;
  *(v8 + 3) = a3;
  *(v8 + 4) = a4;
  *a2 = v8;
  return 0;
}

uint64_t gldDestroyProgram(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 248))
  {
    pthread_mutex_lock((a1 + 256));
  }

  if (a2)
  {
    (*(*a2 + 24))(a2);
  }

  if (*(a1 + 248))
  {
    pthread_mutex_unlock((a1 + 256));
  }

  return 0;
}

void GLRResourceListPool::~GLRResourceListPool(GLRResourceListPool *this)
{
  GLDObject::~GLDObject(this);

  GLDObject::operator delete(v1);
}

uint64_t GLRResourceListPool::initWithResourceListCapacity(GLRResourceListPool *this, int a2)
{
  v3 = this;
  GLDLibrary::getAllDisplayMask(this);
  *(v3 + 2) = 0;
  v3 = (v3 + 16);
  *(v3 + 6) = a2;
  *(v3 + 1) = v3;
  *(v3 + 2) = 0;
  return 1;
}

uint64_t GLRResourceListPool::dealloc(GLRResourceListPool *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    do
    {
      v3 = v2[24];
      (*(*v2 + 24))(v2);
      v2 = v3;
    }

    while (v3);
  }

  return GLDObject::dealloc(this);
}

GLRResourceList *GLRResourceListPool::newResourceList(GLRResourceListPool *this)
{
  _os_nospin_lock_lock();
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 24);
    v4 = *(v2 + 25);
    v5 = (this + 24);
    if (v3)
    {
      v5 = (v3 + 200);
    }

    *v5 = v4;
    *v4 = v3;
    --*(this + 9);
    *(v2 + 24) = 0;
    *(v2 + 25) = 0;
    _os_nospin_lock_unlock();
    goto LABEL_7;
  }

  _os_nospin_lock_unlock();
  v2 = GLDObject::operator new(0xD8);
  GLRResourceList::GLRResourceList(v2);
  if (v2)
  {
    GLRResourceList::initWithCapacity(v2, *(this + 10));
LABEL_7:
    *(v2 + 23) = this;
    (*(*this + 16))(this);
  }

  return v2;
}

void GLRResource::~GLRResource(GLRResource *this)
{
  GLDObject::~GLDObject(this);

  GLDObject::operator delete(v1);
}

uint64_t GLRResource::waitIdle(uint64_t this, GLDShareGroupRec *a2)
{
  if (*(this + 16))
  {
    return GLDShareGroupRec::waitUsage(a2, (this + 16));
  }

  return this;
}

void GLRBufferResource::~GLRBufferResource(GLRBufferResource *this)
{
  GLDObject::~GLDObject(this);

  GLDObject::operator delete(v1);
}

uint64_t GLRBufferResource::initWithMetalBuffer(GLDLibrary *a1, void *a2, uint64_t a3)
{
  GLDLibrary::getAllDisplayMask(a1);
  *(a1 + 3) = a3;
  *(a1 + 5) = a2;
  v6 = a2;
  return 1;
}

uint64_t GLRBufferResource::dealloc(id *this)
{

  return GLDObject::dealloc(this);
}

void GLRSamplerResource::~GLRSamplerResource(GLRSamplerResource *this)
{
  GLDObject::~GLDObject(this);

  GLDObject::operator delete(v1);
}

uint64_t GLRSamplerResource::initWithMetalSampler(GLDLibrary *a1, void *a2)
{
  GLDLibrary::getAllDisplayMask(a1);
  *(a1 + 3) = 1;
  *(a1 + 4) = a2;
  return 1;
}

uint64_t GLRSamplerResource::dealloc(id *this)
{

  return GLDObject::dealloc(this);
}

void GLRTextureViewResource::~GLRTextureViewResource(GLRTextureViewResource *this)
{
  GLDObject::~GLDObject(this);

  GLDObject::operator delete(v1);
}

uint64_t GLRTextureViewResource::dealloc(id *this)
{

  return GLDObject::dealloc(this);
}

void GLRTextureResource::~GLRTextureResource(GLRTextureResource *this)
{
  GLDObject::~GLDObject(this);

  GLDObject::operator delete(v1);
}

uint64_t GLRTextureResource::initWithMetalTexture(GLDLibrary *a1, void *a2, uint64_t a3)
{
  GLDLibrary::getAllDisplayMask(a1);
  *(a1 + 3) = a3;
  *(a1 + 4) = a2;
  return 1;
}

uint64_t GLRTextureResource::dealloc(id *this)
{
  v2 = this[5];
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  return GLDObject::dealloc(this);
}

uint64_t GLRTextureResource::setBaseLevelMaxLevel(uint64_t this, int a2, int a3)
{
  if (*(this + 48) != a2)
  {
    *(this + 48) = a2;
    *(this + 56) = 1;
  }

  if (*(this + 52) != a3)
  {
    *(this + 52) = a3;
    *(this + 56) = 1;
  }

  return this;
}

uint64_t GLRTextureResource::setSwizzleKey(uint64_t this, int a2)
{
  if (*(this + 60) != a2)
  {
    *(this + 60) = a2;
    *(this + 56) = 1;
  }

  return this;
}

uint64_t GLRTextureResource::setForceASTC_LP(uint64_t this, int a2)
{
  if (*(this + 57) != a2)
  {
    *(this + 57) = a2;
    *(this + 56) = 1;
  }

  return this;
}

void GLRTextureResource::updateSampleViewIfNeeded(GLRTextureResource *this, MTLPixelFormat a2, MTLTextureType a3, _NSRange a4)
{
  length = a4.length;
  location = a4.location;
  v9 = *(this + 5);
  if (v9)
  {
    if (*(this + 56) != 1)
    {
      return;
    }

    (*(*v9 + 24))(v9);
    *(this + 5) = 0;
  }

  v10 = GLDObject::operator new(0x28);
  GLDObject::GLDObject(v10);
  *v10 = &unk_2A240EBF0;
  *(this + 5) = v10;
  v12 = *(this + 12);
  v11 = *(this + 13);
  v13 = v11 >= v12;
  v14 = v11 - v12;
  if (v13)
  {
    v15 = (v14 + 1);
  }

  else
  {
    v15 = 1;
  }

  if (v15 + v12 > [*(this + 4) mipmapLevelCount])
  {
    v15 = [*(this + 4) mipmapLevelCount] - *(this + 12);
  }

  if (((a2 - 221 < 0x10) & *(this + 57)) != 0)
  {
    a2 -= 18;
  }

  if (!*(this + 12) && v15 == [*(this + 4) mipmapLevelCount] && (v16 = *(this + 15), v16 == objc_msgSend(*(this + 4), "swizzleKey")) && objc_msgSend(*(this + 4), "pixelFormat") == a2)
  {
    v18 = *(this + 4);
    v17 = *(this + 5);
    GLDLibrary::getAllDisplayMask(v17);
    *(v17 + 3) = 1;
    *(v17 + 4) = v18;
  }

  else
  {
    v19 = *(this + 15);
    v20 = [*(this + 4) newTextureViewWithPixelFormat:a2 textureType:a3 levels:*(this + 12) slices:v15 swizzle:location, length, MTLTextureSwizzleKeyToChannels()];
    [v20 setLabel:*MEMORY[0x29EDBB7B0]];
    v21 = *(this + 5);
    GLDLibrary::getAllDisplayMask(v21);
    *(v21 + 3) = 1;
    *(v21 + 4) = v20;
  }

  *(this + 56) = 0;
}

void GLRResourceList::~GLRResourceList(GLRResourceList *this)
{
  GLDObject::~GLDObject(this);

  GLDObject::operator delete(v1);
}

uint64_t GLRResourceList::initWithCapacity(GLRResourceList *this, unsigned int a2)
{
  GLDLibrary::getAllDisplayMask(this);
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *(this + 12) = v4;
  *(this + 28) = v4;
  *(this + 44) = v4;
  *(this + 60) = v4;
  *(this + 76) = v4;
  *(this + 92) = v4;
  *(this + 108) = v4;
  *(this + 124) = v4;
  *(this + 36) = a2;
  *(this + 20) = malloc_type_malloc(a2 << 6, 0x102004061925B30uLL);
  *(this + 22) = 0x20000000000;
  *(this + 21) = malloc_type_realloc(*(this + 21), 0x1000uLL, 0x2004093837F09uLL);
  return 1;
}

uint64_t GLRResourceList::dealloc(void **this)
{
  GLRResourceList::releaseAllResources(this);
  free(this[20]);
  free(this[21]);

  return GLDObject::dealloc(this);
}

uint64_t GLRResourceList::releaseAllResources(uint64_t this)
{
  v1 = this;
  v2 = *(this + 140);
  if (v2)
  {
    v3 = 0;
    for (i = 0; i != v2; ++i)
    {
      v5 = *(v1 + 160);
      v6 = v5 + (i << 6);
      v7 = *(v6 + 60);
      *(v6 + 60) = 0;
      if (v7)
      {
        v8 = (v5 + v3);
        do
        {
          GLRResource::decrementUsage(*v8);
          v9 = *v8++;
          this = (*(*v9 + 24))(v9);
          --v7;
        }

        while (v7);
      }

      v3 += 64;
    }
  }

  v10 = *(v1 + 176);
  if (v10)
  {
    v11 = 0;
    v12 = 8 * v10;
    do
    {
      GLRResource::decrementUsage(*(*(v1 + 168) + v11));
      this = (*(**(*(v1 + 168) + v11) + 24))(*(*(v1 + 168) + v11));
      v11 += 8;
    }

    while (v12 != v11);
  }

  return this;
}

uint64_t GLRResourceList::releaseToPool(GLRResourceList *this)
{
  v1 = this;
  v2 = *(this + 23);
  if (v2)
  {
    *(this + 23) = 0;
    _os_nospin_lock_lock();
    *(v1 + 24) = 0;
    v3 = *(v2 + 24);
    *(v1 + 25) = v3;
    *v3 = v1;
    *(v2 + 24) = v1 + 192;
    ++*(v2 + 36);
    _os_nospin_lock_unlock();
    v1 = v2;
  }

  v4 = *(*v1 + 24);

  return v4(v1);
}

uint64_t GLRResourceList::makeResourcesBusy(uint64_t this)
{
  v1 = this;
  v2 = *(this + 140);
  if (v2)
  {
    v3 = 0;
    for (i = 0; i != v2; ++i)
    {
      v5 = *(v1 + 160);
      v6 = v5 + (i << 6);
      v7 = *(v6 + 60);
      if (*(v6 + 60))
      {
        v8 = (v5 + v3);
        do
        {
          v9 = *v8++;
          this = GLRResource::decrementUsage(v9);
          --v7;
        }

        while (v7);
      }

      v3 += 64;
    }
  }

  v10 = *(v1 + 176);
  if (v10)
  {
    v11 = 0;
    v12 = 8 * v10;
    do
    {
      GLRResource::incrementBusy(*(*(v1 + 168) + v11));
      this = GLRResource::decrementUsage(*(*(v1 + 168) + v11));
      v11 += 8;
    }

    while (v12 != v11);
  }

  return this;
}

uint64_t GLRResourceList::makeResourcesNotBusyAndReset(GLRResourceList *this)
{
  v2 = *(this + 35);
  if (v2)
  {
    v3 = 0;
    for (i = 0; i != v2; ++i)
    {
      v5 = *(this + 20);
      v6 = v5 + (i << 6);
      v7 = *(v6 + 60);
      *(v6 + 60) = 0;
      if (v7)
      {
        v8 = (v5 + v3);
        do
        {
          v9 = *v8++;
          (*(*v9 + 24))(v9);
          --v7;
        }

        while (v7);
      }

      v3 += 64;
    }
  }

  v10 = *(this + 44);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = 8 * v10;
    do
    {
      v12 |= GLRResource::decrementBusy(*(*(this + 21) + v11));
      (*(**(*(this + 21) + v11) + 24))(*(*(this + 21) + v11));
      v11 += 8;
    }

    while (v13 != v11);
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  *&v14 = -1;
  *(&v14 + 1) = -1;
  *(this + 124) = v14;
  *(this + 108) = v14;
  *(this + 92) = v14;
  *(this + 76) = v14;
  *(this + 60) = v14;
  *(this + 44) = v14;
  *(this + 28) = v14;
  *(this + 12) = v14;
  *(this + 35) = 0;
  *(this + 44) = 0;
  result = v12 & 1;
  *(this + 19) = 0;
  return result;
}

uint64_t GLRResourceList::addFence(GLRResourceList *this, GLRResource *a2)
{
  v4 = *(this + 44);
  if (v4 == *(this + 45))
  {
    v5 = 2 * v4;
    *(this + 45) = v5;
    v6 = malloc_type_realloc(*(this + 21), 8 * v5, 0x2004093837F09uLL);
    *(this + 21) = v6;
    v4 = *(this + 44);
  }

  else
  {
    v6 = *(this + 21);
  }

  *(this + 44) = v4 + 1;
  v6[v4] = a2;
  (*(*a2 + 16))(a2);

  return GLRResource::incrementUsage(a2);
}

uint64_t GLRResourceList::addResource(uint64_t this, uint64_t a2)
{
  v3 = this;
  v4 = (a2 >> 6) & 0x3F;
  v5 = this + 12;
  v6 = *(this + 12 + 2 * v4);
  if (v6 == 0xFFFF)
  {
LABEL_17:
    v19 = *(this + 140);
    if (v19 >= 0xFFFE)
    {
      abort();
    }

    v20 = *(this + 144);
    if (v19 >= v20)
    {
      *(this + 144) = 2 * v20;
      *(this + 160) = malloc_type_realloc(*(this + 160), v20 << 7, 0x102004061925B30uLL);
      v19 = *(v3 + 140);
    }

    *(v3 + 140) = v19 + 1;
    (*(*a2 + 16))(a2);
    this = GLRResource::incrementUsage(a2);
    v21 = *(v3 + 160);
    *(v3 + 152) += *(a2 + 24);
    *(v21 + (v19 << 6)) = a2;
    v22 = *(v3 + 160) + (v19 << 6);
    *(v22 + 60) = 1;
    *(v22 + 62) = *(v5 + 2 * v4);
    *(v5 + 2 * v4) = v19;
    return this;
  }

  v7 = *(this + 160);
  v8 = v7 + (v6 << 6);
  v9 = *(v8 + 60);
  if (!*(v8 + 60))
  {
LABEL_6:
    v13 = (v8 + 62);
    v12 = *(v8 + 62);
    if (v9 > 6)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (v12 == 0xFFFF)
    {
      (*(*a2 + 16))(a2);
      this = GLRResource::incrementUsage(a2);
      *(v3 + 152) += *(a2 + 24);
      *(v8 + 8 * v9) = a2;
      *(v8 + 60) = v9 + 1;
      return this;
    }

LABEL_8:
    while (v12 != 0xFFFF)
    {
      if (*(v8 + 60))
      {
        v14 = *(v8 + 60);
        v15 = (v7 + (v6 << 6));
        while (*v15 != a2)
        {
          ++v15;
          if (!--v14)
          {
            v16 = v9 < 7;
            goto LABEL_15;
          }
        }

        v23 = v7 + (v12 << 6);
        *v13 = *(v23 + 62);
        *(v23 + 62) = v6;
        *(v5 + 2 * v4) = v12;
        return this;
      }

      v16 = 1;
LABEL_15:
      v17 = v7 + (v12 << 6);
      v18 = *(v17 + 62);
      v13 = (v17 + 62);
      v12 = v18;
      if (v16)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_17;
  }

  v10 = *(v8 + 60);
  v11 = (v7 + (v6 << 6));
  while (*v11 != a2)
  {
    ++v11;
    if (!--v10)
    {
      goto LABEL_6;
    }
  }

  return this;
}

void GLDSamplerRec::~GLDSamplerRec(GLDSamplerRec *this)
{
  GLDObject::~GLDObject(this);

  GLDObject::operator delete(v1);
}

uint64_t GLDSamplerRec::initWithShareGroup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  GLDLibrary::getAllDisplayMask(a1);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  v8 = *(a2 + 28) + 1;
  *(a2 + 28) = v8;
  *(a1 + 12) = v8;
  v9 = objc_alloc_init(MEMORY[0x29EDBB628]);
  *(a1 + 48) = v9;
  [v9 setLabel:*MEMORY[0x29EDBB7B0]];
  return 1;
}

uint64_t GLDSamplerRec::dealloc(GLDSamplerRec *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  return GLDObject::dealloc(this);
}

uint64_t GLDSamplerRec::update(GLDSamplerRec *this)
{
  v3 = *(this + 3);
  v4 = *v3;
  v5 = *(v3 + 1);
  if (v4 == 35416)
  {
    v5 = -30120;
  }

  if (*(v3 + 1) == 35416 || v4 == 35416)
  {
    LOWORD(v4) = -30120;
  }

  if (v4 <= 0x2700u)
  {
    if (v4 == 9728)
    {
      v1 = 0;
      v7 = 0;
      goto LABEL_25;
    }

    if (v4 == 9729)
    {
      v1 = 0;
      goto LABEL_22;
    }

    if (v4 != 9984)
    {
      goto LABEL_55;
    }

    v7 = 0;
    v1 = 1;
  }

  else
  {
    if (v4 <= 0x2702u)
    {
      if (v4 != 9985)
      {
        v7 = 0;
LABEL_24:
        v1 = 2;
        goto LABEL_25;
      }

      v1 = 1;
LABEL_22:
      v7 = 1;
      goto LABEL_25;
    }

    if (v4 == 9987)
    {
      v7 = 1;
      goto LABEL_24;
    }

    if (v4 != 35416)
    {
      goto LABEL_55;
    }

    v1 = 0;
    v7 = 2;
  }

LABEL_25:
  if (v5 == 9728)
  {
    v8 = 0;
  }

  else
  {
    if (v5 != 35416)
    {
      if (v5 == 9729)
      {
        v8 = 1;
        goto LABEL_31;
      }

      MTLReleaseAssertionFailure();
LABEL_55:
      v20 = MTLReleaseAssertionFailure();
      GLDObject::operator delete(v1);
      _Unwind_Resume(v20);
    }

    v8 = 2;
  }

LABEL_31:
  [*(this + 6) setMinFilter:v7];
  [*(this + 6) setMagFilter:v8];
  [*(this + 6) setMipFilter:v1];
  MetalWrapMode = getMetalWrapMode(*(v3 + 4));
  v10 = getMetalWrapMode(*(v3 + 5));
  v11 = getMetalWrapMode(*(v3 + 6));
  [*(this + 6) setSAddressMode:MetalWrapMode];
  [*(this + 6) setTAddressMode:v10];
  [*(this + 6) setRAddressMode:v11];
  v12 = v3[4];
  if (v12 >= 0x10)
  {
    [*(this + 6) setMaxAnisotropy:16];
LABEL_43:
    atomic_fetch_or((*(*(this + 2) + 224) + 536), 0x20000uLL);
    goto LABEL_44;
  }

  if (v12 <= 1.0)
  {
    v14 = 0;
  }

  else if (v12 <= 2.0)
  {
    v14 = 1;
  }

  else if (v12 <= 4.0)
  {
    v14 = 2;
  }

  else if (v12 > 8.0)
  {
    v14 = 4;
  }

  else
  {
    v14 = 3;
  }

  [*(this + 6) setMaxAnisotropy:(1 << v14)];
  if (v14)
  {
    goto LABEL_43;
  }

LABEL_44:
  *&v13 = v3[5];
  if (*&v13 < 0.0)
  {
    *&v13 = 0.0;
  }

  [*(this + 6) setLodMinClamp:v13];
  *&v15 = v3[6];
  if (*&v15 < 0.0)
  {
    *&v15 = 0.0;
  }

  [*(this + 6) setLodMaxClamp:v15];
  if (*(v3 + 3) == 34894)
  {
    [*(this + 6) setCompareFunction:*(v3 + 2) - 512];
    atomic_fetch_or((*(*(this + 2) + 224) + 536), 0x10000uLL);
  }

  else
  {
    [*(this + 6) setCompareFunction:0];
  }

  v16 = *(this + 5);
  if (v16)
  {
    (*(*v16 + 24))(v16);
    *(this + 5) = 0;
  }

  v17 = GLDObject::operator new(0x28);
  GLRSamplerResource::GLRSamplerResource(v17);
  *(this + 5) = v17;
  v18 = [*(*(this + 2) + 232) newSamplerStateWithDescriptor:*(this + 6)];
  GLRSamplerResource::initWithMetalSampler(*(this + 5), v18);

  return 1;
}

uint64_t getMetalWrapMode(int a1)
{
  if (a1 > 33647)
  {
    if (a1 == 33648)
    {
      return 3;
    }

    if (a1 == 37905)
    {
      return 4;
    }
  }

  else
  {
    if (a1 == 10497)
    {
      return 2;
    }

    if (a1 == 33071)
    {
      return 0;
    }
  }

  v2 = MTLReleaseAssertionFailure();
  return gldCreateSampler(v2, v3, v4, v5);
}

uint64_t gldCreateSampler(uint64_t a1, GLDObject **a2, uint64_t a3, uint64_t a4)
{
  v8 = GLDObject::operator new(0x38);
  GLDObject::GLDObject(v8);
  *v8 = &unk_2A240ED48;
  GLDSamplerRec::initWithShareGroup(v8, a1, a3, a4);
  *a2 = v8;
  return 0;
}

uint64_t gldDestroySampler(uint64_t a1, atomic_uint *this)
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

void GLDShareGroupRec::~GLDShareGroupRec(GLDShareGroupRec *this)
{
  GLDObject::~GLDObject(this);

  GLDObject::operator delete(v1);
}

uint64_t GLDShareGroupRec::initWithDevice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GLDLibrary::getAllDisplayMask(a1);
  *(a1 + 224) = a2;
  GLDObject::retain(a2);
  *(a1 + 216) = a3;
  *(a1 + 232) = *(a2 + 24);
  *(a1 + 256) = 850045863;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 320) = 850045863;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = 1018212795;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 432) = glgCreateProcessor();
  return 1;
}

uint64_t GLDShareGroupRec::dealloc(GLDShareGroupRec *this)
{
  v2 = *(this + 54);
  glgDestroyProcessor();

  GLDObject::release(*(this + 28));
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = this + 88 * v3;
    for (i = 40; i != 128; i += 8)
    {
      v8 = *&v6[i];
      if (v8)
      {
        GLDObject::release(v8);
      }
    }

    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);

  return GLDObject::dealloc(this);
}

uint64_t GLDShareGroupRec::contextRetain(pthread_mutex_t *this)
{
  pthread_mutex_lock(this + 4);
  GLDObject::retain(this);
  if (*this->__opaque >= 3)
  {
    *&this[3].__opaque[48] = 1;
  }

  return pthread_mutex_unlock(this + 4);
}

GLDObject *GLDShareGroupRec::createZeroTexture(GLDShareGroupRec *this, int a2, int a3)
{
  if (a3 == 10)
  {
    v11 = 15;
    v7 = 1;
    v9 = 6;
    v8 = 2;
    v10 = 1;
  }

  else
  {
    if (a3)
    {
      v6 = 1;
    }

    else
    {
      v6 = 6;
    }

    if (a3 == 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    v8 = 0;
    v9 = 1;
    v10 = a3 != 2;
    if (a3 == 2)
    {
      v11 = 1;
    }

    else
    {
      v11 = 15;
    }
  }

  v30 = 0;
  v12 = 32 * v7 * v11 + 264;
  v13 = malloc_type_calloc(1uLL, v12 + 4 * v9 + 24, 0x10F00404F1E8C6AuLL);
  v14 = v13;
  v15 = 0;
  v16 = &v13[v12];
  v17 = &v13[v12 + 24];
  do
  {
    *(v17 + v15) = -16777216;
    v15 += 4;
  }

  while (4 * v9 != v15);
  *v13 = a3 & 0xF | 0x1000;
  *(v13 + 3) = 1028;
  *(v13 + 2) = 1065353216;
  if (a2)
  {
    v18 = 6402;
  }

  else
  {
    v18 = 6408;
  }

  *(v13 + 2) = v18;
  v19 = v13[24] & 0xE3 | 0xC;
  *(v13 + 4) = 0;
  *(v13 + 5) = 0;
  v13[24] = v19;
  *(v13 + 38) = 687941889;
  *(v13 + 78) = 10497;
  *(v13 + 10) = xmmword_29D37A540;
  *(v13 + 18) = 0x20326002600;
  *(v13 + 116) = 0x3E800000000;
  *(v13 + 31) = 0;
  v13[130] &= 0xFAu;
  *(v13 + 28) = 420054461;
  *(v13 + 33) = 0;
  *(v13 + 17) = 0;
  v20 = *(v13 + 107) & 0xC0FF;
  *(v13 + 64) = *(v13 + 64) & 0xF000 | 0x688;
  if (a3 > 5)
  {
    if (a3 <= 7)
    {
      if (a3 == 6)
      {
        v20 |= 0x2000u;
      }

      else
      {
        v20 |= 0x100u;
      }

      goto LABEL_37;
    }

    if (a3 != 8)
    {
      if (a3 == 9)
      {
        v21 = 9472;
        goto LABEL_36;
      }

      if (a3 == 10)
      {
        goto LABEL_26;
      }

      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v21 = 5120;
      goto LABEL_36;
    }

    if (a3 != 2)
    {
      goto LABEL_32;
    }

LABEL_29:
    v21 = 1280;
    goto LABEL_36;
  }

  if (a3 == 3)
  {
LABEL_32:
    v20 |= 0x400u;
    goto LABEL_37;
  }

  if (a3 != 4)
  {
LABEL_26:
    v21 = 9216;
LABEL_36:
    v20 |= v21;
  }

LABEL_37:
  v22 = 0;
  v13[211] = v7;
  v13[213] = v11;
  *(v13 + 50) = -2090368799;
  *(v13 + 98) = 1;
  *(v13 + 99) = v9;
  *(v13 + 107) = v20 & 0xBF00 | 0x4000;
  *(v13 + 48) = 98392;
  *(v13 + 102) = 0;
  if (v11 <= 2)
  {
    v23 = 2;
  }

  else
  {
    v23 = v11;
  }

  v13[206] = v8;
  *(v13 + 207) = 0x10000;
  *(v16 + 20) = -113;
  v24 = v13 + 314;
  v25 = v23 - 1;
  *(v16 + 8) = -1;
  *(v16 + 16) = -1;
  do
  {
    v26 = &v13[480 * v22 + 264];
    *(v26 + 4) = 65537;
    *(v26 + 8) = v9;
    *(v26 + 24) = v17;
    *(v26 + 12) = 0x836780E100010001;
    *&v13[2 * v22 + 216] |= 1u;
    *(v26 + 11) = 48;
    *&v13[2 * v22 + 228] |= 1u;
    if (v10)
    {
      v27 = v25;
      v28 = v24;
      do
      {
        *(v28 - 2) = 335616264;
        v28 += 32;
        --v27;
      }

      while (v27);
    }

    ++v22;
    v24 += 480;
  }

  while (v22 != v7);
  gldCreateTexture(this, &v30, v13, v16);
  result = v30;
  *(v30 + 2) = v14;
  return result;
}

uint64_t gldCreateShareGroup(uint64_t a1, GLDObject **a2, uint64_t a3)
{
  v6 = GLDObject::operator new(0x1C0);
  GLDObject::GLDObject(v6);
  *v6 = &unk_2A240ED98;
  GLDShareGroupRec::initWithDevice(v6, a1, a3);
  *a2 = v6;
  return 0;
}

uint64_t gldDestroyShareGroup(atomic_uint *a1)
{
  if (a1)
  {
    GLDObject::release(a1);
  }

  return 0;
}

uint64_t GLDShareGroupRec::signalUsage(GLDShareGroupRec *this)
{
  pthread_mutex_lock(this + 5);
  pthread_cond_broadcast(this + 8);

  return pthread_mutex_unlock(this + 5);
}

uint64_t GLDShareGroupRec::waitUsage(GLDShareGroupRec *this, volatile int *a2)
{
  pthread_mutex_lock(this + 5);
  while (*a2)
  {
    *(this + 8) |= 0x8000u;
    pthread_cond_wait(this + 8, this + 5);
  }

  return pthread_mutex_unlock(this + 5);
}

uint64_t GLDShareGroupRec::waitForObject(GLDShareGroupRec *this, int a2, unsigned int a3, GLDTextureRec *a4)
{
  v4 = a4;
  if (!a2)
  {
    goto LABEL_10;
  }

  if (a2 != 1)
  {
    if (a2 != 3)
    {
      return 0;
    }

    MemoryPlugin = GLDBufferRec::getMemoryPlugin(a4);
    if (!MemoryPlugin)
    {
      return 0;
    }

    v4 = *(MemoryPlugin + 24);
    if (!v4)
    {
      return 0;
    }

LABEL_10:
    (*(*v4 + 40))(v4, this);
    return 0;
  }

  TextureResource = GLDTextureRec::getTextureResource(a4, 0);
  if (TextureResource)
  {
    (*(*TextureResource + 40))(TextureResource, this);
  }

  v4 = GLDTextureRec::getTextureResource(v4, 1u);
  if (v4)
  {
    goto LABEL_10;
  }

  return 0;
}

void GLDTextureRec::~GLDTextureRec(GLDTextureRec *this)
{
  GLDObject::~GLDObject(this);

  GLDObject::operator delete(v1);
}

uint64_t glrConvertMultisampleCount(unsigned int a1)
{
  if (a1 == 2)
  {
    v1 = 2;
  }

  else
  {
    v1 = 4 * (a1 < 5);
  }

  if (a1 >= 2)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

void GLDTextureRec::finishImageQueue(GLDTextureRec *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    dispatch_sync(v2, &__block_literal_global_0);
    dispatch_release(*(this + 17));
    *(this + 17) = 0;
  }
}

uint64_t GLDTextureRec::dealloc(GLDTextureRec *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    dispatch_release(v2);
    *(this + 17) = 0;
  }

  for (i = 152; i != 184; i += 8)
  {
    v4 = *(this + i);
    if (v4)
    {
      [*(v4 + 32) waitUntilComplete];
      (*(**(this + i) + 24))(*(this + i));
    }
  }

  v5 = *(this + 3);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(this + 24);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  v8 = *(this + 23);
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  v9 = *(this + 2);
  if (v9)
  {
    free(v9);
  }

  return GLDObject::dealloc(this);
}

uint64_t GLDTextureRec::load(GLDTextureRec *this)
{
  v1 = *(this + 7);
  LOBYTE(v2) = *(v1 + 20);
  if (!v2)
  {
    return 1;
  }

  v4 = *(this + 5);
  if (*(v4 + 248))
  {
    pthread_mutex_lock((v4 + 256));
    v1 = *(this + 7);
    v2 = *(v1 + 20);
    v5 = *(this + 5);
    v6 = *(v5 + 24) + 1;
    *(v5 + 24) = v6;
    *(this + 3) = v6;
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = *(v4 + 24) + 1;
    *(v4 + 24) = v8;
    *(this + 3) = v8;
  }

  if (GLDTextureRec::update(this, v2, (v1 + 8)))
  {
    v9 = *(this + 7);
    *(v9 + 13) = 0;
    *(v9 + 8) = 0;
    GLDDeviceRec::telemetryTexture(*(*(this + 5) + 224), this);
LABEL_9:
    v7 = 1;
    goto LABEL_11;
  }

  v7 = 0;
LABEL_11:
  v10 = *(this + 5);
  if (*(v10 + 248))
  {
    pthread_mutex_unlock((v10 + 256));
  }

  return v7;
}

uint64_t GLDTextureRec::update(GLDTextureRec *this, char a2, unsigned __int16 *a3)
{
  if ((a2 & 2) != 0)
  {
    GLDTextureRec::updatePixelFormat(this);
  }

  v5 = *(this + 16);
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
    {
      GLDTextureRec::update(this);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
    {
      GLDTextureRec::update(this);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
    {
      GLDTextureRec::update(a2, (a2 & 2) == 0);
    }

    MTLReleaseAssertionFailure();
    goto LABEL_27;
  }

  if (a2)
  {
    GLDTextureRec::updateDescriptor(this);
    v5 = *(this + 16);
  }

  v6 = *(this + 6);
  v7 = v5 == 52 && (v6[96] + 29522) != 65534 && (v6[96] + 29522) != 0xFFFF;
  *(this + 74) = v7;
  v8 = *v6 & 0x1C00;
  if (v8 == 2048)
  {
    result = GLDTextureRec::loadIOSurfaceTexture(this, a2);
    if (!result)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (v8 != 4096)
  {
LABEL_27:
    v10 = MTLReleaseAssertionFailure();
    return GLDTextureRec::reclaim(v10);
  }

  if ((GLDTextureRec::loadPrivateTexture(this, a2, a3) & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  if ((*(*(this + 6) + 24) & 8) != 0)
  {
    GLDTextureRec::updateSamplerState(this, a2);
  }

  return 1;
}

uint64_t GLDTextureRec::reclaim(GLDTextureRec *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(this + 5);
    if (!*(v3 + 248) || (pthread_mutex_lock((v3 + 256)), (v2 = *(this + 3)) != 0))
    {
      (*(*v2 + 24))(v2);
      *(this + 3) = 0;
    }

    v4 = *(this + 4);
    if (v4)
    {
      (*(*v4 + 24))(v4);
      *(this + 4) = 0;
    }

    v5 = *(this + 5);
    if (*(v5 + 248))
    {
      pthread_mutex_unlock((v5 + 256));
    }
  }

  result = *(this + 24);
  if (result)
  {
    result = (*(*result + 24))(result);
    *(this + 24) = 0;
  }

  *(*(this + 7) + 20) = 15;
  return result;
}

uint64_t GLDTextureRec::modify(GLDTextureRec *this)
{
  *(*(this + 7) + 20) |= 2u;
  if (*(this + 3))
  {
    v2 = *(this + 5);
    if (!*(v2 + 248) || (pthread_mutex_lock((v2 + 256)), *(this + 3)))
    {
      v3 = 0;
      v4 = this + 152;
      do
      {
        v5 = *&v4[v3];
        if (v5)
        {
          (*(*v5 + 24))(v5);
          *&v4[v3] = 0;
        }

        v3 += 8;
      }

      while (v3 != 32);
      (*(**(this + 3) + 24))(*(this + 3));
      *(this + 3) = 0;
    }

    v6 = *(this + 4);
    if (v6)
    {
      (*(*v6 + 24))(v6);
      *(this + 4) = 0;
    }

    v7 = *(this + 5);
    if (*(v7 + 248))
    {
      pthread_mutex_unlock((v7 + 256));
    }
  }

  v8 = *(this + 24);
  if (v8)
  {
    (*(*v8 + 24))(v8);
    *(this + 24) = 0;
  }

  return 0;
}

uint64_t GLDTextureRec::restoreData(GLDTextureRec *this, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = ___ZN13GLDTextureRec11restoreDataEii_block_invoke;
  block[3] = &unk_29F349D28;
  block[4] = &v11;
  block[5] = this;
  v9 = a2;
  v10 = a3;
  v5 = *(this + 17);
  if (v5)
  {
    dispatch_sync(v5, block);
  }

  else
  {
    ___ZN13GLDTextureRec11restoreDataEii_block_invoke(block, a2, a3, a4, a5);
  }

  v6 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v6;
}

void ___ZN13GLDTextureRec11restoreDataEii_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v6 = *(a1 + 40);
  v7 = *(v6 + 5);
  if (*(v7 + 248))
  {
    pthread_mutex_lock((v7 + 256));
  }

  if (*(v6 + 3))
  {
    GLDTextureRec::readTextureDataInternal(v6, *(a1 + 48), *(a1 + 52), a4, a5, *(*(v6 + 6) + 480 * *(a1 + 48) + 32 * *(a1 + 52) + 288));
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  v8 = *(v6 + 5);
  *(v8 + 32) |= 1u;
  if (*(v8 + 248))
  {

    pthread_mutex_unlock((v8 + 256));
  }
}

void GLDTextureRec::readTextureDataInternal(GLDTextureRec *this, int a2, int a3, unsigned int a4, unsigned int a5, char *a6)
{
  v7 = *(this + 3);
  if (!v7)
  {
    return;
  }

  LODWORD(v9) = a3;
  (*(*v7 + 40))(v7, *(this + 5));
  if ([*(this + 15) textureType] == 7)
  {
    v11 = 4;
  }

  else
  {
    v11 = 3;
  }

  v12 = &(&glrTextureFormats)[5 * *(this + 16)];
  v13 = v12[3];
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  v83 = 0u;
  MTLPixelFormatGetInfo();
  v14 = *(this + 6);
  v9 = v9;
  v15 = (v14 + 264 + 480 * a2 + 32 * v9);
  v16 = v15[8];
  v17 = &(&glrTextureFormats)[5 * *(this + 16)];
  v18 = *(v17 + 2) != v16 || *(v17 + 3) != v15[9];
  v19 = a2;
  if (v16 == 6402 && v15[9] == 5126)
  {
    v18 = 1;
  }

  v20 = *(*(this + 3) + 32);
  v21 = *(v14 + 24);
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v66 = v21 | v18;
  if ((v21 | v18))
  {
    v70 = 0;
    LODWORD(v71) = 0;
    LODWORD(v68) = 0;
    glrPixelSettings(v16, v15[9], v15[2], v15[3], &v71, &v68, &v70, 0, v11);
    v22 = v71;
    LODWORD(v71) = v22 * [*(this + 15) sampleCount];
    v23 = *(*(this + 6) + 480 * v19 + 32 * v9 + 268) * DWORD2(v84);
    v24 = v23 * [*(this + 15) sampleCount];
    v25 = *(this + 6) + 480 * v19 + 32 * v9;
    v26 = *(v25 + 270) * v24;
    v27 = malloc_type_malloc(v26 * *(v25 + 272), 0x767357AFuLL);
    v28 = (*(this + 6) + 480 * v19 + 32 * v9);
    DWORD1(v81) = v28[134];
    v29 = v28[136] * v28[135];
    v30 = &v27[(v29 - 1) * v24];
    v31 = (v21 & 1) == 0;
    v32 = v27;
    if (v31)
    {
      v30 = v27;
      v33 = v24;
    }

    else
    {
      v33 = -v24;
    }

    *&v78 = v30;
    DWORD2(v81) = v29;
    LODWORD(v79) = v33;
    v34 = v28[140];
    v35 = v28[141];
    glgConvertType();
    *(&v78 + 1) = a6;
    HIDWORD(v79) = v71;
    v36 = *(v12 + 2);
    v37 = *(v12 + 3);
    v9 = v9;
    glgConvertType();
    HIDWORD(v80) = *(v12 + 4);
    LODWORD(v81) = -1;
    v38 = v26;
  }

  else if ((BYTE9(v83) & 0x20) != 0)
  {
    v24 = 0;
    v38 = 0;
    v32 = a6;
  }

  else
  {
    v39 = *(*(this + 5) + 232);
    v40 = (v14 + 264 + 480 * v19);
    v41 = v40[2];
    v42 = v40[3];
    v43 = a6;
    v44 = v40[4];
    [*(this + 15) sampleCount];
    a6 = v43;
    MTLGetTextureLevelInfoForDeviceWithOptions();
    v24 = v76;
    v38 = v77;
    v32 = v43;
  }

  v45 = *(this + 11);
  v67 = a6;
  v64 = this;
  v65 = v32;
  if (v45 > 3)
  {
    if (v45 > 5)
    {
      if (v45 != 6 && v45 != 7)
      {
        goto LABEL_50;
      }

      v61 = *(this + 6) + 480 * v19 + 32 * v9;
      v59 = (v61 + 268);
      v60 = *(v61 + 270);
      LODWORD(v61) = *(v61 + 272);
LABEL_42:
      v61 = v61;
      v52 = *v59;
      v68 = 0uLL;
      v69 = 0;
      v49 = v60;
LABEL_43:
      v71 = v68;
      v72 = v69;
      v73 = v52;
      v74 = v49;
      v75 = v61;
      [v20 getBytes:v32 bytesPerRow:v24 bytesPerImage:v38 fromRegion:&v71 mipmapLevel:v9 slice:v19];
      goto LABEL_44;
    }

    goto LABEL_36;
  }

  if (v45 <= 1)
  {
    if (v45)
    {
      if (v45 == 1)
      {
        v46 = v20;
        v47 = *(this + 6);
        v48 = (v47 + 480 * v19 + 32 * v9 + 270);
        v49 = 1;
        goto LABEL_29;
      }

LABEL_50:
      v63 = MTLReleaseAssertionFailure();
      GLDTextureRec::updatePixelFormat(v63);
      return;
    }

    v59 = (*(this + 6) + 480 * v19 + 32 * v9 + 268);
    v60 = 1;
    goto LABEL_41;
  }

  if (v45 == 2)
  {
LABEL_36:
    v58 = *(this + 6) + 480 * v19 + 32 * v9;
    v59 = (v58 + 268);
    v60 = *(v58 + 270);
LABEL_41:
    LODWORD(v61) = 1;
    goto LABEL_42;
  }

  v46 = v20;
  v47 = *(this + 6);
  v50 = v47 + 480 * v19 + 32 * v9;
  v49 = *(v50 + 270);
  v48 = (v50 + 272);
LABEL_29:
  v51 = *v48;
  v52 = *(v47 + 480 * v19 + 32 * v9 + 268);
  v68 = 0uLL;
  v69 = 0;
  if (!v51)
  {
    v61 = 1;
    v20 = v46;
    goto LABEL_43;
  }

  v53 = 0;
  if (v45 == 1)
  {
    v54 = v24;
  }

  else
  {
    v54 = v38;
  }

  v55 = v38;
  v56 = v54;
  v57 = v46;
  do
  {
    v71 = v68;
    v72 = v69;
    v73 = v52;
    v74 = v49;
    v75 = 1;
    [v57 getBytes:v32 bytesPerRow:v24 bytesPerImage:v55 fromRegion:&v71 mipmapLevel:v9 slice:v53];
    v32 += v56;
    ++v53;
  }

  while (v51 != v53);
LABEL_44:
  if (v66)
  {
    v62 = *(v64 + 5);
    glgProcessPixelsWithProcessor();
  }

  if (v65 != v67)
  {
    free(v65);
  }
}

void GLDTextureRec::updatePixelFormat(GLDTextureRec *this)
{
  v2 = *(this + 6);
  v3 = v2[96];
  v4 = v2[100];
  if (v4 == 5 || v4 == 3)
  {
    v4 = v2[140];
    v6 = v2 + 141;
  }

  else
  {
    v6 = v2 + 101;
  }

  v7 = 0;
  v8 = *v6;
  v9 = v3 == 35056 || v3 == 36013;
  if (v9)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = v9;
  *(this + 19) = v10;
  *(this + 72) = v11;
  *(this + 73) = (*v2 & 0x800) != 0;
  *(this + 8) = 0;
  do
  {
    v12 = *(this + 73);
    GLDTextureRec::chooseTextureFormat(this, v4, v8, v3);
    *(this + v7++ + 16) = v13;
  }

  while (v7 < *(this + 19));
  *(this + 75) = 0;
}

uint64_t GLDTextureRec::getMetalSwizzleKey(GLDTextureRec *this)
{
  v1 = &(&glrTextureFormats)[5 * *(this + 16)];
  v2 = *(v1 + 2);
  if (v2 == 34041 || v2 == 6402)
  {
    v6 = *(this + 6);
    v4 = *(v6 + 114);
    if (v4 == 6409)
    {
      v5 = 16908802;
    }

    else
    {
      if (v4 != 6403)
      {
        goto LABEL_11;
      }

      v5 = 16777218;
    }

    v9 = v5;
    goto LABEL_11;
  }

  v9 = *(v1 + 8);
  v6 = *(this + 6);
LABEL_11:
  v10 = 256;
  v7 = *(v6 + 128);
  return *(&v9 + (v7 & 7)) | (*(&v9 + ((v7 >> 3) & 7)) << 8) | (*(&v9 + ((v7 >> 6) & 7)) << 16) | (*(&v9 + ((v7 >> 9) & 7)) << 24);
}

void *GLDTextureRec::updateDescriptor(GLDTextureRec *this)
{
  if (!*(this + 15))
  {
    *(this + 15) = objc_alloc_init(MEMORY[0x29EDBB670]);
  }

  v2 = *(this + 19);
  if (v2 == 2)
  {
    if (!*(this + 16))
    {
      *(this + 16) = objc_alloc_init(MEMORY[0x29EDBB670]);
    }
  }

  else if (v2 == 1)
  {
    v3 = *(this + 16);
    if (v3)
    {

      *(this + 16) = 0;
    }
  }

  v4 = *(this + 6);
  if (*(v4 + 211) <= 1u)
  {
    if ((*(v4 + 214) & 0x1800) != 0)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 1;
      v9 = 7;
    }

    else
    {
      v10 = *(v4 + 214) & 0x2000;
      if ((*(v4 + 214) & 0x600) != 0)
      {
        if ((*(v4 + 214) & 0x2000) != 0)
        {
          v6 = 0;
          v7 = 0;
          v5 = 1;
          v9 = 3;
        }

        else
        {
          v5 = 0;
          v6 = 0;
          v7 = *(v4 + 212) > 1u;
          if (*(v4 + 212) <= 1u)
          {
            v9 = 2;
          }

          else
          {
            v9 = 4;
          }
        }
      }

      else
      {
        v5 = 0;
        v7 = 0;
        v6 = v10 != 0;
        v9 = v10 >> 13;
      }

      v8 = 1;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 6;
    v9 = 5;
  }

  *(this + 11) = v9;
  v11 = *(v4 + 194);
  v12 = *(v4 + 208);
  v13 = *(&glrTextureFormats + 10 * *(this + 16) + 9);
  if ((v13 & 0x20) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = *(v4 + 209);
  }

  *(v4 + 208);
  if (*(v4 + 208))
  {
    v11 = (v11 >> v12) | (v11 >> v12 == 0);
  }

  v44 = v11;
  v45 = v14;
  if (*(v4 + 208))
  {
    v15 = (*(v4 + 196) >> v12) | (*(v4 + 196) >> v12 == 0);
  }

  else
  {
    v15 = *(v4 + 196);
  }

  if (*(v4 + 208))
  {
    v16 = (*(v4 + 198) >> v12) | (*(v4 + 198) >> v12 == 0);
  }

  else
  {
    v16 = *(v4 + 198);
  }

  v17 = v5 == 0;
  if (v5)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16;
  }

  v43 = v18;
  if (v17)
  {
    v19 = 1;
  }

  else
  {
    v19 = *(v4 + 198);
  }

  v20 = !v6;
  if (v6)
  {
    v21 = 1;
  }

  else
  {
    v21 = v15;
  }

  v42 = v21;
  if (v20)
  {
    v22 = v19;
  }

  else
  {
    v22 = *(v4 + 196);
  }

  v41 = v22 * v8;
  if (v7)
  {
    v23 = *(v4 + 212);
    v24 = v23 >= 2;
    if (v23 == 2)
    {
      v25 = 2;
    }

    else
    {
      v25 = 4 * (v23 < 5);
    }

    if (v24)
    {
      v26 = v25;
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = 1;
  }

  if ((v13 & 0x100) != 0)
  {
    v27 = 17;
  }

  else
  {
    v27 = 1;
  }

  v40 = v9;
  [*(this + 15) setTextureType:?];
  [*(this + 15) setPixelFormat:(&glrTextureFormats)[5 * *(this + 16) + 3]];
  [*(this + 15) setWidth:v44];
  [*(this + 15) setHeight:v42];
  [*(this + 15) setDepth:v43];
  [*(this + 15) setSampleCount:v26];
  [*(this + 15) setArrayLength:v22];
  [*(this + 15) setMipmapLevelCount:v45];
  [*(this + 15) setWriteSwizzleEnabled:1];
  v28 = &(&glrTextureFormats)[5 * *(this + 16)];
  if (v28[3] == 253)
  {
    v29 = v27 & 0x10;
  }

  else
  {
    v29 = v27;
  }

  if ((*(v28 + 9) & 7) != 0)
  {
    v30 = v29 | 4;
  }

  else
  {
    v30 = v29;
  }

  [*(this + 15) setUsage:v30];
  *(this + 28) = v41;
  v31 = *(*(this + 5) + 232);
  v32 = (&glrTextureFormats)[5 * *(this + 16) + 3];
  MTLGetTextureLevelInfoForDeviceWithOptions();
  *(this + 12) = 0;
  [*(this + 15) setSwizzleKey:GLDTextureRec::getMetalSwizzleKey(this)];
  result = *(this + 16);
  if (result)
  {
    [result setTextureType:v40];
    [*(this + 16) setPixelFormat:(&glrTextureFormats)[5 * *(this + 17) + 3]];
    [*(this + 16) setWidth:v44];
    [*(this + 16) setHeight:v42];
    [*(this + 16) setDepth:v43];
    [*(this + 16) setSampleCount:v26];
    [*(this + 16) setArrayLength:v22];
    [*(this + 16) setMipmapLevelCount:v45];
    [*(this + 16) setWriteSwizzleEnabled:1];
    v34 = &(&glrTextureFormats)[5 * *(this + 17)];
    v35 = v27;
    if (v34[3] == 253)
    {
      v35 = v27 & 0x10;
    }

    if ((*(v34 + 9) & 7) != 0)
    {
      v36 = v35 | 4;
    }

    else
    {
      v36 = v35;
    }

    [*(this + 16) setUsage:v36];
    v37 = *(*(this + 5) + 232);
    v38 = (&glrTextureFormats)[5 * *(this + 17) + 3];
    result = MTLGetTextureLevelInfoForDeviceWithOptions();
    v39 = v46;
    if (v45 >= 2)
    {
      v39 = 4 * v46 / 3;
    }

    *(this + 13) = v39;
  }

  return result;
}

uint64_t GLDTextureRec::getTextureResource(GLDTextureRec *this, unsigned int a2)
{
  GLDTextureRec::ensureResource(this);
  if ((*(*(this + 6) + 24) & 8) != 0)
  {
    return *(this + a2 + 3);
  }

  result = *(this + 24);
  if (!result)
  {
    if (*(*(this + 7) + 20))
    {
      return *(this + a2 + 3);
    }

    v21 = 0;
    v20 = 0u;
    v5 = *(*(this + 5) + 232);
    [*(this + 15) pixelFormat];
    MTLPixelFormatGetInfoForDevice();
    v6 = [*(this + 15) width];
    v7 = [*(this + 15) sampleCount];
    v8 = &v20 + 1;
    if (v7 > 1)
    {
      v8 = &v21;
    }

    v9 = *v8;
    v10 = [*(*(this + 5) + 232) deviceLinearTextureAlignmentBytes];
    v11 = (v10 + v9 * v6 - 1) & -v10;
    v12 = v11 * [*(this + 15) height];
    v13 = [*(*(this + 5) + 232) newBufferWithLength:v12 options:32];
    if (v13)
    {
      v14 = v13;
      [*(this + 15) setStorageMode:2];
      v15 = MEMORY[0x29EDBB7B0];
      [v14 setLabel:*MEMORY[0x29EDBB7B0]];
      v16 = [v14 newLinearTextureWithDescriptor:*(this + 15) offset:0 bytesPerRow:v11 bytesPerImage:v12];
      if (v16)
      {
        v17 = v16;
        [v16 setLabel:*v15];
        v18 = GLDObject::operator new(0x40);
        GLRTextureResource::GLRTextureResource(v18);
        if (GLRTextureResource::initWithMetalTexture(v18, v17, *(this + 12)))
        {
          MetalSwizzleKey = GLDTextureRec::getMetalSwizzleKey(this);
          GLRTextureResource::setSwizzleKey(v18, MetalSwizzleKey);
          GLRTextureResource::setBaseLevelMaxLevel(v18, *(*(this + 6) + 214) & 0xF, *(*(this + 6) + 214) >> 4);
          v22.length = *(this + 28);
          v22.location = 0;
          GLRTextureResource::updateSampleViewIfNeeded(v18, (&glrTextureFormats)[5 * *(this + 16) + 3], *(this + 11), v22);
          *(this + 24) = v18;
        }

        else
        {
          (*(*v18 + 24))(v18);
        }
      }
    }

    result = *(this + 24);
    if (!result)
    {
      return *(this + a2 + 3);
    }
  }

  return result;
}

uint64_t GLDTextureRec::ensureResource(uint64_t this)
{
  v1 = *(this + 48);
  if ((*(v1 + 24) & 8) == 0)
  {
    v2 = this;
    if (*(*(this + 40) + 440) == 1)
    {
      v3 = mach_absolute_time();
      v4 = (*(g_Library + 16))(*(*(v2 + 6) + 32));
      this = mach_absolute_time();
      *(v2 + 18) += this - v3;
      if (v4)
      {
        return this;
      }
    }

    else
    {
      this = (*(g_Library + 16))(*(v1 + 32));
      if (this)
      {
        return this;
      }
    }

    return GLDTextureRec::getIOSurfaceResource(v2);
  }

  return this;
}

uint64_t GLDTextureRec::getIOSurfaceResource(GLDTextureRec *this)
{
  v1 = *(this + 6);
  v2 = *(v1 + 256);
  if (!v2)
  {
    return 0;
  }

  v4 = *(this + 24);
  if (v4)
  {
    (*(*v4 + 24))(v4);
    *(this + 24) = 0;
    v1 = *(this + 6);
    v2 = *(v1 + 256);
  }

  v5 = 0;
  v6 = v1 + 48;
  v7 = -1;
  do
  {
    if (v2 == *(v6 + 8 * v5))
    {
      v7 = v5;
    }

    ++v5;
  }

  while (v5 != 4);
  if (*(this + 3))
  {
    v8 = 0;
    v9 = 0;
    v10 = this + 152;
    do
    {
      v11 = *&v10[v8];
      if (v11)
      {
        v12 = [*(v11 + 32) iosurface];
        v13 = *(*(this + 6) + v8 + 48);
        if (!v13 || (ID = IOSurfaceGetID(v13), ID != IOSurfaceGetID(v12)))
        {
          v15 = *&v10[v8];
          if (v15 == *(this + 23))
          {
            v9 = 1;
          }

          else
          {
            [*(v15 + 32) waitUntilComplete];
            (*(**&v10[v8] + 24))(*&v10[v8]);
            v15 = *&v10[v8];
          }

          v16 = *(this + 3);
          if (v15 == v16)
          {
            (*(*v16 + 24))(v16);
            *(this + 3) = 0;
          }

          *&v10[v8] = 0;
        }
      }

      v8 += 8;
    }

    while (v8 != 32);
    if (([*(this + 15) width] != *(*(this + 6) + 194) || objc_msgSend(*(this + 15), "height") != *(*(this + 6) + 196)) && v9)
    {
      (*(**(this + 23) + 24))(*(this + 23));
      *(this + 23) = 0;
    }
  }

  MetalSwizzleKey = GLDTextureRec::getMetalSwizzleKey(this);
  v18 = 0;
  v19 = this + 152;
  do
  {
    v20 = *(this + 6);
    v21 = *(v20 + v18 + 48);
    v22 = *&v19[v18];
    if (!v21)
    {
      goto LABEL_31;
    }

    if (!v22)
    {
      v23 = *(v20 + 248);
      v24 = *(*(this + 5) + 232);
      BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(v21, v23);
      if ((([v24 iosurfaceReadOnlyTextureAlignmentBytes] - 1) & BytesPerRowOfPlane) != 0)
      {
        return 0;
      }

      [*(this + 15) setUsage:{((objc_msgSend(v24, "iosurfaceTextureAlignmentBytes") - 1) & BytesPerRowOfPlane) != 0}];
      [*(this + 15) setStorageMode:0];
      result = [v24 newTextureWithDescriptor:*(this + 15) iosurface:v21 plane:v23];
      if (!result)
      {
        return result;
      }

      v27 = result;
      [result setLabel:*MEMORY[0x29EDBB7B0]];
      v22 = GLDObject::operator new(0x40);
      GLRTextureResource::GLRTextureResource(v22);
      AllocSize = IOSurfaceGetAllocSize(v21);
      if ((GLRTextureResource::initWithMetalTexture(v22, v27, AllocSize) & 1) == 0)
      {
        (*(*v22 + 24))(v22);
        return 0;
      }

      *&v19[v18] = v22;
LABEL_31:
      if (!v22)
      {
        goto LABEL_33;
      }
    }

    GLRTextureResource::setSwizzleKey(v22, MetalSwizzleKey);
    GLRTextureResource::setBaseLevelMaxLevel(*&v19[v18], *(*(this + 6) + 214) & 0xF, *(*(this + 6) + 214) >> 4);
    v31.length = *(this + 28);
    v31.location = 0;
    GLRTextureResource::updateSampleViewIfNeeded(*&v19[v18], (&glrTextureFormats)[5 * *(this + 16) + 3], *(this + 11), v31);
LABEL_33:
    v18 += 8;
  }

  while (v18 != 32);
  v29 = *(this + 3);
  if (v29)
  {
    (*(*v29 + 24))(v29);
  }

  v30 = *&v19[8 * v7];
  *(this + 3) = v30;
  (*(*v30 + 16))(v30);
  *(this + 20) = v7;
  return 1;
}

uint64_t GLDTextureRec::blitAccum(uint64_t a1, void *a2, uint64_t a3)
{
  GLDTextureRec::ensureResource(a1);
  v6 = *(*(a1 + 184) + 32);
  v7 = *(*(a1 + 24) + 32);
  memset(v11, 0, sizeof(v11));
  v10[0] = [v6 width];
  v10[1] = [v6 height];
  v10[2] = 1;
  memset(v9, 0, sizeof(v9));
  [a2 copyFromTexture:v6 sourceSlice:0 sourceLevel:0 sourceOrigin:v11 sourceSize:v10 toTexture:v7 destinationSlice:0 destinationLevel:0 destinationOrigin:v9];
  GLRResourceList::addResource(a3, *(a1 + 184));
  GLRResourceList::addResource(a3, *(a1 + 24));
  result = (*(**(a1 + 184) + 24))(*(a1 + 184));
  *(a1 + 184) = 0;
  return result;
}

uint64_t GLDTextureRec::loadIOSurfaceTexture(GLDTextureRec *this, char a2)
{
  v4 = *(this + 6);
  if ((*(v4 + 24) & 8) == 0)
  {
    if ((*(v4 + 24) & 2) != 0 && !*(this + 23))
    {
      v5 = *(this + *(this + 20) + 19);
      if (v5)
      {
        *(this + 23) = v5;
        (*(*v5 + 16))(v5);
        v4 = *(this + 6);
      }
    }

    if ((*(g_Library + 8))(*(v4 + 32)))
    {
      return 0;
    }

    if ((a2 & 0xF) == 4)
    {
      return 1;
    }

    if ((*(g_Library + 16))(*(*(this + 6) + 32)))
    {
      return 0;
    }

    a2 |= 1u;
  }

  if ((a2 & 0xF) == 0)
  {
    return 1;
  }

  result = GLDTextureRec::getIOSurfaceResource(this);
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL GLDTextureRec::allocMetalTexture(GLDTextureRec *this)
{
  v2 = 0;
  v3 = this + 24;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = *&v3[8 * v2];
    if (v6)
    {
      (*(*v6 + 24))(v6);
      *&v3[8 * v2] = 0;
    }

    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  if (*(this + 19) < 1)
  {
    return 1;
  }

  v7 = 0;
  v8 = (this + 120);
  v9 = MEMORY[0x29EDBB7B0];
  do
  {
    v10 = *(*(this + 5) + 232);
    [*v8 setCpuCacheMode:1];
    v11 = [v10 newTextureWithDescriptor:*v8];
    v12 = v11 != 0;
    if (!v11)
    {
      break;
    }

    v13 = v11;
    [v11 setLabel:*v9];
    v14 = GLDObject::operator new(0x40);
    GLRTextureResource::GLRTextureResource(v14);
    GLRTextureResource::initWithMetalTexture(v14, v13, *(v8 - 3));

    *(v8 - 12) = v14;
    ++v7;
    ++v8;
  }

  while (v7 < *(this + 19));
  return v12;
}

void *GLDTextureRec::newCubeView(GLDTextureRec *this, int a2)
{
  v4 = *(*(GLDTextureRec::getTextureResource(this, 0) + 40) + 32);
  v5 = [v4 newTextureViewWithPixelFormat:(&glrTextureFormats)[5 * *(this + 16) + 3] textureType:2 levels:0 slices:objc_msgSend(v4, "mipmapLevelCount"), a2, 1];
  [v5 setLabel:*MEMORY[0x29EDBB7B0]];
  return v5;
}

uint64_t GLDTextureRec::loadPrivateTexture(id *this, char a2, unsigned __int16 *a3)
{
  if ((a2 & 1) == 0 || (result = GLDTextureRec::allocMetalTexture(this), result))
  {
    if ([this[15] textureType] == 7)
    {
      v6 = 4;
    }

    else
    {
      v6 = 3;
    }

    v47 = v6;
    if ((a2 & 5) != 0)
    {
      v7 = this[6];
      result = 1;
      if (v7[211])
      {
        v8 = 0;
        while (1)
        {
          v9 = v7[208];
          if (v9 <= v7[210])
          {
            break;
          }

LABEL_50:
          if (++v8 >= v7[211])
          {
            return 1;
          }
        }

        while (1)
        {
          if (((1 << v9) & *(this[7] + v8 + 4)) != 0 && ((1 << v9) & *&v7[2 * v8 + 228]) != 0)
          {
            *(this[5] + 8) |= 2u;
            if (*(this + 19))
            {
              break;
            }
          }

LABEL_48:
          if (v9++ >= v7[210])
          {
            goto LABEL_50;
          }
        }

        v10 = 0;
        while (1)
        {
          v11 = this + 4 * v10;
          v12 = &(&glrTextureFormats)[5 * *(v11 + 16)];
          v13 = v12[3];
          v66 = 0;
          v64 = 0u;
          v65 = 0u;
          v63 = 0u;
          MTLPixelFormatGetInfo();
          v14 = &this[v10];
          v15 = *(v14 + 24);
          v48 = v15[4];
          (*(*v15 + 40))(v15, this[5]);
          v16 = this[6];
          v17 = &v16[240 * v8 + 16 * v9];
          v18 = v17[140];
          v19 = &(&glrTextureFormats)[5 * *(v11 + 16)];
          if (*(v19 + 2) != v18)
          {
            goto LABEL_22;
          }

          v20 = v17[141];
          if (*(v19 + 3) != v20)
          {
            goto LABEL_22;
          }

          if (v18 != 6402 || v20 != 5126)
          {
            if ((BYTE9(v63) & 0x20) != 0)
            {
              LODWORD(v14) = 0;
              LODWORD(v25) = 0;
            }

            else
            {
              v22 = *(this[5] + 29);
              v23 = v16[97];
              v25 = v16[98];
              v24 = v16[99];
              [*(v14 + 120) sampleCount];
              MTLGetTextureLevelInfoForDeviceWithOptions();
              LODWORD(v14) = v61;
              LODWORD(v25) = v62;
              v16 = this[6];
            }

            v27 = *&v16[240 * v8 + 144 + 16 * v9];
          }

          else
          {
LABEL_22:
            v55 = 0;
            v54 = 0;
            glrPixelSettings(v17[140], v17[141], v17[134], v17[135], &v55 + 1, &v55, &v54, 0, v47);
            v26 = (this[6] + 480 * v8 + 32 * v9);
            v14 = v26[134] * SDWORD2(v64);
            v25 = v14 * v26[135];
            v27 = malloc_type_malloc(v25 * v26[136], 0xF53BA6C6uLL);
            v60 = 0;
            v58 = 0u;
            v59 = 0u;
            v57 = 0u;
            v56 = 0u;
            v28 = this[6] + 480 * v8 + 32 * v9;
            DWORD1(v59) = *(v28 + 268);
            DWORD2(v59) = *(v28 + 272) * *(v28 + 270);
            *&v56 = *(v28 + 288);
            LODWORD(v57) = HIDWORD(v55);
            v29 = *(v28 + 280);
            v30 = *(v28 + 282);
            glgConvertType();
            *(&v56 + 1) = v27;
            HIDWORD(v57) = v14;
            v31 = *(v12 + 2);
            v32 = *(v12 + 3);
            glgConvertType();
            HIDWORD(v58) = *(v12 + 4);
            LODWORD(v59) = -1;
            v33 = this[5];
            glgProcessPixelsWithProcessor();
          }

          v34 = this[11];
          if (v34 <= 3)
          {
            break;
          }

          if (v34 <= 5)
          {
            goto LABEL_32;
          }

          if (v34 != 6 && v34 != 7)
          {
LABEL_53:
            v46 = this[11];
            v45 = MTLReleaseAssertionFailure();
            return ___ZN13GLDTextureRec18loadPrivateTextureEjPt_block_invoke(v45);
          }

          v34 = 0;
          v40 = this[6] + 480 * v8 + 32 * v9;
          v36 = (v40 + 268);
          v38 = *(v40 + 270);
          v41 = *(v40 + 272);
LABEL_39:
          v42 = *v36;
          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZN13GLDTextureRec18loadPrivateTextureEjPt_block_invoke;
          block[3] = &unk_29F349D50;
          block[6] = v42;
          block[7] = v38;
          block[8] = v41;
          block[9] = v34;
          block[4] = v48;
          block[5] = this;
          v50 = v9;
          v51 = v8;
          block[10] = v27;
          v52 = v14;
          v53 = v25;
          v43 = this[17];
          if (v43)
          {
            dispatch_sync(v43, block);
          }

          else
          {
            ___ZN13GLDTextureRec18loadPrivateTextureEjPt_block_invoke(block);
          }

          if (v27 != *(this[6] + 60 * v8 + 4 * v9 + 36))
          {
            free(v27);
          }

          if (++v10 >= *(this + 19))
          {
            v7 = this[6];
            goto LABEL_48;
          }
        }

        if (v34 > 1)
        {
          if (v34 == 2)
          {
LABEL_32:
            v34 = 0;
            v39 = this[6] + 480 * v8 + 32 * v9;
            v36 = (v39 + 268);
            v38 = *(v39 + 270);
          }

          else
          {
            v37 = this[6] + 480 * v8 + 32 * v9;
            v36 = (v37 + 268);
            v38 = *(v37 + 270);
            v34 = *(v37 + 272);
          }
        }

        else
        {
          if (v34)
          {
            if (v34 != 1)
            {
              goto LABEL_53;
            }

            v35 = this[6] + 480 * v8 + 32 * v9;
            v36 = (v35 + 268);
            v34 = *(v35 + 270);
          }

          else
          {
            v36 = (this[6] + 480 * v8 + 32 * v9 + 268);
          }

          v38 = 1;
        }

        v41 = 1;
        goto LABEL_39;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t ___ZN13GLDTextureRec18loadPrivateTextureEjPt_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  if (*(a1 + 72))
  {
    v5 = 0;
    v6 = 100;
    if (*(*(a1 + 40) + 88) == 1)
    {
      v6 = 96;
    }

    v7 = *(a1 + v6);
    v8 = *(a1 + 80);
    do
    {
      v9 = *(a1 + 32);
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = v2;
      v16 = v3;
      v17 = v4;
      result = [v9 replaceRegion:&v12 mipmapLevel:*(a1 + 88) slice:v5 withBytes:v8 bytesPerRow:*(a1 + 96) bytesPerImage:*(a1 + 100)];
      v8 += v7;
      ++v5;
    }

    while (v5 < *(a1 + 72));
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = v2;
    v16 = v3;
    v17 = v4;
    return [v11 replaceRegion:&v12 mipmapLevel:*(a1 + 88) slice:*(a1 + 92) withBytes:*(a1 + 80) bytesPerRow:*(a1 + 96) bytesPerImage:*(a1 + 100)];
  }

  return result;
}

void GLDTextureRec::updateSamplerState(MTLTextureType *this, char a2)
{
  if ((a2 & 0x81) != 0)
  {
    MetalSwizzleKey = GLDTextureRec::getMetalSwizzleKey(this);
    v4 = 0;
    v5 = (this + 3);
    v6 = 1;
    do
    {
      v7 = v6;
      v8 = *&v5[8 * v4];
      if (v8)
      {
        GLRTextureResource::setForceASTC_LP(v8, *(this + 75));
        GLRTextureResource::setSwizzleKey(*&v5[8 * v4], MetalSwizzleKey);
        GLRTextureResource::setBaseLevelMaxLevel(*&v5[8 * v4], *(*(this + 6) + 214) & 0xF, *(*(this + 6) + 214) >> 4);
        v9.length = *(this + 28);
        v9.location = 0;
        GLRTextureResource::updateSampleViewIfNeeded(*&v5[8 * v4], (&glrTextureFormats)[5 * *(this + v4 + 16) + 3], this[11], v9);
      }

      v6 = 0;
      v4 = 1;
    }

    while ((v7 & 1) != 0);
  }
}

uint64_t GLDTextureRec::readTextureData(GLDTextureRec *this, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, void *a6)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = ___ZN13GLDTextureRec15readTextureDataEiijjPvj_block_invoke;
  block[3] = &unk_29F349D78;
  block[4] = &v14;
  block[5] = this;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  block[6] = a6;
  v6 = *(this + 17);
  if (v6)
  {
    dispatch_sync(v6, block);
  }

  else
  {
    ___ZN13GLDTextureRec15readTextureDataEiijjPvj_block_invoke(block, a2, a3, a4, a5);
  }

  v7 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v7;
}

void ___ZN13GLDTextureRec15readTextureDataEiijjPvj_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v6 = *(a1 + 40);
  v7 = *(v6 + 5);
  if (*(v7 + 248))
  {
    pthread_mutex_lock((v7 + 256));
  }

  GLDTextureRec::readTextureDataInternal(v6, *(a1 + 56), *(a1 + 60), a4, a5, *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = 0;
  v8 = *(v6 + 5);
  if (*(v8 + 248))
  {

    pthread_mutex_unlock((v8 + 256));
  }
}

uint64_t GLDTextureRec::getTextureInfo(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v4 = *(result + 48);
  v5 = *(v4 + 192);
  *(a4 + 8) = v5;
  if (v5 > 35055)
  {
    if (v5 > 36214)
    {
      if (v5 > 36756)
      {
        if (v5 > 37880)
        {
          if (v5 <= 37883)
          {
            if (v5 == 37881)
            {
              v13 = 0x8000A000A000ALL;
              goto LABEL_131;
            }

            v7 = 37883;
            goto LABEL_119;
          }

          if (v5 == 37884 || v5 == 37885)
          {
            goto LABEL_120;
          }

          v7 = 37902;
          goto LABEL_119;
        }

        if (v5 <= 36758)
        {
          if (v5 == 36757)
          {
LABEL_85:
            v14 = 524296;
LABEL_86:
            *(a4 + 10) = v14;
            goto LABEL_132;
          }

          v7 = 36758;
          goto LABEL_119;
        }

        if (v5 == 36759)
        {
          goto LABEL_81;
        }

        if (v5 == 36975)
        {
LABEL_45:
          v13 = 0x2000A000A000ALL;
          goto LABEL_131;
        }

        if (v5 != 37874)
        {
          goto LABEL_140;
        }

        v11 = 655370;
LABEL_101:
        *(a4 + 10) = v11;
        v17 = 10;
LABEL_121:
        *(a4 + 14) = v17;
        goto LABEL_132;
      }

      if (v5 > 36231)
      {
        if (v5 <= 36237)
        {
          if (v5 == 36232)
          {
            goto LABEL_98;
          }

          v16 = 36233;
LABEL_126:
          if (v5 != v16)
          {
            goto LABEL_140;
          }

          goto LABEL_127;
        }

        if (v5 == 36238)
        {
          goto LABEL_81;
        }

        if (v5 != 36239)
        {
          if (v5 == 36756)
          {
LABEL_53:
            v6 = 8;
LABEL_75:
            *(a4 + 10) = v6;
            goto LABEL_132;
          }

          goto LABEL_140;
        }

        goto LABEL_120;
      }

      if (v5 <= 36220)
      {
        if (v5 == 36215)
        {
LABEL_127:
          *(a4 + 10) = 1048592;
          v17 = 16;
          goto LABEL_121;
        }

        if (v5 != 36220)
        {
          goto LABEL_140;
        }

        goto LABEL_81;
      }

      if (v5 == 36221)
      {
LABEL_120:
        *(a4 + 10) = 524296;
        v17 = 8;
        goto LABEL_121;
      }

      if (v5 != 36226)
      {
        v8 = 36227;
LABEL_123:
        if (v5 != v8)
        {
          goto LABEL_140;
        }

        goto LABEL_124;
      }
    }

    else
    {
      if (v5 <= 35900)
      {
        if (v5 <= 35436)
        {
          if (v5 > 35408)
          {
            if (v5 != 35409 && v5 != 35429)
            {
              v7 = 35430;
              goto LABEL_119;
            }

            goto LABEL_120;
          }

          v10 = -30480;
          if (v5 == 35056)
          {
            v15 = 24;
            goto LABEL_106;
          }

          v7 = 35359;
LABEL_119:
          if (v5 != v7)
          {
            goto LABEL_140;
          }

          goto LABEL_120;
        }

        if (v5 <= 35445)
        {
          if (v5 == 35437)
          {
            goto LABEL_120;
          }

          v7 = 35438;
          goto LABEL_119;
        }

        if ((v5 - 35446) < 2)
        {
          v13 = 0xA000A000A000ALL;
          goto LABEL_131;
        }

        if (v5 != 35898)
        {
          goto LABEL_140;
        }

        v11 = 720907;
        goto LABEL_101;
      }

      if (v5 <= 36167)
      {
        if (v5 <= 35906)
        {
          if (v5 == 35901)
          {
            *(a4 + 10) = 589833;
            *(a4 + 14) = 9;
            *(a4 + 26) = 5;
            goto LABEL_132;
          }

          v7 = 35905;
          goto LABEL_119;
        }

        if (v5 == 35907)
        {
          goto LABEL_81;
        }

        v10 = -29524;
        if (v5 == 36012)
        {
          *(a4 + 22) = 32;
LABEL_107:
          *(a4 + 8) = v10;
          goto LABEL_132;
        }

        v10 = -29523;
        if (v5 != 36013)
        {
          goto LABEL_140;
        }

        v15 = 32;
LABEL_106:
        *(a4 + 22) = v15 | 0x80000;
        goto LABEL_107;
      }

      if (v5 <= 36207)
      {
        if (v5 != 36168)
        {
          if (v5 != 36194)
          {
            goto LABEL_140;
          }

LABEL_117:
          *(a4 + 10) = 393221;
          v17 = 5;
          goto LABEL_121;
        }

        *(a4 + 24) = 8;
        goto LABEL_132;
      }

      if (v5 != 36208)
      {
        if (v5 == 36209)
        {
LABEL_124:
          *(a4 + 10) = 2097184;
          v17 = 32;
          goto LABEL_121;
        }

        if (v5 != 36214)
        {
          goto LABEL_140;
        }

        goto LABEL_98;
      }
    }

LABEL_96:
    v13 = 0x20002000200020;
    goto LABEL_131;
  }

  if (v5 > 33320)
  {
    if (v5 <= 34835)
    {
      switch(v5)
      {
        case 33321:
        case 33329:
        case 33330:
          goto LABEL_53;
        case 33323:
        case 33335:
        case 33336:
          goto LABEL_85;
        case 33325:
        case 33331:
        case 33332:
          v6 = 16;
          goto LABEL_75;
        case 33326:
        case 33333:
        case 33334:
          v6 = 32;
          goto LABEL_75;
        case 33327:
        case 33337:
        case 33338:
          v14 = 1048592;
          goto LABEL_86;
        case 33328:
        case 33339:
        case 33340:
          v14 = 2097184;
          goto LABEL_86;
        default:
          goto LABEL_140;
      }
    }

    if (v5 <= 34841)
    {
      if (v5 > 34837)
      {
        if (v5 != 34838)
        {
          if (v5 == 34840)
          {
            v12 = 32;
LABEL_139:
            *(a4 + 18) = v12;
            goto LABEL_132;
          }

          if (v5 == 34841)
          {
            v9 = 2097184;
            goto LABEL_112;
          }

          goto LABEL_140;
        }

        v18 = 32;
        goto LABEL_129;
      }

      if (v5 == 34836)
      {
        goto LABEL_96;
      }

      v8 = 34837;
      goto LABEL_123;
    }

    if (v5 > 34843)
    {
      if (v5 != 34844)
      {
        if (v5 == 34846)
        {
          v12 = 16;
          goto LABEL_139;
        }

        if (v5 == 34847)
        {
          v9 = 1048592;
          goto LABEL_112;
        }

        goto LABEL_140;
      }

      v18 = 16;
      goto LABEL_129;
    }

    if (v5 == 34842)
    {
LABEL_98:
      v13 = 0x10001000100010;
      goto LABEL_131;
    }

    v16 = 34843;
    goto LABEL_126;
  }

  if (v5 <= 32854)
  {
    if (v5 <= 32847)
    {
      if (v5 != 32828)
      {
        if (v5 == 32832)
        {
          v12 = 8;
          goto LABEL_139;
        }

        if (v5 == 32837)
        {
          v9 = 524296;
LABEL_112:
          *(a4 + 16) = v9;
          goto LABEL_132;
        }

LABEL_140:
        v21 = MTLReleaseAssertionFailure();
        return GLDTextureRec::getLevelInfo(v21, v22, v23, v24, v25);
      }

      v18 = 8;
LABEL_129:
      *(a4 + 16) = v18;
      goto LABEL_132;
    }

    if (v5 != 32848)
    {
      if (v5 != 32849)
      {
        if (v5 != 32854)
        {
          goto LABEL_140;
        }

        v13 = 0x4000400040004;
LABEL_131:
        *(a4 + 10) = v13;
        goto LABEL_132;
      }

      goto LABEL_120;
    }

    goto LABEL_117;
  }

  if (v5 <= 33188)
  {
    if (v5 == 32855)
    {
      v13 = 0x1000500050005;
      goto LABEL_131;
    }

    if (v5 != 32856)
    {
      if (v5 != 32857)
      {
        goto LABEL_140;
      }

      goto LABEL_45;
    }

LABEL_81:
    v13 = 0x8000800080008;
    goto LABEL_131;
  }

  if ((v5 - 33189) >= 3)
  {
    goto LABEL_140;
  }

  *(a4 + 22) = 24;
  *(a4 + 8) = -32346;
LABEL_132:
  v19 = *(v4 + 212);
  if (v19 == 2)
  {
    v20 = 2;
  }

  else
  {
    v20 = 4 * (v19 < 5);
  }

  if (v19 >= 2)
  {
    LOWORD(v19) = v20;
  }

  *(a4 + 28) = v19;
  return result;
}

uint64_t GLDTextureRec::getLevelInfo(GLDTextureRec *this, uint64_t a2, uint64_t a3, int a4, int *a5)
{
  if ((*(*(this + 7) + 20) & 2) != 0)
  {
    v8 = *(this + 5);
    if (!*(v8 + 248) || (pthread_mutex_lock((v8 + 256)), (*(*(this + 7) + 20) & 2) != 0))
    {
      GLDTextureRec::updatePixelFormat(this);
      *(*(this + 7) + 20) &= ~2u;
    }

    v9 = *(this + 5);
    if (*(v9 + 248))
    {
      pthread_mutex_unlock((v9 + 256));
    }
  }

  v13 = (**(this + 6) >> 8) & 1;
  GLDTextureRec::getTextureInfo(this, a2, a3, &v13);
  if (a4 > 32862)
  {
    if (a4 > 35056)
    {
      if (a4 == 35057)
      {
        v10 = v20;
        goto LABEL_25;
      }

      if (a4 == 36011)
      {
        v10 = v21;
        goto LABEL_25;
      }
    }

    else
    {
      if (a4 == 32863)
      {
        v10 = v18;
        goto LABEL_25;
      }

      if (a4 == 34890)
      {
        v10 = v19;
        goto LABEL_25;
      }
    }
  }

  else
  {
    if (a4 > 32860)
    {
      if (a4 == 32861)
      {
        v10 = v16;
      }

      else
      {
        v10 = v17;
      }

      goto LABEL_25;
    }

    if (a4 == 4099)
    {
      v10 = v14;
      goto LABEL_25;
    }

    if (a4 == 32860)
    {
      v10 = v15;
LABEL_25:
      *a5 = v10;
      return 0;
    }
  }

  v12 = MTLReleaseAssertionFailure();
  return GLDTextureRec::createTextureImageQueue(v12);
}

dispatch_queue_t GLDTextureRec::createTextureImageQueue(GLDTextureRec *this)
{
  result = dispatch_queue_create("com.apple.GLDRendererMetal.TexImage", 0);
  *(this + 17) = result;
  return result;
}

uint64_t GLDTextureRec::canGenerateMipmapsWithCPU(GLDTextureRec *this, int8x8_t a2)
{
  v2 = *(this + 6);
  if (!v2[97])
  {
    return 0;
  }

  a2.i32[0] = v2[98];
  v3 = vaddlv_u8(vcnt_s8(a2));
  v4 = (v2[97] & (v2[97] - 1)) != 0 || v2[98] == 0;
  if (v4 || v3 > 1u)
  {
    return 0;
  }

  if ((v2[107] & 0x1800) != 0)
  {
    return 0;
  }

  v6 = *(this + 3);
  if (*(v6 + 24) > 0x100000uLL)
  {
    return 0;
  }

  else
  {
    return [*(v6 + 32) canGenerateMipmapLevels];
  }
}

uint64_t GLDTextureRec::generateMipmapsWithCPU(uint64_t this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 48);
  if (*(v4 + 130))
  {
    v6 = *(v4 + 210);
    v5 = *(v4 + 214);
  }

  else
  {
    v5 = *(v4 + 214);
    v6 = v5 >> 4;
  }

  v7 = v5 & 0xF;
  if (v7 < v6)
  {
    v8 = v7 + 1;
    v9 = v6;
    do
    {
      v10 = *(*(v3 + 24) + 32);
      this = [v10 arrayLength];
      if (this)
      {
        v11 = this;
        v12 = this * a2;
        do
        {
          this = [v10 generateMipmapLevel:v8 slice:v12++];
          --v11;
        }

        while (v11);
      }
    }

    while (v8++ < v9);
  }

  return this;
}

uint64_t gldCreateTexture(uint64_t a1, GLDObject **a2, uint64_t a3, uint64_t a4)
{
  v8 = GLDObject::operator new(0xC8);
  GLDObject::GLDObject(v8);
  *v8 = &unk_2A240EDE8;
  GLDLibrary::getAllDisplayMask(v8);
  *(v8 + 5) = a1;
  *(v8 + 6) = a3;
  *(v8 + 7) = a4;
  v9 = *(a1 + 24) + 1;
  *(a1 + 24) = v9;
  *(v8 + 3) = v9;
  *a2 = v8;
  return 0;
}

uint64_t gldDestroyTexture(uint64_t a1, GLDTextureRec *this)
{
  GLDTextureRec::finishImageQueue(this);
  if (*(a1 + 248))
  {
    pthread_mutex_lock((a1 + 256));
  }

  if (this)
  {
    *(this + 6) = 0;
    GLDObject::release(this);
  }

  if (*(a1 + 248))
  {
    pthread_mutex_unlock((a1 + 256));
  }

  return 0;
}

void GLDDeviceRec::telemetryEmitAPI(GLDDeviceRec *this)
{
  v12 = objc_autoreleasePoolPush();
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = ___ZN12GLDDeviceRec16telemetryEmitAPIEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  if (GLDDeviceRec::telemetryEmitAPI(void)::dimensionsOnce != -1)
  {
    dispatch_once(&GLDDeviceRec::telemetryEmitAPI(void)::dimensionsOnce, block);
  }

  v11 = (this + 960);
  v2 = atomic_load(this + 240);
  v3 = *(this + 241);
  if (v3 != v2)
  {
    v4 = v3 ^ v2;
    do
    {
      v5 = __clz(__rbit32(v4));
      v6 = &stru_2A240F5C0;
      if (v5 - 1 <= 7)
      {
        v6 = *(&off_29F349E08 + v5 - 1);
      }

      v7 = *(this + 132) - 2;
      v8 = &stru_2A240F5C0;
      if (v7 <= 2)
      {
        v8 = *(&off_29F349E48 + v7);
      }

      GLDDeviceRec::setMeasure<BOOL,0>(*(this + 62), @"Unused", 1, 1, [MEMORY[0x29EDBA0F8] stringWithFormat:@"com.apple.opengl.%@%@.%@", v6, v8, GLDDeviceRec::telemetryEmitAPI(void)::bundleIdentifier, v11]);
      v4 &= ~(1 << v5);
    }

    while (v4);
  }

  v9 = v12;
  v10 = atomic_load(v11);
  *(this + 241) = v10;
  objc_autoreleasePoolPop(v9);
}

CFStringRef ___ZN12GLDDeviceRec16telemetryEmitAPIEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  MainBundle = CFBundleGetMainBundle();
  ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(MainBundle, *MEMORY[0x29EDB8F20]);
  result = CFBundleGetIdentifier(MainBundle);
  GLDDeviceRec::telemetryEmitAPI(void)::bundleIdentifier = result;
  if (result)
  {
    [*(v1 + 488) setObject:result forKey:@"BundleIdentifier"];
    v5 = *(v1 + 528) - 2;
    v6 = v5 > 2 ? &stru_2A240F5C0 : *(&off_29F349E48 + v5);
    result = [*(v1 + 488) setObject:v6 forKey:@"API"];
    if (ValueForInfoDictionaryKey)
    {
      v7 = *(v1 + 488);

      return [v7 setObject:ValueForInfoDictionaryKey forKey:@"BundleVersion"];
    }
  }

  return result;
}

uint64_t GLDDeviceRec::setMeasure<BOOL,0>(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = result;
  if (a4)
  {
    if (!a5)
    {
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"com.apple.opengl.%@", a2];
    }

    [objc_msgSend(MEMORY[0x29EDBA070] numberWithBool:{a3), "intValue"}];
    result = ADClientSetValueForScalarKey();
  }

  if ((a4 & 2) != 0)
  {
    v9 = [MEMORY[0x29EDBA070] numberWithBool:a3];

    return [v8 setObject:v9 forKey:a2];
  }

  return result;
}

void GLDDeviceRec::telemetryEmitBacktraceInfo(uint64_t a1, const void *a2)
{
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = ___ZN12GLDDeviceRec26telemetryEmitBacktraceInfoEPK25GLRTelemetryBacktraceInfo_block_invoke;
  v10[3] = &__block_descriptor_40_e5_v8__0l;
  v10[4] = a1;
  if (GLDDeviceRec::telemetryEmitBacktraceInfo(GLRTelemetryBacktraceInfo const*)::onceToken != -1)
  {
    dispatch_once(&GLDDeviceRec::telemetryEmitBacktraceInfo(GLRTelemetryBacktraceInfo const*)::onceToken, v10);
  }

  v4 = malloc_type_malloc(0x208uLL, 0x1080040751F5E6CuLL);
  if (v4)
  {
    v5 = v4;
    memcpy(v4, a2, 0x208uLL);
    v6 = *(a1 + 528);
    v7 = *(a1 + 504);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = ___ZN12GLDDeviceRec26telemetryEmitBacktraceInfoEPK25GLRTelemetryBacktraceInfo_block_invoke_2;
    block[3] = &__block_descriptor_44_e5_v8__0l;
    block[4] = v5;
    v9 = v6;
    dispatch_async(v7, block);
  }
}

dispatch_queue_t ___ZN12GLDDeviceRec26telemetryEmitBacktraceInfoEPK25GLRTelemetryBacktraceInfo_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  result = dispatch_queue_create("glmtl.telemetry.backtrace", v2);
  *(v1 + 504) = result;
  return result;
}

void ___ZN12GLDDeviceRec26telemetryEmitBacktraceInfoEPK25GLRTelemetryBacktraceInfo_block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x29EDCA608];
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x29EDB8E00] dictionaryWithCapacity:3];
  v4 = [MEMORY[0x29EDB9F48] mainBundle];
  v5 = [v4 bundleIdentifier];
  v6 = [v4 objectForInfoDictionaryKey:@"CFBundleVersion"];
  if (v5)
  {
    v25 = v6;
    v7 = *(a1 + 32);
    v10 = *v7;
    v8 = (v7 + 2);
    v9 = v10;
    v11 = getprogname();
    v12 = [MEMORY[0x29EDB8DE8] array];
    if (v10 >= 1)
    {
      do
      {
        v13 = *v8;
        v14 = dyld_image_path_containing_address();
        if (v14)
        {
          v15 = basename_r(v14, v26);
        }

        else
        {
          v15 = "<Unknown>";
        }

        if (v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = "<Unknown>";
        }

        if (!strcmp(v11, v16))
        {
          v17 = @"Direct";
        }

        else
        {
          v17 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v16];
        }

        if (isIgnoredFramework(NSString *)::onceToken != -1)
        {
          ___ZN12GLDDeviceRec26telemetryEmitBacktraceInfoEPK25GLRTelemetryBacktraceInfo_block_invoke_2_cold_1();
        }

        if (([isIgnoredFramework(NSString *)::ignoredFrameworks containsObject:v17] & 1) == 0 && (objc_msgSend(v12, "containsObject:", v17) & 1) == 0)
        {
          [v12 addObject:v17];
        }

        ++v8;
        --v9;
      }

      while (v9);
    }

    if ([v12 count])
    {
      v18 = [v12 componentsJoinedByString:{@", "}];
      if (v18)
      {
        v19 = v18;
        v20 = *(a1 + 40) - 2;
        if (v20 > 2)
        {
          v21 = &stru_2A240F5C0;
        }

        else
        {
          v21 = *(&off_29F349E48 + v20);
        }

        GLDDeviceRec::setMeasure<int,0>(0, @"Unused", 1, 1, [MEMORY[0x29EDBA0F8] stringWithFormat:@"com.apple.opengl.%@.Backtrace{%@}.%@", v21, v18, v5]);
        [v3 setObject:v5 forKey:@"BundleIdentifier"];
        v22 = *(a1 + 40) - 2;
        if (v22 > 2)
        {
          v23 = &stru_2A240F5C0;
        }

        else
        {
          v23 = *(&off_29F349E48 + v22);
        }

        [v3 setObject:v23 forKey:@"API"];
        if (v25)
        {
          [v3 setObject:v25 forKey:@"BundleVersion"];
        }

        [v3 setObject:v19 forKey:@"Frameworks"];
        *v26 = MEMORY[0x29EDCA5F8];
        v27 = 3221225472;
        v28 = ___ZN12GLDDeviceRec9sendEventEP8NSStringP19NSMutableDictionaryIS1_P8NSObjectE_block_invoke;
        v29 = &unk_29F349DE8;
        v30 = v3;
        AnalyticsSendEventLazy();
      }
    }
  }

  free(*(a1 + 32));
  objc_autoreleasePoolPop(v2);
  v24 = *MEMORY[0x29EDCA608];
}

uint64_t GLDDeviceRec::setMeasure<int,0>(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = result;
  if (a4)
  {
    if (!a5)
    {
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"com.apple.opengl.%@", a2];
    }

    [objc_msgSend(MEMORY[0x29EDBA070] numberWithInt:{a3), "intValue"}];
    result = ADClientSetValueForScalarKey();
  }

  if ((a4 & 2) != 0)
  {
    v9 = [MEMORY[0x29EDBA070] numberWithInt:a3];

    return [v8 setObject:v9 forKey:a2];
  }

  return result;
}

uint64_t GLDDeviceRec::telemetryTexture(uint64_t this, GLDTextureRec *a2)
{
  v2 = *(&glrTextureFormats + 10 * *(a2 + 16) + 9);
  if ((v2 & 0x1000) != 0)
  {
    v4 = 45;
    goto LABEL_17;
  }

  if ((v2 & 0x2000) != 0)
  {
    v4 = 48;
    goto LABEL_17;
  }

  if ((v2 & 0x4000) != 0)
  {
    v4 = 44;
    goto LABEL_17;
  }

  if ((v2 & 0x8000) != 0)
  {
    v4 = 46;
    goto LABEL_17;
  }

  if ((v2 & 0x10000) != 0)
  {
    v4 = 47;
    goto LABEL_17;
  }

  if ((v2 & 0x20000) != 0)
  {
    v4 = 49;
    goto LABEL_17;
  }

  v3 = *(*(a2 + 6) + 192);
  v4 = 50;
  if (v3 <= 0x8815)
  {
    if (*(*(a2 + 6) + 192) > 0x81A6u)
    {
      switch(*(*(a2 + 6) + 192))
      {
        case 0x8229:
          goto LABEL_73;
        case 0x822A:
        case 0x822C:
          goto LABEL_17;
        case 0x822B:
          goto LABEL_74;
        case 0x822D:
          goto LABEL_78;
        case 0x822E:
          goto LABEL_69;
        case 0x822F:
          goto LABEL_77;
        case 0x8230:
          goto LABEL_68;
        case 0x8231:
          v4 = 34;
          break;
        case 0x8232:
          v4 = 24;
          break;
        case 0x8233:
          v4 = 38;
          break;
        case 0x8234:
          v4 = 28;
          break;
        case 0x8235:
          v4 = 41;
          break;
        case 0x8236:
          v4 = 31;
          break;
        case 0x8237:
          v4 = 35;
          break;
        case 0x8238:
          v4 = 25;
          break;
        case 0x8239:
          v4 = 39;
          break;
        case 0x823A:
          v4 = 29;
          break;
        case 0x823B:
          v4 = 42;
          break;
        case 0x823C:
          v4 = 32;
          break;
        default:
          if (v3 == 33191)
          {
            goto LABEL_95;
          }

          if (v3 == 34836)
          {
            v4 = 16;
          }

          break;
      }

      goto LABEL_17;
    }

    if (*(*(a2 + 6) + 192) > 0x8055u)
    {
      if (*(*(a2 + 6) + 192) <= 0x8058u)
      {
        if (v3 - 32854 >= 2)
        {
          if (v3 != 32856)
          {
            goto LABEL_17;
          }

          goto LABEL_53;
        }

LABEL_82:
        v4 = 8;
        goto LABEL_17;
      }

      if (v3 != 32857)
      {
        if (v3 == 33189)
        {
          v4 = 19;
        }

        else if (v3 == 33190)
        {
          v4 = 20;
        }

        goto LABEL_17;
      }

LABEL_91:
      v4 = 9;
      goto LABEL_17;
    }

    if (*(*(a2 + 6) + 192) > 0x8044u)
    {
      if (v3 == 32837)
      {
LABEL_74:
        v4 = 1;
        goto LABEL_17;
      }

      if (v3 == 32848)
      {
        goto LABEL_82;
      }

      if (v3 != 32849)
      {
        goto LABEL_17;
      }

LABEL_70:
      v4 = 2;
      goto LABEL_17;
    }

    if (v3 != 32828 && v3 != 32832)
    {
      goto LABEL_17;
    }

LABEL_73:
    v4 = 0;
    goto LABEL_17;
  }

  if (*(*(a2 + 6) + 192) <= 0x8CABu)
  {
    if (*(*(a2 + 6) + 192) <= 0x88EFu)
    {
      if (*(*(a2 + 6) + 192) > 0x8819u)
      {
        if (*(*(a2 + 6) + 192) > 0x881Du)
        {
          if (v3 != 34846)
          {
            if (v3 == 34847)
            {
LABEL_77:
              v4 = 12;
            }

            goto LABEL_17;
          }
        }

        else
        {
          if (v3 == 34842)
          {
            v4 = 13;
            goto LABEL_17;
          }

          if (v3 != 34844)
          {
            goto LABEL_17;
          }
        }

LABEL_78:
        v4 = 11;
        goto LABEL_17;
      }

      if (v3 == 34838 || v3 == 34840)
      {
LABEL_69:
        v4 = 14;
      }

      else if (v3 == 34841)
      {
LABEL_68:
        v4 = 15;
      }
    }

    else if (*(*(a2 + 6) + 192) > 0x8C3Cu)
    {
      if (v3 - 35904 < 2)
      {
        goto LABEL_70;
      }

      if (v3 - 35906 < 2)
      {
LABEL_53:
        v4 = 3;
        goto LABEL_17;
      }

      if (v3 == 35901)
      {
        v4 = 17;
      }
    }

    else
    {
      switch(v3)
      {
        case 0x88F0u:
          v4 = 21;
          break;
        case 0x8A78u:
          goto LABEL_73;
        case 0x8C3Au:
          v4 = 18;
          break;
      }
    }
  }

  else if (*(*(a2 + 6) + 192) > 0x8D87u)
  {
    if (*(*(a2 + 6) + 192) > 0x8F94u)
    {
      if (*(*(a2 + 6) + 192) <= 0x8F96u)
      {
        if (v3 == 36757)
        {
          v4 = 5;
        }

        else
        {
          v4 = 6;
        }

        goto LABEL_17;
      }

      if (v3 == 36759)
      {
        v4 = 7;
        goto LABEL_17;
      }

      if (v3 == 36975)
      {
        goto LABEL_91;
      }
    }

    else if (*(*(a2 + 6) + 192) > 0x8D8Eu)
    {
      if (v3 == 36239)
      {
        v4 = 36;
      }

      else if (v3 == 36756)
      {
        v4 = 4;
      }
    }

    else if (v3 == 36232)
    {
      v4 = 40;
    }

    else if (v3 == 36238)
    {
      v4 = 37;
    }
  }

  else if (*(*(a2 + 6) + 192) > 0x8D75u)
  {
    if (*(*(a2 + 6) + 192) > 0x8D7Cu)
    {
      if (v3 == 36221)
      {
        v4 = 26;
      }

      else if (v3 == 36226)
      {
        v4 = 43;
      }
    }

    else if (v3 == 36214)
    {
      v4 = 30;
    }

    else if (v3 == 36220)
    {
      v4 = 27;
    }
  }

  else if (*(*(a2 + 6) + 192) > 0x8D61u)
  {
    if (v3 == 36194)
    {
      goto LABEL_82;
    }

    if (v3 == 36208)
    {
      v4 = 33;
    }
  }

  else if (v3 == 36012)
  {
LABEL_95:
    v4 = 22;
  }

  else if (v3 == 36168)
  {
    v4 = 23;
  }

LABEL_17:
  atomic_fetch_add((this + 8 * v4 + 552), 1uLL);
  return this;
}

uint64_t GLDDeviceRec::telemetryEmitUsage(uint64_t this)
{
  v1 = this;
  v2 = *(this + 536);
  v3 = *(this + 544);
  if (v3 != v2)
  {
    v4 = v3 ^ v2;
    do
    {
      v5 = v4 & -v4;
      if (v5 >= 0x2000)
      {
        if (v5 < 0x80000)
        {
          if (v5 >= 0x10000)
          {
            switch(v5)
            {
              case 0x10000:
                v6 = @"PCF";
                break;
              case 0x20000:
                v6 = @"Aniso";
                break;
              case 0x40000:
                v6 = @"MSAA";
                break;
              default:
                goto LABEL_64;
            }
          }

          else
          {
            switch(v5)
            {
              case 0x2000:
                v6 = @"TF";
                break;
              case 0x4000:
                v6 = @"Readback";
                break;
              case 0x8000:
                v6 = @"Blit";
                break;
              default:
                goto LABEL_64;
            }
          }
        }

        else if (v5 <= 0xFFFFFF)
        {
          switch(v5)
          {
            case 0x80000:
              v6 = @"ColorConversion";
              break;
            case 0x100000:
              v6 = @"MipmapGen";
              break;
            case 0x800000:
              v6 = @"VertexSpill";
              break;
            default:
              goto LABEL_64;
          }
        }

        else if (v5 > 0x3FFFFFF)
        {
          if (v5 == 0x4000000)
          {
            v6 = @"MSAACombinedResolve";
          }

          else
          {
            if (v5 != 0x40000000)
            {
LABEL_64:
              v6 = &stru_2A240F5C0;
              goto LABEL_65;
            }

            v6 = @"MRTSpill";
          }
        }

        else if (v5 == 0x1000000)
        {
          v6 = @"FragmentSpill";
        }

        else
        {
          if (v5 != 0x2000000)
          {
            goto LABEL_64;
          }

          v6 = @"SWRender";
        }
      }

      else if (v5 <= 63)
      {
        if (v5 > 7)
        {
          switch(v5)
          {
            case 8:
              v6 = @"DepthTest";
              break;
            case 16:
              v6 = @"Dither";
              break;
            case 32:
              v6 = @"PolygonOffset";
              break;
            default:
              goto LABEL_64;
          }
        }

        else
        {
          switch(v5)
          {
            case 1:
              v6 = @"AlphaTest";
              break;
            case 2:
              v6 = @"Blending";
              break;
            case 4:
              v6 = @"Cull";
              break;
            default:
              goto LABEL_64;
          }
        }
      }

      else if (v5 <= 511)
      {
        switch(v5)
        {
          case 64:
            v6 = @"RasterDiscard";
            break;
          case 128:
            v6 = @"AlphaToOne";
            break;
          case 256:
            v6 = @"AlphaToCoverage";
            break;
          default:
            goto LABEL_64;
        }
      }

      else if (v5 > 2047)
      {
        if (v5 == 2048)
        {
          v6 = @"StencilTest";
        }

        else
        {
          if (v5 != 4096)
          {
            goto LABEL_64;
          }

          v6 = @"OQ";
        }
      }

      else if (v5 == 512)
      {
        v6 = @"SampleCoverage";
      }

      else
      {
        if (v5 != 1024)
        {
          goto LABEL_64;
        }

        v6 = @"Scissor";
      }

LABEL_65:
      this = [*(v1 + 496) setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", 1), v6}];
      v7 = v5 == v4;
      v4 ^= v5;
    }

    while (!v7);
  }

  *(v1 + 544) = v2;
  return this;
}

uint64_t GLDDeviceRec::telemetryEmitTexture(uint64_t this)
{
  v1 = this;
  v2 = 0;
  v3 = this + 552;
  do
  {
    v4 = (v3 + v2);
    if (atomic_load((v3 + v2)))
    {
      v6 = *(&off_29F349E60 + v2);
      v7 = *(v1 + 496);
      v8 = atomic_load(v4);
      this = [v7 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", v8), v6}];
      atomic_store(0, v4);
    }

    v2 += 8;
  }

  while (v2 != 400);
  return this;
}

uint64_t GLDDeviceRec::emitTelemetry(id *this)
{
  GLDDeviceRec::telemetryEmitAPI(this);
  GLDDeviceRec::telemetryEmitUsage(this);
  GLDDeviceRec::telemetryEmitTexture(this);
  result = [this[62] count];
  if (result)
  {
    [this[62] addEntriesFromDictionary:this[61]];
    v3 = this[62];
    AnalyticsSendEventLazy();
    return [this[62] removeAllObjects];
  }

  return result;
}

NSObject *GLDDeviceRec::telemetryCreateTimerWithInterval(int a1, dispatch_queue_t queue, double a3, void *a4)
{
  v6 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, queue);
  if (v6)
  {
    v7 = a3 * 1000000000.0;
    v8 = dispatch_time(0, v7);
    dispatch_source_set_timer(v6, v8, v7, 0x5F5E100uLL);
    dispatch_source_set_event_handler(v6, a4);
    dispatch_resume(v6);
  }

  return v6;
}

void GLDDeviceRec::telemetryStartTimer(GLDDeviceRec *this, double a2)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2020000000;
  *&v4[3] = a2;
  v2 = *(this + 64);
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = ___ZN12GLDDeviceRec19telemetryStartTimerEd_block_invoke;
  v3[3] = &unk_29F349DC0;
  v3[4] = v4;
  v3[5] = this;
  *(this + 65) = GLDDeviceRec::telemetryCreateTimerWithInterval(this, v2, a2, v3);
  _Block_object_dispose(v4, 8);
}

uint64_t ___ZN12GLDDeviceRec19telemetryStartTimerEd_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  GLDDeviceRec::emitTelemetry(v2);
  dispatch_source_cancel(*(v2 + 520));
  dispatch_release(*(v2 + 520));
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  if (v4 <= 3840.0)
  {
    *(v3 + 24) = v4 + v4;
    v4 = *(*(*(a1 + 32) + 8) + 24);
  }

  return GLDDeviceRec::telemetryStartTimer(v2, v4);
}

uint64_t ___ZL18isIgnoredFrameworkP8NSString_block_invoke()
{
  result = [objc_alloc(MEMORY[0x29EDB8E50]) initWithArray:&unk_2A24105B8];
  isIgnoredFramework(NSString *)::ignoredFrameworks = result;
  return result;
}

id GLRDepthStencilKey::copyDescriptor(GLRDepthStencilKey *this)
{
  v2 = objc_alloc_init(MEMORY[0x29EDBB5A0]);
  v3 = [v2 frontFaceStencil];
  v4 = [v2 backFaceStencil];
  [v3 setReadMask:*this];
  [v3 setWriteMask:*(this + 1)];
  [v3 setStencilCompareFunction:*(this + 1) & 7];
  [v3 setStencilFailureOperation:(*this >> 35) & 7];
  [v3 setDepthFailureOperation:(*this >> 38) & 7];
  [v3 setDepthStencilPassOperation:(*this >> 41) & 7];
  [v4 setReadMask:*(this + 2)];
  [v4 setWriteMask:*(this + 3)];
  [v4 setStencilCompareFunction:(*this >> 44) & 7];
  [v4 setStencilFailureOperation:(*this >> 47) & 7];
  [v4 setDepthFailureOperation:(*this >> 50) & 7];
  [v4 setDepthStencilPassOperation:(*this >> 53) & 7];
  [v2 setDepthWriteEnabled:(*this >> 59) & 1];
  [v2 setDepthCompareFunction:*(this + 7) & 7];
  [v2 setLabel:*MEMORY[0x29EDBB7B0]];
  return v2;
}

CFMutableDictionaryRef GLRDepthStencilCache::init(GLRDepthStencilCache *this)
{
  result = CFDictionaryCreateMutable(0, 0, &_depthStencilKeyCallbacks, MEMORY[0x29EDB9020]);
  *this = result;
  return result;
}

void _depthStencilKeyRelease(const __CFAllocator *a1, const void *a2)
{
  if (a2)
  {
    JUMPOUT(0x29ED53120);
  }
}

unint64_t _depthStencilKeyHash(void *a1)
{
  v1 = __ROR8__((0x9E3779B185EBCA87 * ((0x93EA75A780000000 * *a1) | ((0xC2B2AE3D27D4EB4FLL * *a1) >> 33))) ^ 0x27D4EB2F165667CDLL, 37);
  v2 = 0xC2B2AE3D27D4EB4FLL * ((0x9E3779B185EBCA87 * v1 - 0x7A1435883D4D519DLL) ^ ((0x9E3779B185EBCA87 * v1 - 0x7A1435883D4D519DLL) >> 33));
  return (0x165667B19E3779F9 * (v2 ^ (v2 >> 29))) ^ ((0x165667B19E3779F9 * (v2 ^ (v2 >> 29))) >> 32);
}

void GLDTextureRec::chooseTextureFormat(GLDTextureRec *this, unsigned int a2, unsigned int a3, int a4)
{
  if (a4 <= 36213)
  {
    if (a4 > 35408)
    {
      if (a4 <= 35839)
      {
        switch(a4)
        {
          case 35409:
          case 35412:
          case 35413:
          case 35414:
          case 35415:
          case 35420:
          case 35421:
          case 35422:
          case 35423:
          case 35429:
          case 35430:
          case 35431:
          case 35432:
          case 35433:
          case 35434:
          case 35435:
          case 35436:
          case 35437:
          case 35438:
          case 35439:
          case 35440:
          case 35441:
          case 35442:
          case 35443:
          case 35444:
          case 35446:
          case 35447:
          case 35448:
            return;
          default:
            goto LABEL_124;
        }

        return;
      }

      if (a4 <= 35906)
      {
        if (a4 <= 35842)
        {
          return;
        }

        if (a4 > 35900)
        {
          if (a4 == 35901 || a4 == 35905)
          {
            return;
          }
        }

        else if (a4 == 35843 || a4 == 35898)
        {
          return;
        }

        goto LABEL_124;
      }

      if (a4 > 36167)
      {
        if (a4 > 36207)
        {
          if (a4 == 36208 || a4 == 36209)
          {
            return;
          }
        }

        else if (a4 == 36168 || a4 == 36194)
        {
          return;
        }

        goto LABEL_124;
      }

      if (a4 == 35907 || a4 == 36012)
      {
        return;
      }

      v4 = 36013;
LABEL_121:
      if (a4 == v4)
      {
        return;
      }

      goto LABEL_124;
    }

    if (a4 <= 33320)
    {
      if (a4 <= 32854)
      {
        if (a4 <= 32836)
        {
          if (a4 == 32828 || a4 == 32832)
          {
            return;
          }
        }

        else if (a4 == 32837 || a4 == 32849 || a4 == 32854)
        {
          return;
        }
      }

      else if (a4 > 33188)
      {
        if ((a4 - 33189) < 3)
        {
          return;
        }
      }

      else if (a4 == 32855 || a4 == 32856 || a4 == 32857)
      {
        return;
      }
    }

    else
    {
      if (a4 <= 34835)
      {
        switch(a4)
        {
          case 33321:
          case 33323:
          case 33325:
          case 33326:
          case 33327:
          case 33328:
          case 33329:
          case 33330:
          case 33331:
          case 33332:
          case 33333:
          case 33334:
          case 33335:
          case 33336:
          case 33337:
          case 33338:
          case 33339:
          case 33340:
            return;
          default:
            goto LABEL_124;
        }

        return;
      }

      if (a4 <= 34841)
      {
        if (a4 <= 34838 || a4 == 34840 || a4 == 34841)
        {
          return;
        }
      }

      else
      {
        if (a4 > 34845)
        {
          if (a4 == 34846 || a4 == 34847)
          {
            return;
          }

          v4 = 35056;
          goto LABEL_121;
        }

        if (a4 == 34842 || a4 == 34843 || a4 == 34844)
        {
          return;
        }
      }
    }

LABEL_124:
    v5 = MTLReleaseAssertionFailure();
    GLDContextRec::getCommandBuffer(v5);
    return;
  }

  if (a4 <= 37495)
  {
    if (a4 <= 36756)
    {
      if (a4 <= 36226)
      {
        if (a4 <= 36219)
        {
          if (a4 == 36214 || a4 == 36215)
          {
            return;
          }
        }

        else if (a4 == 36220 || a4 == 36221 || a4 == 36226)
        {
          return;
        }
      }

      else if (a4 > 36237)
      {
        if (a4 == 36238 || a4 == 36239 || a4 == 36756)
        {
          return;
        }
      }

      else if (a4 == 36227 || a4 == 36232 || a4 == 36233)
      {
        return;
      }
    }

    else
    {
      if (a4 > 37489)
      {
        return;
      }

      if (a4 > 36974)
      {
        if (a4 == 36975 || a4 == 37488 || a4 == 37489)
        {
          return;
        }
      }

      else if (a4 == 36757 || a4 == 36758 || a4 == 36759)
      {
        return;
      }
    }

    goto LABEL_124;
  }

  switch(a4)
  {
    case 37808:
    case 37809:
    case 37810:
    case 37811:
    case 37812:
    case 37813:
    case 37814:
    case 37815:
    case 37816:
    case 37817:
    case 37818:
    case 37819:
    case 37820:
    case 37821:
    case 37840:
    case 37841:
    case 37842:
    case 37843:
    case 37844:
    case 37845:
    case 37846:
    case 37847:
    case 37848:
    case 37849:
    case 37850:
    case 37851:
    case 37852:
    case 37853:
    case 37874:
    case 37875:
    case 37876:
    case 37877:
    case 37878:
    case 37879:
    case 37880:
    case 37881:
    case 37883:
    case 37884:
    case 37885:
    case 37886:
    case 37887:
    case 37888:
    case 37889:
    case 37890:
    case 37891:
    case 37892:
    case 37893:
    case 37894:
    case 37895:
    case 37896:
    case 37897:
    case 37898:
    case 37899:
    case 37900:
    case 37901:
    case 37902:
    case 37903:
      return;
    case 37822:
    case 37823:
    case 37824:
    case 37825:
    case 37826:
    case 37827:
    case 37828:
    case 37829:
    case 37830:
    case 37831:
    case 37832:
    case 37833:
    case 37834:
    case 37835:
    case 37836:
    case 37837:
    case 37838:
    case 37839:
    case 37854:
    case 37855:
    case 37856:
    case 37857:
    case 37858:
    case 37859:
    case 37860:
    case 37861:
    case 37862:
    case 37863:
    case 37864:
    case 37865:
    case 37866:
    case 37867:
    case 37868:
    case 37869:
    case 37870:
    case 37871:
    case 37872:
    case 37873:
    case 37882:
      goto LABEL_124;
    default:
      if (a4 != 37496 && a4 != 37497)
      {
        goto LABEL_124;
      }

      break;
  }
}

void GLDContextRec::getCommandBuffer(GLDContextRec *this)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(this + 10) commandBufferWithUnretainedReferences];
  *(this + 5) = v3;
  [v3 setLabel:*MEMORY[0x29EDBB7B0]];
  *(this + 8) = GLDDeviceRec::newResourceList(*(this + 12));

  objc_autoreleasePoolPop(v2);
}

uint64_t GLDContextRec::buildRenderPassDescriptor(GLDContextRec *this)
{
  v2 = *(this + 231);
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x29EDBB5F8]);
    *(this + 231) = v2;
  }

  v3 = [v2 colorAttachments];
  [*(this + 231) setOpenGLModeEnabled:1];
  [*(this + 231) setPointCoordYFlipEnabled:1];
  [*(this + 231) setDitherEnabled:*(this + 5085)];
  v4 = 0;
  *(this + 1312) = 0;
  *(this + 1187) = 0;
  v5 = this + 4136;
  v6 = (this + 4376);
  v7 = this + 4632;
  v8 = (this + 4632);
  do
  {
    v9 = [v3 objectAtIndexedSubscript:v4];
    if (*v5)
    {
      TextureResource = GLDTextureRec::getTextureResource(*v5, 0);
    }

    else
    {
      TextureResource = *(v5 + 10);
    }

    v11 = &v7[8 * v4];
    if (TextureResource)
    {
      [v9 setTexture:*(TextureResource + 32)];
      [v9 setResolveTexture:0];
      [v9 setLevel:*(v6 - 10)];
      [v9 setSlice:*(v6 - 20)];
      [v9 setDepthPlane:*v6];
      [v9 setStoreAction:4];
      *(v11 - 17) = 1;
      *(this + 1187) |= 1 << v4;
      [v9 setYInvert:v7[v4 - 56]];
      if ((*(this + 1151) & (1 << v4)) != 0)
      {
        [v9 setClearColor:{*(v8 - 3), *(v8 - 2), *(v8 - 1), *v8}];
        v12 = v9;
        v13 = 2;
      }

      else
      {
        if (*(this + 1149) <= 1u)
        {
          v14 = *(this + 1312);
        }

        else
        {
          v14 = *(this + 1312) | 0x100;
        }

        *(this + 1312) = v14 | 0x20;
        v12 = v9;
        v13 = 1;
      }

      [v12 setLoadAction:v13];
    }

    else
    {
      [v9 setTexture:0];
      [v9 setResolveTexture:0];
      [v9 setStoreAction:0];
      *(v11 - 17) = 0;
    }

    ++v4;
    v5 += 8;
    v8 += 4;
    ++v6;
  }

  while (v4 != 4);
  v15 = [*(this + 231) depthAttachment];
  v16 = v15;
  v17 = *(this + 535);
  if (v17)
  {
    [v15 setTexture:*(v17 + 32)];
    [v16 setLevel:*(this + 1092)];
    [v16 setSlice:*(this + 1082)];
    [v16 setDepthPlane:*(this + 1102)];
    [v16 setStoreAction:4];
    *(this + 570) = 1;
    *(this + 1187) |= 0x100u;
    if (*(this + 4605))
    {
      [v16 setClearDepth:*(this + 592)];
      v18 = v16;
      v19 = 2;
    }

    else
    {
      v18 = v16;
      v19 = 1;
    }

    [v18 setLoadAction:v19];
  }

  else
  {
    [v15 setTexture:0];
    [v16 setStoreAction:0];
    *(this + 570) = 0;
  }

  v20 = [*(this + 231) stencilAttachment];
  v21 = v20;
  v22 = *(this + 536);
  if (v22)
  {
    [v20 setTexture:*(v22 + 32)];
    [v21 setLevel:*(this + 1093)];
    [v21 setSlice:*(this + 1083)];
    [v21 setDepthPlane:*(this + 1103)];
    [v21 setStoreAction:4];
    *(this + 571) = 1;
    *(this + 1187) |= 0x200u;
    if ((*(this + 4605) & 2) != 0)
    {
      [v21 setClearStencil:*(this + 1186)];
      v23 = v21;
      v24 = 2;
    }

    else
    {
      v23 = v21;
      v24 = 1;
    }

    [v23 setLoadAction:v24];
  }

  else
  {
    [v20 setTexture:0];
    [v21 setStoreAction:0];
    *(this + 571) = 0;
  }

  *(this + 1150) = *(this + 1149);
  result = [*(this + 231) setVisibilityResultBuffer:*(*(*(this + 595) + 24) + 40)];
  if (*(this + 1150) >= 2u)
  {
    *(this + 53) |= 0x40000uLL;
  }

  *(this + 1151) = 0;
  *(this + 620) = 0;
  return result;
}

uint64_t GLDContextRec::addRenderPassResources(GLDContextRec *this)
{
  v2 = (this + 4216);
  v3 = 10;
  do
  {
    v4 = *(v2 - 10);
    if (v4)
    {
      TextureResource = GLDTextureRec::getTextureResource(v4, 0);
      if (!TextureResource)
      {
        goto LABEL_5;
      }

LABEL_4:
      GLRResourceList::addResource(*(this + 8), TextureResource);
      goto LABEL_5;
    }

    TextureResource = *v2;
    if (*v2)
    {
      goto LABEL_4;
    }

LABEL_5:
    ++v2;
    --v3;
  }

  while (v3);
  v6 = *(this + 8);
  v7 = *(*(this + 595) + 24);

  return GLRResourceList::addResource(v6, v7);
}

double GLDContextRec::beginRenderPass(GLDContextRec *this)
{
  if (!*(this + 5))
  {
    GLDContextRec::getCommandBuffer(this);
  }

  v2 = *(this + 595);
  if ((*(v2 + 40) - *(v2 + 36)) <= 0x1FF)
  {
    v3 = *(this + 5);
    v27[0] = MEMORY[0x29EDCA5F8];
    v27[1] = 3221225472;
    v27[2] = ___ZN13GLDContextRec15beginRenderPassEv_block_invoke;
    v27[3] = &__block_descriptor_48_e28_v16__0___MTLCommandBuffer__8l;
    v27[4] = this;
    v27[5] = v2;
    [v3 addCompletedHandler:v27];
    *(this + 595) = GLDContextRec::allocQueryStagingBuffer(this);
  }

  v4 = **(*(this + 50) + 40);
  v5 = MEMORY[0x29EDBB7B0];
  if (v4 && *(v4 + 184))
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [*(this + 5) blitCommandEncoder];
    objc_autoreleasePoolPop(v6);
    [v7 setLabel:*v5];
    GLDTextureRec::blitAccum(v4, v7, *(this + 8));
    [v7 endEncoding];
  }

  GLDContextRec::buildRenderPassDescriptor(this);
  v8 = objc_autoreleasePoolPush();
  v9 = *(this + 5);
  v10 = *(this + 231);
  if (*(this + 2232) == 1)
  {
    v11 = [v9 sampledRenderCommandEncoderWithDescriptor:v10 programInfoBuffer:*(this + 287) capacity:*(this + 288)];
    *(this + 285) = *(this + 284);
  }

  else
  {
    v11 = [v9 renderCommandEncoderWithDescriptor:v10];
  }

  *(this + 2) = v11;
  objc_autoreleasePoolPop(v8);
  [*(this + 2) setLabel:*v5];
  ++*(this + 1257);
  v12 = *(this + 2);
  *(this + 427) = sel_setVertexBytes_length_atIndex_;
  *(this + 428) = [v12 methodForSelector:?];
  v13 = *(this + 2);
  *(this + 429) = sel_setFragmentBytes_length_atIndex_;
  *(this + 430) = [v13 methodForSelector:?];
  v14 = *(this + 2);
  *(this + 431) = sel_setVertexBuffer_offset_atIndex_;
  *(this + 432) = [v14 methodForSelector:?];
  v15 = *(this + 2);
  *(this + 433) = sel_setFragmentBuffer_offset_atIndex_;
  *(this + 434) = [v15 methodForSelector:?];
  v16 = *(this + 2);
  *(this + 435) = sel_setVertexTexture_atIndex_;
  *(this + 436) = [v16 methodForSelector:?];
  v17 = *(this + 2);
  *(this + 437) = sel_setFragmentTexture_atIndex_;
  *(this + 438) = [v17 methodForSelector:?];
  v18 = *(this + 2);
  *(this + 439) = sel_setVertexSamplerState_lodMinClamp_lodMaxClamp_atIndex_;
  *(this + 440) = [v18 methodForSelector:?];
  v19 = *(this + 2);
  *(this + 441) = sel_setFragmentSamplerState_lodMinClamp_lodMaxClamp_atIndex_;
  *(this + 442) = [v19 methodForSelector:?];
  v20 = *(this + 2);
  *(this + 443) = sel_setVertexBufferOffset_atIndex_;
  *(this + 444) = [v20 methodForSelector:?];
  v21 = *(this + 2);
  *(this + 445) = sel_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_;
  *(this + 446) = [v21 methodForSelector:?];
  v22 = *(this + 2);
  *(this + 5086) = objc_opt_respondsToSelector() & 1;
  *(this + 1263) |= *(this + 1312) | 0x10;
  GLDContextRec::addRenderPassResources(this);
  v23 = *(this + 599);
  if (v23)
  {
    v24 = *(v23 + 40);
    v26 = 0;
    *(v23 + 48) = *(this + 596);
    *(this + 5088) = 1;
    GLDQueryStagingBuffer::allocateResultOffset(*(this + 595), &v26, v24);
    [*(this + 2) setVisibilityResultMode:1 offset:v26];
    *(this + 53) |= 0x1000uLL;
  }

  [*(this + 2) setProvokingVertexMode:1];
  *(this + 618) |= 0x1FFFFu;
  result = NAN;
  *(this + 330) = -1;
  *(this + 667) = -1;
  return result;
}

void GLDContextRec::endRenderPass(GLDContextRec *this)
{
  v2 = *(this + 423);
  v3 = *(this + 424) - v2;
  if (v3)
  {
    v4 = v3 >> 3;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v5 = *(this + 423);
    do
    {
      v6 = *v5++;
      *(v6 + 32) = 0;
      --v4;
    }

    while (v4);
  }

  *(this + 424) = v2;
  v7 = (*(this + 5040) | *(this + 5032)) == 0;
  for (i = 562; i != 566; ++i)
  {
    v9 = 1 << (i - 50);
    if ((*(this + 1187) & v9) != 0)
    {
      v10 = *(this + 1258);
      if (v7)
      {
        v10 |= v9;
        *(this + 1258) = v10;
      }

      v11 = *(this + i);
      if ((v10 & v9) != 0)
      {
        if ((v11 | 2) == 3)
        {
          if (*(this + 1150) <= 1u)
          {
            v12 = *(this + 1263);
          }

          else
          {
            v12 = *(this + 1263) | 0x2000;
          }

          *(this + 1263) = v12 | 0x400;
        }
      }

      else if (v11 == 3)
      {
        *(this + 1263) |= 0x4000400u;
        *(this + 53) |= 0x4000000uLL;
        *(this + i) = 2;
        v11 = 2;
      }

      else if (v11 == 1)
      {
        v11 = 0;
        *(this + i) = 0;
      }

      [*(this + 2) setColorStoreAction:v11 atIndex:?];
      v7 = 0;
    }
  }

  v13 = *(this + 1187);
  if ((v13 & 0x100) != 0)
  {
    v14 = *(this + 570);
    if (*(this + 5033))
    {
      if ((v14 | 2) == 3)
      {
        if (*(this + 1150) <= 1u)
        {
          v15 = *(this + 1263);
        }

        else
        {
          v15 = *(this + 1263) | 0x2000;
        }

        *(this + 1263) = v15 | 0x800;
      }
    }

    else if (v14 == 3)
    {
      *(this + 1263) |= 0x4000800u;
      *(this + 53) |= 0x4000000uLL;
      v14 = 2;
      *(this + 570) = 2;
    }

    else if (v14 == 1)
    {
      v14 = 0;
      *(this + 570) = 0;
    }

    [*(this + 2) setDepthStoreAction:v14];
    v13 = *(this + 1187);
  }

  if ((v13 & 0x200) != 0)
  {
    v16 = *(this + 571);
    if ((*(this + 5033) & 2) != 0)
    {
      if ((v16 | 2) == 3)
      {
        if (*(this + 1150) <= 1u)
        {
          v17 = *(this + 1263);
        }

        else
        {
          v17 = *(this + 1263) | 0x2000;
        }

        *(this + 1263) = v17 | 0x1000;
      }
    }

    else if (v16 == 3)
    {
      *(this + 1263) |= 0x4001000u;
      *(this + 53) |= 0x4000000uLL;
      v16 = 2;
      *(this + 571) = 2;
    }

    else if (v16 == 1)
    {
      v16 = 0;
      *(this + 571) = 0;
    }

    [*(this + 2) setStencilStoreAction:v16];
  }

  v18 = *(this + 596);
  GLDQueryStagingBuffer::deferProcessResults(*(this + 595), this, *(this + 594));
  [*(this + 2) endEncoding];
  if (*(this + 2232) != 1)
  {
    goto LABEL_62;
  }

  v19 = *(this + 282);
  v20 = *(this + 288);
  if (!v20)
  {
    v33 = 0;
    goto LABEL_61;
  }

  v21 = 0;
  *&v22 = -1;
  *(&v22 + 1) = -1;
  while (1)
  {
    v23 = (*(this + 287) + 24 * v21);
    v24 = *v23;
    if (v24 == 1)
    {
      v26 = *(this + 280) + 40 * v19;
      *(v26 + 32) = -1;
      *v26 = v22;
      *(v26 + 16) = v22;
      v27 = (*(v23 + 2) - *(v23 + 1) + 3) & 0xFFFFFFFFFFFFFFFCLL;
      *v26 = *v23 >> 8;
      *(v26 + 4) = *(*(this + 284) + 4 * *(v23 + 1));
      v28 = *(v23 + 1);
      *(v26 + 8) = v28;
      *(v26 + 16) = v28 + v27;
      v25 = v21 + 1;
      v20 = *(this + 288);
      if (v21 + 1 < v20)
      {
        v29 = *(this + 287) + 24 * v25;
        if (*v29 == 2)
        {
          v31 = v29 + 8;
          v30 = *(v29 + 8);
          v32 = v30 + ((*(v31 + 8) - v30 + 3) & 0xFFFFFFFFFFFFFFFCLL);
          *(v26 + 24) = v30;
          *(v26 + 32) = v32;
          v25 = v21 + 2;
        }
      }

      v19 = (v19 + 1) % *(this + 281);
      goto LABEL_56;
    }

    if (v24 == 255)
    {
      break;
    }

    v25 = v21 + 1;
LABEL_56:
    v21 = v25;
    if (v25 >= v20)
    {
      goto LABEL_60;
    }
  }

  v25 = v21;
LABEL_60:
  v33 = 24 * v25;
LABEL_61:
  *(this + 282) = v19;
  memset(*(this + 287), 255, v33);
  *(this + 285) = *(this + 284);
LABEL_62:
  v34 = *(this + 1259);
  if ((v34 & 0x100) != 0)
  {
    *(this + 1263) |= 0x40u;
  }

  if ((v34 & 0x200) != 0)
  {
    *(this + 1263) |= 0x80u;
  }

  *(this + 2) = 0;
  *(this + 629) = 0;
  *(this + 1260) = 0;
  *(this + 1263) |= 0x200u;
  if ((*(this + 5087) & 1) != 0 || *(this + 1257) >= 0x10u)
  {

    GLDContextRec::flushContext(this);
  }
}

unint64_t GLDContextRec::buildPipelineStateDescriptor(GLDContextRec *this)
{
  v2 = *(this + 13);
  v3 = v2 + 12288;
  if ((*(this + 2484) & 2) != 0)
  {
    for (i = 0; i != 4; ++i)
    {
      *(this + i + 1084) = *(this + i + 552);
    }

    v4 = *(this + 272) & 0xFFF0B1FFFFFFFFFFLL | ((*(this + 560) == 252) << 41) & 0xFFF0FFFFFFFFFFFFLL | ((*(this + 561) == 253) << 46) & 0xFFF0FFFFFFFFFFFFLL | ((*(this + 1149) & 0xFLL) << 48);
    *(this + 272) = v4;
  }

  else
  {
    v4 = *(this + 272);
  }

  v6 = *(this + 94);
  v7 = 0x2000000000000000;
  if (((*(v2 + 13104) != 0) & v6 & (*(v2 + 13105) == 0)) == 0)
  {
    v7 = 0;
  }

  v8 = v7 | v4 & 0xDFFFFFFFFFFFFFFFLL;
  *(this + 272) = v8;
  v9 = *(this + 2652);
  if (v9 == 1)
  {
    v10 = v8 & 0xFFFF7FFFFFFFFFFFLL;
  }

  else
  {
    v10 = v8 & 0xFFFF7FFFFFFFFFFFLL | ((*(v2 + 15712) == 0) << 47);
  }

  *(this + 272) = v10;
  if ((v10 & 0xE000000000000) == 0)
  {
    *(this + 268) |= 0xFFFFFFFFuLL;
    v14 = v10 & 0x3FF1DFFF00000000 | 0x3F800000;
LABEL_20:
    *(this + 272) = v14;
    goto LABEL_21;
  }

  v11 = v10 & 0xBFFFFFFFFFFFFFFFLL | ((*(v2 + 15410) != 0) << 62);
  *(this + 272) = v11;
  v12 = v11 & 0x7FFFFFFFFFFFFFFFLL | ((*(v2 + 15409) != 0) << 63);
  *(this + 272) = v12;
  if (*(v2 + 15411))
  {
    v13 = *(v2 + 15400);
  }

  else
  {
    v13 = 1065353216;
  }

  v15 = v13 | v12 & 0xFFFFFFFF00000000;
  *(this + 272) = v15;
  *(this + 536) = *(v2 + 15404);
  v16 = v15 & 0xFFFFDFFFFFFFFFFFLL | ((*(v2 + 15412) != 0) << 45);
  *(this + 272) = v16;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v17 = (v6 & 1) << 61;
    if (*(v3 + 817))
    {
      v17 = 0;
    }

    v14 = v17 | v16 & 0xDFFFFFFFFFFFFFFFLL;
    goto LABEL_20;
  }

LABEL_21:
  if (*(this + 2484))
  {
    if (*(this + 49) && (*(this + 5082) & 1) != 0)
    {
      v18 = 1856;
    }

    else
    {
      *(this + 5082) = 0;
      v18 = 1984;
    }

    v19 = this + v18;
    v20 = *(v19 + 3);
    *(this + 131) = *(v19 + 2);
    *(this + 132) = v20;
    *(this + 266) = *(v19 + 8);
    v21 = *(v19 + 1);
    *(this + 129) = *v19;
    *(this + 130) = v21;
  }

  v22 = *(this + 12);
  if (v9)
  {
    result = GLRFunctionCache::getKey((v22 + 216), *(this + 516));
    v24 = result & 0xFFFFFF | (*(this + 1071) << 48);
  }

  else
  {
    result = GLRFunctionCache::getKey((v22 + 216), *(this + 511));
    v25 = *(this + 267) & 0xFFFFFFFFFF000000 | result & 0xFFFFFF;
    *(this + 267) = v25;
    if (*(v3 + 3424))
    {
      v24 = v25 & 0xFFFF000000FFFFFFLL;
    }

    else
    {
      result = GLRFunctionCache::getKey((*(this + 12) + 216), *(this + 515));
      v24 = *(this + 267) & 0xFFFF000000FFFFFFLL | ((result & 0xFFFFFF) << 24);
    }
  }

  *(this + 267) = v24;
  *(this + 621) = 0;
  return result;
}

BOOL GLDContextRec::setRenderTexturesAndSamplersInternal(GLDContextRec *this, unsigned int a2, int *a3, void *a4, void *a5, float a6)
{
  v39 = *a3;
  v10 = *(this + a2 + 188);
  if (v10)
  {
    v11 = *(*(*(this + a2 + 183) + 24) + 72);
    if (v11)
    {
      v13 = *v11;
      v12 = v11 + 1;
      v45 = v13;
      if (v13)
      {
        v14 = 0;
        v15 = *(*(v10 + 24) + 48);
        v43 = this + 3576;
        v44 = this + 1208;
        v41 = this + 952;
        v42 = this + 1816;
        v40 = v12;
        do
        {
          v16 = *(v15 + 4 * v12[v14]);
          if ((*(this + 661) & (1 << v16)) != 0)
          {
            v17 = *&v44[8 * v16];
            if (v17)
            {
              v18 = *(v17 + 24);
              LOBYTE(a6) = v42[v16];
              v19 = LODWORD(a6);
              if (*(v18 + 20) >= v19)
              {
                v20 = v19;
              }

              else
              {
                v20 = *(v18 + 20);
              }

              if (*(v18 + 24) >= v19)
              {
                v21 = v19;
              }

              else
              {
                v21 = *(v18 + 24);
              }

              v22 = *(v17 + 40);
              GLRResourceList::addResource(*(this + 8), v22);
              (a4[1])(*(this + 2), *a4, *(v22 + 32), v14, v20, v21);
            }
          }

          if ((*(this + 660) & (1 << v16)) != 0)
          {
            v23 = *&v43[8 * v16];
            *a3 &= ~(1 << v14);
            if (v23)
            {
              v24 = *&v41[8 * v16];
              if (*(v24 + 136))
              {
                GLDContextRec::dispatchImageQueueEvent(this, v24);
                v24 = *&v41[8 * v16];
              }

              if (*(v24 + 74) == 1)
              {
                *a3 |= 1 << v14;
              }

              v25 = *(v23 + 40);
              GLRResourceList::addResource(*(this + 8), v23);
              GLRResourceList::addResource(*(this + 8), v25);
              (a5[1])(*(this + 2), *a5, *(v25 + 32), v14);
              v12 = v40;
            }
          }

          ++v14;
        }

        while (v45 != v14);
      }
    }
  }

  else
  {
    for (i = 0; i != 16; ++i)
    {
      v27 = 1 << i;
      v28 = (this + 8 * i);
      if ((*(this + 661) & (1 << i)) != 0)
      {
        v29 = v28[151];
        if (v29)
        {
          v30 = *(v29 + 24);
          LOBYTE(a6) = *(this + i + 1816);
          v31 = LODWORD(a6);
          if (*(v30 + 20) >= v31)
          {
            v32 = v31;
          }

          else
          {
            v32 = *(v30 + 20);
          }

          if (*(v30 + 24) >= v31)
          {
            v33 = v31;
          }

          else
          {
            v33 = *(v30 + 24);
          }

          v34 = *(v29 + 40);
          GLRResourceList::addResource(*(this + 8), v34);
          (a4[1])(*(this + 2), *a4, *(v34 + 32), i, v32, v33);
        }
      }

      if ((*(this + 660) & v27) != 0)
      {
        v35 = v28[447];
        *a3 &= ~v27;
        if (v35)
        {
          v36 = v28[119];
          if (*(v36 + 136))
          {
            GLDContextRec::dispatchImageQueueEvent(this, v36);
            v36 = v28[119];
          }

          if (*(v36 + 74) == 1)
          {
            *a3 |= v27;
          }

          v37 = *(v35 + 40);
          GLRResourceList::addResource(*(this + 8), v35);
          GLRResourceList::addResource(*(this + 8), v37);
          (a5[1])(*(this + 2), *a5, *(v37 + 32), i);
        }
      }
    }
  }

  return v39 != *a3;
}

BOOL GLDContextRec::setRenderSamplersAndTextures(GLDContextRec *this, float a2)
{
  if (GLDContextRec::setRenderTexturesAndSamplersInternal(this, 0, this + 664, this + 439, this + 435, a2))
  {
    *(this + 546) = *(this + 664);
    *(this + 618) |= 8u;
  }

  result = GLDContextRec::setRenderTexturesAndSamplersInternal(this, 4u, this + 665, this + 441, this + 437, v3);
  if (result)
  {
    *(this + 547) = *(this + 665);
    *(this + 618) |= 8u;
  }

  return result;
}

uint64_t GLDContextRec::setRenderVertexBuffers(uint64_t this)
{
  v1 = this;
  v2 = *(this + 316);
  if (v2)
  {
    v3 = (this + 320);
    v4 = this + 2800;
    v5 = 15;
    do
    {
      v6 = *v3++;
      v7 = *(v1 + 336 + v6);
      v8 = *(v1 + 2668);
      if (((1 << v7) & v8) != 0)
      {
        *(v1 + 2668) = (1 << v7) ^ v8;
        v9 = *(v1 + 2672 + 8 * v7);
        v10 = *(v4 + 4 * v7);
        v11 = *(v9 + 40);
        GLRResourceList::addResource(*(v1 + 64), v9);
        this = (*(v1 + 3456))(*(v1 + 16), *(v1 + 3448), v11, v10, v5);
      }

      else
      {
        this = (*(v1 + 3552))(*(v1 + 16), *(v1 + 3544), *(v4 + 4 * v7), v5);
      }

      ++v5;
      --v2;
    }

    while (v2);
  }

  v12 = *(v1 + 2864);
  if (v12)
  {
    v13 = *(v1 + 64);

    return GLRResourceList::addResource(v13, v12);
  }

  return this;
}

uint64_t GLDContextRec::setRenderVertexCurrents(GLDContextRec *this)
{
  v14 = *MEMORY[0x29EDCA608];
  v1 = *(this + 69);
  if (v1)
  {
    v2 = *(this + 13);
    v3 = v2 + 6160;
    v4 = this + 280;
    v5 = v2 + 6416;
    v6 = v13;
    v7 = *(this + 69);
    do
    {
      v8 = *v4++;
      v9 = (v5 + 32 * (v8 - 16));
      v10 = (v3 + 16 * v8);
      if (v8 >= 0x10)
      {
        v10 = v9;
      }

      *v6++ = *v10;
      --v7;
    }

    while (v7);
  }

  result = (*(this + 428))(*(this + 2), *(this + 427), v13, 16 * v1, 14);
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GLDContextRec::setRenderPrimitiveCurrents(GLDContextRec *this)
{
  v14 = *MEMORY[0x29EDCA608];
  v1 = *(this + 74);
  if (v1)
  {
    v2 = *(this + 13);
    v3 = v2 + 6160;
    v4 = this + 300;
    v5 = v2 + 6416;
    v6 = v13;
    v7 = *(this + 74);
    do
    {
      v8 = *v4++;
      v9 = (v5 + 32 * (v8 - 16));
      v10 = (v3 + 16 * v8);
      if (v8 >= 0x10)
      {
        v10 = v9;
      }

      *v6++ = *v10;
      --v7;
    }

    while (v7);
  }

  result = (*(this + 428))(*(this + 2), *(this + 427), v13, 16 * v1, 14);
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GLDContextRec::setRenderUniformBuffersInternal(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v9 = result;
    for (i = 0; i != a4; ++i)
    {
      v11 = *(a2 + 8 * i);
      if (v11)
      {
        GLRResourceList::addResource(*(v9 + 64), *(a2 + 8 * i));
        result = (*(a5 + 8))(*(v9 + 16), *a5, *(v11 + 40), *(a3 + 8 * i), i);
      }
    }
  }

  return result;
}

uint64_t GLDContextRec::setRenderUniformBuffers(GLDContextRec *this)
{
  GLDContextRec::setRenderUniformBuffersInternal(this, this + 2872, this + 3096, 12, this + 3448);

  return GLDContextRec::setRenderUniformBuffersInternal(this, this + 2968, this + 3192, 12, this + 3464);
}

uint64_t GLDContextRec::setRenderProgramUniformsInternal(uint64_t this, unsigned int a2, uint64_t *a3, uint64_t a4)
{
  v4 = this;
  v5 = *(this + 8 * a2 + 1504);
  if (v5)
  {
    v6 = *(v5 + 24);
    v7 = *(v6 + 40);
    if (!v7)
    {
      return this;
    }

    v8 = 16 * v7;
    if (v7 >= 0x101)
    {
      __dst = 0;
      v19 = 0;
      VertexBuffer = GLDContextRec::getVertexBuffer(this, 16 * v7, &__dst, &v19);
      memcpy(__dst, *(v6 + 32), v8);
      return (*(a4 + 8))(*(v4 + 16), *a4, VertexBuffer, v19, 12);
    }

    v13 = *(this + 16);
    v15 = *a3;
    v16 = a3[1];
    v17 = *(v6 + 32);
    v14 = 16 * v7;
  }

  else
  {
    if (!*(this + 8 * a2 + 1464))
    {
      return this;
    }

    v11 = *(this + 104) + 16 * a2;
    v12 = *(v11 + 15636);
    if (!v12)
    {
      return this;
    }

    v13 = *(this + 16);
    v14 = 16 * v12;
    v15 = *a3;
    v16 = a3[1];
    v17 = *(v11 + 15640);
  }

  return v16(v13, v15, v17, v14, 12);
}

uint64_t GLDContextRec::setRenderProgramUniforms(GLDContextRec *this)
{
  GLDContextRec::setRenderProgramUniformsInternal(this, 0, this + 427, this + 3448);

  return GLDContextRec::setRenderProgramUniformsInternal(this, 4u, this + 429, this + 3464);
}

uint64_t GLDContextRec::updateRenderBlendState(uint64_t this)
{
  v1 = this;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = *(this + 104);
  v6 = *(v5 + 12848);
  v7 = (v5 + 12746);
  v8 = 4416;
  do
  {
    v9 = v1 + v2;
    v10 = v1 + 4 * v3;
    if (*(v1 + v8))
    {
      v11 = ((1 << v3) & v6) == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11 || ((*(v1 + 2624) | *(v1 + 2620)) & (1 << v3)) != 0)
    {
      if (!*(v9 + 2508))
      {
        goto LABEL_10;
      }

      *(v9 + 2508) = 0;
      *(v9 + 2496) = 65537;
      *(v1 + v2 + 2504) = -2147057658;
      v12 = *(v10 + 2152) & 0xFF800000 | 0x880;
      goto LABEL_9;
    }

    *(v1 + 424) |= 2uLL;
    if (!*(v1 + v2 + 2508))
    {
      v4 = 1;
      *(v1 + v2 + 2508) = 1;
      *(v10 + 2152) |= 1u;
    }

    v13 = *(v7 - 5);
    if (*(v9 + 2496) != v13)
    {
      *(v9 + 2496) = v13;
      *(v10 + 2152) = *(v10 + 2152) & 0xFFFFF87F | (getMTLBlendFactor(v13) << 7);
      v4 = 1;
    }

    v14 = v1 + v2;
    v15 = *(v7 - 3);
    if (*(v1 + v2 + 2498) != v15)
    {
      *(v14 + 2498) = v15;
      *(v10 + 2152) = *(v10 + 2152) & 0xFFFF87FF | (getMTLBlendFactor(v15) << 11);
      v4 = 1;
    }

    v16 = *(v7 - 4);
    if (*(v14 + 2500) != v16)
    {
      *(v14 + 2500) = v16;
      *(v10 + 2152) = *(v10 + 2152) & 0xFFF87FFF | (getMTLBlendFactor(v16) << 15);
      v4 = 1;
    }

    v17 = v1 + v2;
    v18 = *(v7 - 2);
    if (*(v1 + v2 + 2502) != v18)
    {
      *(v17 + 2502) = v18;
      *(v10 + 2152) = *(v10 + 2152) & 0xFF87FFFF | (getMTLBlendFactor(v18) << 19);
      v4 = 1;
    }

    v19 = *(v7 - 1);
    if (*(v17 + 2504) != v19)
    {
      *(v17 + 2504) = v19;
      *(v10 + 2152) = *(v10 + 2152) & 0xFFFFFFF1 | (2 * getMTLBlendOperation(v19));
      v4 = 1;
    }

    this = *v7;
    if (*(v1 + v2 + 2506) != this)
    {
      *(v1 + v2 + 2506) = this;
      this = getMTLBlendOperation(this);
      v12 = *(v10 + 2152) & 0xFFFFFF8F | (16 * this);
LABEL_9:
      *(v10 + 2152) = v12;
      v4 = 1;
    }

LABEL_10:
    ++v3;
    v2 += 14;
    v7 += 6;
    v8 += 8;
  }

  while (v2 != 56);
  if (v4)
  {
    *(v1 + 2472) |= 8u;
  }

  return this;
}

uint64_t getMTLBlendFactor(int a1)
{
  if (a1 <= 772)
  {
    if (a1 <= 768)
    {
      switch(a1)
      {
        case 0:
          return 0;
        case 1:
          return 1;
        case 768:
          return 2;
      }

      goto LABEL_33;
    }

    if (a1 > 770)
    {
      if (a1 == 771)
      {
        return 5;
      }

      else
      {
        return 8;
      }
    }

    else if (a1 == 769)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    if (a1 <= 0x8000)
    {
      if (a1 <= 774)
      {
        if (a1 == 773)
        {
          return 9;
        }

        else
        {
          return 6;
        }
      }

      if (a1 == 775)
      {
        return 7;
      }

      if (a1 == 776)
      {
        return 10;
      }

LABEL_33:
      v2 = MTLReleaseAssertionFailure();
      return getMTLBlendOperation(v2);
    }

    if (a1 > 32770)
    {
      if (a1 == 32771)
      {
        return 13;
      }

      if (a1 == 32772)
      {
        return 14;
      }

      goto LABEL_33;
    }

    if (a1 == 32769)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t getMTLBlendOperation(__int16 a1)
{
  if (a1 + 32762) < 6u && ((0x37u >> (a1 - 6)))
  {
    return qword_29D37A5F8[(a1 + 32762)];
  }

  v2 = MTLReleaseAssertionFailure();
  return GLDContextRec::updateRenderColorMaskMode(v2);
}

uint64_t GLDContextRec::updateRenderColorMaskMode(uint64_t this)
{
  v1 = 0;
  v2 = (*(this + 104) + 12288);
  do
  {
    v3 = *(this + 4416 + 8 * v1);
    if (v3)
    {
      v4 = 1 << v1;
      if (((1 << v1) & v2[777]) != 0)
      {
        v5 = (8 * (((1 << v1) & v2[776]) != 0)) | 4;
      }

      else
      {
        v5 = 8 * (((1 << v1) & v2[776]) != 0);
      }

      if ((v4 & v2[778]) != 0)
      {
        v5 |= 2uLL;
      }

      if ((v4 & v2[779]) != 0)
      {
        v3 = v5 + 1;
      }

      else
      {
        v3 = v5;
      }
    }

    if (v3 != *(this + v1 + 2608))
    {
      *(this + v1 + 2608) = v3;
      *(this + 4 * v1 + 2152) = *(this + 4 * v1 + 2152) & 0xF87FFFFF | ((v3 & 0xF) << 23);
      *(this + 2472) |= 8u;
      v6 = 1 << v1;
      if (v3)
      {
        v7 = *(this + 5044) | v6;
      }

      else
      {
        v7 = *(this + 5044) & ~v6;
      }

      *(this + 5044) = v7;
    }

    ++v1;
  }

  while (v1 != 4);
  return this;
}

uint64_t GLDContextRec::updateRenderClipPlanes(uint64_t this)
{
  *(this + 2180) = *(*(this + 104) + 15300);
  *(this + 2472) |= 8u;
  return this;
}

uint64_t GLDContextRec::updateRenderLineMode(uint64_t this)
{
  if (*(*(this + 104) + 13032) >= 1.0)
  {
    v1 = *(*(this + 104) + 13032);
  }

  else
  {
    v1 = 1.0;
  }

  v2 = roundf(v1);
  if (*(this + 4596) > 1u)
  {
    v2 = *(*(this + 104) + 13032);
  }

  *(this + 5208) = v2;
  v3 = 16.0;
  if (v2 > 16.0 || (v3 = 1.0, v2 < 1.0))
  {
    *(this + 5208) = v3;
  }

  *(this + 2472) |= 0x2000u;
  return this;
}

uint64_t GLDContextRec::updateRenderPolygonMode(uint64_t this)
{
  v1 = *(this + 104);
  if (*(v1 + 13265))
  {
    *(this + 424) |= 0x20uLL;
    v2 = *(v1 + 13248);
    v3 = *(v1 + 13244);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  *(this + 5200) = v2;
  *(this + 5204) = v3;
  *(this + 5112) = 0;
  if (!*(v1 + 13262))
  {
    v5 = 0;
    goto LABEL_10;
  }

  *(this + 424) |= 4uLL;
  v4 = *(v1 + 13258);
  v5 = 1;
  switch(v4)
  {
    case 1028:
LABEL_10:
      *(this + 5104) = v5;
      LOBYTE(v5) = 0;
      goto LABEL_11;
    case 1032:
LABEL_11:
      *(this + 5081) = v5;
      break;
    case 1029:
      v5 = 2;
      goto LABEL_10;
  }

  *(this + 5096) = *(this + 5080) != (*(v1 + 13256) == 2304);
  *(this + 2472) |= 0x100u;
  return this;
}

uint64_t GLDContextRec::setRenderPolygonMode(id *this)
{
  [this[2] setFrontFacingWinding:this[637]];
  [this[2] setCullMode:this[638]];
  LODWORD(v2) = *(this + 1300);
  LODWORD(v3) = *(this + 1301);
  [this[2] setDepthBias:v2 slopeScale:v3 clamp:0.0];
  v4 = this[2];
  v5 = this[639];

  return [v4 setTriangleFillMode:v5];
}

uint64_t GLDContextRec::updateRenderPrimitiveRestart(uint64_t this)
{
  *(this + 5084) = *(*(this + 104) + 15444) != 0;
  *(this + 2472) |= 0x8000u;
  return this;
}

uint64_t GLDContextRec::updateRenderDepthStencil(uint64_t this)
{
  v1 = this;
  v2 = 0x700700700000000;
  v24 = 0x700700700000000;
  v3 = *(this + 104);
  v4 = v3 + 12288;
  if ((*(v3 + 13372) & 1) != 0 && *(this + 4488))
  {
    *(this + 424) |= 0x800uLL;
    v5 = *(v3 + 13328);
    if (*(this + 5212) == v5)
    {
      v6 = *(v3 + 13360);
      if (*(this + 5216) == v6)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v6 = *(v3 + 13360);
    }

    *(this + 5212) = v5;
    *(this + 5216) = v6;
    *(this + 2472) |= 0x80u;
LABEL_8:
    v7 = *(v3 + 13324);
    v8 = *(v3 + 13052);
    v9 = *(v3 + 13332);
    MTLStencilOperation = getMTLStencilOperation(*(v3 + 13334));
    v11 = getMTLStencilOperation(*(v3 + 13336));
    v12 = getMTLStencilOperation(*(v3 + 13338));
    v13 = v7 & 0xFFFF00FF | (v8 << 8) | ((v9 & 7) << 32) | (MTLStencilOperation << 35) | (v11 << 38);
    v14 = *(v3 + 13356);
    v15 = *(v3 + 13060);
    v16 = *(v4 + 1076);
    v17 = getMTLStencilOperation(*(v4 + 1078));
    v18 = getMTLStencilOperation(*(v4 + 1080));
    this = getMTLStencilOperation(*(v4 + 1082));
    v2 = ((v14 << 16) | (v15 << 24) | ((v16 & 7) << 44) | (v17 << 47) | (v18 << 50) | (this << 53)) + (v13 | (v12 << 41)) + 0x700000000000000;
    v24 = v2;
    v3 = *(v1 + 104);
  }

  if (*(v3 + 12932) && *(v1 + 4480))
  {
    v2 = v2 & 0xF0FFFFFFFFFFFFFFLL | ((*(v3 + 12928) & 7) << 56) | ((*(v4 + 780) != 0) << 59);
    v24 = v2;
  }

  if (v2 != *(v1 + 2312))
  {
    *(v1 + 2312) = v2;
    DepthStencilStateFromKey = GLDDeviceRec::getDepthStencilStateFromKey(*(v1 + 96), &v24);
    *(v1 + 2464) = DepthStencilStateFromKey;
    *(v1 + 2472) |= 0x40u;
    if ([DepthStencilStateFromKey writesStencil])
    {
      v20 = 512;
    }

    else
    {
      v20 = 0;
    }

    *(v1 + 5044) = *(v1 + 5044) & 0xFFFFFDFF | v20;
    if ([*(v1 + 2464) readsStencil])
    {
      v21 = 512;
    }

    else
    {
      v21 = 0;
    }

    *(v1 + 5048) = *(v1 + 5048) & 0xFFFFFDFF | v21;
    if ([*(v1 + 2464) writesDepth])
    {
      v22 = 256;
    }

    else
    {
      v22 = 0;
    }

    *(v1 + 5044) = *(v1 + 5044) & 0xFFFFFEFF | v22;
    this = [*(v1 + 2464) readsDepth];
    if (this)
    {
      v23 = 256;
    }

    else
    {
      v23 = 0;
    }

    *(v1 + 5048) = *(v1 + 5048) & 0xFFFFFEFF | v23;
  }

  return this;
}

uint64_t getMTLStencilOperation(int a1)
{
  if (a1 > 7681)
  {
    if (a1 > 34054)
    {
      if (a1 == 34055)
      {
        return 6;
      }

      if (a1 == 34056)
      {
        return 7;
      }
    }

    else
    {
      if (a1 == 7682)
      {
        return 3;
      }

      if (a1 == 7683)
      {
        return 4;
      }
    }

    goto LABEL_19;
  }

  if (a1 <= 7679)
  {
    if (!a1)
    {
      return 1;
    }

    if (a1 == 5386)
    {
      return 5;
    }

LABEL_19:
    v2 = MTLReleaseAssertionFailure();
    return GLDContextRec::setRenderDepthStencilState(v2);
  }

  if (a1 == 7680)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t GLDContextRec::setRenderState(uint64_t this, int a2)
{
  v2 = *(this + 2472) & a2;
  *(this + 2476) = v2;
  if (v2)
  {
    v4 = this;
    do
    {
      v5 = __clz(__rbit32(v2));
      v6 = *(v4 + 2488) + 16 * v5;
      v7 = *v6;
      v8 = *(v6 + 8);
      v9 = (v4 + (v8 >> 1));
      if (v8)
      {
        v7 = *(*v9 + v7);
      }

      this = v7(v9);
      v10 = *(v4 + 2472) ^ (1 << v5);
      *(v4 + 2472) = v10;
      v2 = v10 & a2;
    }

    while (v2);
  }

  return this;
}

__n128 GLDContextRec::setRenderVertexArrayState(GLDContextRec *this)
{
  v2 = *(this + 49);
  if (v2)
  {
    GLDContextRec::buildVertexArrayDescriptor(this, *(this + 183), v2);
  }

  v4 = veor_s8(*(this + 1920), *(this + 2128));
  result.n128_u64[0] = vpmax_u32(v4, v4);
  if (vmaxvq_u32(vorrq_s8(vorrq_s8(veorq_s8(*(this + 117), *(this + 130)), veorq_s8(*(this + 116), *(this + 129))), vorrq_s8(veorq_s8(*(this + 118), *(this + 131)), veorq_s8(*(this + 119), *(this + 132))))) + result.n128_u32[0])
  {
    v5 = *(this + 119);
    *(this + 131) = *(this + 118);
    *(this + 132) = v5;
    *(this + 266) = *(this + 240);
    result = *(this + 117);
    *(this + 129) = *(this + 116);
    *(this + 130) = result;
    *(this + 618) |= 8u;
    *(this + 621) |= 1u;
  }

  return result;
}

__n128 GLDContextRec::setRenderPrimitiveBufferState(GLDContextRec *this)
{
  v1 = veor_s8(*(this + 2048), *(this + 2128));
  result.n128_u64[0] = vpmax_u32(v1, v1);
  if (vmaxvq_u32(vorrq_s8(vorrq_s8(veorq_s8(*(this + 125), *(this + 130)), veorq_s8(*(this + 124), *(this + 129))), vorrq_s8(veorq_s8(*(this + 126), *(this + 131)), veorq_s8(*(this + 127), *(this + 132))))) + result.n128_u32[0])
  {
    v3 = *(this + 127);
    *(this + 131) = *(this + 126);
    *(this + 132) = v3;
    *(this + 266) = *(this + 256);
    result = *(this + 125);
    *(this + 129) = *(this + 124);
    *(this + 130) = result;
    *(this + 618) |= 8u;
    *(this + 621) |= 1u;
  }

  return result;
}

double GLDContextRec::setRenderPipeline(GLDContextRec *this)
{
  GLDContextRec::buildPipelineStateDescriptor(this);
  Value = CFDictionaryGetValue(*(this + 274), this + 2064);
  if (!Value)
  {
    RenderPipelineStateFromKey = GLDDeviceRec::getRenderPipelineStateFromKey(*(this + 12), (this + 2064));
    if (!RenderPipelineStateFromKey)
    {
      result = 0.0;
      *(this + 2200) = 0u;
      return result;
    }

    Value = RenderPipelineStateFromKey;
    CFDictionarySetValue(*(this + 274), this + 2064, RenderPipelineStateFromKey);
  }

  *(this + 275) = Value[1];
  *(this + 276) = Value[2];
  [*(this + 2) setRenderPipelineState:?];
  v5 = *(this + 276);
  if ((v5 & 0x40) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    *(this + 53) |= 0x800000uLL;
    if ((v5 & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

  *(this + 1263) |= 0x20000u;
  if ((v5 & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  if ((v5 & 0x10) != 0)
  {
LABEL_10:
    *(this + 53) |= 0x1000000uLL;
  }

  return result;
}

double GLDContextRec::updateRenderViewport(GLDContextRec *this, double a2, double a3, double a4, double a5, float a6)
{
  v6 = *(this + 13);
  v7 = v6[1736];
  v8 = v6[1742];
  if (*(this + 5080) == 1)
  {
    LOWORD(a6) = *(*(*(this + 50) + 32) + 180);
    v9 = LODWORD(a6);
    v10 = v6[1737];
    v11 = v9 - (v6[1741] + v10);
    v12 = 2.0;
  }

  else
  {
    v10 = v6[1737];
    v11 = v6[1741] + v10;
    v12 = -2.0;
  }

  v13 = (v8 + v6[1738]);
  result = (v6[1740] - v7);
  *(this + 640) = result;
  *(this + 641) = v11;
  *(this + 642) = v7 + v7;
  *(this + 643) = v12 * v10;
  *(this + 644) = v8;
  *(this + 645) = v13;
  *(this + 618) |= 0x10u;
  return result;
}

uint64_t GLDContextRec::setRenderViewport(id *this, double a2, double a3, double a4, double a5, float a6)
{
  GLDContextRec::updateRenderViewport(this, a2, a3, a4, a5, a6);
  v7 = this[2];
  v8 = *(this + 321);
  v10[0] = *(this + 320);
  v10[1] = v8;
  v10[2] = *(this + 322);
  [v7 setViewport:v10];
  return [this[2] setViewportTransformEnabled:*(this[13] + 2) == 0];
}

int64x2_t *GLDContextRec::updateRenderScissor(int64x2_t *this)
{
  v1 = *(this[25].i64[0] + 32);
  v2.i32[0] = *(v1 + 178);
  v2.i32[1] = *(v1 + 180);
  v3 = this[6].i64[1] + 12288;
  if (*(this[6].i64[1] + 13284))
  {
    this[26].i64[1] |= 0x400uLL;
    v4 = vmax_s32(*(v3 + 980), 0);
    v5 = vadd_s32(*(v3 + 988), vmin_s32(*(v3 + 980), 0));
    v6 = vbsl_s8(vcgt_s32(vadd_s32(v5, v4), v2), vsub_s32(v2, v4), v5);
    LODWORD(v3) = v4.i32[0];
    if (this[317].i8[8] == 1)
    {
      LODWORD(v7) = vsub_s32(v2, vadd_s32(v4, v6)).i32[1];
    }

    else
    {
      LODWORD(v7) = v4.i32[1];
    }

    v2 = v6;
  }

  else
  {
    LODWORD(v3) = 0;
    LODWORD(v7) = 0;
  }

  if (v2.i32[0] < 1 || v2.i32[1] < 1)
  {
    v3 = 0;
    v7 = 0;
    v9 = 1;
    v11 = vdupq_n_s64(1uLL);
  }

  else
  {
    v9 = 0;
    v7 = v7;
    v10.i64[0] = v2.u32[0];
    v10.i64[1] = v2.u32[1];
    v11 = v10;
    v3 = v3;
  }

  this[317].i8[11] = v9;
  this[323].i64[0] = v3;
  this[323].i64[1] = v7;
  this[324] = v11;
  this[154].i32[2] |= 0x20u;
  return this;
}

uint64_t GLDContextRec::setRenderScissor(GLDContextRec *this)
{
  v1 = *(this + 2);
  v2 = *(this + 324);
  v4[0] = *(this + 323);
  v4[1] = v2;
  return [v1 setScissorRect:v4];
}

uint64_t GLDContextRec::setRenderBlendColors(GLDContextRec *this, double a2, double a3, double a4, double a5)
{
  v5 = *(this + 13);
  LODWORD(a2) = v5[3208];
  LODWORD(a3) = v5[3209];
  LODWORD(a4) = v5[3210];
  LODWORD(a5) = v5[3211];
  return [*(this + 2) setBlendColorRed:a2 green:a3 blue:a4 alpha:a5];
}

uint64_t GLDContextRec::updateRenderAlphaTestState(uint64_t this)
{
  v1 = *(this + 104);
  v2 = *(v1 + 12732);
  v3 = *(v1 + 12734);
  if (v2 != *(this + 5220) || v3 != *(this + 5222))
  {
    *(this + 5220) = v2;
    v4 = v3 != 0;
    *(this + 5222) = v4;
    *(this + 2176) = ((v2 & 7) << 57) | (v4 << 60) | *(this + 2176) & 0xE1FFFFFFFFFFFFFFLL;
    *(this + 2472) |= 8u;
    if (v3)
    {
      *(this + 424) |= 1uLL;
    }
  }

  v5 = *(v1 + 12728);
  if (v5 != *(this + 5224))
  {
    *(this + 5224) = v5;
    *(this + 2472) |= 0x4000u;
  }

  return this;
}

uint64_t GLDContextRec::updateRenderLogicOpState(uint64_t this)
{
  v1 = *(this + 104) + 12288;
  v2 = *(this + 2176) & 0xFEFFFFFFFFFFFFFFLL | ((*(*(this + 104) + 13047) != 0) << 56);
  *(this + 2176) = v2;
  *(this + 2176) = v2 & 0xFF0FFFFFFFFFFFFFLL | ((_glLogicOpTable[*(v1 + 756) - 5376] & 0xF) << 52);
  *(this + 2472) |= 8u;
  return this;
}

void GLDVertexArrayRec::~GLDVertexArrayRec(GLDVertexArrayRec *this)
{
  GLDObject::~GLDObject(this);

  GLDObject::operator delete(v1);
}

uint64_t GLDVertexArrayRec::dealloc(id *this)
{

  return GLDObject::dealloc(this);
}

BOOL GLDVertexArrayRec::updateBuffers(GLDVertexArrayRec *this, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 4) != 0)
  {
    v4 = *(*(this + 7) + 256);
    if (v4)
    {
      LOBYTE(v4) = GLDBufferRec::loadUnlocked(v4);
    }

    *(this + 64) = v4;
  }

  v5 = *(*(this + 6) + 768) & v2;
  if (v5)
  {
    do
    {
      v6 = __clz(__rbit64(v5));
      v7 = 1 << v6;
      v8 = (1 << v6) ^ v5;
      if (GLDBufferRec::loadUnlocked(*(*(this + 7) + 8 * v6 - 128)))
      {
        v9 = v7 == v5;
      }

      else
      {
        v2 = 0;
        v9 = 1;
      }

      v5 = v8;
    }

    while (!v9);
  }

  return v2 != 0;
}

uint64_t glrVertexFormatComponentAttribSizeTypeAlignment(MTLVertexFormat a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = &glrSupportedVertexFormatTableData + 16 * a1;
  *a2 = v3[11];
  *a3 = v3[10];
  return v3[9];
}

uint64_t glrConvertVertexElementType(int a1, int a2)
{
  v2 = a1 & 0xFFFF9FFF;
  if ((a1 & 0x2000) != 0)
  {
    if (v2 > 5122)
    {
      if (v2 == 5123)
      {
        if (a2 == 1)
        {
          return 51;
        }

        if (a2 >= 2)
        {
          return a2 + 17;
        }
      }

      else if (v2 == 33640)
      {
        if (a2 == 4)
        {
          return 41;
        }
      }

      else if (v2 == 36255 && a2 == 4)
      {
        return 40;
      }
    }

    else
    {
      switch(v2)
      {
        case 5120:
          if (a2 == 1)
          {
            return 48;
          }

          if (a2 >= 2)
          {
            return a2 + 8;
          }

          break;
        case 5121:
          if (a2 == 1)
          {
            return 47;
          }

          if (a2 >= 2)
          {
            return a2 + 5;
          }

          break;
        case 5122:
          if (a2 == 1)
          {
            return 52;
          }

          if (a2 >= 2)
          {
            return a2 + 20;
          }

          break;
      }
    }

    return 0;
  }

  if (v2 <= 5123)
  {
    if (v2 > 5121)
    {
      if (v2 == 5122)
      {
        if (a2 == 1)
        {
          return 50;
        }

        if (a2 >= 2)
        {
          return a2 + 14;
        }
      }

      else
      {
        if (a2 == 1)
        {
          return 49;
        }

        if (a2 >= 2)
        {
          return a2 + 11;
        }
      }
    }

    else if (v2 == 5120)
    {
      if (a2 == 1)
      {
        return 46;
      }

      if (a2 >= 2)
      {
        return a2 + 2;
      }
    }

    else if (v2 == 5121)
    {
      v3 = a2 - 1;
      if (a2 == 1)
      {
        return 45;
      }

      if (a2 >= 2)
      {
        return v3;
      }
    }

    return 0;
  }

  if (v2 <= 5125)
  {
    if (v2 == 5124)
    {
      if (a2 < 1)
      {
        return 0;
      }

      return (a2 + 31);
    }

    else
    {
      if (a2 < 1)
      {
        return 0;
      }

      return (a2 + 35);
    }
  }

  if (v2 == 5131)
  {
    if (a2 == 1)
    {
      return 53;
    }

    if (a2 >= 2)
    {
      return a2 + 23;
    }

    return 0;
  }

  if (v2 == 5126 && a2 >= 1)
  {
    return (a2 + 27);
  }

  return 0;
}