@interface SFReportWebCompatibilityIssueCollectionViewController
@end

@implementation SFReportWebCompatibilityIssueCollectionViewController

uint64_t __91___SFReportWebCompatibilityIssueCollectionViewController_initWithBrowserContentController___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C9048];
  v3 = [a2 integerValue];

  return [v2 stringForCategory:v3];
}

@end