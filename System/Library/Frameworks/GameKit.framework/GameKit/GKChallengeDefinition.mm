@interface GKChallengeDefinition
+ (void)loadChallengeDefinitionsWithCompletionHandler:(id)a3;
- (GKChallengeDefinition)init;
- (GKChallengeDefinition)initWithIdentifier:(id)a3 groupIdentifier:(id)a4 title:(id)a5 details:(id)a6 isRepeatable:(BOOL)a7 durationOptions:(id)a8 leaderboard:(id)a9 imageUrl:(id)a10 releaseState:(unint64_t)a11;
- (NSArray)durationOptions;
- (void)hasActiveChallengesWithCompletionHandler:(id)a3;
- (void)loadImageWithCompletionHandler:(id)a3;
@end

@implementation GKChallengeDefinition

+ (void)loadChallengeDefinitionsWithCompletionHandler:(id)a3
{
  v4 = +[_TtC7GameKit28GKChallengeDefinitionSupport shared];

  [(GKChallengeDefinitionSupport *)v4 loadChallengeDefinitionsWithCompletionHandler:a3];
}

- (void)hasActiveChallengesWithCompletionHandler:(id)a3
{
  v5 = +[_TtC7GameKit28GKChallengeDefinitionSupport shared];
  v6 = [(GKChallengeDefinition *)self identifier];

  [(GKChallengeDefinitionSupport *)v5 hasActiveChallengesWithDefinitionID:v6 completionHandler:a3];
}

- (NSArray)durationOptions
{
  v2 = *(self + OBJC_IVAR___GKChallengeDefinition_durationOptions);
  sub_2186B6EEC();

  v3 = sub_2186B7A9C();

  return v3;
}

- (GKChallengeDefinition)initWithIdentifier:(id)a3 groupIdentifier:(id)a4 title:(id)a5 details:(id)a6 isRepeatable:(BOOL)a7 durationOptions:(id)a8 leaderboard:(id)a9 imageUrl:(id)a10 releaseState:(unint64_t)a11
{
  v13 = sub_2186B7A0C();
  v26 = v14;
  v27 = v13;
  if (a4)
  {
    a4 = sub_2186B7A0C();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_2186B7A0C();
  v19 = v18;
  if (a6)
  {
    a6 = sub_2186B7A0C();
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  sub_2186B6EEC();
  v22 = sub_2186B7AAC();
  v23 = a9;
  v24 = a10;
  return sub_2186AF718(v27, v26, a4, v16, v17, v19, a6, v21, a7, v22, a9, a10, a11);
}

- (void)loadImageWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v16 = self;
  _Block_copy(v9);
  v11 = [(GKChallengeDefinition *)v16 imageUrl];
  if (v11)
  {
    v12 = v11;
    sub_2186804FC(0, &qword_27CC07158, off_278236500);
    sub_2186B6F9C();
    v13 = sub_2186B6FAC();
    (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
    sub_218682758(v8, sub_2186AE9F8, v10);

    sub_21867F0B8(v8, &qword_27CC06D70, &qword_2186B92A0);

    _Block_release(v9);
  }

  else
  {
    (*(v9 + 2))(v9, 0, 0);

    _Block_release(v9);
    v14 = v16;
  }
}

- (GKChallengeDefinition)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end