@interface ATQuestion
- (ATQuestionTopic)topic;
- (NSArray)answerChoices;
- (NSData)customTopicData;
- (NSDate)expirationDate;
- (NSString)description;
- (_TtC5AskTo10ATQuestion)init;
- (_TtC5AskTo10ATQuestion)initWithId:(id)a3 topic:(id)a4 title:(id)a5 summary:(id)a6;
- (_TtC5AskTo10ATQuestion)initWithId:(id)a3 topic:(id)a4 title:(id)a5 summary:(id)a6 shortTitle:(id)a7 shortSummary:(id)a8;
- (_TtC5AskTo10ATQuestion)initWithSystemId:(id)a3 version:(double)a4 id:(id)a5 topic:(id)a6 title:(id)a7 summary:(id)a8 longTitle:(id)a9 longSummary:(id)a10 notificationText:(id)a11 answerChoices:(id)a12;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAnswerChoices:(id)a3;
- (void)setCustomTopicData:(id)a3;
- (void)setExpirationDate:(id)a3;
- (void)setTopic:(id)a3;
@end

@implementation ATQuestion

- (ATQuestionTopic)topic
{
  v3 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTopic:(id)a3
{
  v5 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (NSData)customTopicData
{
  v2 = (self + OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData);
  swift_beginAccess();
  v3 = 0;
  v4 = v2[1];
  if (v4 >> 60 != 15)
  {
    v5 = *v2;
    sub_241086284(v5, v4);
    v6 = sub_2410DEE20();
    sub_2410861E4(v5, v4);
    v3 = v6;
  }

  return v3;
}

- (void)setCustomTopicData:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = self;
    v6 = v3;
    v3 = sub_2410DEE40();
    v8 = v7;
  }

  else
  {
    v9 = self;
    v8 = 0xF000000000000000;
  }

  v10 = (self + OBJC_IVAR____TtC5AskTo10ATQuestion_customTopicData);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = v3;
  v10[1] = v8;
  sub_2410861E4(v11, v12);
}

- (NSArray)answerChoices
{
  v3 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  swift_beginAccess();
  v4 = *(self + v3);
  type metadata accessor for ATAnswerChoice();

  v5 = sub_2410DF2B0();

  return v5;
}

- (void)setAnswerChoices:(id)a3
{
  type metadata accessor for ATAnswerChoice();
  v4 = sub_2410DF2C0();
  v5 = OBJC_IVAR____TtC5AskTo10ATQuestion_answerChoices;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (NSDate)expirationDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE8, &qword_2410E39F8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  swift_beginAccess();
  sub_241082EC4(self + v7, v6, &qword_27E525FE8, &qword_2410E39F8);
  v8 = sub_2410DEE90();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_2410DEE70();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setExpirationDate:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE8, &qword_2410E39F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  if (a3)
  {
    sub_2410DEE80();
    v9 = sub_2410DEE90();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_2410DEE90();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = OBJC_IVAR____TtC5AskTo10ATQuestion_expirationDate;
  swift_beginAccess();
  v12 = self;
  sub_2410BC314(v8, self + v11, &qword_27E525FE8, &qword_2410E39F8);
  swift_endAccess();
}

- (_TtC5AskTo10ATQuestion)initWithId:(id)a3 topic:(id)a4 title:(id)a5 summary:(id)a6
{
  v7 = sub_2410DF0C0();
  v9 = v8;
  v10 = sub_2410DF0C0();
  v12 = v11;
  v13 = sub_2410DF0C0();
  v14 = a4;
  v15 = sub_2410BBDE8(v7, v9, v14, v10, v12, v13);

  return v15;
}

- (_TtC5AskTo10ATQuestion)initWithId:(id)a3 topic:(id)a4 title:(id)a5 summary:(id)a6 shortTitle:(id)a7 shortSummary:(id)a8
{
  v20 = sub_2410DF0C0();
  v12 = v11;
  v13 = sub_2410DF0C0();
  v15 = v14;
  v16 = sub_2410DF0C0();
  if (!a7)
  {
    if (!a8)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  sub_2410DF0C0();
  if (a8)
  {
LABEL_3:
    sub_2410DF0C0();
  }

LABEL_5:
  v17 = a4;
  v18 = sub_2410BC074(v20, v12, v17, v13, v15, v16);

  return v18;
}

- (_TtC5AskTo10ATQuestion)initWithSystemId:(id)a3 version:(double)a4 id:(id)a5 topic:(id)a6 title:(id)a7 summary:(id)a8 longTitle:(id)a9 longSummary:(id)a10 notificationText:(id)a11 answerChoices:(id)a12
{
  v41 = a6;
  v42 = self;
  v14 = a10;
  v15 = sub_2410DEF00();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  sub_2410DEEE0();
  sub_2410DEEE0();
  v22 = sub_2410DF0C0();
  v39 = v23;
  v40 = v22;
  v24 = sub_2410DF0C0();
  v37 = v25;
  v38 = v24;
  if (a9)
  {
    v26 = sub_2410DF0C0();
    v28 = v27;
    v29 = a11;
    if (a10)
    {
      goto LABEL_3;
    }

LABEL_6:
    v31 = 0;
    if (v29)
    {
      goto LABEL_4;
    }

LABEL_7:
    v33 = 0;
    goto LABEL_8;
  }

  v26 = 0;
  v28 = 0;
  v29 = a11;
  if (!a10)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = sub_2410DF0C0();
  v31 = v30;
  if (!v29)
  {
    goto LABEL_7;
  }

LABEL_4:
  v29 = sub_2410DF0C0();
  v33 = v32;
LABEL_8:
  v34 = v41;
  type metadata accessor for ATAnswerChoice();
  v35 = sub_2410DF2C0();
  return sub_2410B0FD4(v21, v19, v34, v40, v39, v38, v37, v26, a4, v28, v14, v31, v29, v33, v35);
}

- (_TtC5AskTo10ATQuestion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)hash
{
  v2 = self;
  v3 = ATQuestion.hash.getter();

  return v3;
}

- (NSString)description
{
  v2 = self;
  ATQuestion.description.getter();

  v3 = sub_2410DF0A0();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ATQuestion.encode(with:)(v4);
}

@end