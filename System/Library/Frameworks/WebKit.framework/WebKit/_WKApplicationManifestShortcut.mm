@interface _WKApplicationManifestShortcut
- (_WKApplicationManifestShortcut)initWithCoder:(id)a3;
- (_WKApplicationManifestShortcut)initWithCoreShortcut:(const void *)a3;
- (id).cxx_construct;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _WKApplicationManifestShortcut

- (_WKApplicationManifestShortcut)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [(_WKApplicationManifestShortcut *)self init];
  if (v4)
  {
    v5 = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"name", "copy"}];
    m_ptr = v4->_name.m_ptr;
    v4->_name.m_ptr = v5;
    if (m_ptr)
    {
    }

    v7 = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"url", "copy"}];
    v8 = v4->_url.m_ptr;
    v4->_url.m_ptr = v7;
    if (v8)
    {
    }

    v9 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:3];
    v11 = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v9 forKey:{"setWithArray:", v10, v14, v15), @"icons", "copy"}];
    v12 = v4->_icons.m_ptr;
    v4->_icons.m_ptr = v11;
    if (v12)
    {
    }
  }

  return v4;
}

- (_WKApplicationManifestShortcut)initWithCoreShortcut:(const void *)a3
{
  v23.receiver = self;
  v23.super_class = _WKApplicationManifestShortcut;
  v4 = [(_WKApplicationManifestShortcut *)&v23 init];
  v5 = v4;
  if (a3 && v4)
  {
    v6 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v22, v6);
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v7);
      }
    }

    else
    {
      v22 = &stru_1F1147748;
      v8 = &stru_1F1147748;
    }

    v9 = v22;
    v22 = 0;
    m_ptr = v5->_name.m_ptr;
    v5->_name.m_ptr = &v9->isa;
    if (m_ptr)
    {

      v11 = v22;
      v22 = 0;
      if (v11)
      {
      }
    }

    WTF::URL::createCFURL(&v22, (a3 + 8));
    v12 = v22;
    v22 = 0;
    v13 = v5->_url.m_ptr;
    v5->_url.m_ptr = v12;
    if (v13)
    {

      v14 = v22;
      v22 = 0;
      if (v14)
      {
      }
    }

    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a3 + 15)];
    v16 = *(a3 + 15);
    if (v16)
    {
      v17 = *(a3 + 6);
      v18 = 72 * v16;
      do
      {
        v19 = [[_WKApplicationManifestIcon alloc] initWithCoreIcon:v17];
        if (v19)
        {
          [(NSArray *)v15 addObject:v19];
        }

        v17 += 72;
        v18 -= 72;
      }

      while (v18);
    }

    v20 = v5->_icons.m_ptr;
    v5->_icons.m_ptr = v15;
    if (v20)
    {
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_name.m_ptr forKey:@"name"];
  [a3 encodeObject:self->_url.m_ptr forKey:@"url"];
  m_ptr = self->_icons.m_ptr;

  [a3 encodeObject:m_ptr forKey:@"icons"];
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    v4.receiver = self;
    v4.super_class = _WKApplicationManifestShortcut;
    [(_WKApplicationManifestShortcut *)&v4 dealloc];
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end