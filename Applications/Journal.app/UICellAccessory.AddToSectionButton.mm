@interface UICellAccessory.AddToSectionButton
- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0618AddToSectionButton)initWithCoder:(id)a3;
- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0618AddToSectionButton)initWithFrame:(CGRect)a3;
- (void)updateConfiguration;
@end

@implementation UICellAccessory.AddToSectionButton

- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0618AddToSectionButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = sub_1000F24EC(&qword_100AE4250);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = _s18AddToSectionButtonCMa();
  v15.receiver = self;
  v15.super_class = v11;
  v12 = [(UICellAccessory.AddToSectionButton *)&v15 initWithFrame:x, y, width, height];
  static UIButton.Configuration.borderless()();
  v13 = type metadata accessor for UIButton.Configuration();
  (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  UIButton.configuration.setter();
  [(UICellAccessory.AddToSectionButton *)v12 setPreferredBehavioralStyle:1];

  return v12;
}

- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0618AddToSectionButton)initWithCoder:(id)a3
{
  _s18AddToSectionButtonCMa();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)updateConfiguration
{
  v2 = self;
  sub_10051BE80();
}

@end