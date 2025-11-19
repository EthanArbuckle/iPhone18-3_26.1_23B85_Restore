@interface HeaderWithActionButtonCollectionViewCell
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation HeaderWithActionButtonCollectionViewCell

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_29E2C0674();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C0664();
  v8 = self;
  sub_29E081538(v7);

  (*(v5 + 8))(v7, v4);
}

@end