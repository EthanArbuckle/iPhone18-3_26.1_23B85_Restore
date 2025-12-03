@interface _LSClaimBindingDocumentProxyBindable
- (BOOL)isEqual:(id)equal;
- (_LSClaimBindingDocumentProxyBindable)initWithCoder:(id)coder;
- (id)initWithProxy:(id *)proxy;
- (id)typeRecordWithError:(id *)error;
@end

@implementation _LSClaimBindingDocumentProxyBindable

- (id)initWithProxy:(id *)proxy
{
  v4 = a2;
  if (proxy)
  {
    v7.receiver = proxy;
    v7.super_class = _LSClaimBindingDocumentProxyBindable;
    v5 = objc_msgSendSuper2(&v7, sel__initProtected);
    proxy = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return proxy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(LSDocumentProxy *)self->_documentProxy isEqual:equalCopy[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_LSClaimBindingDocumentProxyBindable)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"documentProxy"];
  if (v5)
  {
    v6 = [(_LSClaimBindingDocumentProxyBindable *)&self->super.super.isa initWithProxy:v5];
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)typeRecordWithError:(id *)error
{
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v5 = [(LSDocumentProxy *)self->_documentProxy URL];
  v6 = v5;
  v7 = @"public.data";
  if (v5)
  {
    if ([v5 hasDirectoryPath])
    {
      v7 = @"public.directory";
    }

    v26 = 0;
    v8 = [[FSNode alloc] initWithURL:v6 flags:0 error:&v26];
    v9 = v26;
    if (v8)
    {
      v10 = +[_LSDServiceDomain defaultServiceDomain];
      v11 = LaunchServices::Database::Context::_get(&v27, v10, 0);

      if (v11)
      {
        LaunchServices::TypeEvaluator::TypeEvaluator(v25, v8);
        v24 = v9;
        v12 = LaunchServices::TypeEvaluator::getTypeRecord(v25, v11, &v24);
        v13 = v24;
      }

      else
      {
        v15 = +[_LSDServiceDomain defaultServiceDomain];
        v16 = LaunchServices::Database::Context::_get(&v27, v15, 0);

        if (v16)
        {
          v13 = 0;
        }

        else
        {
          v13 = v30;
        }

        v12 = 0;
      }

      v9 = v13;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    typeIdentifier = [(LSDocumentProxy *)self->_documentProxy typeIdentifier];
    if (typeIdentifier)
    {
      v12 = [UTTypeRecord typeRecordWithIdentifier:typeIdentifier];
    }

    else
    {
      name = [(LSDocumentProxy *)self->_documentProxy name];
      pathExtension = [name pathExtension];

      if (pathExtension)
      {
        v12 = [UTTypeRecord typeRecordWithTag:pathExtension ofClass:@"public.filename-extension" conformingToIdentifier:@"public.data"];
      }

      else
      {
        mIMEType = [(LSDocumentProxy *)self->_documentProxy MIMEType];
        if (mIMEType)
        {
          v12 = [UTTypeRecord typeRecordWithTag:mIMEType ofClass:@"public.mime-type" conformingToIdentifier:@"public.data"];
        }

        else
        {
          v12 = 0;
        }
      }
    }

    v9 = 0;
  }

  if (!(v12 | v9))
  {
    v12 = [UTTypeRecord typeRecordWithIdentifier:v7];
  }

  if (error && !v12)
  {
    v20 = v9;
    *error = v9;
  }

  if (v27 && v29 == 1)
  {
    _LSContextDestroy(v27);
  }

  v21 = v28;
  v27 = 0;
  v28 = 0;

  v29 = 0;
  v22 = v30;
  v30 = 0;

  return v12;
}

@end