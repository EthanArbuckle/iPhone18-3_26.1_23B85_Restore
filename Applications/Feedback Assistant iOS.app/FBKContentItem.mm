@interface FBKContentItem
+ (id)areaFilterGroupWithContentItems:(id)items;
+ (id)assignedToMeFilter;
+ (id)closedFilter;
+ (id)filterGroupsForAll;
+ (id)filterGroupsForTeam:(id)team;
+ (id)openFilter;
+ (id)originatedByMeFilter;
+ (id)orphanedFilter;
+ (id)personalActionsFilterGroup;
+ (id)responsePendingFilter;
+ (id)teamActionsFilterGroupWithTeam:(id)team;
+ (id)teamsFilterGroup;
- (BOOL)canResolveNeedsAction;
- (UIColor)itemTitleColor;
- (UIColor)needsActionTintColor;
- (UIColor)orphanBadgeTintColor;
- (UIColor)secondaryTextColor;
- (id)colorForActive:(BOOL)active;
@end

@implementation FBKContentItem

- (UIColor)needsActionTintColor
{
  canResolveNeedsAction = [(FBKContentItem *)self canResolveNeedsAction];

  return [(FBKContentItem *)self colorForActive:canResolveNeedsAction];
}

- (BOOL)canResolveNeedsAction
{
  if ([(FBKContentItem *)self itemType]== 4)
  {
    singleTeam = [(FBKContentItem *)self singleTeam];
    teamType = [singleTeam teamType];
    assignee = [(FBKContentItem *)self assignee];
    v6 = [assignee ID];
    user = [(FBKContentItem *)self user];
    v8 = [user ID];
    v9 = [v6 isEqualToNumber:v8];

    if (teamType)
    {
      v10 = v9;
    }

    else
    {
      v10 = 1;
    }

    if ([(FBKContentItem *)self isOrphaned])
    {
      v10 |= [singleTeam role] == 2;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

- (UIColor)orphanBadgeTintColor
{
  canReassignFeedback = [(FBKContentItem *)self canReassignFeedback];

  return [(FBKContentItem *)self colorForActive:canReassignFeedback];
}

- (id)colorForActive:(BOOL)active
{
  if (active)
  {
    +[iFBAConstants tintColor];
  }

  else
  {
    +[UIColor systemFillColor];
  }
  v3 = ;

  return v3;
}

- (UIColor)itemTitleColor
{
  if ([(FBKContentItem *)self isClosedFeedback])
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v2 = ;

  return v2;
}

- (UIColor)secondaryTextColor
{
  if ([(FBKContentItem *)self isClosedFeedback])
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v2 = ;

  return v2;
}

+ (id)filterGroupsForTeam:(id)team
{
  teamCopy = team;
  sub_10007D294(teamCopy);

  type metadata accessor for FBAFilterGroup();
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

+ (id)filterGroupsForAll
{
  sub_10007DA94();
  type metadata accessor for FBAFilterGroup();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

+ (id)assignedToMeFilter
{
  sub_10007C478();

  return v2;
}

+ (id)originatedByMeFilter
{
  sub_10007C6C4();

  return v2;
}

+ (id)responsePendingFilter
{
  v2 = sub_10007C0BC();

  return v2;
}

+ (id)orphanedFilter
{
  v2 = sub_10007C8F8();

  return v2;
}

+ (id)openFilter
{
  v2 = sub_10007C1FC();

  return v2;
}

+ (id)closedFilter
{
  v2 = sub_10007DCA0();

  return v2;
}

+ (id)teamActionsFilterGroupWithTeam:(id)team
{
  teamCopy = team;
  v5 = sub_10007CA3C(team);

  return v5;
}

+ (id)personalActionsFilterGroup
{
  v2 = sub_10007C354();

  return v2;
}

+ (id)teamsFilterGroup
{
  v2 = sub_10007D460();

  return v2;
}

+ (id)areaFilterGroupWithContentItems:(id)items
{
  sub_1000497E4(0, &qword_100109990, FBKContentItem_ptr);
  sub_10007DA50(&qword_100109998, &qword_100109990, FBKContentItem_ptr);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = sub_10007CF14(v3);

  return v4;
}

@end