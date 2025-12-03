@interface CNContactPosterDataItem
+ (id)os_log;
- (void)_updateStrongForImpendingPairedItem:(id)item;
- (void)acceptVisitor:(id)visitor;
@end

@implementation CNContactPosterDataItem

- (void)acceptVisitor:(id)visitor
{
  visitorCopy = visitor;
  selfCopy = self;
  v6 = CNAbstractMethodException();
  objc_exception_throw(v6);
}

+ (id)os_log
{
  if (os_log_cn_once_token_0_6 != -1)
  {
    +[CNContactPosterDataItem(LoopAvoidance) os_log];
  }

  v3 = os_log_cn_once_object_0_6;

  return v3;
}

uint64_t __48__CNContactPosterDataItem_LoopAvoidance__os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.posters", "LoopAvoidance");
  v1 = os_log_cn_once_object_0_6;
  os_log_cn_once_object_0_6 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)_updateStrongForImpendingPairedItem:(id)item
{
  v16 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  refLoopResistantStrongPairedItem = [(CNContactPosterDataItem *)self refLoopResistantStrongPairedItem];
  refLoopResistantStrongPairedItem2 = [(CNContactPosterDataItem *)itemCopy refLoopResistantStrongPairedItem];
  v7 = refLoopResistantStrongPairedItem2;
  if (refLoopResistantStrongPairedItem2 && refLoopResistantStrongPairedItem)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_INFO))
    {
      v12 = 136446210;
      ClassName = object_getClassName(self);
      _os_log_impl(&dword_1954A0000, os_log, OS_LOG_TYPE_INFO, "[Poster/Recents] Updating the direction of the strong/refloop avoiding reference for poster/image pair to be held by %{public}s.", &v12, 0xCu);
    }

    [(CNContactPosterDataItem *)self setRefLoopResistantStrongPairedItem:itemCopy];
    selfCopy = itemCopy;
    v10 = 0;
    goto LABEL_12;
  }

  if (!refLoopResistantStrongPairedItem2)
  {
    selfCopy = self;
    v10 = itemCopy;
LABEL_12:
    [(CNContactPosterDataItem *)selfCopy setRefLoopResistantStrongPairedItem:v10];
    goto LABEL_13;
  }

  if (refLoopResistantStrongPairedItem2 != self)
  {
    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_INFO))
    {
      v12 = 136446466;
      ClassName = object_getClassName(self);
      v14 = 2082;
      v15 = object_getClassName(itemCopy);
      _os_log_impl(&dword_1954A0000, os_log2, OS_LOG_TYPE_INFO, "[Poster/Recents] On a %{public}s, setting a paired %{public}s which is already holding a strong reference to something other than us. Not updating strong references on either side, which may cause this object to get zeroed unexpectedly.", &v12, 0x16u);
    }
  }

LABEL_13:
}

@end