@interface NSString
@end

@implementation NSString

void __80__NSString_LSVisualOrderingAdditions__ls_visuallyOrderCharactersReturningError___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (ubidi_open())
  {
    ubidi_setReorderingOptions();
    v22 = 0;
    ubidi_setPara();
    memset(&__p, 0, sizeof(__p));
    if (a3)
    {
      std::vector<unsigned int>::__vallocate[abi:nn200100](&__p, a3);
    }

    ubidi_getVisualMap();
    ResultLength = ubidi_getResultLength();
    std::vector<int>::resize(&__p, ResultLength);
    v10 = [MEMORY[0x1E696AD60] stringWithCapacity:0];
    if (v10)
    {
      begin = __p.__begin_;
      end = __p.__end_;
      while (begin != end)
      {
        [v10 appendCharacters:a2 + 2 * *begin++ length:1];
      }

      v13 = *(*(a1 + 32) + 8);
      v14 = v10;
      v15 = *(v13 + 40);
      *(v13 + 40) = v14;
    }

    else
    {
      v16 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -41, 0, "[NSString(LSVisualOrderingAdditions) ls_visuallyOrderCharactersReturningError:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/LSDisplayNameConstructor.mm", 837);
      v17 = *(*(a1 + 40) + 8);
      v15 = *(v17 + 40);
      *(v17 + 40) = v16;
    }

    if (__p.__begin_)
    {
      __p.__end_ = __p.__begin_;
      operator delete(__p.__begin_);
    }

    if (v22 >= 1)
    {
      v18 = _LSMakeNSErrorImpl(@"Unicode", v22, 0, "[NSString(LSVisualOrderingAdditions) ls_visuallyOrderCharactersReturningError:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/LSDisplayNameConstructor.mm", 844);
      v19 = *(*(a1 + 40) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    ubidi_close();
  }

  else
  {
    v6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -41, 0, "[NSString(LSVisualOrderingAdditions) ls_visuallyOrderCharactersReturningError:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/LSDisplayNameConstructor.mm", 850);
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void __61__NSString_LSPluginQueryAdditions__ls_matchesForPluginQuery___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (_NSIsNSString())
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) ls_matchesStringForPluginQuery:v6];
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      *a4 = 1;
    }
  }

  else
  {
    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __61__NSString_LSPluginQueryAdditions__ls_matchesForPluginQuery___block_invoke_cold_1(a1, v7);
    }
  }
}

void __61__NSString_LSPluginQueryAdditions__ls_matchesForPluginQuery___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_18162D000, a2, OS_LOG_TYPE_DEBUG, "Cannot match invalid query %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end