@interface _WKApplicationManifestIcon
- (_WKApplicationManifestIcon)initWithCoder:(id)coder;
- (_WKApplicationManifestIcon)initWithCoreIcon:(const void *)icon;
- (id).cxx_construct;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _WKApplicationManifestIcon

- (_WKApplicationManifestIcon)initWithCoder:(id)coder
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = [(_WKApplicationManifestIcon *)self init];
  if (v4)
  {
    v5 = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"src", "copy"}];
    m_ptr = v4->_src.m_ptr;
    v4->_src.m_ptr = v5;
    if (m_ptr)
    {
    }

    v7 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v8 = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v17, 2)), @"sizes", "copy"}];
    v9 = v4->_sizes.m_ptr;
    v4->_sizes.m_ptr = v8;
    if (v9)
    {
    }

    v10 = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"type", "copy"}];
    v11 = v4->_type.m_ptr;
    v4->_type.m_ptr = v10;
    if (v11)
    {
    }

    v12 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v13 = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(v12 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v16, 2)), @"purposes", "copy"}];
    v14 = v4->_purposes.m_ptr;
    v4->_purposes.m_ptr = v13;
    if (v14)
    {
    }
  }

  return v4;
}

- (_WKApplicationManifestIcon)initWithCoreIcon:(const void *)icon
{
  v28.receiver = self;
  v28.super_class = _WKApplicationManifestIcon;
  v4 = [(_WKApplicationManifestIcon *)&v28 init];
  v5 = v4;
  if (icon && v4)
  {
    WTF::URL::createCFURL(&v29, icon);
    v6 = v29;
    v29 = 0;
    m_ptr = v5->_src.m_ptr;
    v5->_src.m_ptr = v6;
    if (m_ptr)
    {

      v8 = v29;
      v29 = 0;
      if (v8)
      {
      }
    }

    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(icon + 13)];
    v10 = *(icon + 13);
    if (v10)
    {
      v11 = *(icon + 5);
      v12 = 8 * v10;
      do
      {
        v13 = *v11;
        if (*v11)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v29, v13);
          if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v14);
          }
        }

        else
        {
          v29 = &stru_1F1147748;
          v15 = &stru_1F1147748;
        }

        if (v29)
        {
          [(NSArray *)v9 addObject:?];
          v16 = v29;
          v29 = 0;
          if (v16)
          {
          }
        }

        ++v11;
        v12 -= 8;
      }

      while (v12);
    }

    v17 = v5->_sizes.m_ptr;
    v5->_sizes.m_ptr = v9;
    if (v17)
    {
    }

    v18 = *(icon + 7);
    if (v18)
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v29, v18);
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v19);
      }
    }

    else
    {
      v29 = &stru_1F1147748;
      v20 = &stru_1F1147748;
    }

    v21 = v29;
    v29 = 0;
    v22 = v5->_type.m_ptr;
    v5->_type.m_ptr = &v21->isa;
    if (v22)
    {

      v23 = v29;
      v29 = 0;
      if (v23)
      {
      }
    }

    v24 = *(icon + 64);
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v24)
    {
      do
      {
        -[NSArray addObject:](v25, "addObject:", [MEMORY[0x1E696AD98] numberWithUnsignedChar:(v24 & -v24)]);
        v24 &= v24 - 1;
      }

      while (v24);
    }

    v26 = v5->_purposes.m_ptr;
    v5->_purposes.m_ptr = v25;
    if (v26)
    {
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_src.m_ptr forKey:@"src"];
  [coder encodeObject:self->_sizes.m_ptr forKey:@"sizes"];
  [coder encodeObject:self->_type.m_ptr forKey:@"type"];
  m_ptr = self->_purposes.m_ptr;

  [coder encodeObject:m_ptr forKey:@"purposes"];
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    v4.receiver = self;
    v4.super_class = _WKApplicationManifestIcon;
    [(_WKApplicationManifestIcon *)&v4 dealloc];
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end