@interface NSExtensionItem
- (NSAttributedString)attributedContentText;
- (NSAttributedString)attributedTitle;
- (NSDictionary)userInfo;
- (NSExtensionItem)init;
- (NSExtensionItem)initWithCoder:(id)a3;
- (id)_matchingDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)setAttachments:(NSArray *)attachments;
- (void)setAttributedContentText:(NSAttributedString *)attributedContentText;
- (void)setAttributedTitle:(NSAttributedString *)attributedTitle;
@end

@implementation NSExtensionItem

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSExtensionItem;
  return [NSString stringWithFormat:@"%@ - userInfo: %@", [(NSExtensionItem *)&v3 description], self->_userInfo];
}

- (NSExtensionItem)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = NSExtensionItem;
  v2 = [(NSExtensionItem *)&v4 init];
  if (v2)
  {
    v2->_userInfo = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (NSDictionary)userInfo
{
  v2 = [(NSMutableDictionary *)self->_userInfo copy];

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSExtensionItem;
  [(NSExtensionItem *)&v3 dealloc];
}

- (NSExtensionItem)initWithCoder:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSExtensionItem;
  v4 = [(NSExtensionItem *)&v6 init];
  if (v4)
  {
    v4->_userInfo = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(a3 forKey:{"allowedClasses"), @"NSExtensionItemUserInfoKey", "mutableCopy"}];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(NSExtensionItem);
  v5 = [(NSDictionary *)[(NSExtensionItem *)self userInfo] mutableCopy];
  v6 = [(NSMutableDictionary *)v5 objectForKey:@"NSExtensionItemAttachmentsKey"];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if (objc_opt_isKindOfClass())
        {
          v12 = [v12 copy];
        }

        [v7 addObject:v12];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v9);
  }

  [(NSMutableDictionary *)v5 setObject:v7 forKey:@"NSExtensionItemAttachmentsKey"];

  v4->_userInfo = v5;
  return v4;
}

- (void)setAttributedTitle:(NSAttributedString *)attributedTitle
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (attributedTitle)
  {
    v12 = 0;
    v5 = [(NSAttributedString *)attributedTitle length];
    v17 = _MergedGlobals_85[0]();
    v18[0] = off_1ED439808[0]();
    v6 = -[NSAttributedString dataFromRange:documentAttributes:error:](attributedTitle, "dataFromRange:documentAttributes:error:", 0, v5, [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1], &v12);
    if (v6)
    {
      [(NSMutableDictionary *)self->_userInfo setValue:v6 forKey:@"NSExtensionItemAttributedTitleKey"];
      if ([(NSAttributedString *)attributedTitle prefersRTFDInRange:0, [(NSAttributedString *)attributedTitle length]])
      {
        v7 = [(NSAttributedString *)attributedTitle length];
        v15 = _MergedGlobals_85[0]();
        v16 = off_1ED439810[0]();
        v8 = -[NSAttributedString dataFromRange:documentAttributes:error:](attributedTitle, "dataFromRange:documentAttributes:error:", 0, v7, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1], &v12);
        if (v8)
        {
          [(NSMutableDictionary *)self->_userInfo setValue:v8 forKey:@"_NSExtensionItemRTFDAttributedTitleKey"];
        }

        else
        {
          NSLog(@"unable to create RTFD representation of attributed string! error - %@", [v12 description]);
        }
      }
    }

    else
    {
      v10 = _NSOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v12 description];
        *buf = 138412290;
        v14 = v11;
        _os_log_error_impl(&dword_18075C000, v10, OS_LOG_TYPE_ERROR, "unable to create RTF representation of attributed string! error - %@", buf, 0xCu);
      }
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_userInfo removeObjectForKey:@"NSExtensionItemAttributedTitleKey"];
    userInfo = self->_userInfo;

    [(NSMutableDictionary *)userInfo removeObjectForKey:@"_NSExtensionItemRTFDAttributedTitleKey"];
  }
}

- (NSAttributedString)attributedTitle
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_userInfo objectForKey:@"_NSExtensionItemRTFDAttributedTitleKey"];
  if (!v3 || (v4 = v3, *buf = 0, UIFoundationLibrary(), v5 = [NSAttributedString alloc], v17 = _MergedGlobals_85[0](), v18[0] = off_1ED439810[0](), (v6 = -[NSAttributedString initWithData:options:documentAttributes:error:](v5, "initWithData:options:documentAttributes:error:", v4, [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1], 0, buf)) == 0))
  {
    result = [(NSMutableDictionary *)self->_userInfo objectForKey:@"NSExtensionItemAttributedTitleKey"];
    if (!result)
    {
      return result;
    }

    v8 = result;
    v13 = 0;
    UIFoundationLibrary();
    v9 = [NSAttributedString alloc];
    v15 = _MergedGlobals_85[0]();
    v16 = off_1ED439808[0]();
    v10 = -[NSAttributedString initWithData:options:documentAttributes:error:](v9, "initWithData:options:documentAttributes:error:", v8, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1], 0, &v13);
    if (!v10)
    {
      v11 = _NSOSLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [v13 description];
        *buf = 138412290;
        *&buf[4] = v12;
        _os_log_error_impl(&dword_18075C000, v11, OS_LOG_TYPE_ERROR, "unable to create attributed string representation from RTF data! error - %@", buf, 0xCu);
      }
    }

    v6 = v10;
  }

  return v6;
}

- (void)setAttributedContentText:(NSAttributedString *)attributedContentText
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (attributedContentText)
  {
    v5 = [(NSAttributedString *)attributedContentText length];
    v11 = _MergedGlobals_85[0]();
    v12[0] = off_1ED439808[0]();
    -[NSMutableDictionary setValue:forKey:](self->_userInfo, "setValue:forKey:", -[NSAttributedString dataFromRange:documentAttributes:error:](attributedContentText, "dataFromRange:documentAttributes:error:", 0, v5, [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1], &v8), @"NSExtensionItemAttributedContentTextKey");
    if ([(NSAttributedString *)attributedContentText prefersRTFDInRange:0, [(NSAttributedString *)attributedContentText length]])
    {
      v6 = [(NSAttributedString *)attributedContentText length];
      v9 = _MergedGlobals_85[0]();
      v10 = off_1ED439810[0]();
      -[NSMutableDictionary setValue:forKey:](self->_userInfo, "setValue:forKey:", -[NSAttributedString dataFromRange:documentAttributes:error:](attributedContentText, "dataFromRange:documentAttributes:error:", 0, v6, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1], &v8), @"_NSExtensionItemRTFDAttributedContentTextKey");
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_userInfo removeObjectForKey:@"NSExtensionItemAttributedContentTextKey"];
    userInfo = self->_userInfo;

    [(NSMutableDictionary *)userInfo removeObjectForKey:@"_NSExtensionItemRTFDAttributedContentTextKey"];
  }
}

- (NSAttributedString)attributedContentText
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_userInfo objectForKey:@"_NSExtensionItemRTFDAttributedContentTextKey"];
  if (!v3 || (v4 = v3, v10 = 0, UIFoundationLibrary(), v5 = [NSAttributedString alloc], v13 = _MergedGlobals_85[0](), v14[0] = off_1ED439810[0](), (v6 = -[NSAttributedString initWithData:options:documentAttributes:error:](v5, "initWithData:options:documentAttributes:error:", v4, [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:{1, 0}], 0, &v10)) == 0))
  {
    result = [(NSMutableDictionary *)self->_userInfo objectForKey:@"NSExtensionItemAttributedContentTextKey"];
    if (!result)
    {
      return result;
    }

    v8 = result;
    v10 = 0;
    UIFoundationLibrary();
    v9 = [NSAttributedString alloc];
    v11 = _MergedGlobals_85[0]();
    v12 = off_1ED439808[0]();
    v6 = -[NSAttributedString initWithData:options:documentAttributes:error:](v9, "initWithData:options:documentAttributes:error:", v8, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1], 0, &v10);
  }

  return v6;
}

- (void)setAttachments:(NSArray *)attachments
{
  userInfo = self->_userInfo;
  v4 = [(NSArray *)attachments copy];

  [(NSMutableDictionary *)userInfo setValue:v4 forKey:@"NSExtensionItemAttachmentsKey"];
}

- (id)_matchingDictionaryRepresentation
{
  v54 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3052000000;
  v40 = __Block_byref_object_copy__5;
  v41 = __Block_byref_object_dispose__5;
  v42 = [MEMORY[0x1E695DF90] dictionary];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v3 = [(NSExtensionItem *)self userInfo];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __52__NSExtensionItem__matchingDictionaryRepresentation__block_invoke;
  v32[3] = &unk_1E69F3BB0;
  v32[4] = &v33;
  v32[5] = &v37;
  [(NSDictionary *)v3 enumerateKeysAndObjectsUsingBlock:v32];
  if ([(NSArray *)[(NSExtensionItem *)self attachments] count])
  {
    v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = off_1ED439818[0]();
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v5 = [(NSExtensionItem *)self attachments];
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v50 objects:v49 count:16];
    if (!v6)
    {
      goto LABEL_40;
    }

    v7 = *v51;
    obj = v5;
    v27 = v31;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v51 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v50 + 1) + 8 * v8);
        v10 = off_1ED439820[0]();
        v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:{objc_msgSend(v9, "registeredTypeIdentifiers", v27)}];
        v12 = v11;
        if (*(v34 + 24) == 1 && ([v11 containsObject:v10] & 1) != 0)
        {
          v13 = v10;
          if (!v10)
          {
            goto LABEL_31;
          }

LABEL_13:
          v14 = objc_alloc_init(NSExtensionURLResult);
          v47 = @"NSItemProviderOptionsDispatchMode";
          v48 = @"NSItemProviderOptionsDispatchModeAsynchronous";
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v31[0] = __52__NSExtensionItem__matchingDictionaryRepresentation__block_invoke_60;
          v31[1] = &unk_1E69F3BD8;
          v31[2] = v14;
          [v9 loadItemForTypeIdentifier:v13 options:v15 completionHandler:v30];
          v16 = [(NSExtensionURLResult *)v14 wait:2.0];
          v17 = [(NSExtensionURLResult *)v14 copiedURL];

          if (v17)
          {
            v18 = v16;
          }

          else
          {
            v18 = 1;
          }

          if (v18)
          {
            goto LABEL_24;
          }

          if (v13 == v10)
          {
            if ([objc_msgSend(v17 "scheme")] && objc_msgSend(objc_msgSend(v17, "scheme"), "caseInsensitiveCompare:", @"https"))
            {
              goto LABEL_24;
            }

            v13 = 0;
            v19 = 1;
          }

          else
          {
            if (v13 == v4 && [v17 isFileURL])
            {
              v13 = (off_1ED439830[0])(v17, 0);
              v19 = 0;
              goto LABEL_25;
            }

LABEL_24:
            v19 = 0;
            v13 = 0;
          }

LABEL_25:

          if (v19)
          {
            [v12 addObject:@"com.apple.active-webpage"];
            goto LABEL_31;
          }

          goto LABEL_27;
        }

        if (v4)
        {
          v13 = v4;
          if ([v12 containsObject:v4])
          {
            goto LABEL_13;
          }
        }

        v13 = 0;
LABEL_27:
        if (v10 && [v12 count] >= 2 && (objc_msgSend(v12, "containsObject:", @"com.apple.active-webpage") & 1) == 0)
        {
          [v12 removeObject:v10];
        }

LABEL_31:
        if ([v12 count] >= 2)
        {
          [v12 removeObject:off_1ED439828[0]()];
        }

        if (v13)
        {
          v45[0] = @"registeredTypeIdentifiers";
          v20 = [v12 allObjects];
          v45[1] = @"fileProviderItem";
          v46[0] = v20;
          v21 = v45;
          v22 = v46;
          v23 = 2;
          v46[1] = v13;
        }

        else
        {
          v43 = @"registeredTypeIdentifiers";
          v44 = [v12 allObjects];
          v21 = &v43;
          v22 = &v44;
          v23 = 1;
        }

        [v29 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v22, v21, v23)}];

        ++v8;
      }

      while (v6 != v8);
      v24 = [(NSArray *)obj countByEnumeratingWithState:&v50 objects:v49 count:16];
      v6 = v24;
      if (!v24)
      {
LABEL_40:
        [v38[5] setObject:v29 forKey:@"attachments"];

        break;
      }
    }
  }

  v25 = v38[5];
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  return v25;
}

void __52__NSExtensionItem__matchingDictionaryRepresentation__block_invoke(uint64_t a1, __CFString *a2, void *a3)
{
  v4 = a2;
  v19 = *MEMORY[0x1E69E9840];
  if ([(__CFString *)a2 isEqualToString:@"NSExtensionItemAttributedTitleKey"])
  {
    v4 = @"title";
  }

  if ([(__CFString *)v4 isEqualToString:@"NSExtensionItemAttributedContentTextKey"])
  {
    v4 = @"contentText";
  }

  if (([(__CFString *)v4 isEqualToString:@"NSExtensionItemAttachmentsKey"]& 1) == 0)
  {
    if (-[__CFString isEqualToString:](v4, "isEqualToString:", @"supportsJavaScript") && (objc_getClass("NSNumber"), (objc_opt_isKindOfClass() & 1) != 0) && [a3 BOOLValue])
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }

    else if (([(__CFString *)v4 hasPrefix:@"com.apple.UIKit"]& 1) == 0)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v14 = 0;
      v6 = objc_opt_class();
      v7 = +[NSExtensionContext _extensionContextHostProtocolAllowedClassesForItems];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __52__NSExtensionItem__matchingDictionaryRepresentation__block_invoke_2;
      v10[3] = &unk_1E69F2800;
      v10[4] = v6;
      v10[5] = &v11;
      [v7 enumerateObjectsUsingBlock:v10];
      if (*(v12 + 24) == 1)
      {
        [*(*(*(a1 + 40) + 8) + 40) setObject:a3 forKey:v4];
      }

      else
      {
        v8 = _NSOSLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = objc_opt_class();
          *buf = 138412546;
          v16 = v4;
          v17 = 2112;
          v18 = v9;
          _os_log_error_impl(&dword_18075C000, v8, OS_LOG_TYPE_ERROR, "Unable to encode value for key %@ because it is of unsupported type %@", buf, 0x16u);
        }
      }

      _Block_object_dispose(&v11, 8);
    }
  }
}

uint64_t __52__NSExtensionItem__matchingDictionaryRepresentation__block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) isSubclassOfClass:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t __52__NSExtensionItem__matchingDictionaryRepresentation__block_invoke_60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) setURL:a2];
    }
  }

  v5 = *(a1 + 32);

  return [v5 signal];
}

@end