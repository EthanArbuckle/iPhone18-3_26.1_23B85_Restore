@interface SSReadingList
+ (SSReadingList)defaultReadingList;
- (BOOL)_addReadingListItemWithURL:(id)l title:(id)title previewText:(id)text;
- (BOOL)addReadingListItemWithURL:(NSURL *)URL title:(NSString *)title previewText:(NSString *)previewText error:(NSError *)error;
- (SSReadingList)init;
- (id)_init;
- (void)_setUpConnectionIfNeeded;
- (void)connection:(id)connection didCloseWithError:(id)error;
@end

@implementation SSReadingList

+ (SSReadingList)defaultReadingList
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SSReadingList_defaultReadingList__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[SSReadingList defaultReadingList]::onceToken != -1)
  {
    dispatch_once(&+[SSReadingList defaultReadingList]::onceToken, block);
  }

  v2 = +[SSReadingList defaultReadingList]::ssReadingList;

  return v2;
}

void __35__SSReadingList_defaultReadingList__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = +[SSReadingList defaultReadingList]::ssReadingList;
  +[SSReadingList defaultReadingList]::ssReadingList = v1;
}

- (SSReadingList)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Misuse of SSReadingList interface. Use class method defaultReadingList."];

  return 0;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = SSReadingList;
  return [(SSReadingList *)&v3 init];
}

- (BOOL)addReadingListItemWithURL:(NSURL *)URL title:(NSString *)title previewText:(NSString *)previewText error:(NSError *)error
{
  v10 = URL;
  v11 = title;
  v12 = previewText;
  v13 = WBS_LOG_CHANNEL_PREFIXReadingList();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_1D4644000, v13, OS_LOG_TYPE_DEFAULT, "#Client: Adding item to Reading List", v19, 2u);
  }

  v14 = WBS_LOG_CHANNEL_PREFIXReadingList();
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_11:
    v17 = WBS_LOG_CHANNEL_PREFIXReadingList();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SSReadingList addReadingListItemWithURL:v17 title:? previewText:? error:?];
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot add a Reading List item with nil URL."];
    goto LABEL_14;
  }

  [SSReadingList addReadingListItemWithURL:v11 title:v10 previewText:v14 error:?];
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (![SSReadingList supportsURL:v10])
  {
    v16 = WBS_LOG_CHANNEL_PREFIXReadingList();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SSReadingList addReadingListItemWithURL:v16 title:? previewText:? error:?];
      if (error)
      {
        goto LABEL_9;
      }
    }

    else if (error)
    {
LABEL_9:
      [MEMORY[0x1E696ABC0] errorWithDomain:@"SSReadingListErrorDomain" code:1 userInfo:0];
      *error = v15 = 0;
      goto LABEL_15;
    }

LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

  v15 = [(SSReadingList *)self _addReadingListItemWithURL:v10 title:v11 previewText:v12];
LABEL_15:

  return v15;
}

- (BOOL)_addReadingListItemWithURL:(id)l title:(id)title previewText:(id)text
{
  lCopy = l;
  titleCopy = title;
  textCopy = text;
  [(SSReadingList *)self _setUpConnectionIfNeeded];
  v11 = xpc_dictionary_create(0, 0, 0);
  safari_userVisibleString = [lCopy safari_userVisibleString];
  uTF8String = [safari_userVisibleString UTF8String];

  if (titleCopy)
  {
    v14 = [getWebBookmarkClass() _trimmedTitle:titleCopy];
    uTF8String2 = [v14 UTF8String];

    if (textCopy)
    {
LABEL_3:
      v16 = [getWebBookmarkClass() _trimmedPreviewText:textCopy];
      uTF8String3 = [v16 UTF8String];

      goto LABEL_6;
    }
  }

  else
  {
    uTF8String2 = "";
    if (textCopy)
    {
      goto LABEL_3;
    }
  }

  uTF8String3 = "";
LABEL_6:
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v18 = getkWebBookmarksAddressKeySymbolLoc(void)::ptr;
  v42 = getkWebBookmarksAddressKeySymbolLoc(void)::ptr;
  if (!getkWebBookmarksAddressKeySymbolLoc(void)::ptr)
  {
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = ___ZL35getkWebBookmarksAddressKeySymbolLocv_block_invoke;
    v37 = &unk_1E848F7D0;
    v38 = &v39;
    v19 = WebBookmarksLibrary();
    v40[3] = dlsym(v19, "kWebBookmarksAddressKey");
    getkWebBookmarksAddressKeySymbolLoc(void)::ptr = *(v38[1] + 24);
    v18 = v40[3];
  }

  _Block_object_dispose(&v39, 8);
  if (!v18)
  {
    goto LABEL_24;
  }

  xpc_dictionary_set_string(v11, *v18, uTF8String);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v20 = getkWebBookmarksTitleKeySymbolLoc(void)::ptr;
  v42 = getkWebBookmarksTitleKeySymbolLoc(void)::ptr;
  if (!getkWebBookmarksTitleKeySymbolLoc(void)::ptr)
  {
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = ___ZL33getkWebBookmarksTitleKeySymbolLocv_block_invoke;
    v37 = &unk_1E848F7D0;
    v38 = &v39;
    v21 = WebBookmarksLibrary();
    v40[3] = dlsym(v21, "kWebBookmarksTitleKey");
    getkWebBookmarksTitleKeySymbolLoc(void)::ptr = *(v38[1] + 24);
    v20 = v40[3];
  }

  _Block_object_dispose(&v39, 8);
  if (!v20)
  {
    goto LABEL_24;
  }

  xpc_dictionary_set_string(v11, *v20, uTF8String2);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v22 = getkWebBookmarksPreviewTextKeySymbolLoc(void)::ptr;
  v42 = getkWebBookmarksPreviewTextKeySymbolLoc(void)::ptr;
  if (!getkWebBookmarksPreviewTextKeySymbolLoc(void)::ptr)
  {
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = ___ZL39getkWebBookmarksPreviewTextKeySymbolLocv_block_invoke;
    v37 = &unk_1E848F7D0;
    v38 = &v39;
    v23 = WebBookmarksLibrary();
    v40[3] = dlsym(v23, "kWebBookmarksPreviewTextKey");
    getkWebBookmarksPreviewTextKeySymbolLoc(void)::ptr = *(v38[1] + 24);
    v22 = v40[3];
  }

  _Block_object_dispose(&v39, 8);
  if (!v22)
  {
    goto LABEL_24;
  }

  xpc_dictionary_set_string(v11, *v22, uTF8String3);
  connection = self->_connection;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v25 = getkWebBookmarksAddToReadingListMessageNameSymbolLoc(void)::ptr;
  v42 = getkWebBookmarksAddToReadingListMessageNameSymbolLoc(void)::ptr;
  if (!getkWebBookmarksAddToReadingListMessageNameSymbolLoc(void)::ptr)
  {
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = ___ZL52getkWebBookmarksAddToReadingListMessageNameSymbolLocv_block_invoke;
    v37 = &unk_1E848F7D0;
    v38 = &v39;
    v26 = WebBookmarksLibrary();
    v40[3] = dlsym(v26, "kWebBookmarksAddToReadingListMessageName");
    getkWebBookmarksAddToReadingListMessageNameSymbolLoc(void)::ptr = *(v38[1] + 24);
    v25 = v40[3];
  }

  _Block_object_dispose(&v39, 8);
  if (!v25)
  {
    goto LABEL_24;
  }

  v27 = [(WebBookmarksXPCConnection *)connection messageWithName:*v25];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v28 = getkWebBookmarksItemKeySymbolLoc(void)::ptr;
  v42 = getkWebBookmarksItemKeySymbolLoc(void)::ptr;
  if (!getkWebBookmarksItemKeySymbolLoc(void)::ptr)
  {
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = ___ZL32getkWebBookmarksItemKeySymbolLocv_block_invoke;
    v37 = &unk_1E848F7D0;
    v38 = &v39;
    v29 = WebBookmarksLibrary();
    v40[3] = dlsym(v29, "kWebBookmarksItemKey");
    getkWebBookmarksItemKeySymbolLoc(void)::ptr = *(v38[1] + 24);
    v28 = v40[3];
  }

  _Block_object_dispose(&v39, 8);
  if (v28)
  {
    xpc_dictionary_set_value(v27, *v28, v11);
    [(WebBookmarksXPCConnection *)self->_connection sendMessage:v27];
    v39 = 0;
    v40 = &v39;
    v41 = 0x2050000000;
    v30 = getSafariFetcherServerProxyClass(void)::softClass;
    v42 = getSafariFetcherServerProxyClass(void)::softClass;
    if (!getSafariFetcherServerProxyClass(void)::softClass)
    {
      v34 = MEMORY[0x1E69E9820];
      v35 = 3221225472;
      v36 = ___ZL32getSafariFetcherServerProxyClassv_block_invoke;
      v37 = &unk_1E848F7D0;
      v38 = &v39;
      ___ZL32getSafariFetcherServerProxyClassv_block_invoke(&v34);
      v30 = v40[3];
    }

    v31 = v30;
    _Block_object_dispose(&v39, 8);
    v32 = objc_alloc_init(v30);
    [v32 startReadingListFetcher];

    return 1;
  }

  else
  {
LABEL_24:
    dlerror();
    result = abort_report_np();
    __break(1u);
  }

  return result;
}

- (void)_setUpConnectionIfNeeded
{
  if (!self->_connection)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v3 = getWebBookmarksXPCConnectionClass(void)::softClass;
    v20 = getWebBookmarksXPCConnectionClass(void)::softClass;
    if (!getWebBookmarksXPCConnectionClass(void)::softClass)
    {
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = ___ZL33getWebBookmarksXPCConnectionClassv_block_invoke;
      v15 = &unk_1E848F7D0;
      v16 = &v17;
      ___ZL33getWebBookmarksXPCConnectionClassv_block_invoke(&v12);
      v3 = v18[3];
    }

    v4 = v3;
    _Block_object_dispose(&v17, 8);
    v5 = [v3 alloc];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v6 = getkWebBookmarksdServiceNameSymbolLoc(void)::ptr;
    v20 = getkWebBookmarksdServiceNameSymbolLoc(void)::ptr;
    if (!getkWebBookmarksdServiceNameSymbolLoc(void)::ptr)
    {
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = ___ZL37getkWebBookmarksdServiceNameSymbolLocv_block_invoke;
      v15 = &unk_1E848F7D0;
      v16 = &v17;
      v7 = WebBookmarksLibrary();
      v8 = dlsym(v7, "kWebBookmarksdServiceName");
      *(v16[1] + 24) = v8;
      getkWebBookmarksdServiceNameSymbolLoc(void)::ptr = *(v16[1] + 24);
      v6 = v18[3];
    }

    _Block_object_dispose(&v17, 8);
    if (!v6)
    {
      v11 = [SFDefaultBrowserListView productDetailsUserDidInteractWithApp:interactionType:];
      _Block_object_dispose(&v17, 8);
      _Unwind_Resume(v11);
    }

    v9 = [v5 initClientForMachService:*v6];
    connection = self->_connection;
    self->_connection = v9;

    [(WebBookmarksXPCConnection *)self->_connection setDelegate:self];
  }
}

- (void)connection:(id)connection didCloseWithError:(id)error
{
  v10 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = WBS_LOG_CHANNEL_PREFIXReadingList();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [errorCopy description];
    [(SSReadingList *)v7 connection:v9 didCloseWithError:v6];
  }

  connection = self->_connection;
  self->_connection = 0;
}

- (void)addReadingListItemWithURL:(os_log_t)log title:previewText:error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138478083;
  v4 = a1;
  v5 = 2113;
  v6 = a2;
  _os_log_debug_impl(&dword_1D4644000, log, OS_LOG_TYPE_DEBUG, "#Client Title: %{private}@, URL: %{private}@", &v3, 0x16u);
}

- (void)connection:(os_log_t)log didCloseWithError:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1D4644000, log, OS_LOG_TYPE_ERROR, "webbookmarksd connection closed with error: %{public}@", buf, 0xCu);
}

@end