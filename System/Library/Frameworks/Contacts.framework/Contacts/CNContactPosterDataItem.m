@interface CNContactPosterDataItem
+ (id)os_log;
- (void)_updateStrongForImpendingPairedItem:(id)a3;
- (void)acceptVisitor:(id)a3;
@end

@implementation CNContactPosterDataItem

- (void)acceptVisitor:(id)a3
{
  v4 = a3;
  v5 = self;
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

- (void)_updateStrongForImpendingPairedItem:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNContactPosterDataItem *)self refLoopResistantStrongPairedItem];
  v6 = [(CNContactPosterDataItem *)v4 refLoopResistantStrongPairedItem];
  v7 = v6;
  if (v6 && v5)
  {
    v8 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = 136446210;
      ClassName = object_getClassName(self);
      _os_log_impl(&dword_1954A0000, v8, OS_LOG_TYPE_INFO, "[Poster/Recents] Updating the direction of the strong/refloop avoiding reference for poster/image pair to be held by %{public}s.", &v12, 0xCu);
    }

    [(CNContactPosterDataItem *)self setRefLoopResistantStrongPairedItem:v4];
    v9 = v4;
    v10 = 0;
    goto LABEL_12;
  }

  if (!v6)
  {
    v9 = self;
    v10 = v4;
LABEL_12:
    [(CNContactPosterDataItem *)v9 setRefLoopResistantStrongPairedItem:v10];
    goto LABEL_13;
  }

  if (v6 != self)
  {
    v11 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 136446466;
      ClassName = object_getClassName(self);
      v14 = 2082;
      v15 = object_getClassName(v4);
      _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_INFO, "[Poster/Recents] On a %{public}s, setting a paired %{public}s which is already holding a strong reference to something other than us. Not updating strong references on either side, which may cause this object to get zeroed unexpectedly.", &v12, 0x16u);
    }
  }

LABEL_13:
}

@end