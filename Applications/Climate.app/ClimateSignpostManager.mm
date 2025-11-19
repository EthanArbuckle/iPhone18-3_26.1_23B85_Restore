@interface ClimateSignpostManager
- (void)accessoryDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation ClimateSignpostManager

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_1000B62F4(v5, &unk_1000F9618, sub_1000B6698, &unk_1000F9630);
}

- (void)accessoryDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_1000B62F4(v5, &unk_1000F95C8, sub_1000B662C, &unk_1000F95E0);
}

@end