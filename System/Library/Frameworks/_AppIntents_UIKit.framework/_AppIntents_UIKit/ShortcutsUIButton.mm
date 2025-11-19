@interface ShortcutsUIButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)addTarget:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5;
@end

@implementation ShortcutsUIButton

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = ShortcutsUIButton.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)addTarget:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5
{
  if (a3)
  {
    v8 = self;
    swift_unknownObjectRetain();
    sub_1AE87DA10();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v9 = self;
  }

  ShortcutsUIButton.addTarget(_:action:for:)(v10, a4, a5);

  sub_1AE85F5D8(v10);
}

@end