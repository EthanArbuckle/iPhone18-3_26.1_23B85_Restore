id sub_100000D00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticExtension();
  return objc_msgSendSuper2(&v2, "dealloc");
}

lementation DiagnosticExtension

- (id)attachmentList
{
  v2.super.isa = sub_100000D58().super.isa;

  return v2.super.isa;
}

- (id)attachmentsForParameters:(id)a3
{
  v3.super.isa = sub_100000D58().super.isa;

  return v3.super.isa;
}

- (_TtC19DiagnosticExtension19DiagnosticExtension)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DiagnosticExtension();
  return [(DiagnosticExtension *)&v3 init];
}

@end