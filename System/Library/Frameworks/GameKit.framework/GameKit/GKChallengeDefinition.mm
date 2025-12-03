@interface GKChallengeDefinition
+ (void)loadChallengeDefinitionsWithCompletionHandler:(id)handler;
- (GKChallengeDefinition)init;
- (GKChallengeDefinition)initWithIdentifier:(id)identifier groupIdentifier:(id)groupIdentifier title:(id)title details:(id)details isRepeatable:(BOOL)repeatable durationOptions:(id)options leaderboard:(id)leaderboard imageUrl:(id)self0 releaseState:(unint64_t)self1;
- (NSArray)durationOptions;
- (void)hasActiveChallengesWithCompletionHandler:(id)handler;
- (void)loadImageWithCompletionHandler:(id)handler;
@end

@implementation GKChallengeDefinition

+ (void)loadChallengeDefinitionsWithCompletionHandler:(id)handler
{
  v4 = +[_TtC7GameKit28GKChallengeDefinitionSupport shared];

  [(GKChallengeDefinitionSupport *)v4 loadChallengeDefinitionsWithCompletionHandler:handler];
}

- (void)hasActiveChallengesWithCompletionHandler:(id)handler
{
  v5 = +[_TtC7GameKit28GKChallengeDefinitionSupport shared];
  identifier = [(GKChallengeDefinition *)self identifier];

  [(GKChallengeDefinitionSupport *)v5 hasActiveChallengesWithDefinitionID:identifier completionHandler:handler];
}

- (NSArray)durationOptions
{
  v2 = *(self + OBJC_IVAR___GKChallengeDefinition_durationOptions);
  sub_2186B6EEC();

  v3 = sub_2186B7A9C();

  return v3;
}

- (GKChallengeDefinition)initWithIdentifier:(id)identifier groupIdentifier:(id)groupIdentifier title:(id)title details:(id)details isRepeatable:(BOOL)repeatable durationOptions:(id)options leaderboard:(id)leaderboard imageUrl:(id)self0 releaseState:(unint64_t)self1
{
  v13 = sub_2186B7A0C();
  v26 = v14;
  v27 = v13;
  if (groupIdentifier)
  {
    groupIdentifier = sub_2186B7A0C();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_2186B7A0C();
  v19 = v18;
  if (details)
  {
    details = sub_2186B7A0C();
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  sub_2186B6EEC();
  v22 = sub_2186B7AAC();
  leaderboardCopy = leaderboard;
  urlCopy = url;
  return sub_2186AF718(v27, v26, groupIdentifier, v16, v17, v19, details, v21, repeatable, v22, leaderboard, url, state);
}

- (void)loadImageWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  selfCopy = self;
  _Block_copy(v9);
  imageUrl = [(GKChallengeDefinition *)selfCopy imageUrl];
  if (imageUrl)
  {
    v12 = imageUrl;
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
    v14 = selfCopy;
  }
}

- (GKChallengeDefinition)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end