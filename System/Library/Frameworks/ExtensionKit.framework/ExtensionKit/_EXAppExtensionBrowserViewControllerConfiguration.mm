@interface _EXAppExtensionBrowserViewControllerConfiguration
- (NSArray)extensionPointIdentifiers;
- (_TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration)init;
- (_TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setExtensionPointIdentifiers:(id)a3;
@end

@implementation _EXAppExtensionBrowserViewControllerConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D29D90C0(v4);
}

- (_TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_1D29D93E0(v3);

  return v4;
}

- (NSArray)extensionPointIdentifiers
{
  if (*(self + OBJC_IVAR____TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration_extensionPointIdentifiers))
  {
    v2 = *(self + OBJC_IVAR____TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration_extensionPointIdentifiers);

    v3 = sub_1D2A00498();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setExtensionPointIdentifiers:(id)a3
{
  if (a3)
  {
    v4 = sub_1D2A004A8();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(self + OBJC_IVAR____TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration_extensionPointIdentifiers);
  *(self + OBJC_IVAR____TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration_extensionPointIdentifiers) = v4;
}

- (_TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end