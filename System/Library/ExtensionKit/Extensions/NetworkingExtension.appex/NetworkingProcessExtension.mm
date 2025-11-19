@interface NetworkingProcessExtension
- (_TtC19NetworkingExtension26NetworkingProcessExtension)init;
- (void)lockdownSandbox:(id)a3;
@end

@implementation NetworkingProcessExtension

- (_TtC19NetworkingExtension26NetworkingProcessExtension)init
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for NetworkingProcessExtension();
  v2 = [(NetworkingProcessExtension *)&v4 init];
  [(NetworkingProcessExtension *)v2 setSharedInstance:v2];
  return v2;
}

- (void)lockdownSandbox:(id)a3
{
  v4 = sub_100007794();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000077C4() == 3157553 && v9 == 0xE300000000000000)
  {
    v10 = self;

LABEL_5:
    v14[1] = self;
    (*(v5 + 104))(v8, enum case for RestrictedSandboxRevision.revision1(_:), v4);
    type metadata accessor for NetworkingProcessExtension();
    sub_100007330(&qword_10000C120, v12, type metadata accessor for NetworkingProcessExtension);
    sub_1000077A4();
    (*(v5 + 8))(v8, v4);

    return;
  }

  v11 = sub_1000077D4();
  v14[0] = self;

  if (v11)
  {
    goto LABEL_5;
  }

  v13 = v14[0];
}

@end