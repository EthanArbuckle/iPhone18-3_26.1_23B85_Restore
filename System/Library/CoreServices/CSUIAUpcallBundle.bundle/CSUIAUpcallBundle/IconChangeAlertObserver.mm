@interface IconChangeAlertObserver
- (_TtC17CSUIAUpcallBundle23IconChangeAlertObserver)init;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation IconChangeAlertObserver

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = (*(*(sub_1C70(&qword_19388, &qword_ECC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v15 - v5;
  v7 = *(&stru_20.maxprot + (swift_isaMask & self->super.isa));
  v16 = self;
  v8 = v7();
  if (v8)
  {
    v10 = v8;
    v11 = v9;
    v12 = sub_D8E4();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v10;
    v13[5] = v11;
    swift_unknownObjectRetain();
    sub_1F6C(0, 0, v6, &unk_ED90, v13);

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v16;
  }
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = (*(*(sub_1C70(&qword_19388, &qword_ECC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v19 - v7;
  v9 = *(&stru_20.maxprot + (swift_isaMask & self->super.isa));
  v20 = self;
  v10 = a4;
  v11 = v9();
  if (v11)
  {
    v13 = v11;
    v14 = v12;
    v15 = sub_D8E4();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v13;
    v16[5] = v14;
    v16[6] = v10;
    v17 = v10;
    swift_unknownObjectRetain();
    sub_1F6C(0, 0, v8, &unk_ED88, v16);

    swift_unknownObjectRelease();
  }

  else
  {

    v18 = v20;
  }
}

- (_TtC17CSUIAUpcallBundle23IconChangeAlertObserver)init
{
  *&self->delegate[OBJC_IVAR____TtC17CSUIAUpcallBundle23IconChangeAlertObserver_delegate] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for IconChangeAlertObserver();
  return [(IconChangeAlertObserver *)&v4 init];
}

@end