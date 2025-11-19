@interface FPXWrappedSearchEnumeratorObserver
- (FPXWrappedSearchEnumeratorObserver)initWithTarget:(id)a3 providerID:(id)a4 domainIdentifier:(id)a5 maximumNumberOfResultsPerPage:(int64_t)a6;
- (void)didEnumerateSearchResults:(id)a3;
@end

@implementation FPXWrappedSearchEnumeratorObserver

- (FPXWrappedSearchEnumeratorObserver)initWithTarget:(id)a3 providerID:(id)a4 domainIdentifier:(id)a5 maximumNumberOfResultsPerPage:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = FPXWrappedSearchEnumeratorObserver;
  v14 = [(FPXWrappedSearchEnumeratorObserver *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_target, a3);
    objc_storeStrong(&v15->_providerIdentifier, a4);
    objc_storeStrong(&v15->_domainIdentifier, a5);
    v15->_maximumNumberOfResultsPerPage = a6;
  }

  return v15;
}

- (void)didEnumerateSearchResults:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__FPXWrappedSearchEnumeratorObserver_didEnumerateSearchResults___block_invoke;
  v5[3] = &unk_1E793BD98;
  v5[4] = self;
  v4 = [a3 fp_map:v5];
  [(NSFileProviderSearchEnumerationObserver *)self->_target didEnumerateSearchResults:v4];
}

FPSearchOnServerResult *__64__FPXWrappedSearchEnumeratorObserver_didEnumerateSearchResults___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FPSearchOnServerResult alloc];
  v5 = [v3 filename];
  v6 = [v3 creationDate];
  v7 = [v3 contentModificationDate];
  v8 = [v3 lastUsedDate];
  v9 = [v3 contentType];
  v10 = [v3 documentSize];
  v11 = [v3 itemIdentifier];

  v12 = [(FPSearchOnServerResult *)v4 initWithFilename:v5 creationDate:v6 contentModificationDate:v7 lastUsedDate:v8 contentType:v9 documentSize:v10 itemIdentifier:v11 providerID:*(*(a1 + 32) + 16) domainIdentifier:*(*(a1 + 32) + 24)];

  return v12;
}

@end