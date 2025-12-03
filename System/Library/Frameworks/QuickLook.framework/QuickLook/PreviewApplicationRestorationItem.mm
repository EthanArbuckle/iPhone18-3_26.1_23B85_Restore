@interface PreviewApplicationRestorationItem
- (PreviewApplicationRestorationItem)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PreviewApplicationRestorationItem

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_23A7EDF24();
  v7 = sub_23A7EE814();
  [coderCopy encodeObject:v6 forKey:v7];

  v8 = *(&selfCopy->super.isa + OBJC_IVAR___PreviewApplicationRestorationItem_isReadonly);
  v9 = sub_23A7EE814();
  [coderCopy encodeBool:v8 forKey:v9];
}

- (PreviewApplicationRestorationItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end