@interface ENLinkedNotebookRef
+ (id)linkedNotebookRefFromLinkedNotebook:(id)notebook;
- (BOOL)isEqual:(id)equal;
- (ENLinkedNotebookRef)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENLinkedNotebookRef

- (unint64_t)hash
{
  guid = [(ENLinkedNotebookRef *)self guid];
  v4 = [guid hash];

  noteStoreUrl = [(ENLinkedNotebookRef *)self noteStoreUrl];
  v6 = [noteStoreUrl hash] - v4 + 32 * v4;

  shardId = [(ENLinkedNotebookRef *)self shardId];
  v8 = [shardId hash] - v6 + 32 * v6;

  sharedNotebookGlobalId = [(ENLinkedNotebookRef *)self sharedNotebookGlobalId];
  v10 = [sharedNotebookGlobalId hash] - v8 + 32 * v8;

  return v10 + 923521;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        guid = [(ENLinkedNotebookRef *)v7 guid];
        guid2 = [(ENLinkedNotebookRef *)self guid];
        if (guid != guid2)
        {
          guid3 = [(ENLinkedNotebookRef *)v7 guid];
          [(ENLinkedNotebookRef *)self guid];
          v34 = v33 = guid3;
          if (![guid3 isEqualToString:?])
          {
            v11 = 0;
            goto LABEL_25;
          }
        }

        noteStoreUrl = [(ENLinkedNotebookRef *)v7 noteStoreUrl];
        noteStoreUrl2 = [(ENLinkedNotebookRef *)self noteStoreUrl];
        if (noteStoreUrl != noteStoreUrl2)
        {
          noteStoreUrl3 = [(ENLinkedNotebookRef *)v7 noteStoreUrl];
          noteStoreUrl4 = [(ENLinkedNotebookRef *)self noteStoreUrl];
          if (![noteStoreUrl3 isEqualToString:?])
          {
            v11 = 0;
LABEL_23:

LABEL_24:
            if (guid == guid2)
            {
LABEL_26:

              goto LABEL_27;
            }

LABEL_25:

            goto LABEL_26;
          }
        }

        shardId = [(ENLinkedNotebookRef *)v7 shardId];
        shardId2 = [(ENLinkedNotebookRef *)self shardId];
        v32 = shardId;
        v16 = shardId == shardId2;
        v17 = shardId2;
        if (v16)
        {
          v29 = noteStoreUrl3;
          v30 = noteStoreUrl2;
        }

        else
        {
          shardId3 = [(ENLinkedNotebookRef *)v7 shardId];
          shardId4 = [(ENLinkedNotebookRef *)self shardId];
          v27 = shardId3;
          if (![shardId3 isEqualToString:?])
          {
            v11 = 0;
            v24 = v32;
            goto LABEL_21;
          }

          v29 = noteStoreUrl3;
          v30 = noteStoreUrl2;
        }

        v28 = v17;
        sharedNotebookGlobalId = [(ENLinkedNotebookRef *)v7 sharedNotebookGlobalId];
        sharedNotebookGlobalId2 = [(ENLinkedNotebookRef *)self sharedNotebookGlobalId];
        v21 = sharedNotebookGlobalId2;
        if (sharedNotebookGlobalId == sharedNotebookGlobalId2)
        {

          v11 = 1;
        }

        else
        {
          sharedNotebookGlobalId3 = [(ENLinkedNotebookRef *)v7 sharedNotebookGlobalId];
          sharedNotebookGlobalId4 = [(ENLinkedNotebookRef *)self sharedNotebookGlobalId];
          v11 = [sharedNotebookGlobalId3 isEqualToString:sharedNotebookGlobalId4];
        }

        v24 = v32;
        v17 = v28;
        noteStoreUrl3 = v29;
        noteStoreUrl2 = v30;
        if (v32 == v28)
        {
LABEL_22:

          if (noteStoreUrl == noteStoreUrl2)
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  guid = [(ENLinkedNotebookRef *)self guid];
  [coderCopy encodeObject:guid forKey:@"guid"];

  noteStoreUrl = [(ENLinkedNotebookRef *)self noteStoreUrl];
  [coderCopy encodeObject:noteStoreUrl forKey:@"noteStoreUrl"];

  shardId = [(ENLinkedNotebookRef *)self shardId];
  [coderCopy encodeObject:shardId forKey:@"shardId"];

  sharedNotebookGlobalId = [(ENLinkedNotebookRef *)self sharedNotebookGlobalId];
  [coderCopy encodeObject:sharedNotebookGlobalId forKey:@"sharedNotebookGlobalId"];
}

- (ENLinkedNotebookRef)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ENLinkedNotebookRef;
  v5 = [(ENLinkedNotebookRef *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"guid"];
    [(ENLinkedNotebookRef *)v5 setGuid:v6];

    v7 = [coderCopy decodeObjectForKey:@"noteStoreUrl"];
    [(ENLinkedNotebookRef *)v5 setNoteStoreUrl:v7];

    v8 = [coderCopy decodeObjectForKey:@"shardId"];
    [(ENLinkedNotebookRef *)v5 setShardId:v8];

    v9 = [coderCopy decodeObjectForKey:@"sharedNotebookGlobalId"];
    [(ENLinkedNotebookRef *)v5 setSharedNotebookGlobalId:v9];
  }

  return v5;
}

+ (id)linkedNotebookRefFromLinkedNotebook:(id)notebook
{
  notebookCopy = notebook;
  v4 = objc_alloc_init(ENLinkedNotebookRef);
  guid = [notebookCopy guid];
  [(ENLinkedNotebookRef *)v4 setGuid:guid];

  noteStoreUrl = [notebookCopy noteStoreUrl];
  [(ENLinkedNotebookRef *)v4 setNoteStoreUrl:noteStoreUrl];

  shardId = [notebookCopy shardId];
  [(ENLinkedNotebookRef *)v4 setShardId:shardId];

  sharedNotebookGlobalId = [notebookCopy sharedNotebookGlobalId];

  [(ENLinkedNotebookRef *)v4 setSharedNotebookGlobalId:sharedNotebookGlobalId];

  return v4;
}

@end