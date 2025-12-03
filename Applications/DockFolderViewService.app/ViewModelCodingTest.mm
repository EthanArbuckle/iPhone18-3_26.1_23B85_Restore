@interface ViewModelCodingTest
- (_TtC21DockFolderViewService19ViewModelCodingTest)init;
- (_TtC21DockFolderViewService19ViewModelCodingTest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ViewModelCodingTest

- (_TtC21DockFolderViewService19ViewModelCodingTest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_1000629DC(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_100062320(coderCopy);
}

- (_TtC21DockFolderViewService19ViewModelCodingTest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end