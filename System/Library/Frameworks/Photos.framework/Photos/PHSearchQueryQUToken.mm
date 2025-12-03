@interface PHSearchQueryQUToken
+ (id)_supportedEntityCategoryTypes;
+ (id)entityCategoryTypeKeyForEntityTypeCategory:(unint64_t)category;
- (BOOL)hasMemoryGenAnnotation;
- (BOOL)isEqual:(id)equal;
- (PHSearchQueryQUToken)initWithCoder:(id)coder;
- (PHSearchQueryQUToken)initWithText:(id)text entityCategoryTypes:(id)types metadata:(id)metadata;
- (id)description;
- (id)jsonDictionary;
- (id)metadataForCategoryType:(unint64_t)type;
- (unint64_t)ambiguityType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PHSearchQueryQUToken

- (id)jsonDictionary
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  entityCategoryTypes = [(PHSearchQueryQUToken *)self entityCategoryTypes];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __38__PHSearchQueryQUToken_jsonDictionary__block_invoke;
  v60[3] = &unk_1E75A9568;
  v5 = v3;
  v61 = v5;
  [entityCategoryTypes enumerateIndexesUsingBlock:v60];

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  text = [(PHSearchQueryQUToken *)self text];
  [v6 setObject:text forKeyedSubscript:@"query_term"];

  [v6 setObject:v5 forKeyedSubscript:@"entity_category_types"];
  ambiguityType = [(PHSearchQueryQUToken *)self ambiguityType];
  v9 = @"PHSearchAmbiguityTypeNone";
  if (ambiguityType == 1)
  {
    v9 = @"PHSearchAmbiguityTypePartiallyAmbiguous";
  }

  if (ambiguityType == 2)
  {
    v9 = @"PHSearchAmbiguityTypeFullyAmbiguous";
  }

  v10 = v9;
  [v6 setObject:v10 forKeyedSubscript:@"ambiguity_type"];

  v11 = [PHSearchQueryQUToken entityCategoryTypeKeyForEntityTypeCategory:1];
  metadata = [(PHSearchQueryQUToken *)self metadata];
  v13 = [metadata objectForKeyedSubscript:v11];

  v14 = [PHSearchQueryQUToken entityCategoryTypeKeyForEntityTypeCategory:2];
  metadata2 = [(PHSearchQueryQUToken *)self metadata];
  v16 = [metadata2 objectForKeyedSubscript:v14];

  if ([v13 count])
  {
    v42 = v16;
    v43 = v14;
    v46 = v11;
    v48 = v6;
    v50 = v5;
    metadata5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v45 = v13;
    v18 = v13;
    v19 = [v18 countByEnumeratingWithState:&v56 objects:v63 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v57;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v57 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v56 + 1) + 8 * i);
          v24 = objc_alloc_init(MEMORY[0x1E696AB78]);
          [v24 setDateFormat:@"yyyy-MM-dd HH:mm"];
          v25 = [v24 stringFromDate:v23];
          [metadata5 addObject:v25];
        }

        v20 = [v18 countByEnumeratingWithState:&v56 objects:v63 count:16];
      }

      while (v20);
    }

    metadata3 = [(PHSearchQueryQUToken *)self metadata];
    v27 = [metadata3 mutableCopy];

    v11 = v46;
    [v27 setObject:metadata5 forKeyedSubscript:v46];
    v6 = v48;
    [v48 setObject:v27 forKeyedSubscript:@"metadata"];

    v5 = v50;
    v14 = v43;
    v13 = v45;
LABEL_23:
    v16 = v42;
    goto LABEL_24;
  }

  if ([v16 count])
  {
    v44 = v14;
    v47 = v11;
    v49 = v6;
    selfCopy = self;
    metadata5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v42 = v16;
    obj = v16;
    v28 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v53;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v53 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v52 + 1) + 8 * j);
          currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
          v34 = [currentCalendar dateFromComponents:v32];
          v35 = objc_alloc_init(MEMORY[0x1E696AB78]);
          [v35 setDateFormat:@"yyyy-MM-dd HH:mm"];
          v36 = [v35 stringFromDate:v34];
          [metadata5 addObject:v36];
        }

        v29 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
      }

      while (v29);
    }

    metadata4 = [(PHSearchQueryQUToken *)selfCopy metadata];
    v38 = [metadata4 mutableCopy];

    v14 = v44;
    [v38 setObject:metadata5 forKeyedSubscript:v44];
    v6 = v49;
    [v49 setObject:v38 forKeyedSubscript:@"metadata"];

    v11 = v47;
    goto LABEL_23;
  }

  metadata5 = [(PHSearchQueryQUToken *)self metadata];
  [v6 setObject:metadata5 forKeyedSubscript:@"metadata"];
LABEL_24:

  v39 = [v6 copy];

  return v39;
}

void __38__PHSearchQueryQUToken_jsonDictionary__block_invoke(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) > 0x13)
  {
    v3 = @"PHSearchEntityCategoryTypeUndefined";
  }

  else
  {
    v3 = off_1E75A3850[a2 - 1];
  }

  v4 = v3;
  [*(a1 + 32) addObject:v4];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  entityCategoryTypes = [(PHSearchQueryQUToken *)self entityCategoryTypes];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __35__PHSearchQueryQUToken_description__block_invoke;
  v14[3] = &unk_1E75A9568;
  v15 = v3;
  v5 = v3;
  [entityCategoryTypes enumerateIndexesUsingBlock:v14];

  v6 = MEMORY[0x1E696AEC0];
  text = [(PHSearchQueryQUToken *)self text];
  metadata = [(PHSearchQueryQUToken *)self metadata];
  ambiguityType = [(PHSearchQueryQUToken *)self ambiguityType];
  v10 = @"PHSearchAmbiguityTypeNone";
  if (ambiguityType == 1)
  {
    v10 = @"PHSearchAmbiguityTypePartiallyAmbiguous";
  }

  if (ambiguityType == 2)
  {
    v10 = @"PHSearchAmbiguityTypeFullyAmbiguous";
  }

  v11 = v10;
  v12 = [v6 stringWithFormat:@"text: %@, metadata: %@, entityCategories: %@, ambiguity: %@", text, metadata, v5, v11];

  return v12;
}

void __35__PHSearchQueryQUToken_description__block_invoke(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) > 0x13)
  {
    v3 = @"PHSearchEntityCategoryTypeUndefined";
  }

  else
  {
    v3 = off_1E75A3850[a2 - 1];
  }

  v4 = v3;
  [*(a1 + 32) addObject:v4];
}

- (void)encodeWithCoder:(id)coder
{
  text = self->_text;
  coderCopy = coder;
  [coderCopy encodeObject:text forKey:@"PHSearchQueryDisambiguationPropertyText"];
  [coderCopy encodeObject:self->_entityCategoryTypes forKey:@"PHSearchQueryDisambiguationPropertyEntityCategoryTypes"];
  [coderCopy encodeObject:self->_metadata forKey:@"PHSearchQueryDisambiguationPropertyMetadata"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_version];
  [coderCopy encodeObject:v6 forKey:@"PHSearchQueryDisambiguationPropertyVersion"];
}

- (PHSearchQueryQUToken)initWithCoder:(id)coder
{
  v23 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchQueryDisambiguationPropertyVersion"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    v7 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v20 = unsignedIntegerValue;
      v21 = 1024;
      v22 = 0;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Version of encoded PHSearchQueryToken: %tu does not match the current search query token SPI version: %d, cannot instantiate token", buf, 0x12u);
    }

    selfCopy = 0;
  }

  else
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchQueryDisambiguationPropertyText"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchQueryDisambiguationPropertyEntityCategoryTypes"];
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v11 setWithObjects:{v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"PHSearchQueryDisambiguationPropertyMetadata"];
    self = [(PHSearchQueryQUToken *)self initWithText:v9 entityCategoryTypes:v10 metadata:v17];

    selfCopy = self;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  text = [(PHSearchQueryQUToken *)self text];
  v4 = [text hash];
  entityCategoryTypes = [(PHSearchQueryQUToken *)self entityCategoryTypes];
  v6 = [entityCategoryTypes hash] ^ v4;
  metadata = [(PHSearchQueryQUToken *)self metadata];
  v8 = [metadata hash];
  v9 = v8 ^ [(PHSearchQueryQUToken *)self version];

  return v6 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      text = [(PHSearchQueryQUToken *)self text];
      text2 = [(PHSearchQueryQUToken *)v5 text];
      v8 = [text isEqualToString:text2];

      if (v8)
      {
        entityCategoryTypes = [(PHSearchQueryQUToken *)self entityCategoryTypes];
        if (entityCategoryTypes && ([(PHSearchQueryQUToken *)v5 entityCategoryTypes], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v11 = v10;
          entityCategoryTypes2 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
          entityCategoryTypes3 = [(PHSearchQueryQUToken *)v5 entityCategoryTypes];
          v14 = [entityCategoryTypes2 isEqualToIndexSet:entityCategoryTypes3];

          if ((v14 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          entityCategoryTypes4 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
          entityCategoryTypes5 = [(PHSearchQueryQUToken *)v5 entityCategoryTypes];

          if (entityCategoryTypes)
          {
          }

          if (entityCategoryTypes4 != entityCategoryTypes5)
          {
            goto LABEL_20;
          }
        }

        metadata = [(PHSearchQueryQUToken *)self metadata];
        if (!metadata || ([(PHSearchQueryQUToken *)v5 metadata], (v19 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          metadata2 = [(PHSearchQueryQUToken *)self metadata];
          metadata3 = [(PHSearchQueryQUToken *)v5 metadata];

          if (metadata)
          {
          }

          if (metadata2 != metadata3)
          {
            goto LABEL_20;
          }

LABEL_16:
          version = [(PHSearchQueryQUToken *)self version];
          v15 = version == [(PHSearchQueryQUToken *)v5 version];
LABEL_21:

          goto LABEL_22;
        }

        v20 = v19;
        metadata4 = [(PHSearchQueryQUToken *)self metadata];
        metadata5 = [(PHSearchQueryQUToken *)v5 metadata];
        v23 = [metadata4 isEqualToDictionary:metadata5];

        if (v23)
        {
          goto LABEL_16;
        }
      }

LABEL_20:
      v15 = 0;
      goto LABEL_21;
    }

    v15 = 0;
  }

LABEL_22:

  return v15;
}

- (BOOL)hasMemoryGenAnnotation
{
  entityCategoryTypes = [(PHSearchQueryQUToken *)self entityCategoryTypes];
  if ([entityCategoryTypes containsIndex:6] & 1) != 0 || (objc_msgSend(entityCategoryTypes, "containsIndex:", 7) & 1) != 0 || (objc_msgSend(entityCategoryTypes, "containsIndex:", 8) & 1) != 0 || (objc_msgSend(entityCategoryTypes, "containsIndex:", 12) & 1) != 0 || (objc_msgSend(entityCategoryTypes, "containsIndex:", 13) & 1) != 0 || (objc_msgSend(entityCategoryTypes, "containsIndex:", 9) & 1) != 0 || (objc_msgSend(entityCategoryTypes, "containsIndex:", 11) & 1) != 0 || (objc_msgSend(entityCategoryTypes, "containsIndex:", 10) & 1) != 0 || (objc_msgSend(entityCategoryTypes, "containsIndex:", 14) & 1) != 0 || (objc_msgSend(entityCategoryTypes, "containsIndex:", 15) & 1) != 0 || (objc_msgSend(entityCategoryTypes, "containsIndex:", 16) & 1) != 0 || (objc_msgSend(entityCategoryTypes, "containsIndex:", 18) & 1) != 0 || (objc_msgSend(entityCategoryTypes, "containsIndex:", 19) & 1) != 0 || (objc_msgSend(entityCategoryTypes, "containsIndex:", 17))
  {
    v3 = 1;
  }

  else
  {
    v3 = [entityCategoryTypes containsIndex:20];
  }

  return v3;
}

- (id)metadataForCategoryType:(unint64_t)type
{
  v4 = [objc_opt_class() entityCategoryTypeKeyForEntityTypeCategory:type];
  metadata = [(PHSearchQueryQUToken *)self metadata];
  v6 = [metadata objectForKeyedSubscript:v4];

  return v6;
}

- (unint64_t)ambiguityType
{
  if (!-[PHSearchQueryQUToken hasMemoryGenAnnotation](self, "hasMemoryGenAnnotation") || (-[PHSearchQueryQUToken entityCategoryTypes](self, "entityCategoryTypes"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4 != 1))
  {
    metadata = [(PHSearchQueryQUToken *)self metadata];
    if ([metadata count])
    {
      entityCategoryTypes = [(PHSearchQueryQUToken *)self entityCategoryTypes];
      v8 = [entityCategoryTypes count];

      if (v8)
      {
        v50 = 0;
        v51 = &v50;
        v52 = 0x2020000000;
        v53 = 2;
        v46 = 0;
        v47 = &v46;
        v48 = 0x2020000000;
        v49 = 2;
        v42 = 0;
        v43 = &v42;
        v44 = 0x2020000000;
        v45 = 2;
        v38 = 0;
        v39 = &v38;
        v40 = 0x2020000000;
        v41 = 2;
        v34 = 0;
        v35 = &v34;
        v36 = 0x2020000000;
        v37 = 0;
        entityCategoryTypes2 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __37__PHSearchQueryQUToken_ambiguityType__block_invoke;
        v33[3] = &unk_1E75A4758;
        v33[4] = self;
        v33[5] = &v34;
        v33[6] = &v50;
        v33[7] = &v46;
        v33[8] = &v42;
        v33[9] = &v38;
        [entityCategoryTypes2 enumerateIndexesUsingBlock:v33];

        if ((v35[3] & 1) == 0)
        {
          if ([(PHSearchQueryQUToken *)self hasMemoryGenAnnotation])
          {
            v5 = 1;
          }

          else
          {
            v5 = 2;
          }

          goto LABEL_35;
        }

        entityCategoryTypes3 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
        v11 = [entityCategoryTypes3 count];

        if (v11 >= 2)
        {
          if (![(PHSearchQueryQUToken *)self hasMemoryGenAnnotation])
          {
            goto LABEL_34;
          }

          entityCategoryTypes4 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
          if (([entityCategoryTypes4 containsIndex:4] & 1) == 0)
          {

            goto LABEL_24;
          }

          entityCategoryTypes5 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
          v14 = [entityCategoryTypes5 containsIndex:14];

          if (!v14)
          {
            goto LABEL_24;
          }

          entityCategoryTypes6 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
          v16 = [entityCategoryTypes6 count];

          if (v16 != 2)
          {
            entityCategoryTypes7 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
            v18 = [entityCategoryTypes7 count];

            if (v18 > 2)
            {
              goto LABEL_34;
            }

LABEL_24:
            if (!v51[3])
            {
              entityCategoryTypes8 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
              if ([entityCategoryTypes8 containsIndex:3])
              {
                entityCategoryTypes9 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
                v26 = [entityCategoryTypes9 containsIndex:15];

                if (v26)
                {
                  v5 = 0;
LABEL_35:
                  _Block_object_dispose(&v34, 8);
                  _Block_object_dispose(&v38, 8);
                  _Block_object_dispose(&v42, 8);
                  _Block_object_dispose(&v46, 8);
                  _Block_object_dispose(&v50, 8);
                  return v5;
                }
              }

              else
              {
              }
            }

LABEL_34:
            v5 = 1;
            goto LABEL_35;
          }

          goto LABEL_22;
        }

        entityCategoryTypes10 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
        v20 = [entityCategoryTypes10 containsIndex:3];

        if (v20)
        {
          v21 = v51;
        }

        else
        {
          entityCategoryTypes11 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
          v23 = [entityCategoryTypes11 containsIndex:4];

          if (v23)
          {
LABEL_22:
            v21 = v47;
            goto LABEL_32;
          }

          entityCategoryTypes12 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
          if ([entityCategoryTypes12 containsIndex:1])
          {
          }

          else
          {
            entityCategoryTypes13 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
            v29 = [entityCategoryTypes13 containsIndex:2];

            if (!v29)
            {
              entityCategoryTypes14 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
              v32 = [entityCategoryTypes14 containsIndex:5];

              if (!v32)
              {
                v5 = 2;
                goto LABEL_35;
              }

              v21 = v43;
              goto LABEL_32;
            }
          }

          v21 = v39;
        }

LABEL_32:
        v5 = v21[3];
        goto LABEL_35;
      }
    }

    else
    {
    }

    return 2;
  }

  return 0;
}

void __37__PHSearchQueryQUToken_ambiguityType__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) metadataForCategoryType:a2];
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      v27 = v4;
      v21 = v4;
      v22 = v21;
      v23 = *(*(a1 + 40) + 8);
      if (*(v23 + 24))
      {
        v24 = 1;
      }

      else
      {
        v24 = [v21 count] == 2;
        v23 = *(*(a1 + 40) + 8);
      }

      *(v23 + 24) = v24;
      if ([v22 count] != 2)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_44;
      }

      v27 = v4;
      v9 = v4;
      v10 = v9;
      v11 = *(*(a1 + 40) + 8);
      if (*(v11 + 24))
      {
        v12 = 1;
      }

      else
      {
        v12 = [v9 count] != 0;
        v11 = *(*(a1 + 40) + 8);
      }

      *(v11 + 24) = v12;
      if (![v10 count] || objc_msgSend(v10, "count") > 2)
      {
        goto LABEL_43;
      }
    }

    v25 = 0;
    v26 = 72;
    goto LABEL_42;
  }

  if (a2 == 5)
  {
    v27 = v4;
    v13 = v4;
    v14 = v13;
    v15 = *(*(a1 + 40) + 8);
    if (*(v15 + 24))
    {
      v16 = 1;
    }

    else
    {
      v16 = [v13 count] != 0;
      v15 = *(*(a1 + 40) + 8);
    }

    *(v15 + 24) = v16;
    if ([v14 count] == 1)
    {
      v25 = 0;
    }

    else
    {
      if ([v14 count] <= 1)
      {
        goto LABEL_43;
      }

      v25 = 1;
    }

    v26 = 64;
LABEL_42:
    *(*(*(a1 + v26) + 8) + 24) = v25;
    goto LABEL_43;
  }

  if (a2 == 4)
  {
    v27 = v4;
    v17 = v4;
    v18 = v17;
    v19 = *(*(a1 + 40) + 8);
    if (*(v19 + 24))
    {
      v20 = 1;
    }

    else
    {
      v20 = [v17 count] != 0;
      v19 = *(*(a1 + 40) + 8);
    }

    *(v19 + 24) = v20;
    if ([v18 count] == 1)
    {
      v25 = 0;
    }

    else
    {
      if ([v18 count] <= 1)
      {
        goto LABEL_43;
      }

      v25 = 1;
    }

    v26 = 56;
    goto LABEL_42;
  }

  if (a2 != 3)
  {
    goto LABEL_44;
  }

  v27 = v4;
  v5 = v4;
  v6 = v5;
  v7 = *(*(a1 + 40) + 8);
  if (*(v7 + 24))
  {
    v8 = 1;
  }

  else
  {
    v8 = [v5 count] != 0;
    v7 = *(*(a1 + 40) + 8);
  }

  *(v7 + 24) = v8;
  if ([v6 count] == 1)
  {
    v25 = 0;
LABEL_37:
    v26 = 48;
    goto LABEL_42;
  }

  if ([v6 count] > 1)
  {
    v25 = 1;
    goto LABEL_37;
  }

LABEL_43:

  v4 = v27;
LABEL_44:
}

- (PHSearchQueryQUToken)initWithText:(id)text entityCategoryTypes:(id)types metadata:(id)metadata
{
  textCopy = text;
  typesCopy = types;
  metadataCopy = metadata;
  if (!textCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchQueryQUToken.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"text"}];
  }

  if ([typesCopy containsIndex:1] && objc_msgSend(typesCopy, "containsIndex:", 2))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHSearchQueryQUToken.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"!containsMultipleDateTypes"}];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __66__PHSearchQueryQUToken_initWithText_entityCategoryTypes_metadata___block_invoke;
  v20[3] = &unk_1E75A4730;
  v22 = a2;
  selfCopy = self;
  v21 = selfCopy;
  [typesCopy enumerateIndexesUsingBlock:v20];
  v19.receiver = selfCopy;
  v19.super_class = PHSearchQueryQUToken;
  v14 = [(PHSearchQueryQUToken *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_text, text);
    objc_storeStrong(&v15->_entityCategoryTypes, types);
    objc_storeStrong(&v15->_metadata, metadata);
    v15->_version = 0;
  }

  return v15;
}

void __66__PHSearchQueryQUToken_initWithText_entityCategoryTypes_metadata___block_invoke(uint64_t a1, uint64_t a2)
{
  if (![PHSearchQueryQUToken _isSupportedEntityCategoryType:a2])
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PHSearchQueryQUToken.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"isSupportedType"}];
  }
}

+ (id)_supportedEntityCategoryTypes
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v2 addIndex:3];
  [v2 addIndex:4];
  [v2 addIndex:1];
  [v2 addIndex:2];
  [v2 addIndex:14];
  [v2 addIndex:12];
  [v2 addIndex:6];
  [v2 addIndex:7];
  [v2 addIndex:8];
  [v2 addIndex:13];
  [v2 addIndex:9];
  [v2 addIndex:11];
  [v2 addIndex:10];
  [v2 addIndex:15];
  [v2 addIndex:16];
  [v2 addIndex:17];
  [v2 addIndex:18];
  [v2 addIndex:19];
  [v2 addIndex:20];
  v3 = [v2 copy];

  return v3;
}

+ (id)entityCategoryTypeKeyForEntityTypeCategory:(unint64_t)category
{
  if ([self _isSupportedEntityCategoryType:?])
  {
    v4 = MEMORY[0x1E696AEC0];
    if (category - 1 > 0x13)
    {
      v5 = @"PHSearchEntityCategoryTypeUndefined";
    }

    else
    {
      v5 = off_1E75A3850[category - 1];
    }

    v7 = v5;
    v6 = [v4 stringWithFormat:@"%@", v7];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end