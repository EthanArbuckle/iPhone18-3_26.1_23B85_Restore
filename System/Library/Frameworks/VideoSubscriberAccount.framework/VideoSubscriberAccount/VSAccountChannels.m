@interface VSAccountChannels
+ (id)deserializationResultWithData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (VSAccountChannels)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)serializationResultWithFormat:(unint64_t)a3;
- (unint64_t)hash;
- (void)setProviderID:(id)a3;
@end

@implementation VSAccountChannels

- (VSAccountChannels)init
{
  v6.receiver = self;
  v6.super_class = VSAccountChannels;
  v2 = [(VSAccountChannels *)&v6 init];
  v3 = v2;
  if (v2)
  {
    providerID = v2->_providerID;
    v2->_providerID = &stru_284DD5B48;
  }

  return v3;
}

+ (id)deserializationResultWithData:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v53 = 0;
  v3 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:0 error:&v53];
  v4 = v53;
  if (v3)
  {
    v5 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = MEMORY[0x277CBEAD8];
        v7 = *MEMORY[0x277CBE660];
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        [v6 raise:v7 format:{@"Unexpectedly, plist was %@, instead of NSDictionary.", v9}];
      }

      v10 = v5;
      v11 = [v10 objectForKey:@"ProviderID"];
      v12 = [v10 objectForKey:@"ChannelIDs"];
      v13 = v12;
      if (v11 && v12)
      {
        v14 = v11;
        v15 = v13;
        objc_opt_class();
        v48 = v15;
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v41 = v13;
          v42 = v11;
          v43 = v10;
          v45 = v4;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v16 = MEMORY[0x277CBEAD8];
            v17 = *MEMORY[0x277CBE660];
            v18 = objc_opt_class();
            v19 = NSStringFromClass(v18);
            [v16 raise:v17 format:{@"Unexpectedly, providerIDObject was %@, instead of NSString.", v19}];
          }

          v44 = v5;
          v46 = v3;
          v40 = v14;
          v47 = v14;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v20 = MEMORY[0x277CBEAD8];
            v21 = *MEMORY[0x277CBE660];
            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            [v20 raise:v21 format:{@"Unexpectedly, channelIDsObject was %@, instead of NSArray.", v23}];
          }

          v24 = v15;
          v39 = objc_alloc_init(VSAccountChannels);
          [(VSAccountChannels *)v39 setProviderID:v47];
          v25 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v26 = v24;
          v27 = [v26 countByEnumeratingWithState:&v49 objects:v54 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v50;
            v30 = *MEMORY[0x277CBE660];
            do
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v50 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v32 = *(*(&v49 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v33 = MEMORY[0x277CBEAD8];
                    v34 = objc_opt_class();
                    v35 = NSStringFromClass(v34);
                    [v33 raise:v30 format:{@"Unexpectedly, channelIdentifier was %@, instead of NSString.", v35}];
                  }

                  [v25 addObject:v32];
                }
              }

              v28 = [v26 countByEnumeratingWithState:&v49 objects:v54 count:16];
            }

            while (v28);
          }

          [(VSAccountChannels *)v39 setChannelIDs:v25];
          v36 = [VSFailable failableWithObject:v39];

          v4 = v45;
          v3 = v46;
          v10 = v43;
          v5 = v44;
          v13 = v41;
          v11 = v42;
          v14 = v40;
          v37 = v47;
        }

        else
        {
          v37 = VSPrivateError(-22, 0);
          v36 = [VSFailable failableWithError:v37];
        }
      }

      else
      {
        v14 = VSPrivateError(-22, 0);
        v36 = [VSFailable failableWithError:v14];
      }
    }

    else
    {
      v10 = VSPrivateError(-22, v4);
      v36 = [VSFailable failableWithError:v10];
    }
  }

  else
  {
    v5 = VSPrivateError(-22, v4);
    v36 = [VSFailable failableWithError:v5];
  }

  if (!v36)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The result parameter must not be nil."];
  }

  return v36;
}

- (void)setProviderID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_284DD5B48;
  }

  v8 = v5;
  if (([(NSString *)self->_providerID isEqual:?]& 1) == 0)
  {
    v6 = [(__CFString *)v8 copy];
    providerID = self->_providerID;
    self->_providerID = v6;
  }
}

- (id)serializationResultWithFormat:(unint64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [(VSAccountChannels *)self providerID];
  [v5 setObject:v6 forKey:@"ProviderID"];

  v7 = [(VSAccountChannels *)self channelIDs];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 allObjects];
    [v5 setObject:v9 forKey:@"ChannelIDs"];
  }

  v15 = 0;
  v10 = [MEMORY[0x277CCAC58] dataWithPropertyList:v5 format:a3 options:0 error:&v15];
  v11 = v15;
  if (v10)
  {
    v12 = [VSFailable failableWithObject:v10];
    if (v12)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v14 = VSPrivateError(-21, v11);
  v12 = [VSFailable failableWithError:v14];

  if (!v12)
  {
LABEL_5:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The result parameter must not be nil."];
  }

LABEL_6:

  return v12;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277CCACA8];
  v5 = [(VSAccountChannels *)self providerID];
  v6 = [v4 stringWithFormat:@"%@ = %@", @"providerID", v5];
  [v3 addObject:v6];

  v7 = MEMORY[0x277CCACA8];
  v8 = [(VSAccountChannels *)self adamID];
  v9 = [v7 stringWithFormat:@"%@ = %@", @"adamID", v8];
  [v3 addObject:v9];

  v10 = MEMORY[0x277CCACA8];
  v11 = [(VSAccountChannels *)self channelIDs];
  v12 = [v10 stringWithFormat:@"%@ = %@", @"channelIDs", v11];
  [v3 addObject:v12];

  v13 = MEMORY[0x277CCACA8];
  v14 = [(VSAccountChannels *)self providerInfo];
  v15 = [v13 stringWithFormat:@"%@ = %@", @"providerInfo", v14];
  [v3 addObject:v15];

  v16 = MEMORY[0x277CCACA8];
  v21.receiver = self;
  v21.super_class = VSAccountChannels;
  v17 = [(VSAccountChannels *)&v21 description];
  v18 = [v3 componentsJoinedByString:{@", "}];
  v19 = [v16 stringWithFormat:@"<%@ %@>", v17, v18];

  return v19;
}

- (unint64_t)hash
{
  v3 = [(VSAccountChannels *)self providerID];
  v4 = [v3 hash];

  v5 = [(VSAccountChannels *)self adamID];
  v6 = [v5 hash] ^ v4;

  v7 = [(VSAccountChannels *)self channelIDs];
  v8 = [v7 hash];

  v9 = [(VSAccountChannels *)self providerInfo];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    if (v4)
    {
      v6 = v4;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        LOBYTE(v14) = 0;
LABEL_29:

        goto LABEL_30;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = MEMORY[0x277CBEAD8];
        v8 = *MEMORY[0x277CBE660];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        [v7 raise:v8 format:{@"Unexpectedly, object was %@, instead of VSAccountChannels.", v10}];
      }

      v11 = v6;
      v12 = [(VSAccountChannels *)self providerID];
      v13 = [(VSAccountChannels *)v11 providerID];
      v14 = [v12 isEqual:v13];

      if (!v14)
      {
LABEL_28:

        goto LABEL_29;
      }

      v15 = [(VSAccountChannels *)self adamID];
      v16 = [(VSAccountChannels *)v11 adamID];
      v17 = v15;
      v18 = v16;
      v19 = v18;
      if (v17 == v18)
      {
      }

      else
      {
        LOBYTE(v14) = 0;
        if (!v17 || !v18)
        {
          goto LABEL_27;
        }

        v20 = [v17 isEqual:v18];

        if ((v20 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v21 = [(VSAccountChannels *)self channelIDs];
      v22 = [(VSAccountChannels *)v11 channelIDs];
      v17 = v21;
      v23 = v22;
      v19 = v23;
      if (v17 == v23)
      {

LABEL_22:
        v25 = [(VSAccountChannels *)self providerInfo];
        v26 = [(VSAccountChannels *)v11 providerInfo];
        v17 = v25;
        v27 = v26;
        v19 = v27;
        if (v17 == v27)
        {
          LOBYTE(v14) = 1;
        }

        else
        {
          LOBYTE(v14) = 0;
          if (v17 && v27)
          {
            LOBYTE(v14) = [v17 isEqual:v27];
          }
        }

        goto LABEL_27;
      }

      LOBYTE(v14) = 0;
      if (v17 && v23)
      {
        v24 = [v17 isEqual:v23];

        if ((v24 & 1) == 0)
        {
LABEL_20:
          LOBYTE(v14) = 0;
          goto LABEL_28;
        }

        goto LABEL_22;
      }

LABEL_27:

      goto LABEL_28;
    }

    LOBYTE(v14) = 0;
  }

LABEL_30:

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(VSAccountChannels);
  v5 = [(NSString *)self->_providerID copy];
  providerID = v4->_providerID;
  v4->_providerID = v5;

  v7 = [(NSString *)self->_adamID copy];
  adamID = v4->_adamID;
  v4->_adamID = v7;

  v9 = [(NSSet *)self->_channelIDs copy];
  channelIDs = v4->_channelIDs;
  v4->_channelIDs = v9;

  v11 = [(NSDictionary *)self->_providerInfo copy];
  providerInfo = v4->_providerInfo;
  v4->_providerInfo = v11;

  return v4;
}

@end