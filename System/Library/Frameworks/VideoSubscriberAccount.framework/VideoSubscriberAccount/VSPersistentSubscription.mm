@interface VSPersistentSubscription
+ (id)keyPathsForValuesAffectingDerivedSubscriptionInfo;
- (BOOL)_validateNullableValue:(id *)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)validateCreationDate:(id *)a3 error:(id *)a4;
- (BOOL)validateModificationDate:(id *)a3 error:(id *)a4;
- (BOOL)validateTierIdentifiers:(id *)a3 error:(id *)a4;
- (void)_deriveValuesFromProvidedInfo:(id)a3;
- (void)_setNullResettableValue:(id)a3 forKey:(id)a4;
- (void)_updateDerivedSubscriptionInfo;
- (void)awakeFromFetch;
- (void)awakeFromInsert;
- (void)didChangeValueForKey:(id)a3;
- (void)setAccessLevel:(id)a3;
- (void)setBillingIdentifier:(id)a3;
- (void)setProvidedSubscriptionInfo:(id)a3;
- (void)setSubscriberIdentifierHash:(id)a3;
- (void)setTierIdentifiers:(id)a3;
@end

@implementation VSPersistentSubscription

- (void)_setNullResettableValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v9 = 0;
    [(VSPersistentSubscription *)self validateValue:&v9 forKey:v7 error:0];
    v6 = v9;
  }

  [(VSPersistentSubscription *)self willChangeValueForKey:v7];
  v8 = [v6 copy];
  [(VSPersistentSubscription *)self setPrimitiveValue:v8 forKey:v7];

  [(VSPersistentSubscription *)self didChangeValueForKey:v7];
}

- (BOOL)_validateNullableValue:(id *)a3 forKey:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (!*a3)
  {
    v10 = [(VSPersistentSubscription *)self entity];
    v11 = [v10 attributesByName];
    v12 = [v11 objectForKey:v8];

    if ([v12 isOptional])
    {
      v9 = 1;
    }

    else
    {
      v13 = [v12 defaultValue];
      if (v13)
      {
        v14 = v13;
        *a3 = v13;
        v9 = 1;
      }

      else
      {
        if (!a5)
        {
          v9 = 0;
          goto LABEL_10;
        }

        v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v14 setObject:self forKey:*MEMORY[0x277CBE320]];
        [v14 setObject:v8 forKey:*MEMORY[0x277CBE318]];
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:1570 userInfo:v14];
        *a5 = v9 = 0;
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
  v4 = [(VSPersistentSubscription *)self providedSubscriptionInfo];
  v5 = [v4 length];

  if (v5)
  {
    v6 = VSDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Provided info will be used.";
LABEL_7:
      _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v8 = [(VSPersistentSubscription *)self accessLevel];
  v9 = [v8 isEqual:&unk_284DF32E0];

  if (v9)
  {
    v6 = VSDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Access level is unknown; will not derive subscription info.";
      goto LABEL_7;
    }

LABEL_8:
    v10 = &stru_284DD5B48;
    goto LABEL_9;
  }

  v6 = [(VSPersistentSubscription *)self entity];
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = [v6 attributesByName];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __58__VSPersistentSubscription__updateDerivedSubscriptionInfo__block_invoke;
  v20[3] = &unk_278B73898;
  v20[4] = self;
  v14 = v12;
  v21 = v14;
  [v13 enumerateKeysAndObjectsUsingBlock:v20];

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

- (void)_deriveValuesFromProvidedInfo:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if ([v4 length])
  {
    v6 = [v4 dataUsingEncoding:4];
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
          v19 = [(VSPersistentSubscription *)self entity];
          v16 = [v19 attributesByName];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __58__VSPersistentSubscription__deriveValuesFromProvidedInfo___block_invoke;
          v21[3] = &unk_278B73898;
          v17 = v14;
          v22 = v17;
          v18 = v15;
          v23 = v18;
          [v16 enumerateKeysAndObjectsUsingBlock:v21];

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

- (void)setProvidedSubscriptionInfo:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(VSPersistentSubscription *)self willChangeValueForKey:@"providedSubscriptionInfo"];
  v5 = [v4 copy];

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

- (void)setAccessLevel:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(VSPersistentSubscription *)self providedSubscriptionInfo];
  v6 = [v5 length];

  if (v6)
  {
    v7 = VSDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Ignoring access level %@ because of subscription info.", &v8, 0xCu);
    }
  }

  else
  {
    [(VSPersistentSubscription *)self _setNullResettableValue:v4 forKey:@"accessLevel"];
  }
}

- (void)setSubscriberIdentifierHash:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(VSPersistentSubscription *)self providedSubscriptionInfo];
  v6 = [v5 length];

  if (v6)
  {
    v7 = VSDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Ignoring subscriber identifier hash %@ because of subscription info.", &v8, 0xCu);
    }
  }

  else
  {
    [(VSPersistentSubscription *)self _setNullResettableValue:v4 forKey:@"subscriberIdentifierHash"];
  }
}

- (void)setBillingIdentifier:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(VSPersistentSubscription *)self providedSubscriptionInfo];
  v6 = [v5 length];

  if (v6)
  {
    v7 = VSDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Ignoring billing identifier %@ because of subscription info.", &v8, 0xCu);
    }
  }

  else
  {
    [(VSPersistentSubscription *)self _setNullResettableValue:v4 forKey:@"billingIdentifier"];
  }
}

- (void)setTierIdentifiers:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(VSPersistentSubscription *)self providedSubscriptionInfo];
  v6 = [v5 length];

  if (v6)
  {
    v7 = VSDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Ignoring tier identifiers %@ because of subscription info.", &v8, 0xCu);
    }
  }

  else
  {
    [(VSPersistentSubscription *)self _setNullResettableValue:v4 forKey:@"tierIdentifiers"];
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
  v4 = [(VSPersistentSubscription *)self providedSubscriptionInfo];
  [(VSPersistentSubscription *)self _deriveValuesFromProvidedInfo:v4];
}

- (void)didChangeValueForKey:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VSPersistentSubscription;
  [(VSPersistentSubscription *)&v9 didChangeValueForKey:v4];
  v5 = [objc_opt_class() keyPathsForValuesAffectingDerivedSubscriptionInfo];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = VSDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(VSPersistentSubscription *)self valueForKey:v4];
      *buf = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Did change value for %@ key to %@, triggering derivation.", buf, 0x16u);
    }

    [(VSPersistentSubscription *)self _updateDerivedSubscriptionInfo];
  }
}

- (BOOL)validateCreationDate:(id *)a3 error:(id *)a4
{
  if (!*a3)
  {
    v5 = MEMORY[0x277CBEAA8];
    v6 = 0;
    v7 = [v5 vs_currentDate];
    v8 = v7;

    *a3 = v7;
  }

  return 1;
}

- (BOOL)validateModificationDate:(id *)a3 error:(id *)a4
{
  if (!*a3)
  {
    v5 = MEMORY[0x277CBEAA8];
    v6 = 0;
    v7 = [v5 vs_currentDate];
    v8 = v7;

    *a3 = v7;
  }

  return 1;
}

- (BOOL)validateTierIdentifiers:(id *)a3 error:(id *)a4
{
  v7 = *a3;
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v7];
    v9 = [v8 allObjects];

    *a3 = [v9 sortedArrayUsingSelector:sel_compare_];

    v10 = 1;
  }

  else
  {
    v10 = [(VSPersistentSubscription *)self _validateNullableValue:a3 forKey:@"tierIdentifiers" error:a4];
  }

  return v10;
}

@end