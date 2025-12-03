@interface CNUIDraftSupport
+ (id)loadDraft:(id)draft;
+ (void)deleteDrafts;
+ (void)saveNewContactDraft:(id)draft;
@end

@implementation CNUIDraftSupport

+ (void)deleteDrafts
{
  v10 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = CNUILogContactCard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_199A75000, v3, OS_LOG_TYPE_DEBUG, "Deleting draft contact", buf, 2u);
  }

  v7 = 0;
  v4 = [defaultManager removeItemAtPath:@"/var/mobile/Library/AddressBook/NewContactDraft.cncontact" error:&v7];
  v5 = v7;
  if ((v4 & 1) == 0 && [defaultManager fileExistsAtPath:@"/var/mobile/Library/AddressBook/NewContactDraft.cncontact"])
  {
    v6 = CNUILogContactCard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_error_impl(&dword_199A75000, v6, OS_LOG_TYPE_ERROR, "Draft delete failed: %@", buf, 0xCu);
    }
  }
}

+ (id)loadDraft:(id)draft
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:draft];
  if (v4)
  {
    v17 = 0;
    v5 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v4 error:&v17];
    v6 = v17;
    v7 = v6;
    if (v5)
    {
      v8 = objc_opt_class();
      v9 = *MEMORY[0x1E696A508];
      v16 = v7;
      v10 = [v5 decodeTopLevelObjectOfClass:v8 forKey:v9 error:&v16];
      v11 = v16;

      if (v10)
      {
        v12 = v10;
        v13 = CNUILogContactCard();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_199A75000, v13, OS_LOG_TYPE_DEFAULT, "Unarchived draft contact", buf, 2u);
        }
      }

      else
      {
        v13 = CNUILogContactCard();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v19 = v11;
          _os_log_error_impl(&dword_199A75000, v13, OS_LOG_TYPE_ERROR, "Error unarchiving draft contact: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v10 = 0;
      v11 = v6;
    }

    [self deleteDrafts];
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v14 = v10;

  return v10;
}

+ (void)saveNewContactDraft:(id)draft
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:draft requiringSecureCoding:1 error:&v7];
  v4 = v7;
  v5 = CNUILogContactCard();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_199A75000, v6, OS_LOG_TYPE_DEFAULT, "Saving draft contact", buf, 2u);
    }

    [v3 writeToFile:@"/var/mobile/Library/AddressBook/NewContactDraft.cncontact" atomically:0];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_error_impl(&dword_199A75000, v6, OS_LOG_TYPE_ERROR, "Error archiving draft contact: %@", buf, 0xCu);
    }
  }
}

@end