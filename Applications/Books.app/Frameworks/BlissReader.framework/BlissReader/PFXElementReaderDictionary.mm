@interface PFXElementReaderDictionary
- (PFXElementReaderDictionary)initWithFallThroughAllowed:(BOOL)allowed;
- (id).cxx_construct;
- (id)elementInfoForElementName:(const char *)name elementNamespace:(const char *)namespace;
- (id)p_elementInfoForElementName:(const char *)name elementNamespace:(const char *)namespace;
- (void)addEntryWithElementName:(const char *)name elementNamespace:(const char *)namespace mappingClass:(Class)class;
- (void)dealloc;
@end

@implementation PFXElementReaderDictionary

- (PFXElementReaderDictionary)initWithFallThroughAllowed:(BOOL)allowed
{
  v5.receiver = self;
  v5.super_class = PFXElementReaderDictionary;
  result = [(PFXElementReaderDictionary *)&v5 init];
  if (result)
  {
    result->mAllowFallThrough = allowed;
  }

  return result;
}

- (void)dealloc
{
  begin_node = self->mMap.__tree_.__begin_node_;
  p_end_node = &self->mMap.__tree_.__end_node_;
  if (begin_node != &self->mMap.__tree_.__end_node_)
  {
    do
    {
      isa = begin_node[1].super.isa;
      if (isa)
      {
        sub_1EAF2C(isa);
        operator delete();
      }

      v6 = begin_node->mMap.__tree_.__begin_node_;
      if (v6)
      {
        do
        {
          left = v6;
          v6 = v6->super.isa;
        }

        while (v6);
      }

      else
      {
        do
        {
          left = begin_node->mMap.__tree_.__end_node_.__left_;
          v8 = left->super.isa == begin_node;
          begin_node = left;
        }

        while (!v8);
      }

      begin_node = left;
    }

    while (left != p_end_node);
  }

  v9.receiver = self;
  v9.super_class = PFXElementReaderDictionary;
  [(PFXElementReaderDictionary *)&v9 dealloc];
}

- (void)addEntryWithElementName:(const char *)name elementNamespace:(const char *)namespace mappingClass:(Class)class
{
  nameCopy = name;
  if (class)
  {
    v7 = [[PFXElementReaderInfo alloc] initWithElementName:name elementNamespace:namespace mappingClass:class];
    v8 = sub_1EB018(&self->mMap, &nameCopy);
    if (&self->mMap.__tree_.__end_node_ == v8)
    {
      operator new();
    }

    v9 = v8;
    isa = v8[1].super.isa;
    v11 = isa[1];
    if (v11)
    {
      v12 = isa[1];
      while (1)
      {
        v12 = *(v12 + 8);
        if (v12 == v11)
        {
          break;
        }

        if (xmlStrEqual(namespace, [*(v12 + 16) elementNamespace]))
        {
          goto LABEL_11;
        }
      }

      isa = v9[1].super.isa;
    }

    sub_1EABEC(isa, v7);
LABEL_11:
  }
}

- (id)p_elementInfoForElementName:(const char *)name elementNamespace:(const char *)namespace
{
  nameCopy = name;
  v6 = sub_1EB018(&self->mMap, &nameCopy);
  if (&self->mMap.__tree_.__end_node_ == v6)
  {
    return 0;
  }

  isa = v6[1].super.isa;
  v8 = *isa;
  if (!*isa || !xmlStrEqual(namespace, [*isa elementNamespace]))
  {
    v9 = *(isa + 1);
    if (v9)
    {
      v10 = v9;
      while (1)
      {
        v10 = *(v10 + 8);
        if (v10 == v9)
        {
          break;
        }

        v8 = *(v10 + 16);
        if (xmlStrEqual(namespace, [v8 elementNamespace]))
        {
          return v8;
        }
      }
    }

    return 0;
  }

  return v8;
}

- (id)elementInfoForElementName:(const char *)name elementNamespace:(const char *)namespace
{
  objc_sync_enter(self);
  v7 = [(PFXElementReaderDictionary *)self p_elementInfoForElementName:name elementNamespace:namespace];
  if (!v7)
  {
    if (self->mAllowFallThrough)
    {
      [(PFXElementReaderDictionary *)self addEntryWithElementName:name elementNamespace:namespace mappingClass:objc_opt_class()];
      v7 = [(PFXElementReaderDictionary *)self p_elementInfoForElementName:name elementNamespace:namespace];
    }

    else
    {
      v7 = 0;
    }
  }

  objc_sync_exit(self);
  return v7;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

@end