@interface SCNetworkReachabilityCopyDescription
@end

@implementation SCNetworkReachabilityCopyDescription

uint64_t ____SCNetworkReachabilityCopyDescription_block_invoke(uint64_t a1, int a2, nw_endpoint_t endpoint)
{
  v12 = *MEMORY[0x1E69E9840];
  type = nw_endpoint_get_type(endpoint);
  if (type == 2)
  {
    v7 = *(a1 + 32);
    hostname = nw_endpoint_get_hostname(endpoint);
    CFStringAppendFormat(v7, 0, @", %s", hostname);
  }

  else if (type == 1)
  {
    address = nw_endpoint_get_address(endpoint);
    _SC_sockaddr_to_string(address, v11, 0x40uLL);
    CFStringAppendFormat(*(a1 + 32), 0, @", %s", v11);
  }

  else
  {
    CFStringAppendFormat(*(a1 + 32), 0, @", unexpected nw_endpoint type: %u", type);
  }

  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

@end