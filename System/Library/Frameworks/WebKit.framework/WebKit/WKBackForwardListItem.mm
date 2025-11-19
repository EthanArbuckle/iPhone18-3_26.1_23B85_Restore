@interface WKBackForwardListItem
- (BOOL)_wasCreatedByJSWithoutUserInteraction;
- (CGImage)_copySnapshotForTesting;
- (CGPoint)_scrollPosition;
- (NSString)title;
- (NSURL)URL;
- (NSURL)initialURL;
- (Ref<WebKit::WebBackForwardListItem,)_protectedItem;
- (void)dealloc;
@end

@implementation WKBackForwardListItem

- (Ref<WebKit::WebBackForwardListItem,)_protectedItem
{
  v3 = v2;
  p_item = &self->_item;
  v5 = CFRetain(*&self->_item.m_storage.data[8]);
  *v3 = p_item;
  return v5;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    [(WKBackForwardListItem *)self _protectedItem];
    (**v6)(v6);
    v4 = v6;
    v6 = 0;
    if (v4)
    {
      CFRelease(v4[1]);
    }

    v5.receiver = self;
    v5.super_class = WKBackForwardListItem;
    [(WKBackForwardListItem *)&v5 dealloc];
  }
}

- (NSURL)URL
{
  v2 = MEMORY[0x1E695DFF8];
  if (self)
  {
    [(WKBackForwardListItem *)self _protectedItem];
    v3 = v7;
  }

  else
  {
    v3 = 0;
    v7 = 0;
  }

  if (*(v3 + 136))
  {
    v4 = MEMORY[0x1E696EBA8];
  }

  else
  {
    v4 = *(*(v3 + 48) + 40) + 8;
  }

  v5 = [v2 _web_URLWithWTFString:v4];
  if (v7)
  {
    CFRelease(*(v7 + 8));
  }

  return v5;
}

- (NSString)title
{
  CFRetain(*&self->_item.m_storage.data[8]);
  if (self[2]._item.m_storage.data[24] == 1)
  {
    v3 = *MEMORY[0x1E696EBA8];
    if (!*MEMORY[0x1E696EBA8])
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *(*(self[1].super.isa + 5) + 184);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v8, v3);
  if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v4);
  }

  v3 = v8;
  v8 = 0;
  if (v3)
  {
    v5 = v3;
    v6 = v8;
    v8 = 0;
    if (v6)
    {
    }
  }

LABEL_10:
  CFRelease(*&self->_item.m_storage.data[8]);
  return v3;
}

- (NSURL)initialURL
{
  v2 = MEMORY[0x1E695DFF8];
  if (self)
  {
    [(WKBackForwardListItem *)self _protectedItem];
    v3 = v7;
  }

  else
  {
    v3 = 0;
    v7 = 0;
  }

  if (*(v3 + 136))
  {
    v4 = MEMORY[0x1E696EBA8];
  }

  else
  {
    v4 = *(*(v3 + 48) + 40) + 16;
  }

  v5 = [v2 _web_URLWithWTFString:v4];
  if (v7)
  {
    CFRelease(*(v7 + 8));
  }

  return v5;
}

- (CGImage)_copySnapshotForTesting
{
  v2 = *&self[2]._item.m_storage.data[16];
  if (!v2)
  {
    return 0;
  }

  v3 = v2 + 1;
  ++*(v2 + 2);
  WebKit::ViewSnapshot::asImageForTesting(v2, &v6);
  v4 = v6;
  WTF::RefCounted<WebKit::ViewSnapshot>::deref(v3);
  return v4;
}

- (CGPoint)_scrollPosition
{
  CFRetain(*&self->_item.m_storage.data[8]);
  WebKit::WebBackForwardListFrameItem::copyFrameStateWithChildren(self[1].super.isa, &v10);
  v3 = v10[24];
  WebKit::WebBackForwardListFrameItem::copyFrameStateWithChildren(self[1].super.isa, &v9);
  v4 = v9;
  v5 = v9[25];
  v9 = 0;
  WTF::RefCounted<WebKit::FrameState>::deref(v4);
  v6 = v10;
  v10 = 0;
  if (v6)
  {
    WTF::RefCounted<WebKit::FrameState>::deref(v6);
  }

  CFRelease(*&self->_item.m_storage.data[8]);
  v7 = v3;
  v8 = v5;
  result.y = v8;
  result.x = v7;
  return result;
}

- (BOOL)_wasCreatedByJSWithoutUserInteraction
{
  if (self)
  {
    [(WKBackForwardListItem *)self _protectedItem];
    self = v4;
  }

  else
  {
    v4 = 0;
  }

  v2 = *(*(WebKit::WebBackForwardListItem::navigatedFrameItem(self) + 40) + 208);
  if (v4)
  {
    CFRelease(*(v4 + 1));
  }

  return v2;
}

@end