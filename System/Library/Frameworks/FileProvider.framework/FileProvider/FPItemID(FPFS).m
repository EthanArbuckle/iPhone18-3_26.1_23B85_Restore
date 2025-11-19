@interface FPItemID(FPFS)
@end

@implementation FPItemID(FPFS)

- (void)transformForMigratedCloudDocsProviderDomainIdentifier:()FPFS .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"FPItem.m" lineNumber:263 description:{@"wrong migrated identifier %@", a3}];
}

@end