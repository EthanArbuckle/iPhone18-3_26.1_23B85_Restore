@interface PreviewApplicationRestorationItem
- (PreviewApplicationRestorationItem)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PreviewApplicationRestorationItem

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_23A7EDF24();
  v7 = sub_23A7EE814();
  [v4 encodeObject:v6 forKey:v7];

  v8 = *(&v5->super.isa + OBJC_IVAR___PreviewApplicationRestorationItem_isReadonly);
  v9 = sub_23A7EE814();
  [v4 encodeBool:v8 forKey:v9];
}

- (PreviewApplicationRestorationItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end