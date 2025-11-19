@interface MFMailboxFilterProvider
- (MFMailboxFilterProvider)initWithFilterContext:(id)a3;
- (id)criterionsForFocus:(id)a3;
- (id)filterMatchingCriterion:(id)a3;
- (id)focusFilters;
- (id)individualVIPFilterGroup;
- (void)setIndividualVIPFilterGroup:(id)a3;
@end

@implementation MFMailboxFilterProvider

- (MFMailboxFilterProvider)initWithFilterContext:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v8.receiver = self;
  v8.super_class = MFMailboxFilterProvider;
  v6 = [(MFMailboxFilterProvider *)&v8 initWithFilterContext:v4 mailboxFilterClass:v5];

  return v6;
}

- (id)filterMatchingCriterion:(id)a3
{
  v4 = a3;
  v5 = [(MFMailboxFilterProvider *)self allFilters];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D7D54;
  v9[3] = &unk_1006543D8;
  v6 = v4;
  v10 = v6;
  v7 = [v5 ef_firstObjectPassingTest:v9];

  return v7;
}

- (id)focusFilters
{
  v3 = [(MFMailboxFilterProvider *)self focus];
  if (v3)
  {
    v4 = [(MFMailboxFilterProvider *)self criterionsForFocus:v3];
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

- (id)criterionsForFocus:(id)a3
{
  v3 = [a3 focusedAccountIdentifiers];
  v4 = [v3 allObjects];
  v5 = [v4 ef_compactMap:&stru_1006543F8];

  return v5;
}

- (id)individualVIPFilterGroup
{
  individualVIPFilterGroup = self->_individualVIPFilterGroup;
  if (!individualVIPFilterGroup)
  {
    v4 = +[VIPManager defaultInstance];
    v5 = [v4 vipCriteria];

    v6 = [v5 ef_compactMap:&stru_100654438];
    v7 = [MUIMailboxFilterGroup groupWithName:0 combinator:1 selectionCardinality:1 filters:v6];
    v8 = self->_individualVIPFilterGroup;
    self->_individualVIPFilterGroup = v7;

    individualVIPFilterGroup = self->_individualVIPFilterGroup;
  }

  return individualVIPFilterGroup;
}

- (void)setIndividualVIPFilterGroup:(id)a3
{
  v5 = a3;
  if (self->_individualVIPFilterGroup != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_individualVIPFilterGroup, a3);
    v5 = v6;
  }
}

@end