@interface SCNetworkReachabilityRestartResolver
@end

@implementation SCNetworkReachabilityRestartResolver

void ____SCNetworkReachabilityRestartResolver_block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 32) + 16)))
  {
    ____SCNetworkReachabilityRestartResolver_block_invoke_2_cold_1();
  }

  v6 = *(a1 + 32);
  if (*(v6 + 112))
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2000000000;
    v27 = 0;
    FlagsFromPath = __SCNetworkReachabilityGetFlagsFromPath(v6 + 193, *(a1 + 40), *(v6 + 248), *(v6 + 80), *(v6 + 272), *(v6 + 280), *(v6 + 288), *(v6 + 292));
    v8 = *(v6 + 248);
    interface_index = nw_path_get_interface_index();
    v10 = *(v6 + 280);
    count = nw_array_get_count();
    v12 = *(a1 + 32);
    *(v12 + 272) = a2;
    nw_release(*(v12 + 280));
    *(*(a1 + 32) + 280) = nw_retain(a3);
    v13 = *(a1 + 32);
    *(v13 + 288) = 0;
    *(v13 + 292) = 0;
    v14 = *(v13 + 280);
    nw_array_apply();
    v15 = *(v25 + 24);
    v16 = *(a1 + 32);
    *(v16 + 288) = v15;
    v17 = __SCNetworkReachabilityGetFlagsFromPath(v16 + 193, "ShouldUpdateClient", *(v16 + 248), *(v16 + 80), *(v16 + 272), *(v16 + 280), v15, *(v16 + 292));
    v18 = *(v16 + 248);
    v19 = nw_path_get_interface_index();
    v20 = *(v16 + 280);
    v21 = nw_array_get_count();
    v22 = *(a1 + 32);
    if (*(v16 + 113) && v17 == FlagsFromPath && v19 == interface_index && v21 == count)
    {
      if (pthread_mutex_unlock((v22 + 16)))
      {
        ____SCNetworkReachabilityRestartResolver_block_invoke_2_cold_2();
      }
    }

    else
    {
      reachUpdateAndUnlock(v22);
    }

    _Block_object_dispose(&v24, 8);
  }

  else if (pthread_mutex_unlock((v6 + 16)))
  {
    ____SCNetworkReachabilityRestartResolver_block_invoke_2_cold_3();
  }

  v23 = *MEMORY[0x1E69E9840];
}

BOOL ____SCNetworkReachabilityRestartResolver_block_invoke_3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 40);
  if (!*(v5 + 256))
  {
    v6 = *(v5 + 232);
  }

  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  v8 = nw_path_evaluator_copy_path();
  if (!v8)
  {
    FlagsFromPath = 0;
    goto LABEL_25;
  }

  v22 = 0;
  type = nw_endpoint_get_type(a3);
  v10 = type;
  if (type == nw_endpoint_type_address)
  {
    address = nw_endpoint_get_address(a3);
    if (!address)
    {
LABEL_18:
      CrazyIvan46Path = __SCNetworkReachabilityCreateCrazyIvan46Path(v8, a3, *(*(a1 + 40) + 232), 0);
      if (CrazyIvan46Path)
      {
        v15 = CrazyIvan46Path;
        nw_release(v8);
        v8 = v15;
      }

      goto LABEL_20;
    }

    _SC_sockaddr_to_string(address, v23, 0x80uLL);
    goto LABEL_12;
  }

  if (type != nw_endpoint_type_url && type != nw_endpoint_type_host)
  {
    v13 = asprintf(&v22, "endpoint %zu, ?");
    goto LABEL_14;
  }

  if (nw_endpoint_get_hostname(a3))
  {
LABEL_12:
    v13 = asprintf(&v22, "endpoint %zu, %s");
LABEL_14:
    if (v13 < 0 && v22)
    {
      free(v22);
      v22 = 0;
    }

    if (v10 != nw_endpoint_type_address)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_20:
  if (v22)
  {
    v16 = v22;
  }

  else
  {
    v16 = "";
  }

  FlagsFromPath = __SCNetworkReachabilityGetFlagsFromPath(*(a1 + 40) + 193, v16, v8, 0, 0, 0, 0, 0);
  *(*(*(a1 + 32) + 8) + 24) = 1;
  if (v22)
  {
    free(v22);
  }

LABEL_25:
  interface_index = nw_path_get_interface_index();
  nw_release(v8);
  nw_release(evaluator_for_endpoint);
  v18 = *(a1 + 40);
  v19 = (*(v18 + 292) & 6) != 2;
  if ((FlagsFromPath & 4) != 0)
  {
    v19 = (*(v18 + 292) & 2) == 0;
  }

  result = 1;
  if ((FlagsFromPath & 2) != 0 && v19)
  {
    *(v18 + 292) = FlagsFromPath;
    *(v18 + 296) = interface_index;
    if ((FlagsFromPath & 4) == 0)
    {
      result = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void ____SCNetworkReachabilityRestartResolver_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  nw_resolver_cancel();
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E69E9840];

  nw_release(v3);
}

void ____SCNetworkReachabilityRestartResolver_block_invoke_137(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 32) + 16)))
  {
    ____SCNetworkReachabilityRestartResolver_block_invoke_137_cold_1();
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2 == *(v3 + 264))
  {
    *(v3 + 264) = 0;
    v2 = *(a1 + 40);
  }

  nw_release(v2);
  if (pthread_mutex_unlock((*(a1 + 32) + 16)))
  {
    ____SCNetworkReachabilityRestartResolver_block_invoke_137_cold_2();
  }

  v4 = *(a1 + 32);
  v5 = *MEMORY[0x1E69E9840];

  CFRelease(v4);
}

@end