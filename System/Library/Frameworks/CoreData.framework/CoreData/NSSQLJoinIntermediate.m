@interface NSSQLJoinIntermediate
+ (id)createJoinIntermediatesForKeypath:(uint64_t)a3 startEntity:(void *)a4 startAlias:(void *)a5 forScope:(uint64_t)a6 inStatementIntermediate:(void *)a7 inContext:;
- (id)description;
- (id)generateSQLStringInContext:(id)a3;
- (void)dealloc;
- (void)initForRelationship:(void *)a3 sourceAlias:(void *)a4 destinationAlias:(void *)a5 correlationAlias:(char)a6 direct:(uint64_t)a7 inScope:;
@end

@implementation NSSQLJoinIntermediate

- (void)dealloc
{
  self->_relationship = 0;

  self->_sourceAlias = 0;
  self->_destinationAlias = 0;

  self->_correlationAlias = 0;
  v3.receiver = self;
  v3.super_class = NSSQLJoinIntermediate;
  [(NSSQLJoinIntermediate *)&v3 dealloc];
}

- (void)initForRelationship:(void *)a3 sourceAlias:(void *)a4 destinationAlias:(void *)a5 correlationAlias:(char)a6 direct:(uint64_t)a7 inScope:
{
  if (!a1)
  {
    return 0;
  }

  v15.receiver = a1;
  v15.super_class = NSSQLJoinIntermediate;
  v12 = objc_msgSendSuper2(&v15, sel_initWithScope_, a7);
  v13 = v12;
  if (v12)
  {
    v12[2] = a2;
    v12[3] = a3;
    v13[4] = a4;
    v13[5] = a5;
    *(v13 + 56) = a6;
  }

  return v13;
}

+ (id)createJoinIntermediatesForKeypath:(uint64_t)a3 startEntity:(void *)a4 startAlias:(void *)a5 forScope:(uint64_t)a6 inStatementIntermediate:(void *)a7 inContext:
{
  objc_opt_self();
  v12 = [a5 isUpdateScoped];
  if ((v12 & 1) == 0 && (!a6 || !*(a6 + 112)))
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = a7;
    v19 = *MEMORY[0x1E695D940];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Join being created outside a fetch scope for keypath %@ entity %@", a2, a3];
    goto LABEL_70;
  }

  if ([a5 isOrScoped])
  {
    v50 = 1;
  }

  else
  {
    v50 = [a5 isTargetColumnsScoped];
  }

  v46 = v12;
  if ([a5 isOrScoped])
  {
    v13 = [a5 isTargetColumnsScoped];
  }

  else
  {
    v13 = 1;
  }

  v14 = [a2 count];
  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a2, "count")}];
  v16 = [a5 disambiguationKeypath];
  v53 = [a5 disambiguatingEntity];
  if (v53 && [v16 count] <= v14)
  {
    if ([v16 count])
    {
      v51 = a5;
      v21 = 0;
      do
      {
        v22 = [objc_msgSend(v16 objectAtIndex:{v21), "isEqual:", objc_msgSend(a2, "objectAtIndex:", v21)}];
        if ((v22 & 1) == 0)
        {
          break;
        }

        ++v21;
      }

      while (v21 < [v16 count]);
      v56 = v22 ^ 1;
      a5 = v51;
      if (!v14)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v56 = 0;
      if (!v14)
      {
LABEL_64:

        v43 = 0;
LABEL_71:

        return v43;
      }
    }
  }

  else
  {
    v56 = 1;
    if (!v14)
    {
      goto LABEL_64;
    }
  }

  v52 = a5;
  v23 = 0;
  v55 = 0;
  if (a6)
  {
    v24 = v13;
  }

  else
  {
    v24 = 1;
  }

  v47 = v24;
  v48 = a6;
  v49 = a2;
  while (1)
  {
    v25 = [a2 objectAtIndex:v23];
    v26 = a3 ? [*(a3 + 40) objectForKey:v25] : 0;
    v27 = v26 ? 1 : v56;
    if ((v27 & 1) == 0)
    {
      break;
    }

LABEL_32:
    v28 = [v26 propertyType];
    if (!v26)
    {
      goto LABEL_66;
    }

    v29 = v28;
    [v15 addObject:v25];
    if ((v29 - 7) > 2)
    {
      goto LABEL_60;
    }

    if (v29 == 9)
    {
      v34 = v14 == 1 && [a7 objectForKey:@"subqueryCollectionContext"] == 0;
      objc_opt_self();
      if (v55)
      {
        v35 = v55[4];
      }

      else
      {
        v35 = 0;
      }

      v36 = [objc_msgSend(a7 objectForKey:{@"aliasGenerator", "generateTableAlias"}];
      v37 = a7;
      v38 = [objc_msgSend(a7 objectForKey:{@"aliasGenerator", "generateTableAlias"}];
      v39 = [NSSQLJoinIntermediate alloc];
      v40 = v38;
      a7 = v37;
      v31 = [(NSSQLJoinIntermediate *)v39 initForRelationship:v26 sourceAlias:v35 destinationAlias:v40 correlationAlias:v36 direct:v34 inScope:v52];
      a6 = v48;
      a2 = v49;
    }

    else
    {
      if (v29 != 8)
      {
        if (v14 == 1 && ![a7 objectForKey:@"subqueryCollectionContext"])
        {
          goto LABEL_60;
        }

        v30 = [(NSSQLFetchIntermediate *)a6 finalJoinForKeypathWithComponents:v15];
        if (v30)
        {
          v31 = v30;
          v32 = v30;
LABEL_52:
          a3 = [v31[2] destinationEntity];
          if (v50)
          {
            v31[6] = 2;
            if ((v47 & 1) == 0)
            {
              v41 = *(a6 + 64);
              if (v41)
              {
                *(v41 + 48) = 1;
              }
            }
          }

          if (a4 && !v31[3])
          {
            v42 = a4;

            v31[3] = a4;
          }

          v55 = v31;
          goto LABEL_60;
        }
      }

      objc_opt_self();
      if (v55)
      {
        v33 = v55[4];
      }

      else
      {
        v33 = 0;
      }

      v31 = -[NSSQLJoinIntermediate initForRelationship:sourceAlias:destinationAlias:correlationAlias:direct:inScope:]([NSSQLJoinIntermediate alloc], v26, v33, [objc_msgSend(a7 objectForKey:{@"aliasGenerator", "generateTableAlias"}], 0, 0, v52);
    }

    [(NSSQLFetchIntermediate *)a6 addJoinIntermediate:v31 atKeypathWithComponents:v15];
    if (v31)
    {
      goto LABEL_52;
    }

LABEL_60:
    ++v23;
    if (!--v14)
    {
      goto LABEL_66;
    }
  }

  if (v53)
  {
    v26 = [*(v53 + 40) objectForKey:v25];
    goto LABEL_32;
  }

  [0 propertyType];
LABEL_66:

  v43 = v55;
  v44 = v46;
  if (!v55)
  {
    v44 = 0;
  }

  if (v44 != 1)
  {
    goto LABEL_71;
  }

  v17 = MEMORY[0x1E695DF30];
  v18 = a7;
  v19 = *MEMORY[0x1E695D940];
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Join being created inside an update scope for keypath %@ entity %@", a2, a3];
LABEL_70:
  [v18 setObject:objc_msgSend(v17 forKey:{"exceptionWithName:reason:userInfo:", v19, v20, 0), @"NSUnderlyingException"}];
  return 0;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  v5 = [-[NSSQLProperty entity](self->_relationship "entity")];
  sourceAlias = self->_sourceAlias;
  v7 = [-[NSSQLRelationship destinationEntity](self->_relationship "destinationEntity")];
  destinationAlias = self->_destinationAlias;
  v9 = [v4 stringWithFormat:@"source (%@, %@), destination (%@, %@), correlation (%@)", v5, sourceAlias, v7, destinationAlias, self->_correlationAlias];
  objc_autoreleasePoolPop(v3);

  return v9;
}

- (id)generateSQLStringInContext:(id)a3
{
  if ([a3 objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  relationship = self->_relationship;
  if (relationship && relationship->super._propertyType == 7)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
    sourceAlias = self->_sourceAlias;
    if (!sourceAlias)
    {
      sourceAlias = [(NSSQLIntermediate *)self governingAlias];
    }

    type = self->_type;
    if (type == 1)
    {
      v8 = @"INNER ";
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_23;
      }

      v8 = @"LEFT OUTER ";
    }

    [v4 appendString:v8];
LABEL_23:
    [v4 appendString:@"JOIN "];
    [v4 appendString:{objc_msgSend(-[NSSQLRelationship destinationEntity](self->_relationship, "destinationEntity"), "tableName")}];
    [v4 appendString:@" "];
    [v4 appendString:self->_destinationAlias];
    [v4 appendString:@" ON "];
    [v4 appendString:sourceAlias];
    [v4 appendString:@"."];
    [v4 appendString:{-[NSSQLProperty columnName](self->_relationship, "columnName")}];
    [v4 appendString:@" = "];
    [v4 appendString:self->_destinationAlias];
    [v4 appendString:@"."];
    v15 = [(NSSQLRelationship *)self->_relationship sourceEntity];
    if (!v15)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v9 = [(NSSQLProperty *)relationship isToMany];
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v10 = self->_sourceAlias;
  if (v9)
  {
    if (!v10)
    {
      v10 = [(NSSQLIntermediate *)self governingAlias];
    }

    v11 = self->_type;
    if (v11 == 1)
    {
      v12 = @"INNER ";
    }

    else
    {
      if (v11 != 2)
      {
LABEL_27:
        [v4 appendString:@"JOIN "];
        [v4 appendString:{objc_msgSend(-[NSSQLRelationship destinationEntity](self->_relationship, "destinationEntity"), "tableName")}];
        [v4 appendString:@" "];
        [v4 appendString:self->_destinationAlias];
        [v4 appendString:@" ON "];
        [v4 appendString:v10];
        [v4 appendString:@"."];
        v16 = [(NSSQLRelationship *)self->_relationship sourceEntity];
        if (v16)
        {
          v16 = v16[16];
        }

        [v4 appendString:{objc_msgSend(v16, "columnName")}];
        [v4 appendString:@" = "];
        [v4 appendString:self->_destinationAlias];
        [v4 appendString:@"."];
        v17 = self->_relationship;
        if (v17)
        {
          inverse = v17->_inverse;
        }

        else
        {
          inverse = 0;
        }

        v15 = [(NSSQLRelationship *)inverse foreignKey];
        goto LABEL_44;
      }

      v12 = @"LEFT OUTER ";
    }

    [v4 appendString:v12];
    goto LABEL_27;
  }

  if (!v10)
  {
    v10 = [(NSSQLIntermediate *)self governingAlias];
  }

  v13 = self->_type;
  if (v13 == 1)
  {
    v14 = @"INNER ";
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_34;
    }

    v14 = @"LEFT OUTER ";
  }

  [v4 appendString:v14];
LABEL_34:
  [v4 appendString:@"JOIN "];
  [v4 appendString:{-[NSSQLRelationship correlationTableName](self->_relationship, "correlationTableName")}];
  [v4 appendString:@" "];
  [v4 appendString:self->_correlationAlias];
  [v4 appendString:@" ON "];
  [v4 appendString:v10];
  [v4 appendString:@"."];
  v19 = [(NSSQLRelationship *)self->_relationship sourceEntity];
  if (v19)
  {
    v19 = v19[16];
  }

  [v4 appendString:{objc_msgSend(v19, "columnName")}];
  [v4 appendString:@" = "];
  [v4 appendString:self->_correlationAlias];
  [v4 appendString:@"."];
  [v4 appendString:{-[NSSQLProperty columnName](self->_relationship, "columnName")}];
  if (!self->_direct)
  {
    v20 = self->_type;
    if (v20 == 1)
    {
      v21 = @" INNER";
    }

    else
    {
      if (v20 != 2)
      {
        goto LABEL_42;
      }

      v21 = @" LEFT OUTER";
    }

    [v4 appendString:v21];
LABEL_42:
    [v4 appendString:@" JOIN "];
    [v4 appendString:{objc_msgSend(-[NSSQLRelationship destinationEntity](self->_relationship, "destinationEntity"), "tableName")}];
    [v4 appendString:@" "];
    [v4 appendString:self->_destinationAlias];
    [v4 appendString:@" ON "];
    [v4 appendString:self->_correlationAlias];
    [v4 appendString:@"."];
    [v4 appendString:-[NSSQLManyToMany inverseColumnName](self->_relationship)];
    [v4 appendString:@" = "];
    [v4 appendString:self->_destinationAlias];
    [v4 appendString:@"."];
    v15 = [(NSSQLRelationship *)self->_relationship destinationEntity];
    if (!v15)
    {
LABEL_44:
      [v4 appendString:{objc_msgSend(v15, "columnName")}];
      return v4;
    }

LABEL_43:
    v15 = v15[16];
    goto LABEL_44;
  }

  return v4;
}

@end