@interface SPProtoSerializer
+ (id)arrayWithSPPlist:(id)a3;
+ (id)dataWithObject:(id)a3;
+ (id)dictionaryWithSPPlist:(id)a3;
+ (id)numberWithSPProtoSockPuppetObject:(id)a3;
+ (id)objectWithData:(id)a3;
+ (id)protoSPObjectWithArray:(id)a3 forKey:(id)a4;
+ (id)protoSPObjectWithData:(id)a3 forKey:(id)a4;
+ (id)protoSPObjectWithDictionary:(id)a3 forKey:(id)a4;
+ (id)protoSPObjectWithNumber:(id)a3 forKey:(id)a4;
+ (id)protoSPObjectWithObject:(id)a3 forKey:(id)a4;
+ (id)protoSPObjectWithString:(id)a3 forKey:(id)a4;
+ (id)spPlistWithArray:(id)a3;
+ (id)spPlistWithDictionary:(id)a3;
@end

@implementation SPProtoSerializer

+ (id)dataWithObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [SPCacheMessage toProto:v3];
    v5 = objc_alloc_init(SPProtoSockPuppetObject);
    [(SPProtoSockPuppetObject *)v5 setType:1];
    [(SPProtoSockPuppetObject *)v5 setCacheMessage:v4];
    v6 = [(SPProtoSockPuppetObject *)v5 data];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)objectWithData:(id)a3
{
  v3 = a3;
  v4 = [[SPProtoSockPuppetObject alloc] initWithData:v3];

  if ([(SPProtoSockPuppetObject *)v4 type]== 1)
  {
    v5 = [(SPProtoSockPuppetObject *)v4 cacheMessage];
    v6 = [SPCacheMessage fromProto:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)protoSPObjectWithNumber:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(SPProtoSockPuppetObject);
  [(SPProtoSockPuppetObject *)v7 setKey:v6];

  [(SPProtoSockPuppetObject *)v7 setType:5];
  v8 = [v5 objCType];
  v9 = *v8;
  if (v9 <= 0x65)
  {
    if (*v8 <= 0x62u)
    {
      if (v9 == 66)
      {
        if (!v8[1])
        {
          [(SPProtoSockPuppetObject *)v7 setSubtype:6];
          -[SPProtoSockPuppetObject setNBOOL:](v7, "setNBOOL:", [v5 BOOLValue]);
          goto LABEL_31;
        }
      }

      else if (v9 == 81 && !v8[1])
      {
        [(SPProtoSockPuppetObject *)v7 setSubtype:8];
        -[SPProtoSockPuppetObject setNuint64:](v7, "setNuint64:", [v5 unsignedIntegerValue]);
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    if (v9 != 99)
    {
      if (v9 == 100 && !v8[1])
      {
        [(SPProtoSockPuppetObject *)v7 setSubtype:14];
        [v5 doubleValue];
        [(SPProtoSockPuppetObject *)v7 setNdouble:?];
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    if (!v8[1])
    {
      [(SPProtoSockPuppetObject *)v7 setSubtype:9];
      v11 = [v5 charValue];
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  if (*v8 > 0x70u)
  {
    if (v9 == 113)
    {
      if (!v8[1])
      {
        [(SPProtoSockPuppetObject *)v7 setSubtype:7];
        v12 = [v5 integerValue];
        goto LABEL_29;
      }
    }

    else if (v9 == 115 && !v8[1])
    {
      [(SPProtoSockPuppetObject *)v7 setSubtype:10];
      v11 = [v5 shortValue];
LABEL_26:
      [(SPProtoSockPuppetObject *)v7 setNint32:v11];
      goto LABEL_31;
    }

LABEL_28:
    [(SPProtoSockPuppetObject *)v7 setSubtype:15];
    v12 = [v5 longLongValue];
LABEL_29:
    v10 = v12;
    goto LABEL_30;
  }

  if (v9 == 102)
  {
    if (!v8[1])
    {
      [(SPProtoSockPuppetObject *)v7 setSubtype:13];
      [v5 floatValue];
      [(SPProtoSockPuppetObject *)v7 setNfloat:?];
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (v9 != 105 || v8[1])
  {
    goto LABEL_28;
  }

  [(SPProtoSockPuppetObject *)v7 setSubtype:11];
  v10 = [v5 intValue];
LABEL_30:
  [(SPProtoSockPuppetObject *)v7 setNint64:v10];
LABEL_31:

  return v7;
}

+ (id)numberWithSPProtoSockPuppetObject:(id)a3
{
  v3 = a3;
  v4 = [v3 subtype];
  v5 = MEMORY[0x277CCABB0];
  if (v4 > 10)
  {
    if (v4 <= 12)
    {
      goto LABEL_12;
    }

    if (v4 == 13)
    {
      [v3 nfloat];
      v6 = [v5 numberWithFloat:?];
      goto LABEL_13;
    }

    if (v4 != 14)
    {
LABEL_12:
      v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "nint64")}];
      goto LABEL_13;
    }

    [v3 ndouble];
    v6 = [v5 numberWithDouble:?];
  }

  else
  {
    if (v4 > 7)
    {
      if (v4 == 8)
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v3, "nuint64")}];
      }

      else
      {
        if (v4 == 9)
        {
          [MEMORY[0x277CCABB0] numberWithChar:{objc_msgSend(v3, "nint32")}];
        }

        else
        {
          [MEMORY[0x277CCABB0] numberWithShort:{objc_msgSend(v3, "nint32")}];
        }
        v6 = ;
      }

      goto LABEL_13;
    }

    if (v4 != 6)
    {
      goto LABEL_12;
    }

    v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "nBOOL")}];
  }

LABEL_13:
  v7 = v6;

  return v7;
}

+ (id)protoSPObjectWithString:(id)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(SPProtoSockPuppetObject);
  v8 = v7;
  if (v5)
  {
    [(SPProtoSockPuppetObject *)v7 setKey:v5];
  }

  [(SPProtoSockPuppetObject *)v8 setType:2];
  [(SPProtoSockPuppetObject *)v8 setText:v6];

  return v8;
}

+ (id)protoSPObjectWithData:(id)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(SPProtoSockPuppetObject);
  v8 = v7;
  if (v5)
  {
    [(SPProtoSockPuppetObject *)v7 setKey:v5];
  }

  [(SPProtoSockPuppetObject *)v8 setType:4];
  [(SPProtoSockPuppetObject *)v8 setObject:v6];

  return v8;
}

+ (id)protoSPObjectWithObject:(id)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(SPProtoSockPuppetObject);
  v8 = v7;
  if (v5)
  {
    [(SPProtoSockPuppetObject *)v7 setKey:v5];
  }

  [(SPProtoSockPuppetObject *)v8 setType:3];
  [(SPProtoSockPuppetObject *)v8 setObject:v6];

  return v8;
}

+ (id)protoSPObjectWithDictionary:(id)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(SPProtoSockPuppetObject);
  v8 = v7;
  if (v5)
  {
    [(SPProtoSockPuppetObject *)v7 setKey:v5];
  }

  [(SPProtoSockPuppetObject *)v8 setType:16];
  v9 = [SPProtoSerializer spPlistWithDictionary:v6];

  v10 = [v9 data];
  [(SPProtoSockPuppetObject *)v8 setObject:v10];

  return v8;
}

+ (id)protoSPObjectWithArray:(id)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(SPProtoSockPuppetObject);
  v8 = v7;
  if (v5)
  {
    [(SPProtoSockPuppetObject *)v7 setKey:v5];
  }

  [(SPProtoSockPuppetObject *)v8 setType:17];
  v9 = [SPProtoSerializer spPlistWithArray:v6];

  v10 = [v9 data];
  [(SPProtoSockPuppetObject *)v8 setObject:v10];

  return v8;
}

+ (id)spPlistWithArray:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(SPProtoSockPuppetPlist);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v41;
    v10 = 0x277CCA000uLL;
    v11 = 0x277CCA000uLL;
    v12 = 0x277CBE000uLL;
    *&v7 = 136446722;
    v34 = v7;
    v35 = v5;
    do
    {
      v13 = 0;
      do
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v40 + 1) + 8 * v13);
        v15 = *(v10 + 3240);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [SPProtoSerializer protoSPObjectWithString:v14 forKey:0];
LABEL_16:
          v19 = v16;
          [(SPProtoSockPuppetPlist *)v4 addObject:v16, v34];
          goto LABEL_17;
        }

        v17 = *(v11 + 2992);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [SPProtoSerializer protoSPObjectWithNumber:v14 forKey:0];
          goto LABEL_16;
        }

        v18 = *(v12 + 2704);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [SPProtoSerializer protoSPObjectWithData:v14 forKey:0];
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [SPProtoSerializer protoSPObjectWithDictionary:v14 forKey:0];
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [SPProtoSerializer protoSPObjectWithArray:v14 forKey:0];
          goto LABEL_16;
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        if (__allowedClasses_onceToken != -1)
        {
          +[SPProtoSerializer spPlistWithArray:];
        }

        v20 = __allowedClasses___allowedClasses;
        v21 = [v20 countByEnumeratingWithState:&v36 objects:v50 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = 0;
          v24 = *v37;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v37 != v24)
              {
                objc_enumerationMutation(v20);
              }

              v26 = *(*(&v36 + 1) + 8 * i);
              v23 |= objc_opt_isKindOfClass();
            }

            v22 = [v20 countByEnumeratingWithState:&v36 objects:v50 count:16];
          }

          while (v22);

          v5 = v35;
          v10 = 0x277CCA000;
          v12 = 0x277CBE000;
          if (v23)
          {
            goto LABEL_34;
          }
        }

        else
        {

          v12 = 0x277CBE000;
        }

        v27 = wk_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          *buf = v34;
          v45 = "+[SPProtoSerializer spPlistWithArray:]";
          v46 = 1024;
          v47 = 208;
          v48 = 2114;
          v49 = v29;
          v30 = v29;
          _os_log_error_impl(&dword_23B338000, v27, OS_LOG_TYPE_ERROR, "%{public}s:%d: obj is of class %{public}@ which is not an allowed class", buf, 0x1Cu);

          v12 = 0x277CBE000;
        }

LABEL_34:
        v19 = spUtils_serializeObject(v14);
        v28 = [SPProtoSerializer protoSPObjectWithObject:v19 forKey:0];
        [(SPProtoSockPuppetPlist *)v4 addObject:v28];

        v11 = 0x277CCA000;
LABEL_17:

        ++v13;
      }

      while (v13 != v8);
      v31 = [v5 countByEnumeratingWithState:&v40 objects:v51 count:16];
      v8 = v31;
    }

    while (v31);
  }

  v32 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)spPlistWithDictionary:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(SPProtoSockPuppetPlist);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v38 objects:v49 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v39;
    v10 = 0x277CCA000uLL;
    *&v7 = 136446722;
    v31 = v7;
    v32 = *v39;
    v33 = v4;
    do
    {
      v11 = 0;
      do
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v38 + 1) + 8 * v11);
        v13 = [v5 objectForKeyedSubscript:{v12, v31}];
        v14 = *(v10 + 3240);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [SPProtoSerializer protoSPObjectWithString:v13 forKey:v12];
LABEL_16:
          v16 = v15;
          [(SPProtoSockPuppetPlist *)v4 addObject:v15];
          goto LABEL_17;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [SPProtoSerializer protoSPObjectWithNumber:v13 forKey:v12];
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [SPProtoSerializer protoSPObjectWithData:v13 forKey:v12];
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [SPProtoSerializer protoSPObjectWithDictionary:v13 forKey:v12];
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [SPProtoSerializer protoSPObjectWithArray:v13 forKey:v12];
          goto LABEL_16;
        }

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        if (__allowedClasses_onceToken != -1)
        {
          +[SPProtoSerializer spPlistWithArray:];
        }

        v17 = __allowedClasses___allowedClasses;
        v18 = [v17 countByEnumeratingWithState:&v34 objects:v48 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = 0;
          v21 = *v35;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v35 != v21)
              {
                objc_enumerationMutation(v17);
              }

              v23 = *(*(&v34 + 1) + 8 * i);
              v20 |= objc_opt_isKindOfClass();
            }

            v19 = [v17 countByEnumeratingWithState:&v34 objects:v48 count:16];
          }

          while (v19);

          v9 = v32;
          v4 = v33;
          if (v20)
          {
            goto LABEL_34;
          }
        }

        else
        {
        }

        v24 = wk_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v26 = objc_opt_class();
          *buf = v31;
          v43 = "+[SPProtoSerializer spPlistWithDictionary:]";
          v44 = 1024;
          v45 = 254;
          v46 = 2114;
          v47 = v26;
          v27 = v26;
          _os_log_error_impl(&dword_23B338000, v24, OS_LOG_TYPE_ERROR, "%{public}s:%d: obj is of class %{public}@ which is not an allowed class", buf, 0x1Cu);
        }

LABEL_34:
        v16 = spUtils_serializeObject(v13);
        v25 = [SPProtoSerializer protoSPObjectWithObject:v16 forKey:v12];
        [(SPProtoSockPuppetPlist *)v4 addObject:v25];

        v10 = 0x277CCA000;
LABEL_17:

        ++v11;
      }

      while (v11 != v8);
      v28 = [v5 countByEnumeratingWithState:&v38 objects:v49 count:16];
      v8 = v28;
    }

    while (v28);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)dictionaryWithSPPlist:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if ([v3 objectsCount])
  {
    v6 = 0;
    *&v5 = 136446466;
    v28 = v5;
    do
    {
      v7 = [v3 objectAtIndex:{v6, v28, *buf, *&buf[16], v30}];
      if ([v7 type] == 2)
      {
        v8 = [v7 text];

        if (v8)
        {
          v9 = [v7 text];
LABEL_11:
          v11 = v9;
          v12 = [v7 key];
          [v4 setObject:v11 forKey:v12];
LABEL_12:

          goto LABEL_14;
        }

        v11 = wk_default_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = v28;
          *&buf[4] = "+[SPProtoSerializer dictionaryWithSPPlist:]";
          *&buf[12] = 1024;
          *&buf[14] = 271;
          v21 = v11;
          v22 = "%{public}s:%d: SPProtoSerializerTypeString, text field is empty";
          goto LABEL_36;
        }
      }

      else
      {
        if ([v7 type] == 5)
        {
          v9 = [SPProtoSerializer numberWithSPProtoSockPuppetObject:v7];
          goto LABEL_11;
        }

        if ([v7 type] == 4)
        {
          v10 = [v7 object];

          if (v10)
          {
            v9 = [v7 object];
            goto LABEL_11;
          }

          v11 = wk_default_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = v28;
            *&buf[4] = "+[SPProtoSerializer dictionaryWithSPPlist:]";
            *&buf[12] = 1024;
            *&buf[14] = 279;
            v21 = v11;
            v22 = "%{public}s:%d: SPProtoSerializerTypeData, object field is empty";
LABEL_36:
            _os_log_error_impl(&dword_23B338000, v21, OS_LOG_TYPE_ERROR, v22, buf, 0x12u);
          }
        }

        else if ([v7 type] == 17)
        {
          v13 = [v7 object];

          if (v13)
          {
            v14 = [SPProtoSockPuppetPlist alloc];
            v15 = [v7 object];
            v11 = [(SPProtoSockPuppetPlist *)v14 initWithData:v15];

            v12 = [SPProtoSerializer arrayWithSPPlist:v11];
            v16 = [v7 key];
            [v4 setObject:v12 forKey:v16];

            goto LABEL_12;
          }

          v11 = wk_default_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = v28;
            *&buf[4] = "+[SPProtoSerializer dictionaryWithSPPlist:]";
            *&buf[12] = 1024;
            *&buf[14] = 287;
            v21 = v11;
            v22 = "%{public}s:%d: SPProtoSerializerTypeData, object field is empty";
            goto LABEL_36;
          }
        }

        else
        {
          if ([v7 type] != 16)
          {
            if ([v7 type] != 3)
            {
              goto LABEL_15;
            }

            v23 = [v7 object];

            if (!v23)
            {
              v11 = wk_default_log();
              if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_14;
              }

              *buf = v28;
              *&buf[4] = "+[SPProtoSerializer dictionaryWithSPPlist:]";
              *&buf[12] = 1024;
              *&buf[14] = 301;
              v21 = v11;
              v22 = "%{public}s:%d: SPProtoSerializerTypeObject, object field is empty";
              goto LABEL_36;
            }

            v11 = [v7 object];
            if (__allowedClasses_onceToken != -1)
            {
              +[SPProtoSerializer spPlistWithArray:];
            }

            v20 = spUtils_deserializeObject(v11, __allowedClasses___allowedClasses);
            goto LABEL_30;
          }

          v17 = [v7 object];

          if (v17)
          {
            v18 = [SPProtoSockPuppetPlist alloc];
            v19 = [v7 object];
            v11 = [(SPProtoSockPuppetPlist *)v18 initWithData:v19];

            v20 = [SPProtoSerializer dictionaryWithSPPlist:v11];
LABEL_30:
            v24 = v20;
            v25 = [v7 key];
            [v4 setObject:v24 forKey:v25];

            goto LABEL_14;
          }

          v11 = wk_default_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = v28;
            *&buf[4] = "+[SPProtoSerializer dictionaryWithSPPlist:]";
            *&buf[12] = 1024;
            *&buf[14] = 295;
            v21 = v11;
            v22 = "%{public}s:%d: SPProtoSerializerTypeData, object field is empty";
            goto LABEL_36;
          }
        }
      }

LABEL_14:

LABEL_15:
      ++v6;
    }

    while (v6 < [v3 objectsCount]);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)arrayWithSPPlist:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  if ([v3 objectsCount])
  {
    v6 = 0;
    *&v5 = 136446466;
    v25 = v5;
    while (1)
    {
      v7 = [v3 objectAtIndex:{v6, v25, *buf, *&buf[16], v27}];
      if ([v7 type] == 2)
      {
        break;
      }

      if ([v7 type] == 5)
      {
        v9 = [SPProtoSerializer numberWithSPProtoSockPuppetObject:v7];
        goto LABEL_11;
      }

      if ([v7 type] == 4)
      {
        v10 = [v7 object];

        if (!v10)
        {
          v11 = wk_default_log();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_34;
          }

          *buf = v25;
          *&buf[4] = "+[SPProtoSerializer arrayWithSPPlist:]";
          *&buf[12] = 1024;
          *&buf[14] = 326;
          v12 = v11;
          v13 = "%{public}s:%d: SPProtoSerializerTypeData, object field is empty";
          goto LABEL_14;
        }

        v9 = [v7 object];
        goto LABEL_11;
      }

      if ([v7 type] == 17)
      {
        v14 = [v7 object];

        if (v14)
        {
          v15 = [SPProtoSockPuppetPlist alloc];
          v16 = [v7 object];
          v11 = [(SPProtoSockPuppetPlist *)v15 initWithData:v16];

          v17 = [SPProtoSerializer arrayWithSPPlist:v11];
          goto LABEL_28;
        }

        v11 = wk_default_log();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

        *buf = v25;
        *&buf[4] = "+[SPProtoSerializer arrayWithSPPlist:]";
        *&buf[12] = 1024;
        *&buf[14] = 334;
        v12 = v11;
        v13 = "%{public}s:%d: SPProtoSerializerTypeData, object field is empty";
        goto LABEL_14;
      }

      if ([v7 type] == 16)
      {
        v18 = [v7 object];

        if (v18)
        {
          v19 = [SPProtoSockPuppetPlist alloc];
          v20 = [v7 object];
          v11 = [(SPProtoSockPuppetPlist *)v19 initWithData:v20];

          v17 = [SPProtoSerializer dictionaryWithSPPlist:v11];
          goto LABEL_28;
        }

        v11 = wk_default_log();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
LABEL_34:

          goto LABEL_35;
        }

        *buf = v25;
        *&buf[4] = "+[SPProtoSerializer arrayWithSPPlist:]";
        *&buf[12] = 1024;
        *&buf[14] = 342;
        v12 = v11;
        v13 = "%{public}s:%d: SPProtoSerializerTypeData, object field is empty";
        goto LABEL_14;
      }

      if ([v7 type] == 3)
      {
        v21 = [v7 object];

        if (v21)
        {
          v11 = [v7 object];
          if (__allowedClasses_onceToken != -1)
          {
            +[SPProtoSerializer spPlistWithArray:];
          }

          v17 = spUtils_deserializeObject(v11, __allowedClasses___allowedClasses);
LABEL_28:
          v22 = v17;
          [v4 addObject:v17];

          goto LABEL_34;
        }

        v11 = wk_default_log();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

        *buf = v25;
        *&buf[4] = "+[SPProtoSerializer arrayWithSPPlist:]";
        *&buf[12] = 1024;
        *&buf[14] = 348;
        v12 = v11;
        v13 = "%{public}s:%d: SPProtoSerializerTypeObject, object field is empty";
LABEL_14:
        _os_log_error_impl(&dword_23B338000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
        goto LABEL_34;
      }

LABEL_35:

      if (++v6 >= [v3 objectsCount])
      {
        goto LABEL_38;
      }
    }

    v8 = [v7 text];

    if (!v8)
    {
      v11 = wk_default_log();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = v25;
      *&buf[4] = "+[SPProtoSerializer arrayWithSPPlist:]";
      *&buf[12] = 1024;
      *&buf[14] = 318;
      v12 = v11;
      v13 = "%{public}s:%d: SPProtoSerializerTypeString, text field is empty";
      goto LABEL_14;
    }

    v9 = [v7 text];
LABEL_11:
    v11 = v9;
    [v4 addObject:v9];
    goto LABEL_34;
  }

LABEL_38:

  v23 = *MEMORY[0x277D85DE8];

  return v4;
}

@end