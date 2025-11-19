@interface LocationSearch.SearchModelWrapper
- (BOOL)shouldIncludeConferenceRoom:(id)a3;
- (BOOL)shouldIssueAvailabilityRequestForSearchModel:(id)a3;
- (_TtCV8EventKit14LocationSearch18SearchModelWrapper)init;
- (id)eventIDForSearchModel:(id)a3;
- (void)locationSearchModel:(id)a3 selectedLocation:(id)a4 withError:(id)a5;
- (void)locationSearchModel:(id)a3 updatedSearchTypes:(unint64_t)a4;
@end

@implementation LocationSearch.SearchModelWrapper

- (id)eventIDForSearchModel:(id)a3
{
  sub_1A81ACD84();
  sub_1A81ACD74();
  sub_1A81ACD44();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*&self->store[OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_eventID])
  {
    v4 = *(&self->super.isa + OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_eventID);

    v5 = sub_1A81ACCB4();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldIssueAvailabilityRequestForSearchModel:(id)a3
{
  sub_1A81ACD84();
  sub_1A81ACD74();
  sub_1A81ACD44();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(&self->super.isa + OBJC_IVAR____TtCV8EventKit14LocationSearch18SearchModelWrapper_shouldIssueAvailabilityRequest);

  return v4;
}

- (void)locationSearchModel:(id)a3 selectedLocation:(id)a4 withError:(id)a5
{
  sub_1A81ACD84();
  sub_1A81ACD74();
  sub_1A81ACD44();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

- (BOOL)shouldIncludeConferenceRoom:(id)a3
{
  sub_1A81ACD84();
  sub_1A81ACD74();
  sub_1A81ACD44();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  v7 = sub_1A818760C(v5);

  return v7 & 1;
}

- (void)locationSearchModel:(id)a3 updatedSearchTypes:(unint64_t)a4
{
  sub_1A81ACD84();
  sub_1A81ACD74();
  sub_1A81ACD44();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a3;
  v7 = self;
  if (([v6 resultsPending] & 1) == 0)
  {
    sub_1A81878B0();
  }
}

- (_TtCV8EventKit14LocationSearch18SearchModelWrapper)init
{
  sub_1A81ACD84();
  sub_1A81ACD74();
  sub_1A81ACD44();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end