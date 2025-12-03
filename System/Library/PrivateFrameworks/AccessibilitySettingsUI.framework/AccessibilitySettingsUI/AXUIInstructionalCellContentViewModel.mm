@interface AXUIInstructionalCellContentViewModel
- (BOOL)imageIgnoresInvertColors;
- (_TtC23AccessibilitySettingsUI37AXUIInstructionalCellContentViewModel)init;
- (_TtC23AccessibilitySettingsUI37AXUIInstructionalCellContentViewModel)initWithTipType:(int64_t)type title:(id)title image:(id)image imageIgnoresInvertColors:(BOOL)colors description:(id)description linkTitle:(id)linkTitle linkCallback:(id)callback closeCallback:(id)self0;
- (id)closeCallback;
- (id)linkCallback;
- (void)setCloseCallback:(id)callback;
- (void)setImageIgnoresInvertColors:(BOOL)colors;
- (void)setLinkCallback:(id)callback;
@end

@implementation AXUIInstructionalCellContentViewModel

- (BOOL)imageIgnoresInvertColors
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_23D9D9384();

  return v5;
}

- (void)setImageIgnoresInvertColors:(BOOL)colors
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_23D9D9394();
}

- (id)linkCallback
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_23D9D9384();

  v4 = swift_allocObject();
  *(v4 + 16) = v7;
  v10 = sub_23D9A5EE8;
  v11 = v4;
  *&v7 = MEMORY[0x277D85DD0];
  *(&v7 + 1) = 1107296256;
  v8 = sub_23D9A0AF4;
  v9 = &block_descriptor_133;
  v5 = _Block_copy(&v7);

  return v5;
}

- (void)setLinkCallback:(id)callback
{
  v4 = _Block_copy(callback);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_23D9A5EE0;
  *(v6 + 24) = v5;
  selfCopy = self;
  sub_23D9D9394();
}

- (id)closeCallback
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_23D9D9384();

  v4 = swift_allocObject();
  *(v4 + 16) = v7;
  v10 = sub_23D9A5EE8;
  v11 = v4;
  *&v7 = MEMORY[0x277D85DD0];
  *(&v7 + 1) = 1107296256;
  v8 = sub_23D9A0AF4;
  v9 = &block_descriptor_2;
  v5 = _Block_copy(&v7);

  return v5;
}

- (void)setCloseCallback:(id)callback
{
  v4 = _Block_copy(callback);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_23D9A5EE0;
  *(v6 + 24) = v5;
  selfCopy = self;
  sub_23D9D9394();
}

- (_TtC23AccessibilitySettingsUI37AXUIInstructionalCellContentViewModel)initWithTipType:(int64_t)type title:(id)title image:(id)image imageIgnoresInvertColors:(BOOL)colors description:(id)description linkTitle:(id)linkTitle linkCallback:(id)callback closeCallback:(id)self0
{
  v12 = _Block_copy(callback);
  v13 = _Block_copy(closeCallback);
  v14 = sub_23D9DA8B4();
  v16 = v15;
  v17 = sub_23D9DA8B4();
  v19 = v18;
  if (linkTitle)
  {
    v20 = sub_23D9DA8B4();
    linkTitle = v21;
  }

  else
  {
    v20 = 0;
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v12;
  v23 = swift_allocObject();
  *(v23 + 16) = v13;
  imageCopy = image;
  v25 = sub_23D9A46C0(type, v14, v16, imageCopy, colors, v17, v19, v20, linkTitle, sub_23D9A5E00, v22, sub_23D9A5EE0, v23);

  return v25;
}

- (_TtC23AccessibilitySettingsUI37AXUIInstructionalCellContentViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end