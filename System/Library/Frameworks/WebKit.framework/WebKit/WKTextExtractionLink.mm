@interface WKTextExtractionLink
- (NSURL)url;
- (WKTextExtractionLink)init;
- (WKTextExtractionLink)initWithURL:(id)l range:(_NSRange)range;
- (_NSRange)range;
@end

@implementation WKTextExtractionLink

- (NSURL)url
{
  v2 = sub_19E6CCF28();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19E6CCF18();
  v6 = sub_19E6CCEF8();
  (*(v3 + 8))(v5, v2);

  return v6;
}

- (_NSRange)range
{
  v2 = self + OBJC_IVAR___WKTextExtractionLink_range;
  v3 = *(&self->super.isa + OBJC_IVAR___WKTextExtractionLink_range);
  v4 = *(v2 + 1);
  result.length = v4;
  result.location = v3;
  return result;
}

- (WKTextExtractionLink)initWithURL:(id)l range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = sub_19E6CCF28();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19E6CCF18();
  *(&self->super.isa + OBJC_IVAR___WKTextExtractionLink_backingURL) = sub_19E6CCEF8();
  v11 = (self + OBJC_IVAR___WKTextExtractionLink_range);
  *v11 = location;
  v11[1] = length;
  v14.receiver = self;
  v14.super_class = WKTextExtractionLink;
  v12 = [(WKTextExtractionLink *)&v14 init];
  (*(v8 + 8))(v10, v7);
  return v12;
}

- (WKTextExtractionLink)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end