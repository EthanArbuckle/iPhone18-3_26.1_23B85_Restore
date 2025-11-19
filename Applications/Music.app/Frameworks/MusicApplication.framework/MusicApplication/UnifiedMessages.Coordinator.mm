@interface UnifiedMessages.Coordinator
- (void)engagement:(id)a3 didUpdateRequest:(id)a4 placement:(id)a5 serviceType:(id)a6;
@end

@implementation UnifiedMessages.Coordinator

- (void)engagement:(id)a3 didUpdateRequest:(id)a4 placement:(id)a5 serviceType:(id)a6
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_AB92A0();
  v14 = v13;
  v15 = sub_AB9990();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = self;
  v16[5] = v12;
  v16[6] = v14;
  v16[7] = a4;
  v17 = a4;
  v18 = self;
  v19 = v17;
  v20 = a5;
  sub_DBDC8(0, 0, v11, &unk_AFCBE0, v16);
}

@end