@interface FPXEnumeratorAlternateContentsItem
- (FPXEnumeratorAlternateContentsItem)initWithOriginalDocumentItem:(id)item alternateContentsURL:(id)l;
- (NSDate)contentModificationDate;
- (NSNumber)documentSize;
@end

@implementation FPXEnumeratorAlternateContentsItem

- (FPXEnumeratorAlternateContentsItem)initWithOriginalDocumentItem:(id)item alternateContentsURL:(id)l
{
  v22[2] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  lCopy = l;
  v21.receiver = self;
  v21.super_class = FPXEnumeratorAlternateContentsItem;
  v9 = [(FPXEnumeratorAlternateContentsItem *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_documentItem, item);
    v11 = *MEMORY[0x1E695DA98];
    v22[0] = *MEMORY[0x1E695DB50];
    v22[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
    v20 = 0;
    v14 = [lCopy resourceValuesForKeys:v12 error:&v20];
    v15 = v20;
    if (startAccessingSecurityScopedResource)
    {
      [lCopy stopAccessingSecurityScopedResource];
    }

    if (v14)
    {
      v16 = v14;
      p_super = &v10->_resourceValues->super;
      v10->_resourceValues = v16;
    }

    else
    {
      p_super = fp_current_or_default_log();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [(FPXEnumeratorAlternateContentsItem *)lCopy initWithOriginalDocumentItem:v15 alternateContentsURL:p_super];
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v10;
}

- (NSNumber)documentSize
{
  resourceValues = self->_resourceValues;
  if (resourceValues)
  {
    [(NSDictionary *)resourceValues objectForKeyedSubscript:*MEMORY[0x1E695DB50]];
  }

  else
  {
    [(FPItem *)self->_documentItem documentSize];
  }
  v4 = ;

  return v4;
}

- (NSDate)contentModificationDate
{
  resourceValues = self->_resourceValues;
  if (resourceValues)
  {
    [(NSDictionary *)resourceValues objectForKeyedSubscript:*MEMORY[0x1E695DA98]];
  }

  else
  {
    [(FPItem *)self->_documentItem contentModificationDate];
  }
  v4 = ;

  return v4;
}

- (void)initWithOriginalDocumentItem:(NSObject *)a3 alternateContentsURL:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 fp_prettyDescription];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_ERROR, "[ERROR] failed to get resource values for alternate contents URL %@: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end