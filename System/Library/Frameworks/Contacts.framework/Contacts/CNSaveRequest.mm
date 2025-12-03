@interface CNSaveRequest
- (BOOL)canIgnoreError:(id)error;
- (BOOL)hasConflictingSaveOperations;
- (CNSaveRequest)init;
- (CNSaveRequest)initWithCoder:(id)coder;
- (CNSaveRequestDelegate)delegate;
- (NSArray)allAccountIdentifierStrings;
- (NSArray)allContactIdentifiers;
- (NSArray)allContacts;
- (NSArray)allContainers;
- (NSArray)allGroupIdentifiers;
- (NSArray)allGroups;
- (NSArray)contactChangeRequests;
- (NSArray)deletedContacts;
- (NSArray)updatedContacts;
- (NSArray)updatedContainers;
- (NSArray)updatedGroups;
- (id)_dictionaryOfArraysFromDictionaryOfDictionaries:(id)dictionaries;
- (id)allAccountIdentifiers;
- (id)allContainerIdentifierStrings:(BOOL *)strings;
- (id)allContainerIdentifiers:(BOOL *)identifiers;
- (id)distinctDeletedContacts;
- (id)flattenedDictionaryForDictionaryOfTuples:(id)tuples;
- (void)_insertContact:(id)contact intoDictionary:(id)dictionary complementDictionary:(id)complementDictionary;
- (void)acceptChangeHistoryEventVisitor:(id)visitor;
- (void)addAccount:(id)account;
- (void)addContact:(CNMutableContact *)contact toContainerWithIdentifier:(NSString *)identifier;
- (void)addContainer:(id)container toAccountWithIdentifier:(id)identifier;
- (void)addContainer:(id)container toContainerWithIdentifier:(id)identifier;
- (void)addDistinctObject:(id)object intoArray:(id)array;
- (void)addGroup:(CNMutableGroup *)group toContainerWithIdentifier:(NSString *)identifier;
- (void)addMember:(CNContact *)contact toGroup:(CNGroup *)group;
- (void)addSubgroup:(CNGroup *)subgroup toGroup:(CNGroup *)group;
- (void)deleteContact:(CNMutableContact *)contact;
- (void)deleteContainer:(id)container;
- (void)deleteGroup:(CNMutableGroup *)group;
- (void)encodeWithCoder:(id)coder;
- (void)linkContact:(id)contact toContact:(id)toContact;
- (void)moveContainer:(id)container toContainerWithIdentifier:(id)identifier;
- (void)preferLinkedContactForImage:(id)image inUnifiedContact:(id)contact;
- (void)preferLinkedContactForName:(id)name inUnifiedContact:(id)contact;
- (void)removeAccount:(id)account;
- (void)removeMember:(CNContact *)contact fromGroup:(CNGroup *)group;
- (void)removeSubgroup:(CNGroup *)subgroup fromGroup:(CNGroup *)group;
- (void)setChangeHistoryClientIdentifier:(id)identifier;
- (void)setContainer:(id)container asDefaultContainerOfAccountWithIdentifier:(id)identifier;
- (void)setLinkIdentifier:(id)identifier forContact:(id)contact;
- (void)setMeCardIdentifier:(id)identifier;
- (void)unlinkContact:(id)contact;
- (void)updateContact:(CNMutableContact *)contact;
- (void)updateGroup:(CNMutableGroup *)group;
- (void)withDifferentMeCard:(id)card;
- (void)withEachAddedContact:(id)contact;
- (void)withEachAddedGroup:(id)group;
- (void)withEachContactPreferredForImage:(id)image;
- (void)withEachContactPreferredForName:(id)name;
- (void)withEachDeletedContact:(id)contact;
- (void)withEachDeletedGroup:(id)group;
- (void)withEachLinkedContact:(id)contact;
- (void)withEachMemberAddedToGroup:(id)group;
- (void)withEachMemberRemovedFromGroup:(id)group;
- (void)withEachSubgroupAddedToGroup:(id)group;
- (void)withEachSubgroupRemovedFromGroup:(id)group;
- (void)withEachUnlinkedContact:(id)contact;
- (void)withEachUpdatedContact:(id)contact;
- (void)withEachUpdatedGroup:(id)group;
@end

@implementation CNSaveRequest

- (void)acceptChangeHistoryEventVisitor:(id)visitor
{
  visitorCopy = visitor;
  v7 = objc_alloc_init(CNChangeHistoryEventFactory);
  v5 = [[CNSaveRequestVisitationTask alloc] initWithSaveRequest:self visitor:visitorCopy factory:v7];

  v6 = [(CNSaveRequestVisitationTask *)v5 run:0];
}

- (void)withEachAddedContact:(id)contact
{
  contactCopy = contact;
  addedContactsByIdentifier = self->_addedContactsByIdentifier;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__CNSaveRequest_Visitation__withEachAddedContact___block_invoke;
  v7[3] = &unk_1E74162E8;
  v8 = contactCopy;
  v6 = contactCopy;
  [(NSMutableDictionary *)addedContactsByIdentifier _cn_each:v7];
}

void __50__CNSaveRequest_Visitation__withEachAddedContact___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = [v4 firstObject];
  v5 = *MEMORY[0x1E6996590];
  v6 = [v4 lastObject];

  v7 = (*(v5 + 16))(v5, v6);

  (*(*(a1 + 32) + 16))();
}

- (void)withEachUpdatedContact:(id)contact
{
  contactCopy = contact;
  updatedContacts = self->_updatedContacts;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__CNSaveRequest_Visitation__withEachUpdatedContact___block_invoke;
  v7[3] = &unk_1E7416310;
  v8 = contactCopy;
  v6 = contactCopy;
  [(NSMutableArray *)updatedContacts _cn_each:v7];
}

- (void)withEachDeletedContact:(id)contact
{
  contactCopy = contact;
  deletedContactsByIdentifier = self->_deletedContactsByIdentifier;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__CNSaveRequest_Visitation__withEachDeletedContact___block_invoke;
  v7[3] = &unk_1E7416338;
  v8 = contactCopy;
  v6 = contactCopy;
  [(NSMutableDictionary *)deletedContactsByIdentifier _cn_each:v7];
}

- (void)withEachAddedGroup:(id)group
{
  groupCopy = group;
  addedGroupsByIdentifier = self->_addedGroupsByIdentifier;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CNSaveRequest_Visitation__withEachAddedGroup___block_invoke;
  v7[3] = &unk_1E74162E8;
  v8 = groupCopy;
  v6 = groupCopy;
  [(NSMutableDictionary *)addedGroupsByIdentifier _cn_each:v7];
}

void __48__CNSaveRequest_Visitation__withEachAddedGroup___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = [v4 firstObject];
  v5 = *MEMORY[0x1E6996590];
  v6 = [v4 lastObject];

  v7 = (*(v5 + 16))(v5, v6);

  (*(*(a1 + 32) + 16))();
}

- (void)withEachUpdatedGroup:(id)group
{
  groupCopy = group;
  updatedGroups = self->_updatedGroups;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__CNSaveRequest_Visitation__withEachUpdatedGroup___block_invoke;
  v7[3] = &unk_1E7416360;
  v8 = groupCopy;
  v6 = groupCopy;
  [(NSMutableArray *)updatedGroups _cn_each:v7];
}

- (void)withEachDeletedGroup:(id)group
{
  groupCopy = group;
  deletedGroupsByIdentifier = self->_deletedGroupsByIdentifier;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__CNSaveRequest_Visitation__withEachDeletedGroup___block_invoke;
  v7[3] = &unk_1E7416338;
  v8 = groupCopy;
  v6 = groupCopy;
  [(NSMutableDictionary *)deletedGroupsByIdentifier _cn_each:v7];
}

- (void)withEachMemberAddedToGroup:(id)group
{
  groupCopy = group;
  addedMembersByGroupIdentifier = self->_addedMembersByGroupIdentifier;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__CNSaveRequest_Visitation__withEachMemberAddedToGroup___block_invoke;
  v7[3] = &unk_1E74163B0;
  v7[4] = self;
  v8 = groupCopy;
  v6 = groupCopy;
  [(NSMutableDictionary *)addedMembersByGroupIdentifier _cn_each:v7];
}

void __56__CNSaveRequest_Visitation__withEachMemberAddedToGroup___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 208);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__CNSaveRequest_Visitation__withEachMemberAddedToGroup___block_invoke_2;
  v10[3] = &unk_1E7416388;
  v8 = *(a1 + 40);
  v11 = v7;
  v12 = v8;
  v9 = v7;
  [v6 _cn_each:v10];
}

- (void)withEachMemberRemovedFromGroup:(id)group
{
  groupCopy = group;
  removedMembersByGroupIdentifier = self->_removedMembersByGroupIdentifier;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__CNSaveRequest_Visitation__withEachMemberRemovedFromGroup___block_invoke;
  v7[3] = &unk_1E74163B0;
  v7[4] = self;
  v8 = groupCopy;
  v6 = groupCopy;
  [(NSMutableDictionary *)removedMembersByGroupIdentifier _cn_each:v7];
}

void __60__CNSaveRequest_Visitation__withEachMemberRemovedFromGroup___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 208);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__CNSaveRequest_Visitation__withEachMemberRemovedFromGroup___block_invoke_2;
  v10[3] = &unk_1E7416388;
  v8 = *(a1 + 40);
  v11 = v7;
  v12 = v8;
  v9 = v7;
  [v6 _cn_each:v10];
}

- (void)withEachSubgroupAddedToGroup:(id)group
{
  groupCopy = group;
  addedSubgroupsByGroupIdentifier = self->_addedSubgroupsByGroupIdentifier;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__CNSaveRequest_Visitation__withEachSubgroupAddedToGroup___block_invoke;
  v7[3] = &unk_1E74163B0;
  v7[4] = self;
  v8 = groupCopy;
  v6 = groupCopy;
  [(NSMutableDictionary *)addedSubgroupsByGroupIdentifier _cn_each:v7];
}

void __58__CNSaveRequest_Visitation__withEachSubgroupAddedToGroup___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 208);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__CNSaveRequest_Visitation__withEachSubgroupAddedToGroup___block_invoke_2;
  v10[3] = &unk_1E74163D8;
  v8 = *(a1 + 40);
  v11 = v7;
  v12 = v8;
  v9 = v7;
  [v6 _cn_each:v10];
}

- (void)withEachSubgroupRemovedFromGroup:(id)group
{
  groupCopy = group;
  removedSubgroupsByGroupIdentifier = self->_removedSubgroupsByGroupIdentifier;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CNSaveRequest_Visitation__withEachSubgroupRemovedFromGroup___block_invoke;
  v7[3] = &unk_1E74163B0;
  v7[4] = self;
  v8 = groupCopy;
  v6 = groupCopy;
  [(NSMutableDictionary *)removedSubgroupsByGroupIdentifier _cn_each:v7];
}

void __62__CNSaveRequest_Visitation__withEachSubgroupRemovedFromGroup___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 208);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__CNSaveRequest_Visitation__withEachSubgroupRemovedFromGroup___block_invoke_2;
  v10[3] = &unk_1E74163D8;
  v8 = *(a1 + 40);
  v11 = v7;
  v12 = v8;
  v9 = v7;
  [v6 _cn_each:v10];
}

- (void)withEachLinkedContact:(id)contact
{
  contactCopy = contact;
  linkRequests = self->_linkRequests;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__CNSaveRequest_Visitation__withEachLinkedContact___block_invoke;
  v7[3] = &unk_1E7416400;
  v8 = contactCopy;
  v6 = contactCopy;
  [(NSMutableArray *)linkRequests _cn_each:v7];
}

void __51__CNSaveRequest_Visitation__withEachLinkedContact___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 first];
  v4 = [v3 second];

  (*(*(a1 + 32) + 16))();
}

- (void)withEachUnlinkedContact:(id)contact
{
  contactCopy = contact;
  unlinkRequests = self->_unlinkRequests;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__CNSaveRequest_Visitation__withEachUnlinkedContact___block_invoke;
  v7[3] = &unk_1E7416310;
  v8 = contactCopy;
  v6 = contactCopy;
  [(NSMutableArray *)unlinkRequests _cn_each:v7];
}

- (void)withEachContactPreferredForName:(id)name
{
  nameCopy = name;
  preferredForNameRequests = self->_preferredForNameRequests;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__CNSaveRequest_Visitation__withEachContactPreferredForName___block_invoke;
  v7[3] = &unk_1E7416400;
  v8 = nameCopy;
  v6 = nameCopy;
  [(NSMutableArray *)preferredForNameRequests _cn_each:v7];
}

void __61__CNSaveRequest_Visitation__withEachContactPreferredForName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 first];
  v4 = [v3 second];

  (*(*(a1 + 32) + 16))();
}

- (void)withEachContactPreferredForImage:(id)image
{
  imageCopy = image;
  preferredForImageRequests = self->_preferredForImageRequests;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CNSaveRequest_Visitation__withEachContactPreferredForImage___block_invoke;
  v7[3] = &unk_1E7416400;
  v8 = imageCopy;
  v6 = imageCopy;
  [(NSMutableArray *)preferredForImageRequests _cn_each:v7];
}

void __62__CNSaveRequest_Visitation__withEachContactPreferredForImage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 first];
  v4 = [v3 second];

  (*(*(a1 + 32) + 16))();
}

- (void)withDifferentMeCard:(id)card
{
  cardCopy = card;
  meCardIdentifier = self->_meCardIdentifier;
  if (meCardIdentifier)
  {
    v8 = cardCopy;
    null = [MEMORY[0x1E695DFB0] null];

    if (meCardIdentifier == null || [(NSString *)self->_meCardIdentifier isEqualToString:&stru_1F094DAB0])
    {
      v7 = 0;
    }

    else
    {
      v7 = self->_meCardIdentifier;
    }

    v8[2](v8, v7);
    cardCopy = v8;
  }
}

- (CNSaveRequest)init
{
  v57.receiver = self;
  v57.super_class = CNSaveRequest;
  v2 = [(CNSaveRequest *)&v57 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v5 = [uUIDString copy];
    v6 = *(v2 + 31);
    *(v2 + 31) = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = *(v2 + 1);
    *(v2 + 1) = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = *(v2 + 2);
    *(v2 + 2) = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = *(v2 + 3);
    *(v2 + 3) = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = *(v2 + 6);
    *(v2 + 6) = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = *(v2 + 7);
    *(v2 + 7) = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = *(v2 + 8);
    *(v2 + 8) = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v20 = *(v2 + 9);
    *(v2 + 9) = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v22 = *(v2 + 10);
    *(v2 + 10) = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v24 = *(v2 + 11);
    *(v2 + 11) = v23;

    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v26 = *(v2 + 12);
    *(v2 + 12) = v25;

    v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v28 = *(v2 + 13);
    *(v2 + 13) = v27;

    v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = *(v2 + 14);
    *(v2 + 14) = v29;

    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v32 = *(v2 + 15);
    *(v2 + 15) = v31;

    v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v34 = *(v2 + 16);
    *(v2 + 16) = v33;

    v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v36 = *(v2 + 17);
    *(v2 + 17) = v35;

    v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v38 = *(v2 + 18);
    *(v2 + 18) = v37;

    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v40 = *(v2 + 19);
    *(v2 + 19) = v39;

    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v42 = *(v2 + 20);
    *(v2 + 20) = v41;

    v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v44 = *(v2 + 21);
    *(v2 + 21) = v43;

    v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v46 = *(v2 + 22);
    *(v2 + 22) = v45;

    v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v48 = *(v2 + 23);
    *(v2 + 23) = v47;

    v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v50 = *(v2 + 24);
    *(v2 + 24) = v49;

    v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v52 = *(v2 + 25);
    *(v2 + 25) = v51;

    v53 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v54 = *(v2 + 26);
    *(v2 + 26) = v53;

    *(v2 + 217) = 257;
    v2[221] = 0;
    v55 = v2;
  }

  return v2;
}

- (CNSaveRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v140.receiver = self;
  v140.super_class = CNSaveRequest;
  v5 = [(CNSaveRequest *)&v140 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_saveRequestIdentifier"];
    v7 = [v6 copy];
    saveRequestIdentifier = v5->_saveRequestIdentifier;
    v5->_saveRequestIdentifier = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v9 setWithObjects:{v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"_addedContactsByIdentifier"];
    addedContactsByIdentifier = v5->_addedContactsByIdentifier;
    v5->_addedContactsByIdentifier = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"_updatedContacts"];
    updatedContacts = v5->_updatedContacts;
    v5->_updatedContacts = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [v22 setWithObjects:{v23, v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"_deletedContactsByIdentifier"];
    deletedContactsByIdentifier = v5->_deletedContactsByIdentifier;
    v5->_deletedContactsByIdentifier = v26;

    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = [v28 setWithObjects:{v29, v30, v31, v32, objc_opt_class(), 0}];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"_addedGroupsByIdentifier"];
    addedGroupsByIdentifier = v5->_addedGroupsByIdentifier;
    v5->_addedGroupsByIdentifier = v34;

    v36 = MEMORY[0x1E695DFD8];
    v37 = objc_opt_class();
    v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
    v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"_updatedGroups"];
    updatedGroups = v5->_updatedGroups;
    v5->_updatedGroups = v39;

    v41 = MEMORY[0x1E695DFD8];
    v42 = objc_opt_class();
    v43 = objc_opt_class();
    v44 = [v41 setWithObjects:{v42, v43, objc_opt_class(), 0}];
    v45 = [coderCopy decodeObjectOfClasses:v44 forKey:@"_deletedGroupsByIdentifier"];
    deletedGroupsByIdentifier = v5->_deletedGroupsByIdentifier;
    v5->_deletedGroupsByIdentifier = v45;

    v47 = MEMORY[0x1E695DFD8];
    v48 = objc_opt_class();
    v49 = objc_opt_class();
    v50 = [v47 setWithObjects:{v48, v49, objc_opt_class(), 0}];
    v51 = [coderCopy decodeObjectOfClasses:v50 forKey:@"_addedMembersByGroupIdentifier"];
    addedMembersByGroupIdentifier = v5->_addedMembersByGroupIdentifier;
    v5->_addedMembersByGroupIdentifier = v51;

    v53 = MEMORY[0x1E695DFD8];
    v54 = objc_opt_class();
    v55 = objc_opt_class();
    v56 = [v53 setWithObjects:{v54, v55, objc_opt_class(), 0}];
    v57 = [coderCopy decodeObjectOfClasses:v56 forKey:@"_removedMembersByGroupIdentifier"];
    removedMembersByGroupIdentifier = v5->_removedMembersByGroupIdentifier;
    v5->_removedMembersByGroupIdentifier = v57;

    v59 = MEMORY[0x1E695DFD8];
    v60 = objc_opt_class();
    v61 = objc_opt_class();
    v62 = [v59 setWithObjects:{v60, v61, objc_opt_class(), 0}];
    v63 = [coderCopy decodeObjectOfClasses:v62 forKey:@"_addedSubgroupsByGroupIdentifier"];
    addedSubgroupsByGroupIdentifier = v5->_addedSubgroupsByGroupIdentifier;
    v5->_addedSubgroupsByGroupIdentifier = v63;

    v65 = MEMORY[0x1E695DFD8];
    v66 = objc_opt_class();
    v67 = objc_opt_class();
    v68 = objc_opt_class();
    v69 = [v65 setWithObjects:{v66, v67, v68, objc_opt_class(), 0}];
    v70 = [coderCopy decodeObjectOfClasses:v69 forKey:@"_removedSubgroupsByGroupIdentifier"];
    removedSubgroupsByGroupIdentifier = v5->_removedSubgroupsByGroupIdentifier;
    v5->_removedSubgroupsByGroupIdentifier = v70;

    v72 = MEMORY[0x1E695DFD8];
    v73 = objc_opt_class();
    v74 = objc_opt_class();
    v75 = [v72 setWithObjects:{v73, v74, objc_opt_class(), 0}];
    v76 = [coderCopy decodeObjectOfClasses:v75 forKey:@"_addedContainersByIdentifier"];
    addedContainersByIdentifier = v5->_addedContainersByIdentifier;
    v5->_addedContainersByIdentifier = v76;

    v78 = MEMORY[0x1E695DFD8];
    v79 = objc_opt_class();
    v80 = [v78 setWithObjects:{v79, objc_opt_class(), 0}];
    v81 = [coderCopy decodeObjectOfClasses:v80 forKey:@"_updatedContainers"];
    updatedContainers = v5->_updatedContainers;
    v5->_updatedContainers = v81;

    v83 = MEMORY[0x1E695DFD8];
    v84 = objc_opt_class();
    v85 = objc_opt_class();
    v86 = [v83 setWithObjects:{v84, v85, objc_opt_class(), 0}];
    v87 = [coderCopy decodeObjectOfClasses:v86 forKey:@"_deletedContainersByIdentifier"];
    deletedContainersByIdentifier = v5->_deletedContainersByIdentifier;
    v5->_deletedContainersByIdentifier = v87;

    v89 = MEMORY[0x1E695DFD8];
    v90 = objc_opt_class();
    v91 = objc_opt_class();
    v92 = [v89 setWithObjects:{v90, v91, objc_opt_class(), 0}];
    v93 = [coderCopy decodeObjectOfClasses:v92 forKey:@"_movedContainersByIdentifier"];
    movedContainersByIdentifier = v5->_movedContainersByIdentifier;
    v5->_movedContainersByIdentifier = v93;

    v95 = MEMORY[0x1E695DFD8];
    v96 = objc_opt_class();
    v97 = objc_opt_class();
    v98 = objc_opt_class();
    v99 = objc_opt_class();
    v100 = [v95 setWithObjects:{v96, v97, v98, v99, objc_opt_class(), 0}];
    v101 = [coderCopy decodeObjectOfClasses:v100 forKey:@"_addedAccountContainersByIdentifier"];
    addedAccountContainersByIdentifier = v5->_addedAccountContainersByIdentifier;
    v5->_addedAccountContainersByIdentifier = v101;

    v103 = MEMORY[0x1E695DFD8];
    v104 = objc_opt_class();
    v105 = objc_opt_class();
    v106 = objc_opt_class();
    v107 = objc_opt_class();
    v108 = [v103 setWithObjects:{v104, v105, v106, v107, objc_opt_class(), 0}];
    v109 = [coderCopy decodeObjectOfClasses:v108 forKey:@"_defaultAccountContainersByIdentifier"];
    defaultAccountContainersByIdentifier = v5->_defaultAccountContainersByIdentifier;
    v5->_defaultAccountContainersByIdentifier = v109;

    v111 = MEMORY[0x1E695DFD8];
    v112 = objc_opt_class();
    v113 = [v111 setWithObjects:{v112, objc_opt_class(), 0}];
    v114 = [coderCopy decodeObjectOfClasses:v113 forKey:@"_contactChangeRequests"];
    contactChangeRequests = v5->_contactChangeRequests;
    v5->_contactChangeRequests = v114;

    v116 = MEMORY[0x1E695DFD8];
    v117 = objc_opt_class();
    v118 = [v116 setWithObjects:{v117, objc_opt_class(), 0}];
    v119 = [coderCopy decodeObjectOfClasses:v118 forKey:@"_addedAccounts"];
    addedAccounts = v5->_addedAccounts;
    v5->_addedAccounts = v119;

    v121 = MEMORY[0x1E695DFD8];
    v122 = objc_opt_class();
    v123 = [v121 setWithObjects:{v122, objc_opt_class(), 0}];
    v124 = [coderCopy decodeObjectOfClasses:v123 forKey:@"_removedAccounts"];
    removedAccounts = v5->_removedAccounts;
    v5->_removedAccounts = v124;

    v126 = MEMORY[0x1E695DFD8];
    v127 = objc_opt_class();
    v128 = objc_opt_class();
    v129 = [v126 setWithObjects:{v127, v128, objc_opt_class(), 0}];
    v130 = [coderCopy decodeObjectOfClasses:v129 forKey:@"_parentRecordsByIdentifier"];
    parentRecordsByIdentifier = v5->_parentRecordsByIdentifier;
    v5->_parentRecordsByIdentifier = v130;

    v5->_shouldRefetchContacts = [coderCopy decodeBoolForKey:@"_shouldRefetchContacts"];
    v132 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_clientLoggingIdentifier"];
    v133 = [v132 copy];
    clientLoggingIdentifier = v5->_clientLoggingIdentifier;
    v5->_clientLoggingIdentifier = v133;

    v135 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_transactionAuthor"];
    v136 = [v135 copy];
    transactionAuthor = v5->_transactionAuthor;
    v5->_transactionAuthor = v136;

    v5->_unsafeApplyChangesOnly = [coderCopy decodeBoolForKey:@"_unsafeApplyChangesOnly"];
    v5->_ignoresGuardianRestrictions = [coderCopy decodeBoolForKey:@"_ignoresGuardianRestrictions"];
    v5->_ignoresContactProviderRestrictions = [coderCopy decodeBoolForKey:@"_ignoresContactProviderRestrictions"];
    v5->_suppressChangeNotifications = [coderCopy decodeBoolForKey:@"_suppressChangeNotifications"];
    v5->_shouldFaultOnPossibleDataLoss = [coderCopy decodeBoolForKey:@"_shouldFaultOnPossibleDataLoss"];
    v138 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  saveRequestIdentifier = self->_saveRequestIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:saveRequestIdentifier forKey:@"_saveRequestIdentifier"];
  [coderCopy encodeObject:self->_addedContactsByIdentifier forKey:@"_addedContactsByIdentifier"];
  [coderCopy encodeObject:self->_updatedContacts forKey:@"_updatedContacts"];
  [coderCopy encodeObject:self->_deletedContactsByIdentifier forKey:@"_deletedContactsByIdentifier"];
  [coderCopy encodeObject:self->_addedGroupsByIdentifier forKey:@"_addedGroupsByIdentifier"];
  [coderCopy encodeObject:self->_updatedGroups forKey:@"_updatedGroups"];
  [coderCopy encodeObject:self->_deletedGroupsByIdentifier forKey:@"_deletedGroupsByIdentifier"];
  [coderCopy encodeObject:self->_addedMembersByGroupIdentifier forKey:@"_addedMembersByGroupIdentifier"];
  [coderCopy encodeObject:self->_removedMembersByGroupIdentifier forKey:@"_removedMembersByGroupIdentifier"];
  [coderCopy encodeObject:self->_addedSubgroupsByGroupIdentifier forKey:@"_addedSubgroupsByGroupIdentifier"];
  [coderCopy encodeObject:self->_removedSubgroupsByGroupIdentifier forKey:@"_removedSubgroupsByGroupIdentifier"];
  [coderCopy encodeObject:self->_addedContainersByIdentifier forKey:@"_addedContainersByIdentifier"];
  [coderCopy encodeObject:self->_updatedContainers forKey:@"_updatedContainers"];
  [coderCopy encodeObject:self->_deletedContainersByIdentifier forKey:@"_deletedContainersByIdentifier"];
  [coderCopy encodeObject:self->_movedContainersByIdentifier forKey:@"_movedContainersByIdentifier"];
  [coderCopy encodeObject:self->_addedAccountContainersByIdentifier forKey:@"_addedAccountContainersByIdentifier"];
  [coderCopy encodeObject:self->_defaultAccountContainersByIdentifier forKey:@"_defaultAccountContainersByIdentifier"];
  [coderCopy encodeObject:self->_parentRecordsByIdentifier forKey:@"_parentRecordsByIdentifier"];
  [coderCopy encodeObject:self->_contactChangeRequests forKey:@"_contactChangeRequests"];
  [coderCopy encodeObject:self->_addedAccounts forKey:@"_addedAccounts"];
  [coderCopy encodeObject:self->_removedAccounts forKey:@"_removedAccounts"];
  [coderCopy encodeObject:self->_clientLoggingIdentifier forKey:@"_clientLoggingIdentifier"];
  [coderCopy encodeObject:self->_transactionAuthor forKey:@"_transactionAuthor"];
  [coderCopy encodeBool:self->_shouldRefetchContacts forKey:@"_shouldRefetchContacts"];
  [coderCopy encodeBool:self->_ignoresGuardianRestrictions forKey:@"_ignoresGuardianRestrictions"];
  [coderCopy encodeBool:self->_ignoresContactProviderRestrictions forKey:@"_ignoresContactProviderRestrictions"];
  [coderCopy encodeBool:self->_suppressChangeNotifications forKey:@"_suppressChangeNotifications"];
  [coderCopy encodeBool:self->_shouldFaultOnPossibleDataLoss forKey:@"_shouldFaultOnPossibleDataLoss"];
  [coderCopy encodeBool:self->_unsafeApplyChangesOnly forKey:@"_unsafeApplyChangesOnly"];
}

- (void)_insertContact:(id)contact intoDictionary:(id)dictionary complementDictionary:(id)complementDictionary
{
  v26 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  dictionaryCopy = dictionary;
  complementDictionaryCopy = complementDictionary;
  if (([contactCopy isSuggested] & 1) == 0 && (objc_msgSend(contactCopy, "isImplicitAugmentation") & 1) == 0)
  {
    if ([contactCopy isUnified])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      linkedContacts = [contactCopy linkedContacts];
      v11 = [linkedContacts countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(linkedContacts);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            if (([v15 isSuggested] & 1) == 0 && (objc_msgSend(v15, "isImplicitAugmentation") & 1) == 0)
            {
              identifier = [v15 identifier];
              v17 = [complementDictionaryCopy objectForKey:identifier];

              identifier2 = [v15 identifier];
              if (v17)
              {
                [complementDictionaryCopy removeObjectForKey:identifier2];
              }

              else
              {
                [dictionaryCopy setObject:contactCopy forKey:identifier2];
              }
            }
          }

          v12 = [linkedContacts countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v12);
      }
    }

    else
    {
      identifier3 = [contactCopy identifier];
      v20 = [complementDictionaryCopy objectForKey:identifier3];

      linkedContacts = [contactCopy identifier];
      if (v20)
      {
        [complementDictionaryCopy removeObjectForKey:linkedContacts];
      }

      else
      {
        [dictionaryCopy setObject:contactCopy forKey:linkedContacts];
      }
    }
  }
}

- (void)addDistinctObject:(id)object intoArray:(id)array
{
  objectCopy = object;
  arrayCopy = array;
  v6 = [arrayCopy indexOfObjectIdenticalTo:objectCopy];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [arrayCopy removeObjectAtIndex:v6];
  }

  [arrayCopy addObject:objectCopy];
}

- (void)addContact:(CNMutableContact *)contact toContainerWithIdentifier:(NSString *)identifier
{
  v16[2] = *MEMORY[0x1E69E9840];
  v6 = contact;
  v7 = identifier;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_11 != -1)
  {
    [CNSaveRequest addContact:toContainerWithIdentifier:];
  }

  v8 = CNGuardOSLog_cn_once_object_0_11;
  if (!os_log_type_enabled(CNGuardOSLog_cn_once_object_0_11, OS_LOG_TYPE_FAULT))
  {
LABEL_6:
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    [CNSaveRequest addContact:v8 toContainerWithIdentifier:?];
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (CNGuardOSLog_cn_once_token_0_11 != -1)
    {
      [CNSaveRequest addContact:toContainerWithIdentifier:];
    }

    v9 = CNGuardOSLog_cn_once_object_0_11;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_11, OS_LOG_TYPE_FAULT))
    {
      [CNSaveRequest addContact:v9 toContainerWithIdentifier:?];
    }
  }

LABEL_12:
  addedContactsByIdentifier = self->_addedContactsByIdentifier;
  v16[0] = v6;
  v11 = (*(*MEMORY[0x1E6996588] + 16))();
  v16[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  identifier = [(CNContact *)v6 identifier];
  [(NSMutableDictionary *)addedContactsByIdentifier setObject:v12 forKey:identifier];

  deletedContactsByIdentifier = self->_deletedContactsByIdentifier;
  identifier2 = [(CNContact *)v6 identifier];
  [(NSMutableDictionary *)deletedContactsByIdentifier removeObjectForKey:identifier2];
}

- (void)updateContact:(CNMutableContact *)contact
{
  v4 = contact;
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (CNGuardOSLog_cn_once_token_0_11 != -1)
    {
      [CNSaveRequest addContact:toContainerWithIdentifier:];
    }

    v5 = CNGuardOSLog_cn_once_object_0_11;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_11, OS_LOG_TYPE_FAULT))
    {
      [CNSaveRequest addContact:v5 toContainerWithIdentifier:?];
    }
  }

  [(CNSaveRequest *)self addDistinctObject:v4 intoArray:self->_updatedContacts];
}

- (void)deleteContact:(CNMutableContact *)contact
{
  v4 = contact;
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (CNGuardOSLog_cn_once_token_0_11 != -1)
    {
      [CNSaveRequest addContact:toContainerWithIdentifier:];
    }

    v5 = CNGuardOSLog_cn_once_object_0_11;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_11, OS_LOG_TYPE_FAULT))
    {
      [CNSaveRequest addContact:v5 toContainerWithIdentifier:?];
    }
  }

  [(CNSaveRequest *)self _insertContact:v4 intoDictionary:self->_deletedContactsByIdentifier complementDictionary:self->_addedContactsByIdentifier];
}

- (void)setMeCardIdentifier:(id)identifier
{
  v6 = (*(*MEMORY[0x1E6996588] + 16))();
  v4 = [v6 copy];
  meCardIdentifier = self->_meCardIdentifier;
  self->_meCardIdentifier = v4;
}

- (void)addGroup:(CNMutableGroup *)group toContainerWithIdentifier:(NSString *)identifier
{
  v16[2] = *MEMORY[0x1E69E9840];
  v6 = group;
  v7 = identifier;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_11 != -1)
  {
    [CNSaveRequest addContact:toContainerWithIdentifier:];
  }

  v8 = CNGuardOSLog_cn_once_object_0_11;
  if (!os_log_type_enabled(CNGuardOSLog_cn_once_object_0_11, OS_LOG_TYPE_FAULT))
  {
LABEL_6:
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    [CNSaveRequest addGroup:v8 toContainerWithIdentifier:?];
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (CNGuardOSLog_cn_once_token_0_11 != -1)
    {
      [CNSaveRequest addContact:toContainerWithIdentifier:];
    }

    v9 = CNGuardOSLog_cn_once_object_0_11;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_11, OS_LOG_TYPE_FAULT))
    {
      [CNSaveRequest addContact:v9 toContainerWithIdentifier:?];
    }
  }

LABEL_12:
  v16[0] = v6;
  v10 = (*(*MEMORY[0x1E6996588] + 16))();
  v16[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];

  addedGroupsByIdentifier = self->_addedGroupsByIdentifier;
  identifier = [(CNMutableGroup *)v6 identifier];
  [(NSMutableDictionary *)addedGroupsByIdentifier setObject:v11 forKey:identifier];

  deletedGroupsByIdentifier = self->_deletedGroupsByIdentifier;
  identifier2 = [(CNMutableGroup *)v6 identifier];
  [(NSMutableDictionary *)deletedGroupsByIdentifier removeObjectForKey:identifier2];
}

- (void)updateGroup:(CNMutableGroup *)group
{
  v4 = group;
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (CNGuardOSLog_cn_once_token_0_11 != -1)
    {
      [CNSaveRequest addContact:toContainerWithIdentifier:];
    }

    v5 = CNGuardOSLog_cn_once_object_0_11;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_11, OS_LOG_TYPE_FAULT))
    {
      [CNSaveRequest addGroup:v5 toContainerWithIdentifier:?];
    }
  }

  [(CNSaveRequest *)self addDistinctObject:v4 intoArray:self->_updatedGroups];
}

- (void)deleteGroup:(CNMutableGroup *)group
{
  v4 = group;
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (CNGuardOSLog_cn_once_token_0_11 != -1)
    {
      [CNSaveRequest addContact:toContainerWithIdentifier:];
    }

    v5 = CNGuardOSLog_cn_once_object_0_11;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_11, OS_LOG_TYPE_FAULT))
    {
      [CNSaveRequest addGroup:v5 toContainerWithIdentifier:?];
    }
  }

  addedGroupsByIdentifier = self->_addedGroupsByIdentifier;
  identifier = [(CNMutableGroup *)v4 identifier];
  v8 = [(NSMutableDictionary *)addedGroupsByIdentifier objectForKey:identifier];

  if (v8)
  {
    v9 = self->_addedGroupsByIdentifier;
    identifier2 = [(CNMutableGroup *)v4 identifier];
    [(NSMutableDictionary *)v9 removeObjectForKey:identifier2];
  }

  else
  {
    deletedGroupsByIdentifier = self->_deletedGroupsByIdentifier;
    identifier2 = [(CNMutableGroup *)v4 identifier];
    [(NSMutableDictionary *)deletedGroupsByIdentifier setObject:v4 forKey:identifier2];
  }
}

- (void)addMember:(CNContact *)contact toGroup:(CNGroup *)group
{
  v6 = contact;
  v7 = group;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_11 != -1)
  {
    [CNSaveRequest addContact:toContainerWithIdentifier:];
  }

  v8 = CNGuardOSLog_cn_once_object_0_11;
  if (!os_log_type_enabled(CNGuardOSLog_cn_once_object_0_11, OS_LOG_TYPE_FAULT))
  {
LABEL_6:
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [CNSaveRequest addMember:v8 toGroup:?];
    if (v7)
    {
LABEL_7:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_12;
      }
    }
  }

  if (CNGuardOSLog_cn_once_token_0_11 != -1)
  {
    [CNSaveRequest addContact:toContainerWithIdentifier:];
  }

  v9 = CNGuardOSLog_cn_once_object_0_11;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_11, OS_LOG_TYPE_FAULT))
  {
    [CNSaveRequest addMember:v9 toGroup:?];
  }

LABEL_12:
  v10 = [(CNContact *)v6 copy];

  addedMembersByGroupIdentifier = self->_addedMembersByGroupIdentifier;
  identifier = [(CNGroup *)v7 identifier];
  dictionary = [(NSMutableDictionary *)addedMembersByGroupIdentifier objectForKey:identifier];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    parentRecordsByIdentifier = self->_parentRecordsByIdentifier;
    identifier2 = [(CNGroup *)v7 identifier];
    [(NSMutableDictionary *)parentRecordsByIdentifier setObject:v7 forKey:identifier2];

    v16 = self->_addedMembersByGroupIdentifier;
    identifier3 = [(CNGroup *)v7 identifier];
    [(NSMutableDictionary *)v16 setObject:dictionary forKey:identifier3];
  }

  identifier4 = [v10 identifier];
  [dictionary setObject:v10 forKey:identifier4];

  removedMembersByGroupIdentifier = self->_removedMembersByGroupIdentifier;
  identifier5 = [(CNGroup *)v7 identifier];
  v21 = [(NSMutableDictionary *)removedMembersByGroupIdentifier objectForKey:identifier5];

  identifier6 = [v10 identifier];
  [v21 removeObjectForKey:identifier6];
}

- (void)removeMember:(CNContact *)contact fromGroup:(CNGroup *)group
{
  v6 = contact;
  v7 = group;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_11 != -1)
  {
    [CNSaveRequest addContact:toContainerWithIdentifier:];
  }

  v8 = CNGuardOSLog_cn_once_object_0_11;
  if (!os_log_type_enabled(CNGuardOSLog_cn_once_object_0_11, OS_LOG_TYPE_FAULT))
  {
LABEL_6:
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [CNSaveRequest addMember:v8 toGroup:?];
    if (v7)
    {
LABEL_7:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_12;
      }
    }
  }

  if (CNGuardOSLog_cn_once_token_0_11 != -1)
  {
    [CNSaveRequest addContact:toContainerWithIdentifier:];
  }

  v9 = CNGuardOSLog_cn_once_object_0_11;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_11, OS_LOG_TYPE_FAULT))
  {
    [CNSaveRequest addMember:v9 toGroup:?];
  }

LABEL_12:
  v10 = [(CNContact *)v6 copy];

  removedMembersByGroupIdentifier = self->_removedMembersByGroupIdentifier;
  identifier = [(CNGroup *)v7 identifier];
  dictionary = [(NSMutableDictionary *)removedMembersByGroupIdentifier objectForKey:identifier];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    parentRecordsByIdentifier = self->_parentRecordsByIdentifier;
    identifier2 = [(CNGroup *)v7 identifier];
    [(NSMutableDictionary *)parentRecordsByIdentifier setObject:v7 forKey:identifier2];

    v16 = self->_removedMembersByGroupIdentifier;
    identifier3 = [(CNGroup *)v7 identifier];
    [(NSMutableDictionary *)v16 setObject:dictionary forKey:identifier3];
  }

  identifier4 = [v10 identifier];
  [dictionary setObject:v10 forKey:identifier4];

  addedMembersByGroupIdentifier = self->_addedMembersByGroupIdentifier;
  identifier5 = [(CNGroup *)v7 identifier];
  v21 = [(NSMutableDictionary *)addedMembersByGroupIdentifier objectForKey:identifier5];

  identifier6 = [v10 identifier];
  [v21 removeObjectForKey:identifier6];
}

- (void)addSubgroup:(CNGroup *)subgroup toGroup:(CNGroup *)group
{
  v6 = subgroup;
  v7 = group;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_11 != -1)
  {
    [CNSaveRequest addContact:toContainerWithIdentifier:];
  }

  v8 = CNGuardOSLog_cn_once_object_0_11;
  if (!os_log_type_enabled(CNGuardOSLog_cn_once_object_0_11, OS_LOG_TYPE_FAULT))
  {
LABEL_6:
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [CNSaveRequest addSubgroup:v8 toGroup:?];
    if (v7)
    {
LABEL_7:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_12;
      }
    }
  }

  if (CNGuardOSLog_cn_once_token_0_11 != -1)
  {
    [CNSaveRequest addContact:toContainerWithIdentifier:];
  }

  v9 = CNGuardOSLog_cn_once_object_0_11;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_11, OS_LOG_TYPE_FAULT))
  {
    [CNSaveRequest addMember:v9 toGroup:?];
  }

LABEL_12:
  v10 = [(CNGroup *)v6 copy];

  addedSubgroupsByGroupIdentifier = self->_addedSubgroupsByGroupIdentifier;
  identifier = [(CNGroup *)v7 identifier];
  dictionary = [(NSMutableDictionary *)addedSubgroupsByGroupIdentifier objectForKey:identifier];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    parentRecordsByIdentifier = self->_parentRecordsByIdentifier;
    identifier2 = [(CNGroup *)v7 identifier];
    [(NSMutableDictionary *)parentRecordsByIdentifier setObject:v7 forKey:identifier2];

    v16 = self->_addedSubgroupsByGroupIdentifier;
    identifier3 = [(CNGroup *)v7 identifier];
    [(NSMutableDictionary *)v16 setObject:dictionary forKey:identifier3];
  }

  identifier4 = [v10 identifier];
  [dictionary setObject:v10 forKey:identifier4];

  removedSubgroupsByGroupIdentifier = self->_removedSubgroupsByGroupIdentifier;
  identifier5 = [(CNGroup *)v7 identifier];
  v21 = [(NSMutableDictionary *)removedSubgroupsByGroupIdentifier objectForKey:identifier5];

  identifier6 = [v10 identifier];
  [v21 removeObjectForKey:identifier6];
}

- (void)removeSubgroup:(CNGroup *)subgroup fromGroup:(CNGroup *)group
{
  v6 = subgroup;
  v7 = group;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_11 != -1)
  {
    [CNSaveRequest addContact:toContainerWithIdentifier:];
  }

  v8 = CNGuardOSLog_cn_once_object_0_11;
  if (!os_log_type_enabled(CNGuardOSLog_cn_once_object_0_11, OS_LOG_TYPE_FAULT))
  {
LABEL_6:
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [CNSaveRequest addSubgroup:v8 toGroup:?];
    if (v7)
    {
LABEL_7:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_12;
      }
    }
  }

  if (CNGuardOSLog_cn_once_token_0_11 != -1)
  {
    [CNSaveRequest addContact:toContainerWithIdentifier:];
  }

  v9 = CNGuardOSLog_cn_once_object_0_11;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_11, OS_LOG_TYPE_FAULT))
  {
    [CNSaveRequest addMember:v9 toGroup:?];
  }

LABEL_12:
  v10 = [(CNGroup *)v6 copy];

  removedSubgroupsByGroupIdentifier = self->_removedSubgroupsByGroupIdentifier;
  identifier = [(CNGroup *)v7 identifier];
  dictionary = [(NSMutableDictionary *)removedSubgroupsByGroupIdentifier objectForKey:identifier];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    parentRecordsByIdentifier = self->_parentRecordsByIdentifier;
    identifier2 = [(CNGroup *)v7 identifier];
    [(NSMutableDictionary *)parentRecordsByIdentifier setObject:v7 forKey:identifier2];

    v16 = self->_removedSubgroupsByGroupIdentifier;
    identifier3 = [(CNGroup *)v7 identifier];
    [(NSMutableDictionary *)v16 setObject:dictionary forKey:identifier3];
  }

  identifier4 = [v10 identifier];
  [dictionary setObject:v10 forKey:identifier4];

  addedSubgroupsByGroupIdentifier = self->_addedSubgroupsByGroupIdentifier;
  identifier5 = [(CNGroup *)v7 identifier];
  v21 = [(NSMutableDictionary *)addedSubgroupsByGroupIdentifier objectForKey:identifier5];

  identifier6 = [v10 identifier];
  [v21 removeObjectForKey:identifier6];
}

- (id)flattenedDictionaryForDictionaryOfTuples:(id)tuples
{
  v3 = MEMORY[0x1E695DF90];
  tuplesCopy = tuples;
  dictionary = [v3 dictionary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__CNSaveRequest_flattenedDictionaryForDictionaryOfTuples___block_invoke;
  v8[3] = &unk_1E7416290;
  v6 = dictionary;
  v9 = v6;
  [tuplesCopy enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __58__CNSaveRequest_flattenedDictionaryForDictionaryOfTuples___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 objectAtIndex:1];
  v5 = [*(a1 + 32) objectForKey:v4];
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    [*(a1 + 32) setObject:v5 forKey:v4];
  }

  v6 = [v7 objectAtIndex:0];
  [v5 addObject:v6];
}

- (id)_dictionaryOfArraysFromDictionaryOfDictionaries:(id)dictionaries
{
  v3 = MEMORY[0x1E695DF90];
  dictionariesCopy = dictionaries;
  dictionary = [v3 dictionary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__CNSaveRequest__dictionaryOfArraysFromDictionaryOfDictionaries___block_invoke;
  v8[3] = &unk_1E7416290;
  v6 = dictionary;
  v9 = v6;
  [dictionariesCopy enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __65__CNSaveRequest__dictionaryOfArraysFromDictionaryOfDictionaries___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 allValues];
  [v4 setObject:v6 forKey:v5];
}

- (NSArray)updatedContacts
{
  v2 = [(NSMutableArray *)self->_updatedContacts copy];

  return v2;
}

- (NSArray)deletedContacts
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __32__CNSaveRequest_deletedContacts__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[4];
  if (!v3)
  {
    v4 = [v2 distinctDeletedContacts];
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = v4;

    v3 = *(*(a1 + 32) + 32);
  }

  return v3;
}

- (id)distinctDeletedContacts
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__38;
  v11 = __Block_byref_object_dispose__38;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  allValues = [(NSMutableDictionary *)self->_deletedContactsByIdentifier allValues];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__CNSaveRequest_distinctDeletedContacts__block_invoke;
  v6[3] = &unk_1E7417888;
  v6[4] = self;
  v6[5] = &v7;
  [allValues _cn_each:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSArray)updatedGroups
{
  v2 = [(NSMutableArray *)self->_updatedGroups copy];

  return v2;
}

- (NSArray)updatedContainers
{
  v2 = [(NSMutableArray *)self->_updatedContainers copy];

  return v2;
}

- (BOOL)hasConflictingSaveOperations
{
  contactChangeRequests = [(CNSaveRequest *)self contactChangeRequests];
  if ([contactChangeRequests count])
  {
    addedContactsByContainerIdentifier = [(CNSaveRequest *)self addedContactsByContainerIdentifier];
    v5 = [addedContactsByContainerIdentifier count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addContainer:(id)container toContainerWithIdentifier:(id)identifier
{
  v16[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = [container copy];
  addedContainersByIdentifier = self->_addedContainersByIdentifier;
  v16[0] = v7;
  v9 = (*(*MEMORY[0x1E6996588] + 16))();

  v16[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  identifier = [v7 identifier];
  [(NSMutableDictionary *)addedContainersByIdentifier setObject:v10 forKey:identifier];

  deletedContainersByIdentifier = self->_deletedContainersByIdentifier;
  identifier2 = [v7 identifier];
  [(NSMutableDictionary *)deletedContainersByIdentifier removeObjectForKey:identifier2];

  addedAccountContainersByIdentifier = self->_addedAccountContainersByIdentifier;
  identifier3 = [v7 identifier];
  [(NSMutableDictionary *)addedAccountContainersByIdentifier removeObjectForKey:identifier3];
}

- (void)addContainer:(id)container toAccountWithIdentifier:(id)identifier
{
  v17[2] = *MEMORY[0x1E69E9840];
  addedAccountContainersByIdentifier = self->_addedAccountContainersByIdentifier;
  v17[0] = container;
  v7 = *MEMORY[0x1E6996588];
  v8 = *(*MEMORY[0x1E6996588] + 16);
  containerCopy = container;
  v10 = v8(v7, identifier);
  v17[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  identifier = [containerCopy identifier];
  [(NSMutableDictionary *)addedAccountContainersByIdentifier setObject:v11 forKey:identifier];

  deletedContainersByIdentifier = self->_deletedContainersByIdentifier;
  identifier2 = [containerCopy identifier];
  [(NSMutableDictionary *)deletedContainersByIdentifier removeObjectForKey:identifier2];

  addedContainersByIdentifier = self->_addedContainersByIdentifier;
  identifier3 = [containerCopy identifier];
  [(NSMutableDictionary *)addedContainersByIdentifier removeObjectForKey:identifier3];
}

- (void)setContainer:(id)container asDefaultContainerOfAccountWithIdentifier:(id)identifier
{
  v12[2] = *MEMORY[0x1E69E9840];
  defaultAccountContainersByIdentifier = self->_defaultAccountContainersByIdentifier;
  v12[0] = container;
  v6 = *MEMORY[0x1E6996588];
  v7 = *(*MEMORY[0x1E6996588] + 16);
  containerCopy = container;
  v9 = v7(v6, identifier);
  v12[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  identifier = [containerCopy identifier];
  [(NSMutableDictionary *)defaultAccountContainersByIdentifier setObject:v10 forKey:identifier];
}

- (void)moveContainer:(id)container toContainerWithIdentifier:(id)identifier
{
  v12[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = [container copy];
  movedContainersByIdentifier = self->_movedContainersByIdentifier;
  v12[0] = v7;
  v9 = (*(*MEMORY[0x1E6996588] + 16))();

  v12[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  identifier = [v7 identifier];
  [(NSMutableDictionary *)movedContainersByIdentifier setObject:v10 forKey:identifier];
}

- (void)deleteContainer:(id)container
{
  v8 = [container copy];
  deletedContainersByIdentifier = self->_deletedContainersByIdentifier;
  identifier = [v8 identifier];
  [(NSMutableDictionary *)deletedContainersByIdentifier setObject:v8 forKey:identifier];

  addedContainersByIdentifier = self->_addedContainersByIdentifier;
  identifier2 = [v8 identifier];
  [(NSMutableDictionary *)addedContainersByIdentifier removeObjectForKey:identifier2];
}

- (NSArray)contactChangeRequests
{
  v2 = [(NSMutableArray *)self->_contactChangeRequests copy];

  return v2;
}

- (void)linkContact:(id)contact toContact:(id)toContact
{
  v17[2] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  toContactCopy = toContact;
  v8 = toContactCopy;
  if (contactCopy != toContactCopy && contactCopy && toContactCopy)
  {
    if ([contactCopy isUnified])
    {
      linkedContacts = [contactCopy linkedContacts];
      firstObject = [linkedContacts firstObject];

      contactCopy = firstObject;
    }

    if ([v8 isUnified])
    {
      linkedContacts2 = [v8 linkedContacts];
      firstObject2 = [linkedContacts2 firstObject];

      v8 = firstObject2;
    }

    v17[0] = contactCopy;
    v17[1] = v8;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v14 = [CNContactChangeRequest contactChangeRequestWithKind:0 contacts:v13 linkIdentifier:0];

    [(NSMutableArray *)self->_contactChangeRequests addObject:v14];
    linkRequests = self->_linkRequests;
    v16 = [MEMORY[0x1E69967A8] pairWithFirst:contactCopy second:v8];
    [(NSMutableArray *)linkRequests addObject:v16];
  }
}

- (void)unlinkContact:(id)contact
{
  v23[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v5 = contactCopy;
  if (contactCopy)
  {
    v23[0] = contactCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v16 = v5;
    if ([v5 isUnified])
    {
      v7 = [v5 linkedContactsFromStoreWithIdentifier:0];

      v6 = v7;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v21 = *(*(&v17 + 1) + 8 * v12);
          v13 = v21;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
          v15 = [CNContactChangeRequest contactChangeRequestWithKind:1 contacts:v14 linkIdentifier:0];

          [(NSMutableArray *)self->_contactChangeRequests addObject:v15];
          [(NSMutableArray *)self->_unlinkRequests addObject:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    v5 = v16;
  }
}

- (void)preferLinkedContactForName:(id)name inUnifiedContact:(id)contact
{
  v14[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  contactCopy = contact;
  if (nameCopy)
  {
    v14[0] = nameCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    if (contactCopy && [contactCopy isUnified])
    {
      v9 = [contactCopy linkedContactsFromStoreWithIdentifier:0];
      v10 = [v8 arrayByAddingObjectsFromArray:v9];

      v8 = v10;
    }

    v11 = [CNContactChangeRequest contactChangeRequestWithKind:2 contacts:v8 linkIdentifier:0];
    [(NSMutableArray *)self->_contactChangeRequests addObject:v11];
    preferredForNameRequests = self->_preferredForNameRequests;
    v13 = [MEMORY[0x1E69967A8] pairWithFirst:nameCopy second:contactCopy];
    [(NSMutableArray *)preferredForNameRequests addObject:v13];
  }
}

- (void)preferLinkedContactForImage:(id)image inUnifiedContact:(id)contact
{
  v14[1] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  contactCopy = contact;
  if (imageCopy)
  {
    v14[0] = imageCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    if (contactCopy && [contactCopy isUnified])
    {
      v9 = [contactCopy linkedContactsFromStoreWithIdentifier:0];
      v10 = [v8 arrayByAddingObjectsFromArray:v9];

      v8 = v10;
    }

    v11 = [CNContactChangeRequest contactChangeRequestWithKind:3 contacts:v8 linkIdentifier:0];
    [(NSMutableArray *)self->_contactChangeRequests addObject:v11];
    preferredForImageRequests = self->_preferredForImageRequests;
    v13 = [MEMORY[0x1E69967A8] pairWithFirst:imageCopy second:contactCopy];
    [(NSMutableArray *)preferredForImageRequests addObject:v13];
  }
}

- (void)addAccount:(id)account
{
  addedAccounts = self->_addedAccounts;
  accountCopy = account;
  [(NSMutableArray *)addedAccounts addObject:accountCopy];
  [(NSMutableArray *)self->_removedAccounts removeObject:accountCopy];
}

- (void)removeAccount:(id)account
{
  removedAccounts = self->_removedAccounts;
  accountCopy = account;
  [(NSMutableArray *)removedAccounts addObject:accountCopy];
  [(NSMutableArray *)self->_addedAccounts removeObject:accountCopy];
}

- (NSArray)allGroups
{
  array = [MEMORY[0x1E695DF70] array];
  [array addObjectsFromArray:self->_updatedGroups];
  allValues = [(NSMutableDictionary *)self->_deletedGroupsByIdentifier allValues];
  v5 = [allValues sortedArrayUsingComparator:&__block_literal_global_150];
  [array addObjectsFromArray:v5];

  array2 = [MEMORY[0x1E695DF70] array];
  addedGroupsByIdentifier = self->_addedGroupsByIdentifier;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __26__CNSaveRequest_allGroups__block_invoke_2;
  v11[3] = &unk_1E7416290;
  v12 = array2;
  v8 = array2;
  [(NSMutableDictionary *)addedGroupsByIdentifier enumerateKeysAndObjectsUsingBlock:v11];
  v9 = [v8 sortedArrayUsingComparator:&__block_literal_global_150];
  [array addObjectsFromArray:v9];

  return array;
}

uint64_t __26__CNSaveRequest_allGroups__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [v5 compare:v6];
  return v7;
}

void __26__CNSaveRequest_allGroups__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 objectAtIndexedSubscript:0];
  [v3 addObject:v4];
}

- (NSArray)allGroupIdentifiers
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = MEMORY[0x1E695DFB8];
  v5 = [(NSMutableArray *)self->_updatedGroups _cn_map:&__block_literal_global_108_0];
  v6 = [v4 orderedSetWithArray:v5];
  array2 = [v6 array];
  [array addObjectsFromArray:array2];

  allKeys = [(NSMutableDictionary *)self->_deletedGroupsByIdentifier allKeys];
  [array addObjectsFromArray:allKeys];

  allKeys2 = [(NSMutableDictionary *)self->_addedGroupsByIdentifier allKeys];
  [array addObjectsFromArray:allKeys2];

  allKeys3 = [(NSMutableDictionary *)self->_addedSubgroupsByGroupIdentifier allKeys];
  [array addObjectsFromArray:allKeys3];

  allKeys4 = [(NSMutableDictionary *)self->_removedSubgroupsByGroupIdentifier allKeys];
  [array addObjectsFromArray:allKeys4];

  addedSubgroupsByGroupIdentifier = self->_addedSubgroupsByGroupIdentifier;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __36__CNSaveRequest_allGroupIdentifiers__block_invoke_2;
  v26[3] = &unk_1E7416290;
  v13 = array;
  v27 = v13;
  [(NSMutableDictionary *)addedSubgroupsByGroupIdentifier enumerateKeysAndObjectsUsingBlock:v26];
  removedSubgroupsByGroupIdentifier = self->_removedSubgroupsByGroupIdentifier;
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __36__CNSaveRequest_allGroupIdentifiers__block_invoke_3;
  v24 = &unk_1E7416290;
  v15 = v13;
  v25 = v15;
  [(NSMutableDictionary *)removedSubgroupsByGroupIdentifier enumerateKeysAndObjectsUsingBlock:&v21];
  v16 = [(NSMutableDictionary *)self->_addedMembersByGroupIdentifier allKeys:v21];
  [(NSArray *)v15 addObjectsFromArray:v16];

  allKeys5 = [(NSMutableDictionary *)self->_removedMembersByGroupIdentifier allKeys];
  [(NSArray *)v15 addObjectsFromArray:allKeys5];

  v18 = v25;
  v19 = v15;

  return v15;
}

void __36__CNSaveRequest_allGroupIdentifiers__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allKeys];
  [v3 addObjectsFromArray:v4];
}

void __36__CNSaveRequest_allGroupIdentifiers__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allKeys];
  [v3 addObjectsFromArray:v4];
}

- (NSArray)allContacts
{
  v26 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  [array addObjectsFromArray:self->_updatedContacts];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_contactChangeRequests;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v4);
        }

        contacts = [*(*(&v21 + 1) + 8 * i) contacts];
        [array addObjectsFromArray:contacts];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  deletedContacts = [(CNSaveRequest *)self deletedContacts];
  v10 = [deletedContacts sortedArrayUsingComparator:&__block_literal_global_111];
  [array addObjectsFromArray:v10];

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__38;
  v19 = __Block_byref_object_dispose__38;
  array2 = [MEMORY[0x1E695DF70] array];
  addedContactsByIdentifier = self->_addedContactsByIdentifier;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __28__CNSaveRequest_allContacts__block_invoke_2;
  v14[3] = &unk_1E74178D0;
  v14[4] = &v15;
  [(NSMutableDictionary *)addedContactsByIdentifier enumerateKeysAndObjectsUsingBlock:v14];
  v12 = [v16[5] sortedArrayUsingComparator:&__block_literal_global_111];
  [array addObjectsFromArray:v12];

  _Block_object_dispose(&v15, 8);

  return array;
}

uint64_t __28__CNSaveRequest_allContacts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [v5 compare:v6];
  return v7;
}

void __28__CNSaveRequest_allContacts__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [a3 objectAtIndexedSubscript:0];
  [v3 addObject:v4];
}

- (NSArray)allContactIdentifiers
{
  v42 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v4 = MEMORY[0x1E695DFB8];
  v5 = [(NSMutableArray *)self->_updatedContacts _cn_map:&__block_literal_global_115_0];
  v6 = [v4 orderedSetWithArray:v5];
  array2 = [v6 array];
  [array addObjectsFromArray:array2];

  allKeys = [(NSMutableDictionary *)self->_deletedContactsByIdentifier allKeys];
  [array addObjectsFromArray:allKeys];

  allKeys2 = [(NSMutableDictionary *)self->_addedContactsByIdentifier allKeys];
  [array addObjectsFromArray:allKeys2];

  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    [array addObject:self->_meCardIdentifier];
  }

  addedMembersByGroupIdentifier = self->_addedMembersByGroupIdentifier;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __38__CNSaveRequest_allContactIdentifiers__block_invoke_2;
  v38[3] = &unk_1E7416290;
  v11 = array;
  v39 = v11;
  [(NSMutableDictionary *)addedMembersByGroupIdentifier enumerateKeysAndObjectsUsingBlock:v38];
  removedMembersByGroupIdentifier = self->_removedMembersByGroupIdentifier;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __38__CNSaveRequest_allContactIdentifiers__block_invoke_3;
  v36[3] = &unk_1E7416290;
  v13 = v11;
  v37 = v13;
  [(NSMutableDictionary *)removedMembersByGroupIdentifier enumerateKeysAndObjectsUsingBlock:v36];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = self->_contactChangeRequests;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v33;
    do
    {
      v18 = 0;
      do
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v32 + 1) + 8 * v18);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        contactIdentifiers = [v19 contactIdentifiers];
        v21 = [contactIdentifiers countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v29;
          do
          {
            v24 = 0;
            do
            {
              if (*v29 != v23)
              {
                objc_enumerationMutation(contactIdentifiers);
              }

              [(NSArray *)v13 addObject:*(*(&v28 + 1) + 8 * v24++)];
            }

            while (v22 != v24);
            v22 = [contactIdentifiers countByEnumeratingWithState:&v28 objects:v40 count:16];
          }

          while (v22);
        }

        ++v18;
      }

      while (v18 != v16);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v16);
  }

  v25 = v37;
  v26 = v13;

  return v13;
}

void __38__CNSaveRequest_allContactIdentifiers__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allKeys];
  [v3 addObjectsFromArray:v4];
}

void __38__CNSaveRequest_allContactIdentifiers__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allKeys];
  [v3 addObjectsFromArray:v4];
}

- (NSArray)allContainers
{
  array = [MEMORY[0x1E695DF70] array];
  [array addObjectsFromArray:self->_updatedContainers];
  array2 = [MEMORY[0x1E695DF70] array];
  addedAccountContainersByIdentifier = self->_addedAccountContainersByIdentifier;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __30__CNSaveRequest_allContainers__block_invoke_2;
  v17[3] = &unk_1E7416290;
  v6 = array2;
  v18 = v6;
  [(NSMutableDictionary *)addedAccountContainersByIdentifier enumerateKeysAndObjectsUsingBlock:v17];
  defaultAccountContainersByIdentifier = self->_defaultAccountContainersByIdentifier;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __30__CNSaveRequest_allContainers__block_invoke_3;
  v15 = &unk_1E7416290;
  v16 = v6;
  v8 = v6;
  [(NSMutableDictionary *)defaultAccountContainersByIdentifier enumerateKeysAndObjectsUsingBlock:&v12];
  v9 = [v8 sortedArrayUsingComparator:{&__block_literal_global_118_0, v12, v13, v14, v15}];
  [array addObjectsFromArray:v9];

  v10 = [array copy];

  return v10;
}

uint64_t __30__CNSaveRequest_allContainers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [v5 compare:v6];
  return v7;
}

void __30__CNSaveRequest_allContainers__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 objectAtIndexedSubscript:0];
  [v3 addObject:v4];
}

void __30__CNSaveRequest_allContainers__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 objectAtIndexedSubscript:0];
  [v3 addObject:v4];
}

- (id)allContainerIdentifiers:(BOOL *)identifiers
{
  v32[4] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  allKeys = [(NSMutableDictionary *)self->_addedContainersByIdentifier allKeys];
  [array addObjectsFromArray:allKeys];

  v7 = MEMORY[0x1E695DFB8];
  v8 = [(NSMutableArray *)self->_updatedContainers _cn_map:&__block_literal_global_121];
  v9 = [v7 orderedSetWithArray:v8];
  array2 = [v9 array];
  [array addObjectsFromArray:array2];

  allKeys2 = [(NSMutableDictionary *)self->_deletedContainersByIdentifier allKeys];
  [array addObjectsFromArray:allKeys2];

  allKeys3 = [(NSMutableDictionary *)self->_movedContainersByIdentifier allKeys];
  [array addObjectsFromArray:allKeys3];

  allKeys4 = [(NSMutableDictionary *)self->_addedAccountContainersByIdentifier allKeys];
  [array addObjectsFromArray:allKeys4];

  allKeys5 = [(NSMutableDictionary *)self->_defaultAccountContainersByIdentifier allKeys];
  [array addObjectsFromArray:allKeys5];

  movedContainersByIdentifier = self->_movedContainersByIdentifier;
  v32[0] = self->_addedContainersByIdentifier;
  v32[1] = movedContainersByIdentifier;
  addedGroupsByIdentifier = self->_addedGroupsByIdentifier;
  v32[2] = self->_addedContactsByIdentifier;
  v32[3] = addedGroupsByIdentifier;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = v30 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v27 + 1) + 8 * i);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __41__CNSaveRequest_allContainerIdentifiers___block_invoke_2;
        v24[3] = &unk_1E7415CF8;
        v25 = array;
        identifiersCopy = identifiers;
        [v22 enumerateKeysAndObjectsUsingBlock:v24];
      }

      v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v19);
  }

  return array;
}

void __41__CNSaveRequest_allContainerIdentifiers___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 objectAtIndex:1];
  v4 = [MEMORY[0x1E695DFB0] null];
  v5 = [v7 isEqual:v4];

  if (v5)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      *v6 = 1;
    }
  }

  else
  {
    [*(a1 + 32) addObject:v7];
  }
}

- (id)allContainerIdentifierStrings:(BOOL *)strings
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(CNSaveRequest *)self allContainerIdentifiers:strings];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v11 + 1) + 8 * i))
        {
          [array addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return array;
}

- (id)allAccountIdentifiers
{
  array = [MEMORY[0x1E695DF70] array];
  addedAccountContainersByIdentifier = self->_addedAccountContainersByIdentifier;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __38__CNSaveRequest_allAccountIdentifiers__block_invoke;
  v13[3] = &unk_1E7416290;
  v5 = array;
  v14 = v5;
  [(NSMutableDictionary *)addedAccountContainersByIdentifier enumerateKeysAndObjectsUsingBlock:v13];
  defaultAccountContainersByIdentifier = self->_defaultAccountContainersByIdentifier;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__CNSaveRequest_allAccountIdentifiers__block_invoke_2;
  v11[3] = &unk_1E7416290;
  v7 = v5;
  v12 = v7;
  [(NSMutableDictionary *)defaultAccountContainersByIdentifier enumerateKeysAndObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v7;

  return v7;
}

void __38__CNSaveRequest_allAccountIdentifiers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 objectAtIndexedSubscript:1];
  [v3 addObject:v4];
}

void __38__CNSaveRequest_allAccountIdentifiers__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 objectAtIndexedSubscript:1];
  [v3 addObject:v4];
}

- (NSArray)allAccountIdentifierStrings
{
  v15 = *MEMORY[0x1E69E9840];
  allAccountIdentifiers = [(CNSaveRequest *)self allAccountIdentifiers];
  array = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = allAccountIdentifiers;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (*(*(&v10 + 1) + 8 * i))
        {
          [array addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)setChangeHistoryClientIdentifier:(id)identifier
{
  v4 = [identifier copy];
  transactionAuthor = self->_transactionAuthor;
  self->_transactionAuthor = v4;

  MEMORY[0x1EEE66BB8](v4, transactionAuthor);
}

- (BOOL)canIgnoreError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 saveRequest:self shouldProceedAfterError:errorCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CNSaveRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setLinkIdentifier:(id)identifier forContact:(id)contact
{
  v12[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  contactCopy = contact;
  if (contactCopy && [identifierCopy length])
  {
    if ([contactCopy isUnified])
    {
      linkedContacts = [contactCopy linkedContacts];
      firstObject = [linkedContacts firstObject];

      contactCopy = firstObject;
    }

    v12[0] = contactCopy;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v11 = [CNContactChangeRequest contactChangeRequestWithKind:4 contacts:v10 linkIdentifier:identifierCopy];

    [(NSMutableArray *)self->_contactChangeRequests addObject:v11];
  }
}

- (void)addContact:(void *)a1 toContainerWithIdentifier:.cold.2(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_2_2();
  v4 = OUTLINED_FUNCTION_2_10(v3);
  OUTLINED_FUNCTION_0_2(&dword_1954A0000, v5, v6, "parameter ‘contact’ must be nonnull and of type %{public}@", v7, v8, v9, v10, v11);
}

- (void)addContact:(void *)a1 toContainerWithIdentifier:.cold.4(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_2_2();
  v4 = OUTLINED_FUNCTION_2_10(v3);
  OUTLINED_FUNCTION_0_2(&dword_1954A0000, v5, v6, "parameter ‘containerIdentifier’ must be of type %{public}@", v7, v8, v9, v10, v11);
}

- (void)addGroup:(void *)a1 toContainerWithIdentifier:.cold.2(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_2_2();
  v4 = OUTLINED_FUNCTION_2_10(v3);
  OUTLINED_FUNCTION_0_2(&dword_1954A0000, v5, v6, "parameter ‘group’ must be nonnull and of type %{public}@", v7, v8, v9, v10, v11);
}

- (void)addMember:(void *)a1 toGroup:.cold.2(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_2_2();
  v4 = OUTLINED_FUNCTION_2_10(v3);
  OUTLINED_FUNCTION_0_2(&dword_1954A0000, v5, v6, "parameter ‘contact’ must be nonnull and of type %{public}@", v7, v8, v9, v10, v11);
}

- (void)addMember:(void *)a1 toGroup:.cold.4(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_2_2();
  v4 = OUTLINED_FUNCTION_2_10(v3);
  OUTLINED_FUNCTION_0_2(&dword_1954A0000, v5, v6, "parameter ‘group’ must be nonnull and of type %{public}@", v7, v8, v9, v10, v11);
}

- (void)addSubgroup:(void *)a1 toGroup:.cold.2(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_2_2();
  v4 = OUTLINED_FUNCTION_2_10(v3);
  OUTLINED_FUNCTION_0_2(&dword_1954A0000, v5, v6, "parameter ‘subgroup’ must be nonnull and of type %{public}@", v7, v8, v9, v10, v11);
}

@end