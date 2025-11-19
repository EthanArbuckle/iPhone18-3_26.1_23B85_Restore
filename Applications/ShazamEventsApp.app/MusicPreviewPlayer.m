@interface MusicPreviewPlayer
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)playerDidFinishPlaying;
@end

@implementation MusicPreviewPlayer

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v17, 0, sizeof(v17));
    v15 = a5;
    v16 = self;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v9 = 0;
  v11 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v12 = a5;
  v13 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_10005D438(&qword_100218558, type metadata accessor for NSKeyValueChangeKey);
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  sub_10005DD38(v9, v11, v17, v14);

  sub_10000D52C(v17, &unk_10021F7F0);
}

- (void)playerDidFinishPlaying
{
  v2 = self;
  sub_10005C3EC();
}

@end