@interface MFMailboxFilterProvider
- (MFMailboxFilterProvider)initWithFilterContext:(id)context;
- (id)criterionsForFocus:(id)focus;
- (id)filterMatchingCriterion:(id)criterion;
- (id)focusFilters;
- (id)individualVIPFilterGroup;
- (void)setIndividualVIPFilterGroup:(id)group;
@end

@implementation MFMailboxFilterProvider

- (MFMailboxFilterProvider)initWithFilterContext:(id)context
{
  contextCopy = context;
  v5 = objc_opt_class();
  v8.receiver = self;
  v8.super_class = MFMailboxFilterProvider;
  v6 = [(MFMailboxFilterProvider *)&v8 initWithFilterContext:contextCopy mailboxFilterClass:v5];

  return v6;
}

- (id)filterMatchingCriterion:(id)criterion
{
  criterionCopy = criterion;
  allFilters = [(MFMailboxFilterProvider *)self allFilters];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D7D54;
  v9[3] = &unk_1006543D8;
  v6 = criterionCopy;
  v10 = v6;
  v7 = [allFilters ef_firstObjectPassingTest:v9];

  return v7;
}

- (id)focusFilters
{
  focus = [(MFMailboxFilterProvider *)self focus];
  if (focus)
  {
    v4 = [(MFMailboxFilterProvider *)self criterionsForFocus:focus];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001D7E4C;
    v7[3] = &unk_100652880;
    v7[4] = self;
    v5 = [v4 ef_compactMap:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)criterionsForFocus:(id)focus
{
  focusedAccountIdentifiers = [focus focusedAccountIdentifiers];
  allObjects = [focusedAccountIdentifiers allObjects];
  v5 = [allObjects ef_compactMap:&stru_1006543F8];

  return v5;
}

- (id)individualVIPFilterGroup
{
  individualVIPFilterGroup = self->_individualVIPFilterGroup;
  if (!individualVIPFilterGroup)
  {
    v4 = +[VIPManager defaultInstance];
    vipCriteria = [v4 vipCriteria];

    v6 = [vipCriteria ef_compactMap:&stru_100654438];
    v7 = [MUIMailboxFilterGroup groupWithName:0 combinator:1 selectionCardinality:1 filters:v6];
    v8 = self->_individualVIPFilterGroup;
    self->_individualVIPFilterGroup = v7;

    individualVIPFilterGroup = self->_individualVIPFilterGroup;
  }

  return individualVIPFilterGroup;
}

- (void)setIndividualVIPFilterGroup:(id)group
{
  groupCopy = group;
  if (self->_individualVIPFilterGroup != groupCopy)
  {
    v6 = groupCopy;
    objc_storeStrong(&self->_individualVIPFilterGroup, group);
    groupCopy = v6;
  }
}

@end