@interface ODRApplication
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation ODRApplication

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = sub_100399CD8([ODRApplication allocWithZone:?], self->_bundleID);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10039BCB8;
  block[3] = &unk_10051F4B0;
  block[4] = self;
  v7 = v5;
  v12 = v7;
  v13 = a3;
  dispatch_sync(dispatchQueue, block);
  v8 = v12;
  v9 = v7;

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = sub_100399CD8([ODRMutableApplication allocWithZone:?], self->_bundleID);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10039BEAC;
  block[3] = &unk_10051F4B0;
  block[4] = self;
  v7 = v5;
  v12 = v7;
  v13 = a3;
  dispatch_sync(dispatchQueue, block);
  v8 = v12;
  v9 = v7;

  return v9;
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10039A5A8;
  v10 = sub_10039A5B8;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10039BFAC;
  v5[3] = &unk_10051EEF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (unint64_t)hash
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10039C114;
  v5[3] = &unk_10051B638;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(self) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      if (self)
      {
        v12 = 0;
        v13 = &v12;
        v14 = 0x2020000000;
        v15 = 0;
        dispatchQueue = self->_dispatchQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10039A940;
        block[3] = &unk_10051AE98;
        v11 = &v12;
        block[4] = self;
        v10 = v5;
        dispatch_sync(dispatchQueue, block);
        LOBYTE(self) = *(v13 + 24);

        _Block_object_dispose(&v12, 8);
      }
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  return self & 1;
}

@end