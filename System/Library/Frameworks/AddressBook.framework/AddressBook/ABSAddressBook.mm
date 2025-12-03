@interface ABSAddressBook
+ (id)localizedLabelForLabel:(id)label;
+ (int64_t)authorizationStatus;
+ (void)callLocalChangeCallbacks:(BOOL)callbacks;
+ (void)initialize;
+ (void)requestAccessWithCompletion:(id)completion;
- (ABSAddressBook)init;
- (ABSAddressBook)initWithOptions:(id)options error:(id *)error;
- (ABSAddressBook)initWithOptions:(id)options policy:(int)policy error:(id *)error;
- (ABSAddressBook)initWithSettings:(id)settings error:(id *)error;
- (BOOL)addMember:(id)member toGroup:(id)group error:(id *)error;
- (BOOL)addRecord:(id)record error:(id *)error;
- (BOOL)hasUnsavedChanges;
- (BOOL)linkPerson:(id)person toPerson:(id)toPerson;
- (BOOL)recordUpdated:(id)updated;
- (BOOL)removeMember:(id)member fromGroup:(id)group error:(id *)error;
- (BOOL)removeRecord:(id)record error:(id *)error;
- (BOOL)save:(id *)save;
- (BOOL)unlinkPerson:(id)person;
- (CNContactStore)store;
- (id)_peoplePreferringExistingRecordsForFetchRequest:(id)request;
- (id)_resultRecordsFromFetchedCNImpls:(id)impls mergedWithStorage:(id)storage creationBlock:(id)block;
- (id)_sourcesPreferringExistingRecordsFetchedWithPredicate:(id)predicate;
- (id)_storageForRecordClass:(Class)class;
- (id)allGroups;
- (id)allPeople;
- (id)contactsWithIdentifiers:(id)identifiers keysToFetch:(id)fetch;
- (id)defaultSource;
- (id)findPersonMatchingEmailAddress:(id)address;
- (id)findPersonMatchingPhoneNumber:(id)number country:(id)country;
- (id)findPersonMatchingURL:(id)l;
- (id)groupWithRecordID:(int)d;
- (id)groupsInSource:(id)source;
- (id)localSource;
- (id)mePerson;
- (id)peopleInGroup:(id)group sortOrder:(unsigned int)order;
- (id)peopleInSource:(id)source sortOrder:(unsigned int)order;
- (id)peopleLinkedToPerson:(id)person;
- (id)peopleMatchingNameString:(id)string;
- (id)peopleWithCNIdentifiers:(id)identifiers;
- (id)personWithRecordID:(int)d;
- (id)sourceForRecord:(id)record;
- (id)sourceWithRecordID:(int)d;
- (id)uniqueDatabaseVersionIdentifier;
- (int)saveSequenceCount;
- (int64_t)groupCount;
- (int64_t)personCount;
- (void)completePerson:(id)person withKeysToFetch:(id)fetch;
- (void)registerExternalChangeCallback:(void *)callback context:(void *)context;
- (void)revert;
- (void)unregisterExternalChangeCallback:(void *)callback context:(void *)context;
- (void)updateFetchingAllPropertiesForGroups:(id)groups;
- (void)updateFetchingAllPropertiesForSources:(id)sources;
- (void)updatePeople:(id)people refetchingProperties:(id)properties;
@end

@implementation ABSAddressBook

+ (void)initialize
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___ABSAddressBook;
  objc_msgSendSuper2(&v3, sel_initialize);
  if (objc_opt_class() == self)
  {
    ABSPersonConstantsInitialize();
  }
}

- (ABSAddressBook)init
{
  v3 = objc_alloc_init(ABSAddressBookSettings);
  v4 = [(ABSAddressBook *)self initWithSettings:v3 error:0];

  return v4;
}

- (ABSAddressBook)initWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [[ABSAddressBookSettings alloc] initWithOptions:optionsCopy];

  v8 = [(ABSAddressBook *)self initWithSettings:v7 error:error];
  return v8;
}

- (ABSAddressBook)initWithOptions:(id)options policy:(int)policy error:(id *)error
{
  v6 = *&policy;
  optionsCopy = options;
  v9 = [[ABSAddressBookSettings alloc] initWithOptions:optionsCopy policy:v6];

  v10 = [(ABSAddressBook *)self initWithSettings:v9 error:error];
  return v10;
}

- (ABSAddressBook)initWithSettings:(id)settings error:(id *)error
{
  settingsCopy = settings;
  v29.receiver = self;
  v29.super_class = ABSAddressBook;
  v7 = [(ABSAddressBook *)&v29 init];
  if (v7)
  {
    mEMORY[0x277CFBDB8] = [MEMORY[0x277CFBDB8] sharedInstance];
    authorizationStatus = [mEMORY[0x277CFBDB8] authorizationStatus];

    if (authorizationStatus == 1 && ![settingsCopy policy])
    {
      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ABAddressBookErrorDomain" code:1 userInfo:0];
      v23 = v24;
      if (error)
      {
        v25 = v24;
        *error = v23;
      }

      v7 = 0;
      goto LABEL_10;
    }

    v10 = objc_opt_new();
    contacts = v7->_contacts;
    v7->_contacts = v10;

    v12 = objc_opt_new();
    groups = v7->_groups;
    v7->_groups = v12;

    v14 = objc_opt_new();
    sources = v7->_sources;
    v7->_sources = v14;

    v16 = [[ABSChangeCallbacks alloc] initWithAddressBook:v7];
    changeCallbacks = v7->_changeCallbacks;
    v7->_changeCallbacks = v16;

    contactStoreFuture = [settingsCopy contactStoreFuture];
    storeFuture = v7->_storeFuture;
    v7->_storeFuture = contactStoreFuture;

    v20 = [settingsCopy newFaultHandlerWithStorage:v7->_contacts];
    faultHandler = v7->_faultHandler;
    v7->_faultHandler = v20;

    if (!authorizationStatus && [settingsCopy policy] == 1)
    {
      mEMORY[0x277CFBDB8]2 = [MEMORY[0x277CFBDB8] sharedInstance];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __41__ABSAddressBook_initWithSettings_error___block_invoke;
      v27[3] = &unk_278A04B50;
      v7 = v7;
      v28 = v7;
      [mEMORY[0x277CFBDB8]2 requestAuthorization:1 completionHandler:v27];

      v23 = v28;
LABEL_10:
    }
  }

  return v7;
}

uint64_t __41__ABSAddressBook_initWithSettings_error___block_invoke()
{
  v0 = [MEMORY[0x277CFBDB8] sharedInstance];
  v1 = [v0 isAccessGranted];

  v2 = objc_opt_class();

  return [v2 callLocalChangeCallbacks:v1];
}

- (CNContactStore)store
{
  storeFuture = [(ABSAddressBook *)self storeFuture];
  v3 = [storeFuture result:0];

  return v3;
}

- (id)_storageForRecordClass:(Class)class
{
  if ([(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    contacts = [(ABSAddressBook *)self contacts];
  }

  else if ([(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    contacts = [(ABSAddressBook *)self groups];
  }

  else if ([(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    contacts = [(ABSAddressBook *)self sources];
  }

  else
  {
    contacts = 0;
  }

  return contacts;
}

- (BOOL)addRecord:(id)record error:(id *)error
{
  recordCopy = record;
  if (+[ABSAddressBook authorizationStatus]!= 3)
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"ABAddressBookErrorDomain" code:1 userInfo:0];
      *error = v9 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  if (!recordCopy)
  {
    goto LABEL_7;
  }

  addressBook = [recordCopy addressBook];

  if (addressBook)
  {
    goto LABEL_7;
  }

  v8 = [(ABSAddressBook *)self _storageForRecordClass:objc_opt_class()];
  [recordCopy setAddressBook:self];
  [v8 addRecord:recordCopy];

  v9 = 1;
LABEL_8:

  return v9;
}

- (BOOL)recordUpdated:(id)updated
{
  updatedCopy = updated;
  v5 = updatedCopy;
  if (updatedCopy && ([updatedCopy addressBook], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == self))
  {
    v8 = [(ABSAddressBook *)self _storageForRecordClass:objc_opt_class()];
    v7 = [v8 recordUpdated:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)removeRecord:(id)record error:(id *)error
{
  recordCopy = record;
  v7 = +[ABSAddressBook authorizationStatus];
  if (v7 == 3)
  {
    v8 = [(ABSAddressBook *)self _storageForRecordClass:objc_opt_class()];
    [v8 deleteRecord:recordCopy];
  }

  else if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"ABAddressBookErrorDomain" code:1 userInfo:0];
  }

  return v7 == 3;
}

- (BOOL)save:(id *)save
{
  v197 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CFBDB8] = [MEMORY[0x277CFBDB8] sharedInstance];
  isAccessGranted = [mEMORY[0x277CFBDB8] isAccessGranted];

  if (isAccessGranted)
  {
    saveCopy = save;
    v7 = objc_alloc_init(MEMORY[0x277CBDBA0]);
    sources = [(ABSAddressBook *)self sources];
    contacts = [(ABSAddressBook *)self contacts];
    selfCopy = self;
    groups = [(ABSAddressBook *)self groups];
    v179 = 0u;
    v180 = 0u;
    v181 = 0u;
    v182 = 0u;
    insertedRecords = [sources insertedRecords];
    v11 = [insertedRecords countByEnumeratingWithState:&v179 objects:v196 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v180;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v180 != v13)
          {
            objc_enumerationMutation(insertedRecords);
          }

          cnImpl = [*(*(&v179 + 1) + 8 * i) cnImpl];
          [v7 addContainer:cnImpl toAccountWithIdentifier:0];
        }

        v12 = [insertedRecords countByEnumeratingWithState:&v179 objects:v196 count:16];
      }

      while (v12);
    }

    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    updatedRecords = [sources updatedRecords];
    allValues = [updatedRecords allValues];

    v18 = [allValues countByEnumeratingWithState:&v175 objects:v195 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v176;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v176 != v20)
          {
            objc_enumerationMutation(allValues);
          }

          cnImpl2 = [*(*(&v175 + 1) + 8 * j) cnImpl];
          [v7 updateContainer:cnImpl2];
        }

        v19 = [allValues countByEnumeratingWithState:&v175 objects:v195 count:16];
      }

      while (v19);
    }

    v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v172 = 0u;
    deletedRecords = [sources deletedRecords];
    allValues2 = [deletedRecords allValues];

    v25 = [allValues2 countByEnumeratingWithState:&v171 objects:v194 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v172;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v172 != v27)
          {
            objc_enumerationMutation(allValues2);
          }

          cnImpl3 = [*(*(&v171 + 1) + 8 * k) cnImpl];
          [v7 deleteContainer:cnImpl3];
        }

        v26 = [allValues2 countByEnumeratingWithState:&v171 objects:v194 count:16];
      }

      while (v26);
    }

    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    insertedRecords2 = [contacts insertedRecords];
    v31 = [insertedRecords2 countByEnumeratingWithState:&v167 objects:v193 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v168;
      do
      {
        for (m = 0; m != v32; ++m)
        {
          if (*v168 != v33)
          {
            objc_enumerationMutation(insertedRecords2);
          }

          v35 = *(*(&v167 + 1) + 8 * m);
          source = [v35 source];
          cnImpl4 = [v35 cnImpl];
          cNIdentifierString = [source CNIdentifierString];
          [v7 addContact:cnImpl4 toContainerWithIdentifier:cNIdentifierString];
        }

        v32 = [insertedRecords2 countByEnumeratingWithState:&v167 objects:v193 count:16];
      }

      while (v32);
    }

    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    deletedRecords2 = [contacts deletedRecords];
    allValues3 = [deletedRecords2 allValues];

    v41 = [allValues3 countByEnumeratingWithState:&v163 objects:v192 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v164;
      do
      {
        for (n = 0; n != v42; ++n)
        {
          if (*v164 != v43)
          {
            objc_enumerationMutation(allValues3);
          }

          cnImpl5 = [*(*(&v163 + 1) + 8 * n) cnImpl];
          [v7 deleteContact:cnImpl5];
        }

        v42 = [allValues3 countByEnumeratingWithState:&v163 objects:v192 count:16];
      }

      while (v42);
    }

    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    updatedRecords2 = [contacts updatedRecords];
    allValues4 = [updatedRecords2 allValues];

    v48 = [allValues4 countByEnumeratingWithState:&v159 objects:v191 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v160;
      do
      {
        for (ii = 0; ii != v49; ++ii)
        {
          if (*v160 != v50)
          {
            objc_enumerationMutation(allValues4);
          }

          cnImpl6 = [*(*(&v159 + 1) + 8 * ii) cnImpl];
          [v7 updateContact:cnImpl6];
        }

        v49 = [allValues4 countByEnumeratingWithState:&v159 objects:v191 count:16];
      }

      while (v49);
    }

    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    insertedRecords3 = [groups insertedRecords];
    v54 = [insertedRecords3 countByEnumeratingWithState:&v155 objects:v190 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v156;
      do
      {
        for (jj = 0; jj != v55; ++jj)
        {
          if (*v156 != v56)
          {
            objc_enumerationMutation(insertedRecords3);
          }

          v58 = *(*(&v155 + 1) + 8 * jj);
          source2 = [v58 source];
          cnImpl7 = [v58 cnImpl];
          cNIdentifierString2 = [source2 CNIdentifierString];
          [v7 addGroup:cnImpl7 toContainerWithIdentifier:cNIdentifierString2];
        }

        v55 = [insertedRecords3 countByEnumeratingWithState:&v155 objects:v190 count:16];
      }

      while (v55);
    }

    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    deletedRecords3 = [groups deletedRecords];
    allValues5 = [deletedRecords3 allValues];

    v64 = [allValues5 countByEnumeratingWithState:&v151 objects:v189 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v152;
      do
      {
        for (kk = 0; kk != v65; ++kk)
        {
          if (*v152 != v66)
          {
            objc_enumerationMutation(allValues5);
          }

          cnImpl8 = [*(*(&v151 + 1) + 8 * kk) cnImpl];
          [v7 deleteGroup:cnImpl8];
        }

        v65 = [allValues5 countByEnumeratingWithState:&v151 objects:v189 count:16];
      }

      while (v65);
    }

    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    updatedRecords3 = [groups updatedRecords];
    allValues6 = [updatedRecords3 allValues];

    v71 = [allValues6 countByEnumeratingWithState:&v147 objects:v188 count:16];
    if (v71)
    {
      v72 = v71;
      v73 = *v148;
      do
      {
        for (mm = 0; mm != v72; ++mm)
        {
          if (*v148 != v73)
          {
            objc_enumerationMutation(allValues6);
          }

          cnImpl9 = [*(*(&v147 + 1) + 8 * mm) cnImpl];
          [v7 updateGroup:cnImpl9];
        }

        v72 = [allValues6 countByEnumeratingWithState:&v147 objects:v188 count:16];
      }

      while (v72);
    }

    v121 = contacts;
    v122 = sources;

    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    obj = [groups recordsWithPendingMembershipAdditions];
    v128 = [obj countByEnumeratingWithState:&v143 objects:v187 count:16];
    if (v128)
    {
      v126 = *v144;
      do
      {
        for (nn = 0; nn != v128; ++nn)
        {
          if (*v144 != v126)
          {
            objc_enumerationMutation(obj);
          }

          v77 = *(*(&v143 + 1) + 8 * nn);
          v78 = [groups addedMembersForRecord:{v77, saveCopy}];
          v139 = 0u;
          v140 = 0u;
          v141 = 0u;
          v142 = 0u;
          v79 = [v78 countByEnumeratingWithState:&v139 objects:v186 count:16];
          if (v79)
          {
            v80 = v79;
            v81 = *v140;
            do
            {
              for (i1 = 0; i1 != v80; ++i1)
              {
                if (*v140 != v81)
                {
                  objc_enumerationMutation(v78);
                }

                v83 = *(*(&v139 + 1) + 8 * i1);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  cnImpl10 = [v83 cnImpl];
                  cnImpl11 = [v77 cnImpl];
                  [v7 addMember:cnImpl10 toGroup:cnImpl11];
                }
              }

              v80 = [v78 countByEnumeratingWithState:&v139 objects:v186 count:16];
            }

            while (v80);
          }
        }

        v128 = [obj countByEnumeratingWithState:&v143 objects:v187 count:16];
      }

      while (v128);
    }

    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    obja = [groups recordsWithPendingMembershipDeletions];
    v129 = [obja countByEnumeratingWithState:&v135 objects:v185 count:16];
    if (v129)
    {
      v127 = *v136;
      do
      {
        for (i2 = 0; i2 != v129; ++i2)
        {
          if (*v136 != v127)
          {
            objc_enumerationMutation(obja);
          }

          v87 = *(*(&v135 + 1) + 8 * i2);
          v88 = [groups removedMembersForRecord:{v87, saveCopy}];
          v131 = 0u;
          v132 = 0u;
          v133 = 0u;
          v134 = 0u;
          v89 = [v88 countByEnumeratingWithState:&v131 objects:v184 count:16];
          if (v89)
          {
            v90 = v89;
            v91 = *v132;
            do
            {
              for (i3 = 0; i3 != v90; ++i3)
              {
                if (*v132 != v91)
                {
                  objc_enumerationMutation(v88);
                }

                v93 = *(*(&v131 + 1) + 8 * i3);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  cnImpl12 = [v93 cnImpl];
                  cnImpl13 = [v87 cnImpl];
                  [v7 removeMember:cnImpl12 fromGroup:cnImpl13];
                }
              }

              v90 = [v88 countByEnumeratingWithState:&v131 objects:v184 count:16];
            }

            while (v90);
          }
        }

        v129 = [obja countByEnumeratingWithState:&v135 objects:v185 count:16];
      }

      while (v129);
    }

    store = [(ABSAddressBook *)selfCopy store];
    v97 = [store executeSaveRequest:v7 error:saveCopy];

    if (saveCopy)
    {
      if (*saveCopy)
      {
        domain = [*saveCopy domain];
        v99 = [domain isEqualToString:*MEMORY[0x277CBD198]];

        if (v99)
        {
          if ([*saveCopy code] == 100)
          {
            *saveCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"ABAddressBookErrorDomain" code:1 userInfo:0];
          }
        }
      }
    }

    if (v97)
    {
      contacts2 = [(ABSAddressBook *)selfCopy contacts];
      insertedRecords4 = [contacts2 insertedRecords];
      v102 = [insertedRecords4 count];

      if (v102)
      {
        contacts3 = [(ABSAddressBook *)selfCopy contacts];
        insertedRecords5 = [contacts3 insertedRecords];
        v183 = *MEMORY[0x277CBD010];
        v105 = [MEMORY[0x277CBEA60] arrayWithObjects:&v183 count:1];
        [(ABSAddressBook *)selfCopy updatePeople:insertedRecords5 refetchingProperties:v105];
      }

      contacts4 = [(ABSAddressBook *)selfCopy contacts];
      [contacts4 commitPendingChanges];

      groups2 = [(ABSAddressBook *)selfCopy groups];
      insertedRecords6 = [groups2 insertedRecords];
      v109 = [insertedRecords6 count];

      if (v109)
      {
        groups3 = [(ABSAddressBook *)selfCopy groups];
        insertedRecords7 = [groups3 insertedRecords];
        [(ABSAddressBook *)selfCopy updateFetchingAllPropertiesForGroups:insertedRecords7];
      }

      groups4 = [(ABSAddressBook *)selfCopy groups];
      [groups4 commitPendingChanges];

      sources2 = [(ABSAddressBook *)selfCopy sources];
      insertedRecords8 = [sources2 insertedRecords];
      v115 = [insertedRecords8 count];

      if (v115)
      {
        sources3 = [(ABSAddressBook *)selfCopy sources];
        insertedRecords9 = [sources3 insertedRecords];
        [(ABSAddressBook *)selfCopy updateFetchingAllPropertiesForSources:insertedRecords9];
      }

      sources4 = [(ABSAddressBook *)selfCopy sources];
      [sources4 commitPendingChanges];
    }
  }

  else if (save)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"ABAddressBookErrorDomain" code:1 userInfo:0];
    *save = LOBYTE(v97) = 0;
  }

  else
  {
    LOBYTE(v97) = 0;
  }

  return v97;
}

- (BOOL)hasUnsavedChanges
{
  groups = [(ABSAddressBook *)self groups];
  if ([groups hasUnsavedChanges])
  {
    hasUnsavedChanges = 1;
  }

  else
  {
    contacts = [(ABSAddressBook *)self contacts];
    if ([contacts hasUnsavedChanges])
    {
      hasUnsavedChanges = 1;
    }

    else
    {
      sources = [(ABSAddressBook *)self sources];
      hasUnsavedChanges = [sources hasUnsavedChanges];
    }
  }

  return hasUnsavedChanges;
}

- (void)revert
{
  groups = [(ABSAddressBook *)self groups];
  [groups revert];

  contacts = [(ABSAddressBook *)self contacts];
  [contacts revert];

  sources = [(ABSAddressBook *)self sources];
  [sources revert];
}

- (void)registerExternalChangeCallback:(void *)callback context:(void *)context
{
  changeCallbacks = [(ABSAddressBook *)self changeCallbacks];
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  [changeCallbacks addExternalCallback:callback onThread:currentThread withContext:context];
}

- (void)unregisterExternalChangeCallback:(void *)callback context:(void *)context
{
  changeCallbacks = [(ABSAddressBook *)self changeCallbacks];
  [changeCallbacks removeExternalCallback:callback withContext:context];
}

+ (id)localizedLabelForLabel:(id)label
{
  v3 = MEMORY[0x277CCA8D8];
  labelCopy = label;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:labelCopy value:labelCopy table:@"Localized"];

  return v6;
}

- (int64_t)personCount
{
  v30[1] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = -1;
  mEMORY[0x277CFBDB8] = [MEMORY[0x277CFBDB8] sharedInstance];
  isAccessGranted = [mEMORY[0x277CFBDB8] isAccessGranted];

  if (isAccessGranted)
  {
    v5 = objc_alloc(MEMORY[0x277CBDA70]);
    v30[0] = *MEMORY[0x277CBD018];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    v7 = [v5 initWithKeysToFetch:v6];

    v8 = MEMORY[0x277CBEB98];
    contacts = [(ABSAddressBook *)self contacts];
    deletedRecords = [contacts deletedRecords];
    allValues = [deletedRecords allValues];
    v12 = [allValues _cn_map:&__block_literal_global_11];
    v13 = [v8 setWithArray:v12];

    [v7 setUnifyResults:0];
    v27[3] = 0;
    store = [(ABSAddressBook *)self store];
    v25 = 0;
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __29__ABSAddressBook_personCount__block_invoke_2;
    v22 = &unk_278A04B98;
    v15 = v13;
    v23 = v15;
    v24 = &v26;
    LOBYTE(deletedRecords) = [store enumerateContactsWithFetchRequest:v7 error:&v25 usingBlock:&v19];
    v16 = v25;

    if ((deletedRecords & 1) == 0)
    {
      NSLog(&cfstr_ErrorFetching.isa, v16, v19, v20, v21, v22);
    }
  }

  v17 = v27[3];
  _Block_object_dispose(&v26, 8);
  return v17;
}

id __29__ABSAddressBook_personCount__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = [v2 cnImpl];

  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 identifier];

  return v6;
}

void __29__ABSAddressBook_personCount__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 identifier];
  LOBYTE(v3) = [v3 containsObject:v4];

  if ((v3 & 1) == 0)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

- (id)allPeople
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBDA70]);
  v4 = +[ABSPerson defaultKeysToFetch];
  v5 = [v3 initWithKeysToFetch:v4];

  [v5 setUnifyResults:0];
  [v5 setMutableObjects:1];
  v6 = MEMORY[0x277CBEB58];
  contacts = [(ABSAddressBook *)self contacts];
  records = [contacts records];
  allValues = [records allValues];
  v10 = [allValues _cn_map:&__block_literal_global_30];
  v11 = [v6 setWithArray:v10];

  contacts2 = [(ABSAddressBook *)self contacts];
  deletedRecords = [contacts2 deletedRecords];
  allValues2 = [deletedRecords allValues];
  v15 = [allValues2 _cn_map:&__block_literal_global_30];
  [v11 addObjectsFromArray:v15];

  array = [MEMORY[0x277CBEB18] array];
  store = [(ABSAddressBook *)self store];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __27__ABSAddressBook_allPeople__block_invoke_2;
  v36[3] = &unk_278A04BC0;
  v18 = v11;
  v37 = v18;
  v19 = array;
  v38 = v19;
  [store enumerateContactsWithFetchRequest:v5 error:0 usingBlock:v36];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v33;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v32 + 1) + 8 * i);
        contacts3 = [(ABSAddressBook *)self contacts];
        v27 = [contacts3 cnImplFetched:v25 creationBlock:&__block_literal_global_35];

        [v27 setAddressBook:self];
      }

      v22 = [v20 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v22);
  }

  contacts4 = [(ABSAddressBook *)self contacts];
  records2 = [contacts4 records];
  allValues3 = [records2 allValues];

  return allValues3;
}

id __27__ABSAddressBook_allPeople__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 cnImpl];
  v3 = [v2 identifier];

  return v3;
}

void __27__ABSAddressBook_allPeople__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  v5 = [v3 identifier];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    v6 = *(a1 + 40);
    v7 = [v8 mutableCopy];
    [v6 addObject:v7];
  }
}

ABSPerson *__27__ABSAddressBook_allPeople__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ABSPerson alloc] initWithMutableContact:v2];

  return v3;
}

- (id)peopleWithCNIdentifiers:(id)identifiers
{
  v74 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = identifiersCopy;
  v48 = [obj countByEnumeratingWithState:&v66 objects:v73 count:16];
  if (v48)
  {
    v47 = *v67;
    do
    {
      v4 = 0;
      do
      {
        if (*v67 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v49 = v4;
        v5 = *(*(&v66 + 1) + 8 * v4);
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        contacts = [(ABSAddressBook *)self contacts];
        records = [contacts records];
        allValues = [records allValues];

        v9 = [allValues countByEnumeratingWithState:&v62 objects:v72 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = 0;
          v12 = *v63;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v63 != v12)
              {
                objc_enumerationMutation(allValues);
              }

              v14 = *(*(&v62 + 1) + 8 * i);
              cnImpl = [v14 cnImpl];
              identifier = [cnImpl identifier];
              v17 = [identifier isEqual:v5];

              if (v17)
              {
                [array addObject:v14];
                v11 = 1;
              }
            }

            v10 = [allValues countByEnumeratingWithState:&v62 objects:v72 count:16];
          }

          while (v10);

          if (v11)
          {
            goto LABEL_29;
          }
        }

        else
        {
        }

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        contacts2 = [(ABSAddressBook *)self contacts];
        deletedRecords = [contacts2 deletedRecords];
        allValues2 = [deletedRecords allValues];

        v21 = [allValues2 countByEnumeratingWithState:&v58 objects:v71 count:16];
        if (!v21)
        {

LABEL_28:
          [array2 addObject:v5];
          goto LABEL_29;
        }

        v22 = v21;
        v23 = 0;
        v24 = *v59;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v59 != v24)
            {
              objc_enumerationMutation(allValues2);
            }

            cnImpl2 = [*(*(&v58 + 1) + 8 * j) cnImpl];
            identifier2 = [cnImpl2 identifier];
            v28 = [identifier2 isEqual:v5];

            v23 |= v28;
          }

          v22 = [allValues2 countByEnumeratingWithState:&v58 objects:v71 count:16];
        }

        while (v22);

        if ((v23 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_29:
        v4 = v49 + 1;
      }

      while (v49 + 1 != v48);
      v48 = [obj countByEnumeratingWithState:&v66 objects:v73 count:16];
    }

    while (v48);
  }

  v29 = objc_alloc(MEMORY[0x277CBDA70]);
  v30 = +[ABSPerson defaultKeysToFetch];
  v31 = [v29 initWithKeysToFetch:v30];

  v32 = [MEMORY[0x277CBDA58] predicateForContactsWithIdentifiers:array2];
  [v31 setPredicate:v32];

  [v31 setUnifyResults:0];
  [v31 setMutableObjects:1];
  array3 = [MEMORY[0x277CBEB18] array];
  store = [(ABSAddressBook *)self store];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __42__ABSAddressBook_peopleWithCNIdentifiers___block_invoke;
  v56[3] = &unk_278A04C08;
  v35 = array3;
  v57 = v35;
  [store enumerateContactsWithFetchRequest:v31 error:0 usingBlock:v56];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v36 = v35;
  v37 = [v36 countByEnumeratingWithState:&v52 objects:v70 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v53;
    do
    {
      for (k = 0; k != v38; ++k)
      {
        if (*v53 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v52 + 1) + 8 * k);
        contacts3 = [(ABSAddressBook *)self contacts];
        v43 = [contacts3 cnImplFetched:v41 creationBlock:&__block_literal_global_37];

        [v43 setAddressBook:self];
        [array addObject:v43];
      }

      v38 = [v36 countByEnumeratingWithState:&v52 objects:v70 count:16];
    }

    while (v38);
  }

  return array;
}

ABSPerson *__42__ABSAddressBook_peopleWithCNIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ABSPerson alloc] initWithMutableContact:v2];

  return v3;
}

- (id)personWithRecordID:(int)d
{
  v3 = *&d;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:?];
  contacts = [(ABSAddressBook *)self contacts];
  records = [contacts records];
  v8 = [records objectForKey:v5];

  if (!v8)
  {
    contacts2 = [(ABSAddressBook *)self contacts];
    deletedRecords = [contacts2 deletedRecords];
    v11 = [deletedRecords objectForKey:v5];

    if (v11)
    {
      v8 = 0;
    }

    else
    {
      v12 = objc_alloc(MEMORY[0x277CBDA70]);
      v13 = +[ABSPerson defaultKeysToFetch];
      v14 = [v12 initWithKeysToFetch:v13];

      v15 = [MEMORY[0x277CBDA58] predicateForLegacyIdentifier:v3];
      [v14 setPredicate:v15];

      [v14 setUnifyResults:0];
      [v14 setMutableObjects:1];
      array = [MEMORY[0x277CBEB18] array];
      store = [(ABSAddressBook *)self store];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __37__ABSAddressBook_personWithRecordID___block_invoke;
      v24[3] = &unk_278A04C08;
      v18 = array;
      v25 = v18;
      [store enumerateContactsWithFetchRequest:v14 error:0 usingBlock:v24];

      lastObject = [v18 lastObject];
      if (lastObject)
      {
        v20 = lastObject;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = [v20 mutableCopy];

          v20 = v21;
        }

        contacts3 = [(ABSAddressBook *)self contacts];
        v8 = [contacts3 cnImplFetched:v20 creationBlock:&__block_literal_global_41];

        [v8 setAddressBook:self];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  return v8;
}

ABSPerson *__37__ABSAddressBook_personWithRecordID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ABSPerson alloc] initWithMutableContact:v2];

  return v3;
}

- (id)findPersonMatchingURL:(id)l
{
  v4 = [MEMORY[0x277CBDA58] predicateForContactMatchingURLString:l];
  v5 = [ABSPersonFetchRequest alloc];
  v6 = [(ABSPersonFetchRequest *)v5 initWithPredicate:v4 additionalKeysToFetch:MEMORY[0x277CBEBF8] sortOrder:0];
  v7 = [(ABSAddressBook *)self _peoplePreferringExistingRecordsForFetchRequest:v6];
  firstObject = [v7 firstObject];

  return firstObject;
}

- (id)findPersonMatchingEmailAddress:(id)address
{
  v4 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:address];
  v5 = [ABSPersonFetchRequest alloc];
  v6 = [(ABSPersonFetchRequest *)v5 initWithPredicate:v4 additionalKeysToFetch:MEMORY[0x277CBEBF8] sortOrder:0];
  v7 = [(ABSAddressBook *)self _peoplePreferringExistingRecordsForFetchRequest:v6];
  firstObject = [v7 firstObject];

  return firstObject;
}

- (id)findPersonMatchingPhoneNumber:(id)number country:(id)country
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBDA58];
  v7 = MEMORY[0x277CBDB70];
  countryCopy = country;
  numberCopy = number;
  v10 = [[v7 alloc] initWithStringValue:numberCopy countryCode:countryCopy];

  v11 = [v6 predicateForContactsMatchingPhoneNumber:v10];

  v12 = [ABSPersonFetchRequest alloc];
  v18[0] = *MEMORY[0x277CBD098];
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v14 = [(ABSPersonFetchRequest *)v12 initWithPredicate:v11 additionalKeysToFetch:v13 sortOrder:0];

  v15 = [(ABSAddressBook *)self _peoplePreferringExistingRecordsForFetchRequest:v14];
  firstObject = [v15 firstObject];

  return firstObject;
}

- (id)contactsWithIdentifiers:(id)identifiers keysToFetch:(id)fetch
{
  v6 = MEMORY[0x277CBDA70];
  fetchCopy = fetch;
  identifiersCopy = identifiers;
  v9 = [[v6 alloc] initWithKeysToFetch:fetchCopy];

  v10 = [MEMORY[0x277CBDA58] predicateForContactsWithIdentifiers:identifiersCopy];

  [v9 setPredicate:v10];
  [v9 setUnifyResults:0];
  [v9 setMutableObjects:0];
  array = [MEMORY[0x277CBEB18] array];
  store = [(ABSAddressBook *)self store];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__ABSAddressBook_contactsWithIdentifiers_keysToFetch___block_invoke;
  v16[3] = &unk_278A04C08;
  v17 = array;
  v13 = array;
  [store enumerateContactsWithFetchRequest:v9 error:0 usingBlock:v16];

  v14 = [v13 copy];

  return v14;
}

- (void)updatePeople:(id)people refetchingProperties:(id)properties
{
  v43 = *MEMORY[0x277D85DE8];
  peopleCopy = people;
  propertiesCopy = properties;
  v28 = [peopleCopy _cn_map:&__block_literal_global_45];
  v29 = propertiesCopy;
  v8 = [ABSAddressBook contactsWithIdentifiers:"contactsWithIdentifiers:keysToFetch:" keysToFetch:?];
  v9 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v38;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        identifier = [v15 identifier];
        [v9 setObject:v15 forKey:identifier];
      }

      v12 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v12);
  }

  v27 = v10;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = peopleCopy;
  v18 = [v17 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v33 + 1) + 8 * j);
        cnImpl = [v22 cnImpl];
        identifier2 = [cnImpl identifier];
        v25 = [v9 objectForKey:identifier2];

        if (v25)
        {
          v26 = [v29 _cn_map:&__block_literal_global_49_0];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __52__ABSAddressBook_updatePeople_refetchingProperties___block_invoke_53;
          v30[3] = &unk_278A04C50;
          v31 = v25;
          v32 = v22;
          [v26 _cn_each:v30];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v19);
  }
}

id __52__ABSAddressBook_updatePeople_refetchingProperties___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 cnImpl];
  v3 = [v2 identifier];

  return v3;
}

id __52__ABSAddressBook_updatePeople_refetchingProperties___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277CBDA20] contactPropertiesByKey];
  v4 = [v3 objectForKeyedSubscript:v2];

  if (!v4 || ([MEMORY[0x277CBEB68] null], v5 = objc_claimAutoreleasedReturnValue(), v5, v4 == v5))
  {
    v6 = +[ABSLog log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __52__ABSAddressBook_updatePeople_refetchingProperties___block_invoke_2_cold_1();
    }
  }

  return v4;
}

void __52__ABSAddressBook_updatePeople_refetchingProperties___block_invoke_53(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v4 CNValueForContact:v3];
  v5 = [*(a1 + 40) cnImpl];
  [v4 setCNValue:v6 onContact:v5];
}

- (void)completePerson:(id)person withKeysToFetch:(id)fetch
{
  fetchCopy = fetch;
  personCopy = person;
  faultHandler = [(ABSAddressBook *)self faultHandler];
  [faultHandler completePerson:personCopy withKeysToFetch:fetchCopy];
}

- (id)_resultRecordsFromFetchedCNImpls:(id)impls mergedWithStorage:(id)storage creationBlock:(id)block
{
  v35 = *MEMORY[0x277D85DE8];
  implsCopy = impls;
  storageCopy = storage;
  blockCopy = block;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = implsCopy;
  v10 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v29;
    *&v11 = 138543362;
    v24 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v15, "iOSLegacyIdentifier", v24)}];
        records = [storageCopy records];
        v18 = [records objectForKey:v16];

        if (v18)
        {
          [v9 addObject:v18];
        }

        else
        {
          deletedRecords = [storageCopy deletedRecords];
          v20 = [deletedRecords objectForKey:v16];

          if (!v20)
          {
            v21 = [storageCopy cnImplFetched:v15 creationBlock:blockCopy];
            if (v21)
            {
              [v9 addObject:v21];
              [v21 setAddressBook:self];
            }

            else
            {
              v22 = +[ABSLog log];
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = v24;
                v33 = v15;
                _os_log_error_impl(&dword_236A49000, v22, OS_LOG_TYPE_ERROR, "Could not create new AB object from %{public}@", buf, 0xCu);
              }
            }
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v12);
  }

  return v9;
}

- (id)_peoplePreferringExistingRecordsForFetchRequest:(id)request
{
  requestCopy = request;
  v5 = +[ABSPerson defaultKeysToFetch];
  v6 = *MEMORY[0x277CFBCF8];
  additionalKeysToFetch = [requestCopy additionalKeysToFetch];
  LOBYTE(v6) = (*(v6 + 16))(v6, additionalKeysToFetch);

  if ((v6 & 1) == 0)
  {
    additionalKeysToFetch2 = [requestCopy additionalKeysToFetch];
    v9 = [v5 arrayByAddingObjectsFromArray:additionalKeysToFetch2];

    v5 = v9;
  }

  v10 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:v5];
  predicate = [requestCopy predicate];
  [v10 setPredicate:predicate];

  [v10 setUnifyResults:0];
  [v10 setMutableObjects:1];
  if ([requestCopy sortOrder])
  {
    if ([requestCopy sortOrder] == 1)
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 2;
  }

  [v10 setSortOrder:v12];
  array = [MEMORY[0x277CBEB18] array];
  store = [(ABSAddressBook *)self store];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__ABSAddressBook__peoplePreferringExistingRecordsForFetchRequest___block_invoke;
  v19[3] = &unk_278A04C08;
  v20 = array;
  v15 = array;
  [store enumerateContactsWithFetchRequest:v10 error:0 usingBlock:v19];

  contacts = [(ABSAddressBook *)self contacts];
  v17 = [(ABSAddressBook *)self _resultRecordsFromFetchedCNImpls:v15 mergedWithStorage:contacts creationBlock:&__block_literal_global_56];

  return v17;
}

ABSPerson *__66__ABSAddressBook__peoplePreferringExistingRecordsForFetchRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [ABSPerson alloc];
  v4 = [v2 mutableCopy];

  v5 = [(ABSPerson *)v3 initWithMutableContact:v4];

  return v5;
}

- (id)peopleInSource:(id)source sortOrder:(unsigned int)order
{
  v4 = *&order;
  if (source)
  {
    v6 = MEMORY[0x277CBDA58];
    cnImpl = [source cnImpl];
    identifier = [cnImpl identifier];
    v9 = [v6 predicateForContactsInContainerWithIdentifier:identifier];
  }

  else
  {
    v9 = 0;
  }

  v10 = [ABSPersonFetchRequest alloc];
  v11 = [(ABSPersonFetchRequest *)v10 initWithPredicate:v9 additionalKeysToFetch:MEMORY[0x277CBEBF8] sortOrder:v4];
  v12 = [(ABSAddressBook *)self _peoplePreferringExistingRecordsForFetchRequest:v11];

  return v12;
}

- (id)peopleInGroup:(id)group sortOrder:(unsigned int)order
{
  v4 = *&order;
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBDA70];
  groupCopy = group;
  v8 = [v6 alloc];
  v25[0] = *MEMORY[0x277CBD018];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v10 = [v8 initWithKeysToFetch:v9];

  v11 = MEMORY[0x277CBDA58];
  cnImpl = [groupCopy cnImpl];

  identifier = [cnImpl identifier];
  v14 = [v11 predicateForContactsInGroupWithIdentifier:identifier];
  [v10 setPredicate:v14];

  [v10 setUnifyResults:0];
  array = [MEMORY[0x277CBEB18] array];
  store = [(ABSAddressBook *)self store];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __42__ABSAddressBook_peopleInGroup_sortOrder___block_invoke;
  v23[3] = &unk_278A04C08;
  v17 = array;
  v24 = v17;
  [store enumerateContactsWithFetchRequest:v10 error:0 usingBlock:v23];

  v18 = [MEMORY[0x277CBDA58] predicateForContactsWithIdentifiers:v17];
  v19 = [ABSPersonFetchRequest alloc];
  v20 = [(ABSPersonFetchRequest *)v19 initWithPredicate:v18 additionalKeysToFetch:MEMORY[0x277CBEBF8] sortOrder:v4];
  v21 = [(ABSAddressBook *)self _peoplePreferringExistingRecordsForFetchRequest:v20];
  if (![v21 count])
  {

    v21 = 0;
  }

  return v21;
}

void __42__ABSAddressBook_peopleInGroup_sortOrder___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  [v2 addObject:v3];
}

- (id)peopleMatchingNameString:(id)string
{
  v4 = MEMORY[0x277CBDA70];
  stringCopy = string;
  v6 = [v4 alloc];
  v7 = +[ABSPerson defaultKeysToFetch];
  v8 = [v6 initWithKeysToFetch:v7];

  v9 = [MEMORY[0x277CBDA58] predicateForContactsMatchingName:stringCopy];

  [v8 setPredicate:v9];
  [v8 setUnifyResults:0];
  [v8 setMutableObjects:1];
  array = [MEMORY[0x277CBEB18] array];
  store = [(ABSAddressBook *)self store];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __43__ABSAddressBook_peopleMatchingNameString___block_invoke;
  v16[3] = &unk_278A04C08;
  v17 = array;
  v12 = array;
  [store enumerateContactsWithFetchRequest:v8 error:0 usingBlock:v16];

  contacts = [(ABSAddressBook *)self contacts];
  v14 = [(ABSAddressBook *)self _resultRecordsFromFetchedCNImpls:v12 mergedWithStorage:contacts creationBlock:&__block_literal_global_58_0];

  return v14;
}

ABSPerson *__43__ABSAddressBook_peopleMatchingNameString___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ABSPerson alloc] initWithMutableContact:v2];

  return v3;
}

- (id)mePerson
{
  predicateForMeContact = [MEMORY[0x277CBDA58] predicateForMeContact];
  v4 = [ABSPersonFetchRequest alloc];
  v5 = [(ABSPersonFetchRequest *)v4 initWithPredicate:predicateForMeContact additionalKeysToFetch:MEMORY[0x277CBEBF8] sortOrder:0];
  v6 = [(ABSAddressBook *)self _peoplePreferringExistingRecordsForFetchRequest:v5];
  firstObject = [v6 firstObject];

  return firstObject;
}

- (id)peopleLinkedToPerson:(id)person
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBDA58];
  cnImpl = [person cnImpl];
  v6 = [v4 predicateForContactsLinkedToContact:cnImpl];

  v7 = [ABSPersonFetchRequest alloc];
  v12[0] = *MEMORY[0x277CBD048];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [(ABSPersonFetchRequest *)v7 initWithPredicate:v6 additionalKeysToFetch:v8 sortOrder:+[ABSPerson sortOrdering]];

  v10 = [(ABSAddressBook *)self _peoplePreferringExistingRecordsForFetchRequest:v9];

  return v10;
}

- (BOOL)linkPerson:(id)person toPerson:(id)toPerson
{
  v6 = MEMORY[0x277CBDBA0];
  toPersonCopy = toPerson;
  personCopy = person;
  v9 = objc_alloc_init(v6);
  cnImpl = [personCopy cnImpl];

  cnImpl2 = [toPersonCopy cnImpl];

  [v9 linkContact:cnImpl toContact:cnImpl2];
  store = [(ABSAddressBook *)self store];
  v17 = 0;
  v13 = [store executeSaveRequest:v9 error:&v17];
  v14 = v17;

  if ((v13 & 1) == 0)
  {
    v15 = +[ABSLog log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ABSAddressBook linkPerson:toPerson:];
    }
  }

  return v13;
}

- (BOOL)unlinkPerson:(id)person
{
  v4 = MEMORY[0x277CBDBA0];
  personCopy = person;
  v6 = objc_alloc_init(v4);
  cnImpl = [personCopy cnImpl];

  [v6 unlinkContact:cnImpl];
  store = [(ABSAddressBook *)self store];
  v13 = 0;
  v9 = [store executeSaveRequest:v6 error:&v13];
  v10 = v13;

  if ((v9 & 1) == 0)
  {
    v11 = +[ABSLog log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ABSAddressBook unlinkPerson:];
    }
  }

  return v9;
}

- (id)_sourcesPreferringExistingRecordsFetchedWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  store = [(ABSAddressBook *)self store];
  v6 = [store containersMatchingPredicate:predicateCopy error:0];

  sources = [(ABSAddressBook *)self sources];
  v8 = [(ABSAddressBook *)self _resultRecordsFromFetchedCNImpls:v6 mergedWithStorage:sources creationBlock:&__block_literal_global_61_0];

  return v8;
}

ABSSource *__72__ABSAddressBook__sourcesPreferringExistingRecordsFetchedWithPredicate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [ABSSource alloc];
  v4 = [v2 mutableCopy];

  v5 = [(ABSSource *)v3 initWithMutableContainer:v4];

  return v5;
}

- (id)sourceWithRecordID:(int)d
{
  v4 = [MEMORY[0x277CBDAD8] predicateForiOSLegacyIdentifier:*&d];
  v5 = [(ABSAddressBook *)self _sourcesPreferringExistingRecordsFetchedWithPredicate:v4];
  firstObject = [v5 firstObject];

  return firstObject;
}

- (id)defaultSource
{
  v11[1] = *MEMORY[0x277D85DE8];
  store = [(ABSAddressBook *)self store];
  defaultContainerIdentifier = [store defaultContainerIdentifier];

  if (defaultContainerIdentifier)
  {
    v5 = MEMORY[0x277CBDAD8];
    v11[0] = defaultContainerIdentifier;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v7 = [v5 predicateForContainersWithIdentifiers:v6];
    v8 = [(ABSAddressBook *)self _sourcesPreferringExistingRecordsFetchedWithPredicate:v7];
    firstObject = [v8 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)localSource
{
  v3 = [MEMORY[0x277CBDAD8] predicateForLocalContainerIncludingDisabled:0];
  v4 = [(ABSAddressBook *)self _sourcesPreferringExistingRecordsFetchedWithPredicate:v3];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (id)sourceForRecord:(id)record
{
  recordCopy = record;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277CBDAD8];
    cnImpl = [recordCopy cnImpl];
    identifier = [cnImpl identifier];
    v8 = [v5 predicateForContainerOfContactWithIdentifier:identifier];
LABEL_5:
    v10 = v8;

LABEL_6:
    v11 = [(ABSAddressBook *)self _sourcesPreferringExistingRecordsFetchedWithPredicate:v10];
    firstObject = [v11 firstObject];

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = MEMORY[0x277CBDAD8];
    cnImpl = [recordCopy cnImpl];
    identifier = [cnImpl identifier];
    v8 = [v9 predicateForContainerOfGroupWithIdentifier:identifier];
    goto LABEL_5;
  }

  objc_opt_class();
  v10 = 0;
  firstObject = 0;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:

  return firstObject;
}

- (void)updateFetchingAllPropertiesForSources:(id)sources
{
  v24 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  v18 = [sourcesCopy _cn_map:&__block_literal_global_65];
  v17 = [v18 _cn_map:&__block_literal_global_68];
  v5 = [MEMORY[0x277CBDAD8] predicateForContainersWithIdentifiers:?];
  store = [(ABSAddressBook *)self store];
  v7 = [store containersMatchingPredicate:v5 error:0];

  v8 = [v7 _cn_indexBy:&__block_literal_global_71];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = sourcesCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        cNIdentifierString = [v14 CNIdentifierString];
        v16 = [v8 objectForKey:cNIdentifierString];

        [v14 updateAllValuesWithValuesFromContainer:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }
}

- (BOOL)addMember:(id)member toGroup:(id)group error:(id *)error
{
  memberCopy = member;
  groupCopy = group;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();
  addressBook = [memberCopy addressBook];
  v13 = addressBook;
  if (addressBook == self)
  {
    addressBook2 = [groupCopy addressBook];

    if (addressBook2 == self)
    {
      v15 = v11 & isKindOfClass;
      goto LABEL_5;
    }
  }

  else
  {
  }

  v15 = 0;
LABEL_5:
  v16 = [groupCopy id];
  source = [memberCopy source];
  source2 = [groupCopy source];

  if (source == source2 && v16 != -1 && (v15 & 1) != 0)
  {
    groups = [(ABSAddressBook *)self groups];
    v20 = [groups addMemberRecord:memberCopy toRecord:groupCopy];
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"ABAddressBookErrorDomain" code:0 userInfo:0];
    *error = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)removeMember:(id)member fromGroup:(id)group error:(id *)error
{
  memberCopy = member;
  groupCopy = group;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();
  addressBook = [memberCopy addressBook];
  v12 = addressBook;
  if (addressBook != self)
  {

LABEL_4:
    [groupCopy id];
    goto LABEL_5;
  }

  addressBook2 = [groupCopy addressBook];

  if (addressBook2 != self)
  {
    goto LABEL_4;
  }

  if ((([groupCopy id] != -1) & v10 & isKindOfClass) == 1)
  {
    groups = [(ABSAddressBook *)self groups];
    v14 = [groups removeMemberRecord:memberCopy fromRecord:groupCopy];

    goto LABEL_6;
  }

LABEL_5:
  v14 = 0;
LABEL_6:

  return v14;
}

- (id)allGroups
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  groups = [(ABSAddressBook *)self groups];
  records = [groups records];
  allValues = [records allValues];
  v7 = [allValues _cn_map:&__block_literal_global_74];
  v8 = [v3 setWithArray:v7];

  groups2 = [(ABSAddressBook *)self groups];
  deletedRecords = [groups2 deletedRecords];
  allValues2 = [deletedRecords allValues];
  v12 = [allValues2 _cn_map:&__block_literal_global_74];
  [v8 addObjectsFromArray:v12];

  store = [(ABSAddressBook *)self store];
  v14 = [store groupsMatchingPredicate:0 error:0];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v31 + 1) + 8 * i);
        identifier = [v20 identifier];
        v22 = [v8 containsObject:identifier];

        if ((v22 & 1) == 0)
        {
          groups3 = [(ABSAddressBook *)self groups];
          v24 = [groups3 cnImplFetched:v20 creationBlock:&__block_literal_global_77];

          [v24 setAddressBook:self];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v17);
  }

  groups4 = [(ABSAddressBook *)self groups];
  records2 = [groups4 records];
  allValues3 = [records2 allValues];

  if ([allValues3 count])
  {
    v28 = allValues3;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  return v28;
}

id __27__ABSAddressBook_allGroups__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 cnImpl];
  v3 = [v2 identifier];

  return v3;
}

ABSGroup *__27__ABSAddressBook_allGroups__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [ABSGroup alloc];
  v4 = [v2 mutableCopy];

  v5 = [(ABSGroup *)v3 initWithMutableGroup:v4];

  return v5;
}

- (int64_t)groupCount
{
  mEMORY[0x277CFBDB8] = [MEMORY[0x277CFBDB8] sharedInstance];
  isAccessGranted = [mEMORY[0x277CFBDB8] isAccessGranted];

  if (!isAccessGranted)
  {
    return -1;
  }

  allGroups = [(ABSAddressBook *)self allGroups];
  v6 = [allGroups count];

  return v6;
}

- (id)groupWithRecordID:(int)d
{
  v3 = *&d;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:?];
  groups = [(ABSAddressBook *)self groups];
  records = [groups records];
  v8 = [records objectForKey:v5];

  if (!v8)
  {
    groups2 = [(ABSAddressBook *)self groups];
    deletedRecords = [groups2 deletedRecords];
    v11 = [deletedRecords objectForKey:v5];

    if (v11)
    {
      v8 = 0;
    }

    else
    {
      v12 = [MEMORY[0x277CBDB10] predicateForiOSLegacyIdentifier:v3];
      store = [(ABSAddressBook *)self store];
      v14 = [store groupsMatchingPredicate:v12 error:0];

      firstObject = [v14 firstObject];
      if (firstObject)
      {
        groups3 = [(ABSAddressBook *)self groups];
        v8 = [groups3 cnImplFetched:firstObject creationBlock:&__block_literal_global_80];

        [v8 setAddressBook:self];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  return v8;
}

ABSGroup *__36__ABSAddressBook_groupWithRecordID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [ABSGroup alloc];
  v4 = [v2 mutableCopy];

  v5 = [(ABSGroup *)v3 initWithMutableGroup:v4];

  return v5;
}

- (void)updateFetchingAllPropertiesForGroups:(id)groups
{
  v38 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  v27 = [groupsCopy _cn_map:&__block_literal_global_83];
  v26 = [v27 _cn_map:&__block_literal_global_86];
  v5 = [MEMORY[0x277CBDB10] predicateForGroupsWithIdentifiers:?];
  store = [(ABSAddressBook *)self store];
  v25 = v5;
  v7 = [store groupsMatchingPredicate:v5 error:0];

  v8 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        identifier = [v14 identifier];
        [v8 setObject:v14 forKey:identifier];
      }

      v11 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v11);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = groupsCopy;
  v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v28 + 1) + 8 * j);
        cnImpl = [v21 cnImpl];
        identifier2 = [cnImpl identifier];
        v24 = [v8 objectForKey:identifier2];

        if (v24)
        {
          [v21 updateAllValuesWithValuesFromGroup:v24];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v18);
  }
}

- (id)groupsInSource:(id)source
{
  if (source)
  {
    v4 = MEMORY[0x277CBDB10];
    cnImpl = [source cnImpl];
    identifier = [cnImpl identifier];
    v7 = [v4 predicateForGroupsInContainerWithIdentifier:identifier];
  }

  else
  {
    v7 = 0;
  }

  store = [(ABSAddressBook *)self store];
  v9 = [store groupsMatchingPredicate:v7 error:0];

  groups = [(ABSAddressBook *)self groups];
  v11 = [(ABSAddressBook *)self _resultRecordsFromFetchedCNImpls:v9 mergedWithStorage:groups creationBlock:&__block_literal_global_88];

  return v11;
}

ABSGroup *__33__ABSAddressBook_groupsInSource___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [ABSGroup alloc];
  v4 = [v2 mutableCopy];

  v5 = [(ABSGroup *)v3 initWithMutableGroup:v4];

  return v5;
}

+ (int64_t)authorizationStatus
{
  result = [MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0];
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

+ (void)requestAccessWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x277CFBDB8] = [MEMORY[0x277CFBDB8] sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__ABSAddressBook_requestAccessWithCompletion___block_invoke;
  v7[3] = &unk_278A04D78;
  v8 = completionCopy;
  selfCopy = self;
  v6 = completionCopy;
  [mEMORY[0x277CFBDB8] requestAuthorization:1 completionHandler:v7];
}

uint64_t __46__ABSAddressBook_requestAccessWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CFBDB8] sharedInstance];
  v3 = [v2 isAccessGranted];

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3, 0);
  }

  v5 = *(a1 + 40);

  return [v5 callLocalChangeCallbacks:v3];
}

+ (void)callLocalChangeCallbacks:(BOOL)callbacks
{
  callbacksCopy = callbacks;
  obj = self;
  objc_sync_enter(obj);
  if (!CNLinkedOnOrAfter() && callbacksCopy && (_calledLocalChangeCallbacks & 1) == 0)
  {
    _calledLocalChangeCallbacks = 1;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"ABSInvokeAllLocalCallbacksNotification" object:obj];
  }

  objc_sync_exit(obj);
}

- (id)uniqueDatabaseVersionIdentifier
{
  store = [(ABSAddressBook *)self store];
  v7 = 0;
  v3 = [store identifierWithError:&v7];
  v4 = v7;

  if (!v3)
  {
    v5 = +[ABSLog log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ABSAddressBook uniqueDatabaseVersionIdentifier];
    }
  }

  return v3;
}

- (int)saveSequenceCount
{
  store = [(ABSAddressBook *)self store];
  saveSequenceCount = [store saveSequenceCount];

  return saveSequenceCount;
}

@end