@interface _WKTargetedElementInfo
- (CGRect)bounds;
- (CGRect)boundsInClientCoordinates;
- (CGRect)boundsInWebView;
- (NSArray)selectors;
- (NSArray)selectorsIncludingShadowHosts;
- (NSSet)mediaAndLinkURLs;
- (NSString)debugDescription;
- (NSString)renderedText;
- (NSString)screenReaderText;
- (NSString)searchableText;
- (int64_t)positionType;
- (uint64_t)getChildFrames:(const void *)frames;
- (uint64_t)getChildFrames:(uint64_t)frames;
- (uint64_t)takeSnapshotWithCompletionHandler:(const void *)handler;
- (uint64_t)takeSnapshotWithCompletionHandler:(uint64_t)handler;
- (unint64_t)offsetEdges;
- (void)dealloc;
- (void)getChildFrames:(id)frames;
- (void)takeSnapshotWithCompletionHandler:(id)handler;
@end

@implementation _WKTargetedElementInfo

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    v5 = *self[3]._info.m_storage.data;
    *self[3]._info.m_storage.data = 0;
    if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5);
      WTF::fastFree(v5, v4);
    }

    v6 = *&self[2]._info.m_storage.data[40];
    if (v6)
    {
      WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(v6, v4);
    }

    v7 = *&self[2]._info.m_storage.data[24];
    if (v7)
    {
      *&self[2]._info.m_storage.data[24] = 0;
      *&self[2]._info.m_storage.data[32] = 0;
      WTF::fastFree(v7, v4);
    }

    WTF::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&self[1]._info.m_storage.data[32], v4);
    v9 = *&self[1]._info.m_storage.data[24];
    *&self[1]._info.m_storage.data[24] = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }

    v10 = *&self[1]._info.m_storage.data[16];
    *&self[1]._info.m_storage.data[16] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }

    v11 = *&self[1]._info.m_storage.data[8];
    *&self[1]._info.m_storage.data[8] = 0;
    if (v11)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v8);
      }
    }

    v12.receiver = self;
    v12.super_class = _WKTargetedElementInfo;
    [(_WKTargetedElementInfo *)&v12 dealloc];
  }
}

- (int64_t)positionType
{
  if (self[2]._info.m_storage.data[16] - 1 > 5)
  {
    return 0;
  }

  else
  {
    return qword_19E703728[(self[2]._info.m_storage.data[16] - 1)];
  }
}

- (CGRect)bounds
{
  WebCore::FloatRect::operator CGRect();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)boundsInWebView
{
  API::TargetedElementInfo::boundsInWebView(&self->_info);
  WebCore::FloatRect::operator CGRect();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)boundsInClientCoordinates
{
  WebCore::FloatRect::operator CGRect();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (NSArray)selectors
{
  if (!*&self[1]._info.m_storage.data[44] || (BYTE2(self[3].super.isa) & 1) != 0)
  {
    return MEMORY[0x1E695E0F0];
  }

  WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(*&self[1]._info.m_storage.data[32], &v6);
  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v6;
    v6 = 0;
    if (v4)
    {
    }
  }

  return v2;
}

- (NSArray)selectorsIncludingShadowHosts
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*&self[1]._info.m_storage.data[44]];
  v4 = *&self[1]._info.m_storage.data[44];
  if (v4)
  {
    v5 = *&self[1]._info.m_storage.data[32];
    v6 = v5 + 16 * v4;
    do
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(v5 + 12)];
      v8 = *(v5 + 12);
      if (v8)
      {
        v9 = *v5;
        v10 = 8 * v8;
        do
        {
          v11 = *v9;
          if (*v9)
          {
            atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
            MEMORY[0x19EB00B70](&v17, v11);
            if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v11, v12);
            }
          }

          else
          {
            v17 = &stru_1F1147748;
            v13 = &stru_1F1147748;
          }

          [v7 addObject:v17];
          v14 = v17;
          v17 = 0;
          if (v14)
          {
          }

          ++v9;
          v10 -= 8;
        }

        while (v10);
      }

      [(NSArray *)v3 addObject:v7];
      if (v7)
      {
      }

      v5 += 16;
    }

    while (v5 != v6);
  }

  if (v3)
  {
    v15 = v3;
  }

  return v3;
}

- (NSString)renderedText
{
  v2 = *&self[1]._info.m_storage.data[8];
  if (!v2)
  {
    v4 = &stru_1F1147748;
    v5 = &stru_1F1147748;
    v9 = 0;
LABEL_7:
    v6 = v4;
    v7 = v9;
    v9 = 0;
    if (v7)
    {
    }

    return &v4->isa;
  }

  atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v9, v2, a2);
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v3);
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return &v4->isa;
}

- (NSString)searchableText
{
  v2 = *&self[1]._info.m_storage.data[16];
  if (!v2)
  {
    v4 = &stru_1F1147748;
    v5 = &stru_1F1147748;
    v9 = 0;
LABEL_7:
    v6 = v4;
    v7 = v9;
    v9 = 0;
    if (v7)
    {
    }

    return &v4->isa;
  }

  atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v9, v2, a2);
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v3);
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return &v4->isa;
}

- (NSString)screenReaderText
{
  v2 = *&self[1]._info.m_storage.data[24];
  if (!v2)
  {
    v4 = &stru_1F1147748;
    v5 = &stru_1F1147748;
    v9 = 0;
LABEL_7:
    v6 = v4;
    v7 = v9;
    v9 = 0;
    if (v7)
    {
    }

    return &v4->isa;
  }

  atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v9, v2, a2);
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v3);
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return &v4->isa;
}

- (unint64_t)offsetEdges
{
  v2 = *self[1]._info.m_storage.data;
  v3 = 2;
  if ((v2 & 1) == 0)
  {
    v3 = 0;
  }

  return v3 & 0xFFFFFFFFFFFFFFFELL | (v2 >> 24) & 1 | (v2 >> 13) & 8 | (v2 >> 6) & 4;
}

- (void)getChildFrames:(id)frames
{
  v4 = _Block_copy(frames);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FBB60;
  v5[1] = v4;
  v7 = v5;
  API::TargetedElementInfo::childFrames(&self->_info, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

- (NSSet)mediaAndLinkURLs
{
  v3 = objc_opt_new();
  v4 = WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::begin(&self[2]._info.m_storage.data[40]);
  v5 = v4;
  v7 = v6;
  v8 = *&self[2]._info.m_storage.data[40];
  if (v8)
  {
    v9 = (v8 + 40 * *(v8 - 4));
  }

  else
  {
    v9 = 0;
  }

  if (v9 != v4)
  {
    do
    {
      WTF::URL::createCFURL(&v15, v5);
      if (v15)
      {
        [(NSSet *)v3 addObject:?];
        v10 = v15;
        v15 = 0;
        if (v10)
        {
        }
      }

      do
      {
        v5 = (v5 + 40);
        if (v5 == v7)
        {
          break;
        }

        v11 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v5);
        v12 = *v5 == -1 ? 1 : v11;
      }

      while (v12 == 1);
    }

    while (v5 != v9);
  }

  if (v3)
  {
    v13 = v3;
  }

  return v3;
}

- (void)takeSnapshotWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FBB88;
  v5[1] = v4;
  v7 = v5;
  API::TargetedElementInfo::takeSnapshot(&self->_info, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Block_release(0);
}

- (NSString)debugDescription
{
  v3 = *&self[1]._info.m_storage.data[44];
  if (v3 && (v4 = *&self[1]._info.m_storage.data[32] + 16 * v3, *(v4 - 4)))
  {
    v5 = **(v4 - 16);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *&self[2].super.isa;
  v7 = *(&self[2].super.isa + 1);
  v8 = *self[2]._anon_8;
  v9 = *&self[2]._anon_8[4];
  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v18, v5);
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v12);
    }
  }

  else
  {
    v18 = &stru_1F1147748;
    v13 = &stru_1F1147748;
  }

  v15 = [v10 stringWithFormat:@"<%@ %p %@ at {{%.0f, %.0f}, {%.0f, %.0f}}>", v11, self, v18, v6, v7, v8, v9];
  v16 = v18;
  v18 = 0;
  if (v16)
  {
  }

  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v14);
  }

  return v15;
}

- (uint64_t)getChildFrames:(uint64_t)frames
{
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a2 + 3)];
  v5 = *(a2 + 3);
  if (v5)
  {
    v6 = *a2;
    for (i = 8 * v5; i; i -= 8)
    {
      v8 = *(*v6 + 8);
      if (v8)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          result = 117;
          __break(0xC471u);
          return result;
        }

        [v4 addObject:v8];
      }

      v6 += 8;
    }
  }

  if (v4)
  {
    v9 = v4;
  }

  v10 = *(*(frames + 8) + 16);

  return v10();
}

- (uint64_t)getChildFrames:(const void *)frames
{
  *frames = &unk_1F10FBB60;
  _Block_release(frames[1]);

  return WTF::fastFree(frames, v2);
}

- (uint64_t)takeSnapshotWithCompletionHandler:(uint64_t)handler
{
  if (*(a2 + 80))
  {
    WebCore::ShareableBitmap::create();
    if (v7)
    {
      WebCore::ShareableBitmap::makeCGImage();
      (*(*(handler + 8) + 16))();
      if (cf)
      {
        CFRelease(cf);
      }

      return WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v7, v3);
    }

    else
    {
      return (*(*(handler + 8) + 16))();
    }
  }

  else
  {
    v5 = *(*(handler + 8) + 16);

    return v5();
  }
}

- (uint64_t)takeSnapshotWithCompletionHandler:(const void *)handler
{
  *handler = &unk_1F10FBB88;
  _Block_release(handler[1]);

  return WTF::fastFree(handler, v2);
}

@end