@interface ShortcutsUIButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)addTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events;
@end

@implementation ShortcutsUIButton

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = ShortcutsUIButton.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)addTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events
{
  if (target)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1AE87DA10();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  ShortcutsUIButton.addTarget(_:action:for:)(v10, action, events);

  sub_1AE85F5D8(v10);
}

@end