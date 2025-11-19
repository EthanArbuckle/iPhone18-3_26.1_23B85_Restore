@interface ICRegisterStateHandlersLaunchTask
- (void)runLaunchTask;
@end

@implementation ICRegisterStateHandlersLaunchTask

- (void)runLaunchTask
{
  +[ICCloudContext registerStateHandler];
  +[ICAccountUtilities registerStateHandler];
  +[ICInternalSettingsStateHandler registerStateHandler];

  +[ICIndexerStateHandler registerStateHandler];
}

@end