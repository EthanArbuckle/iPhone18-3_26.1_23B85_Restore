@interface SidecarDisplaySession
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)sidecarRequest:(id)a3 receivedItems:(id)a4;
@end

@implementation SidecarDisplaySession

- (void)sidecarRequest:(id)a3 receivedItems:(id)a4
{
  sub_100005A1C(0, &unk_10007FAA0);
  v6 = sub_100057BF0();
  v7 = a3;
  v8 = self;
  SidecarDisplaySession.sidecarRequest(_:receivedItems:)(v8, v6);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    sub_100057A50();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v13, 0, sizeof(v13));
    v11 = a5;
    v12 = self;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_100057FE0();
  swift_unknownObjectRelease();
  if (a5)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_1000192D0(&qword_10007EA20, type metadata accessor for NSKeyValueChangeKey);
    sub_1000579B0();
  }

LABEL_7:
  SidecarDisplaySession.observeValue(forKeyPath:of:change:context:)();

  sub_100019138(v13, &unk_10007EEE0);
}

@end