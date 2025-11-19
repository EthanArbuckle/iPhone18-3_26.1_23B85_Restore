@interface SCNetworkReachabilitySetDispatchQueue
@end

@implementation SCNetworkReachabilitySetDispatchQueue

void ____SCNetworkReachabilitySetDispatchQueue_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 32) + 16)))
  {
    ____SCNetworkReachabilitySetDispatchQueue_block_invoke_cold_1();
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2 == *(v3 + 240))
  {
    *(v3 + 240) = 0;
    v2 = *(a1 + 40);
  }

  nw_release(v2);
  if (pthread_mutex_unlock((*(a1 + 32) + 16)))
  {
    ____SCNetworkReachabilitySetDispatchQueue_block_invoke_cold_2();
  }

  v4 = *(a1 + 32);
  v5 = *MEMORY[0x1E69E9840];

  CFRelease(v4);
}

uint64_t ____SCNetworkReachabilitySetDispatchQueue_block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 32) + 16)))
  {
    ____SCNetworkReachabilitySetDispatchQueue_block_invoke_2_cold_1();
  }

  v4 = *(a1 + 32);
  if (!*(v4 + 112))
  {
    result = pthread_mutex_unlock((v4 + 16));
    if (result)
    {
      ____SCNetworkReachabilitySetDispatchQueue_block_invoke_2_cold_3();
    }

    goto LABEL_15;
  }

  FlagsFromPath = __SCNetworkReachabilityGetFlagsFromPath(v4 + 193, "Path updated", *(v4 + 248), *(v4 + 80), *(v4 + 272), *(v4 + 280), *(v4 + 288), *(v4 + 292));
  v6 = *(v4 + 248);
  interface_index = nw_path_get_interface_index();
  v8 = *(v4 + 280);
  count = nw_array_get_count();
  nw_release(*(*(a1 + 32) + 248));
  *(*(a1 + 32) + 248) = nw_retain(a2);
  v10 = *(a1 + 32);
  if (*(v10 + 80) <= 1u)
  {
    CrazyIvan46Path = __SCNetworkReachabilityCreateCrazyIvan46Path(*(v10 + 248), *(a1 + 40), *(v10 + 232), 1);
    v10 = *(a1 + 32);
    if (CrazyIvan46Path)
    {
      v12 = CrazyIvan46Path;
      nw_release(*(v10 + 248));
      *(*(a1 + 32) + 248) = v12;
      v10 = *(a1 + 32);
    }
  }

  v13 = *(v10 + 272);
  if (v13 == 2)
  {
    *(v10 + 272) = 0;
    __SCNetworkReachabilityRestartResolver(v10, "Path updated, restart DNS");
    v10 = *(a1 + 32);
    v13 = *(v10 + 272);
  }

  v14 = __SCNetworkReachabilityGetFlagsFromPath(v10 + 193, "ShouldUpdateClient", *(v10 + 248), *(v10 + 80), v13, *(v10 + 280), *(v10 + 288), *(v10 + 292));
  v15 = *(v10 + 248);
  v16 = nw_path_get_interface_index();
  v17 = *(v10 + 280);
  v18 = nw_array_get_count();
  v19 = *(a1 + 32);
  if (*(v10 + 113) && v14 == FlagsFromPath && v16 == interface_index && v18 == count)
  {
    result = pthread_mutex_unlock((v19 + 16));
    if (result)
    {
      ____SCNetworkReachabilitySetDispatchQueue_block_invoke_2_cold_2();
    }

LABEL_15:
    v21 = *MEMORY[0x1E69E9840];
    return result;
  }

  v22 = *MEMORY[0x1E69E9840];

  return reachUpdateAndUnlock(v19);
}

void ____SCNetworkReachabilitySetDispatchQueue_block_invoke_3(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  nw_resolver_cancel();
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E69E9840];

  nw_release(v3);
}

@end