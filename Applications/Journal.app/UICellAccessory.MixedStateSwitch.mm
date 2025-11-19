@interface UICellAccessory.MixedStateSwitch
- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0616MixedStateSwitch)initWithCoder:(id)a3;
- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0616MixedStateSwitch)initWithFrame:(CGRect)a3;
@end

@implementation UICellAccessory.MixedStateSwitch

- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0616MixedStateSwitch)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0616MixedStateSwitch_isMixed) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0616MixedStateSwitch____lazy_storage___mixedStateImageView) = 0;
  v8.receiver = self;
  v8.super_class = _s16MixedStateSwitchCMa();
  return [(UICellAccessory.MixedStateSwitch *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0616MixedStateSwitch)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0616MixedStateSwitch_isMixed) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0616MixedStateSwitch____lazy_storage___mixedStateImageView) = 0;
  v7.receiver = self;
  v7.super_class = _s16MixedStateSwitchCMa();
  v4 = a3;
  v5 = [(UICellAccessory.MixedStateSwitch *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end