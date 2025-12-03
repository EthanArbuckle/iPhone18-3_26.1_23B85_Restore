@interface FPXObserver
- (FPXObserver)init;
- (FPXObserver)initWithObservedItemID:(id)d domainContext:(id)context nsFileProviderRequest:(id)request;
- (id)updateForProviderItem:(id)item;
- (void)_fixupFavoriteRank:(id)rank;
- (void)verifyVendorToken:(id)token;
@end

@implementation FPXObserver

- (FPXObserver)init
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"shouldn't be called"];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_fault_impl(&dword_1AAAE1000, v3, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v4, 0xCu);
  }

  __assert_rtn("-[FPXObserver init]", "/Library/Caches/com.apple.xbs/Sources/FileProvider/extension/FPXEnumerator.m", 52, [v2 UTF8String]);
}

- (FPXObserver)initWithObservedItemID:(id)d domainContext:(id)context nsFileProviderRequest:(id)request
{
  dCopy = d;
  contextCopy = context;
  requestCopy = request;
  v19.receiver = self;
  v19.super_class = FPXObserver;
  v11 = [(FPXObserver *)&v19 init];
  if (v11)
  {
    v12 = [dCopy copy];
    observedItemID = v11->_observedItemID;
    v11->_observedItemID = v12;

    objc_storeStrong(&v11->_domainContext, context);
    vendorInstance = [(FPXDomainContext *)v11->_domainContext vendorInstance];
    strongVendorInstance = v11->_strongVendorInstance;
    v11->_strongVendorInstance = vendorInstance;

    extensionContext = [(FPXDomainContext *)v11->_domainContext extensionContext];
    strongExtensionContext = v11->_strongExtensionContext;
    v11->_strongExtensionContext = extensionContext;

    objc_storeStrong(&v11->_nsFileProviderRequest, request);
  }

  return v11;
}

- (void)_fixupFavoriteRank:(id)rank
{
  rankCopy = rank;
  favoriteRank = [rankCopy favoriteRank];
  unsignedLongLongValue = [favoriteRank unsignedLongLongValue];

  if (unsignedLongLongValue == 1)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceReferenceDate];
    v9 = v8;

    v10 = (v9 * 1000.0);
    v11 = arc4random_uniform(0x7D0u) - 1000;
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(FPXObserver *)rankCopy _fixupFavoriteRank:?];
    }

    strippedCopy = [rankCopy strippedCopy];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v11 + v10];
    [strippedCopy setFavoriteRank:v14];

    [(FPXExtensionContext *)self->_strongExtensionContext singleItemChange:strippedCopy changedFields:32 bounce:0 completionHandler:&__block_literal_global_21];
  }
}

void __34__FPXObserver__fixupFavoriteRank___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __34__FPXObserver__fixupFavoriteRank___block_invoke_cold_1(v4, v5, v6);
    }
  }
}

- (id)updateForProviderItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    [(FPXObserver *)a2 updateForProviderItem:?];
  }

  v6 = [(FPXDomainContext *)self->_domainContext itemFromVendorItem:itemCopy];
  if (v6 && [FPExtensionCollection item:v6 isValidForObservedItemID:self->_observedItemID])
  {
    extensionContext = [(FPXDomainContext *)self->_domainContext extensionContext];
    itemID = [v6 itemID];
    v9 = [extensionContext alternateContentsURLWrapperForItemID:itemID];
    v10 = [v9 url];

    if (v10)
    {
      v11 = [[FPXEnumeratorAlternateContentsItem alloc] initWithOriginalDocumentItem:v6 alternateContentsURL:v10];

      v12 = [(FPXDomainContext *)self->_domainContext itemFromVendorItem:v11];

      v6 = v12;
      itemCopy = v11;
    }

    favoriteRank = [v6 favoriteRank];
    if (favoriteRank)
    {
      v14 = favoriteRank;
      favoriteRank2 = [v6 favoriteRank];
      unsignedLongLongValue = [favoriteRank2 unsignedLongLongValue];

      if (unsignedLongLongValue == 1)
      {
        [(FPXObserver *)self _fixupFavoriteRank:v6];
      }
    }

    v6 = v6;
    v17 = v6;
  }

  else
  {
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [(FPXObserver *)v6 updateForProviderItem:?];
    }

    v17 = 0;
  }

  return v17;
}

- (void)verifyVendorToken:(id)token
{
  tokenCopy = token;
  identifier = [(FPItemID *)self->_observedItemID identifier];
  v6 = [identifier isEqualToString:@"NSFileProviderWorkingSetContainerItemIdentifier"];

  if (v6 && [tokenCopy length] > 0x1F4)
  {
    [(FPXObserver *)a2 verifyVendorToken:?];
  }
}

- (void)_fixupFavoriteRank:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  LODWORD(v6) = 134218242;
  *(&v6 + 4) = a2;
  OUTLINED_FUNCTION_3_3();
  *v7 = v2;
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, v3, v4, "[DEBUG] fixing up favorite rank (%llu) for %@", v6, DWORD2(v6), *&v7[2], v8);
  v5 = *MEMORY[0x1E69E9840];
}

void __34__FPXObserver__fixupFavoriteRank___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 fp_prettyDescription];
  v8 = 138412546;
  v9 = a1;
  OUTLINED_FUNCTION_3_3();
  v10 = v6;
  _os_log_error_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_ERROR, "[ERROR] couldn't set favorite rank for %@; %@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateForProviderItem:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPXEnumerator.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"providerItem"}];
}

- (void)updateForProviderItem:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, v3, v4, "[DEBUG] item %@ isn't valid for current enumeration (enumeratedItem: %@)");
  v5 = *MEMORY[0x1E69E9840];
}

- (void)verifyVendorToken:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPXEnumerator.m" lineNumber:146 description:@"page and sync anchor length shouldn't exceed 500 bytes!"];
}

@end