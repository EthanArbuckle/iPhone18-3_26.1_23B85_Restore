@interface ClimateSignpostManager
- (void)accessoryDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation ClimateSignpostManager

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  sub_1000B62F4(updateCopy, &unk_1000F9618, sub_1000B6698, &unk_1000F9630);
}

- (void)accessoryDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  sub_1000B62F4(updateCopy, &unk_1000F95C8, sub_1000B662C, &unk_1000F95E0);
}

@end