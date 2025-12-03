@interface LocationSearch.SearchModelWrapper
- (BOOL)shouldIncludeConferenceRoom:(id)room;
- (BOOL)shouldIssueAvailabilityRequestForSearchModel:(id)model;
- (_TtCV8EventKit14LocationSearch18SearchModelWrapper)init;
- (id)eventIDForSearchModel:(id)model;
- (void)locationSearchModel:(id)model selectedLocation:(id)location withError:(id)error;
- (void)locationSearchModel:(id)model updatedSearchTypes:(unint64_t)types;
@end

@implementation LocationSearch.SearchModelWrapper

- (id)eventIDForSearchModel:(id)model
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

- (BOOL)shouldIssueAvailabilityRequestForSearchModel:(id)model
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

- (void)locationSearchModel:(id)model selectedLocation:(id)location withError:(id)error
{
  sub_1A81ACD84();
  sub_1A81ACD74();
  sub_1A81ACD44();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

- (BOOL)shouldIncludeConferenceRoom:(id)room
{
  sub_1A81ACD84();
  sub_1A81ACD74();
  sub_1A81ACD44();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  roomCopy = room;
  selfCopy = self;
  v7 = sub_1A818760C(roomCopy);

  return v7 & 1;
}

- (void)locationSearchModel:(id)model updatedSearchTypes:(unint64_t)types
{
  sub_1A81ACD84();
  sub_1A81ACD74();
  sub_1A81ACD44();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  modelCopy = model;
  selfCopy = self;
  if (([modelCopy resultsPending] & 1) == 0)
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