@interface UICellAccessory.CheckmarkAccessoryView
- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0622CheckmarkAccessoryView)initWithCoder:(id)a3;
- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0622CheckmarkAccessoryView)initWithFrame:(CGRect)a3;
- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0622CheckmarkAccessoryView)initWithImage:(id)a3;
- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0622CheckmarkAccessoryView)initWithImage:(id)a3 highlightedImage:(id)a4;
@end

@implementation UICellAccessory.CheckmarkAccessoryView

- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0622CheckmarkAccessoryView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = _s22CheckmarkAccessoryViewCMa();
  v7 = [(UICellAccessory.CheckmarkAccessoryView *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 configurationWithWeight:6];
  [(UICellAccessory.CheckmarkAccessoryView *)v9 setPreferredSymbolConfiguration:v10];

  return v9;
}

- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0622CheckmarkAccessoryView)initWithCoder:(id)a3
{
  _s22CheckmarkAccessoryViewCMa();
  swift_deallocPartialClassInstance();
  return 0;
}

- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0622CheckmarkAccessoryView)initWithImage:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0622CheckmarkAccessoryView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end