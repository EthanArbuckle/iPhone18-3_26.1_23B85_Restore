@interface MDLBundleAssetResolver
- (BOOL)canResolveAssetNamed:(id)a3;
- (MDLBundleAssetResolver)initWithBundle:(NSString *)path;
- (id)resolveAssetNamed:(id)a3;
@end

@implementation MDLBundleAssetResolver

- (MDLBundleAssetResolver)initWithBundle:(NSString *)path
{
  v5 = path;
  v10.receiver = self;
  v10.super_class = MDLBundleAssetResolver;
  v6 = [(MDLBundleAssetResolver *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundle, path);
    v8 = v7;
  }

  return v7;
}

- (id)resolveAssetNamed:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_bundle)
  {
    memset(&__str, 0, sizeof(__str));
    v6 = v4;
    v8 = objc_msgSend_cStringUsingEncoding_(v6, v7, 4);
    sub_239E552A0(&__str, v8);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    v11 = p_str + size;
    if (size)
    {
      v12 = p_str;
      v13 = (p_str + size);
      do
      {
        v14 = v12;
        v15 = v12;
        while (1)
        {
          v16 = *v15++;
          if (v16 == 46)
          {
            break;
          }

          v14 = v15;
          if (v15 == v11)
          {
            v14 = v13;
            goto LABEL_18;
          }
        }

        v12 = (&v14->__r_.__value_.__l.__data_ + 1);
        v13 = v14;
      }

      while (v15 != v11);
    }

    else
    {
      v14 = p_str;
    }

LABEL_18:
    v18 = v14 - p_str;
    if (v14 == v11)
    {
      v19 = -1;
    }

    else
    {
      v19 = v18;
    }

    memset(&v27, 0, sizeof(v27));
    std::string::basic_string(&v27, &__str, v19 + 1, size, &v26);
    std::string::basic_string(&v26, &__str, 0, v19, &v29);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v26;
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v20, &__str, 4);
    }

    else
    {
      objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v20, v26.__r_.__value_.__l.__data_, 4);
    }
    v22 = ;
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v21, &v27, 4);
    }

    else
    {
      objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v21, v27.__r_.__value_.__l.__data_, 4);
    }
    v23 = ;
    v17 = objc_msgSend_URLForResource_withExtension_(self->_bundle, v24, v22, v23);

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)canResolveAssetNamed:(id)a3
{
  v5 = a3;
  if (v5 && self->_path)
  {
    v6 = objc_msgSend_resolveAssetNamed_(self, v4, v5);
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end