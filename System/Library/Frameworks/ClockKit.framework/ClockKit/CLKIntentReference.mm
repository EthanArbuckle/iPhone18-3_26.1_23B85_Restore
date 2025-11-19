@interface CLKIntentReference
+ (Class)_INIntentClass;
- (BOOL)isEqual:(id)a3;
- (CLKIntentReference)initWithCHSIntentReference:(id)a3;
- (CLKIntentReference)initWithCoder:(id)a3;
- (CLKIntentReference)initWithIntent:(id)a3;
- (INIntent)intent;
- (id)_lock_intent;
- (id)description;
- (void)_lock_intent;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLKIntentReference

+ (Class)_INIntentClass
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getINIntentClass_softClass_1;
  v9 = getINIntentClass_softClass_1;
  if (!getINIntentClass_softClass_1)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getINIntentClass_block_invoke_1;
    v5[3] = &unk_278A1E6A0;
    v5[4] = &v6;
    __getINIntentClass_block_invoke_1(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (CLKIntentReference)initWithIntent:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_12;
  }

  v18.receiver = self;
  v18.super_class = CLKIntentReference;
  self = [(CLKIntentReference *)&v18 init];
  if (self)
  {
    v5 = v4;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v6 = getINIntentWithTypedIntentSymbolLoc_ptr_0;
    v27 = getINIntentWithTypedIntentSymbolLoc_ptr_0;
    if (!getINIntentWithTypedIntentSymbolLoc_ptr_0)
    {
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __getINIntentWithTypedIntentSymbolLoc_block_invoke_0;
      v22 = &unk_278A1E6A0;
      v23 = &v24;
      v7 = IntentsLibrary_0();
      v8 = dlsym(v7, "INIntentWithTypedIntent");
      *(v23[1] + 24) = v8;
      getINIntentWithTypedIntentSymbolLoc_ptr_0 = *(v23[1] + 24);
      v6 = v25[3];
    }

    _Block_object_dispose(&v24, 8);
    if (!v6)
    {
      v16 = [CLKComplicationIntentWidgetMigrationConfiguration encodeWithCoder:];
      _Block_object_dispose(&v24, 8);
      _Unwind_Resume(v16);
    }

    v9 = v6(v5);

    objc_storeWeak(&self->_inflatedIntent, v9);
    self->_indexingHash = [v5 _indexingHash];
    v17 = 0;
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v17];
    v11 = v17;
    if (v10)
    {
      intentData = self->_intentData;
      self->_intentData = v10;

      self->_lock._os_unfair_lock_opaque = 0;
      goto LABEL_8;
    }

    v14 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(CLKIntentReference *)v5 initWithIntent:v11, v14];
    }

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

LABEL_8:
  self = self;
  v13 = self;
LABEL_13:

  return v13;
}

- (CLKIntentReference)initWithCHSIntentReference:(id)a3
{
  if (a3)
  {
    v4 = [a3 intent];
    self = [(CLKIntentReference *)self initWithIntent:v4];

    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (INIntent)intent
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(CLKIntentReference *)self _lock_intent];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_lock_intent
{
  WeakRetained = objc_loadWeakRetained(&self->_inflatedIntent);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else
  {
    v6 = MEMORY[0x277CCAAC8];
    v7 = +[CLKIntentReference _INIntentClass];
    intentData = self->_intentData;
    v13 = 0;
    v5 = [v6 unarchivedObjectOfClass:v7 fromData:intentData error:&v13];
    v9 = v13;
    if (v5)
    {
      objc_storeWeak(&self->_inflatedIntent, v5);
      v10 = v5;
    }

    else
    {
      v11 = CLKLoggingObjectForDomain(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [(CLKIntentReference *)v9 _lock_intent];
      }
    }
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInt64:self->_indexingHash withName:@"indexingHash"];
  v5 = [v3 description];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_indexingHash == v4[4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  indexingHash = self->_indexingHash;
  v5 = _CLKIntentReferenceIndexingHashKey;
  v6 = a3;
  [v6 encodeInt64:indexingHash forKey:v5];
  [v6 encodeObject:self->_intentData forKey:_CLKIntentReferenceIntentDataKey];
}

- (CLKIntentReference)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CLKIntentReference;
  v5 = [(CLKIntentReference *)&v9 init];
  if (v5)
  {
    v5->_indexingHash = [v4 decodeInt64ForKey:_CLKIntentReferenceIndexingHashKey];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:_CLKIntentReferenceIntentDataKey];
    intentData = v5->_intentData;
    v5->_intentData = v6;
  }

  return v5;
}

- (void)initWithIntent:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_23702D000, log, OS_LOG_TYPE_FAULT, "Failed to encode intent %@, error %@", &v3, 0x16u);
}

- (void)_lock_intent
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_23702D000, a2, OS_LOG_TYPE_FAULT, "Failed to decode intent: %@", &v2, 0xCu);
}

@end