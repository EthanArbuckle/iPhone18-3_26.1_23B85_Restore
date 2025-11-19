@interface AFHomeAccessoryInfo
+ (id)newWithBuilder:(id)a3;
- (AFHomeAccessoryInfo)initWithBuilder:(id)a3;
- (AFHomeAccessoryInfo)initWithCoder:(id)a3;
- (AFHomeAccessoryInfo)initWithDictionaryRepresentation:(id)a3;
- (AFHomeAccessoryInfo)initWithUniqueIdentifier:(id)a3 loggingUniqueIdentifier:(id)a4 name:(id)a5 model:(id)a6 roomName:(id)a7 assistantIdentifier:(id)a8 isSpeaker:(BOOL)a9 hasActiveThirdPartyMusicSubscription:(BOOL)a10 manufacturer:(id)a11 categoryType:(id)a12 schemaCategoryType:(int64_t)a13;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFHomeAccessoryInfo

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    [v3 setObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  }

  loggingUniqueIdentifier = self->_loggingUniqueIdentifier;
  if (loggingUniqueIdentifier)
  {
    [v4 setObject:loggingUniqueIdentifier forKey:@"loggingUniqueIdentifier"];
  }

  name = self->_name;
  if (name)
  {
    [v4 setObject:name forKey:@"name"];
  }

  model = self->_model;
  if (model)
  {
    [v4 setObject:model forKey:@"model"];
  }

  roomName = self->_roomName;
  if (roomName)
  {
    [v4 setObject:roomName forKey:@"roomName"];
  }

  assistantIdentifier = self->_assistantIdentifier;
  if (assistantIdentifier)
  {
    [v4 setObject:assistantIdentifier forKey:@"assistantIdentifier"];
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSpeaker];
  [v4 setObject:v11 forKey:@"isSpeaker"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasActiveThirdPartyMusicSubscription];
  [v4 setObject:v12 forKey:@"hasActiveThirdPartyMusicSubscription"];

  manufacturer = self->_manufacturer;
  if (manufacturer)
  {
    [v4 setObject:manufacturer forKey:@"manufacturer"];
  }

  categoryType = self->_categoryType;
  if (categoryType)
  {
    [v4 setObject:categoryType forKey:@"categoryType"];
  }

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:self->_schemaCategoryType];
  [v4 setObject:v15 forKey:@"schemaCategoryType"];

  v16 = [v4 copy];

  return v16;
}

- (AFHomeAccessoryInfo)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"uniqueIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v6;
    }

    else
    {
      v33 = 0;
    }

    v8 = [v5 objectForKey:@"loggingUniqueIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v8;
    }

    else
    {
      v32 = 0;
    }

    v9 = [v5 objectForKey:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v9;
    }

    else
    {
      v31 = 0;
    }

    v10 = [v5 objectForKey:@"model"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v10;
    }

    else
    {
      v30 = 0;
    }

    v11 = [v5 objectForKey:@"roomName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v11;
    }

    else
    {
      v29 = 0;
    }

    v12 = [v5 objectForKey:@"assistantIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v5 objectForKey:@"isSpeaker"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v15 BOOLValue];
    v17 = [v5 objectForKey:@"hasActiveThirdPartyMusicSubscription"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = [v18 BOOLValue];
    v20 = [v5 objectForKey:@"manufacturer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = [v5 objectForKey:@"categoryType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = [v5 objectForKey:@"schemaCategoryType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = [v25 integerValue];
    BYTE1(v28) = v19;
    LOBYTE(v28) = v16;
    self = [(AFHomeAccessoryInfo *)self initWithUniqueIdentifier:v33 loggingUniqueIdentifier:v32 name:v31 model:v30 roomName:v29 assistantIdentifier:v13 isSpeaker:v28 hasActiveThirdPartyMusicSubscription:v21 manufacturer:v23 categoryType:v26 schemaCategoryType:?];

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  uniqueIdentifier = self->_uniqueIdentifier;
  v5 = a3;
  [v5 encodeObject:uniqueIdentifier forKey:@"AFHomeAccessoryInfo::uniqueIdentifier"];
  [v5 encodeObject:self->_loggingUniqueIdentifier forKey:@"AFHomeAccessoryInfo::loggingUniqueIdentifier"];
  [v5 encodeObject:self->_name forKey:@"AFHomeAccessoryInfo::name"];
  [v5 encodeObject:self->_model forKey:@"AFHomeAccessoryInfo::model"];
  [v5 encodeObject:self->_roomName forKey:@"AFHomeAccessoryInfo::roomName"];
  [v5 encodeObject:self->_assistantIdentifier forKey:@"AFHomeAccessoryInfo::assistantIdentifier"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSpeaker];
  [v5 encodeObject:v6 forKey:@"AFHomeAccessoryInfo::isSpeaker"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasActiveThirdPartyMusicSubscription];
  [v5 encodeObject:v7 forKey:@"AFHomeAccessoryInfo::hasActiveThirdPartyMusicSubscription"];

  [v5 encodeObject:self->_manufacturer forKey:@"AFHomeAccessoryInfo::manufacturer"];
  [v5 encodeObject:self->_categoryType forKey:@"AFHomeAccessoryInfo::categoryType"];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_schemaCategoryType];
  [v5 encodeObject:v8 forKey:@"AFHomeAccessoryInfo::schemaCategoryType"];
}

- (AFHomeAccessoryInfo)initWithCoder:(id)a3
{
  v3 = a3;
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessoryInfo::uniqueIdentifier"];
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessoryInfo::loggingUniqueIdentifier"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessoryInfo::name"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessoryInfo::model"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessoryInfo::roomName"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessoryInfo::assistantIdentifier"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessoryInfo::isSpeaker"];
  v9 = [v8 BOOLValue];

  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessoryInfo::hasActiveThirdPartyMusicSubscription"];
  LOBYTE(v8) = [v10 BOOLValue];

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessoryInfo::manufacturer"];
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessoryInfo::categoryType"];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAccessoryInfo::schemaCategoryType"];

  v14 = [v13 integerValue];
  BYTE1(v17) = v8;
  LOBYTE(v17) = v9;
  v15 = [(AFHomeAccessoryInfo *)self initWithUniqueIdentifier:v19 loggingUniqueIdentifier:v18 name:v4 model:v5 roomName:v6 assistantIdentifier:v7 isSpeaker:v17 hasActiveThirdPartyMusicSubscription:v11 manufacturer:v12 categoryType:v14 schemaCategoryType:?];

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v25 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      isSpeaker = self->_isSpeaker;
      if (isSpeaker == [(AFHomeAccessoryInfo *)v5 isSpeaker]&& (hasActiveThirdPartyMusicSubscription = self->_hasActiveThirdPartyMusicSubscription, hasActiveThirdPartyMusicSubscription == [(AFHomeAccessoryInfo *)v5 hasActiveThirdPartyMusicSubscription]) && (schemaCategoryType = self->_schemaCategoryType, schemaCategoryType == [(AFHomeAccessoryInfo *)v5 schemaCategoryType]))
      {
        v9 = [(AFHomeAccessoryInfo *)v5 uniqueIdentifier];
        uniqueIdentifier = self->_uniqueIdentifier;
        if (uniqueIdentifier == v9 || [(NSUUID *)uniqueIdentifier isEqual:v9])
        {
          v11 = [(AFHomeAccessoryInfo *)v5 loggingUniqueIdentifier];
          loggingUniqueIdentifier = self->_loggingUniqueIdentifier;
          if (loggingUniqueIdentifier == v11 || [(NSUUID *)loggingUniqueIdentifier isEqual:v11])
          {
            v13 = [(AFHomeAccessoryInfo *)v5 name];
            name = self->_name;
            if (name == v13 || [(NSString *)name isEqual:v13])
            {
              v15 = [(AFHomeAccessoryInfo *)v5 model];
              model = self->_model;
              if (model == v15 || [(NSString *)model isEqual:v15])
              {
                v17 = [(AFHomeAccessoryInfo *)v5 roomName];
                roomName = self->_roomName;
                if (roomName == v17 || [(NSString *)roomName isEqual:v17])
                {
                  v19 = [(AFHomeAccessoryInfo *)v5 assistantIdentifier];
                  assistantIdentifier = self->_assistantIdentifier;
                  if (assistantIdentifier == v19 || [(NSString *)assistantIdentifier isEqual:v19])
                  {
                    v21 = [(AFHomeAccessoryInfo *)v5 manufacturer];
                    manufacturer = self->_manufacturer;
                    if (manufacturer == v21 || [(NSString *)manufacturer isEqual:v21])
                    {
                      v27 = v21;
                      v23 = [(AFHomeAccessoryInfo *)v5 categoryType];
                      categoryType = self->_categoryType;
                      v25 = categoryType == v23 || [(NSString *)categoryType isEqual:v23];

                      v21 = v27;
                    }

                    else
                    {
                      v25 = 0;
                    }
                  }

                  else
                  {
                    v25 = 0;
                  }
                }

                else
                {
                  v25 = 0;
                }
              }

              else
              {
                v25 = 0;
              }
            }

            else
            {
              v25 = 0;
            }
          }

          else
          {
            v25 = 0;
          }
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  return v25;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_uniqueIdentifier hash];
  v4 = [(NSUUID *)self->_loggingUniqueIdentifier hash]^ v3;
  v5 = [(NSString *)self->_name hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_model hash];
  v7 = [(NSString *)self->_roomName hash];
  v8 = v6 ^ v7 ^ [(NSString *)self->_assistantIdentifier hash];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSpeaker];
  v10 = [v9 hash];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasActiveThirdPartyMusicSubscription];
  v12 = v8 ^ v10 ^ [v11 hash];
  v13 = [(NSString *)self->_manufacturer hash];
  v14 = v13 ^ [(NSString *)self->_categoryType hash];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:self->_schemaCategoryType];
  v16 = v14 ^ [v15 hash];

  return v12 ^ v16;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = AFHomeAccessoryInfo;
  v5 = [(AFHomeAccessoryInfo *)&v11 description];
  v6 = v5;
  v7 = @"NO";
  if (self->_isSpeaker)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (self->_hasActiveThirdPartyMusicSubscription)
  {
    v7 = @"YES";
  }

  v9 = [v4 initWithFormat:@"%@ {uniqueIdentifier = %@, loggingUniqueIdentifier = %@, name = %@, model = %@, roomName = %@, assistantIdentifier = %@, isSpeaker = %@, hasActiveThirdPartyMusicSubscription = %@, manufacturer = %@, categoryType = %@, schemaCategoryType = %lld}", v5, *&self->_uniqueIdentifier, *&self->_name, self->_roomName, self->_assistantIdentifier, v8, v7, self->_manufacturer, self->_categoryType, self->_schemaCategoryType];

  return v9;
}

- (AFHomeAccessoryInfo)initWithUniqueIdentifier:(id)a3 loggingUniqueIdentifier:(id)a4 name:(id)a5 model:(id)a6 roomName:(id)a7 assistantIdentifier:(id)a8 isSpeaker:(BOOL)a9 hasActiveThirdPartyMusicSubscription:(BOOL)a10 manufacturer:(id)a11 categoryType:(id)a12 schemaCategoryType:(int64_t)a13
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a11;
  v25 = a12;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __204__AFHomeAccessoryInfo_initWithUniqueIdentifier_loggingUniqueIdentifier_name_model_roomName_assistantIdentifier_isSpeaker_hasActiveThirdPartyMusicSubscription_manufacturer_categoryType_schemaCategoryType___block_invoke;
  v37[3] = &unk_1E7344810;
  v38 = v18;
  v39 = v19;
  v40 = v20;
  v41 = v21;
  v42 = v22;
  v43 = v23;
  v47 = a9;
  v48 = a10;
  v44 = v24;
  v45 = v25;
  v46 = a13;
  v26 = v25;
  v27 = v24;
  v28 = v23;
  v29 = v22;
  v30 = v21;
  v31 = v20;
  v32 = v19;
  v33 = v18;
  v34 = [(AFHomeAccessoryInfo *)self initWithBuilder:v37];

  return v34;
}

void __204__AFHomeAccessoryInfo_initWithUniqueIdentifier_loggingUniqueIdentifier_name_model_roomName_assistantIdentifier_isSpeaker_hasActiveThirdPartyMusicSubscription_manufacturer_categoryType_schemaCategoryType___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setUniqueIdentifier:v3];
  [v4 setLoggingUniqueIdentifier:*(a1 + 40)];
  [v4 setName:*(a1 + 48)];
  [v4 setModel:*(a1 + 56)];
  [v4 setRoomName:*(a1 + 64)];
  [v4 setAssistantIdentifier:*(a1 + 72)];
  [v4 setIsSpeaker:*(a1 + 104)];
  [v4 setHasActiveThirdPartyMusicSubscription:*(a1 + 105)];
  [v4 setManufacturer:*(a1 + 80)];
  [v4 setCategoryType:*(a1 + 88)];
  [v4 setSchemaCategoryType:*(a1 + 96)];
}

- (AFHomeAccessoryInfo)initWithBuilder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = AFHomeAccessoryInfo;
  v5 = [(AFHomeAccessoryInfo *)&v33 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFHomeAccessoryInfoMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFHomeAccessoryInfoMutation *)v7 isDirty])
    {
      v8 = [(_AFHomeAccessoryInfoMutation *)v7 getUniqueIdentifier];
      v9 = [v8 copy];
      uniqueIdentifier = v6->_uniqueIdentifier;
      v6->_uniqueIdentifier = v9;

      v11 = [(_AFHomeAccessoryInfoMutation *)v7 getLoggingUniqueIdentifier];
      v12 = [v11 copy];
      loggingUniqueIdentifier = v6->_loggingUniqueIdentifier;
      v6->_loggingUniqueIdentifier = v12;

      v14 = [(_AFHomeAccessoryInfoMutation *)v7 getName];
      v15 = [v14 copy];
      name = v6->_name;
      v6->_name = v15;

      v17 = [(_AFHomeAccessoryInfoMutation *)v7 getModel];
      v18 = [v17 copy];
      model = v6->_model;
      v6->_model = v18;

      v20 = [(_AFHomeAccessoryInfoMutation *)v7 getRoomName];
      v21 = [v20 copy];
      roomName = v6->_roomName;
      v6->_roomName = v21;

      v23 = [(_AFHomeAccessoryInfoMutation *)v7 getAssistantIdentifier];
      v24 = [v23 copy];
      assistantIdentifier = v6->_assistantIdentifier;
      v6->_assistantIdentifier = v24;

      v6->_isSpeaker = [(_AFHomeAccessoryInfoMutation *)v7 getIsSpeaker];
      v6->_hasActiveThirdPartyMusicSubscription = [(_AFHomeAccessoryInfoMutation *)v7 getHasActiveThirdPartyMusicSubscription];
      v26 = [(_AFHomeAccessoryInfoMutation *)v7 getManufacturer];
      v27 = [v26 copy];
      manufacturer = v6->_manufacturer;
      v6->_manufacturer = v27;

      v29 = [(_AFHomeAccessoryInfoMutation *)v7 getCategoryType];
      v30 = [v29 copy];
      categoryType = v6->_categoryType;
      v6->_categoryType = v30;

      v6->_schemaCategoryType = [(_AFHomeAccessoryInfoMutation *)v7 getSchemaCategoryType];
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFHomeAccessoryInfoMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFHomeAccessoryInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFHomeAccessoryInfo);
      v7 = [(_AFHomeAccessoryInfoMutation *)v5 getUniqueIdentifier];
      v8 = [v7 copy];
      uniqueIdentifier = v6->_uniqueIdentifier;
      v6->_uniqueIdentifier = v8;

      v10 = [(_AFHomeAccessoryInfoMutation *)v5 getLoggingUniqueIdentifier];
      v11 = [v10 copy];
      loggingUniqueIdentifier = v6->_loggingUniqueIdentifier;
      v6->_loggingUniqueIdentifier = v11;

      v13 = [(_AFHomeAccessoryInfoMutation *)v5 getName];
      v14 = [v13 copy];
      name = v6->_name;
      v6->_name = v14;

      v16 = [(_AFHomeAccessoryInfoMutation *)v5 getModel];
      v17 = [v16 copy];
      model = v6->_model;
      v6->_model = v17;

      v19 = [(_AFHomeAccessoryInfoMutation *)v5 getRoomName];
      v20 = [v19 copy];
      roomName = v6->_roomName;
      v6->_roomName = v20;

      v22 = [(_AFHomeAccessoryInfoMutation *)v5 getAssistantIdentifier];
      v23 = [v22 copy];
      assistantIdentifier = v6->_assistantIdentifier;
      v6->_assistantIdentifier = v23;

      v6->_isSpeaker = [(_AFHomeAccessoryInfoMutation *)v5 getIsSpeaker];
      v6->_hasActiveThirdPartyMusicSubscription = [(_AFHomeAccessoryInfoMutation *)v5 getHasActiveThirdPartyMusicSubscription];
      v25 = [(_AFHomeAccessoryInfoMutation *)v5 getManufacturer];
      v26 = [v25 copy];
      manufacturer = v6->_manufacturer;
      v6->_manufacturer = v26;

      v28 = [(_AFHomeAccessoryInfoMutation *)v5 getCategoryType];
      v29 = [v28 copy];
      categoryType = v6->_categoryType;
      v6->_categoryType = v29;

      v6->_schemaCategoryType = [(_AFHomeAccessoryInfoMutation *)v5 getSchemaCategoryType];
    }

    else
    {
      v6 = [(AFHomeAccessoryInfo *)self copy];
    }
  }

  else
  {
    v6 = [(AFHomeAccessoryInfo *)self copy];
  }

  return v6;
}

@end