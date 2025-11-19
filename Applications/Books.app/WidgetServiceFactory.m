@interface WidgetServiceFactory
- (void)deleteCloudDataWithCompletion:(id)a3;
@end

@implementation WidgetServiceFactory

- (void)deleteCloudDataWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))(v3, 1, 0);

    _Block_release(v4);
  }
}

@end