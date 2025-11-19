@interface NSAttributedString(WKPrivate)
+ (void)_loadFromHTMLWithOptions:()WKPrivate contentLoader:completionHandler:;
@end

@implementation NSAttributedString(WKPrivate)

+ (void)_loadFromHTMLWithOptions:()WKPrivate contentLoader:completionHandler:
{
  v9 = [a3 objectForKeyedSubscript:*MEMORY[0x1E69DB768]];
  v10 = MEMORY[0x1E695D940];
  if (v9)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"NSWebPreferencesDocumentOption option is not supported"];
  }

  if ([a3 objectForKeyedSubscript:*MEMORY[0x1E69DB770]])
  {
    [MEMORY[0x1E695DF30] raise:*v10 format:@"NSWebResourceLoadDelegateDocumentOption option is not supported"];
  }

  if ([a3 objectForKeyedSubscript:@"WebPolicyDelegate"])
  {
    [MEMORY[0x1E695DF30] raise:*v10 format:@"WebPolicyDelegate option is not supported"];
  }

  v12 = __90__NSAttributedString_WKPrivate___loadFromHTMLWithOptions_contentLoader_completionHandler___block_invoke;
  v13 = &unk_1E76311B8;
  v14 = a3;
  v15 = a1;
  v16 = a5;
  v17 = a4;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v12(&v11);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &v11);
  }
}

@end