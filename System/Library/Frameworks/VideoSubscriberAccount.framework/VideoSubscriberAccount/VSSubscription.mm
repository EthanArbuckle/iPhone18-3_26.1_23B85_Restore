@interface VSSubscription
+ (id)keyPathsForValuesAffectingSubscriptionInfo;
+ (id)keyPathsForValuesAffectingVersionHash;
- (BOOL)isEqual:(id)equal;
- (NSArray)tierIdentifiers;
- (NSData)versionHash;
- (NSDate)expirationDate;
- (NSString)billingIdentifier;
- (NSString)derivedSubscriptionInfo;
- (NSString)providedSubscriptionInfo;
- (NSString)subscriberIdentifierHash;
- (NSString)subscriptionInfo;
- (VSSubscription)init;
- (VSSubscription)initWithCoder:(id)coder;
- (VSSubscriptionSource)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)_updateHash:(id)hash withValueForProperty:(id)property;
- (void)encodeWithCoder:(id)coder;
- (void)setCreationDate:(id)date;
- (void)setModificationDate:(id)date;
- (void)setNilValueForKey:(id)key;
@end

@implementation VSSubscription

- (VSSubscription)init
{
  v5.receiver = self;
  v5.super_class = VSSubscription;
  v2 = [(VSSubscription *)&v5 init];
  if (v2)
  {
    v3 = VSSubscriptionValueType();
    VSValueTypeInit(v3, v2);
  }

  return v2;
}

- (VSSubscription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = VSSubscription;
  v5 = [(VSSubscription *)&v8 init];
  if (v5)
  {
    v6 = VSSubscriptionValueType();
    VSValueTypeInitWithCoder(v6, v5, coderCopy);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = VSSubscriptionValueType();
  VSValueTypeEncodeWithCoder(v5, self, coderCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = VSSubscriptionValueType();
  v6 = VSValueTypeCopyWithZone(v5, self, zone);

  return v6;
}

- (unint64_t)hash
{
  v3 = VSSubscriptionValueType();
  v4 = VSValueTypeHash(v3, self);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = VSSubscriptionValueType();
  LOBYTE(self) = VSValueTypeIsEqual(v5, self, equalCopy);

  return self;
}

- (id)description
{
  v3 = VSSubscriptionValueType();
  v4 = VSValueTypeDescription(v3, self);

  return v4;
}

- (void)setCreationDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    dateCopy = [MEMORY[0x277CBEAA8] vs_currentDate];
  }

  v7 = dateCopy;
  v5 = [dateCopy copy];
  creationDate = self->_creationDate;
  self->_creationDate = v5;
}

- (void)setModificationDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    dateCopy = [MEMORY[0x277CBEAA8] vs_currentDate];
  }

  v7 = dateCopy;
  v5 = [dateCopy copy];
  modificationDate = self->_modificationDate;
  self->_modificationDate = v5;
}

- (NSDate)expirationDate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  distantFuture = selfCopy->_expirationDate;
  if (!distantFuture)
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    objc_storeStrong(&selfCopy->_expirationDate, distantFuture);
  }

  objc_sync_exit(selfCopy);

  if (!distantFuture)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return distantFuture;
}

+ (id)keyPathsForValuesAffectingSubscriptionInfo
{
  if (keyPathsForValuesAffectingSubscriptionInfo___vs_lazy_init_predicate != -1)
  {
    +[VSSubscription keyPathsForValuesAffectingSubscriptionInfo];
  }

  v3 = keyPathsForValuesAffectingSubscriptionInfo___vs_lazy_init_variable;

  return v3;
}

uint64_t __60__VSSubscription_keyPathsForValuesAffectingSubscriptionInfo__block_invoke()
{
  keyPathsForValuesAffectingSubscriptionInfo___vs_lazy_init_variable = __60__VSSubscription_keyPathsForValuesAffectingSubscriptionInfo__block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

id __60__VSSubscription_keyPathsForValuesAffectingSubscriptionInfo__block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v0 addObject:@"providedSubscriptionInfo"];
  [v0 addObject:@"derivedSubscriptionInfo"];
  v1 = [v0 copy];

  return v1;
}

- (NSString)subscriptionInfo
{
  providedSubscriptionInfo = [(VSSubscription *)self providedSubscriptionInfo];
  if (![providedSubscriptionInfo length])
  {
    derivedSubscriptionInfo = [(VSSubscription *)self derivedSubscriptionInfo];

    providedSubscriptionInfo = derivedSubscriptionInfo;
  }

  return providedSubscriptionInfo;
}

- (NSString)providedSubscriptionInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_providedSubscriptionInfo;
  if (!v3)
  {
    providedSubscriptionInfo = selfCopy->_providedSubscriptionInfo;
    v3 = &stru_284DD5B48;
    selfCopy->_providedSubscriptionInfo = &stru_284DD5B48;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)derivedSubscriptionInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_derivedSubscriptionInfo;
  if (!v3)
  {
    derivedSubscriptionInfo = selfCopy->_derivedSubscriptionInfo;
    v3 = &stru_284DD5B48;
    selfCopy->_derivedSubscriptionInfo = &stru_284DD5B48;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (VSSubscriptionSource)source
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_source;
  if (!v3)
  {
    v3 = +[VSSubscriptionSource currentSource];
    objc_storeStrong(&selfCopy->_source, v3);
  }

  objc_sync_exit(selfCopy);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return v3;
}

- (NSString)billingIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_billingIdentifier;
  if (!v3)
  {
    billingIdentifier = selfCopy->_billingIdentifier;
    v3 = &stru_284DD5B48;
    selfCopy->_billingIdentifier = &stru_284DD5B48;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)tierIdentifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_tierIdentifiers;
  if (!v3)
  {
    tierIdentifiers = selfCopy->_tierIdentifiers;
    v3 = MEMORY[0x277CBEBF8];
    selfCopy->_tierIdentifiers = MEMORY[0x277CBEBF8];
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)subscriberIdentifierHash
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_subscriberIdentifierHash;
  if (!v3)
  {
    subscriberIdentifierHash = selfCopy->_subscriberIdentifierHash;
    v3 = &stru_284DD5B48;
    selfCopy->_subscriberIdentifierHash = &stru_284DD5B48;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setNilValueForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqual:@"accessLevel"])
  {
    [(VSSubscription *)self setValue:&unk_284DF32F8 forKey:keyCopy];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = VSSubscription;
    [(VSSubscription *)&v5 setNilValueForKey:keyCopy];
  }
}

- (void)_updateHash:(id)hash withValueForProperty:(id)property
{
  v57 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  propertyCopy = property;
  name = [propertyCopy name];
  v9 = [(VSSubscription *)self valueForKey:name];

  kind = [propertyCopy kind];
  switch(kind)
  {
    case 2:
      allowedClasses = [propertyCopy allowedClasses];
      if ([allowedClasses count] != 1)
      {
        if ([allowedClasses count] == 2 && objc_msgSend(allowedClasses, "containsObject:", objc_opt_class()) && objc_msgSend(allowedClasses, "containsObject:", objc_opt_class()))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (!v9)
            {
              [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The valueOrNil parameter must not be nil."];
            }

            v50 = allowedClasses;
            v51 = v9;
            v18 = v9;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v19 = MEMORY[0x277CBEAD8];
              v20 = *MEMORY[0x277CBE660];
              v21 = objc_opt_class();
              v22 = NSStringFromClass(v21);
              [v19 raise:v20 format:{@"Unexpectedly, value was %@, instead of NSArray.", v22}];
            }

            v23 = v18;
            v52 = 0u;
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v24 = [v23 countByEnumeratingWithState:&v52 objects:v56 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v53;
              v27 = *MEMORY[0x277CBE660];
              do
              {
                for (i = 0; i != v25; ++i)
                {
                  if (*v53 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v29 = *(*(&v52 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v30 = hashCopy;
                      v31 = MEMORY[0x277CBEAD8];
                      v32 = objc_opt_class();
                      v33 = NSStringFromClass(v32);
                      v34 = v31;
                      hashCopy = v30;
                      [v34 raise:v27 format:{@"Unexpectedly, containedObject was %@, instead of NSString.", v33}];
                    }

                    v35 = v29;
                    if ([v35 length])
                    {
                      [hashCopy updateWithString:v35];
                    }

                    else
                    {
                      [MEMORY[0x277CBEAD8] raise:v27 format:@"Array contained empty string."];
                    }
                  }

                  else
                  {
                    [MEMORY[0x277CBEAD8] raise:v27 format:{@"Array contained a non-string (%@) value: %@", objc_opt_class(), v29}];
                  }
                }

                v25 = [v23 countByEnumeratingWithState:&v52 objects:v56 count:16];
              }

              while (v25);
            }

            v9 = v51;
            allowedClasses = v50;
          }

          else
          {
            [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Value was a %@ instead of an array.", objc_opt_class()}];
          }
        }

        else
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unexpected number of allowed classes.", v49}];
        }

        goto LABEL_55;
      }

      anyObject = [allowedClasses anyObject];
      if ([anyObject isEqual:objc_opt_class()] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if (!v9)
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The valueOrNil parameter must not be nil."];
        }

        v13 = v9;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = MEMORY[0x277CBEAD8];
          v15 = *MEMORY[0x277CBE660];
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          [v14 raise:v15 format:{@"Unexpectedly, value was %@, instead of NSString.", v17}];
        }

        [hashCopy updateWithString:v13];
      }

      else if ([anyObject isEqual:objc_opt_class()] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if (!v9)
        {
LABEL_55:

          break;
        }

        v13 = v9;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v36 = MEMORY[0x277CBEAD8];
          v37 = *MEMORY[0x277CBE660];
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          [v36 raise:v37 format:{@"Unexpectedly, value was %@, instead of NSDate.", v39}];
        }

        [hashCopy updateWithDate:v13];
      }

      else
      {
        if (![anyObject isEqual:objc_opt_class()] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v46 = MEMORY[0x277CBEAD8];
          v47 = *MEMORY[0x277CBE660];
          name2 = [propertyCopy name];
          [v46 raise:v47 format:{@"Unexpected value (%@) for property %@ of class: %@", v9, name2, anyObject}];

          goto LABEL_55;
        }

        if (!v9)
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The valueOrNil parameter must not be nil."];
        }

        v40 = v9;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v41 = MEMORY[0x277CBEAD8];
          v42 = *MEMORY[0x277CBE660];
          v43 = objc_opt_class();
          v44 = NSStringFromClass(v43);
          [v41 raise:v42 format:{@"Unexpectedly, value was %@, instead of VSSubscriptionSource.", v44}];
        }

        v13 = v40;
        [hashCopy updateWithInteger:{objc_msgSend(v13, "kind")}];
        identifier = [v13 identifier];

        [hashCopy updateWithString:identifier];
      }

      goto LABEL_55;
    case 1:
      [hashCopy updateWithInteger:{objc_msgSend(v9, "integerValue")}];
      break;
    case 0:
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Unexpected Boolean property kind."];
      break;
  }
}

+ (id)keyPathsForValuesAffectingVersionHash
{
  if (keyPathsForValuesAffectingVersionHash___vs_lazy_init_predicate != -1)
  {
    +[VSSubscription keyPathsForValuesAffectingVersionHash];
  }

  v3 = keyPathsForValuesAffectingVersionHash___vs_lazy_init_variable;

  return v3;
}

uint64_t __55__VSSubscription_keyPathsForValuesAffectingVersionHash__block_invoke()
{
  keyPathsForValuesAffectingVersionHash___vs_lazy_init_variable = __55__VSSubscription_keyPathsForValuesAffectingVersionHash__block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

id __55__VSSubscription_keyPathsForValuesAffectingVersionHash__block_invoke_2()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = VSSubscriptionValueType();
  v2 = [v1 properties];

  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) name];
        [v0 addObject:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v8 = [v0 copy];

  return v8;
}

- (NSData)versionHash
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(VSHash);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = VSSubscriptionValueType();
  properties = [v4 properties];

  v6 = [properties countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(properties);
        }

        [(VSSubscription *)self _updateHash:v3 withValueForProperty:*(*(&v12 + 1) + 8 * i)];
      }

      v7 = [properties countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  finalData = [(VSHash *)v3 finalData];

  return finalData;
}

@end