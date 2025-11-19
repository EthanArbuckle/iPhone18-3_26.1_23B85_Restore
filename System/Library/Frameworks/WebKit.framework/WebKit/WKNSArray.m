@interface WKNSArray
- (RefPtr<API::Array,)_protectedArray;
- (id)objectAtIndex:(unint64_t)a3;
- (void)dealloc;
@end

@implementation WKNSArray

- (RefPtr<API::Array,)_protectedArray
{
  v3 = v2;
  p_array = &self->_array;
  if (self)
  {
    self = CFRetain(*&self->_array.m_storage.data[8]);
  }

  *v3 = p_array;
  return self;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&self->_array.m_storage.data[16], v4);
    v5.receiver = self;
    v5.super_class = WKNSArray;
    [(WKNSArray *)&v5 dealloc];
  }
}

- (id)objectAtIndex:(unint64_t)a3
{
  if (self)
  {
    [(WKNSArray *)self _protectedArray];
    v4 = v8;
  }

  else
  {
    v4 = 0;
    v8 = 0;
  }

  if (*(v4 + 28) <= a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19D9FBD40);
  }

  v5 = *(*(v4 + 16) + 8 * a3);
  if (v5)
  {
    CFRetain(*(v5 + 8));
    if (v8)
    {
      CFRelease(*(v8 + 8));
    }

    v6 = *(v5 + 8);
    CFRelease(v6);
  }

  else
  {
    CFRelease(*(v4 + 8));
    return [MEMORY[0x1E695DFB0] null];
  }

  return v6;
}

@end