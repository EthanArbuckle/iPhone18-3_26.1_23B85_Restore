@interface BSProtobufSerialization
+ (id)buildSchemaForClass:(Class)class builder:(id)builder;
+ (id)decodeObjectOfClass:(Class)class fromData:(id)data error:(id *)error;
+ (id)encodeObject:(id)object error:(id *)error;
@end

@implementation BSProtobufSerialization

+ (id)decodeObjectOfClass:(Class)class fromData:(id)data error:(id *)error
{
  v7 = _BSProtobufValidateClassForEncoding("<top level>", class);
  protobufSchema = [(objc_class *)v7 protobufSchema];
  if (protobufSchema)
  {
    v9 = protobufSchema;
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

    v9 = protobufSchema;
  }

  else
  {
    v9 = 0;
  }

LABEL_7:
  v10 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:data];
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
      initForProtobufDecoding = [[v7 alloc] initForProtobufDecoding];
    }

    else
    {
      initForProtobufDecoding = objc_alloc_init(v7);
    }

    v18 = initForProtobufDecoding;
    v12 = &v18;
    v11 = v9;
  }

  v14 = _BSProtobufSchemaDecodeMessage(v11, v12, v10, error);

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

+ (id)encodeObject:(id)object error:(id *)error
{
  objectCopy = object;
  v6 = objc_opt_class();
  protobufSchema = [(objc_class *)_BSProtobufValidateClassForEncoding("<top level>" protobufSchema];
  if (protobufSchema)
  {
    v8 = protobufSchema;
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

    v8 = protobufSchema;
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
    if (_BSProtobufSchemaEncodeMessage(v8, object, v9, error))
    {
      goto LABEL_9;
    }

LABEL_11:
    immutableData = 0;
    goto LABEL_12;
  }

  if ((_BSProtobufSchemaEncodeMessageWithExplicitIvarBaseAddress(v10, &objectCopy, v9, error) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  immutableData = [v9 immutableData];
LABEL_12:

  return immutableData;
}

+ (id)buildSchemaForClass:(Class)class builder:(id)builder
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
      v7[1] = class;
      v7[3] = 0;
      v7[6] = objc_alloc_init(MEMORY[0x1E695DF88]);
      Superclass = class_getSuperclass(class);
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
      *(v8 + 72) = class_getInstanceMethod(class, sel_didFinishProtobufDecodingWithError_) != 0;
      *(v8 + 73) = class_getInstanceMethod(class, sel_initForProtobufDecoding) != 0;
      *(v8 + 74) = class_getInstanceMethod(class, sel_initProtobufTranslatorForObject_) != 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = v8;
  (*(builder + 2))(builder, v11);
  return v11;
}

@end