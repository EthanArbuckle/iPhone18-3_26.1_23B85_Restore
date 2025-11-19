@interface LSApplicationWorkspace
@end

@implementation LSApplicationWorkspace

void __104__LSApplicationWorkspace_SafariServicesExtras___sf_openURL_inApplication_withOptions_completionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v6 = [[_SFOpenURLOperationDelegate alloc] initWithCompletionHandler:*(a1 + 64)];
  }

  else
  {
    v6 = 0;
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) bundleIdentifier];
  v5 = [v2 operationToOpenResource:v3 usingApplication:v4 uniqueDocumentIdentifier:0 isContentManaged:0 sourceAuditToken:0 userInfo:0 options:*(a1 + 56) delegate:v6];

  [v5 start];
}

void __113__LSApplicationWorkspace_SafariServicesExtras___sf_tryOpeningURLInDefaultApp_isContentManaged_completionHandler___block_invoke_2(uint64_t a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v19 = *MEMORY[0x1E69635A0];
  v2 = MEMORY[0x1E695E118];
  v20[0] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v17 = *MEMORY[0x1E6963580];
  v18 = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v5 = [*(a1 + 32) startAccessingSecurityScopedResource];
  v6 = [_SFOpenURLOperationDelegate alloc];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __113__LSApplicationWorkspace_SafariServicesExtras___sf_tryOpeningURLInDefaultApp_isContentManaged_completionHandler___block_invoke_3;
  v13 = &unk_1E8491DD0;
  v15 = *(a1 + 40);
  v16 = v5;
  v14 = *(a1 + 32);
  v7 = [(_SFOpenURLOperationDelegate *)v6 initWithCompletionHandler:&v10];
  v8 = [MEMORY[0x1E6963608] defaultWorkspace];
  v9 = [v8 operationToOpenResource:*(a1 + 32) usingApplication:0 uniqueDocumentIdentifier:0 isContentManaged:*(a1 + 48) sourceAuditToken:0 userInfo:v3 options:v4 delegate:{v7, v10, v11, v12, v13}];

  [v9 start];
}

uint64_t __113__LSApplicationWorkspace_SafariServicesExtras___sf_tryOpeningURLInDefaultApp_isContentManaged_completionHandler___block_invoke_3(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 stopAccessingSecurityScopedResource];
  }

  return result;
}

@end