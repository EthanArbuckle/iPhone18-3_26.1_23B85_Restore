@interface LSStringsFileContent
@end

@implementation LSStringsFileContent

void __32___LSStringsFileContent_IOQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.launchservices.localization-io", v2);
  v1 = +[_LSStringsFileContent IOQueue]::result;
  +[_LSStringsFileContent IOQueue]::result = v0;
}

void __41___LSStringsFileContent_debugDescription__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __87___LSStringsFileContent_stringsFileContentFromBundle_forLocaleCode_cacheLocalizations___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __76___LSStringsFileContent_prewarmAllLocalizationsWithBundle_forLocalizations___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndex:a2];
  v4 = [(_LSStringsFileContent *)*(a1 + 40) getStringsFileContentAfterLocTableLoadedInBundle:v3 forLocale:?];
  [v4 prewarm];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76___LSStringsFileContent_prewarmAllLocalizationsWithBundle_forLocalizations___block_invoke_2;
  block[3] = &unk_1E6A1B140;
  v5 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_sync(v5, block);
}

id __87___LSStringsFileContent_stringsFileContentFromBundle_forLocaleCode_cacheLocalizations___block_invoke_2(uint64_t a1)
{
  [(_LSStringsFileContent *)*(a1 + 32) loadLoctableIfNecessaryFromBundle:?];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);

  return [(_LSStringsFileContent *)v4 getStringsFileContentAfterLocTableLoadedInBundle:v2 forLocale:v3];
}

@end