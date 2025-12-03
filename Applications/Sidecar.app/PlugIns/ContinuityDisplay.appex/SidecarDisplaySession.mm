@interface SidecarDisplaySession
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)sidecarRequest:(id)request receivedItems:(id)items;
@end

@implementation SidecarDisplaySession

- (void)sidecarRequest:(id)request receivedItems:(id)items
{
  sub_100005A1C(0, &unk_10007FAA0);
  v6 = sub_100057BF0();
  requestCopy = request;
  selfCopy = self;
  SidecarDisplaySession.sidecarRequest(_:receivedItems:)(selfCopy, v6);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    sub_100057A50();
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v13, 0, sizeof(v13));
    changeCopy = change;
    selfCopy = self;
    if (!change)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  sub_100057FE0();
  swift_unknownObjectRelease();
  if (change)
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