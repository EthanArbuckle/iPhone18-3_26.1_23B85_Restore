@interface SCNetworkReachabilityGetFlagsFromPath
@end

@implementation SCNetworkReachabilityGetFlagsFromPath

uint64_t ____SCNetworkReachabilityGetFlagsFromPath_block_invoke(uint64_t a1, int a2, xpc_object_t xdict)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  if (xdict)
  {
    data = xpc_dictionary_get_data(xdict, "data", v10);
    if (data)
    {
      if (v10[0] >= 0xD8)
      {
        v5 = data;
        if (v10[0] == *(data + 53) + 216 && !strncmp("NetworkExtension", data + 16, 0x20uLL))
        {
          v6 = *(v5 + 52) & 0x12;
          *(*(*(a1 + 32) + 8) + 24) |= 1u;
          *(*(*(a1 + 40) + 8) + 24) = "nw_path_status_satisfied, VPN";
          if (v6 == 16 && *(a1 + 64) == 2 && *(a1 + 68) == 2)
          {
            v7 = *(a1 + 56);
            if (!nw_array_get_count())
            {
              *(*(*(a1 + 32) + 8) + 24) |= 0x24u;
              *(*(*(a1 + 40) + 8) + 24) = "nw_path_status_satisfied, OnDemand";
              *(*(*(a1 + 48) + 8) + 24) = 0;
            }
          }
        }
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

@end