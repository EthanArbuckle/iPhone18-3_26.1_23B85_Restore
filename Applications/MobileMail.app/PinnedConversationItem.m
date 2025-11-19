@interface PinnedConversationItem
+ (id)pinnedItemWithID:(id)a3 dynamicOffset:(id)a4 indexPathProvider:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSIndexPath)indexPath;
- (NSString)ef_publicDescription;
@end

@implementation PinnedConversationItem

+ (id)pinnedItemWithID:(id)a3 dynamicOffset:(id)a4 indexPathProvider:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  v11 = 0;
  if (v7 && v9)
  {
    v11 = objc_alloc_init(PinnedConversationItem);
    [(PinnedConversationItem *)v11 setItemID:v7];
    [(PinnedConversationItem *)v11 setDynamicOffset:v8];
    [(PinnedConversationItem *)v11 setIndexPathProvider:v10];
  }

  return v11;
}

- (NSIndexPath)indexPath
{
  v3 = [(PinnedConversationItem *)self indexPathProvider];
  v4 = (v3)[2](v3, self);

  return v4;
}

- (NSString)ef_publicDescription
{
  v3 = objc_opt_class();
  v4 = [(PinnedConversationItem *)self itemID];
  v5 = [(PinnedConversationItem *)self indexPath];
  v6 = [(PinnedConversationItem *)self dynamicOffset];
  v7 = [v6 ef_publicDescription];
  v8 = [NSString stringWithFormat:@"<%@:%p> itemID=%@ indexPath=%@ dynamicOffset=%@", v3, self, v4, v5, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 dynamicOffset];
    v7 = [(PinnedConversationItem *)self dynamicOffset];
    if ([v6 isEqual:v7])
    {
      v8 = [v5 itemID];
      v9 = [(PinnedConversationItem *)self itemID];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end