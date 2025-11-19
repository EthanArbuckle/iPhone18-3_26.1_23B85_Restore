@interface ParmesanListCell
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation ParmesanListCell

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_23BFF9390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BFF9370();
  v8 = self;
  sub_23BF7E900(v7);

  (*(v5 + 8))(v7, v4);
}

@end