@interface UICellAccessory.CheckmarkAccessoryView
- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0622CheckmarkAccessoryView)initWithCoder:(id)coder;
- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0622CheckmarkAccessoryView)initWithFrame:(CGRect)frame;
- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0622CheckmarkAccessoryView)initWithImage:(id)image;
- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0622CheckmarkAccessoryView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
@end

@implementation UICellAccessory.CheckmarkAccessoryView

- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0622CheckmarkAccessoryView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = _s22CheckmarkAccessoryViewCMa();
  height = [(UICellAccessory.CheckmarkAccessoryView *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = height;
  v10 = [v8 configurationWithWeight:6];
  [(UICellAccessory.CheckmarkAccessoryView *)v9 setPreferredSymbolConfiguration:v10];

  return v9;
}

- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0622CheckmarkAccessoryView)initWithCoder:(id)coder
{
  _s22CheckmarkAccessoryViewCMa();
  swift_deallocPartialClassInstance();
  return 0;
}

- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0622CheckmarkAccessoryView)initWithImage:(id)image
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0622CheckmarkAccessoryView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end