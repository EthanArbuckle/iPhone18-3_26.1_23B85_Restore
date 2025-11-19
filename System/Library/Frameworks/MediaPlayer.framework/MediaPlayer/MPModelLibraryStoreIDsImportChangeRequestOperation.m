@interface MPModelLibraryStoreIDsImportChangeRequestOperation
- (void)execute;
@end

@implementation MPModelLibraryStoreIDsImportChangeRequestOperation

- (void)execute
{
  v3 = [(MPModelLibraryStoreIDsImportChangeRequestOperation *)self mediaLibrary];
  v4 = [(MPModelLibraryStoreIDsImportChangeRequestOperation *)self storeIDs];
  v5 = [(MPModelLibraryStoreIDsImportChangeRequestOperation *)self referralObject];
  v6 = [(MPModelLibraryStoreIDsImportChangeRequestOperation *)self shouldLibraryAdd];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__MPModelLibraryStoreIDsImportChangeRequestOperation_execute__block_invoke;
  v7[3] = &unk_1E767B740;
  v7[4] = self;
  [v3 addStoreItemIDs:v4 referralObject:v5 andAddTracksToCloudLibrary:v6 withCompletion:v7];
}

void __61__MPModelLibraryStoreIDsImportChangeRequestOperation_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) responseHandler];
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, v8, v5);
  }

  [*(a1 + 32) finishWithError:v5];
}

@end