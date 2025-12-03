@interface ACHTemplateJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (ACHTemplateJournalEntry)initWithCoder:(id)coder;
- (ACHTemplateJournalEntry)initWithTemplate:(id)template provenance:(int64_t)provenance useLegacySyncIdentity:(BOOL)identity action:(int64_t)action;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ACHTemplateJournalEntry

- (ACHTemplateJournalEntry)initWithTemplate:(id)template provenance:(int64_t)provenance useLegacySyncIdentity:(BOOL)identity action:(int64_t)action
{
  templateCopy = template;
  v15.receiver = self;
  v15.super_class = ACHTemplateJournalEntry;
  v12 = [(ACHTemplateJournalEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_action = action;
    objc_storeStrong(&v12->_template, template);
    v13->_provenance = provenance;
    v13->_useLegacySyncIdentity = identity;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ACHTemplateJournalEntry;
  v4 = [(ACHTemplateJournalEntry *)&v8 description];
  provenance = self->_provenance;
  v6 = [v3 stringWithFormat:@"%@(template %@ provenance %lld action %ld)", v4, self->_template, provenance, self->_action];

  return v6;
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  entriesCopy = entries;
  profileCopy = profile;
  database = [profileCopy database];
  v19 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__ACHTemplateJournalEntry_applyEntries_withProfile___block_invoke;
  v16[3] = &unk_2784920A0;
  v17 = entriesCopy;
  v18 = profileCopy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__ACHTemplateJournalEntry_applyEntries_withProfile___block_invoke_2;
  v13[3] = &unk_278490E30;
  v8 = v18;
  v14 = v8;
  v9 = v17;
  v15 = v9;
  v10 = [(HDHealthEntity *)ACHTemplateEntity performWriteTransactionWithHealthDatabase:database error:&v19 block:v16 inaccessibilityHandler:v13];
  v11 = v19;

  if (!v10)
  {
    v12 = ACHLogDatabase();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[ACHTemplateJournalEntry applyEntries:withProfile:];
    }
  }
}

uint64_t __52__ACHTemplateJournalEntry_applyEntries_withProfile___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v22 = a2;
  v21 = [v22 databaseForEntityClass:objc_opt_class()];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = [v8 action];
        if (v9)
        {
          if (v9 != 1)
          {
            goto LABEL_14;
          }

          v10 = [v8 template];
          v29 = v10;
          v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
          v12 = [ACHTemplateEntity _removeTemplates:v11 profile:*(a1 + 40) error:a3];

          if (!v12)
          {
LABEL_14:
            v18 = 0;
            goto LABEL_15;
          }
        }

        else
        {
          v13 = [v8 template];
          v14 = ACHTemplateSyncIdentityFromTemplate(v13, [v8 useLegacySyncIdentity], *(a1 + 40), v22);

          v15 = [v8 template];
          v16 = [v8 provenance];
          v17 = [v14 entity];
          LODWORD(v16) = +[ACHTemplateEntity _insertTemplate:provenance:syncIdentity:database:error:](ACHTemplateEntity, "_insertTemplate:provenance:syncIdentity:database:error:", v15, v16, [v17 persistentID], v21, a3);

          if (!v16)
          {
            goto LABEL_14;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_15:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t __52__ACHTemplateJournalEntry_applyEntries_withProfile___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) database];
  v6 = [v5 addJournalEntries:*(a1 + 40) error:a3];

  return v6;
}

- (ACHTemplateJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ACHTemplateJournalEntry;
  v5 = [(HDJournalEntry *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_action = [coderCopy decodeIntegerForKey:@"action"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"template"];
    if ([v6 length])
    {
      v7 = [objc_alloc(MEMORY[0x277CE8D18]) initWithData:v6];
      if (v7)
      {
        v8 = [objc_alloc(MEMORY[0x277CE8D50]) initWithCodable:v7];
        v9 = v5->_template;
        v5->_template = v8;
      }
    }

    v5->_provenance = [coderCopy decodeInt64ForKey:@"provenance"];
    v5->_useLegacySyncIdentity = 1;
    if ([coderCopy containsValueForKey:@"UseLegacySyncIdentity"])
    {
      v5->_useLegacySyncIdentity = [coderCopy decodeBoolForKey:@"UseLegacySyncIdentity"];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_action forKey:@"action"];
  template = [(ACHTemplateJournalEntry *)self template];
  v5 = ACHCodableFromTemplate();

  data = [v5 data];
  if ([data length])
  {
    [coderCopy encodeObject:data forKey:@"template"];
  }

  [coderCopy encodeInt64:self->_provenance forKey:@"provenance"];
  [coderCopy encodeBool:self->_useLegacySyncIdentity forKey:@"UseLegacySyncIdentity"];
}

+ (void)applyEntries:withProfile:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v0, v1, "Error applying journal entries: %@: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end