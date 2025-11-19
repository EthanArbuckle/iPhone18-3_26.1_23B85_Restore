@interface NEIKEv2AddressList
+ (CFStringRef)normalizeServerAddress:(void *)a3 path:;
+ (__CFString)getSynthesizedIPv6Address:(uint64_t)a1 outgoingIf:(void *)a2 nat64Prefixes:(uint64_t)a3 numNat64Prefixes:(int)a4;
@end

@implementation NEIKEv2AddressList

+ (__CFString)getSynthesizedIPv6Address:(uint64_t)a1 outgoingIf:(void *)a2 nat64Prefixes:(uint64_t)a3 numNat64Prefixes:(int)a4
{
  LODWORD(v4) = a4;
  v6 = a2;
  objc_opt_self();
  if (NEGetAddressFamilyFromString(v6) == 30)
  {
    goto LABEL_11;
  }

  if (!NECreateAddressStructFromString(v6, 0, 0))
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10.isa) = 0;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "Failed to synthesize IPv6 address with IPv4 IKEv2 server address", &v10, 2u);
    }

    goto LABEL_11;
  }

  if (v4 < 1)
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v4 = v4;
  while (1)
  {
    memset(&v10.info, 0, 20);
    v10.isa = 7708;
    if (nw_nat64_synthesize_v6())
    {
      break;
    }

    a3 += 16;
    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  v8 = NECreateAddressString(&v10);
LABEL_12:

  return v8;
}

+ (CFStringRef)normalizeServerAddress:(void *)a3 path:
{
  v16.data = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (!v4)
  {
    v7 = 0;
    goto LABEL_6;
  }

  if (NEGetAddressFamilyFromString(v4) == 30)
  {
    v10 = NECreateAddressStructFromString(v4, 0, 0);
    v11 = [v5 scopedInterface];
    if (v11)
    {
      [v5 scopedInterface];
    }

    else
    {
      [v5 interface];
    }
    v12 = ;
    [v12 interfaceIndex];

    if (v10)
    {
      v13 = nw_nat64_copy_prefixes();
      if (v13 >= 1)
      {
        v14 = 0;
        v16.info = 0;
        v16.isa = 528;
        v15 = 16 * v13;
        while ((nw_nat64_extract_v4() & 1) == 0)
        {
          v14 += 16;
          if (v15 == v14)
          {
            free(0);
            goto LABEL_16;
          }
        }

        v6 = NECreateAddressString(&v16);
        goto LABEL_4;
      }

LABEL_16:
      free(v10);
    }
  }

  v6 = v4;
LABEL_4:
  v7 = v6;
LABEL_6:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end