@interface CocoaWebViewAdapter
- (UIEdgeInsets)safeAreaInsets;
- (_TtC15_WebKit_SwiftUI19CocoaWebViewAdapter)initWithCoder:(id)a3;
- (_TtC15_WebKit_SwiftUI19CocoaWebViewAdapter)initWithFrame:(CGRect)a3;
@end

@implementation CocoaWebViewAdapter

- (UIEdgeInsets)safeAreaInsets
{
  sub_23BC95AEC();
  sub_23BC95ADC();
  sub_23BC95ACC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0xA0);
  v4 = self;
  v3(v15);
  if (v16)
  {
    v5 = *MEMORY[0x277D768C8];
    v6 = *(MEMORY[0x277D768C8] + 8);
    v7 = *(MEMORY[0x277D768C8] + 16);
    v8 = *(MEMORY[0x277D768C8] + 24);
  }

  else
  {
    v7 = *&v15[2];
    v6 = *&v15[3];
    v5 = *v15;
    v9 = *&v15[1];
    v10 = [(CocoaWebViewAdapter *)v4 effectiveUserInterfaceLayoutDirection];

    if (v10 == 1)
    {
      v8 = v9;
    }

    else
    {
      v8 = v6;
    }

    if (v10 != 1)
    {
      v6 = v9;
    }
  }

  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (_TtC15_WebKit_SwiftUI19CocoaWebViewAdapter)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_23BC95AEC();
  sub_23BC95ADC();
  sub_23BC95ACC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_23BC8B96C(x, y, width, height);

  return v7;
}

- (_TtC15_WebKit_SwiftUI19CocoaWebViewAdapter)initWithCoder:(id)a3
{
  sub_23BC95AEC();
  sub_23BC95ADC();
  sub_23BC95ACC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23BC8BBE0(a3);

  return v4;
}

@end