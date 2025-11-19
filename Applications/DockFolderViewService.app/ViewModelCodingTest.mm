@interface ViewModelCodingTest
- (_TtC21DockFolderViewService19ViewModelCodingTest)init;
- (_TtC21DockFolderViewService19ViewModelCodingTest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ViewModelCodingTest

- (_TtC21DockFolderViewService19ViewModelCodingTest)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_1000629DC(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100062320(v4);
}

- (_TtC21DockFolderViewService19ViewModelCodingTest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end