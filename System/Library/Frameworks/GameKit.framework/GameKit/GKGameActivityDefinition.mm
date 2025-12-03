@interface GKGameActivityDefinition
+ (void)loadGameActivityDefinitionsWithCompletionHandler:(id)handler;
+ (void)loadGameActivityDefinitionsWithIDs:(id)ds completionHandler:(id)handler;
- (BOOL)supportsUnlimitedPlayers;
- (GKGameActivityDefinition)init;
- (GKGameActivityDefinition)initWithIdentifier:(id)identifier groupIdentifier:(id)groupIdentifier title:(id)title details:(id)details supportPartyCode:(BOOL)code fallbackURL:(id)l maxPlayers:(id)players minPlayers:(id)self0 defaultProperties:(id)self1 imageURL:(id)self2 releaseState:(unint64_t)self3 playStyle:(int64_t)self4 associatedLeaderboardIDs:(id)self5 associatedAchievementDescriptionIDs:(id)self6 language:(id)self7 partyStartURL:(id)self8;
- (NSDictionary)defaultProperties;
- (NSNumber)maxPlayers;
- (NSNumber)minPlayers;
- (NSURL)fallbackURL;
- (void)setMinPlayers:(id)players;
@end

@implementation GKGameActivityDefinition

+ (void)loadGameActivityDefinitionsWithCompletionHandler:(id)handler
{
  v4 = +[_TtC7GameKit31GKGameActivityDefinitionSupport shared];

  [(GKGameActivityDefinitionSupport *)v4 loadGameActivityDefinitionsWithCompletionHandler:handler];
}

+ (void)loadGameActivityDefinitionsWithIDs:(id)ds completionHandler:(id)handler
{
  v6 = +[_TtC7GameKit31GKGameActivityDefinitionSupport shared];

  [(GKGameActivityDefinitionSupport *)v6 loadGameActivityDefinitionsWith:ds completionHandler:handler];
}

- (NSURL)fallbackURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  selfCopy = self;
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
  selfCopy = self;
  internalMaxPlayers = [(GKGameActivityDefinition *)selfCopy internalMaxPlayers];
  if (!internalMaxPlayers || (v4 = internalMaxPlayers, v5 = [(NSNumber *)internalMaxPlayers integerValue], selfCopy, v6 = v4, selfCopy = v4, v5 == -1))
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

- (void)setMinPlayers:(id)players
{
  v5 = OBJC_IVAR___GKGameActivityDefinition___minPlayers;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = players;
  playersCopy = players;
}

- (NSDictionary)defaultProperties
{
  v2 = *(self + OBJC_IVAR___GKGameActivityDefinition_defaultProperties);

  v3 = sub_2186B79AC();

  return v3;
}

- (BOOL)supportsUnlimitedPlayers
{
  selfCopy = self;
  v3 = sub_2186A90D0();

  return v3 & 1;
}

- (GKGameActivityDefinition)initWithIdentifier:(id)identifier groupIdentifier:(id)groupIdentifier title:(id)title details:(id)details supportPartyCode:(BOOL)code fallbackURL:(id)l maxPlayers:(id)players minPlayers:(id)self0 defaultProperties:(id)self1 imageURL:(id)self2 releaseState:(unint64_t)self3 playStyle:(int64_t)self4 associatedLeaderboardIDs:(id)self5 associatedAchievementDescriptionIDs:(id)self6 language:(id)self7 partyStartURL:(id)self8
{
  codeCopy = code;
  selfCopy = self;
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
  if (groupIdentifier)
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

  iDsCopy = iDs;
  v59[1] = ds;
  v33 = sub_2186B7A0C();
  v65 = v34;
  v66 = v33;
  if (details)
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

  stateCopy = state;
  styleCopy = style;
  rLCopy = rL;
  if (l)
  {
    sub_2186B6F9C();
    v37 = *(v22 + 56);
    playersCopy = players;
    minPlayersCopy = minPlayers;
    v40 = rLCopy;
    languageCopy = language;
    uRLCopy = uRL;
    v37(v28, 0, 1, v21);
  }

  else
  {
    (*(v22 + 56))(v28, 1, 1, v21);
    playersCopy2 = players;
    minPlayersCopy2 = minPlayers;
    v45 = rLCopy;
    languageCopy2 = language;
    uRLCopy2 = uRL;
  }

  v48 = sub_2186B79BC();
  v49 = sub_2186B7AAC();
  v50 = sub_2186B7AAC();
  v51 = sub_2186B7A0C();
  v53 = v52;

  v54 = v71;
  sub_2186B6F9C();

  v58 = v50;
  v55 = rLCopy;
  v56 = sub_2186AE444(v70, v69, v68, v67, v66, v65, v64, v63, codeCopy, v28, players, minPlayers, v48, rLCopy, stateCopy, styleCopy, v49, v58, v51, v53, v54);

  return v56;
}

- (GKGameActivityDefinition)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end