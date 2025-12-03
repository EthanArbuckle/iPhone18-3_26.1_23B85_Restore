@interface NSSQLJoinIntermediate
+ (id)createJoinIntermediatesForKeypath:(uint64_t)keypath startEntity:(void *)entity startAlias:(void *)alias forScope:(uint64_t)scope inStatementIntermediate:(void *)intermediate inContext:;
- (id)description;
- (id)generateSQLStringInContext:(id)context;
- (void)dealloc;
- (void)initForRelationship:(void *)relationship sourceAlias:(void *)alias destinationAlias:(void *)destinationAlias correlationAlias:(char)correlationAlias direct:(uint64_t)direct inScope:;
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

- (void)initForRelationship:(void *)relationship sourceAlias:(void *)alias destinationAlias:(void *)destinationAlias correlationAlias:(char)correlationAlias direct:(uint64_t)direct inScope:
{
  if (!self)
  {
    return 0;
  }

  v15.receiver = self;
  v15.super_class = NSSQLJoinIntermediate;
  v12 = objc_msgSendSuper2(&v15, sel_initWithScope_, direct);
  v13 = v12;
  if (v12)
  {
    v12[2] = a2;
    v12[3] = relationship;
    v13[4] = alias;
    v13[5] = destinationAlias;
    *(v13 + 56) = correlationAlias;
  }

  return v13;
}

+ (id)createJoinIntermediatesForKeypath:(uint64_t)keypath startEntity:(void *)entity startAlias:(void *)alias forScope:(uint64_t)scope inStatementIntermediate:(void *)intermediate inContext:
{
  objc_opt_self();
  isUpdateScoped = [alias isUpdateScoped];
  if ((isUpdateScoped & 1) == 0 && (!scope || !*(scope + 112)))
  {
    v17 = MEMORY[0x1E695DF30];
    intermediateCopy3 = intermediate;
    v19 = *MEMORY[0x1E695D940];
    keypath = [MEMORY[0x1E696AEC0] stringWithFormat:@"Join being created outside a fetch scope for keypath %@ entity %@", a2, keypath];
    goto LABEL_70;
  }

  if ([alias isOrScoped])
  {
    isTargetColumnsScoped = 1;
  }

  else
  {
    isTargetColumnsScoped = [alias isTargetColumnsScoped];
  }

  v46 = isUpdateScoped;
  if ([alias isOrScoped])
  {
    isTargetColumnsScoped2 = [alias isTargetColumnsScoped];
  }

  else
  {
    isTargetColumnsScoped2 = 1;
  }

  v14 = [a2 count];
  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a2, "count")}];
  disambiguationKeypath = [alias disambiguationKeypath];
  disambiguatingEntity = [alias disambiguatingEntity];
  if (disambiguatingEntity && [disambiguationKeypath count] <= v14)
  {
    if ([disambiguationKeypath count])
    {
      aliasCopy = alias;
      v21 = 0;
      do
      {
        v22 = [objc_msgSend(disambiguationKeypath objectAtIndex:{v21), "isEqual:", objc_msgSend(a2, "objectAtIndex:", v21)}];
        if ((v22 & 1) == 0)
        {
          break;
        }

        ++v21;
      }

      while (v21 < [disambiguationKeypath count]);
      v56 = v22 ^ 1;
      alias = aliasCopy;
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

  aliasCopy2 = alias;
  v23 = 0;
  v55 = 0;
  if (scope)
  {
    v24 = isTargetColumnsScoped2;
  }

  else
  {
    v24 = 1;
  }

  v47 = v24;
  scopeCopy = scope;
  v49 = a2;
  while (1)
  {
    v25 = [a2 objectAtIndex:v23];
    v26 = keypath ? [*(keypath + 40) objectForKey:v25] : 0;
    v27 = v26 ? 1 : v56;
    if ((v27 & 1) == 0)
    {
      break;
    }

LABEL_32:
    propertyType = [v26 propertyType];
    if (!v26)
    {
      goto LABEL_66;
    }

    v29 = propertyType;
    [v15 addObject:v25];
    if ((v29 - 7) > 2)
    {
      goto LABEL_60;
    }

    if (v29 == 9)
    {
      v34 = v14 == 1 && [intermediate objectForKey:@"subqueryCollectionContext"] == 0;
      objc_opt_self();
      if (v55)
      {
        v35 = v55[4];
      }

      else
      {
        v35 = 0;
      }

      v36 = [objc_msgSend(intermediate objectForKey:{@"aliasGenerator", "generateTableAlias"}];
      intermediateCopy2 = intermediate;
      v38 = [objc_msgSend(intermediate objectForKey:{@"aliasGenerator", "generateTableAlias"}];
      v39 = [NSSQLJoinIntermediate alloc];
      v40 = v38;
      intermediate = intermediateCopy2;
      v31 = [(NSSQLJoinIntermediate *)v39 initForRelationship:v26 sourceAlias:v35 destinationAlias:v40 correlationAlias:v36 direct:v34 inScope:aliasCopy2];
      scope = scopeCopy;
      a2 = v49;
    }

    else
    {
      if (v29 != 8)
      {
        if (v14 == 1 && ![intermediate objectForKey:@"subqueryCollectionContext"])
        {
          goto LABEL_60;
        }

        v30 = [(NSSQLFetchIntermediate *)scope finalJoinForKeypathWithComponents:v15];
        if (v30)
        {
          v31 = v30;
          v32 = v30;
LABEL_52:
          keypath = [v31[2] destinationEntity];
          if (isTargetColumnsScoped)
          {
            v31[6] = 2;
            if ((v47 & 1) == 0)
            {
              v41 = *(scope + 64);
              if (v41)
              {
                *(v41 + 48) = 1;
              }
            }
          }

          if (entity && !v31[3])
          {
            entityCopy = entity;

            v31[3] = entity;
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

      v31 = -[NSSQLJoinIntermediate initForRelationship:sourceAlias:destinationAlias:correlationAlias:direct:inScope:]([NSSQLJoinIntermediate alloc], v26, v33, [objc_msgSend(intermediate objectForKey:{@"aliasGenerator", "generateTableAlias"}], 0, 0, aliasCopy2);
    }

    [(NSSQLFetchIntermediate *)scope addJoinIntermediate:v31 atKeypathWithComponents:v15];
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

  if (disambiguatingEntity)
  {
    v26 = [*(disambiguatingEntity + 40) objectForKey:v25];
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
  intermediateCopy3 = intermediate;
  v19 = *MEMORY[0x1E695D940];
  keypath = [MEMORY[0x1E696AEC0] stringWithFormat:@"Join being created inside an update scope for keypath %@ entity %@", a2, keypath];
LABEL_70:
  [intermediateCopy3 setObject:objc_msgSend(v17 forKey:{"exceptionWithName:reason:userInfo:", v19, keypath, 0), @"NSUnderlyingException"}];
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

- (id)generateSQLStringInContext:(id)context
{
  if ([context objectForKey:@"NSUnderlyingException"])
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
    sourceEntity = [(NSSQLRelationship *)self->_relationship sourceEntity];
    if (!sourceEntity)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  isToMany = [(NSSQLProperty *)relationship isToMany];
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  governingAlias = self->_sourceAlias;
  if (isToMany)
  {
    if (!governingAlias)
    {
      governingAlias = [(NSSQLIntermediate *)self governingAlias];
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
        [v4 appendString:governingAlias];
        [v4 appendString:@"."];
        sourceEntity2 = [(NSSQLRelationship *)self->_relationship sourceEntity];
        if (sourceEntity2)
        {
          sourceEntity2 = sourceEntity2[16];
        }

        [v4 appendString:{objc_msgSend(sourceEntity2, "columnName")}];
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

        sourceEntity = [(NSSQLRelationship *)inverse foreignKey];
        goto LABEL_44;
      }

      v12 = @"LEFT OUTER ";
    }

    [v4 appendString:v12];
    goto LABEL_27;
  }

  if (!governingAlias)
  {
    governingAlias = [(NSSQLIntermediate *)self governingAlias];
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
  [v4 appendString:governingAlias];
  [v4 appendString:@"."];
  sourceEntity3 = [(NSSQLRelationship *)self->_relationship sourceEntity];
  if (sourceEntity3)
  {
    sourceEntity3 = sourceEntity3[16];
  }

  [v4 appendString:{objc_msgSend(sourceEntity3, "columnName")}];
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
    sourceEntity = [(NSSQLRelationship *)self->_relationship destinationEntity];
    if (!sourceEntity)
    {
LABEL_44:
      [v4 appendString:{objc_msgSend(sourceEntity, "columnName")}];
      return v4;
    }

LABEL_43:
    sourceEntity = sourceEntity[16];
    goto LABEL_44;
  }

  return v4;
}

@end