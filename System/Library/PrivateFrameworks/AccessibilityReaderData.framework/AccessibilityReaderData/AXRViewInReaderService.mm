@interface AXRViewInReaderService
+ (void)viewInReaderWithAppName:(id)name bundleID:(id)d content:(id)content title:(id)title;
- (_TtC23AccessibilityReaderData22AXRViewInReaderService)init;
- (void)viewInReader:(id)reader;
@end

@implementation AXRViewInReaderService

+ (void)viewInReaderWithAppName:(id)name bundleID:(id)d content:(id)content title:(id)title
{
  v7 = sub_23D80DD7C();
  v9 = v8;
  v10 = sub_23D80DD7C();
  v12 = v11;
  v13 = sub_23D80DD7C();
  v15 = v14;
  if (title)
  {
    v16 = sub_23D80DD7C();
    title = v17;
  }

  else
  {
    v16 = 0;
  }

  _s23AccessibilityReaderData09AXRViewInB7ServiceC04vieweB07appName8bundleID7content5titleySS_S3SSgtFZ_0(v7, v9, v10, v12, v13, v15, v16, title);
}

- (void)viewInReader:(id)reader
{
  v4 = sub_23D80D4FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D80D4DC();
  selfCopy = self;
  sub_23D7D045C();

  (*(v5 + 8))(v8, v4);
}

- (_TtC23AccessibilityReaderData22AXRViewInReaderService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end