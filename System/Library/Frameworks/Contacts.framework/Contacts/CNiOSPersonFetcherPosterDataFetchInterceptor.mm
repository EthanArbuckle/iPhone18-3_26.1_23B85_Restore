@interface CNiOSPersonFetcherPosterDataFetchInterceptor
@end

@implementation CNiOSPersonFetcherPosterDataFetchInterceptor

id __75___CNiOSPersonFetcherPosterDataFetchInterceptor_executeFetchRequest_error___block_invoke(int a1, ABRecordRef record)
{
  v2 = ABRecordCopyValue(record, *MEMORY[0x1E698A438]);

  return v2;
}

uint64_t __75___CNiOSPersonFetcherPosterDataFetchInterceptor_executeFetchRequest_error___block_invoke_2(uint64_t a1, ABRecordRef record)
{
  v3 = ABRecordCopyValue(record, *MEMORY[0x1E698A438]);
  v4 = [*(a1 + 32) contactIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t __75___CNiOSPersonFetcherPosterDataFetchInterceptor_executeFetchRequest_error___block_invoke_117(uint64_t a1, ABRecordRef record)
{
  v3 = ABRecordCopyValue(record, *MEMORY[0x1E698A438]);
  v4 = [*(a1 + 32) contactIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

@end