@interface PinnedConversationItem
+ (id)pinnedItemWithID:(id)d dynamicOffset:(id)offset indexPathProvider:(id)provider;
- (BOOL)isEqual:(id)equal;
- (NSIndexPath)indexPath;
- (NSString)ef_publicDescription;
@end

@implementation PinnedConversationItem

+ (id)pinnedItemWithID:(id)d dynamicOffset:(id)offset indexPathProvider:(id)provider
{
  dCopy = d;
  offsetCopy = offset;
  providerCopy = provider;
  v10 = providerCopy;
  v11 = 0;
  if (dCopy && providerCopy)
  {
    v11 = objc_alloc_init(PinnedConversationItem);
    [(PinnedConversationItem *)v11 setItemID:dCopy];
    [(PinnedConversationItem *)v11 setDynamicOffset:offsetCopy];
    [(PinnedConversationItem *)v11 setIndexPathProvider:v10];
  }

  return v11;
}

- (NSIndexPath)indexPath
{
  indexPathProvider = [(PinnedConversationItem *)self indexPathProvider];
  v4 = (indexPathProvider)[2](indexPathProvider, self);

  return v4;
}

- (NSString)ef_publicDescription
{
  v3 = objc_opt_class();
  itemID = [(PinnedConversationItem *)self itemID];
  indexPath = [(PinnedConversationItem *)self indexPath];
  dynamicOffset = [(PinnedConversationItem *)self dynamicOffset];
  ef_publicDescription = [dynamicOffset ef_publicDescription];
  v8 = [NSString stringWithFormat:@"<%@:%p> itemID=%@ indexPath=%@ dynamicOffset=%@", v3, self, itemID, indexPath, ef_publicDescription];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    dynamicOffset = [v5 dynamicOffset];
    dynamicOffset2 = [(PinnedConversationItem *)self dynamicOffset];
    if ([dynamicOffset isEqual:dynamicOffset2])
    {
      itemID = [v5 itemID];
      itemID2 = [(PinnedConversationItem *)self itemID];
      v10 = [itemID isEqual:itemID2];
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