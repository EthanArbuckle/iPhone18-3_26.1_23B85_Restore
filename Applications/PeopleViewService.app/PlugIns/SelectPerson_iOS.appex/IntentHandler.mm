@interface IntentHandler
- (id)defaultPeopleForSelectPeople:(id)people;
- (void)providePeopleOptionsCollectionForSelectPeople:(id)people searchTerm:(id)term withCompletion:(id)completion;
@end

@implementation IntentHandler

- (void)providePeopleOptionsCollectionForSelectPeople:(id)people searchTerm:(id)term withCompletion:(id)completion
{
  v8 = _Block_copy(completion);
  if (term)
  {
    v9 = sub_100005174();
    term = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  peopleCopy = people;
  selfCopy = self;
  sub_10000185C(peopleCopy, v9, term, sub_100004A98, v11);
}

- (id)defaultPeopleForSelectPeople:(id)people
{
  peopleCopy = people;
  selfCopy = self;
  v6 = sub_1000041D0();

  if (v6)
  {
    sub_100005024();
    v7.super.isa = sub_1000051C4().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

@end