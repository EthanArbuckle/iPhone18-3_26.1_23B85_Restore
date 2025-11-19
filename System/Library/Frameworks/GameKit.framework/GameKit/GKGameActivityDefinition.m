@interface GKGameActivityDefinition
+ (void)loadGameActivityDefinitionsWithCompletionHandler:(id)a3;
+ (void)loadGameActivityDefinitionsWithIDs:(id)a3 completionHandler:(id)a4;
- (BOOL)supportsUnlimitedPlayers;
- (GKGameActivityDefinition)init;
- (GKGameActivityDefinition)initWithIdentifier:(id)a3 groupIdentifier:(id)a4 title:(id)a5 details:(id)a6 supportPartyCode:(BOOL)a7 fallbackURL:(id)a8 maxPlayers:(id)a9 minPlayers:(id)a10 defaultProperties:(id)a11 imageURL:(id)a12 releaseState:(unint64_t)a13 playStyle:(int64_t)a14 associatedLeaderboardIDs:(id)a15 associatedAchievementDescriptionIDs:(id)a16 language:(id)a17 partyStartURL:(id)a18;
- (NSDictionary)defaultProperties;
- (NSNumber)maxPlayers;
- (NSNumber)minPlayers;
- (NSURL)fallbackURL;
- (void)setMinPlayers:(id)a3;
@end

@implementation GKGameActivityDefinition

+ (void)loadGameActivityDefinitionsWithCompletionHandler:(id)a3
{
  v4 = +[_TtC7GameKit31GKGameActivityDefinitionSupport shared];

  [(GKGameActivityDefinitionSupport *)v4 loadGameActivityDefinitionsWithCompletionHandler:a3];
}

+ (void)loadGameActivityDefinitionsWithIDs:(id)a3 completionHandler:(id)a4
{
  v6 = +[_TtC7GameKit31GKGameActivityDefinitionSupport shared];

  [(GKGameActivityDefinitionSupport *)v6 loadGameActivityDefinitionsWith:a3 completionHandler:a4];
}

- (NSURL)fallbackURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = self;
  sub_2186A8A5C(v6);

  v8 = sub_2186B6FAC();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_2186B6F8C();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (NSNumber)maxPlayers
{
  v2 = self;
  v3 = [(GKGameActivityDefinition *)v2 internalMaxPlayers];
  if (!v3 || (v4 = v3, v5 = [(NSNumber *)v3 integerValue], v2, v6 = v4, v2 = v4, v5 == -1))
  {

    v6 = 0;
  }

  return v6;
}

- (NSNumber)minPlayers
{
  v3 = OBJC_IVAR___GKGameActivityDefinition___minPlayers;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMinPlayers:(id)a3
{
  v5 = OBJC_IVAR___GKGameActivityDefinition___minPlayers;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (NSDictionary)defaultProperties
{
  v2 = *(self + OBJC_IVAR___GKGameActivityDefinition_defaultProperties);

  v3 = sub_2186B79AC();

  return v3;
}

- (BOOL)supportsUnlimitedPlayers
{
  v2 = self;
  v3 = sub_2186A90D0();

  return v3 & 1;
}

- (GKGameActivityDefinition)initWithIdentifier:(id)a3 groupIdentifier:(id)a4 title:(id)a5 details:(id)a6 supportPartyCode:(BOOL)a7 fallbackURL:(id)a8 maxPlayers:(id)a9 minPlayers:(id)a10 defaultProperties:(id)a11 imageURL:(id)a12 releaseState:(unint64_t)a13 playStyle:(int64_t)a14 associatedLeaderboardIDs:(id)a15 associatedAchievementDescriptionIDs:(id)a16 language:(id)a17 partyStartURL:(id)a18
{
  v72 = a7;
  v73 = self;
  v21 = sub_2186B6FAC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v71 = v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = v59 - v27;
  v29 = sub_2186B7A0C();
  v69 = v30;
  v70 = v29;
  if (a4)
  {
    v31 = sub_2186B7A0C();
    v67 = v32;
    v68 = v31;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v62 = a16;
  v59[1] = a15;
  v33 = sub_2186B7A0C();
  v65 = v34;
  v66 = v33;
  if (a6)
  {
    v35 = sub_2186B7A0C();
    v63 = v36;
    v64 = v35;
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  v60 = a13;
  v61 = a14;
  v74 = a12;
  if (a8)
  {
    sub_2186B6F9C();
    v37 = *(v22 + 56);
    v38 = a9;
    v39 = a10;
    v40 = v74;
    v41 = a17;
    v42 = a18;
    v37(v28, 0, 1, v21);
  }

  else
  {
    (*(v22 + 56))(v28, 1, 1, v21);
    v43 = a9;
    v44 = a10;
    v45 = v74;
    v46 = a17;
    v47 = a18;
  }

  v48 = sub_2186B79BC();
  v49 = sub_2186B7AAC();
  v50 = sub_2186B7AAC();
  v51 = sub_2186B7A0C();
  v53 = v52;

  v54 = v71;
  sub_2186B6F9C();

  v58 = v50;
  v55 = v74;
  v56 = sub_2186AE444(v70, v69, v68, v67, v66, v65, v64, v63, v72, v28, a9, a10, v48, v74, v60, v61, v49, v58, v51, v53, v54);

  return v56;
}

- (GKGameActivityDefinition)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end