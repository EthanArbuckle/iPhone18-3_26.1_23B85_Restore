@interface ABSAddressBook
+ (id)localizedLabelForLabel:(id)a3;
+ (int64_t)authorizationStatus;
+ (void)callLocalChangeCallbacks:(BOOL)a3;
+ (void)initialize;
+ (void)requestAccessWithCompletion:(id)a3;
- (ABSAddressBook)init;
- (ABSAddressBook)initWithOptions:(id)a3 error:(id *)a4;
- (ABSAddressBook)initWithOptions:(id)a3 policy:(int)a4 error:(id *)a5;
- (ABSAddressBook)initWithSettings:(id)a3 error:(id *)a4;
- (BOOL)addMember:(id)a3 toGroup:(id)a4 error:(id *)a5;
- (BOOL)addRecord:(id)a3 error:(id *)a4;
- (BOOL)hasUnsavedChanges;
- (BOOL)linkPerson:(id)a3 toPerson:(id)a4;
- (BOOL)recordUpdated:(id)a3;
- (BOOL)removeMember:(id)a3 fromGroup:(id)a4 error:(id *)a5;
- (BOOL)removeRecord:(id)a3 error:(id *)a4;
- (BOOL)save:(id *)a3;
- (BOOL)unlinkPerson:(id)a3;
- (CNContactStore)store;
- (id)_peoplePreferringExistingRecordsForFetchRequest:(id)a3;
- (id)_resultRecordsFromFetchedCNImpls:(id)a3 mergedWithStorage:(id)a4 creationBlock:(id)a5;
- (id)_sourcesPreferringExistingRecordsFetchedWithPredicate:(id)a3;
- (id)_storageForRecordClass:(Class)a3;
- (id)allGroups;
- (id)allPeople;
- (id)contactsWithIdentifiers:(id)a3 keysToFetch:(id)a4;
- (id)defaultSource;
- (id)findPersonMatchingEmailAddress:(id)a3;
- (id)findPersonMatchingPhoneNumber:(id)a3 country:(id)a4;
- (id)findPersonMatchingURL:(id)a3;
- (id)groupWithRecordID:(int)a3;
- (id)groupsInSource:(id)a3;
- (id)localSource;
- (id)mePerson;
- (id)peopleInGroup:(id)a3 sortOrder:(unsigned int)a4;
- (id)peopleInSource:(id)a3 sortOrder:(unsigned int)a4;
- (id)peopleLinkedToPerson:(id)a3;
- (id)peopleMatchingNameString:(id)a3;
- (id)peopleWithCNIdentifiers:(id)a3;
- (id)personWithRecordID:(int)a3;
- (id)sourceForRecord:(id)a3;
- (id)sourceWithRecordID:(int)a3;
- (id)uniqueDatabaseVersionIdentifier;
- (int)saveSequenceCount;
- (int64_t)groupCount;
- (int64_t)personCount;
- (void)completePerson:(id)a3 withKeysToFetch:(id)a4;
- (void)registerExternalChangeCallback:(void *)a3 context:(void *)a4;
- (void)revert;
- (void)unregisterExternalChangeCallback:(void *)a3 context:(void *)a4;
- (void)updateFetchingAllPropertiesForGroups:(id)a3;
- (void)updateFetchingAllPropertiesForSources:(id)a3;
- (void)updatePeople:(id)a3 refetchingProperties:(id)a4;
@end

@implementation ABSAddressBook

+ (void)initialize
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___ABSAddressBook;
  objc_msgSendSuper2(&v3, sel_initialize);
  if (objc_opt_class() == a1)
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

- (ABSAddressBook)initWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[ABSAddressBookSettings alloc] initWithOptions:v6];

  v8 = [(ABSAddressBook *)self initWithSettings:v7 error:a4];
  return v8;
}

- (ABSAddressBook)initWithOptions:(id)a3 policy:(int)a4 error:(id *)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = [[ABSAddressBookSettings alloc] initWithOptions:v8 policy:v6];

  v10 = [(ABSAddressBook *)self initWithSettings:v9 error:a5];
  return v10;
}

- (ABSAddressBook)initWithSettings:(id)a3 error:(id *)a4
{
  v6 = a3;
  v29.receiver = self;
  v29.super_class = ABSAddressBook;
  v7 = [(ABSAddressBook *)&v29 init];
  if (v7)
  {
    v8 = [MEMORY[0x277CFBDB8] sharedInstance];
    v9 = [v8 authorizationStatus];

    if (v9 == 1 && ![v6 policy])
    {
      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ABAddressBookErrorDomain" code:1 userInfo:0];
      v23 = v24;
      if (a4)
      {
        v25 = v24;
        *a4 = v23;
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

    v18 = [v6 contactStoreFuture];
    storeFuture = v7->_storeFuture;
    v7->_storeFuture = v18;

    v20 = [v6 newFaultHandlerWithStorage:v7->_contacts];
    faultHandler = v7->_faultHandler;
    v7->_faultHandler = v20;

    if (!v9 && [v6 policy] == 1)
    {
      v22 = [MEMORY[0x277CFBDB8] sharedInstance];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __41__ABSAddressBook_initWithSettings_error___block_invoke;
      v27[3] = &unk_278A04B50;
      v7 = v7;
      v28 = v7;
      [v22 requestAuthorization:1 completionHandler:v27];

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
  v2 = [(ABSAddressBook *)self storeFuture];
  v3 = [v2 result:0];

  return v3;
}

- (id)_storageForRecordClass:(Class)a3
{
  if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    v5 = [(ABSAddressBook *)self contacts];
  }

  else if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    v5 = [(ABSAddressBook *)self groups];
  }

  else if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    v5 = [(ABSAddressBook *)self sources];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)addRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (+[ABSAddressBook authorizationStatus]!= 3)
  {
    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"ABAddressBookErrorDomain" code:1 userInfo:0];
      *a4 = v9 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [v6 addressBook];

  if (v7)
  {
    goto LABEL_7;
  }

  v8 = [(ABSAddressBook *)self _storageForRecordClass:objc_opt_class()];
  [v6 setAddressBook:self];
  [v8 addRecord:v6];

  v9 = 1;
LABEL_8:

  return v9;
}

- (BOOL)recordUpdated:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 addressBook], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == self))
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

- (BOOL)removeRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[ABSAddressBook authorizationStatus];
  if (v7 == 3)
  {
    v8 = [(ABSAddressBook *)self _storageForRecordClass:objc_opt_class()];
    [v8 deleteRecord:v6];
  }

  else if (a4)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ABAddressBookErrorDomain" code:1 userInfo:0];
  }

  return v7 == 3;
}

- (BOOL)save:(id *)a3
{
  v197 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CFBDB8] sharedInstance];
  v6 = [v5 isAccessGranted];

  if (v6)
  {
    v120 = a3;
    v7 = objc_alloc_init(MEMORY[0x277CBDBA0]);
    v8 = [(ABSAddressBook *)self sources];
    v9 = [(ABSAddressBook *)self contacts];
    v123 = self;
    v130 = [(ABSAddressBook *)self groups];
    v179 = 0u;
    v180 = 0u;
    v181 = 0u;
    v182 = 0u;
    v10 = [v8 insertedRecords];
    v11 = [v10 countByEnumeratingWithState:&v179 objects:v196 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v179 + 1) + 8 * i) cnImpl];
          [v7 addContainer:v15 toAccountWithIdentifier:0];
        }

        v12 = [v10 countByEnumeratingWithState:&v179 objects:v196 count:16];
      }

      while (v12);
    }

    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    v16 = [v8 updatedRecords];
    v17 = [v16 allValues];

    v18 = [v17 countByEnumeratingWithState:&v175 objects:v195 count:16];
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
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v175 + 1) + 8 * j) cnImpl];
          [v7 updateContainer:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v175 objects:v195 count:16];
      }

      while (v19);
    }

    v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v172 = 0u;
    v23 = [v8 deletedRecords];
    v24 = [v23 allValues];

    v25 = [v24 countByEnumeratingWithState:&v171 objects:v194 count:16];
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
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v171 + 1) + 8 * k) cnImpl];
          [v7 deleteContainer:v29];
        }

        v26 = [v24 countByEnumeratingWithState:&v171 objects:v194 count:16];
      }

      while (v26);
    }

    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v30 = [v9 insertedRecords];
    v31 = [v30 countByEnumeratingWithState:&v167 objects:v193 count:16];
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
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v167 + 1) + 8 * m);
          v36 = [v35 source];
          v37 = [v35 cnImpl];
          v38 = [v36 CNIdentifierString];
          [v7 addContact:v37 toContainerWithIdentifier:v38];
        }

        v32 = [v30 countByEnumeratingWithState:&v167 objects:v193 count:16];
      }

      while (v32);
    }

    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    v39 = [v9 deletedRecords];
    v40 = [v39 allValues];

    v41 = [v40 countByEnumeratingWithState:&v163 objects:v192 count:16];
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
            objc_enumerationMutation(v40);
          }

          v45 = [*(*(&v163 + 1) + 8 * n) cnImpl];
          [v7 deleteContact:v45];
        }

        v42 = [v40 countByEnumeratingWithState:&v163 objects:v192 count:16];
      }

      while (v42);
    }

    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v46 = [v9 updatedRecords];
    v47 = [v46 allValues];

    v48 = [v47 countByEnumeratingWithState:&v159 objects:v191 count:16];
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
            objc_enumerationMutation(v47);
          }

          v52 = [*(*(&v159 + 1) + 8 * ii) cnImpl];
          [v7 updateContact:v52];
        }

        v49 = [v47 countByEnumeratingWithState:&v159 objects:v191 count:16];
      }

      while (v49);
    }

    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v53 = [v130 insertedRecords];
    v54 = [v53 countByEnumeratingWithState:&v155 objects:v190 count:16];
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
            objc_enumerationMutation(v53);
          }

          v58 = *(*(&v155 + 1) + 8 * jj);
          v59 = [v58 source];
          v60 = [v58 cnImpl];
          v61 = [v59 CNIdentifierString];
          [v7 addGroup:v60 toContainerWithIdentifier:v61];
        }

        v55 = [v53 countByEnumeratingWithState:&v155 objects:v190 count:16];
      }

      while (v55);
    }

    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v62 = [v130 deletedRecords];
    v63 = [v62 allValues];

    v64 = [v63 countByEnumeratingWithState:&v151 objects:v189 count:16];
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
            objc_enumerationMutation(v63);
          }

          v68 = [*(*(&v151 + 1) + 8 * kk) cnImpl];
          [v7 deleteGroup:v68];
        }

        v65 = [v63 countByEnumeratingWithState:&v151 objects:v189 count:16];
      }

      while (v65);
    }

    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v69 = [v130 updatedRecords];
    v70 = [v69 allValues];

    v71 = [v70 countByEnumeratingWithState:&v147 objects:v188 count:16];
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
            objc_enumerationMutation(v70);
          }

          v75 = [*(*(&v147 + 1) + 8 * mm) cnImpl];
          [v7 updateGroup:v75];
        }

        v72 = [v70 countByEnumeratingWithState:&v147 objects:v188 count:16];
      }

      while (v72);
    }

    v121 = v9;
    v122 = v8;

    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    obj = [v130 recordsWithPendingMembershipAdditions];
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
          v78 = [v130 addedMembersForRecord:{v77, v120}];
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
                  v84 = [v83 cnImpl];
                  v85 = [v77 cnImpl];
                  [v7 addMember:v84 toGroup:v85];
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
    obja = [v130 recordsWithPendingMembershipDeletions];
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
          v88 = [v130 removedMembersForRecord:{v87, v120}];
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
                  v94 = [v93 cnImpl];
                  v95 = [v87 cnImpl];
                  [v7 removeMember:v94 fromGroup:v95];
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

    v96 = [(ABSAddressBook *)v123 store];
    v97 = [v96 executeSaveRequest:v7 error:v120];

    if (v120)
    {
      if (*v120)
      {
        v98 = [*v120 domain];
        v99 = [v98 isEqualToString:*MEMORY[0x277CBD198]];

        if (v99)
        {
          if ([*v120 code] == 100)
          {
            *v120 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ABAddressBookErrorDomain" code:1 userInfo:0];
          }
        }
      }
    }

    if (v97)
    {
      v100 = [(ABSAddressBook *)v123 contacts];
      v101 = [v100 insertedRecords];
      v102 = [v101 count];

      if (v102)
      {
        v103 = [(ABSAddressBook *)v123 contacts];
        v104 = [v103 insertedRecords];
        v183 = *MEMORY[0x277CBD010];
        v105 = [MEMORY[0x277CBEA60] arrayWithObjects:&v183 count:1];
        [(ABSAddressBook *)v123 updatePeople:v104 refetchingProperties:v105];
      }

      v106 = [(ABSAddressBook *)v123 contacts];
      [v106 commitPendingChanges];

      v107 = [(ABSAddressBook *)v123 groups];
      v108 = [v107 insertedRecords];
      v109 = [v108 count];

      if (v109)
      {
        v110 = [(ABSAddressBook *)v123 groups];
        v111 = [v110 insertedRecords];
        [(ABSAddressBook *)v123 updateFetchingAllPropertiesForGroups:v111];
      }

      v112 = [(ABSAddressBook *)v123 groups];
      [v112 commitPendingChanges];

      v113 = [(ABSAddressBook *)v123 sources];
      v114 = [v113 insertedRecords];
      v115 = [v114 count];

      if (v115)
      {
        v116 = [(ABSAddressBook *)v123 sources];
        v117 = [v116 insertedRecords];
        [(ABSAddressBook *)v123 updateFetchingAllPropertiesForSources:v117];
      }

      v118 = [(ABSAddressBook *)v123 sources];
      [v118 commitPendingChanges];
    }
  }

  else if (a3)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"ABAddressBookErrorDomain" code:1 userInfo:0];
    *a3 = LOBYTE(v97) = 0;
  }

  else
  {
    LOBYTE(v97) = 0;
  }

  return v97;
}

- (BOOL)hasUnsavedChanges
{
  v3 = [(ABSAddressBook *)self groups];
  if ([v3 hasUnsavedChanges])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(ABSAddressBook *)self contacts];
    if ([v5 hasUnsavedChanges])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(ABSAddressBook *)self sources];
      v4 = [v6 hasUnsavedChanges];
    }
  }

  return v4;
}

- (void)revert
{
  v3 = [(ABSAddressBook *)self groups];
  [v3 revert];

  v4 = [(ABSAddressBook *)self contacts];
  [v4 revert];

  v5 = [(ABSAddressBook *)self sources];
  [v5 revert];
}

- (void)registerExternalChangeCallback:(void *)a3 context:(void *)a4
{
  v7 = [(ABSAddressBook *)self changeCallbacks];
  v6 = [MEMORY[0x277CCACC8] currentThread];
  [v7 addExternalCallback:a3 onThread:v6 withContext:a4];
}

- (void)unregisterExternalChangeCallback:(void *)a3 context:(void *)a4
{
  v6 = [(ABSAddressBook *)self changeCallbacks];
  [v6 removeExternalCallback:a3 withContext:a4];
}

+ (id)localizedLabelForLabel:(id)a3
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:v4 table:@"Localized"];

  return v6;
}

- (int64_t)personCount
{
  v30[1] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = -1;
  v3 = [MEMORY[0x277CFBDB8] sharedInstance];
  v4 = [v3 isAccessGranted];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBDA70]);
    v30[0] = *MEMORY[0x277CBD018];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    v7 = [v5 initWithKeysToFetch:v6];

    v8 = MEMORY[0x277CBEB98];
    v9 = [(ABSAddressBook *)self contacts];
    v10 = [v9 deletedRecords];
    v11 = [v10 allValues];
    v12 = [v11 _cn_map:&__block_literal_global_11];
    v13 = [v8 setWithArray:v12];

    [v7 setUnifyResults:0];
    v27[3] = 0;
    v14 = [(ABSAddressBook *)self store];
    v25 = 0;
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __29__ABSAddressBook_personCount__block_invoke_2;
    v22 = &unk_278A04B98;
    v15 = v13;
    v23 = v15;
    v24 = &v26;
    LOBYTE(v10) = [v14 enumerateContactsWithFetchRequest:v7 error:&v25 usingBlock:&v19];
    v16 = v25;

    if ((v10 & 1) == 0)
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
  v7 = [(ABSAddressBook *)self contacts];
  v8 = [v7 records];
  v9 = [v8 allValues];
  v10 = [v9 _cn_map:&__block_literal_global_30];
  v11 = [v6 setWithArray:v10];

  v12 = [(ABSAddressBook *)self contacts];
  v13 = [v12 deletedRecords];
  v14 = [v13 allValues];
  v15 = [v14 _cn_map:&__block_literal_global_30];
  [v11 addObjectsFromArray:v15];

  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [(ABSAddressBook *)self store];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __27__ABSAddressBook_allPeople__block_invoke_2;
  v36[3] = &unk_278A04BC0;
  v18 = v11;
  v37 = v18;
  v19 = v16;
  v38 = v19;
  [v17 enumerateContactsWithFetchRequest:v5 error:0 usingBlock:v36];

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
        v26 = [(ABSAddressBook *)self contacts];
        v27 = [v26 cnImplFetched:v25 creationBlock:&__block_literal_global_35];

        [v27 setAddressBook:self];
      }

      v22 = [v20 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v22);
  }

  v28 = [(ABSAddressBook *)self contacts];
  v29 = [v28 records];
  v30 = [v29 allValues];

  return v30;
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

- (id)peopleWithCNIdentifiers:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v51 = [MEMORY[0x277CBEB18] array];
  v45 = [MEMORY[0x277CBEB18] array];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v3;
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
        v6 = [(ABSAddressBook *)self contacts];
        v7 = [v6 records];
        v8 = [v7 allValues];

        v9 = [v8 countByEnumeratingWithState:&v62 objects:v72 count:16];
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
                objc_enumerationMutation(v8);
              }

              v14 = *(*(&v62 + 1) + 8 * i);
              v15 = [v14 cnImpl];
              v16 = [v15 identifier];
              v17 = [v16 isEqual:v5];

              if (v17)
              {
                [v51 addObject:v14];
                v11 = 1;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v62 objects:v72 count:16];
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
        v18 = [(ABSAddressBook *)self contacts];
        v19 = [v18 deletedRecords];
        v20 = [v19 allValues];

        v21 = [v20 countByEnumeratingWithState:&v58 objects:v71 count:16];
        if (!v21)
        {

LABEL_28:
          [v45 addObject:v5];
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
              objc_enumerationMutation(v20);
            }

            v26 = [*(*(&v58 + 1) + 8 * j) cnImpl];
            v27 = [v26 identifier];
            v28 = [v27 isEqual:v5];

            v23 |= v28;
          }

          v22 = [v20 countByEnumeratingWithState:&v58 objects:v71 count:16];
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

  v32 = [MEMORY[0x277CBDA58] predicateForContactsWithIdentifiers:v45];
  [v31 setPredicate:v32];

  [v31 setUnifyResults:0];
  [v31 setMutableObjects:1];
  v33 = [MEMORY[0x277CBEB18] array];
  v34 = [(ABSAddressBook *)self store];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __42__ABSAddressBook_peopleWithCNIdentifiers___block_invoke;
  v56[3] = &unk_278A04C08;
  v35 = v33;
  v57 = v35;
  [v34 enumerateContactsWithFetchRequest:v31 error:0 usingBlock:v56];

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
        v42 = [(ABSAddressBook *)self contacts];
        v43 = [v42 cnImplFetched:v41 creationBlock:&__block_literal_global_37];

        [v43 setAddressBook:self];
        [v51 addObject:v43];
      }

      v38 = [v36 countByEnumeratingWithState:&v52 objects:v70 count:16];
    }

    while (v38);
  }

  return v51;
}

ABSPerson *__42__ABSAddressBook_peopleWithCNIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ABSPerson alloc] initWithMutableContact:v2];

  return v3;
}

- (id)personWithRecordID:(int)a3
{
  v3 = *&a3;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v6 = [(ABSAddressBook *)self contacts];
  v7 = [v6 records];
  v8 = [v7 objectForKey:v5];

  if (!v8)
  {
    v9 = [(ABSAddressBook *)self contacts];
    v10 = [v9 deletedRecords];
    v11 = [v10 objectForKey:v5];

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
      v16 = [MEMORY[0x277CBEB18] array];
      v17 = [(ABSAddressBook *)self store];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __37__ABSAddressBook_personWithRecordID___block_invoke;
      v24[3] = &unk_278A04C08;
      v18 = v16;
      v25 = v18;
      [v17 enumerateContactsWithFetchRequest:v14 error:0 usingBlock:v24];

      v19 = [v18 lastObject];
      if (v19)
      {
        v20 = v19;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = [v20 mutableCopy];

          v20 = v21;
        }

        v22 = [(ABSAddressBook *)self contacts];
        v8 = [v22 cnImplFetched:v20 creationBlock:&__block_literal_global_41];

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

- (id)findPersonMatchingURL:(id)a3
{
  v4 = [MEMORY[0x277CBDA58] predicateForContactMatchingURLString:a3];
  v5 = [ABSPersonFetchRequest alloc];
  v6 = [(ABSPersonFetchRequest *)v5 initWithPredicate:v4 additionalKeysToFetch:MEMORY[0x277CBEBF8] sortOrder:0];
  v7 = [(ABSAddressBook *)self _peoplePreferringExistingRecordsForFetchRequest:v6];
  v8 = [v7 firstObject];

  return v8;
}

- (id)findPersonMatchingEmailAddress:(id)a3
{
  v4 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:a3];
  v5 = [ABSPersonFetchRequest alloc];
  v6 = [(ABSPersonFetchRequest *)v5 initWithPredicate:v4 additionalKeysToFetch:MEMORY[0x277CBEBF8] sortOrder:0];
  v7 = [(ABSAddressBook *)self _peoplePreferringExistingRecordsForFetchRequest:v6];
  v8 = [v7 firstObject];

  return v8;
}

- (id)findPersonMatchingPhoneNumber:(id)a3 country:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBDA58];
  v7 = MEMORY[0x277CBDB70];
  v8 = a4;
  v9 = a3;
  v10 = [[v7 alloc] initWithStringValue:v9 countryCode:v8];

  v11 = [v6 predicateForContactsMatchingPhoneNumber:v10];

  v12 = [ABSPersonFetchRequest alloc];
  v18[0] = *MEMORY[0x277CBD098];
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v14 = [(ABSPersonFetchRequest *)v12 initWithPredicate:v11 additionalKeysToFetch:v13 sortOrder:0];

  v15 = [(ABSAddressBook *)self _peoplePreferringExistingRecordsForFetchRequest:v14];
  v16 = [v15 firstObject];

  return v16;
}

- (id)contactsWithIdentifiers:(id)a3 keysToFetch:(id)a4
{
  v6 = MEMORY[0x277CBDA70];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithKeysToFetch:v7];

  v10 = [MEMORY[0x277CBDA58] predicateForContactsWithIdentifiers:v8];

  [v9 setPredicate:v10];
  [v9 setUnifyResults:0];
  [v9 setMutableObjects:0];
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [(ABSAddressBook *)self store];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__ABSAddressBook_contactsWithIdentifiers_keysToFetch___block_invoke;
  v16[3] = &unk_278A04C08;
  v17 = v11;
  v13 = v11;
  [v12 enumerateContactsWithFetchRequest:v9 error:0 usingBlock:v16];

  v14 = [v13 copy];

  return v14;
}

- (void)updatePeople:(id)a3 refetchingProperties:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v28 = [v6 _cn_map:&__block_literal_global_45];
  v29 = v7;
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
        v16 = [v15 identifier];
        [v9 setObject:v15 forKey:v16];
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
  v17 = v6;
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
        v23 = [v22 cnImpl];
        v24 = [v23 identifier];
        v25 = [v9 objectForKey:v24];

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

- (void)completePerson:(id)a3 withKeysToFetch:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ABSAddressBook *)self faultHandler];
  [v8 completePerson:v7 withKeysToFetch:v6];
}

- (id)_resultRecordsFromFetchedCNImpls:(id)a3 mergedWithStorage:(id)a4 creationBlock:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v26 = a5;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v7;
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
        v17 = [v8 records];
        v18 = [v17 objectForKey:v16];

        if (v18)
        {
          [v9 addObject:v18];
        }

        else
        {
          v19 = [v8 deletedRecords];
          v20 = [v19 objectForKey:v16];

          if (!v20)
          {
            v21 = [v8 cnImplFetched:v15 creationBlock:v26];
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

- (id)_peoplePreferringExistingRecordsForFetchRequest:(id)a3
{
  v4 = a3;
  v5 = +[ABSPerson defaultKeysToFetch];
  v6 = *MEMORY[0x277CFBCF8];
  v7 = [v4 additionalKeysToFetch];
  LOBYTE(v6) = (*(v6 + 16))(v6, v7);

  if ((v6 & 1) == 0)
  {
    v8 = [v4 additionalKeysToFetch];
    v9 = [v5 arrayByAddingObjectsFromArray:v8];

    v5 = v9;
  }

  v10 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:v5];
  v11 = [v4 predicate];
  [v10 setPredicate:v11];

  [v10 setUnifyResults:0];
  [v10 setMutableObjects:1];
  if ([v4 sortOrder])
  {
    if ([v4 sortOrder] == 1)
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
  v13 = [MEMORY[0x277CBEB18] array];
  v14 = [(ABSAddressBook *)self store];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__ABSAddressBook__peoplePreferringExistingRecordsForFetchRequest___block_invoke;
  v19[3] = &unk_278A04C08;
  v20 = v13;
  v15 = v13;
  [v14 enumerateContactsWithFetchRequest:v10 error:0 usingBlock:v19];

  v16 = [(ABSAddressBook *)self contacts];
  v17 = [(ABSAddressBook *)self _resultRecordsFromFetchedCNImpls:v15 mergedWithStorage:v16 creationBlock:&__block_literal_global_56];

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

- (id)peopleInSource:(id)a3 sortOrder:(unsigned int)a4
{
  v4 = *&a4;
  if (a3)
  {
    v6 = MEMORY[0x277CBDA58];
    v7 = [a3 cnImpl];
    v8 = [v7 identifier];
    v9 = [v6 predicateForContactsInContainerWithIdentifier:v8];
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

- (id)peopleInGroup:(id)a3 sortOrder:(unsigned int)a4
{
  v4 = *&a4;
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBDA70];
  v7 = a3;
  v8 = [v6 alloc];
  v25[0] = *MEMORY[0x277CBD018];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v10 = [v8 initWithKeysToFetch:v9];

  v11 = MEMORY[0x277CBDA58];
  v12 = [v7 cnImpl];

  v13 = [v12 identifier];
  v14 = [v11 predicateForContactsInGroupWithIdentifier:v13];
  [v10 setPredicate:v14];

  [v10 setUnifyResults:0];
  v15 = [MEMORY[0x277CBEB18] array];
  v16 = [(ABSAddressBook *)self store];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __42__ABSAddressBook_peopleInGroup_sortOrder___block_invoke;
  v23[3] = &unk_278A04C08;
  v17 = v15;
  v24 = v17;
  [v16 enumerateContactsWithFetchRequest:v10 error:0 usingBlock:v23];

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

- (id)peopleMatchingNameString:(id)a3
{
  v4 = MEMORY[0x277CBDA70];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = +[ABSPerson defaultKeysToFetch];
  v8 = [v6 initWithKeysToFetch:v7];

  v9 = [MEMORY[0x277CBDA58] predicateForContactsMatchingName:v5];

  [v8 setPredicate:v9];
  [v8 setUnifyResults:0];
  [v8 setMutableObjects:1];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [(ABSAddressBook *)self store];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __43__ABSAddressBook_peopleMatchingNameString___block_invoke;
  v16[3] = &unk_278A04C08;
  v17 = v10;
  v12 = v10;
  [v11 enumerateContactsWithFetchRequest:v8 error:0 usingBlock:v16];

  v13 = [(ABSAddressBook *)self contacts];
  v14 = [(ABSAddressBook *)self _resultRecordsFromFetchedCNImpls:v12 mergedWithStorage:v13 creationBlock:&__block_literal_global_58_0];

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
  v3 = [MEMORY[0x277CBDA58] predicateForMeContact];
  v4 = [ABSPersonFetchRequest alloc];
  v5 = [(ABSPersonFetchRequest *)v4 initWithPredicate:v3 additionalKeysToFetch:MEMORY[0x277CBEBF8] sortOrder:0];
  v6 = [(ABSAddressBook *)self _peoplePreferringExistingRecordsForFetchRequest:v5];
  v7 = [v6 firstObject];

  return v7;
}

- (id)peopleLinkedToPerson:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBDA58];
  v5 = [a3 cnImpl];
  v6 = [v4 predicateForContactsLinkedToContact:v5];

  v7 = [ABSPersonFetchRequest alloc];
  v12[0] = *MEMORY[0x277CBD048];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [(ABSPersonFetchRequest *)v7 initWithPredicate:v6 additionalKeysToFetch:v8 sortOrder:+[ABSPerson sortOrdering]];

  v10 = [(ABSAddressBook *)self _peoplePreferringExistingRecordsForFetchRequest:v9];

  return v10;
}

- (BOOL)linkPerson:(id)a3 toPerson:(id)a4
{
  v6 = MEMORY[0x277CBDBA0];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [v8 cnImpl];

  v11 = [v7 cnImpl];

  [v9 linkContact:v10 toContact:v11];
  v12 = [(ABSAddressBook *)self store];
  v17 = 0;
  v13 = [v12 executeSaveRequest:v9 error:&v17];
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

- (BOOL)unlinkPerson:(id)a3
{
  v4 = MEMORY[0x277CBDBA0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v5 cnImpl];

  [v6 unlinkContact:v7];
  v8 = [(ABSAddressBook *)self store];
  v13 = 0;
  v9 = [v8 executeSaveRequest:v6 error:&v13];
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

- (id)_sourcesPreferringExistingRecordsFetchedWithPredicate:(id)a3
{
  v4 = a3;
  v5 = [(ABSAddressBook *)self store];
  v6 = [v5 containersMatchingPredicate:v4 error:0];

  v7 = [(ABSAddressBook *)self sources];
  v8 = [(ABSAddressBook *)self _resultRecordsFromFetchedCNImpls:v6 mergedWithStorage:v7 creationBlock:&__block_literal_global_61_0];

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

- (id)sourceWithRecordID:(int)a3
{
  v4 = [MEMORY[0x277CBDAD8] predicateForiOSLegacyIdentifier:*&a3];
  v5 = [(ABSAddressBook *)self _sourcesPreferringExistingRecordsFetchedWithPredicate:v4];
  v6 = [v5 firstObject];

  return v6;
}

- (id)defaultSource
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [(ABSAddressBook *)self store];
  v4 = [v3 defaultContainerIdentifier];

  if (v4)
  {
    v5 = MEMORY[0x277CBDAD8];
    v11[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v7 = [v5 predicateForContainersWithIdentifiers:v6];
    v8 = [(ABSAddressBook *)self _sourcesPreferringExistingRecordsFetchedWithPredicate:v7];
    v9 = [v8 firstObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)localSource
{
  v3 = [MEMORY[0x277CBDAD8] predicateForLocalContainerIncludingDisabled:0];
  v4 = [(ABSAddressBook *)self _sourcesPreferringExistingRecordsFetchedWithPredicate:v3];
  v5 = [v4 firstObject];

  return v5;
}

- (id)sourceForRecord:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277CBDAD8];
    v6 = [v4 cnImpl];
    v7 = [v6 identifier];
    v8 = [v5 predicateForContainerOfContactWithIdentifier:v7];
LABEL_5:
    v10 = v8;

LABEL_6:
    v11 = [(ABSAddressBook *)self _sourcesPreferringExistingRecordsFetchedWithPredicate:v10];
    v12 = [v11 firstObject];

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = MEMORY[0x277CBDAD8];
    v6 = [v4 cnImpl];
    v7 = [v6 identifier];
    v8 = [v9 predicateForContainerOfGroupWithIdentifier:v7];
    goto LABEL_5;
  }

  objc_opt_class();
  v10 = 0;
  v12 = 0;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v12;
}

- (void)updateFetchingAllPropertiesForSources:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = [v4 _cn_map:&__block_literal_global_65];
  v17 = [v18 _cn_map:&__block_literal_global_68];
  v5 = [MEMORY[0x277CBDAD8] predicateForContainersWithIdentifiers:?];
  v6 = [(ABSAddressBook *)self store];
  v7 = [v6 containersMatchingPredicate:v5 error:0];

  v8 = [v7 _cn_indexBy:&__block_literal_global_71];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v4;
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
        v15 = [v14 CNIdentifierString];
        v16 = [v8 objectForKey:v15];

        [v14 updateAllValuesWithValuesFromContainer:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }
}

- (BOOL)addMember:(id)a3 toGroup:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();
  v12 = [v8 addressBook];
  v13 = v12;
  if (v12 == self)
  {
    v14 = [v9 addressBook];

    if (v14 == self)
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
  v16 = [v9 id];
  v17 = [v8 source];
  v18 = [v9 source];

  if (v17 == v18 && v16 != -1 && (v15 & 1) != 0)
  {
    v19 = [(ABSAddressBook *)self groups];
    v20 = [v19 addMemberRecord:v8 toRecord:v9];
  }

  else if (a5)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"ABAddressBookErrorDomain" code:0 userInfo:0];
    *a5 = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)removeMember:(id)a3 fromGroup:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();
  v11 = [v7 addressBook];
  v12 = v11;
  if (v11 != self)
  {

LABEL_4:
    [v8 id];
    goto LABEL_5;
  }

  v13 = [v8 addressBook];

  if (v13 != self)
  {
    goto LABEL_4;
  }

  if ((([v8 id] != -1) & v10 & isKindOfClass) == 1)
  {
    v16 = [(ABSAddressBook *)self groups];
    v14 = [v16 removeMemberRecord:v7 fromRecord:v8];

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
  v4 = [(ABSAddressBook *)self groups];
  v5 = [v4 records];
  v6 = [v5 allValues];
  v7 = [v6 _cn_map:&__block_literal_global_74];
  v8 = [v3 setWithArray:v7];

  v9 = [(ABSAddressBook *)self groups];
  v10 = [v9 deletedRecords];
  v11 = [v10 allValues];
  v12 = [v11 _cn_map:&__block_literal_global_74];
  [v8 addObjectsFromArray:v12];

  v13 = [(ABSAddressBook *)self store];
  v14 = [v13 groupsMatchingPredicate:0 error:0];

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
        v21 = [v20 identifier];
        v22 = [v8 containsObject:v21];

        if ((v22 & 1) == 0)
        {
          v23 = [(ABSAddressBook *)self groups];
          v24 = [v23 cnImplFetched:v20 creationBlock:&__block_literal_global_77];

          [v24 setAddressBook:self];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v17);
  }

  v25 = [(ABSAddressBook *)self groups];
  v26 = [v25 records];
  v27 = [v26 allValues];

  if ([v27 count])
  {
    v28 = v27;
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
  v3 = [MEMORY[0x277CFBDB8] sharedInstance];
  v4 = [v3 isAccessGranted];

  if (!v4)
  {
    return -1;
  }

  v5 = [(ABSAddressBook *)self allGroups];
  v6 = [v5 count];

  return v6;
}

- (id)groupWithRecordID:(int)a3
{
  v3 = *&a3;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v6 = [(ABSAddressBook *)self groups];
  v7 = [v6 records];
  v8 = [v7 objectForKey:v5];

  if (!v8)
  {
    v9 = [(ABSAddressBook *)self groups];
    v10 = [v9 deletedRecords];
    v11 = [v10 objectForKey:v5];

    if (v11)
    {
      v8 = 0;
    }

    else
    {
      v12 = [MEMORY[0x277CBDB10] predicateForiOSLegacyIdentifier:v3];
      v13 = [(ABSAddressBook *)self store];
      v14 = [v13 groupsMatchingPredicate:v12 error:0];

      v15 = [v14 firstObject];
      if (v15)
      {
        v16 = [(ABSAddressBook *)self groups];
        v8 = [v16 cnImplFetched:v15 creationBlock:&__block_literal_global_80];

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

- (void)updateFetchingAllPropertiesForGroups:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = [v4 _cn_map:&__block_literal_global_83];
  v26 = [v27 _cn_map:&__block_literal_global_86];
  v5 = [MEMORY[0x277CBDB10] predicateForGroupsWithIdentifiers:?];
  v6 = [(ABSAddressBook *)self store];
  v25 = v5;
  v7 = [v6 groupsMatchingPredicate:v5 error:0];

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
        v15 = [v14 identifier];
        [v8 setObject:v14 forKey:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v11);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = v4;
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
        v22 = [v21 cnImpl];
        v23 = [v22 identifier];
        v24 = [v8 objectForKey:v23];

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

- (id)groupsInSource:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CBDB10];
    v5 = [a3 cnImpl];
    v6 = [v5 identifier];
    v7 = [v4 predicateForGroupsInContainerWithIdentifier:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(ABSAddressBook *)self store];
  v9 = [v8 groupsMatchingPredicate:v7 error:0];

  v10 = [(ABSAddressBook *)self groups];
  v11 = [(ABSAddressBook *)self _resultRecordsFromFetchedCNImpls:v9 mergedWithStorage:v10 creationBlock:&__block_literal_global_88];

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

+ (void)requestAccessWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CFBDB8] sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__ABSAddressBook_requestAccessWithCompletion___block_invoke;
  v7[3] = &unk_278A04D78;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  [v5 requestAuthorization:1 completionHandler:v7];
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

+ (void)callLocalChangeCallbacks:(BOOL)a3
{
  v3 = a3;
  obj = a1;
  objc_sync_enter(obj);
  if (!CNLinkedOnOrAfter() && v3 && (_calledLocalChangeCallbacks & 1) == 0)
  {
    _calledLocalChangeCallbacks = 1;
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 postNotificationName:@"ABSInvokeAllLocalCallbacksNotification" object:obj];
  }

  objc_sync_exit(obj);
}

- (id)uniqueDatabaseVersionIdentifier
{
  v2 = [(ABSAddressBook *)self store];
  v7 = 0;
  v3 = [v2 identifierWithError:&v7];
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
  v2 = [(ABSAddressBook *)self store];
  v3 = [v2 saveSequenceCount];

  return v3;
}

@end