@interface ARCoachingSessionCache
- (ARCoachingSessionCache)init;
- (BOOL)hasAnyPlane:(id)a3;
- (BOOL)hasHorizontalPlane:(id)a3;
- (BOOL)hasVerticalPlane:(id)a3;
- (void)anchorsAdded:(id)a3;
- (void)anchorsRemoved:(id)a3;
- (void)clear;
- (void)initializePlaneCache:(id)a3;
- (void)removeFromPlaneCache:(id)a3;
- (void)sessionChanged;
- (void)updatePlaneCache:(id)a3;
@end

@implementation ARCoachingSessionCache

- (ARCoachingSessionCache)init
{
  v5.receiver = self;
  v5.super_class = ARCoachingSessionCache;
  v2 = [(ARCoachingSessionCache *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ARCoachingSessionCache *)v2 clear];
  }

  return v3;
}

- (void)clear
{
  self->_planeCount = 0;
  self->_horizontalPlaneCount = 0;
  self->_planeCacheInitialized = 0;
  self->_verticalPlaneCount = 0;
}

- (void)anchorsAdded:(id)a3
{
  if (self->_planeCacheInitialized)
  {
    [(ARCoachingSessionCache *)self updatePlaneCache:a3];
  }
}

- (void)anchorsRemoved:(id)a3
{
  if (self->_planeCacheInitialized)
  {
    [(ARCoachingSessionCache *)self removeFromPlaneCache:a3];
  }
}

- (void)sessionChanged
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _ARLogCoaching();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138543618;
    v8 = v5;
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_23D3AE000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Clearing cached anchors info after session change", &v7, 0x16u);
  }

  [(ARCoachingSessionCache *)self clear];
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasAnyPlane:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if (!self->_planeCacheInitialized)
    {
      v5 = _ARLogCoaching();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v11 = 138543618;
        v12 = v7;
        v13 = 2048;
        v14 = self;
        _os_log_impl(&dword_23D3AE000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Searching frame for any planes", &v11, 0x16u);
      }

      [(ARCoachingSessionCache *)self initializePlaneCache:v4];
    }

    v8 = self->_planeCount > 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)hasHorizontalPlane:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if (!self->_planeCacheInitialized)
    {
      v5 = _ARLogCoaching();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v11 = 138543618;
        v12 = v7;
        v13 = 2048;
        v14 = self;
        _os_log_impl(&dword_23D3AE000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Searching frame for horizontal planes", &v11, 0x16u);
      }

      [(ARCoachingSessionCache *)self initializePlaneCache:v4];
    }

    v8 = self->_horizontalPlaneCount > 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)hasVerticalPlane:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if (!self->_planeCacheInitialized)
    {
      v5 = _ARLogCoaching();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v11 = 138543618;
        v12 = v7;
        v13 = 2048;
        v14 = self;
        _os_log_impl(&dword_23D3AE000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Searching frame for vertical planes", &v11, 0x16u);
      }

      [(ARCoachingSessionCache *)self initializePlaneCache:v4];
    }

    v8 = self->_verticalPlaneCount > 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)initializePlaneCache:(id)a3
{
  v4 = [a3 anchors];
  [(ARCoachingSessionCache *)self updatePlaneCache:v4];

  self->_planeCacheInitialized = 1;
}

- (void)updatePlaneCache:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__ARCoachingSessionCache_updatePlaneCache___block_invoke;
  v3[3] = &unk_278BCD3C8;
  v3[4] = self;
  ARCoachingEnumeratePlaneAnchors(a3, v3);
}

uint64_t __43__ARCoachingSessionCache_updatePlaneCache___block_invoke(uint64_t a1, void *a2)
{
  ++*(*(a1 + 32) + 8);
  result = [a2 alignment];
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v4 = 24;
  }

  else
  {
    v4 = 16;
  }

  ++*(*(a1 + 32) + v4);
  return result;
}

- (void)removeFromPlaneCache:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__ARCoachingSessionCache_removeFromPlaneCache___block_invoke;
  v3[3] = &unk_278BCD3C8;
  v3[4] = self;
  ARCoachingEnumeratePlaneAnchors(a3, v3);
}

uint64_t __47__ARCoachingSessionCache_removeFromPlaneCache___block_invoke(uint64_t a1, void *a2)
{
  --*(*(a1 + 32) + 8);
  result = [a2 alignment];
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v4 = 24;
  }

  else
  {
    v4 = 16;
  }

  --*(*(a1 + 32) + v4);
  return result;
}

@end