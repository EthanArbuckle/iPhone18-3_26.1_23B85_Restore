@interface FKOrderImportPreviewControllerProvider
+ (BOOL)canProvidePreviewControllerForMessages;
@end

@implementation FKOrderImportPreviewControllerProvider

+ (BOOL)canProvidePreviewControllerForMessages
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return userInterfaceIdiom != 1 && userInterfaceIdiom != 6;
}

@end