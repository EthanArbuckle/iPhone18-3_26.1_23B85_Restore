@interface ENLinkedNotebookRef
+ (id)linkedNotebookRefFromLinkedNotebook:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ENLinkedNotebookRef)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENLinkedNotebookRef

- (unint64_t)hash
{
  v3 = [(ENLinkedNotebookRef *)self guid];
  v4 = [v3 hash];

  v5 = [(ENLinkedNotebookRef *)self noteStoreUrl];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = [(ENLinkedNotebookRef *)self shardId];
  v8 = [v7 hash] - v6 + 32 * v6;

  v9 = [(ENLinkedNotebookRef *)self sharedNotebookGlobalId];
  v10 = [v9 hash] - v8 + 32 * v8;

  return v10 + 923521;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(ENLinkedNotebookRef *)v7 guid];
        v9 = [(ENLinkedNotebookRef *)self guid];
        if (v8 != v9)
        {
          v10 = [(ENLinkedNotebookRef *)v7 guid];
          [(ENLinkedNotebookRef *)self guid];
          v34 = v33 = v10;
          if (![v10 isEqualToString:?])
          {
            v11 = 0;
            goto LABEL_25;
          }
        }

        v12 = [(ENLinkedNotebookRef *)v7 noteStoreUrl];
        v13 = [(ENLinkedNotebookRef *)self noteStoreUrl];
        if (v12 != v13)
        {
          v3 = [(ENLinkedNotebookRef *)v7 noteStoreUrl];
          v31 = [(ENLinkedNotebookRef *)self noteStoreUrl];
          if (![v3 isEqualToString:?])
          {
            v11 = 0;
LABEL_23:

LABEL_24:
            if (v8 == v9)
            {
LABEL_26:

              goto LABEL_27;
            }

LABEL_25:

            goto LABEL_26;
          }
        }

        v14 = [(ENLinkedNotebookRef *)v7 shardId];
        v15 = [(ENLinkedNotebookRef *)self shardId];
        v32 = v14;
        v16 = v14 == v15;
        v17 = v15;
        if (v16)
        {
          v29 = v3;
          v30 = v13;
        }

        else
        {
          v18 = [(ENLinkedNotebookRef *)v7 shardId];
          v26 = [(ENLinkedNotebookRef *)self shardId];
          v27 = v18;
          if (![v18 isEqualToString:?])
          {
            v11 = 0;
            v24 = v32;
            goto LABEL_21;
          }

          v29 = v3;
          v30 = v13;
        }

        v28 = v17;
        v19 = [(ENLinkedNotebookRef *)v7 sharedNotebookGlobalId];
        v20 = [(ENLinkedNotebookRef *)self sharedNotebookGlobalId];
        v21 = v20;
        if (v19 == v20)
        {

          v11 = 1;
        }

        else
        {
          v22 = [(ENLinkedNotebookRef *)v7 sharedNotebookGlobalId];
          v23 = [(ENLinkedNotebookRef *)self sharedNotebookGlobalId];
          v11 = [v22 isEqualToString:v23];
        }

        v24 = v32;
        v17 = v28;
        v3 = v29;
        v13 = v30;
        if (v32 == v28)
        {
LABEL_22:

          if (v12 == v13)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

LABEL_21:

        goto LABEL_22;
      }
    }

    v11 = 0;
  }

LABEL_27:

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ENLinkedNotebookRef *)self guid];
  [v4 encodeObject:v5 forKey:@"guid"];

  v6 = [(ENLinkedNotebookRef *)self noteStoreUrl];
  [v4 encodeObject:v6 forKey:@"noteStoreUrl"];

  v7 = [(ENLinkedNotebookRef *)self shardId];
  [v4 encodeObject:v7 forKey:@"shardId"];

  v8 = [(ENLinkedNotebookRef *)self sharedNotebookGlobalId];
  [v4 encodeObject:v8 forKey:@"sharedNotebookGlobalId"];
}

- (ENLinkedNotebookRef)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ENLinkedNotebookRef;
  v5 = [(ENLinkedNotebookRef *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"guid"];
    [(ENLinkedNotebookRef *)v5 setGuid:v6];

    v7 = [v4 decodeObjectForKey:@"noteStoreUrl"];
    [(ENLinkedNotebookRef *)v5 setNoteStoreUrl:v7];

    v8 = [v4 decodeObjectForKey:@"shardId"];
    [(ENLinkedNotebookRef *)v5 setShardId:v8];

    v9 = [v4 decodeObjectForKey:@"sharedNotebookGlobalId"];
    [(ENLinkedNotebookRef *)v5 setSharedNotebookGlobalId:v9];
  }

  return v5;
}

+ (id)linkedNotebookRefFromLinkedNotebook:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ENLinkedNotebookRef);
  v5 = [v3 guid];
  [(ENLinkedNotebookRef *)v4 setGuid:v5];

  v6 = [v3 noteStoreUrl];
  [(ENLinkedNotebookRef *)v4 setNoteStoreUrl:v6];

  v7 = [v3 shardId];
  [(ENLinkedNotebookRef *)v4 setShardId:v7];

  v8 = [v3 sharedNotebookGlobalId];

  [(ENLinkedNotebookRef *)v4 setSharedNotebookGlobalId:v8];

  return v4;
}

@end