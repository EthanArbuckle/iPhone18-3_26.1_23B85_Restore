@interface IntentHandler
- (id)defaultPeopleForSelectPeople:(id)a3;
- (void)providePeopleOptionsCollectionForSelectPeople:(id)a3 searchTerm:(id)a4 withCompletion:(id)a5;
@end

@implementation IntentHandler

- (void)providePeopleOptionsCollectionForSelectPeople:(id)a3 searchTerm:(id)a4 withCompletion:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    v9 = sub_100005174();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = a3;
  v13 = self;
  sub_10000185C(v12, v9, a4, sub_100004A98, v11);
}

- (id)defaultPeopleForSelectPeople:(id)a3
{
  v4 = a3;
  v5 = self;
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