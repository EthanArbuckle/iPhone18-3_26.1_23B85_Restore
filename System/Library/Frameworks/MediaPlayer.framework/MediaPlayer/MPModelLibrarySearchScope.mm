@interface MPModelLibrarySearchScope
- (BOOL)isEqual:(id)equal;
- (MPModelLibrarySearchScope)initWithCoder:(id)coder;
- (MPModelLibrarySearchScope)initWithItemKind:(id)kind name:(id)name properties:(id)properties;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (shared_ptr<mlcore::LocalizedSearchScope>)coreScope;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPModelLibrarySearchScope

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (shared_ptr<mlcore::LocalizedSearchScope>)coreScope
{
  selfCopy = self;
  v4 = v2;
  ptr = self->_coreScope.__ptr_;
  if (!ptr)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = selfCopy->_itemKind;
      v11.__ptr_ = 0;
      v11.__cntrl_ = &v11;
      v12 = 0x4812000000;
      v13 = __Block_byref_object_copy__34456;
      v14 = __Block_byref_object_dispose__34457;
      v15 = "";
      v17 = 0;
      v18 = 0;
      v16 = 0;
      relationshipKinds = [(MPModelKind *)v7 relationshipKinds];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __38__MPModelLibrarySearchScope_coreScope__block_invoke_28;
      v10[3] = &unk_1E767C170;
      v10[4] = selfCopy;
      v10[5] = &__block_literal_global_34459;
      v10[6] = &v11;
      v10[7] = a2;
      [relationshipKinds enumerateKeysAndObjectsUsingBlock:v10];

      operator new();
    }

    __38__MPModelLibrarySearchScope_coreScope__block_invoke(selfCopy->_itemKind, selfCopy->_itemProperties, &v11);
    self = selfCopy->_coreScope.__cntrl_;
    selfCopy->_coreScope = v11;
    if (self)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](self);
    }

    ptr = selfCopy->_coreScope.__ptr_;
  }

  cntrl = selfCopy->_coreScope.__cntrl_;
  *v4 = ptr;
  v4[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

void __38__MPModelLibrarySearchScope_coreScope__block_invoke_28(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[5];
  v8 = [*(a1[4] + 40) relationships];
  v9 = [v8 objectForKeyedSubscript:v5];
  (*(v7 + 16))(&v11, v7, v6, v9);

  if (!v11)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a1[7] object:a1[4] file:@"MPModelLibrarySearchScope.mm" lineNumber:121 description:{@"Couldn't create scope for modelKind: %@", v6}];
  }

  std::vector<std::shared_ptr<mlcore::LocalizedSearchScope>>::push_back[abi:ne200100](*(a1[6] + 8) + 48, &v11);
  if (*(&v11 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
  }
}

void __38__MPModelLibrarySearchScope_coreScope__block_invoke(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v5 = a1;
  v6 = a2;
  v7 = +[MPMediaLibraryEntityTranslator translatorForMPModelClass:](MPMediaLibraryEntityTranslator, "translatorForMPModelClass:", [v5 modelClass]);
  if ([v7 entityClass])
  {
    if (v5)
    {
      [v5 representedSearchScopePredicate];
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    else if (!v7)
    {
LABEL_7:
      operator new();
    }

    [v7 MLCorePropertiesForPropertySet:v6];
    goto LABEL_7;
  }

  *a3 = 0;
  a3[1] = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 24), self->_itemKind);
    objc_storeStrong((v5 + 32), self->_name);
    objc_storeStrong((v5 + 40), self->_itemProperties);
    ptr = self->_coreScope.__ptr_;
    cntrl = self->_coreScope.__cntrl_;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    v8 = *(v5 + 16);
    *(v5 + 8) = ptr;
    *(v5 + 16) = cntrl;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_itemKind forKey:@"MPModelLibrarySearchScopeItemKind"];
  [coderCopy encodeObject:self->_name forKey:@"MPModelLibrarySearchScopeName"];
  [coderCopy encodeObject:self->_itemProperties forKey:@"MPModelLibrarySearchScopeItemProperties"];
}

- (MPModelLibrarySearchScope)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MPModelLibrarySearchScope *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPModelLibrarySearchScopeItemKind"];
    itemKind = v5->_itemKind;
    v5->_itemKind = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPModelLibrarySearchScopeName"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPModelLibrarySearchScopeItemProperties"];
    itemProperties = v5->_itemProperties;
    v5->_itemProperties = v10;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    itemKind = [(MPModelLibrarySearchScope *)self itemKind];
    itemKind2 = [(MPModelLibrarySearchScope *)v6 itemKind];
    v9 = itemKind;
    v10 = itemKind2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      v12 = [v9 isEqual:v10];

      if ((v12 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    name = [(MPModelLibrarySearchScope *)self name];
    name2 = [(MPModelLibrarySearchScope *)v6 name];
    v16 = name;
    v17 = name2;
    v18 = v17;
    if (v16 == v17)
    {
    }

    else
    {
      v19 = [v16 isEqual:v17];

      if ((v19 & 1) == 0)
      {
LABEL_9:
        v13 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    itemProperties = [(MPModelLibrarySearchScope *)self itemProperties];
    itemProperties2 = [(MPModelLibrarySearchScope *)v6 itemProperties];
    v22 = itemProperties;
    v23 = itemProperties2;
    if (v22 == v23)
    {
      v13 = 1;
    }

    else
    {
      v13 = [v22 isEqual:v23];
    }

    goto LABEL_15;
  }

  v13 = 1;
LABEL_16:

  return v13;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  v7 = [(MPModelKind *)self->_itemKind description];
  [v6 appendFormat:@"; itemKind = %@", v7];

  if (self->_name)
  {
    [v6 appendFormat:@"; name = %@", self->_name];
  }

  itemProperties = self->_itemProperties;
  if (itemProperties)
  {
    v9 = [(MPPropertySet *)itemProperties description];
    [v6 appendFormat:@"; itemProperties = %@", v9];
  }

  [v6 appendString:@">"];

  return v6;
}

- (MPModelLibrarySearchScope)initWithItemKind:(id)kind name:(id)name properties:(id)properties
{
  kindCopy = kind;
  nameCopy = name;
  propertiesCopy = properties;
  v12 = [(MPModelLibrarySearchScope *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_itemKind, kind);
    objc_storeStrong(&v13->_name, name);
    v14 = [propertiesCopy copy];
    itemProperties = v13->_itemProperties;
    v13->_itemProperties = v14;
  }

  return v13;
}

@end