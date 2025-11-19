@interface BSProtobufSerialization
+ (id)buildSchemaForClass:(Class)a3 builder:(id)a4;
+ (id)decodeObjectOfClass:(Class)a3 fromData:(id)a4 error:(id *)a5;
+ (id)encodeObject:(id)a3 error:(id *)a4;
@end

@implementation BSProtobufSerialization

+ (id)decodeObjectOfClass:(Class)a3 fromData:(id)a4 error:(id *)a5
{
  v7 = _BSProtobufValidateClassForEncoding("<top level>", a3);
  v8 = [(objc_class *)v7 protobufSchema];
  if (v8)
  {
    v9 = v8;
    while (1)
    {
      v9 = *(v9 + 16);
      if (!v9)
      {
        break;
      }

      if (*(v9 + 56))
      {
        goto LABEL_7;
      }
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

LABEL_7:
  v10 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:a4];
  v18 = 0;
  v11 = *(v9 + 56);
  if (v11)
  {
    v17 = &v18;
    v12 = &v17;
  }

  else
  {
    if (*(v9 + 73) == 1)
    {
      v13 = [[v7 alloc] initForProtobufDecoding];
    }

    else
    {
      v13 = objc_alloc_init(v7);
    }

    v18 = v13;
    v12 = &v18;
    v11 = v9;
  }

  v14 = _BSProtobufSchemaDecodeMessage(v11, v12, v10, a5);

  v15 = v18;
  if (v14)
  {
    return v18;
  }

  else
  {
    return 0;
  }
}

+ (id)encodeObject:(id)a3 error:(id *)a4
{
  v13 = a3;
  v6 = objc_opt_class();
  v7 = [(objc_class *)_BSProtobufValidateClassForEncoding("<top level>" protobufSchema];
  if (v7)
  {
    v8 = v7;
    while (1)
    {
      v8 = *(v8 + 16);
      if (!v8)
      {
        break;
      }

      if (*(v8 + 56))
      {
        goto LABEL_7;
      }
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

LABEL_7:
  v9 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  v10 = *(v8 + 56);
  if (!v10)
  {
    if (_BSProtobufSchemaEncodeMessage(v8, a3, v9, a4))
    {
      goto LABEL_9;
    }

LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  if ((_BSProtobufSchemaEncodeMessageWithExplicitIvarBaseAddress(v10, &v13, v9, a4) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v11 = [v9 immutableData];
LABEL_12:

  return v11;
}

+ (id)buildSchemaForClass:(Class)a3 builder:(id)a4
{
  v6 = [BSProtobufSchema alloc];
  if (v6)
  {
    v13.receiver = v6;
    v13.super_class = BSProtobufSchema;
    v7 = objc_msgSendSuper2(&v13, sel_init);
    v8 = v7;
    if (v7)
    {
      v7[1] = a3;
      v7[3] = 0;
      v7[6] = objc_alloc_init(MEMORY[0x1E695DF88]);
      Superclass = class_getSuperclass(a3);
      if (Superclass)
      {
        v10 = Superclass;
        while (!BSProtobufClassImplmementsProtobufSchema(v10))
        {
          v10 = class_getSuperclass(v10);
          if (!v10)
          {
            goto LABEL_9;
          }
        }

        v8[2] = [(objc_class *)v10 protobufSchema];
      }

LABEL_9:
      *(v8 + 72) = class_getInstanceMethod(a3, sel_didFinishProtobufDecodingWithError_) != 0;
      *(v8 + 73) = class_getInstanceMethod(a3, sel_initForProtobufDecoding) != 0;
      *(v8 + 74) = class_getInstanceMethod(a3, sel_initProtobufTranslatorForObject_) != 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = v8;
  (*(a4 + 2))(a4, v11);
  return v11;
}

@end