@interface BEDocumentExternalLoadApprovalCache
+ (BEDocumentExternalLoadApprovalCache)sharedInstance;
- (BEDocumentExternalLoadApprovalCache)init;
- (BOOL)didApproveLoadingExternalContentForBookID:(id)a3;
- (BOOL)hasCachedLoadExternalContentApprovalForBookID:(id)a3;
- (id)cachedApprovalForBookID:(id)a3;
- (void)_accessCacheIvar:(id)a3;
- (void)_ensureCacheLoaded;
- (void)cachedApproval:(BOOL)a3 forBookID:(id)a4;
- (void)removeCachedDisapprovalForBookID:(id)a3;
@end

@implementation BEDocumentExternalLoadApprovalCache

+ (BEDocumentExternalLoadApprovalCache)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_116B4;
  block[3] = &unk_328680;
  block[4] = a1;
  if (qword_36AAE0 != -1)
  {
    dispatch_once(&qword_36AAE0, block);
  }

  v2 = qword_36AAD8;

  return v2;
}

- (BEDocumentExternalLoadApprovalCache)init
{
  v3.receiver = self;
  v3.super_class = BEDocumentExternalLoadApprovalCache;
  result = [(BEDocumentExternalLoadApprovalCache *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (BOOL)hasCachedLoadExternalContentApprovalForBookID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(BEDocumentExternalLoadApprovalCache *)self cachedApprovalForBookID:v4];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)didApproveLoadingExternalContentForBookID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(BEDocumentExternalLoadApprovalCache *)self cachedApprovalForBookID:v4];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)cachedApprovalForBookID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_11964;
  v15 = sub_11974;
  v16 = 0;
  if ([v4 length])
  {
    [(BEDocumentExternalLoadApprovalCache *)self _ensureCacheLoaded];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1197C;
    v8[3] = &unk_3281C0;
    v10 = &v11;
    v8[4] = self;
    v9 = v4;
    [(BEDocumentExternalLoadApprovalCache *)self _accessCacheIvar:v8];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = v12[5];
      v12[5] = 0;
    }
  }

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)cachedApproval:(BOOL)a3 forBookID:(id)a4
{
  v6 = a4;
  if ([v6 length])
  {
    [(BEDocumentExternalLoadApprovalCache *)self _ensureCacheLoaded];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_11A84;
    v7[3] = &unk_3286A8;
    v7[4] = self;
    v9 = a3;
    v8 = v6;
    [(BEDocumentExternalLoadApprovalCache *)self _accessCacheIvar:v7];
  }
}

- (void)removeCachedDisapprovalForBookID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(BEDocumentExternalLoadApprovalCache *)self _ensureCacheLoaded];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_11BCC;
    v5[3] = &unk_328358;
    v5[4] = self;
    v6 = v4;
    [(BEDocumentExternalLoadApprovalCache *)self _accessCacheIvar:v5];
  }
}

- (void)_ensureCacheLoaded
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_11CDC;
  v2[3] = &unk_3286D0;
  v2[4] = self;
  [(BEDocumentExternalLoadApprovalCache *)self _accessCacheIvar:v2];
}

- (void)_accessCacheIvar:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_lock);
    v4[2](v4);

    os_unfair_lock_unlock(&self->_lock);
  }
}

@end