@interface UICellAccessory.AddToSectionButton
- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0618AddToSectionButton)initWithCoder:(id)coder;
- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0618AddToSectionButton)initWithFrame:(CGRect)frame;
- (void)updateConfiguration;
@end

@implementation UICellAccessory.AddToSectionButton

- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0618AddToSectionButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = sub_1000F24EC(&qword_100AE4250);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = _s18AddToSectionButtonCMa();
  v15.receiver = self;
  v15.super_class = v11;
  height = [(UICellAccessory.AddToSectionButton *)&v15 initWithFrame:x, y, width, height];
  static UIButton.Configuration.borderless()();
  v13 = type metadata accessor for UIButton.Configuration();
  (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  UIButton.configuration.setter();
  [(UICellAccessory.AddToSectionButton *)height setPreferredBehavioralStyle:1];

  return height;
}

- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0618AddToSectionButton)initWithCoder:(id)coder
{
  _s18AddToSectionButtonCMa();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)updateConfiguration
{
  selfCopy = self;
  sub_10051BE80();
}

@end