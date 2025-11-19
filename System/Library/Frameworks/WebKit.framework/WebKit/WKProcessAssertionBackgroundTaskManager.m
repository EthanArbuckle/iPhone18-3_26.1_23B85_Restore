@interface WKProcessAssertionBackgroundTaskManager
+ (id)shared;
- (WKProcessAssertionBackgroundTaskManager)init;
- (id).cxx_construct;
- (uint64_t)_handleBackgroundTaskExpirationOnMainThread;
- (uint64_t)_scheduleReleaseTask;
- (uint64_t)_updateBackgroundTask;
- (uint64_t)setProcessStateMonitorEnabled:(uint64_t)a1;
- (void)_cancelPendingReleaseTask;
- (void)_handleBackgroundTaskExpiration;
- (void)_handleBackgroundTaskExpirationOnMainThread;
- (void)_notifyAssertionsOfImminentSuspension;
- (void)_releaseBackgroundTask;
- (void)_scheduleReleaseTask;
- (void)_updateBackgroundTask;
- (void)addAssertionNeedingBackgroundTask:(void *)a3;
- (void)assertion:(id)a3 didInvalidateWithError:(id)a4;
- (void)dealloc;
- (void)removeAssertionNeedingBackgroundTask:(void *)a3;
- (void)setProcessStateMonitorEnabled:(BOOL)a3;
@end

@implementation WKProcessAssertionBackgroundTaskManager

+ (id)shared
{
  if (_MergedGlobals_72 == 1)
  {
    return qword_1ED642578;
  }

  result = objc_opt_new();
  qword_1ED642578 = result;
  _MergedGlobals_72 = 1;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 16) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 40) = 0;
  *(self + 7) = 0;
  return self;
}

- (WKProcessAssertionBackgroundTaskManager)init
{
  v12.receiver = self;
  v12.super_class = WKProcessAssertionBackgroundTaskManager;
  v2 = [(WKProcessAssertionBackgroundTaskManager *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = *MEMORY[0x1E69DDBC0];
    v5 = [MEMORY[0x1E69DC668] sharedApplication];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __47__WKProcessAssertionBackgroundTaskManager_init__block_invoke;
    v11[3] = &unk_1E7632398;
    v11[4] = v2;
    [v3 addObserverForName:v4 object:v5 queue:0 usingBlock:v11];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = *MEMORY[0x1E69DDAC8];
    v8 = [MEMORY[0x1E69DC668] sharedApplication];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__WKProcessAssertionBackgroundTaskManager_init__block_invoke_2;
    v10[3] = &unk_1E7632398;
    v10[4] = v2;
    [v6 addObserverForName:v7 object:v8 queue:0 usingBlock:v10];
  }

  return v2;
}

- (void)_updateBackgroundTask
{
  *a1 = &unk_1F1100BA8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
  }

  return a1;
}

uint64_t __47__WKProcessAssertionBackgroundTaskManager_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelPendingReleaseTask];
  v2 = *(a1 + 32);

  return [v2 _updateBackgroundTask];
}

uint64_t __47__WKProcessAssertionBackgroundTaskManager_init__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _hasBackgroundTask];
  if ((result & 1) == 0)
  {

    return WebKit::WebProcessPool::notifyProcessPoolsApplicationIsAboutToSuspend(result);
  }

  return result;
}

- (void)dealloc
{
  [(WKProcessAssertionBackgroundTaskManager *)self _releaseBackgroundTask];
  v3.receiver = self;
  v3.super_class = WKProcessAssertionBackgroundTaskManager;
  [(WKProcessAssertionBackgroundTaskManager *)&v3 dealloc];
}

- (void)addAssertionNeedingBackgroundTask:(void *)a3
{
  v5 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(a3 + 1);
  if (WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(v5))
  {
    __break(0xC471u);
    return;
  }

  v6 = 0;
  atomic_compare_exchange_strong_explicit(&self->_assertionsNeedingBackgroundTask.m_lock, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    MEMORY[0x19EB01E30](&self->_assertionsNeedingBackgroundTask.m_lock);
  }

  v7 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(a3 + 1);
  v8 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v7);
  m_maxOperationCountWithoutCleanup = self->_assertionsNeedingBackgroundTask.m_maxOperationCountWithoutCleanup;
  v10 = self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup + 1;
  self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup = v10;
  m_table = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
  if (v10 > m_maxOperationCountWithoutCleanup)
  {
    if (m_table)
    {
      v12 = *(m_table - 1);
      if (!v12)
      {
LABEL_18:
        v18 = *(m_table - 1);
        if (6 * *(m_table - 3) < v18 && v18 > 8)
        {
          WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::shrinkToBestSize(&self->_assertionsNeedingBackgroundTask);
          m_table = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
          self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup = 0;
          if (!m_table)
          {
            v20 = 0;
            goto LABEL_28;
          }
        }

        else
        {
          self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup = 0;
        }

        v20 = *(m_table - 3);
        if (v20 > 0x7FFFFFFE)
        {
          v21 = -2;
LABEL_29:
          self->_assertionsNeedingBackgroundTask.m_maxOperationCountWithoutCleanup = v21;
          m_table = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
          goto LABEL_30;
        }

LABEL_28:
        v21 = 2 * v20;
        goto LABEL_29;
      }

      v13 = 0;
      v14 = &m_table[4 * v12 - 4];
      do
      {
        if (*v14 != -1 && *v14 != 0 && WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(*v14))
        {
          v16 = *v14;
          *v14 = 0;
          if (v16)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v16, v15);
          }

          *v14 = -1;
          ++v13;
        }

        v14 -= 2;
        --v12;
      }

      while (v12);
      m_table = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
      if (v13)
      {
        v17 = *(m_table - 3) - v13;
        *(m_table - 4) += v13;
        *(m_table - 3) = v17;
        goto LABEL_18;
      }

      if (m_table)
      {
        goto LABEL_18;
      }
    }

    v20 = 0;
    self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup = 0;
    goto LABEL_28;
  }

LABEL_30:
  if (!m_table)
  {
    WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::expand(&self->_assertionsNeedingBackgroundTask);
    m_table = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
  }

  v22 = *(m_table - 2);
  v23 = WTF::PairHash<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>::hash(v8, a3) & v22;
  v24 = &m_table[4 * v23];
  v25 = *v24;
  v26 = v24[1];
  if (*v24 != 0)
  {
    v27 = 0;
    v28 = 1;
    while (v25 != v8 || v26 != a3)
    {
      if (v25 == -1)
      {
        v27 = v24;
      }

      v23 = (v23 + v28) & v22;
      v24 = &m_table[4 * v23];
      v25 = *v24;
      v26 = v24[1];
      ++v28;
      if (*v24 == 0)
      {
        if (v27)
        {
          *v27 = 0;
          v27[1] = 0;
          --*(self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table - 4);
          v24 = v27;
        }

        goto LABEL_41;
      }
    }

    if (v8)
    {
      WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v8, v24);
    }

    goto LABEL_49;
  }

LABEL_41:
  *v24 = v8;
  v29 = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
  v24[1] = a3;
  if (v29)
  {
    v30 = *(v29 - 3) + 1;
  }

  else
  {
    v30 = 1;
  }

  *(v29 - 3) = v30;
  v31 = (*(v29 - 4) + v30);
  v32 = *(v29 - 1);
  if (v32 > 0x400)
  {
    if (v32 > 2 * v31)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (3 * v32 <= 4 * v31)
  {
LABEL_46:
    WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::expand(&self->_assertionsNeedingBackgroundTask);
  }

LABEL_49:
  v33 = 1;
  atomic_compare_exchange_strong_explicit(&self->_assertionsNeedingBackgroundTask.m_lock, &v33, 0, memory_order_release, memory_order_relaxed);
  if (v33 != 1)
  {
    WTF::Lock::unlockSlow(&self->_assertionsNeedingBackgroundTask.m_lock);
  }

  [(WKProcessAssertionBackgroundTaskManager *)self _updateBackgroundTask];
}

- (void)removeAssertionNeedingBackgroundTask:(void *)a3
{
  v5 = 0;
  p_m_lock = &self->_assertionsNeedingBackgroundTask.m_lock;
  atomic_compare_exchange_strong_explicit(&self->_assertionsNeedingBackgroundTask.m_lock, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x19EB01E30](&self->_assertionsNeedingBackgroundTask.m_lock, a2);
  }

  m_maxOperationCountWithoutCleanup = self->_assertionsNeedingBackgroundTask.m_maxOperationCountWithoutCleanup;
  v8 = self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup + 1;
  self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup = v8;
  if (v8 > m_maxOperationCountWithoutCleanup)
  {
    m_table = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
    if (m_table)
    {
      v10 = *(m_table - 1);
      if (!v10)
      {
LABEL_17:
        v16 = *(m_table - 1);
        if (6 * *(m_table - 3) < v16 && v16 > 8)
        {
          WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::shrinkToBestSize(&self->_assertionsNeedingBackgroundTask);
          m_table = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
          self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup = 0;
          if (!m_table)
          {
            goto LABEL_25;
          }
        }

        else
        {
          self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup = 0;
        }

        LODWORD(m_table) = *(m_table - 3);
        if (m_table > 0x7FFFFFFE)
        {
          v18 = -2;
          goto LABEL_27;
        }

LABEL_25:
        v18 = 2 * m_table;
LABEL_27:
        self->_assertionsNeedingBackgroundTask.m_maxOperationCountWithoutCleanup = v18;
        goto LABEL_28;
      }

      v11 = 0;
      v12 = &m_table[4 * v10 - 4];
      do
      {
        if (*v12 != -1 && *v12 != 0 && WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(*v12))
        {
          v14 = *v12;
          *v12 = 0;
          if (v14)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v14, v13);
          }

          *v12 = -1;
          ++v11;
        }

        v12 -= 2;
        --v10;
      }

      while (v10);
      m_table = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
      if (v11)
      {
        v15 = *(m_table - 3) - v11;
        *(m_table - 4) += v11;
        *(m_table - 3) = v15;
        goto LABEL_17;
      }

      if (m_table)
      {
        goto LABEL_17;
      }
    }

    LODWORD(m_table) = 0;
    self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup = 0;
    goto LABEL_25;
  }

LABEL_28:
  if (*(a3 + 1))
  {
    goto LABEL_64;
  }

  v19 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(a3 + 1);
  if (!WTF::ThreadSafeWeakPtrControlBlock::weakRefCount(v19))
  {
    goto LABEL_64;
  }

  v20 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(a3 + 1);
  v21 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v20);
  v23 = v21;
  v24 = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
  if (!v24)
  {
    v27 = 0;
    goto LABEL_44;
  }

  v25 = *(v24 - 2);
  v26 = WTF::PairHash<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>::hash(v21, a3) & v25;
  v27 = &v24[4 * v26];
  v28 = *v27;
  v29 = *(v27 + 1);
  if (*v27 == v23 && v29 == a3)
  {
LABEL_44:
    if (!v23)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v31 = 1;
  while (v28 | v29)
  {
    v26 = (v26 + v31) & v25;
    v27 = &v24[4 * v26];
    v28 = *v27;
    v29 = *(v27 + 1);
    ++v31;
    if (*v27 == v23 && v29 == a3)
    {
      goto LABEL_44;
    }
  }

  v27 = &v24[4 * *(v24 - 1)];
  if (v23)
  {
LABEL_45:
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v23, v22);
    v24 = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
  }

LABEL_46:
  if (v24)
  {
    v33 = &v24[4 * *(v24 - 1)];
  }

  else
  {
    v33 = 0;
  }

  if (v33 != v27)
  {
    WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(*v27);
    v35 = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
    if (v35)
    {
      v36 = &v35[16 * *(v35 - 1)];
      if (v36 == v27)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (!v27)
      {
        goto LABEL_64;
      }

      v36 = 0;
    }

    if (v36 != v27)
    {
      v37 = *v27;
      *v27 = 0;
      if (v37)
      {
        WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v37, v34);
      }

      *v27 = -1;
      v38 = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
      v39 = vadd_s32(v38[-2], 0xFFFFFFFF00000001);
      v38[-2] = v39;
      v40 = v38[-1].u32[1];
      if (6 * v39.i32[1] < v40 && v40 >= 9)
      {
        WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::rehash(&self->_assertionsNeedingBackgroundTask, v40 >> 1);
      }
    }
  }

LABEL_64:
  v42 = 1;
  atomic_compare_exchange_strong_explicit(p_m_lock, &v42, 0, memory_order_release, memory_order_relaxed);
  if (v42 != 1)
  {

    WTF::Lock::unlockSlow(p_m_lock);
  }
}

- (void)_notifyAssertionsOfImminentSuspension
{
  v3 = 0;
  v39 = 0;
  v40 = 0;
  p_m_lock = &self->_assertionsNeedingBackgroundTask.m_lock;
  atomic_compare_exchange_strong_explicit(&self->_assertionsNeedingBackgroundTask.m_lock, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](&self->_assertionsNeedingBackgroundTask.m_lock, a2);
  }

  v41 = 0;
  v42 = 0;
  m_table = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
  if (!m_table)
  {
    goto LABEL_11;
  }

  v6 = *(m_table - 3);
  if (v6)
  {
    if (v6 >> 29)
    {
      __break(0xC471u);
      return;
    }

    v7 = WTF::fastMalloc((8 * v6));
    LODWORD(v42) = v6;
    v41 = v7;
    v8 = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
    v9 = WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>>,WTF::FastMalloc>::begin(v8);
    v10 = v9;
    v11 = a2;
    if (v8)
    {
      v12 = &v8[2 * *(v8 - 1)];
      if (v12 == v9)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (!v9)
      {
LABEL_32:
        v14 = 0;
LABEL_34:
        v41 = 0;
        LODWORD(v42) = 0;
        WTF::fastFree(v7, a2);
        goto LABEL_35;
      }

      v12 = 0;
    }

    goto LABEL_14;
  }

  v13 = WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>>,WTF::FastMalloc>::begin(self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table);
  v12 = &m_table[4 * *(m_table - 1)];
  if (v12 == v13)
  {
LABEL_11:
    v14 = 0;
    goto LABEL_35;
  }

  v10 = v13;
  v11 = a2;
  v7 = 0;
LABEL_14:
  v14 = 0;
  LODWORD(v15) = 0;
  do
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v44, *v10, *(v10 + 1));
    if (v44)
    {
      v43 = v44;
      if (v15 == v42)
      {
        v16 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v41, v15 + 1, &v43);
        v15 = HIDWORD(v42);
        v7 = v41;
        v17 = *v16;
        *v16 = 0;
        *(v7 + v15) = v17;
      }

      else
      {
        v43 = 0;
        *(v7 + v15) = v44;
      }

      LODWORD(v15) = v15 + 1;
      HIDWORD(v42) = v15;
      v18 = v43;
      v43 = 0;
      if (v18)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v18 + 8), a2);
      }
    }

    else
    {
      v14 = 1;
    }

    do
    {
      v10 += 4;
      if (v10 == v11)
      {
        break;
      }
    }

    while (*v10 == -1 || *v10 == 0);
  }

  while (v10 != v12);
  if (v42 <= v15)
  {
    goto LABEL_35;
  }

  if (v15)
  {
    LODWORD(v42) = v15;
    v41 = WTF::fastRealloc(v7, (8 * v15));
  }

  else if (v7)
  {
    goto LABEL_34;
  }

LABEL_35:
  v20 = v39;
  if (HIDWORD(v40))
  {
    v21 = 8 * HIDWORD(v40);
    v22 = v39;
    do
    {
      v23 = *v22;
      *v22 = 0;
      if (v23)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v23 + 8), a2);
      }

      v22 = (v22 + 8);
      v21 -= 8;
    }

    while (v21);
  }

  if (v20)
  {
    v39 = 0;
    LODWORD(v40) = 0;
    WTF::fastFree(v20, a2);
  }

  v39 = v41;
  v24 = v42;
  v41 = 0;
  v42 = 0;
  v40 = v24;
  WTF::Vector<WTF::Ref<WebKit::ProcessAndUIAssertion,WTF::RawPtrTraits<WebKit::ProcessAndUIAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAndUIAssertion>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v41, a2);
  v26 = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
  if ((v14 & 1) == 0)
  {
LABEL_63:
    self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup = 0;
    if (!v26)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if (!v26)
  {
    goto LABEL_61;
  }

  v27 = *(v26 - 1);
  if (!v27)
  {
    goto LABEL_56;
  }

  v28 = 0;
  v29 = &v26[4 * v27 - 4];
  do
  {
    if (*v29 != -1 && *v29 != 0 && WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(*v29))
    {
      v30 = *v29;
      *v29 = 0;
      if (v30)
      {
        WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v30, v25);
      }

      *v29 = -1;
      ++v28;
    }

    v29 -= 2;
    --v27;
  }

  while (v27);
  v26 = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
  if (v28)
  {
    v31 = *(v26 - 3) - v28;
    *(v26 - 4) += v28;
    *(v26 - 3) = v31;
    goto LABEL_56;
  }

  if (!v26)
  {
LABEL_61:
    LODWORD(v26) = 0;
    self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup = 0;
    goto LABEL_65;
  }

LABEL_56:
  v32 = *(v26 - 1);
  if (6 * *(v26 - 3) < v32 && v32 > 8)
  {
    WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::shrinkToBestSize(&self->_assertionsNeedingBackgroundTask);
    v26 = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
    goto LABEL_63;
  }

  self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup = 0;
LABEL_64:
  LODWORD(v26) = *(v26 - 3);
  if (v26 > 0x7FFFFFFE)
  {
    v34 = -2;
    goto LABEL_67;
  }

LABEL_65:
  v34 = 2 * v26;
LABEL_67:
  self->_assertionsNeedingBackgroundTask.m_maxOperationCountWithoutCleanup = v34;
  v35 = 1;
  atomic_compare_exchange_strong_explicit(&self->_assertionsNeedingBackgroundTask.m_lock, &v35, 0, memory_order_release, memory_order_relaxed);
  if (v35 != 1)
  {
    WTF::Lock::unlockSlow(p_m_lock);
  }

  if (HIDWORD(v40))
  {
    v36 = v39;
    v37 = 8 * HIDWORD(v40);
    do
    {
      v38 = *(*v36 + 176);
      if (v38)
      {
        (*(*v38 + 16))(v38);
      }

      v36 = (v36 + 8);
      v37 -= 8;
    }

    while (v37);
  }

  WTF::Vector<WTF::Ref<WebKit::ProcessAndUIAssertion,WTF::RawPtrTraits<WebKit::ProcessAndUIAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAndUIAssertion>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v25);
}

- (void)_scheduleReleaseTask
{
  *a1 = &unk_1F1100B80;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
  }

  return a1;
}

- (void)_cancelPendingReleaseTask
{
  v7 = *MEMORY[0x1E69E9840];
  pendingTaskReleaseTask = self->_pendingTaskReleaseTask;
  if (pendingTaskReleaseTask)
  {
    v4 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = self;
      _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - WKProcessAssertionBackgroundTaskManager: _cancelPendingReleaseTask because the application is foreground again", &v5, 0xCu);
      pendingTaskReleaseTask = self->_pendingTaskReleaseTask;
    }

    dispatch_block_cancel(pendingTaskReleaseTask);
    self->_pendingTaskReleaseTask = 0;
  }
}

- (void)assertion:(id)a3 didInvalidateWithError:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = a4;
    _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "WKProcessAssertionBackgroundTaskManager: FinishTaskInterruptable assertion was invalidated, error: %{public}@", &v7, 0xCu);
  }

  atomic_store(1u, &self->_backgroundTaskWasInvalidated);
}

- (void)_handleBackgroundTaskExpiration
{
  v12 = *MEMORY[0x1E69E9840];
  [objc_msgSend(objc_msgSend(MEMORY[0x1E69C75D0] "currentProcess")];
  v4 = v3;
  v5 = qword_1ED641030;
  v6 = os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v7 = WTF::RunLoop::mainSingleton(v6);
    LODWORD(v9) = 67109376;
    HIDWORD(v9) = WTF::RunLoop::isCurrent(v7);
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "WKProcessAssertionBackgroundTaskManager: Background task expired while holding WebKit ProcessAssertion (isMainThread=%d, remainingTime=%g).", &v9, 0x12u);
  }

  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F1100BD0;
  v8[1] = self;
  v9 = v8;
  WTF::callOnMainRunLoopAndWait();
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }
}

- (void)_handleBackgroundTaskExpirationOnMainThread
{
  *a1 = &unk_1F1100BF8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
  }

  return a1;
}

- (void)_releaseBackgroundTask
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(WKProcessAssertionBackgroundTaskManager *)self _hasBackgroundTask])
  {
    v3 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = self;
      _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p - WKProcessAssertionBackgroundTaskManager: endBackgroundTask", &v9, 0xCu);
    }

    v4 = [objc_msgSend(objc_msgSend(MEMORY[0x1E69C75D0] "currentProcess")];
    if (v5 != *MEMORY[0x1E69C7698])
    {
      WebKit::WebProcessPool::notifyProcessPoolsApplicationIsAboutToSuspend(v4);
      m_ptr = self->m_processStateMonitor.m_ptr;
      if (m_ptr)
      {
        v7 = (m_ptr + 8);
        ++*(m_ptr + 2);
        WebKit::ProcessStateMonitor::processWillBeSuspendedImmediately(m_ptr);
        WTF::RefCounted<WebKit::ProcessStateMonitor>::deref(v7);
      }
    }

    [(RBSAssertion *)self->_backgroundTask.m_ptr removeObserver:self];
    [(RBSAssertion *)self->_backgroundTask.m_ptr invalidate];
    v8 = self->_backgroundTask.m_ptr;
    self->_backgroundTask.m_ptr = 0;
    if (v8)
    {
    }
  }
}

- (void)setProcessStateMonitorEnabled:(BOOL)a3
{
  m_ptr = self->m_processStateMonitor.m_ptr;
  if (a3)
  {
    if (!m_ptr)
    {
      v5 = WTF::fastMalloc(0x10);
      *v5 = &unk_1F1100C20;
      v10 = v5;
      if (WebKit::ProcessStateMonitor::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::ProcessStateMonitor::s_heapRef, v6);
      }

      else
      {
        NonCompact = WebKit::ProcessStateMonitor::operatorNewSlow(0x50);
      }

      v8 = NonCompact;
      WebKit::ProcessStateMonitor::ProcessStateMonitor(NonCompact, &v10);
      v9 = self->m_processStateMonitor.m_ptr;
      self->m_processStateMonitor.m_ptr = v8;
      if (v9)
      {
        WTF::RefCounted<WebKit::ProcessStateMonitor>::deref(v9 + 1);
      }

      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }
  }

  else
  {
    self->m_processStateMonitor.m_ptr = 0;
    if (m_ptr)
    {

      WTF::RefCounted<WebKit::ProcessStateMonitor>::deref(m_ptr + 1);
    }
  }
}

- (uint64_t)_scheduleReleaseTask
{
  *this = &unk_1F1100B80;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  return WTF::fastFree(this, a2);
}

- (uint64_t)_updateBackgroundTask
{
  result = WTF::ThreadSafeWeakHashSet<WebKit::ProcessAndUIAssertion>::isEmptyIgnoringNullReferences(*(a1 + 8) + 24);
  if (result)
  {
    v3 = *(a1 + 8);

    return [v3 _releaseBackgroundTask];
  }

  return result;
}

- (uint64_t)_handleBackgroundTaskExpirationOnMainThread
{
  *this = &unk_1F1100BF8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  return WTF::fastFree(this, a2);
}

- (uint64_t)setProcessStateMonitorEnabled:(uint64_t)a1
{
  WebKit::WebProcessPool::allProcessPools(&v7);
  if (v8)
  {
    v4 = v7;
    v5 = 8 * v8;
    do
    {
      WebKit::WebProcessPool::setProcessesShouldSuspend(*v4++, a2);
      v5 -= 8;
    }

    while (v5);
  }

  return WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v3);
}

@end