@interface TUDialRequest(PhoneKit)
@end

@implementation TUDialRequest(PhoneKit)

+ (void)dialRequestForCallProvider:()PhoneKit handle:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = [a1 localizedName];
  v7 = [a1 supportedHandleTypes];
  v8 = 134218498;
  v9 = a2;
  v10 = 2112;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Could not create a dial request due to an invalid handle type (%zd). For call provider %@, the supported handle types are (%@).", &v8, 0x20u);
}

+ (void)dialRequestForUserActivity:()PhoneKit callProviderManager:.cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not retrieve a call provider for the specified identifier %@.", &v2, 0xCu);
}

@end