@interface Autocompleter.AutocompleterDelegate
- (_TtCV8EventKit13AutocompleterP33_DEA997DC7EC58B9D25A8208EE08F08CD21AutocompleterDelegate)init;
- (void)autocompleter:(id)autocompleter finishedWithError:(id)error;
- (void)autocompleterUpdated:(id)updated;
@end

@implementation Autocompleter.AutocompleterDelegate

- (_TtCV8EventKit13AutocompleterP33_DEA997DC7EC58B9D25A8208EE08F08CD21AutocompleterDelegate)init
{
  v3 = OBJC_IVAR____TtCV8EventKit13AutocompleterP33_DEA997DC7EC58B9D25A8208EE08F08CD21AutocompleterDelegate_continuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2990, &qword_1A81C44E8);
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  *(&self->super.isa + OBJC_IVAR____TtCV8EventKit13AutocompleterP33_DEA997DC7EC58B9D25A8208EE08F08CD21AutocompleterDelegate_autocompleter) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for Autocompleter.AutocompleterDelegate();
  return [(Autocompleter.AutocompleterDelegate *)&v6 init];
}

- (void)autocompleterUpdated:(id)updated
{
  updatedCopy = updated;
  selfCopy = self;
  sub_1A81974F8(updatedCopy);
}

- (void)autocompleter:(id)autocompleter finishedWithError:(id)error
{
  autocompleterCopy = autocompleter;
  selfCopy = self;
  sub_1A81974F8(autocompleterCopy);
}

@end