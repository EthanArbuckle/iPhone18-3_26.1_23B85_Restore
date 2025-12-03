@interface WidgetServiceFactory
- (void)deleteCloudDataWithCompletion:(id)completion;
@end

@implementation WidgetServiceFactory

- (void)deleteCloudDataWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))(v3, 1, 0);

    _Block_release(v4);
  }
}

@end