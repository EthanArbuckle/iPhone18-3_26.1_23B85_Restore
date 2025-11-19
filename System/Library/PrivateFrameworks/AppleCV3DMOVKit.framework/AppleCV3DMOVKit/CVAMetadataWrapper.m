@interface CVAMetadataWrapper
+ (id)commonSet;
+ (id)decodeCLLocation:(id)a3 timestamp:(double *)a4;
+ (id)decodeCMDeviceMotion:(id)a3;
+ (id)decodeClass:(id)a3 class:(Class)a4;
+ (id)decodeClass:(id)a3 class:(Class)a4 error:(id *)a5;
+ (id)decodeCommon:(id)a3;
+ (id)decodeDictionary:(id)a3;
+ (id)decodeLocationDict:(id)a3;
+ (id)decodeNSCoderObject:(id)a3 class:(Class)a4;
+ (id)decodeNSCoderObject:(id)a3 class:(Class)a4 error:(id *)a5;
+ (id)decodeNSCoderObject:(id)a3 classes:(id)a4;
+ (id)encodeClass:(id)a3 andAdditionalData:(id)a4;
+ (id)encodeCoreLocationData:(id)a3 timestamp:(double)a4 andAdditionalData:(id)a5;
+ (id)encodeNSCoderObject:(id)a3;
@end

@implementation CVAMetadataWrapper

+ (id)encodeCoreLocationData:(id)a3 timestamp:(double)a4 andAdditionalData:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[CVACLLocation alloc] initWithCLLocation:v8 timestamp:a4];
  v10 = [(CVACLLocation *)v9 dictionary];
  v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v7];

  [v11 addEntriesFromDictionary:v10];
  v12 = [CVAMetadataWrapper encodeClass:v8 andAdditionalData:v11];

  return v12;
}

+ (id)encodeClass:(id)a3 andAdditionalData:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v14 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v14];
  v8 = v14;
  if (v8)
  {
    v9 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&dword_24016D000, v9, OS_LOG_TYPE_ERROR, "[MetadataWrapper] Data could not be KeyedArchiver serialized: %@", buf, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v15 = qword_27E3C84C8;
    v16 = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v6];
    [v11 addEntriesFromDictionary:v9];
    v10 = [CVAMetadataWrapper encodeNSCoderObject:v11];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)encodeNSCoderObject:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v11];
  v5 = v11;
  if (v5)
  {
    v6 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v5 localizedDescription];
      *buf = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v3;
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

+ (id)decodeCommon:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CCAAC8];
  v5 = +[CVAMetadataWrapper commonSet];
  v20 = 0;
  v6 = [v4 unarchivedObjectOfClasses:v5 fromData:v3 error:&v20];
  v7 = v20;

  if (v7)
  {

    v19 = 0;
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v3 options:1 error:&v19];
    v9 = v19;
    if (v9)
    {

      v17 = 0;
      v18 = 0;
      v10 = [MEMORY[0x277CCAC58] propertyListWithData:v3 options:0 format:&v18 error:&v17];
      v11 = v17;
      if (v11)
      {
        v12 = +[AppleCV3DMOVKitLog defaultLog];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = [v11 localizedDescription];
          *buf = 138412290;
          v22 = v13;
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

+ (id)decodeCMDeviceMotion:(id)a3
{
  v3 = a3;
  v4 = [CVAMetadataWrapper decodeClass:v3 class:objc_opt_class()];

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

+ (id)decodeLocationDict:(id)a3
{
  v3 = [CVAMetadataWrapper decodeCommon:a3];
  v4 = [[CVACLLocation alloc] initWithDictionary:v3];
  v5 = [(CVACLLocation *)v4 dictionary];

  return v5;
}

+ (id)decodeCLLocation:(id)a3 timestamp:(double *)a4
{
  v5 = a3;
  if (a4)
  {
    v6 = [CVAMetadataWrapper decodeCommon:v5];
    v7 = [[CVACLLocation alloc] initWithDictionary:v6];
    [(CVACLLocation *)v7 timestamp];
    *a4 = v8;
  }

  v9 = [CVAMetadataWrapper decodeClass:v5 class:objc_opt_class()];
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

+ (id)decodeDictionary:(id)a3
{
  v3 = [CVAMetadataWrapper decodeCommon:a3];
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

+ (id)decodeClass:(id)a3 class:(Class)a4
{
  v5 = [CVAMetadataWrapper decodeCommon:a3];
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

+ (id)decodeClass:(id)a3 class:(Class)a4 error:(id *)a5
{
  v7 = [CVAMetadataWrapper decodeCommon:a3];
  v8 = [v7 valueForKey:qword_27E3C84C8];

  if (v8)
  {
    v9 = [v7 objectForKeyedSubscript:qword_27E3C84C8];
    v10 = [CVAMetadataWrapper decodeNSCoderObject:v9 class:a4 error:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)decodeNSCoderObject:(id)a3 classes:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v21 = 0;
  v6 = [CVAMetadataWrapper decodeNSCoderObject:a3 classes:v5 error:&v21];
  v7 = v21;
  if (v7)
  {
    v8 = v7;
    v9 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v8 localizedDescription];
      *buf = 138412546;
      v23 = v5;
      v24 = 2112;
      v25 = v10;
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
  v14 = [CVAMetadataWrapper decodeNSCoderObject:v13 classes:v5 error:&v20];
  v15 = v20;

  if (!v15)
  {
    v6 = v14;
    goto LABEL_12;
  }

  v16 = +[AppleCV3DMOVKitLog defaultLog];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = [v15 localizedDescription];
    *buf = 138412546;
    v23 = v5;
    v24 = 2112;
    v25 = v17;
    _os_log_impl(&dword_24016D000, v16, OS_LOG_TYPE_ERROR, "MetadataWrapper - INFO - cannot deserialize %@ data: %@", buf, 0x16u);
  }

  v11 = 0;
  v6 = v14;
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)decodeNSCoderObject:(id)a3 class:(Class)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v12 = a4;
  v5 = MEMORY[0x277CBEA60];
  v6 = a3;
  v7 = [v5 arrayWithObjects:&v12 count:1];
  v8 = [v4 setWithArray:{v7, v12, v13}];
  v9 = [CVAMetadataWrapper decodeNSCoderObject:v6 classes:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)decodeNSCoderObject:(id)a3 class:(Class)a4 error:(id *)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB98];
  v14 = a4;
  v7 = MEMORY[0x277CBEA60];
  v8 = a3;
  v9 = [v7 arrayWithObjects:&v14 count:1];
  v10 = [v6 setWithArray:{v9, v14, v15}];
  v11 = [CVAMetadataWrapper decodeNSCoderObject:v8 classes:v10 error:a5];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end