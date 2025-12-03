@interface _LSClaimBindingURLBindable
- (BOOL)isEqual:(id)equal;
- (_LSClaimBindingURLBindable)initWithCoder:(id)coder;
- (id)initWithURL:(id *)l;
- (id)typeRecordWithError:(id *)error;
@end

@implementation _LSClaimBindingURLBindable

- (id)initWithURL:(id *)l
{
  v4 = a2;
  if (l)
  {
    v7.receiver = l;
    v7.super_class = _LSClaimBindingURLBindable;
    v5 = objc_msgSendSuper2(&v7, sel__initProtected);
    l = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return l;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSURL *)self->_url isEqual:equalCopy[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_LSClaimBindingURLBindable)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  if (v5)
  {
    v6 = [(_LSClaimBindingURLBindable *)&self->super.super.isa initWithURL:v5];
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)typeRecordWithError:(id *)error
{
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v5 = [FSNode alloc];
  url = self->_url;
  v21 = 0;
  v7 = [(FSNode *)v5 initWithURL:url flags:0 error:&v21];
  v8 = v21;
  if (v7)
  {
    v9 = +[_LSDServiceDomain defaultServiceDomain];
    v10 = LaunchServices::Database::Context::_get(&v22, v9, 0);

    if (v10)
    {
      LaunchServices::TypeEvaluator::TypeEvaluator(v20, v7);
      v19 = v8;
      v11 = LaunchServices::TypeEvaluator::getTypeRecord(v20, v10, &v19);
      v12 = v19;
    }

    else
    {
      v13 = +[_LSDServiceDomain defaultServiceDomain];
      v14 = LaunchServices::Database::Context::_get(&v22, v13, 0);

      if (v14)
      {
        v12 = 0;
      }

      else
      {
        v12 = v25;
      }

      v11 = 0;
    }

    v8 = v12;
    if (!error)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = 0;
    if (!error)
    {
      goto LABEL_13;
    }
  }

  if (!v11)
  {
    v15 = v8;
    *error = v8;
  }

LABEL_13:

  if (v22 && v24 == 1)
  {
    _LSContextDestroy(v22);
  }

  v16 = v23;
  v22 = 0;
  v23 = 0;

  v24 = 0;
  v17 = v25;
  v25 = 0;

  return v11;
}

@end