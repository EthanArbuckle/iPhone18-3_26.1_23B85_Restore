@interface UIPasteboard(MFAttachmentsPasteboardSupport)
- (id)mf_getAttachmentsPasteboardRepresentations;
- (void)mf_addPasteboardRepresentationsForAttachments:()MFAttachmentsPasteboardSupport;
@end

@implementation UIPasteboard(MFAttachmentsPasteboardSupport)

- (void)mf_addPasteboardRepresentationsForAttachments:()MFAttachmentsPasteboardSupport
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __94__UIPasteboard_MFAttachmentsPasteboardSupport__mf_addPasteboardRepresentationsForAttachments___block_invoke;
  v12[3] = &unk_1E806CA88;
  v6 = v5;
  v13 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v12];
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
  items = [self items];
  v9 = [items mutableCopy];

  if ([v9 count])
  {
    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = [v10 mutableCopy];
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  }

  [v11 setObject:v7 forKeyedSubscript:@"mf_attachmentsData"];
  [v9 setObject:v11 atIndexedSubscript:0];
  [self setItems:v9];
}

- (id)mf_getAttachmentsPasteboardRepresentations
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = [self dataForPasteboardType:@"mf_attachmentsData" inItemSet:0];
  lastObject = [v1 lastObject];

  if (lastObject)
  {
    v3 = MEMORY[0x1E696ACD0];
    v4 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:3];
    v6 = [v4 setWithArray:{v5, v9, v10}];
    v7 = [v3 unarchivedObjectOfClasses:v6 fromData:lastObject error:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end