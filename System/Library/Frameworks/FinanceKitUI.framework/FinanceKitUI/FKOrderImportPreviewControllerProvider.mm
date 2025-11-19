@interface FKOrderImportPreviewControllerProvider
+ (BOOL)canProvidePreviewControllerForMessages;
@end

@implementation FKOrderImportPreviewControllerProvider

+ (BOOL)canProvidePreviewControllerForMessages
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return v3 != 1 && v3 != 6;
}

@end