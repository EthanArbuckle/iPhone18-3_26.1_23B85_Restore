@interface _LSClaimBindingDocumentProxyBindable
- (BOOL)isEqual:(id)a3;
- (_LSClaimBindingDocumentProxyBindable)initWithCoder:(id)a3;
- (id)initWithProxy:(id *)a1;
- (id)typeRecordWithError:(id *)a3;
@end

@implementation _LSClaimBindingDocumentProxyBindable

- (id)initWithProxy:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = _LSClaimBindingDocumentProxyBindable;
    v5 = objc_msgSendSuper2(&v7, sel__initProtected);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(LSDocumentProxy *)self->_documentProxy isEqual:v4[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_LSClaimBindingDocumentProxyBindable)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentProxy"];
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

- (id)typeRecordWithError:(id *)a3
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
    v14 = [(LSDocumentProxy *)self->_documentProxy typeIdentifier];
    if (v14)
    {
      v12 = [UTTypeRecord typeRecordWithIdentifier:v14];
    }

    else
    {
      v17 = [(LSDocumentProxy *)self->_documentProxy name];
      v18 = [v17 pathExtension];

      if (v18)
      {
        v12 = [UTTypeRecord typeRecordWithTag:v18 ofClass:@"public.filename-extension" conformingToIdentifier:@"public.data"];
      }

      else
      {
        v19 = [(LSDocumentProxy *)self->_documentProxy MIMEType];
        if (v19)
        {
          v12 = [UTTypeRecord typeRecordWithTag:v19 ofClass:@"public.mime-type" conformingToIdentifier:@"public.data"];
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

  if (a3 && !v12)
  {
    v20 = v9;
    *a3 = v9;
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