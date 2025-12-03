@interface _MTL4CompilerTask
- (_MTL4CompilerTask)initWithCompiler:(id)compiler;
- (id).cxx_construct;
- (int64_t)status;
- (void)clearInternalCompileTokenIfMatches:(void *)matches;
- (void)dealloc;
- (void)setInternalCompileToken:(void *)token;
- (void)setStatus:(int64_t)status;
- (void)waitUntilCompleted;
@end

@implementation _MTL4CompilerTask

- (void)setInternalCompileToken:(void *)token
{
  pthread_mutex_lock(&self->_statusMutex);
  if (token)
  {
    v5 = *(token + 1);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = v6;
        v8 = *token;
        if (*token)
        {
          v9 = *(v8 + 48);
          if (v9 == token)
          {
            v10 = *(v8 + 56);
            if (v10)
            {
              atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
            }

            cntrl = self->_internalCompileTokenWeak.__cntrl_;
            self->_internalCompileTokenWeak.__ptr_ = v9;
            self->_internalCompileTokenWeak.__cntrl_ = v10;
            if (cntrl)
            {
              std::__shared_weak_count::__release_weak(cntrl);
            }
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }

  else
  {
    v12 = self->_internalCompileTokenWeak.__cntrl_;
    self->_internalCompileTokenWeak.__ptr_ = 0;
    self->_internalCompileTokenWeak.__cntrl_ = 0;
    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  pthread_cond_broadcast(&self->_tokenCondition);

  pthread_mutex_unlock(&self->_statusMutex);
}

- (void)clearInternalCompileTokenIfMatches:(void *)matches
{
  if (matches)
  {
    p_internalCompileTokenWeak = &self->_internalCompileTokenWeak;
    cntrl = self->_internalCompileTokenWeak.__cntrl_;
    if (cntrl)
    {
      v7 = std::__shared_weak_count::lock(cntrl);
      if (v7)
      {
        v8 = v7;
        if (p_internalCompileTokenWeak->__ptr_ == matches)
        {
          v9 = self->_internalCompileTokenWeak.__cntrl_;
          p_internalCompileTokenWeak->__ptr_ = 0;
          self->_internalCompileTokenWeak.__cntrl_ = 0;
          if (v9)
          {
            std::__shared_weak_count::__release_weak(v9);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }
  }

  pthread_cond_broadcast(&self->_tokenCondition);
}

- (void)dealloc
{
  self->_compiler = 0;
  if (self->_tokenConditionInitialized)
  {
    pthread_cond_destroy(&self->_tokenCondition);
  }

  if (self->_statusConditionInitialized)
  {
    pthread_cond_destroy(&self->_statusCondition);
  }

  if (self->_statusMutexInitialized)
  {
    pthread_mutex_destroy(&self->_statusMutex);
  }

  v3.receiver = self;
  v3.super_class = _MTL4CompilerTask;
  [(_MTLObjectWithLabel *)&v3 dealloc];
}

- (_MTL4CompilerTask)initWithCompiler:(id)compiler
{
  v6.receiver = self;
  v6.super_class = _MTL4CompilerTask;
  v4 = [(_MTLObjectWithLabel *)&v6 init];
  v4->_status = 0;
  v4->_statusMutexInitialized = 0;
  v4->_statusConditionInitialized = 0;
  v4->_tokenConditionInitialized = 0;
  v4->_compiler = compiler;
  if (pthread_mutex_init(&v4->_statusMutex, 0) || (v4->_statusMutexInitialized = 1, pthread_cond_init(&v4->_statusCondition, 0)) || (v4->_statusConditionInitialized = 1, pthread_cond_init(&v4->_tokenCondition, 0)))
  {

    return 0;
  }

  else
  {
    v4->_tokenConditionInitialized = 1;
  }

  return v4;
}

- (void)waitUntilCompleted
{
  pthread_mutex_lock(&self->_statusMutex);
  if (self->_status != 3)
  {
    p_internalCompileTokenWeak = &self->_internalCompileTokenWeak;
    while (1)
    {
      while (1)
      {
        cntrl = self->_internalCompileTokenWeak.__cntrl_;
        if (cntrl)
        {
          break;
        }

        status = self->_status;
LABEL_16:
        if (status == 3)
        {
          goto LABEL_2;
        }

        pthread_cond_wait(&self->_statusCondition, &self->_statusMutex);
      }

      status = self->_status;
      if (*(cntrl + 1) == -1)
      {
        goto LABEL_16;
      }

      if (status != 3)
      {
        v6 = std::__shared_weak_count::lock(cntrl);
        if (v6)
        {
          v7 = v6;
          ptr = p_internalCompileTokenWeak->__ptr_;
          if (p_internalCompileTokenWeak->__ptr_)
          {
            pthread_mutex_unlock(&self->_statusMutex);
            MTLCompileToken::waitUntilCompleted(ptr);
            pthread_mutex_lock(&self->_statusMutex);
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        if (self->_status != 3)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_2:

  pthread_mutex_unlock(&self->_statusMutex);
}

- (void)setStatus:(int64_t)status
{
  pthread_mutex_lock(&self->_statusMutex);
  if (self->_status != status)
  {
    self->_status = status;
  }

  pthread_cond_broadcast(&self->_statusCondition);

  pthread_mutex_unlock(&self->_statusMutex);
}

- (int64_t)status
{
  pthread_mutex_lock(&self->_statusMutex);
  status = self->_status;
  pthread_mutex_unlock(&self->_statusMutex);
  return status;
}

- (id).cxx_construct
{
  *(self + 24) = 0;
  *(self + 25) = 0;
  return self;
}

@end