@interface ContactListMergeUnifyActionHelper
+ (id)descriptorForRequiredKeys;
- (BOOL)applyMergeResultToSaveRequest:(id)request;
- (BOOL)applyUndoTo:(id)to and:(id)and;
- (_TtC10ContactsUI33ContactListMergeUnifyActionHelper)init;
- (_TtC10ContactsUI33ContactListMergeUnifyActionHelper)initWithContactStore:(id)store;
- (void)mergeContacts:(id)contacts withContainerIdentifiers:(id)identifiers withContactIDToParentGroupsDict:(id)dict;
@end

@implementation ContactListMergeUnifyActionHelper

+ (id)descriptorForRequiredKeys
{
  sub_199DF9CEC();
  sub_199DF9C5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74790);
  v2 = sub_199DFA0BC();

  return v2;
}

- (_TtC10ContactsUI33ContactListMergeUnifyActionHelper)initWithContactStore:(id)store
{
  *(&self->super.isa + OBJC_IVAR____TtC10ContactsUI33ContactListMergeUnifyActionHelper_contactItems) = MEMORY[0x1E69E7CC0];
  v5 = OBJC_IVAR____TtC10ContactsUI33ContactListMergeUnifyActionHelper_mergeResult;
  v6 = sub_199DF9CBC();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  *(&self->super.isa + OBJC_IVAR____TtC10ContactsUI33ContactListMergeUnifyActionHelper_contactStore) = store;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ContactListMergeUnifyActionHelper();
  storeCopy = store;
  return [(ContactListMergeUnifyActionHelper *)&v9 init];
}

- (void)mergeContacts:(id)contacts withContainerIdentifiers:(id)identifiers withContactIDToParentGroupsDict:(id)dict
{
  sub_199A7A02C(0, &qword_1ED615BF0);
  v6 = sub_199DFA0CC();
  v7 = sub_199DFA0CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72740);
  v8 = sub_199DF9E9C();
  selfCopy = self;
  sub_199AA2600(v6, v7, v8);
}

- (BOOL)applyMergeResultToSaveRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  LOBYTE(self) = sub_199AA2B10();

  return self & 1;
}

- (BOOL)applyUndoTo:(id)to and:(id)and
{
  toCopy = to;
  andCopy = and;
  selfCopy = self;
  v9 = sub_199AA2D1C(toCopy, andCopy);

  return v9;
}

- (_TtC10ContactsUI33ContactListMergeUnifyActionHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end