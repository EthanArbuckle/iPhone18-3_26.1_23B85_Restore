@interface CALayerHost
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers;
+ (id)allLayerHosts;
+ (id)defaultValueForKey:(id)key;
- (BOOL)_renderLayerDefinesProperty:(unsigned int)property;
- (BOOL)asynchronousOpaque;
- (BOOL)inheritsSecurity;
- (BOOL)preservesFlip;
- (BOOL)rendersAsynchronously;
- (BOOL)resizesHostedContext;
- (BOOL)sequestered;
- (BOOL)shouldArchiveValueForKey:(id)key;
- (BOOL)stopsHitTestTransformAccumulation;
- (BOOL)stopsSecureSuperlayersValidation;
- (BOOL)transformsToScreenSpace;
- (CAHostingToken)hostingToken;
- (CALayerHost)init;
- (NSArray)asynchronousRenderTimes;
- (NSString)zombificationMode;
- (double)asynchronousRenderPeriod;
- (unsigned)contextId;
- (void)_copyRenderLayer:(void *)layer layerFlags:(unsigned int)flags commitFlags:(unsigned int *)commitFlags;
- (void)dealloc;
- (void)didChangeValueForKey:(id)key;
- (void)layerDidBecomeVisible:(BOOL)visible;
- (void)setAsynchronousOpaque:(BOOL)opaque;
- (void)setAsynchronousRenderPeriod:(double)period;
- (void)setAsynchronousRenderTimes:(id)times;
- (void)setContextId:(unsigned int)id;
- (void)setHostingToken:(id)token;
- (void)setInheritsSecurity:(BOOL)security;
- (void)setNeedsAuthoritativeHostingToken;
- (void)setPreservesFlip:(BOOL)flip;
- (void)setRendersAsynchronously:(BOOL)asynchronously;
- (void)setResizesHostedContext:(BOOL)context;
- (void)setSequestered:(BOOL)sequestered;
- (void)setStopsHitTestTransformAccumulation:(BOOL)accumulation;
- (void)setStopsSecureSuperlayersValidation:(BOOL)validation;
- (void)setTransformsToScreenSpace:(BOOL)space;
- (void)setZombificationMode:(id)mode;
@end

@implementation CALayerHost

- (CALayerHost)init
{
  v20 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = CALayerHost;
  v2 = [(CALayer *)&v19 init];
  if (v2)
  {
    os_unfair_lock_lock(&_all_hosts_lock);
    v4 = _all_hosts;
    v3 = qword_1ED4E4590;
    v5 = qword_1ED4E4590 - _all_hosts;
    v6 = ((qword_1ED4E4590 - _all_hosts) >> 3) + 1;
    if (qword_1ED4E45A0 < v6)
    {
      v7 = qword_1ED4E4598;
      v8 = (qword_1ED4E45A0 + 1) | ((qword_1ED4E45A0 + 1) >> 1) | (((qword_1ED4E45A0 + 1) | ((qword_1ED4E45A0 + 1) >> 1)) >> 2);
      v9 = v8 | (v8 >> 4) | ((v8 | (v8 >> 4)) >> 8);
      v10 = v9 | (v9 >> 16) | ((v9 | (v9 >> 16)) >> 32);
      if (v10 + 1 > v6)
      {
        v11 = v10 + 1;
      }

      else
      {
        v11 = ((qword_1ED4E4590 - _all_hosts) >> 3) + 1;
      }

      v12 = malloc_type_malloc(8 * v11, 0x80040B8603338uLL);
      v13 = v12;
      v14 = _all_hosts;
      v15 = qword_1ED4E4590;
      if (_all_hosts != qword_1ED4E4590)
      {
        v16 = v12;
        do
        {
          v17 = *v14++;
          *v16 = v17;
          v16 += 8;
        }

        while (v14 != v15);
      }

      if (v4 != v7)
      {
        free(_all_hosts);
      }

      v3 = &v13[v5];
      _all_hosts = v13;
      qword_1ED4E4590 = &v13[v5];
      qword_1ED4E45A0 = v11;
    }

    *v3 = v2;
    qword_1ED4E4590 += 8;
    os_unfair_lock_unlock(&_all_hosts_lock);
  }

  return v2;
}

- (BOOL)rendersAsynchronously
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x25Bu, 6, &v3);
  return v3;
}

- (BOOL)asynchronousOpaque
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x31u, 6, &v3);
  return v3;
}

- (BOOL)preservesFlip
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x245u, 6, &v3);
  return v3;
}

- (BOOL)resizesHostedContext
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x261u, 6, &v3);
  return v3;
}

- (BOOL)stopsSecureSuperlayersValidation
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x2AFu, 6, &v3);
  return v3;
}

- (NSString)zombificationMode
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x2FDu, 3, v3);
  return v3[0];
}

- (CAHostingToken)hostingToken
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x132u, 2, v3);
  return v3[0];
}

- (BOOL)inheritsSecurity
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x13Au, 6, &v3);
  return v3;
}

- (NSArray)asynchronousRenderTimes
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x33u, 3, v3);
  return v3[0];
}

- (double)asynchronousRenderPeriod
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x32u, 0x12, v3);
  return *v3;
}

- (BOOL)transformsToScreenSpace
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x2CDu, 6, &v3);
  return v3;
}

- (BOOL)sequestered
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x27Cu, 6, &v3);
  return v3;
}

- (BOOL)stopsHitTestTransformAccumulation
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x2AEu, 6, &v3);
  return v3;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&_all_hosts_lock);
  v3 = _all_hosts;
  if (_all_hosts != qword_1ED4E4590)
  {
    while (*v3 != self)
    {
      if (++v3 == qword_1ED4E4590)
      {
        goto LABEL_8;
      }
    }
  }

  if (v3 != qword_1ED4E4590)
  {
    *v3 = *(qword_1ED4E4590 - 8);
    if (qword_1ED4E4590 <= _all_hosts)
    {
      __assert_rtn("pop_back", "x-small-vector.h", 420, "_end > _begin && pop_back on empty container");
    }

    qword_1ED4E4590 -= 8;
  }

LABEL_8:
  os_unfair_lock_unlock(&_all_hosts_lock);
  v4.receiver = self;
  v4.super_class = CALayerHost;
  [(CALayer *)&v4 dealloc];
}

- (BOOL)shouldArchiveValueForKey:(id)key
{
  v7 = *MEMORY[0x1E69E9840];
  if (CAInternAtom(key, 1) == 306)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = CALayerHost;
  return [(CALayer *)&v6 shouldArchiveValueForKey:key];
}

- (void)setZombificationMode:(id)mode
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = mode;
  CA::Layer::setter(self->super._attr.layer, 0x2FD, 3, v3);
}

- (void)setStopsSecureSuperlayersValidation:(BOOL)validation
{
  v4 = *MEMORY[0x1E69E9840];
  validationCopy = validation;
  CA::Layer::setter(self->super._attr.layer, 0x2AF, 6, &validationCopy);
}

- (void)setStopsHitTestTransformAccumulation:(BOOL)accumulation
{
  v4 = *MEMORY[0x1E69E9840];
  accumulationCopy = accumulation;
  CA::Layer::setter(self->super._attr.layer, 0x2AE, 6, &accumulationCopy);
}

- (void)setSequestered:(BOOL)sequestered
{
  v4 = *MEMORY[0x1E69E9840];
  sequesteredCopy = sequestered;
  CA::Layer::setter(self->super._attr.layer, 0x27C, 6, &sequesteredCopy);
}

- (void)setTransformsToScreenSpace:(BOOL)space
{
  v4 = *MEMORY[0x1E69E9840];
  spaceCopy = space;
  CA::Layer::setter(self->super._attr.layer, 0x2CD, 6, &spaceCopy);
}

- (void)setResizesHostedContext:(BOOL)context
{
  v4 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  CA::Layer::setter(self->super._attr.layer, 0x261, 6, &contextCopy);
}

- (void)setPreservesFlip:(BOOL)flip
{
  v4 = *MEMORY[0x1E69E9840];
  flipCopy = flip;
  CA::Layer::setter(self->super._attr.layer, 0x245, 6, &flipCopy);
}

- (void)setAsynchronousRenderTimes:(id)times
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ([times count] >= 0x401)
  {
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v5 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6[0]) = 0;
      _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "Async render times array exceed maximum size.", v6, 2u);
    }
  }

  else
  {
    *&v6[0] = times;
    CA::Layer::setter(self->super._attr.layer, 0x33, 3, v6);
  }
}

- (void)setAsynchronousRenderPeriod:(double)period
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = period;
  CA::Layer::setter(self->super._attr.layer, 0x32, 0x12, v3);
}

- (void)setAsynchronousOpaque:(BOOL)opaque
{
  v4 = *MEMORY[0x1E69E9840];
  opaqueCopy = opaque;
  CA::Layer::setter(self->super._attr.layer, 0x31, 6, &opaqueCopy);
}

- (void)setRendersAsynchronously:(BOOL)asynchronously
{
  v4 = *MEMORY[0x1E69E9840];
  asynchronouslyCopy = asynchronously;
  CA::Layer::setter(self->super._attr.layer, 0x25B, 6, &asynchronouslyCopy);
}

- (void)setInheritsSecurity:(BOOL)security
{
  v4 = *MEMORY[0x1E69E9840];
  securityCopy = security;
  CA::Layer::setter(self->super._attr.layer, 0x13A, 6, &securityCopy);
}

- (void)setNeedsAuthoritativeHostingToken
{
  if (!self->_tokenNeedsPort)
  {
    self->_tokenNeedsPort = 1;
    v4 = CA::Transaction::ensure_compat(self);
    layer = self->super._attr.layer;

    CA::Layer::set_commit_needed(layer, v4, 0x10000);
  }
}

- (void)setHostingToken:(id)token
{
  v6[1] = *MEMORY[0x1E69E9840];
  *&v6[0] = token;
  CA::Layer::setter(self->super._attr.layer, 0x132, 2, v6);
  if (token)
  {
    v5 = *(token + 6);
  }

  else
  {
    v5 = 0;
  }

  LODWORD(v6[0]) = v5;
  CA::Layer::setter(self->super._attr.layer, 0x9C, 0xC, v6);
}

- (void)setContextId:(unsigned int)id
{
  v9 = *MEMORY[0x1E69E9840];
  if (id)
  {
    objc_opt_self();
    v6 = 0xFFFFFFFF00000000;
    idCopy = id;
    v8 = 1818454372;
    v5 = [[CAHostingToken alloc] _initWithPort:&v6 data:?];
    [(CALayerHost *)self setHostingToken:?];
  }

  else
  {

    [(CALayerHost *)self setHostingToken:0];
  }
}

- (unsigned)contextId
{
  v6 = *MEMORY[0x1E69E9840];
  hostingToken = [(CALayerHost *)self hostingToken];
  if (hostingToken)
  {
    return hostingToken->_data.cid;
  }

  v5 = 0;
  CA::Layer::getter(self->super._attr.layer, 0x9Cu, 0xC, &v5);
  return v5;
}

- (void)layerDidBecomeVisible:(BOOL)visible
{
  visibleCopy = visible;
  v7 = *MEMORY[0x1E69E9840];
  if (!visible)
  {
    v5 = CA::Transaction::ensure_compat(self);
    CA::Layer::set_commit_needed(self->super._attr.layer, v5, 0);
  }

  v6.receiver = self;
  v6.super_class = CALayerHost;
  [(CALayer *)&v6 layerDidBecomeVisible:visibleCopy];
}

- (BOOL)_renderLayerDefinesProperty:(unsigned int)property
{
  v3 = *&property;
  v7 = *MEMORY[0x1E69E9840];
  if (CAAtomIndexInArray(14, [CALayerHost _renderLayerDefinesProperty:]::atoms, property) != -1)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = CALayerHost;
  return [(CALayer *)&v6 _renderLayerDefinesProperty:v3];
}

- (void)_copyRenderLayer:(void *)layer layerFlags:(unsigned int)flags commitFlags:(unsigned int *)commitFlags
{
  v26 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = CALayerHost;
  v7 = [(CALayer *)&v25 _copyRenderLayer:layer layerFlags:*&flags commitFlags:?];
  if (!v7 || (*(commitFlags + 2) & 1) == 0)
  {
    return v7;
  }

  hostingToken = [(CALayerHost *)self hostingToken];
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v9 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x68uLL, 0xDEEC3011uLL);
  v10 = v9;
  if (v9)
  {
    if (hostingToken)
    {
      port = hostingToken->_port;
      cid = hostingToken->_data.cid;
    }

    else
    {
      port = 0;
      cid = 0;
    }

    tokenNeedsPort = self->_tokenNeedsPort;
    v9[2] = 1;
    v9[3] = 31;
    ++dword_1ED4EAAB4;
    *v9 = &unk_1EF1F78A0;
    *(v9 + 2) = &unk_1EF1F57C8;
    v9[6] = 0;
    v9[7] = cid;
    *(v9 + 32) = 1;
    *(v9 + 33) = tokenNeedsPort;
    if (port - 1 <= 0xFFFFFFFD && !mach_port_insert_right(*MEMORY[0x1E69E9A60], port, port, 0x13u))
    {
      v10[6] = port;
    }

    *(v10 + 22) = 0u;
    *(v10 + 18) = 0u;
    *(v10 + 14) = 0u;
    *(v10 + 10) = 0u;
  }

  if ([(CALayerHost *)self inheritsSecurity])
  {
    v10[3] |= 0x200u;
  }

  if ([(CALayerHost *)self rendersAsynchronously])
  {
    v10[3] |= 0x400u;
  }

  if ([(CALayerHost *)self asynchronousOpaque])
  {
    v10[3] |= 0x800u;
  }

  asynchronousRenderTimes = [(CALayerHost *)self asynchronousRenderTimes];
  if ([(NSArray *)asynchronousRenderTimes count])
  {
    v15 = -[NSArray indexOfObject:inSortedRange:options:usingComparator:](asynchronousRenderTimes, "indexOfObject:inSortedRange:options:usingComparator:", [MEMORY[0x1E696AD98] numberWithLongLong:mach_continuous_time()], 0, -[NSArray count](asynchronousRenderTimes, "count"), 1024, &__block_literal_global_18873);
    v16 = [(NSArray *)asynchronousRenderTimes count]- v15;
    std::vector<unsigned long long>::resize(v10 + 7, v16);
    if (v16 >= 1)
    {
      v17 = *(v10 + 7);
      v18 = v16 & 0x7FFFFFFF;
      v19 = -1;
      do
      {
        *v17++ = [-[NSArray objectAtIndexedSubscript:](asynchronousRenderTimes objectAtIndexedSubscript:{-[NSArray count](asynchronousRenderTimes, "count") + v19--), "unsignedLongLongValue"}];
        --v18;
      }

      while (v18);
    }
  }

  [(CALayerHost *)self asynchronousRenderPeriod];
  if (v20 >= 0.0)
  {
    [(CALayerHost *)self asynchronousRenderPeriod];
    *(v10 + 10) = v21;
  }

  if ([(CALayerHost *)self preservesFlip])
  {
    v10[3] |= 0x100u;
  }

  if ([(CALayerHost *)self resizesHostedContext])
  {
    v10[3] |= 0x1000u;
  }

  if ([(CALayerHost *)self transformsToScreenSpace])
  {
    v10[3] |= 0x4000u;
  }

  if ([(CALayerHost *)self sequestered])
  {
    v10[3] |= 0x8000u;
  }

  if ([(CALayerHost *)self stopsHitTestTransformAccumulation])
  {
    v10[3] |= 0x2000u;
  }

  if ([(CALayerHost *)self stopsSecureSuperlayersValidation])
  {
    v10[3] |= 0x10000u;
  }

  zombificationMode = [(CALayerHost *)self zombificationMode];
  if ([(NSString *)zombificationMode isEqualToString:@"default"])
  {
    v23 = 0x20000;
  }

  else if ([(NSString *)zombificationMode isEqualToString:@"always"])
  {
    v23 = 0x40000;
  }

  else
  {
    if (![(NSString *)zombificationMode isEqualToString:@"never"])
    {
      CA::Render::Layer::set_subclass(v7, v10);
      if (!v10)
      {
        return v7;
      }

      goto LABEL_43;
    }

    v23 = 0x80000;
  }

  v10[3] |= v23;
  CA::Render::Layer::set_subclass(v7, v10);
LABEL_43:
  if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v10 + 16))(v10);
  }

  return v7;
}

- (void)didChangeValueForKey:(id)key
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(key, 0);
  v6 = CAAtomIndexInArray(14, [CALayerHost didChangeValueForKey:]::atoms, v5);
  if (v6 != -1)
  {
    v7 = CA::Transaction::ensure_compat(v6);
    CA::Layer::set_commit_needed(self->super._attr.layer, v7, 0x10000);
  }

  v8.receiver = self;
  v8.super_class = CALayerHost;
  [(CALayerHost *)&v8 didChangeValueForKey:key];
}

+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == observers)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CALayerHost;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, observers);
}

+ (id)defaultValueForKey:(id)key
{
  v7 = *MEMORY[0x1E69E9840];
  if ([key isEqualToString:@"zombificationMode"])
  {
    return @"default";
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CALayerHost;
  return objc_msgSendSuper2(&v6, sel_defaultValueForKey_, key);
}

+ (id)allLayerHosts
{
  os_unfair_lock_lock(&_all_hosts_lock);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  os_unfair_lock_unlock(&_all_hosts_lock);
  return v2;
}

@end