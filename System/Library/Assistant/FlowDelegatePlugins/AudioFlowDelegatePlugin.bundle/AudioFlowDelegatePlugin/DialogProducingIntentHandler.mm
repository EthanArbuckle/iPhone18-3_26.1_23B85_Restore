@interface DialogProducingIntentHandler
- (NSString)description;
- (_TtC23AudioFlowDelegatePlugin28DialogProducingIntentHandler)init;
- (void)handlePlayMedia:(INPlayMediaIntent *)media completion:(id)completion;
@end

@implementation DialogProducingIntentHandler

- (void)handlePlayMedia:(INPlayMediaIntent *)media completion:(id)completion
{
  v7 = sub_20410(&qword_34E4B0, &qword_2D3520);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = media;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2CE4D0();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2D3530;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2D3540;
  v15[5] = v14;
  mediaCopy = media;
  selfCopy = self;
  sub_D7B48(0, 0, v10, &unk_2D3550, v15);
}

- (NSString)description
{
  v2 = sub_2CE260();

  return v2;
}

- (_TtC23AudioFlowDelegatePlugin28DialogProducingIntentHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DialogProducingIntentHandler();
  return [(DialogProducingIntentHandler *)&v3 init];
}

@end