@interface NSSQLManyToMany
- (NSSQLManyToMany)initWithEntity:(id)a3 propertyDescription:(id)a4;
- (__CFString)inverseColumnName;
- (__CFString)inverseOrderColumnName;
- (id)correlationTableName;
- (uint64_t)isTableSchemaEqual:(uint64_t)result;
- (void)_setInverseManyToMany:(void *)a1;
- (void)dealloc;
@end

@implementation NSSQLManyToMany

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSSQLManyToMany;
  [(NSSQLRelationship *)&v3 dealloc];
}

- (id)correlationTableName
{
  if (self->_correlationTableName)
  {
    return self->_correlationTableName;
  }

  else
  {
    return [(NSSQLRelationship *)self->super._inverse correlationTableName];
  }
}

- (__CFString)inverseColumnName
{
  if (result)
  {
    if (result[1].length == result)
    {
      return @"REFLEXIVE";
    }

    else
    {
      return [result[1].length columnName];
    }
  }

  return result;
}

- (__CFString)inverseOrderColumnName
{
  if (result)
  {
    length = result[1].length;
    if (length == result)
    {
      if ([-[__CFString propertyDescription](result propertyDescription])
      {
        return @"FOK_REFLEXIVE";
      }

      else
      {
        return 0;
      }
    }

    else if (length)
    {
      return length[2].data;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (NSSQLManyToMany)initWithEntity:(id)a3 propertyDescription:(id)a4
{
  v5.receiver = self;
  v5.super_class = NSSQLManyToMany;
  result = [(NSSQLRelationship *)&v5 initWithEntity:a3 propertyDescription:a4];
  if (result)
  {
    result->super.super._propertyType = 9;
  }

  return result;
}

- (void)_setInverseManyToMany:(void *)a1
{
  v36[3] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_34:
    v25 = *MEMORY[0x1E69E9840];
    return;
  }

  v4 = [a1 entity];
  if (a1[7] != a2)
  {
    [(NSSQLRelationship *)a1 _setInverseRelationship:a2];
    if (a1[8])
    {
      if (!a2)
      {
LABEL_12:
        [(NSSQLManyToMany *)a2 _setInverseManyToMany:a1];
        goto LABEL_13;
      }
    }

    else
    {
      v5 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (v4)
      {
        v6 = *(v4 + 184);
      }

      else
      {
        v6 = 0;
      }

      v7 = [v5 initWithFormat:@"%@_%d%@", @"Z", v6, objc_msgSend(objc_msgSend(a1, "name"), "uppercaseString")];
      v8 = a1[8];
      if (v8 != v7)
      {

        a1[8] = [v7 copy];
      }

      [(NSSQLRelationship *)a2 _setInverseRelationship:a1];
      if (!a2)
      {
        goto LABEL_12;
      }
    }

    if (*(a2 + 24) != 9)
    {
      v26 = MEMORY[0x1E695DF30];
      v27 = *MEMORY[0x1E695D930];
      v35[0] = @"entity";
      v28 = [objc_msgSend(objc_msgSend(a1 "entity")];
      if (v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = @"nil";
      }

      v36[0] = v29;
      v35[1] = @"relationship";
      v30 = [a1 name];
      if (v30)
      {
        v31 = v30;
      }

      else
      {
        v31 = @"nil";
      }

      v36[1] = v31;
      v35[2] = @"inverse";
      v32 = [a2 name];
      if (v32)
      {
        v33 = v32;
      }

      else
      {
        v33 = @"nil";
      }

      v36[2] = v33;
      objc_exception_throw([v26 exceptionWithName:v27 reason:@"improper model with nonsensical relationship definitions" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v36, v35, 3)}]);
    }

    goto LABEL_12;
  }

LABEL_13:
  if (!a1[9])
  {
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v4)
    {
      v10 = *(v4 + 184);
    }

    else
    {
      v10 = 0;
    }

    v11 = [v9 initWithFormat:@"%@_%d%@", @"Z", v10, objc_msgSend(objc_msgSend(a2, "name"), "uppercaseString")];
    if (v4)
    {
      v12 = *(v4 + 176);
    }

    else
    {
      v12 = 0;
    }

    v13 = [(NSSQLStoreMappingGenerator *)v12 uniqueNameWithBase:v11];
    v14 = a1[9];
    if (v14 != v13)
    {
      v15 = v13;

      a1[9] = [v15 copy];
    }
  }

  if (a1[10])
  {
    goto LABEL_34;
  }

  v16 = a2 ? [a2 propertyDescription] : 0;
  if (![v16 isOrdered])
  {
    goto LABEL_34;
  }

  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (v4)
  {
    v18 = *(v4 + 184);
  }

  else
  {
    v18 = 0;
  }

  v19 = [v17 initWithFormat:@"%@_%d%@", @"Z_FOK", v18, objc_msgSend(objc_msgSend(a2, "name"), "uppercaseString")];
  if (v4)
  {
    v20 = *(v4 + 176);
  }

  else
  {
    v20 = 0;
  }

  v34 = v19;
  v21 = [(NSSQLStoreMappingGenerator *)v20 uniqueNameWithBase:v19];
  v22 = a1[10];
  if (v22 != v21)
  {
    v23 = v21;

    a1[10] = [v23 copy];
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (uint64_t)isTableSchemaEqual:(uint64_t)result
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = [*(result + 72) isEqualToString:{-[__CFString columnName](a2, "columnName")}];
  if (!result)
  {
    return result;
  }

  result = [*(v3 + 64) isEqualToString:{-[__CFString correlationTableName](a2, "correlationTableName")}];
  if (!result)
  {
    return result;
  }

  v4 = *(v3 + 56);
  if (v4 == v3)
  {
    v5 = @"REFLEXIVE";
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_9:
    result = [(__CFString *)v5 isEqualToString:0];
    if (!result)
    {
      return result;
    }

    if (*(v3 + 80))
    {
      return 0;
    }

    goto LABEL_17;
  }

  v5 = [v4 columnName];
  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_6:
  length = a2[1].length;
  if (length == a2)
  {
    v7 = @"REFLEXIVE";
  }

  else
  {
    v7 = [(__CFString *)length columnName];
  }

  if (([(__CFString *)v5 isEqualToString:v7]& 1) == 0)
  {
    return 0;
  }

  v8 = *(v3 + 80);
  if ((v8 == 0) == (a2[2].data != 0))
  {
    return 0;
  }

  if (v8)
  {
    result = [v8 isEqualToString:?];
    if (!result)
    {
      return result;
    }
  }

LABEL_17:
  v9 = *(v3 + 56);
  if (v9 == v3)
  {
    if ([objc_msgSend(v3 "propertyDescription")])
    {
      v10 = @"FOK_REFLEXIVE";
    }

    else
    {
      v10 = 0;
    }
  }

  else if (v9)
  {
    v10 = *(v9 + 80);
  }

  else
  {
    v10 = 0;
  }

  v11 = [(NSSQLManyToMany *)a2 inverseOrderColumnName];
  if ((v10 == 0) == (v11 != 0))
  {
    return 0;
  }

  if (!v10)
  {
    return 1;
  }

  result = [(__CFString *)v10 isEqualToString:v11];
  if (result)
  {
    return 1;
  }

  return result;
}

@end