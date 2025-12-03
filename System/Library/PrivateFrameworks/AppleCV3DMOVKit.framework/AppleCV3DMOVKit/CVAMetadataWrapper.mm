@interface CVAMetadataWrapper
+ (id)commonSet;
+ (id)decodeCLLocation:(id)location timestamp:(double *)timestamp;
+ (id)decodeCMDeviceMotion:(id)motion;
+ (id)decodeClass:(id)class class:(Class)a4;
+ (id)decodeClass:(id)class class:(Class)a4 error:(id *)error;
+ (id)decodeCommon:(id)common;
+ (id)decodeDictionary:(id)dictionary;
+ (id)decodeLocationDict:(id)dict;
+ (id)decodeNSCoderObject:(id)object class:(Class)class;
+ (id)decodeNSCoderObject:(id)object class:(Class)class error:(id *)error;
+ (id)decodeNSCoderObject:(id)object classes:(id)classes;
+ (id)encodeClass:(id)class andAdditionalData:(id)data;
+ (id)encodeCoreLocationData:(id)data timestamp:(double)timestamp andAdditionalData:(id)additionalData;
+ (id)encodeNSCoderObject:(id)object;
@end

@implementation CVAMetadataWrapper

+ (id)encodeCoreLocationData:(id)data timestamp:(double)timestamp andAdditionalData:(id)additionalData
{
  additionalDataCopy = additionalData;
  dataCopy = data;
  v9 = [[CVACLLocation alloc] initWithCLLocation:dataCopy timestamp:timestamp];
  dictionary = [(CVACLLocation *)v9 dictionary];
  v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:additionalDataCopy];

  [v11 addEntriesFromDictionary:dictionary];
  v12 = [CVAMetadataWrapper encodeClass:dataCopy andAdditionalData:v11];

  return v12;
}

+ (id)encodeClass:(id)class andAdditionalData:(id)data
{
  v19 = *MEMORY[0x277D85DE8];
  classCopy = class;
  dataCopy = data;
  v14 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:classCopy requiringSecureCoding:1 error:&v14];
  v8 = v14;
  if (v8)
  {
    v9 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = classCopy;
      _os_log_impl(&dword_24016D000, v9, OS_LOG_TYPE_ERROR, "[MetadataWrapper] Data could not be KeyedArchiver serialized: %@", buf, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v15 = qword_27E3C84C8;
    v16 = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:dataCopy];
    [v11 addEntriesFromDictionary:v9];
    v10 = [CVAMetadataWrapper encodeNSCoderObject:v11];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)encodeNSCoderObject:(id)object
{
  v16 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v11 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:objectCopy requiringSecureCoding:1 error:&v11];
  v5 = v11;
  if (v5)
  {
    v6 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v5 localizedDescription];
      *buf = 138412546;
      v13 = localizedDescription;
      v14 = 2112;
      v15 = objectCopy;
      _os_log_impl(&dword_24016D000, v6, OS_LOG_TYPE_ERROR, "[MetadataWrapper] Data could not be KeyedArchiver serialized: %@ %@", buf, 0x16u);
    }

    v8 = 0;
  }

  else
  {
    v8 = v4;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)commonSet
{
  if (qword_27E3C85F8 == -1)
  {
    v3 = qword_27E3C85F0;
  }

  else
  {
    sub_24019CBF0();
    v3 = qword_27E3C85F0;
  }

  return v3;
}

+ (id)decodeCommon:(id)common
{
  v23 = *MEMORY[0x277D85DE8];
  commonCopy = common;
  v4 = MEMORY[0x277CCAAC8];
  v5 = +[CVAMetadataWrapper commonSet];
  v20 = 0;
  v6 = [v4 unarchivedObjectOfClasses:v5 fromData:commonCopy error:&v20];
  v7 = v20;

  if (v7)
  {

    v19 = 0;
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:commonCopy options:1 error:&v19];
    v9 = v19;
    if (v9)
    {

      v17 = 0;
      v18 = 0;
      v10 = [MEMORY[0x277CCAC58] propertyListWithData:commonCopy options:0 format:&v18 error:&v17];
      v11 = v17;
      if (v11)
      {
        v12 = +[AppleCV3DMOVKitLog defaultLog];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v11 localizedDescription];
          *buf = 138412290;
          v22 = localizedDescription;
          _os_log_impl(&dword_24016D000, v12, OS_LOG_TYPE_ERROR, "[MetadataWrapper] Cannot deserialize data: %@", buf, 0xCu);
        }

        v14 = 0;
      }

      else
      {
        v14 = v10;
      }
    }

    else
    {
      v14 = v8;
    }
  }

  else
  {
    v14 = v6;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)decodeCMDeviceMotion:(id)motion
{
  motionCopy = motion;
  v4 = [CVAMetadataWrapper decodeClass:motionCopy class:objc_opt_class()];

  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

+ (id)decodeLocationDict:(id)dict
{
  v3 = [CVAMetadataWrapper decodeCommon:dict];
  v4 = [[CVACLLocation alloc] initWithDictionary:v3];
  dictionary = [(CVACLLocation *)v4 dictionary];

  return dictionary;
}

+ (id)decodeCLLocation:(id)location timestamp:(double *)timestamp
{
  locationCopy = location;
  if (timestamp)
  {
    v6 = [CVAMetadataWrapper decodeCommon:locationCopy];
    v7 = [[CVACLLocation alloc] initWithDictionary:v6];
    [(CVACLLocation *)v7 timestamp];
    *timestamp = v8;
  }

  v9 = [CVAMetadataWrapper decodeClass:locationCopy class:objc_opt_class()];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

+ (id)decodeDictionary:(id)dictionary
{
  v3 = [CVAMetadataWrapper decodeCommon:dictionary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v3];
    [v4 removeObjectForKey:qword_27E3C84C8];

    v5 = v4;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v3;

      v5 = v7;
    }

    else
    {

      v5 = 0;
    }
  }

  return v5;
}

+ (id)decodeClass:(id)class class:(Class)a4
{
  v5 = [CVAMetadataWrapper decodeCommon:class];
  v6 = [v5 valueForKey:qword_27E3C84C8];

  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:qword_27E3C84C8];
    v8 = [CVAMetadataWrapper decodeNSCoderObject:v7 class:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)decodeClass:(id)class class:(Class)a4 error:(id *)error
{
  v7 = [CVAMetadataWrapper decodeCommon:class];
  v8 = [v7 valueForKey:qword_27E3C84C8];

  if (v8)
  {
    v9 = [v7 objectForKeyedSubscript:qword_27E3C84C8];
    v10 = [CVAMetadataWrapper decodeNSCoderObject:v9 class:a4 error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)decodeNSCoderObject:(id)object classes:(id)classes
{
  v26 = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  v21 = 0;
  v6 = [CVAMetadataWrapper decodeNSCoderObject:object classes:classesCopy error:&v21];
  v7 = v21;
  if (v7)
  {
    v8 = v7;
    v9 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v8 localizedDescription];
      *buf = 138412546;
      v23 = classesCopy;
      v24 = 2112;
      v25 = localizedDescription;
      _os_log_impl(&dword_24016D000, v9, OS_LOG_TYPE_ERROR, "MetadataWrapper - INFO - cannot deserialize %@ data: %@", buf, 0x16u);
    }

    v11 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v6 valueForKey:qword_27E3C84C8], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
LABEL_12:
    v6 = v6;
    v11 = v6;
    goto LABEL_13;
  }

  v13 = [v6 valueForKey:qword_27E3C84C8];
  v20 = 0;
  v14 = [CVAMetadataWrapper decodeNSCoderObject:v13 classes:classesCopy error:&v20];
  v15 = v20;

  if (!v15)
  {
    v6 = v14;
    goto LABEL_12;
  }

  v16 = +[AppleCV3DMOVKitLog defaultLog];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    localizedDescription2 = [v15 localizedDescription];
    *buf = 138412546;
    v23 = classesCopy;
    v24 = 2112;
    v25 = localizedDescription2;
    _os_log_impl(&dword_24016D000, v16, OS_LOG_TYPE_ERROR, "MetadataWrapper - INFO - cannot deserialize %@ data: %@", buf, 0x16u);
  }

  v11 = 0;
  v6 = v14;
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)decodeNSCoderObject:(id)object class:(Class)class
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  classCopy = class;
  v5 = MEMORY[0x277CBEA60];
  objectCopy = object;
  v7 = [v5 arrayWithObjects:&classCopy count:1];
  v8 = [v4 setWithArray:{v7, classCopy, v13}];
  v9 = [CVAMetadataWrapper decodeNSCoderObject:objectCopy classes:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)decodeNSCoderObject:(id)object class:(Class)class error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB98];
  classCopy = class;
  v7 = MEMORY[0x277CBEA60];
  objectCopy = object;
  v9 = [v7 arrayWithObjects:&classCopy count:1];
  v10 = [v6 setWithArray:{v9, classCopy, v15}];
  v11 = [CVAMetadataWrapper decodeNSCoderObject:objectCopy classes:v10 error:error];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end