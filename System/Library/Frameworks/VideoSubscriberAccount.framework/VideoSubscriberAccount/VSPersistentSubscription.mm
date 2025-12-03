@interface VSPersistentSubscription
+ (id)keyPathsForValuesAffectingDerivedSubscriptionInfo;
- (BOOL)_validateNullableValue:(id *)value forKey:(id)key error:(id *)error;
- (BOOL)validateCreationDate:(id *)date error:(id *)error;
- (BOOL)validateModificationDate:(id *)date error:(id *)error;
- (BOOL)validateTierIdentifiers:(id *)identifiers error:(id *)error;
- (void)_deriveValuesFromProvidedInfo:(id)info;
- (void)_setNullResettableValue:(id)value forKey:(id)key;
- (void)_updateDerivedSubscriptionInfo;
- (void)awakeFromFetch;
- (void)awakeFromInsert;
- (void)didChangeValueForKey:(id)key;
- (void)setAccessLevel:(id)level;
- (void)setBillingIdentifier:(id)identifier;
- (void)setProvidedSubscriptionInfo:(id)info;
- (void)setSubscriberIdentifierHash:(id)hash;
- (void)setTierIdentifiers:(id)identifiers;
@end

@implementation VSPersistentSubscription

- (void)_setNullResettableValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (!valueCopy)
  {
    v9 = 0;
    [(VSPersistentSubscription *)self validateValue:&v9 forKey:keyCopy error:0];
    valueCopy = v9;
  }

  [(VSPersistentSubscription *)self willChangeValueForKey:keyCopy];
  v8 = [valueCopy copy];
  [(VSPersistentSubscription *)self setPrimitiveValue:v8 forKey:keyCopy];

  [(VSPersistentSubscription *)self didChangeValueForKey:keyCopy];
}

- (BOOL)_validateNullableValue:(id *)value forKey:(id)key error:(id *)error
{
  keyCopy = key;
  if (!*value)
  {
    entity = [(VSPersistentSubscription *)self entity];
    attributesByName = [entity attributesByName];
    v12 = [attributesByName objectForKey:keyCopy];

    if ([v12 isOptional])
    {
      v9 = 1;
    }

    else
    {
      defaultValue = [v12 defaultValue];
      if (defaultValue)
      {
        v14 = defaultValue;
        *value = defaultValue;
        v9 = 1;
      }

      else
      {
        if (!error)
        {
          v9 = 0;
          goto LABEL_10;
        }

        v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v14 setObject:self forKey:*MEMORY[0x277CBE320]];
        [v14 setObject:keyCopy forKey:*MEMORY[0x277CBE318]];
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:1570 userInfo:v14];
        *error = v9 = 0;
      }
    }

LABEL_10:

    goto LABEL_11;
  }

  v9 = 1;
LABEL_11:

  return v9;
}

+ (id)keyPathsForValuesAffectingDerivedSubscriptionInfo
{
  if (keyPathsForValuesAffectingDerivedSubscriptionInfo___vs_lazy_init_predicate != -1)
  {
    +[VSPersistentSubscription keyPathsForValuesAffectingDerivedSubscriptionInfo];
  }

  v3 = keyPathsForValuesAffectingDerivedSubscriptionInfo___vs_lazy_init_variable;

  return v3;
}

uint64_t __77__VSPersistentSubscription_keyPathsForValuesAffectingDerivedSubscriptionInfo__block_invoke()
{
  keyPathsForValuesAffectingDerivedSubscriptionInfo___vs_lazy_init_variable = __77__VSPersistentSubscription_keyPathsForValuesAffectingDerivedSubscriptionInfo__block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

id __77__VSPersistentSubscription_keyPathsForValuesAffectingDerivedSubscriptionInfo__block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v0 addObject:@"accessLevel"];
  [v0 addObject:@"tierIdentifiers"];
  [v0 addObject:@"subscriberIdentifierHash"];
  [v0 addObject:@"billingIdentifier"];
  [v0 addObject:@"providedSubscriptionInfo"];
  v1 = [v0 copy];

  return v1;
}

- (void)_updateDerivedSubscriptionInfo
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  providedSubscriptionInfo = [(VSPersistentSubscription *)self providedSubscriptionInfo];
  v5 = [providedSubscriptionInfo length];

  if (v5)
  {
    entity = VSDefaultLogObject();
    if (os_log_type_enabled(entity, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Provided info will be used.";
LABEL_7:
      _os_log_impl(&dword_23AB8E000, entity, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  accessLevel = [(VSPersistentSubscription *)self accessLevel];
  v9 = [accessLevel isEqual:&unk_284DF32E0];

  if (v9)
  {
    entity = VSDefaultLogObject();
    if (os_log_type_enabled(entity, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Access level is unknown; will not derive subscription info.";
      goto LABEL_7;
    }

LABEL_8:
    v10 = &stru_284DD5B48;
    goto LABEL_9;
  }

  entity = [(VSPersistentSubscription *)self entity];
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  attributesByName = [entity attributesByName];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __58__VSPersistentSubscription__updateDerivedSubscriptionInfo__block_invoke;
  v20[3] = &unk_278B73898;
  v20[4] = self;
  v14 = v12;
  v21 = v14;
  [attributesByName enumerateKeysAndObjectsUsingBlock:v20];

  v19 = 0;
  v15 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v14 options:2 error:&v19];
  v16 = v19;
  if (v15)
  {
    v17 = v15;
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v17 encoding:4];
    v18 = VSDefaultLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v10;
      _os_log_impl(&dword_23AB8E000, v18, OS_LOG_TYPE_DEFAULT, "Derived value: %@", buf, 0xCu);
    }
  }

  else
  {
    v17 = VSErrorLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [VSPersistentSubscription _updateDerivedSubscriptionInfo];
    }

    v10 = &stru_284DD5B48;
  }

LABEL_9:
  [(VSPersistentSubscription *)self willChangeValueForKey:@"derivedSubscriptionInfo"];
  v11 = [(__CFString *)v10 copy];
  [(VSPersistentSubscription *)self setPrimitiveValue:v11 forKey:@"derivedSubscriptionInfo"];

  [(VSPersistentSubscription *)self didChangeValueForKey:@"derivedSubscriptionInfo"];
  objc_autoreleasePoolPop(v3);
}

void __58__VSPersistentSubscription__updateDerivedSubscriptionInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 vs_JSONKey];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    v10 = [*(a1 + 32) valueForKey:v14];
    v11 = [v5 vs_JSONValueTransformer];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 transformedValue:v10];

      v10 = v13;
    }

    if (v10)
    {
      [*(a1 + 40) setObject:v10 forKey:v9];
    }
  }

  objc_autoreleasePoolPop(v6);
}

- (void)_deriveValuesFromProvidedInfo:(id)info
{
  infoCopy = info;
  v5 = objc_autoreleasePoolPush();
  if ([infoCopy length])
  {
    v6 = [infoCopy dataUsingEncoding:4];
    if (v6)
    {
      v24 = 0;
      v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v24];
      v8 = v24;
      if (v7)
      {
        v9 = v7;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v10 = MEMORY[0x277CBEAD8];
            v11 = *MEMORY[0x277CBE660];
            v12 = objc_opt_class();
            v13 = NSStringFromClass(v12);
            [v10 raise:v11 format:{@"Unexpectedly, topLevelJSONValue was %@, instead of NSDictionary.", v13}];
          }

          v14 = v9;
          v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
          entity = [(VSPersistentSubscription *)self entity];
          attributesByName = [entity attributesByName];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __58__VSPersistentSubscription__deriveValuesFromProvidedInfo___block_invoke;
          v21[3] = &unk_278B73898;
          v17 = v14;
          v22 = v17;
          v18 = v15;
          v23 = v18;
          [attributesByName enumerateKeysAndObjectsUsingBlock:v21];

          if ([v18 count])
          {
            v20[0] = MEMORY[0x277D85DD0];
            v20[1] = 3221225472;
            v20[2] = __58__VSPersistentSubscription__deriveValuesFromProvidedInfo___block_invoke_51;
            v20[3] = &unk_278B738C0;
            v20[4] = self;
            [v18 enumerateKeysAndObjectsUsingBlock:v20];
          }
        }

        else
        {
          v17 = VSErrorLogObject();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [VSPersistentSubscription _deriveValuesFromProvidedInfo:];
          }
        }
      }

      else
      {
        v9 = VSErrorLogObject();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [VSPersistentSubscription _deriveValuesFromProvidedInfo:];
        }
      }
    }

    else
    {
      v8 = VSErrorLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [VSPersistentSubscription _deriveValuesFromProvidedInfo:];
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}

void __58__VSPersistentSubscription__deriveValuesFromProvidedInfo___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v55 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = [v8 vs_JSONKey];
  v11 = v10;
  if (v10)
  {
    v43 = a4;
    v12 = v10;
    v13 = VSDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v12;
      _os_log_impl(&dword_23AB8E000, v13, OS_LOG_TYPE_DEFAULT, "Examining %@ JSON key.", buf, 0xCu);
    }

    v14 = [*(a1 + 32) valueForKey:v12];
    v15 = [v8 vs_expectedJSONValueClasses];
    v16 = [v15 count];
    if (!v16)
    {
      v32 = VSErrorLogObject();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        __58__VSPersistentSubscription__deriveValuesFromProvidedInfo___block_invoke_cold_1();
      }

      goto LABEL_39;
    }

    v17 = v16;
    aClass = [v15 objectAtIndex:0];
    isKindOfClass = objc_opt_isKindOfClass();
    v19 = isKindOfClass;
    if (v17 == 2 && (isKindOfClass & 1) != 0 && [(objc_class *)aClass isEqual:objc_opt_class()])
    {
      v39 = v12;
      v40 = v9;
      v41 = v7;
      v38 = v15;
      v20 = [v15 objectAtIndex:1];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v21 = v14;
      v22 = [v21 countByEnumeratingWithState:&v44 objects:v54 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v45;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v45 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v44 + 1) + 8 * i);
            if ((objc_opt_isKindOfClass() & 1) == 0 || [v20 isEqual:objc_opt_class()] && !objc_msgSend(v26, "length"))
            {

              v9 = v40;
              v7 = v41;
              v12 = v39;
              v15 = v38;
              goto LABEL_32;
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v44 objects:v54 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v9 = v40;
      v7 = v41;
      v12 = v39;
      v15 = v38;
    }

    else if ((v19 & 1) == 0)
    {
LABEL_32:
      if ([v8 vs_isRequiredJSONValue])
      {
        v33 = VSErrorLogObject();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v37 = NSStringFromClass(aClass);
          *buf = 138412802;
          v49 = v14;
          v50 = 2112;
          v51 = v8;
          v52 = 2112;
          v53 = v37;
          _os_log_error_impl(&dword_23AB8E000, v33, OS_LOG_TYPE_ERROR, "Value %@ for required attribute %@ was not expected class %@.", buf, 0x20u);
        }

        [*(a1 + 40) removeAllObjects];
        *v43 = 1;
      }

      else
      {
        v34 = VSDefaultLogObject();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v49 = v7;
          _os_log_impl(&dword_23AB8E000, v34, OS_LOG_TYPE_DEFAULT, "Overwriting omitted value for %@ key.", buf, 0xCu);
        }

        v35 = *(a1 + 40);
        v36 = [MEMORY[0x277CBEB68] null];
        [v35 setObject:v36 forKey:v7];
      }

      goto LABEL_39;
    }

    v27 = v15;
    v28 = [v8 vs_JSONValueTransformer];
    v29 = v28;
    if (v28)
    {
      v30 = [v28 reverseTransformedValue:v14];

      v14 = v30;
    }

    if (!v14)
    {
      v14 = [MEMORY[0x277CBEB68] null];
      if (!v14)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The valueOrNil parameter must not be nil."];
      }
    }

    v14 = v14;
    v31 = VSDefaultLogObject();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v49 = v14;
      v50 = 2112;
      v51 = v7;
      _os_log_impl(&dword_23AB8E000, v31, OS_LOG_TYPE_DEFAULT, "Got value %@ for %@ key.", buf, 0x16u);
    }

    [*(a1 + 40) setObject:v14 forKey:v7];
    v15 = v27;
LABEL_39:
  }

  objc_autoreleasePoolPop(v9);
}

void __58__VSPersistentSubscription__deriveValuesFromProvidedInfo___block_invoke_51(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = MEMORY[0x277CBEB68];
  v6 = a2;
  v7 = [v5 null];
  v8 = [v10 isEqual:v7];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v10;
  }

  [*(a1 + 32) _setNullResettableValue:v9 forKey:v6];
}

- (void)setProvidedSubscriptionInfo:(id)info
{
  v9 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  [(VSPersistentSubscription *)self willChangeValueForKey:@"providedSubscriptionInfo"];
  v5 = [infoCopy copy];

  [(VSPersistentSubscription *)self _deriveValuesFromProvidedInfo:v5];
  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Will set primitive value: %@", &v7, 0xCu);
  }

  [(VSPersistentSubscription *)self setPrimitiveValue:v5 forKey:@"providedSubscriptionInfo"];
  [(VSPersistentSubscription *)self didChangeValueForKey:@"providedSubscriptionInfo"];
}

- (void)setAccessLevel:(id)level
{
  v10 = *MEMORY[0x277D85DE8];
  levelCopy = level;
  providedSubscriptionInfo = [(VSPersistentSubscription *)self providedSubscriptionInfo];
  v6 = [providedSubscriptionInfo length];

  if (v6)
  {
    v7 = VSDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = levelCopy;
      _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Ignoring access level %@ because of subscription info.", &v8, 0xCu);
    }
  }

  else
  {
    [(VSPersistentSubscription *)self _setNullResettableValue:levelCopy forKey:@"accessLevel"];
  }
}

- (void)setSubscriberIdentifierHash:(id)hash
{
  v10 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  providedSubscriptionInfo = [(VSPersistentSubscription *)self providedSubscriptionInfo];
  v6 = [providedSubscriptionInfo length];

  if (v6)
  {
    v7 = VSDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = hashCopy;
      _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Ignoring subscriber identifier hash %@ because of subscription info.", &v8, 0xCu);
    }
  }

  else
  {
    [(VSPersistentSubscription *)self _setNullResettableValue:hashCopy forKey:@"subscriberIdentifierHash"];
  }
}

- (void)setBillingIdentifier:(id)identifier
{
  v10 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  providedSubscriptionInfo = [(VSPersistentSubscription *)self providedSubscriptionInfo];
  v6 = [providedSubscriptionInfo length];

  if (v6)
  {
    v7 = VSDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = identifierCopy;
      _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Ignoring billing identifier %@ because of subscription info.", &v8, 0xCu);
    }
  }

  else
  {
    [(VSPersistentSubscription *)self _setNullResettableValue:identifierCopy forKey:@"billingIdentifier"];
  }
}

- (void)setTierIdentifiers:(id)identifiers
{
  v10 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  providedSubscriptionInfo = [(VSPersistentSubscription *)self providedSubscriptionInfo];
  v6 = [providedSubscriptionInfo length];

  if (v6)
  {
    v7 = VSDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = identifiersCopy;
      _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Ignoring tier identifiers %@ because of subscription info.", &v8, 0xCu);
    }
  }

  else
  {
    [(VSPersistentSubscription *)self _setNullResettableValue:identifiersCopy forKey:@"tierIdentifiers"];
  }
}

- (void)awakeFromInsert
{
  v5.receiver = self;
  v5.super_class = VSPersistentSubscription;
  [(VSPersistentSubscription *)&v5 awakeFromInsert];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Awake from insert.", v4, 2u);
  }

  [(VSPersistentSubscription *)self setAccessLevel:0];
  [(VSPersistentSubscription *)self setCreationDate:0];
  [(VSPersistentSubscription *)self setExpirationDate:0];
  [(VSPersistentSubscription *)self setTierIdentifiers:0];
  [(VSPersistentSubscription *)self setSubscriberIdentifierHash:0];
  [(VSPersistentSubscription *)self setBillingIdentifier:0];
}

- (void)awakeFromFetch
{
  v6.receiver = self;
  v6.super_class = VSPersistentSubscription;
  [(VSPersistentSubscription *)&v6 awakeFromFetch];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Awake from fetch.", v5, 2u);
  }

  [(VSPersistentSubscription *)self _updateDerivedSubscriptionInfo];
  providedSubscriptionInfo = [(VSPersistentSubscription *)self providedSubscriptionInfo];
  [(VSPersistentSubscription *)self _deriveValuesFromProvidedInfo:providedSubscriptionInfo];
}

- (void)didChangeValueForKey:(id)key
{
  v14 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = VSPersistentSubscription;
  [(VSPersistentSubscription *)&v9 didChangeValueForKey:keyCopy];
  keyPathsForValuesAffectingDerivedSubscriptionInfo = [objc_opt_class() keyPathsForValuesAffectingDerivedSubscriptionInfo];
  v6 = [keyPathsForValuesAffectingDerivedSubscriptionInfo containsObject:keyCopy];

  if (v6)
  {
    v7 = VSDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(VSPersistentSubscription *)self valueForKey:keyCopy];
      *buf = 138412546;
      v11 = keyCopy;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Did change value for %@ key to %@, triggering derivation.", buf, 0x16u);
    }

    [(VSPersistentSubscription *)self _updateDerivedSubscriptionInfo];
  }
}

- (BOOL)validateCreationDate:(id *)date error:(id *)error
{
  if (!*date)
  {
    v5 = MEMORY[0x277CBEAA8];
    v6 = 0;
    vs_currentDate = [v5 vs_currentDate];
    v8 = vs_currentDate;

    *date = vs_currentDate;
  }

  return 1;
}

- (BOOL)validateModificationDate:(id *)date error:(id *)error
{
  if (!*date)
  {
    v5 = MEMORY[0x277CBEAA8];
    v6 = 0;
    vs_currentDate = [v5 vs_currentDate];
    v8 = vs_currentDate;

    *date = vs_currentDate;
  }

  return 1;
}

- (BOOL)validateTierIdentifiers:(id *)identifiers error:(id *)error
{
  v7 = *identifiers;
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v7];
    allObjects = [v8 allObjects];

    *identifiers = [allObjects sortedArrayUsingSelector:sel_compare_];

    v10 = 1;
  }

  else
  {
    v10 = [(VSPersistentSubscription *)self _validateNullableValue:identifiers forKey:@"tierIdentifiers" error:error];
  }

  return v10;
}

@end