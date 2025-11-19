@interface ContactListMergeUnifyActionHelper
+ (id)descriptorForRequiredKeys;
- (BOOL)applyMergeResultToSaveRequest:(id)a3;
- (BOOL)applyUndoTo:(id)a3 and:(id)a4;
- (_TtC10ContactsUI33ContactListMergeUnifyActionHelper)init;
- (_TtC10ContactsUI33ContactListMergeUnifyActionHelper)initWithContactStore:(id)a3;
- (void)mergeContacts:(id)a3 withContainerIdentifiers:(id)a4 withContactIDToParentGroupsDict:(id)a5;
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

- (_TtC10ContactsUI33ContactListMergeUnifyActionHelper)initWithContactStore:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC10ContactsUI33ContactListMergeUnifyActionHelper_contactItems) = MEMORY[0x1E69E7CC0];
  v5 = OBJC_IVAR____TtC10ContactsUI33ContactListMergeUnifyActionHelper_mergeResult;
  v6 = sub_199DF9CBC();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  *(&self->super.isa + OBJC_IVAR____TtC10ContactsUI33ContactListMergeUnifyActionHelper_contactStore) = a3;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ContactListMergeUnifyActionHelper();
  v7 = a3;
  return [(ContactListMergeUnifyActionHelper *)&v9 init];
}

- (void)mergeContacts:(id)a3 withContainerIdentifiers:(id)a4 withContactIDToParentGroupsDict:(id)a5
{
  sub_199A7A02C(0, &qword_1ED615BF0);
  v6 = sub_199DFA0CC();
  v7 = sub_199DFA0CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72740);
  v8 = sub_199DF9E9C();
  v9 = self;
  sub_199AA2600(v6, v7, v8);
}

- (BOOL)applyMergeResultToSaveRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_199AA2B10();

  return self & 1;
}

- (BOOL)applyUndoTo:(id)a3 and:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_199AA2D1C(v6, v7);

  return v9;
}

- (_TtC10ContactsUI33ContactListMergeUnifyActionHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end