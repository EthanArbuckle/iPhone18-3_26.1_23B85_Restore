@interface POPodcastRevision
- (id)deletedModelObject;
- (id)description;
@end

@implementation POPodcastRevision

- (id)deletedModelObject
{
  if (objc_msgSend_isPodcastCollection(self, a2, v2, v3, v4))
  {
    v6 = @"POPodcastCollection";
  }

  else
  {
    v6 = @"POPodcastStation";
  }

  v7 = objc_alloc_init(NSClassFromString(&v6->isa));
  v12 = objc_msgSend_objectID(self, v8, v9, v10, v11);
  objc_msgSend_setUuid_(v7, v13, v12, v14, v15);

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = objc_msgSend_revisionID(self, v6, v7, v8, v9);
  v15 = objc_msgSend_revisionType(self, v11, v12, v13, v14);
  if (v15 > 2)
  {
    v20 = @"unknown";
  }

  else
  {
    v20 = off_2789DE6D0[v15];
  }

  v21 = objc_msgSend_objectID(self, v16, v17, v18, v19);
  v25 = objc_msgSend_stringWithFormat_(v3, v22, @"%@ (%p) revisionID: %lu, type: %@, uuid, %@", v23, v24, v5, self, v10, v20, v21);

  return v25;
}

@end