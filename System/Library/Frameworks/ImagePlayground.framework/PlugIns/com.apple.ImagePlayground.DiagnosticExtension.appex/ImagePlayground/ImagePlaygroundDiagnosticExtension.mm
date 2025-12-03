@interface ImagePlaygroundDiagnosticExtension
- (_TtC45com_apple_ImagePlayground_DiagnosticExtension34ImagePlaygroundDiagnosticExtension)init;
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation ImagePlaygroundDiagnosticExtension

- (id)attachmentsForParameters:(id)parameters
{
  sub_100001020(&qword_100008140, &qword_100001408);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000013A0;
  v4 = objc_allocWithZone(DEAttachmentItem);
  v5 = sub_1000011F8();
  v6 = [v4 initWithPath:v5];

  if (v6)
  {
    *(inited + 32) = v6;
    sub_100000CA8(inited);
    swift_setDeallocating();
    v8 = *(inited + 16);
    swift_arrayDestroy();
    v9.super.isa = sub_100001208().super.isa;

    return v9.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_TtC45com_apple_ImagePlayground_DiagnosticExtension34ImagePlaygroundDiagnosticExtension)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ImagePlaygroundDiagnosticExtension();
  return [(ImagePlaygroundDiagnosticExtension *)&v3 init];
}

@end