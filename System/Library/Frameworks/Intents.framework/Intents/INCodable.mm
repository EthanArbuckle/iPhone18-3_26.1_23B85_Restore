@interface INCodable
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (BOOL)_BOOLValueForAttribute:(id)a3;
- (BOOL)_isAttribute:(id)a3 equalTo:(id)a4;
- (BOOL)_isStringAttribute:(id)a3 equalTo:(id)a4;
- (BOOL)_readFrom:(id)a3 error:(id *)a4;
- (BOOL)_writeTo:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValidKey:(id)a3;
- (BOOL)readFrom:(id)a3;
- (INCodable)initWithCodableDescription:(id)a3 data:(id)a4;
- (INCodable)initWithCoder:(id)a3;
- (double)_doubleValueForAttribute:(id)a3;
- (float)_floatValueForAttribute:(id)a3;
- (id)_copyWithZone:(_NSZone *)a3 error:(id *)a4;
- (id)_dataWithError:(id *)a3;
- (id)_dictionaryRepresentationWithNullValues:(BOOL)a3;
- (id)_initWithCodableDescription:(id)a3 data:(id)a4 error:(id *)a5;
- (id)_nonNilAttributes;
- (id)_nonNilRepeatedAttributes;
- (id)_valueForAttribute:(id)a3;
- (id)_valueForAttribute:(id)a3 ofClass:(Class)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)data;
- (id)valueForPropertyNamed:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (int)_int32ValueForAttribute:(id)a3;
- (int64_t)_int64ValueForAttribute:(id)a3;
- (unint64_t)_UInt64ValueForAttribute:(id)a3;
- (unint64_t)hash;
- (unsigned)_UInt32ValueForAttribute:(id)a3;
- (void)_setData:(id)a3 error:(id *)a4;
- (void)_setEmptyArrayForNonNilRepeatedAttributes:(id)a3;
- (void)_setObject:(id)a3 forAttribute:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setNilValueForAllKeys;
- (void)setValue:(id)a3 forPropertyNamed:(id)a4;
- (void)writeTo:(id)a3;
@end

@implementation INCodable

- (id)_nonNilRepeatedAttributes
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(INCodable *)self _objectDescription];
  v5 = [v4 attributes];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 propertyName];
        v13 = [v12 hasPrefix:@"_"];

        if ((v13 & 1) == 0)
        {
          v14 = [(INCodable *)self _valueForAttribute:v11];
          if (v14 && ![v11 modifier])
          {
            v15 = [v11 propertyName];
            [v3 addObject:v15];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_nonNilAttributes
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = [MEMORY[0x1E695DFA8] set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(INCodable *)self _objectDescription];
  v4 = [v3 attributes];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 propertyName];
        v12 = [v11 hasPrefix:@"_"];

        if ((v12 & 1) == 0)
        {
          v13 = [(INCodable *)self _valueForAttribute:v10];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if ((INObjectIsConsideredNil(v13, isKindOfClass & 1) & 1) == 0)
          {
            v15 = [v10 propertyName];
            [v18 addObject:v15];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)data
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v2 = [(INCodable *)self _dataWithError:&v13];
  v3 = v13;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 debugDescription];
    v6 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
    {
      v10 = v6;
      v11 = [(__CFString *)v5 length];
      v12 = @"INCodable data writing failed";
      if (v11)
      {
        v12 = v5;
      }

      *buf = 136315394;
      v15 = "[INCodable data]";
      v16 = 2114;
      v17 = v12;
      _os_log_fault_impl(&dword_18E991000, v10, OS_LOG_TYPE_FAULT, "%s INCodable data failed: %{public}@", buf, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    v7 = v2;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_valueForAttribute:(id)a3 ofClass:(Class)a4
{
  v6 = a3;
  v7 = [(INCodable *)self _valueForAttribute:v6];
  if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D930];
    v11 = MEMORY[0x1E696AEC0];
    v12 = [v6 propertyName];
    v13 = NSStringFromClass(a4);
    v14 = [v11 stringWithFormat:@"Property '%@' is not a valid %@ subclass", v12, v13];
    v15 = [v9 exceptionWithName:v10 reason:v14 userInfo:0];
    v16 = v15;

    objc_exception_throw(v15);
  }

  return v7;
}

- (id)valueForPropertyNamed:(id)a3
{
  customValueForKeyDictionary = self->_customValueForKeyDictionary;
  v4 = [a3 if_stringByLowercasingFirstCharacter];
  v5 = [(NSMutableDictionary *)customValueForKeyDictionary objectForKeyedSubscript:v4];

  return v5;
}

- (id)_valueForAttribute:(id)a3
{
  customValueForKeyDictionary = self->_customValueForKeyDictionary;
  v4 = [a3 propertyName];
  v5 = [v4 if_stringByLowercasingFirstCharacter];
  v6 = [(NSMutableDictionary *)customValueForKeyDictionary objectForKeyedSubscript:v5];

  return v6;
}

- (BOOL)_BOOLValueForAttribute:(id)a3
{
  v3 = [(INCodable *)self _valueForAttribute:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (unint64_t)_UInt64ValueForAttribute:(id)a3
{
  v3 = [(INCodable *)self _valueForAttribute:a3];
  v4 = [v3 unsignedLongLongValue];

  return v4;
}

- (unsigned)_UInt32ValueForAttribute:(id)a3
{
  v3 = [(INCodable *)self _valueForAttribute:a3];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (int64_t)_int64ValueForAttribute:(id)a3
{
  v3 = [(INCodable *)self _valueForAttribute:a3];
  v4 = [v3 longLongValue];

  return v4;
}

- (int)_int32ValueForAttribute:(id)a3
{
  v3 = [(INCodable *)self _valueForAttribute:a3];
  v4 = [v3 intValue];

  return v4;
}

- (float)_floatValueForAttribute:(id)a3
{
  v3 = [(INCodable *)self _valueForAttribute:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (double)_doubleValueForAttribute:(id)a3
{
  v3 = [(INCodable *)self _valueForAttribute:a3];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)_setObject:(id)a3 forAttribute:(id)a4
{
  v6 = a3;
  v7 = [a4 propertyName];
  [(INCodable *)self setValue:v6 forPropertyNamed:v7];
}

- (void)setValue:(id)a3 forPropertyNamed:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [v6 if_stringByLowercasingFirstCharacter];
  if (![(INCodable *)self isValidKey:v7])
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D930];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' is not a valid attribute", v7];
    v12 = [v9 exceptionWithName:v10 reason:v11 userInfo:0];
    v13 = v12;

    objc_exception_throw(v12);
  }

  customValueForKeyDictionary = self->_customValueForKeyDictionary;
  if (v14)
  {
    [(NSMutableDictionary *)customValueForKeyDictionary setObject:v14 forKeyedSubscript:v7];
  }

  else
  {
    [(NSMutableDictionary *)customValueForKeyDictionary removeObjectForKey:v7];
  }
}

- (id)_copyWithZone:(_NSZone *)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = [(INCodable *)self _nonNilRepeatedAttributes];
  v22 = 0;
  v8 = [(INCodable *)self _dataWithError:&v22];
  v9 = v22;
  if (v9)
  {
    v10 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = "[INCodable _copyWithZone:error:]";
      v25 = 2112;
      v26 = self;
      v27 = 2112;
      v28 = v9;
      _os_log_error_impl(&dword_18E991000, v10, OS_LOG_TYPE_ERROR, "%s Failed to copy INCodable %@ due to data error: %@", buf, 0x20u);
    }

    v11 = v9;
    v12 = 0;
    v13 = 0;
    *a4 = v9;
  }

  else
  {
    v14 = [objc_opt_class() allocWithZone:a3];
    v15 = [(INCodable *)self _objectDescription];
    v21 = 0;
    v16 = [v14 _initWithCodableDescription:v15 data:v8 error:&v21];
    v12 = v21;

    [v16 _setEmptyArrayForNonNilRepeatedAttributes:v7];
    if (v12)
    {
      v17 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v24 = "[INCodable _copyWithZone:error:]";
        v25 = 2112;
        v26 = self;
        v27 = 2112;
        v28 = v12;
        _os_log_error_impl(&dword_18E991000, v17, OS_LOG_TYPE_ERROR, "%s Failed to copy INCodable %@ due to initialization error: %@", buf, 0x20u);
      }

      v18 = v12;
      v13 = 0;
      *a4 = v12;
    }

    else
    {
      v13 = v16;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)_setEmptyArrayForNonNilRepeatedAttributes:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = MEMORY[0x1E695E0F0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([(INCodable *)self isValidKey:v10])
        {
          v11 = [(INCodable *)self valueForPropertyNamed:v10];
          if (v11)
          {
          }

          else
          {
            v12 = [(INCodable *)self _objectDescription];
            v13 = [v12 attributeByName:v10];
            v14 = [v13 modifier];

            if (!v14)
            {
              [(INCodable *)self setValue:v8 forPropertyNamed:v10];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_dataWithError:(id *)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  [(INCodable *)self _writeTo:v5 error:a3];
  v6 = [v5 immutableData];

  return v6;
}

- (BOOL)_writeTo:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(INCodable *)self _objectDescription];
  v8 = [v7 attributes];
  v9 = [v8 allKeys];
  v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_74];

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __28__INCodable__writeTo_error___block_invoke_2;
  v37[3] = &unk_1E7282A98;
  v39 = a4;
  v11 = v6;
  v38 = v11;
  v12 = MEMORY[0x193AD7780](v37);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __28__INCodable__writeTo_error___block_invoke_3;
  v33[3] = &unk_1E7282AC0;
  v33[4] = self;
  v13 = v12;
  v35 = v13;
  v36 = a4;
  v14 = v11;
  v34 = v14;
  v15 = MEMORY[0x193AD7780](v33);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v10;
  v16 = [obj countByEnumeratingWithState:&v29 objects:v40 count:16];
  if (v16)
  {
    v17 = v16;
    v27 = v14;
    v18 = *v30;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v29 + 1) + 8 * i);
        v21 = [(INCodable *)self _objectDescription];
        v22 = [v21 attributes];
        v23 = [v22 objectForKey:v20];

        if (v23 && !(v15)[2](v15, v23, v20))
        {

          v24 = 0;
          goto LABEL_12;
        }
      }

      v17 = [obj countByEnumeratingWithState:&v29 objects:v40 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }

    v24 = 1;
LABEL_12:
    v14 = v27;
  }

  else
  {
    v24 = 1;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

uint64_t __28__INCodable__writeTo_error___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 valueTransformer];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 transformedValue:v8];

    v8 = v12;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v14 = *(a1 + 32);
    [v9 unsignedIntValue];
    PBDataWriterWriteSubmessage();
  }

  else if (*(a1 + 40))
  {
    v15 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A278];
    v16 = MEMORY[0x1E696AEC0];
    v17 = [v7 propertyName];
    v18 = objc_claimAutoreleasedReturnValue();
    v23[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    **(a1 + 40) = [v15 errorWithDomain:@"IntentsErrorDomain" code:8001 userInfo:v19];
  }

  v20 = *MEMORY[0x1E69E9840];
  return isKindOfClass & 1;
}

uint64_t __28__INCodable__writeTo_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v86 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    if ([v7 modifier])
    {
      v8 = [*(a1 + 32) _valueForAttribute:v7];
      if (v8 && !(*(*(a1 + 48) + 16))())
      {
LABEL_5:

        goto LABEL_31;
      }
    }

    else
    {
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v8 = [*(a1 + 32) _valueForAttribute:v7 ofClass:objc_opt_class()];
      v15 = [v8 countByEnumeratingWithState:&v73 objects:v85 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v74;
LABEL_22:
        v18 = 0;
        while (1)
        {
          if (*v74 != v17)
          {
            objc_enumerationMutation(v8);
          }

          v19 = *(*(&v73 + 1) + 8 * v18);
          if (!(*(*(a1 + 48) + 16))())
          {
            goto LABEL_5;
          }

          if (v16 == ++v18)
          {
            v16 = [v8 countByEnumeratingWithState:&v73 objects:v85 count:16];
            if (v16)
            {
              goto LABEL_22;
            }

            break;
          }
        }
      }
    }

    goto LABEL_78;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v5 modifier])
    {
      [*(a1 + 40) writeInt32:objc_msgSend(*(a1 + 32) forTag:{"_int32ValueForAttribute:", v5), objc_msgSend(v6, "unsignedIntValue")}];
      goto LABEL_78;
    }

    if (!*(a1 + 56))
    {
      goto LABEL_42;
    }

    v25 = MEMORY[0x1E696ABC0];
    v83 = *MEMORY[0x1E696A278];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Repeated modifier is not supported for enum attributes"];
    v84 = v9;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
    **(a1 + 56) = [v25 errorWithDomain:@"IntentsErrorDomain" code:8001 userInfo:v26];

    goto LABEL_41;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!*(a1 + 56))
    {
LABEL_42:
      v37 = 0;
      goto LABEL_79;
    }

    v20 = MEMORY[0x1E696ABC0];
    v77 = *MEMORY[0x1E696A278];
    v21 = MEMORY[0x1E696AEC0];
    v22 = objc_opt_class();
    v7 = NSStringFromClass(v22);
    v23 = [v21 stringWithFormat:@"Unsupported attribute type: %@", v7];
    v78 = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
    **(a1 + 56) = [v20 errorWithDomain:@"IntentsErrorDomain" code:8001 userInfo:v24];

LABEL_31:
    goto LABEL_42;
  }

  v9 = v5;
  v10 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F02D81D0, &unk_1F02D81E8, 0}];
  if (![v9 modifier])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "type")}];
    v12 = [v10 containsObject:v11];

    if ((v12 & 1) == 0)
    {
      if (*(a1 + 56))
      {
        v32 = MEMORY[0x1E696ABC0];
        v81 = *MEMORY[0x1E696A278];
        v33 = MEMORY[0x1E696AEC0];
        v34 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "type")}];
        v35 = [v33 stringWithFormat:@"Repeated modifier is not supported for scalar attributes with type %@", v34];
        v82 = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        **(a1 + 56) = [v32 errorWithDomain:@"IntentsErrorDomain" code:8001 userInfo:v36];
      }

LABEL_41:
      goto LABEL_42;
    }
  }

  v13 = [v9 type];
  if (v13 <= 3)
  {
    if (v13 > 1)
    {
      if (v13 == 2)
      {
        [*(a1 + 40) writeInt32:objc_msgSend(*(a1 + 32) forTag:{"_int32ValueForAttribute:", v9), objc_msgSend(v6, "unsignedIntValue")}];
      }

      else
      {
        [*(a1 + 40) writeInt64:objc_msgSend(*(a1 + 32) forTag:{"_int32ValueForAttribute:", v9), objc_msgSend(v6, "unsignedIntValue")}];
      }
    }

    else if (v13)
    {
      if (v13 == 1)
      {
        v27 = *(a1 + 40);
        [*(a1 + 32) _floatValueForAttribute:v9];
        v29 = v28;
        v30 = [v6 unsignedIntValue];
        LODWORD(v31) = v29;
        [v27 writeFloat:v30 forTag:v31];
      }
    }

    else
    {
      v38 = *(a1 + 40);
      [*(a1 + 32) _doubleValueForAttribute:v9];
      [v38 writeDouble:objc_msgSend(v6 forTag:{"unsignedIntValue"), v39}];
    }
  }

  else if (v13 <= 5)
  {
    if (v13 == 4)
    {
      [*(a1 + 40) writeUint32:objc_msgSend(*(a1 + 32) forTag:{"_UInt32ValueForAttribute:", v9), objc_msgSend(v6, "unsignedIntValue")}];
    }

    else
    {
      [*(a1 + 40) writeUint64:objc_msgSend(*(a1 + 32) forTag:{"_UInt64ValueForAttribute:", v9), objc_msgSend(v6, "unsignedIntValue")}];
    }
  }

  else if (v13 == 6)
  {
    [*(a1 + 40) writeBOOL:objc_msgSend(*(a1 + 32) forTag:{"_BOOLValueForAttribute:", v9), objc_msgSend(v6, "unsignedIntValue")}];
  }

  else
  {
    if (v13 == 7)
    {
      if ([v9 modifier])
      {
        v40 = [*(a1 + 32) _valueForAttribute:v9 ofClass:objc_opt_class()];
        v14 = [v40 _intents_encodeForProto];

        if (v14)
        {
          [*(a1 + 40) writeString:v14 forTag:{objc_msgSend(v6, "unsignedIntValue")}];
        }
      }

      else
      {
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v14 = [*(a1 + 32) _valueForAttribute:v9 ofClass:objc_opt_class()];
        v46 = [v14 countByEnumeratingWithState:&v69 objects:v80 count:16];
        if (v46)
        {
          v47 = v46;
          v63 = v10;
          v64 = v9;
          v48 = *v70;
          while (1)
          {
            for (i = 0; i != v47; ++i)
            {
              if (*v70 != v48)
              {
                objc_enumerationMutation(v14);
              }

              v50 = *(*(&v69 + 1) + 8 * i);
              if (v50)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v54 = MEMORY[0x1E695DF30];
                  v55 = *MEMORY[0x1E695D930];
                  v56 = MEMORY[0x1E696AEC0];
                  v57 = [v64 propertyName];
LABEL_82:
                  v58 = objc_opt_class();
                  v59 = NSStringFromClass(v58);
                  v60 = [v56 stringWithFormat:@"Property '%@' is not a valid NSArray<%@ *> subclass", v57, v59, v63];
                  v61 = [v54 exceptionWithName:v55 reason:v60 userInfo:0];
                  v62 = v61;

                  objc_exception_throw(v61);
                }
              }

              v51 = [v50 _intents_encodeForProto];
              if (v51)
              {
                [*(a1 + 40) writeString:v51 forTag:{objc_msgSend(v6, "unsignedIntValue")}];
              }
            }

            v47 = [v14 countByEnumeratingWithState:&v69 objects:v80 count:16];
            if (!v47)
            {
              goto LABEL_75;
            }
          }
        }
      }
    }

    else
    {
      if (v13 != 8)
      {
        goto LABEL_77;
      }

      if ([v9 modifier])
      {
        v14 = [*(a1 + 32) _valueForAttribute:v9 ofClass:objc_opt_class()];
        if (v14)
        {
          [*(a1 + 40) writeData:v14 forTag:{objc_msgSend(v6, "unsignedIntValue")}];
        }
      }

      else
      {
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v14 = [*(a1 + 32) _valueForAttribute:v9 ofClass:objc_opt_class()];
        v41 = [v14 countByEnumeratingWithState:&v65 objects:v79 count:16];
        if (v41)
        {
          v42 = v41;
          v63 = v10;
          v64 = v9;
          v43 = *v66;
          while (1)
          {
            for (j = 0; j != v42; ++j)
            {
              if (*v66 != v43)
              {
                objc_enumerationMutation(v14);
              }

              v45 = *(*(&v65 + 1) + 8 * j);
              if (v45)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v54 = MEMORY[0x1E695DF30];
                  v55 = *MEMORY[0x1E695D930];
                  v56 = MEMORY[0x1E696AEC0];
                  v57 = [v9 propertyName];
                  goto LABEL_82;
                }
              }

              [*(a1 + 40) writeData:v45 forTag:{objc_msgSend(v6, "unsignedIntValue")}];
            }

            v42 = [v14 countByEnumeratingWithState:&v65 objects:v79 count:16];
            if (!v42)
            {
LABEL_75:

              goto LABEL_78;
            }
          }
        }
      }
    }
  }

LABEL_77:

LABEL_78:
  v37 = 1;
LABEL_79:

  v52 = *MEMORY[0x1E69E9840];
  return v37;
}

- (BOOL)_readFrom:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __29__INCodable__readFrom_error___block_invoke;
  v39[3] = &unk_1E7282A28;
  v39[4] = self;
  v26 = MEMORY[0x193AD7780](v39);
  while ([v6 hasMoreData])
  {
    v38 = 0;
    v37 = 0;
    [v6 readTag:&v38 type:&v37];
    if (([v6 hasError] & 1) != 0 || v37 == 4)
    {
      break;
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __29__INCodable__readFrom_error___block_invoke_2;
    v31[3] = &unk_1E7282A50;
    v32 = v7;
    v36 = a4;
    v33 = v6;
    v8 = v26;
    v34 = self;
    v35 = v8;
    v9 = MEMORY[0x193AD7780](v31);
    v10 = [(INCodable *)self _objectDescription];
    v11 = [v10 attributes];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v38];
    v13 = [v11 objectForKey:v12];

    if (v13 && !(v9)[2](v9, v13))
    {

      LOBYTE(v23) = 0;
      goto LABEL_19;
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = [v7 allKeys];
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v27 + 1) + 8 * i);
        v20 = [v7 objectForKeyedSubscript:v19];
        v21 = v20;
        if (v20)
        {
          v22 = [v20 copy];
          [(INCodable *)self setValue:v22 forPropertyNamed:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v27 objects:v40 count:16];
    }

    while (v16);
  }

  v23 = [v6 hasError] ^ 1;
LABEL_19:

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

void __29__INCodable__readFrom_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if ([v10 modifier])
  {
    [*(a1 + 32) _setObject:v9 forAttribute:v10];
  }

  else if (v9)
  {
    [v11 addObject:v9];
  }

  else if (a5)
  {
    v12 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A278];
    v13 = MEMORY[0x1E696AEC0];
    v14 = [v10 propertyName];
    v15 = [v13 stringWithFormat:@"Value for property '%@' can't be nil", v14];
    v19[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *a5 = [v12 errorWithDomain:@"IntentsErrorDomain" code:8001 userInfo:v16];
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __29__INCodable__readFrom_error___block_invoke_2(uint64_t a1, void *a2)
{
  v72[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 propertyName];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (![v3 modifier] && !v6)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = *(a1 + 32);
    v8 = [v3 propertyName];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v3;
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v16 = v10;

    v17 = [v16 valueTransformer];
    v12 = v16;
    if (v12 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v12, (isKindOfClass & 1) != 0))
    {
      v19 = v12;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      v22 = [v21 codableDescription];

      if (v22)
      {
        v23 = [[INCodable alloc] initWithCodableDescription:v22 data:0];
LABEL_36:
        v24 = v23;

        goto LABEL_37;
      }

      v53 = *(a1 + 64);
      v44 = (a1 + 64);
      if (v53)
      {
        v46 = MEMORY[0x1E696ABC0];
        v71 = *MEMORY[0x1E696A278];
        v54 = MEMORY[0x1E696AEC0];
        v48 = [v19 typeName];
        v49 = [v54 stringWithFormat:@"Unknown codable description for custom type: %@", v48];
        v72[0] = v49;
        v50 = MEMORY[0x1E695DF20];
        v51 = v72;
        v52 = &v71;
        goto LABEL_51;
      }
    }

    else
    {
      if (v17)
      {
        v24 = objc_alloc_init([objc_opt_class() reverseTransformedValueClass]);
LABEL_37:
        v35 = *(a1 + 40);
        if (!PBReaderPlaceMark() || ![v24 readFrom:*(a1 + 40)])
        {
          goto LABEL_43;
        }

        if (v17)
        {
          v36 = [v17 reverseTransformedValue:v24];

          v24 = v36;
        }

        v37 = *(a1 + 40);
        PBReaderRecallMark();
        v38 = *(a1 + 64);
        (*(*(a1 + 56) + 16))();
        v39 = *(a1 + 64);
        if (v39)
        {
          if (*v39)
          {
LABEL_43:

LABEL_46:
LABEL_53:

            goto LABEL_54;
          }
        }

        goto LABEL_70;
      }

      v25 = [v12 typeName];
      v26 = objc_opt_class();
      v27 = NSClassFromString(v25);
      if (v27)
      {
        v28 = v27;
        if ([(objc_class *)v27 isSubclassOfClass:v26])
        {
          v29 = v28;
          v30 = v28;

          v22 = [v12 typeName];
          v31 = objc_opt_class();
          v32 = NSClassFromString(v22);
          if (v32)
          {
            v33 = v32;
            if ([(objc_class *)v32 isSubclassOfClass:v31])
            {
              v34 = v33;
            }

            else
            {
              v34 = 0;
            }

            v32 = v34;
          }

          v23 = objc_alloc_init(v32);
          goto LABEL_36;
        }
      }

      v45 = *(a1 + 64);
      v44 = (a1 + 64);
      if (v45)
      {
        v46 = MEMORY[0x1E696ABC0];
        v69 = *MEMORY[0x1E696A278];
        v47 = MEMORY[0x1E696AEC0];
        v48 = [v12 typeName];
        v49 = [v47 stringWithFormat:@"Unknown type %@", v48];
        v70 = v49;
        v50 = MEMORY[0x1E695DF20];
        v51 = &v70;
        v52 = &v69;
LABEL_51:
        v55 = [v50 dictionaryWithObjects:v51 forKeys:v52 count:1];
        **v44 = [v46 errorWithDomain:@"IntentsErrorDomain" code:8001 userInfo:v55];
      }
    }

    goto LABEL_53;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = *(a1 + 48);
    v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 40), "readInt32")}];
    [v11 _setObject:v12 forAttribute:v3];
    goto LABEL_70;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v3;
    v13 = [v12 type];
    if (v13 <= 3)
    {
      if (v13 <= 1)
      {
        if (v13)
        {
          if (v13 != 1)
          {
            goto LABEL_70;
          }

          v57 = MEMORY[0x1E696AD98];
          v58 = *(a1 + 48);
          [*(a1 + 40) readFloat];
          v59 = [v57 numberWithFloat:?];
        }

        else
        {
          v60 = MEMORY[0x1E696AD98];
          v58 = *(a1 + 48);
          [*(a1 + 40) readDouble];
          v59 = [v60 numberWithDouble:?];
        }

        goto LABEL_69;
      }

      v58 = *(a1 + 48);
      if (v13 == 2)
      {
        [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 40), "readInt32")}];
      }

      else
      {
        [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "readInt64")}];
      }
    }

    else
    {
      if (v13 > 5)
      {
        if (v13 != 6)
        {
          if (v13 == 7)
          {
            v64 = *(a1 + 56);
            v15 = [*(a1 + 40) readString];
            v65 = [v15 _intents_decodeFromProto];
            (*(v64 + 16))(v64, v65, v12, v6, *(a1 + 64));
          }

          else
          {
            if (v13 != 8)
            {
              goto LABEL_70;
            }

            v14 = *(a1 + 56);
            v15 = [*(a1 + 40) readData];
            (*(v14 + 16))(v14, v15, v12, v6, *(a1 + 64));
          }

          v66 = *(a1 + 64);
          if (v66 && *v66)
          {
            goto LABEL_53;
          }

LABEL_70:

          v56 = [*(a1 + 40) hasError] ^ 1;
          goto LABEL_71;
        }

        v58 = *(a1 + 48);
        v59 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 40), "readBOOL")}];
LABEL_69:
        v61 = v59;
        [v58 _setObject:v59 forAttribute:v12];

        goto LABEL_70;
      }

      v58 = *(a1 + 48);
      if (v13 == 4)
      {
        [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*(a1 + 40), "readUint32")}];
      }

      else
      {
        [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 40), "readUint64")}];
      }
    }
    v59 = ;
    goto LABEL_69;
  }

  if (*(a1 + 64))
  {
    v40 = MEMORY[0x1E696ABC0];
    v67 = *MEMORY[0x1E696A278];
    v41 = MEMORY[0x1E696AEC0];
    v42 = objc_opt_class();
    v12 = NSStringFromClass(v42);
    v24 = [v41 stringWithFormat:@"Unsupported attribute type: %@", v12];
    v68 = v24;
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
    **(a1 + 64) = [v40 errorWithDomain:@"IntentsErrorDomain" code:8001 userInfo:v43];

    goto LABEL_46;
  }

LABEL_54:
  v56 = 0;
LABEL_71:

  v62 = *MEMORY[0x1E69E9840];
  return v56;
}

- (BOOL)_isStringAttribute:(id)a3 equalTo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(INCodable *)self _valueForAttribute:v7 ofClass:objc_opt_class()];
  v9 = [v6 _valueForAttribute:v7 ofClass:objc_opt_class()];

  if (v8 | v9)
  {
    if (v8)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = [v8 isEqualToString:v9];
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)_isAttribute:(id)a3 equalTo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(INCodable *)self _valueForAttribute:v7];
  v9 = [v6 _valueForAttribute:v7];

  if (v8 | v9)
  {
    if ((v8 != 0) != (v9 != 0))
    {
      v10 = 0;
    }

    else
    {
      v11 = v8;
      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      v14 = [v13 _geoMapItem];

      if (v14)
      {
        v15 = v9;
        if (v9)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;

        v18 = [v17 _geoMapItem];

        if (v18)
        {
          v19 = [v11 _geoMapItem];

          v9 = [v15 _geoMapItem];

          v11 = v19;
        }

        else
        {
          v9 = v15;
        }
      }

      v10 = [v11 isEqual:v9];
      v8 = v11;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v10 = 1;
  }

  return v10;
}

- (INCodable)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v4 setWithObjects:{v5, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = [v3 if_decodeBytesNoCopyForKey:@"codableDescriptionBytes"];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"codableDescriptionData"];
    if (!v15)
    {
      v17 = [v3 decodeObjectOfClasses:v13 forKey:@"_objectDescription"];
      v16 = self;
      goto LABEL_7;
    }
  }

  v16 = self;
  v30 = 0;
  v17 = [MEMORY[0x1E696ACD0] _in_safeUnarchivedObjectOfClasses:v13 fromData:v15 error:&v30];
  v18 = v30;
  if (v18)
  {
    v19 = v18;
    [v3 failWithError:v18];
    v20 = 0;
    goto LABEL_13;
  }

LABEL_7:
  v19 = [v3 if_decodeBytesNoCopyForKey:@"bytes"];
  if (!v19)
  {
    v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  }

  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = [v21 setWithObjects:{v22, v23, objc_opt_class(), 0}];
  v25 = [v3 decodeObjectOfClasses:v24 forKey:@"_nonNilRepeatedAttributes"];

  v29 = 0;
  v16 = [(INCodable *)v16 _initWithCodableDescription:v17 data:v19 error:&v29];
  v26 = v29;
  [(INCodable *)v16 _setEmptyArrayForNonNilRepeatedAttributes:v25];
  if (v26)
  {
    [v3 failWithError:v26];
    v20 = 0;
  }

  else
  {
    v20 = v16;
  }

LABEL_13:
  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v12 = 0;
  v5 = [(INCodable *)self _dataWithError:&v12];
  v6 = v12;
  if (v6)
  {
    [v4 failWithError:v6];
  }

  else
  {
    v7 = [(INCodable *)self _nonNilRepeatedAttributes];
    [v4 encodeObject:v7 forKey:@"_nonNilRepeatedAttributes"];

    [v4 if_encodeBytesNoCopy:v5 forKey:@"bytes"];
    objectDescription = self->_objectDescription;
    v11 = 0;
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:objectDescription requiringSecureCoding:1 error:&v11];
    v10 = v11;
    if (v10)
    {
      [v4 failWithError:v10];
    }

    else
    {
      [v4 if_encodeBytesNoCopy:v9 forKey:@"codableDescriptionBytes"];
    }
  }
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v18 = 0;
  v8 = [(INCodable *)self _dataWithError:&v18];
  v9 = v18;
  if (v9)
  {
    v10 = v9;
    if (a4)
    {
LABEL_3:
      v11 = v10;
      v12 = 0;
      *a4 = v10;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  [v7 intents_setPlistSafeObject:v8 forKey:@"bytes"];
  [v7 intents_setIntegerIfNonZero:-[INCodableDescription codableDescriptionType](self->_objectDescription forKey:{"codableDescriptionType"), @"descType"}];
  v13 = [(INCodable *)self _nonNilRepeatedAttributes];
  v14 = [v13 allObjects];
  [v7 intents_setPlistSafeObject:v14 forKey:@"_nonNilRepeatedAttributes"];

  objectDescription = self->_objectDescription;
  v17 = 0;
  [v7 intents_setWidgetPlistRepresentable:objectDescription forKey:@"codableDescriptionBytes" parameters:v6 error:&v17];
  v10 = v17;
  if (v10)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = 0;
    goto LABEL_8;
  }

  v12 = [v7 copy];
LABEL_8:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v3 = [(INCodable *)self _copyWithZone:a3 error:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[INCodable copyWithZone:]";
      v12 = 2112;
      v13 = v4;
      _os_log_error_impl(&dword_18E991000, v5, OS_LOG_TYPE_ERROR, "%s Failed to copy due to error %@", buf, 0x16u);
    }

    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)_dictionaryRepresentationWithNullValues:(BOOL)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = [(INCodable *)self _objectDescription];
  v7 = [v6 attributes];
  v8 = [v7 allValues];

  v36 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v36)
  {
    v35 = *v42;
    v33 = v5;
    v32 = a3;
    v30 = v8;
    v31 = self;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v42 != v35)
        {
          objc_enumerationMutation(v8);
        }

        v10 = *(*(&v41 + 1) + 8 * i);
        v11 = [v10 propertyName];
        v12 = [v11 hasPrefix:@"_"];

        if ((v12 & 1) == 0)
        {
          v13 = [v10 propertyName];
          v14 = [(INCodable *)self valueForPropertyNamed:v13];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v14 dictionaryRepresentation];
            goto LABEL_21;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v14;
            v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v16, "count")}];
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v18 = v16;
            v19 = [v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v38;
              do
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v38 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v23 = *(*(&v37 + 1) + 8 * j);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v24 = [v23 dictionaryRepresentation];
                    [v17 addObject:v24];
                  }

                  else
                  {
                    [v17 addObject:v23];
                  }
                }

                v20 = [v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
              }

              while (v20);
            }

            v15 = [v17 copy];
            v5 = v33;
            a3 = v32;
            v8 = v30;
            self = v31;
LABEL_21:

            v14 = v15;
          }

          if (a3 || v14)
          {
            v25 = v14;
            if (!v14)
            {
              v25 = [MEMORY[0x1E695DFB0] null];
              v34 = v25;
            }

            v26 = [v10 propertyName];
            [v5 setObject:v25 forKey:v26];

            if (!v14)
            {
            }
          }

          continue;
        }
      }

      v36 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v36);
  }

  v27 = [v5 copy];
  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (unint64_t)hash
{
  v46 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v3 = [(INCodable *)self _objectDescription];
  v4 = [v3 attributes];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v42;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v40 = vnegq_f64(v10);
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v41 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [(INCodable *)self _valueForAttribute:v12];
          if (v13)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }

          v17 = v14;

          v18 = [v17 _geoMapItem];

          if (v18)
          {
            v19 = [v13 _geoMapItem];

            v13 = v19;
          }

          v8 ^= [v13 hash];
          goto LABEL_47;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 ^= 2654435761 * [(INCodable *)self _int32ValueForAttribute:v12];
          continue;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v32 = MEMORY[0x1E695DF30];
          v33 = *MEMORY[0x1E695D930];
          v34 = MEMORY[0x1E696AEC0];
          v35 = objc_opt_class();
          v36 = NSStringFromClass(v35);
          v37 = [v34 stringWithFormat:@"Unsupported attribute type: %@", v36];
          v38 = [v32 exceptionWithName:v33 reason:v37 userInfo:0];
          v39 = v38;

          objc_exception_throw(v38);
        }

        v13 = v12;
        v15 = [v13 type];
        if (v15 > 4)
        {
          if ((v15 - 7) < 2)
          {
            v25 = [(INCodable *)self _valueForAttribute:v13];
            v8 ^= [v25 hash];
          }

          else
          {
            if (v15 == 5)
            {
              v26 = [(INCodable *)self _UInt64ValueForAttribute:v13];
              goto LABEL_45;
            }

            if (v15 == 6)
            {
              v20 = [(INCodable *)self _BOOLValueForAttribute:v13];
              v16 = 2654435761;
              if (!v20)
              {
                v16 = 0;
              }

              goto LABEL_46;
            }
          }
        }

        else
        {
          if (v15 > 1)
          {
            if (v15 == 2)
            {
              v16 = 2654435761 * [(INCodable *)self _int32ValueForAttribute:v13];
              goto LABEL_46;
            }

            if (v15 != 3)
            {
              v16 = 2654435761 * [(INCodable *)self _UInt32ValueForAttribute:v13];
              goto LABEL_46;
            }

            v26 = [(INCodable *)self _int64ValueForAttribute:v13];
LABEL_45:
            v16 = 2654435761 * v26;
            goto LABEL_46;
          }

          if (!v15)
          {
            [(INCodable *)self _doubleValueForAttribute:v13];
            if (v24 < 0.0)
            {
              v24 = -v24;
            }

LABEL_39:
            *v22.i64 = floor(v24 + 0.5);
            v27 = (v24 - *v22.i64) * 1.84467441e19;
            *v23.i64 = *v22.i64 - trunc(*v22.i64 * 5.42101086e-20) * 1.84467441e19;
            v22.i64[0] = vbslq_s8(v40, v23, v22).i64[0];
            v28 = 2654435761u * *v22.i64;
            v29 = v28 + v27;
            if (v27 <= 0.0)
            {
              v29 = 2654435761u * *v22.i64;
            }

            v16 = v28 - fabs(v27);
            if (v27 >= 0.0)
            {
              v16 = v29;
            }

LABEL_46:
            v8 ^= v16;
            goto LABEL_47;
          }

          if (v15 == 1)
          {
            [(INCodable *)self _floatValueForAttribute:v13];
            if (v21 >= 0.0)
            {
              v24 = v21;
            }

            else
            {
              v24 = -v21;
            }

            goto LABEL_39;
          }
        }

LABEL_47:
      }

      v7 = [v5 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (!v7)
      {
        goto LABEL_52;
      }
    }
  }

  v8 = 0;
LABEL_52:

  v30 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v5 = [(INCodable *)self _objectDescription];
    v6 = [v5 attributes];
    v7 = [v6 allValues];

    v8 = [v7 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v38;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v37 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (![(INCodable *)self _isAttribute:v12 equalTo:v4])
          {
            goto LABEL_53;
          }

          goto LABEL_48;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [(INCodable *)self _int32ValueForAttribute:v12];
          if (v13 != [v4 _int32ValueForAttribute:v12])
          {
            goto LABEL_53;
          }

          goto LABEL_48;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v29 = MEMORY[0x1E695DF30];
          v30 = *MEMORY[0x1E695D930];
          v31 = MEMORY[0x1E696AEC0];
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          v34 = [v31 stringWithFormat:@"Unsupported attribute type: %@", v33];
          v35 = [v29 exceptionWithName:v30 reason:v34 userInfo:0];
          v36 = v35;

          objc_exception_throw(v35);
        }

        v14 = v12;
        v15 = [v14 type];
        if (v15 <= 3)
        {
          if (v15 > 1)
          {
            if (v15 == 2)
            {
              v21 = [(INCodable *)self _int32ValueForAttribute:v14];
              v22 = [v4 _int32ValueForAttribute:v14];
              goto LABEL_40;
            }

            v19 = [(INCodable *)self _int64ValueForAttribute:v14];
            v20 = [v4 _int64ValueForAttribute:v14];
            goto LABEL_31;
          }

          if (!v15)
          {
            [(INCodable *)self _doubleValueForAttribute:v14];
            v24 = v23;
            [v4 _doubleValueForAttribute:v14];
            if (v24 != v25)
            {
              goto LABEL_52;
            }

            goto LABEL_47;
          }

          if (v15 != 1)
          {
            goto LABEL_36;
          }

          [(INCodable *)self _floatValueForAttribute:v14];
          v17 = v16;
          [v4 _floatValueForAttribute:v14];
          if (v17 != v18)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v15 <= 5)
          {
            if (v15 == 4)
            {
              v21 = [(INCodable *)self _UInt32ValueForAttribute:v14];
              v22 = [v4 _UInt32ValueForAttribute:v14];
              goto LABEL_40;
            }

            v19 = [(INCodable *)self _UInt64ValueForAttribute:v14];
            v20 = [v4 _UInt64ValueForAttribute:v14];
LABEL_31:
            if (v19 != v20)
            {
              goto LABEL_52;
            }

            goto LABEL_47;
          }

          switch(v15)
          {
            case 6:
              v21 = [(INCodable *)self _BOOLValueForAttribute:v14];
              v22 = [v4 _BOOLValueForAttribute:v14];
LABEL_40:
              if (v21 != v22)
              {
                goto LABEL_52;
              }

              break;
            case 7:
              v15 = [v14 modifier];
              if ((v15 - 1) < 2)
              {
                if (![(INCodable *)self _isStringAttribute:v14 equalTo:v4])
                {
                  goto LABEL_52;
                }

                break;
              }

LABEL_35:
              if (!v15)
              {
                if (![(INCodable *)self _isAttribute:v14 equalTo:v4])
                {
LABEL_52:

LABEL_53:
                  v26 = 0;
                  goto LABEL_54;
                }

                break;
              }

LABEL_36:
              if (v15 == -1)
              {
                goto LABEL_52;
              }

              break;
            case 8:
              v15 = [v14 modifier];
              if ((v15 - 1) >= 2)
              {
                goto LABEL_35;
              }

              if (![(INCodable *)self _isAttribute:v14 equalTo:v4])
              {
                goto LABEL_52;
              }

              break;
          }
        }

LABEL_47:

LABEL_48:
        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v37 objects:v41 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v26 = 1;
LABEL_54:
  }

  else
  {
    v26 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0;
  [(INCodable *)self _writeTo:a3 error:&v11];
  v3 = v11;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 debugDescription];
    v6 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
    {
      v8 = v6;
      v9 = [(__CFString *)v5 length];
      v10 = @"INCodable data writing failed";
      if (v9)
      {
        v10 = v5;
      }

      *buf = 136315394;
      v13 = "[INCodable writeTo:]";
      v14 = 2114;
      v15 = v10;
      _os_log_fault_impl(&dword_18E991000, v8, OS_LOG_TYPE_FAULT, "%s INCodable writeTo failed: %{public}@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)readFrom:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v3 = [(INCodable *)self _readFrom:a3 error:&v13];
  v4 = v13;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 debugDescription];
    v7 = [(__CFString *)v6 length];
    v8 = @"INCodable data reading failed";
    if (v7)
    {
      v8 = v6;
    }

    v9 = v8;
    v10 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[INCodable readFrom:]";
      v16 = 2112;
      v17 = v9;
      _os_log_error_impl(&dword_18E991000, v10, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    }

    v3 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)_setData:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ([v7 length])
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v7];
    [(INCodable *)self _readFrom:v6 error:a4];
  }

  else
  {
    [(NSMutableDictionary *)self->_customValueForKeyDictionary removeAllObjects];
  }
}

- (BOOL)isValidKey:(id)a3
{
  v4 = a3;
  v5 = [(INCodable *)self _objectDescription];
  v6 = [v4 if_stringByLowercasingFirstCharacter];

  v7 = [v5 attributeByName:v6];
  LOBYTE(v4) = v7 != 0;

  return v4;
}

- (void)setNilValueForAllKeys
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(INCodable *)self _objectDescription];
  v5 = [v4 attributes];
  v6 = [v5 allValues];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __34__INCodable_setNilValueForAllKeys__block_invoke;
  v21[3] = &unk_1E72829E0;
  v7 = v3;
  v22 = v7;
  [v6 enumerateObjectsUsingBlock:v21];
  [(NSMutableDictionary *)self->_customValueForKeyDictionary removeObjectsForKeys:v7];
  v8 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_70475];
  v9 = [v6 filteredArrayUsingPredicate:v8];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * v14) propertyName];
        [(INCodable *)self setValue:0 forPropertyNamed:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __34__INCodable_setNilValueForAllKeys__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v7 propertyName];
    v4 = [v3 hasPrefix:@"_"];

    if ((v4 & 1) == 0)
    {
      v5 = *(a1 + 32);
      v6 = [v7 propertyName];
      [v5 addObject:v6];
    }
  }
}

uint64_t __34__INCodable_setNilValueForAllKeys__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 propertyName];
  v3 = [v2 hasPrefix:@"_"];

  return v3 ^ 1u;
}

- (id)_initWithCodableDescription:(id)a3 data:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v19.receiver = self;
  v19.super_class = INCodable;
  v11 = [(INCodable *)&v19 init];
  if (v11)
  {
    v12 = objc_opt_new();
    customValueForKeyDictionary = v11->_customValueForKeyDictionary;
    v11->_customValueForKeyDictionary = v12;

    objc_storeStrong(&v11->_objectDescription, a3);
    v18 = 0;
    [(INCodable *)v11 _setData:v10 error:&v18];
    v14 = v18;
    v15 = v14;
    if (v14)
    {
      if (a5)
      {
        v16 = v14;
        *a5 = v15;
      }

      v11 = 0;
    }
  }

  return v11;
}

- (INCodable)initWithCodableDescription:(id)a3 data:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v8 = [(INCodable *)self _initWithCodableDescription:v6 data:v7 error:&v16];
  v9 = v16;
  v10 = v8;
  v11 = v10;
  if (v9)
  {
    v12 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v18 = "[INCodable initWithCodableDescription:data:]";
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      v23 = 2112;
      v24 = v9;
      _os_log_error_impl(&dword_18E991000, v12, OS_LOG_TYPE_ERROR, "%s Failed to init INCodable with description %@ and data %@ due to error: %@", buf, 0x2Au);
    }

    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = [v5 intents_safeObjectForKey:@"bytes" ofType:objc_opt_class()];
    v7 = [v5 intents_safeObjectForKey:@"_nonNilRepeatedAttributes" ofType:objc_opt_class()];
    v8 = [v5 intents_intForKey:@"descType"];
    v9 = INCodableDescriptionClassFromType(v8);
    if (v9)
    {
      goto LABEL_3;
    }

    v15 = MEMORY[0x1E696AEC0];
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    v17 = objc_claimAutoreleasedReturnValue();
    v12 = INIntentError(8001, v17, 0);

    if (!v12)
    {
LABEL_3:
      v25 = 0;
      v10 = [v9 intents_widgetPlistRepresentableInDict:v5 key:@"codableDescriptionBytes" error:&v25];
      v11 = v25;
      if (v11)
      {
        v12 = v11;
        if (a4)
        {
          v13 = v11;
          v14 = 0;
          *a4 = v12;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v24 = 0;
        v19 = [[INCodable alloc] _initWithCodableDescription:v10 data:v6 error:&v24];
        v20 = v24;
        v12 = v20;
        if (v20)
        {
          if (a4)
          {
            v21 = v20;
            v14 = 0;
            *a4 = v12;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v22 = [MEMORY[0x1E695DFD8] setWithArray:v7];
          [v19 _setEmptyArrayForNonNilRepeatedAttributes:v22];

          v14 = v19;
        }
      }
    }

    else if (a4)
    {
      v18 = v12;
      v14 = 0;
      *a4 = v12;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end