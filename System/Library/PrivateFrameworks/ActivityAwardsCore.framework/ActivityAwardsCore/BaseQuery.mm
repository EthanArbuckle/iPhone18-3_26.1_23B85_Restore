@interface BaseQuery
- (_TtC18ActivityAwardsCore9BaseQuery)init;
- (void)transportEvent:(unint64_t)event data:(id)data;
- (void)transportRequest:(unint64_t)request data:(NSData *)data completion:(id)completion;
@end

@implementation BaseQuery

- (_TtC18ActivityAwardsCore9BaseQuery)init
{
  v3 = sub_227781E88();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(&self->super.isa + OBJC_IVAR____TtC18ActivityAwardsCore9BaseQuery_transportDispatchService) = sub_227781E78();
  v7.receiver = self;
  v7.super_class = type metadata accessor for BaseQuery();
  return [(BaseQuery *)&v7 init];
}

- (void)transportRequest:(unint64_t)request data:(NSData *)data completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE420, &qword_227782940);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = request;
  v14[3] = data;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_227781FE8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_227782950;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_227782960;
  v17[5] = v16;
  dataCopy = data;
  selfCopy = self;
  sub_227770DA4(0, 0, v12, &unk_227782970, v17);
}

- (void)transportEvent:(unint64_t)event data:(id)data
{
  if (data)
  {
    selfCopy = self;
    dataCopy = data;
    v8 = sub_227781DE8();
    v10 = v9;
  }

  else
  {
    selfCopy2 = self;
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  _s18ActivityAwardsCore9BaseQueryC14transportEvent_4dataySo16AACTransportItemV_10Foundation4DataVSgtF_0(event);
  sub_22776F3A4(v8, v10);
}

@end