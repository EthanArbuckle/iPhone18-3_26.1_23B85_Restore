@interface LSSharedWebCredentialsAppLinkPlugIn
@end

@implementation LSSharedWebCredentialsAppLinkPlugIn

uint64_t __101___LSSharedWebCredentialsAppLinkPlugIn_bindingWithContext_forServiceDetails_callingBundleIdentifier___block_invoke(uint64_t a1, id *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(v3 + 189);
  if (v4 & 0x100000) != 0 || (v4)
  {
    return 0;
  }

  v9 = *(v3 + 16);
  [(_LSDatabase *)*a2 store];
  v10 = _CSStringCopyCFString();
  v11 = v10;
  if (v10 && ([v10 isEqual:*(a1 + 32)] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v12 = [_LSLazyPropertyList lazyPropertyListWithContext:a2 unit:*(*(a3 + 8) + 140)];
    v13 = [v12 _applicationIdentifier];
    v5 = [v13 isEqual:*(a1 + 40)];
  }

  return v5;
}

void __74___LSSharedWebCredentialsAppLinkPlugIn_appLinksWithContext_forSWCResults___block_invoke(uint64_t a1, unsigned int *a2, void *a3)
{
  v5 = a3;
  v6 = [[LSApplicationRecord alloc] _initWithContext:*(a1 + 56) bundleID:*a2 bundleData:*(a2 + 1) error:0];
  if (v6)
  {
    v7 = [*(a1 + 32) URLComponents];
    v8 = [v7 URL];
    v9 = *(a1 + 32);
    v10 = [(LSAppLink *)_LSSharedWebCredentialsAppLink _appLinkWithURL:v8 applicationRecord:v6 plugInClass:objc_opt_class()];

    if (v10)
    {
      v11 = *(a2 + 1);
      *(v10 + 32) = *a2;
      *(v10 + 48) = v11;
      objc_storeStrong((v10 + 64), *(a2 + 4));
      objc_storeStrong((v10 + 72), *(a2 + 5));
      *(v10 + 80) = *(a2 + 6);
      [v10 setServiceDetails:v5];
      [*(a1 + 40) addObject:v10];
      v12 = *(*(a1 + 48) + 8);
      v14 = v12[7];
      v13 = v12[8];
      if (v14 >= v13)
      {
        v16 = v12[6];
        v17 = (v14 - v16) >> 3;
        if ((v17 + 1) >> 61)
        {
          std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
        }

        v18 = v13 - v16;
        v19 = v18 >> 2;
        if (v18 >> 2 <= (v17 + 1))
        {
          v19 = v17 + 1;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        v22[4] = v12 + 6;
        if (v20)
        {
          std::allocator<LSApplicationRecord * {__strong}>::allocate_at_least[abi:nn200100]((v12 + 6), v20);
        }

        v21 = (8 * v17);
        v22[0] = 0;
        v22[1] = v21;
        v22[3] = 0;
        *v21 = v6;
        v22[2] = v21 + 1;
        std::vector<LSApplicationRecord * {__strong}>::__swap_out_circular_buffer((v12 + 6), v22);
        v15 = v12[7];
        std::__split_buffer<LSApplicationRecord * {__strong}>::~__split_buffer(v22);
      }

      else
      {
        *v14 = v6;
        v15 = v14 + 1;
      }

      v12[7] = v15;
    }
  }
}

void __66___LSSharedWebCredentialsAppLinkPlugIn_appLinksWithContext_error___block_invoke(uint64_t a1)
{
  v9 = *(a1 + 56);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v2 = +[_LSDServiceDomain defaultServiceDomain];
  v3 = LaunchServices::Database::Context::_get(&v9, v2, 0);

  if (v3)
  {
    v4 = [*(a1 + 32) appLinksWithContext:v3 forSWCResults:*(a1 + 40)];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v6);
  }

  if (v9 && v11 == 1)
  {
    _LSContextDestroy(v9);
  }

  v7 = v10;
  v9 = 0;
  v10 = 0;

  v11 = 0;
  v8 = v12;
  v12 = 0;
}

@end