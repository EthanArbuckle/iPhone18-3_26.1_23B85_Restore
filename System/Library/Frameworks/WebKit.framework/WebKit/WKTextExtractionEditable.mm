@interface WKTextExtractionEditable
- (WKTextExtractionEditable)init;
- (WKTextExtractionEditable)initWithLabel:(id)a3 placeholder:(id)a4 isSecure:(BOOL)a5 isFocused:(BOOL)a6;
@end

@implementation WKTextExtractionEditable

- (WKTextExtractionEditable)initWithLabel:(id)a3 placeholder:(id)a4 isSecure:(BOOL)a5 isFocused:(BOOL)a6
{
  v9 = sub_19E6CD4E8();
  v11 = v10;
  v12 = sub_19E6CD4E8();
  v13 = (self + OBJC_IVAR___WKTextExtractionEditable_label);
  *v13 = v9;
  v13[1] = v11;
  v14 = (self + OBJC_IVAR___WKTextExtractionEditable_placeholder);
  *v14 = v12;
  v14[1] = v15;
  *(self + OBJC_IVAR___WKTextExtractionEditable_backingIsSecure) = a5;
  *(self + OBJC_IVAR___WKTextExtractionEditable_backingIsFocused) = a6;
  v17.receiver = self;
  v17.super_class = WKTextExtractionEditable;
  return [(WKTextExtractionEditable *)&v17 init];
}

- (WKTextExtractionEditable)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end