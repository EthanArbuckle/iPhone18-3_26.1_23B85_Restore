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
  if (v4 > 10)
  {
    if (v4 <= 12)
    {
      goto LABEL_12;
    }

    if (v4 == 13)
    {
      [v3 nfloat];
      v5 = [NSNumber numberWithFloat:?];
      goto LABEL_13;
    }

    if (v4 != 14)
    {
LABEL_12:
      v5 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v3 nint64]);
      goto LABEL_13;
    }

    [v3 ndouble];
    v5 = [NSNumber numberWithDouble:?];
  }

  else
  {
    if (v4 > 7)
    {
      if (v4 == 8)
      {
        v5 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 nuint64]);
      }

      else
      {
        if (v4 == 9)
        {
          +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [v3 nint32]);
        }

        else
        {
          +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v3 nint32]);
        }
        v5 = ;
      }

      goto LABEL_13;
    }

    if (v4 != 6)
    {
      goto LABEL_12;
    }

    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 nBOOL]);
  }

LABEL_13:
  v6 = v5;

  return v6;
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
  v3 = a3;
  v4 = objc_alloc_init(SPProtoSockPuppetPlist);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v40;
    v10 = &PLLogRegisteredEvent_ptr;
    v11 = &PLLogRegisteredEvent_ptr;
    v12 = &PLLogRegisteredEvent_ptr;
    *&v7 = 136446722;
    v33 = v7;
    v34 = v5;
    do
    {
      v13 = 0;
      do
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v39 + 1) + 8 * v13);
        v15 = v10[188];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [SPProtoSerializer protoSPObjectWithString:v14 forKey:0];
LABEL_16:
          v19 = v16;
          [(SPProtoSockPuppetPlist *)v4 addObject:v16, v33];
          goto LABEL_17;
        }

        v17 = v11[184];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [SPProtoSerializer protoSPObjectWithNumber:v14 forKey:0];
          goto LABEL_16;
        }

        v18 = v12[208];
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

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        if (qword_100051D38 != -1)
        {
          sub_100029898();
        }

        v20 = qword_100051D30;
        v21 = [v20 countByEnumeratingWithState:&v35 objects:v49 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = 0;
          v24 = *v36;
          do
          {
            for (i = 0; i != v22; i = i + 1)
            {
              if (*v36 != v24)
              {
                objc_enumerationMutation(v20);
              }

              v26 = *(*(&v35 + 1) + 8 * i);
              v23 |= objc_opt_isKindOfClass();
            }

            v22 = [v20 countByEnumeratingWithState:&v35 objects:v49 count:16];
          }

          while (v22);

          v5 = v34;
          v10 = &PLLogRegisteredEvent_ptr;
          v12 = &PLLogRegisteredEvent_ptr;
          if (v23)
          {
            goto LABEL_34;
          }
        }

        else
        {

          v12 = &PLLogRegisteredEvent_ptr;
        }

        v27 = wk_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          *buf = v33;
          v44 = "+[SPProtoSerializer spPlistWithArray:]";
          v45 = 1024;
          v46 = 208;
          v47 = 2114;
          v48 = v29;
          v30 = v29;
          _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}s:%d: obj is of class %{public}@ which is not an allowed class", buf, 0x1Cu);

          v12 = &PLLogRegisteredEvent_ptr;
        }

LABEL_34:
        v19 = spUtils_serializeObject(v14);
        v28 = [SPProtoSerializer protoSPObjectWithObject:v19 forKey:0];
        [(SPProtoSockPuppetPlist *)v4 addObject:v28];

        v11 = &PLLogRegisteredEvent_ptr;
LABEL_17:

        v13 = v13 + 1;
      }

      while (v13 != v8);
      v31 = [v5 countByEnumeratingWithState:&v39 objects:v50 count:16];
      v8 = v31;
    }

    while (v31);
  }

  return v4;
}

+ (id)spPlistWithDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SPProtoSockPuppetPlist);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v48 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v38;
    v10 = &PLLogRegisteredEvent_ptr;
    *&v7 = 136446722;
    v30 = v7;
    v31 = *v38;
    v32 = v4;
    do
    {
      v11 = 0;
      do
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v37 + 1) + 8 * v11);
        v13 = [v5 objectForKeyedSubscript:{v12, v30}];
        v14 = v10[188];
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

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        if (qword_100051D38 != -1)
        {
          sub_100029898();
        }

        v17 = qword_100051D30;
        v18 = [v17 countByEnumeratingWithState:&v33 objects:v47 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = 0;
          v21 = *v34;
          do
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v34 != v21)
              {
                objc_enumerationMutation(v17);
              }

              v23 = *(*(&v33 + 1) + 8 * i);
              v20 |= objc_opt_isKindOfClass();
            }

            v19 = [v17 countByEnumeratingWithState:&v33 objects:v47 count:16];
          }

          while (v19);

          v9 = v31;
          v4 = v32;
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
          *buf = v30;
          v42 = "+[SPProtoSerializer spPlistWithDictionary:]";
          v43 = 1024;
          v44 = 254;
          v45 = 2114;
          v46 = v26;
          v27 = v26;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}s:%d: obj is of class %{public}@ which is not an allowed class", buf, 0x1Cu);
        }

LABEL_34:
        v16 = spUtils_serializeObject(v13);
        v25 = [SPProtoSerializer protoSPObjectWithObject:v16 forKey:v12];
        [(SPProtoSockPuppetPlist *)v4 addObject:v25];

        v10 = &PLLogRegisteredEvent_ptr;
LABEL_17:

        v11 = v11 + 1;
      }

      while (v11 != v8);
      v28 = [v5 countByEnumeratingWithState:&v37 objects:v48 count:16];
      v8 = v28;
    }

    while (v28);
  }

  return v4;
}

+ (id)dictionaryWithSPPlist:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  if ([v3 objectsCount])
  {
    v6 = 0;
    *&v5 = 136446466;
    v27 = v5;
    do
    {
      v7 = [v3 objectAtIndex:{v6, v27, *buf, *&buf[16]}];
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
          *buf = v27;
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
            *buf = v27;
            *&buf[4] = "+[SPProtoSerializer dictionaryWithSPPlist:]";
            *&buf[12] = 1024;
            *&buf[14] = 279;
            v21 = v11;
            v22 = "%{public}s:%d: SPProtoSerializerTypeData, object field is empty";
LABEL_36:
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v22, buf, 0x12u);
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
            *buf = v27;
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

              *buf = v27;
              *&buf[4] = "+[SPProtoSerializer dictionaryWithSPPlist:]";
              *&buf[12] = 1024;
              *&buf[14] = 301;
              v21 = v11;
              v22 = "%{public}s:%d: SPProtoSerializerTypeObject, object field is empty";
              goto LABEL_36;
            }

            v11 = [v7 object];
            if (qword_100051D38 != -1)
            {
              sub_100029898();
            }

            v20 = spUtils_deserializeObject(v11, qword_100051D30);
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
            *buf = v27;
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

  return v4;
}

+ (id)arrayWithSPPlist:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  if ([v3 objectsCount])
  {
    v6 = 0;
    *&v5 = 136446466;
    v24 = v5;
    while (1)
    {
      v7 = [v3 objectAtIndex:{v6, v24, *buf, *&buf[16]}];
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

          *buf = v24;
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

        *buf = v24;
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

        *buf = v24;
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
          if (qword_100051D38 != -1)
          {
            sub_100029898();
          }

          v17 = spUtils_deserializeObject(v11, qword_100051D30);
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

        *buf = v24;
        *&buf[4] = "+[SPProtoSerializer arrayWithSPPlist:]";
        *&buf[12] = 1024;
        *&buf[14] = 348;
        v12 = v11;
        v13 = "%{public}s:%d: SPProtoSerializerTypeObject, object field is empty";
LABEL_14:
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
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

      *buf = v24;
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

  return v4;
}

@end