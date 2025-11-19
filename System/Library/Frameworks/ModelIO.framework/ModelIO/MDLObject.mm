@interface MDLObject
- (MDLAxisAlignedBoundingBox)boundingBoxAtTime:(SEL)a3;
- (MDLObject)init;
- (MDLObject)objectAtPath:(NSString *)path;
- (MDLObject)parent;
- (NSArray)components;
- (NSString)path;
- (id)componentConformingToProtocol:(Protocol *)protocol;
- (id)description;
- (id)objectForKeyedSubscript:(Protocol *)key;
- (id)recursiveDescription;
- (void)addChild:(MDLObject *)child;
- (void)enumerateChildObjectsOfClass:(Class)objectClass root:(MDLObject *)root usingBlock:(void *)block stopPointer:(BOOL *)stopPointer;
- (void)setComponent:(id)component forProtocol:(Protocol *)protocol;
@end

@implementation MDLObject

- (MDLObject)init
{
  v12.receiver = self;
  v12.super_class = MDLObject;
  v4 = [(MDLObject *)&v12 init];
  if (v4)
  {
    v5 = dword_280BC3A40++;
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v2, @"Obj%d", v5);
    name = v4->name;
    v4->name = v6;
  }

  v8 = objc_msgSend_children(v4, v2, v3);

  if (!v8)
  {
    v9 = objc_opt_new();
    objc_msgSend_setChildren_(v4, v10, v9);
  }

  return v4;
}

- (void)setComponent:(id)component forProtocol:(Protocol *)protocol
{
  v11 = component;
  v7 = protocol;
  components = self->_components;
  if (!components)
  {
    v9 = objc_opt_new();
    v10 = self->_components;
    self->_components = v9;

    components = self->_components;
  }

  objc_msgSend_setObject_forKey_(components, v6, v11, v7);
}

- (id)componentConformingToProtocol:(Protocol *)protocol
{
  v3 = objc_msgSend_objectForKey_(self->_components, a2, protocol);

  return v3;
}

- (id)objectForKeyedSubscript:(Protocol *)key
{
  v3 = objc_msgSend_componentConformingToProtocol_(self, a2, key);

  return v3;
}

- (NSArray)components
{
  v3 = objc_msgSend_objectEnumerator(self->_components, a2, v2);
  v6 = objc_msgSend_allObjects(v3, v4, v5);

  return v6;
}

- (MDLObject)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (NSString)path
{
  v53 = *MEMORY[0x277D85DE8];
  name = self->name;
  if (!name)
  {
    v4 = dword_280BC3A40++;
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Obj%d", v4);
    v6 = self->name;
    self->name = v5;

    name = self->name;
  }

  v47 = 0;
  v48 = 0;
  v49 = 0;
  v7 = objc_msgSend_cStringUsingEncoding_(name, a2, 4);
  sub_239E552A0(v44, v7);
  sub_239F5D2FC(v44, &__p);
  v8 = v48;
  if (v48 >= v49)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v48 - v47) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_239E797B4();
    }

    if (0x5555555555555556 * ((v49 - v47) >> 3) > v11)
    {
      v11 = 0x5555555555555556 * ((v49 - v47) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v49 - v47) >> 3) >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v11;
    }

    v52 = &v47;
    if (v12)
    {
      sub_239F5E650(&v47, v12);
    }

    v13 = 8 * ((v48 - v47) >> 3);
    v14 = *&__p.__r_.__value_.__l.__data_;
    *(v13 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v13 = v14;
    memset(&__p, 0, sizeof(__p));
    v15 = (24 * v10 + 24);
    v16 = (24 * v10 - (v48 - v47));
    memcpy((v13 - (v48 - v47)), v47, v48 - v47);
    v17 = v47;
    v18 = v49;
    v47 = v16;
    v48 = v15;
    v49 = 0;
    v50.__r_.__value_.__r.__words[0] = v17;
    v50.__r_.__value_.__r.__words[2] = v17;
    v51 = v18;
    v50.__r_.__value_.__l.__size_ = v17;
    sub_239F5E6A8(&v50);
    v48 = v15;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v9 = *&__p.__r_.__value_.__l.__data_;
    *(v48 + 2) = *(&__p.__r_.__value_.__l + 2);
    *v8 = v9;
    memset(&__p, 0, sizeof(__p));
    v48 = v8 + 24;
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  WeakRetained = objc_loadWeakRetained(&self->_parent);
  if (WeakRetained)
  {
    do
    {
      memset(&__p, 0, sizeof(__p));
      v22 = objc_msgSend_name(WeakRetained, v19, v20);
      v23 = v22;
      v25 = objc_msgSend_cStringUsingEncoding_(v22, v24, 4);
      sub_239E552A0(&__p, v25);

      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        bzero(&v50, 0x400uLL);
        v27 = dword_27DF912C8++;
        sprintf(&v50, "mdl%d", v27);
        MEMORY[0x23EE7FFA0](&__p, &v50);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v28, &__p, 4);
        }

        else
        {
          objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v28, __p.__r_.__value_.__l.__data_, 4);
        }
        v29 = ;
        objc_msgSend_setName_(WeakRetained, v30, v29);
      }

      sub_239F5D2FC(&__p, &v50);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v50;
      v31 = v48;
      if (v48 >= v49)
      {
        v33 = sub_239F5E73C(&v47, &__p);
      }

      else
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_239E5BAE0(v48, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v32 = *&__p.__r_.__value_.__l.__data_;
          *(v48 + 2) = *(&__p.__r_.__value_.__l + 2);
          *v31 = v32;
        }

        v33 = v31 + 24;
      }

      v48 = v33;
      v34 = objc_loadWeakRetained(WeakRetained + 1);

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      WeakRetained = v34;
    }

    while (v34);
  }

  memset(&v50, 0, sizeof(v50));
  v35 = v48;
  while (v35 != v47)
  {
    std::string::append(&v50, "/");
    v37 = *(v35 - 3);
    v35 -= 24;
    v36 = v37;
    v38 = v35[23];
    if (v38 >= 0)
    {
      v39 = v35;
    }

    else
    {
      v39 = v36;
    }

    if (v38 >= 0)
    {
      v40 = v35[23];
    }

    else
    {
      v40 = *(v35 + 1);
    }

    std::string::append(&v50, v39, v40);
  }

  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v19, &v50, 4);
  }

  else
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v19, v50.__r_.__value_.__l.__data_, 4);
  }
  v41 = ;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  v50.__r_.__value_.__r.__words[0] = &v47;
  sub_239EBD408(&v50);
  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

- (void)enumerateChildObjectsOfClass:(Class)objectClass root:(MDLObject *)root usingBlock:(void *)block stopPointer:(BOOL *)stopPointer
{
  v28 = *MEMORY[0x277D85DE8];
  v11 = block;
  v26 = 0;
  if (stopPointer)
  {
    v12 = stopPointer;
  }

  else
  {
    v12 = &v26;
  }

  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = objc_msgSend_children(root, v9, v10, 0);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v22, v27, 16);
  if (v15)
  {
    v16 = *v23;
LABEL_6:
    v17 = 0;
    while (1)
    {
      if (*v23 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v22 + 1) + 8 * v17);
      if (objc_opt_isKindOfClass())
      {
        v11[2](v11, v18, v12);
      }

      if (*v12)
      {
        break;
      }

      objc_msgSend_enumerateChildObjectsOfClass_root_usingBlock_stopPointer_(v18, v19, objectClass, v18, v11, v12);
      if (*v12)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, &v22, v27, 16);
        if (v15)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (MDLObject)objectAtPath:(NSString *)path
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = path;
  v33 = v4;
  if (v4 && objc_msgSend_length(v4, v5, v6))
  {
    v8 = objc_msgSend_componentsSeparatedByString_(v33, v7, @"/");
    v11 = v8;
    if (v8 && objc_msgSend_count(v8, v9, v10))
    {
      v12 = self;
      v15 = 0;
      while (1)
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v34 = v12;
        v16 = objc_msgSend_children(v12, v13, v14, v33);
        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v35, v39, 16);
        if (!v19)
        {
          break;
        }

        v20 = *v36;
LABEL_8:
        v21 = 0;
        while (1)
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v35 + 1) + 8 * v21);
          v23 = objc_msgSend_objectAtIndexedSubscript_(v11, v18, v15);
          v26 = objc_msgSend_name(v22, v24, v25);
          isEqualToString = objc_msgSend_isEqualToString_(v23, v27, v26);

          if (isEqualToString)
          {
            break;
          }

          if (v19 == ++v21)
          {
            v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v35, v39, 16);
            if (v19)
            {
              goto LABEL_8;
            }

            goto LABEL_20;
          }
        }

        v30 = objc_msgSend_count(v11, v18, v29) - 1;
        v19 = v22;
        if (v30 == v15)
        {
          break;
        }

        ++v15;
        v12 = v19;
        if (!v19)
        {
          goto LABEL_21;
        }
      }

LABEL_20:
    }

    else
    {
      v19 = 0;
    }

LABEL_21:
  }

  else
  {
    v19 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)addChild:(MDLObject *)child
{
  v14 = child;
  if (v14)
  {
    v6 = objc_msgSend_children(self, v4, v5);

    if (!v6)
    {
      v9 = objc_opt_new();
      objc_msgSend_setChildren_(self, v10, v9);
    }

    v11 = objc_msgSend_children(self, v7, v8);
    objc_msgSend_addObject_(v11, v12, v14);

    objc_msgSend_setParent_(v14, v13, self);
  }
}

- (id)description
{
  v17 = self;
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v7 = objc_msgSend_name(self, v5, v6);
  v10 = objc_msgSend_children(v17, v8, v9);
  v13 = objc_msgSend_count(v10, v11, v12);
  v15 = objc_msgSend_initWithFormat_(v3, v14, @"<<%@: 0x%lx>, Name: %@, Children: %d>", v4, &v17, v7, v13);

  return v15;
}

- (id)recursiveDescription
{
  v4 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, v2);
  objc_msgSend_appendFormat_(v4, v5, @"%@\n", self);
  for (i = 0; ; ++i)
  {
    v9 = objc_msgSend_children(self, v6, v7);
    v12 = objc_msgSend_count(v9, v10, v11);

    if (i >= v12)
    {
      break;
    }

    v15 = objc_msgSend_children(self, v13, v14);
    v17 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, i);
    v20 = objc_msgSend_recursiveDescription(v17, v18, v19);

    v23 = objc_msgSend_children(self, v21, v22);
    v26 = objc_msgSend_count(v23, v24, v25);
    v27 = @"    ";
    if (i < v26 - 1)
    {
      v27 = @" |  ";
    }

    v28 = v27;

    v32 = objc_msgSend_componentsSeparatedByString_(v20, v29, @"\n");
    v33 = 0;
    v34 = 0;
    while (1)
    {
      v36 = v34;
      if (objc_msgSend_count(v32, v30, v31) <= v34)
      {
        break;
      }

      v37 = objc_msgSend_objectAtIndexedSubscript_(v32, v35, v34);
      v40 = objc_msgSend_length(v37, v38, v39);

      if (!v40)
      {
        break;
      }

      v43 = objc_msgSend_objectAtIndexedSubscript_(v32, v41, v36);
      if (v33)
      {
        objc_msgSend_appendFormat_(v4, v42, @"%@%@\n", v28, v43);
      }

      else
      {
      }

      v34 = v36 + 1;
      v33 = 1;
    }
  }

  return v4;
}

- (MDLAxisAlignedBoundingBox)boundingBoxAtTime:(SEL)a3
{
  v4 = *(MEMORY[0x277D860B8] + 16);
  v8[0] = *MEMORY[0x277D860B8];
  v8[1] = v4;
  v5 = *(MEMORY[0x277D860B8] + 48);
  v8[2] = *(MEMORY[0x277D860B8] + 32);
  v8[3] = v5;
  sub_239F5E204(self, v8, &v7);
  return result;
}

@end