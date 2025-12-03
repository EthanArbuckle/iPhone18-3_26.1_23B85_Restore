@interface ATXDateRelevantContext
- (ATXDateRelevantContext)init;
- (ATXDateRelevantContext)initWithStartDate:(id)date endDate:(id)endDate;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSString)description;
@end

@implementation ATXDateRelevantContext

- (NSDate)startDate
{
  v3 = sub_226835228();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v9, self + OBJC_IVAR___ATXDateRelevantContext_startDate, v3, v7);
  v10 = sub_2268351A8();
  (*(v4 + 8))(v9, v3);

  return v10;
}

- (NSDate)endDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v14 - v6;
  sub_22679CC28(self + OBJC_IVAR___ATXDateRelevantContext_endDate, &v14 - v6);
  v8 = sub_226835228();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_2268351A8();
    (*(v9 + 8))(v7, v8);
    v11 = v12;
  }

  return v11;
}

- (ATXDateRelevantContext)initWithStartDate:(id)date endDate:(id)endDate
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v21 - v9;
  v11 = sub_226835228();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2268351F8();
  if (endDate)
  {
    sub_2268351F8();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  (*(v12 + 56))(v10, v17, 1, v11);
  (*(v12 + 16))(self + OBJC_IVAR___ATXDateRelevantContext_startDate, v16, v11);
  sub_22679CC28(v10, self + OBJC_IVAR___ATXDateRelevantContext_endDate);
  v18 = type metadata accessor for DateRelevantContext();
  v21.receiver = self;
  v21.super_class = v18;
  v19 = [(ATXDateRelevantContext *)&v21 init];
  sub_2267A5D00(v10);
  (*(v12 + 8))(v16, v11);
  return v19;
}

- (NSString)description
{
  selfCopy = self;
  sub_2267EBF08();

  v3 = sub_2268363F8();

  return v3;
}

- (ATXDateRelevantContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end