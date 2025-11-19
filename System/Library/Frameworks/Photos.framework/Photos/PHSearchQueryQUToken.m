@interface PHSearchQueryQUToken
+ (id)_supportedEntityCategoryTypes;
+ (id)entityCategoryTypeKeyForEntityTypeCategory:(unint64_t)a3;
- (BOOL)hasMemoryGenAnnotation;
- (BOOL)isEqual:(id)a3;
- (PHSearchQueryQUToken)initWithCoder:(id)a3;
- (PHSearchQueryQUToken)initWithText:(id)a3 entityCategoryTypes:(id)a4 metadata:(id)a5;
- (id)description;
- (id)jsonDictionary;
- (id)metadataForCategoryType:(unint64_t)a3;
- (unint64_t)ambiguityType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PHSearchQueryQUToken

- (id)jsonDictionary
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __38__PHSearchQueryQUToken_jsonDictionary__block_invoke;
  v60[3] = &unk_1E75A9568;
  v5 = v3;
  v61 = v5;
  [v4 enumerateIndexesUsingBlock:v60];

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [(PHSearchQueryQUToken *)self text];
  [v6 setObject:v7 forKeyedSubscript:@"query_term"];

  [v6 setObject:v5 forKeyedSubscript:@"entity_category_types"];
  v8 = [(PHSearchQueryQUToken *)self ambiguityType];
  v9 = @"PHSearchAmbiguityTypeNone";
  if (v8 == 1)
  {
    v9 = @"PHSearchAmbiguityTypePartiallyAmbiguous";
  }

  if (v8 == 2)
  {
    v9 = @"PHSearchAmbiguityTypeFullyAmbiguous";
  }

  v10 = v9;
  [v6 setObject:v10 forKeyedSubscript:@"ambiguity_type"];

  v11 = [PHSearchQueryQUToken entityCategoryTypeKeyForEntityTypeCategory:1];
  v12 = [(PHSearchQueryQUToken *)self metadata];
  v13 = [v12 objectForKeyedSubscript:v11];

  v14 = [PHSearchQueryQUToken entityCategoryTypeKeyForEntityTypeCategory:2];
  v15 = [(PHSearchQueryQUToken *)self metadata];
  v16 = [v15 objectForKeyedSubscript:v14];

  if ([v13 count])
  {
    v42 = v16;
    v43 = v14;
    v46 = v11;
    v48 = v6;
    v50 = v5;
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
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
          [v17 addObject:v25];
        }

        v20 = [v18 countByEnumeratingWithState:&v56 objects:v63 count:16];
      }

      while (v20);
    }

    v26 = [(PHSearchQueryQUToken *)self metadata];
    v27 = [v26 mutableCopy];

    v11 = v46;
    [v27 setObject:v17 forKeyedSubscript:v46];
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
    v41 = self;
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
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
          v33 = [MEMORY[0x1E695DEE8] currentCalendar];
          v34 = [v33 dateFromComponents:v32];
          v35 = objc_alloc_init(MEMORY[0x1E696AB78]);
          [v35 setDateFormat:@"yyyy-MM-dd HH:mm"];
          v36 = [v35 stringFromDate:v34];
          [v17 addObject:v36];
        }

        v29 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
      }

      while (v29);
    }

    v37 = [(PHSearchQueryQUToken *)v41 metadata];
    v38 = [v37 mutableCopy];

    v14 = v44;
    [v38 setObject:v17 forKeyedSubscript:v44];
    v6 = v49;
    [v49 setObject:v38 forKeyedSubscript:@"metadata"];

    v11 = v47;
    goto LABEL_23;
  }

  v17 = [(PHSearchQueryQUToken *)self metadata];
  [v6 setObject:v17 forKeyedSubscript:@"metadata"];
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
  v4 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __35__PHSearchQueryQUToken_description__block_invoke;
  v14[3] = &unk_1E75A9568;
  v15 = v3;
  v5 = v3;
  [v4 enumerateIndexesUsingBlock:v14];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [(PHSearchQueryQUToken *)self text];
  v8 = [(PHSearchQueryQUToken *)self metadata];
  v9 = [(PHSearchQueryQUToken *)self ambiguityType];
  v10 = @"PHSearchAmbiguityTypeNone";
  if (v9 == 1)
  {
    v10 = @"PHSearchAmbiguityTypePartiallyAmbiguous";
  }

  if (v9 == 2)
  {
    v10 = @"PHSearchAmbiguityTypeFullyAmbiguous";
  }

  v11 = v10;
  v12 = [v6 stringWithFormat:@"text: %@, metadata: %@, entityCategories: %@, ambiguity: %@", v7, v8, v5, v11];

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

- (void)encodeWithCoder:(id)a3
{
  text = self->_text;
  v5 = a3;
  [v5 encodeObject:text forKey:@"PHSearchQueryDisambiguationPropertyText"];
  [v5 encodeObject:self->_entityCategoryTypes forKey:@"PHSearchQueryDisambiguationPropertyEntityCategoryTypes"];
  [v5 encodeObject:self->_metadata forKey:@"PHSearchQueryDisambiguationPropertyMetadata"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_version];
  [v5 encodeObject:v6 forKey:@"PHSearchQueryDisambiguationPropertyVersion"];
}

- (PHSearchQueryQUToken)initWithCoder:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchQueryDisambiguationPropertyVersion"];
  v6 = [v5 unsignedIntegerValue];

  if (v6)
  {
    v7 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v20 = v6;
      v21 = 1024;
      v22 = 0;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Version of encoded PHSearchQueryToken: %tu does not match the current search query token SPI version: %d, cannot instantiate token", buf, 0x12u);
    }

    v8 = 0;
  }

  else
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchQueryDisambiguationPropertyText"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchQueryDisambiguationPropertyEntityCategoryTypes"];
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v11 setWithObjects:{v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"PHSearchQueryDisambiguationPropertyMetadata"];
    self = [(PHSearchQueryQUToken *)self initWithText:v9 entityCategoryTypes:v10 metadata:v17];

    v8 = self;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(PHSearchQueryQUToken *)self text];
  v4 = [v3 hash];
  v5 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
  v6 = [v5 hash] ^ v4;
  v7 = [(PHSearchQueryQUToken *)self metadata];
  v8 = [v7 hash];
  v9 = v8 ^ [(PHSearchQueryQUToken *)self version];

  return v6 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PHSearchQueryQUToken *)self text];
      v7 = [(PHSearchQueryQUToken *)v5 text];
      v8 = [v6 isEqualToString:v7];

      if (v8)
      {
        v9 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
        if (v9 && ([(PHSearchQueryQUToken *)v5 entityCategoryTypes], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v11 = v10;
          v12 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
          v13 = [(PHSearchQueryQUToken *)v5 entityCategoryTypes];
          v14 = [v12 isEqualToIndexSet:v13];

          if ((v14 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v16 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
          v17 = [(PHSearchQueryQUToken *)v5 entityCategoryTypes];

          if (v9)
          {
          }

          if (v16 != v17)
          {
            goto LABEL_20;
          }
        }

        v18 = [(PHSearchQueryQUToken *)self metadata];
        if (!v18 || ([(PHSearchQueryQUToken *)v5 metadata], (v19 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v25 = [(PHSearchQueryQUToken *)self metadata];
          v26 = [(PHSearchQueryQUToken *)v5 metadata];

          if (v18)
          {
          }

          if (v25 != v26)
          {
            goto LABEL_20;
          }

LABEL_16:
          v24 = [(PHSearchQueryQUToken *)self version];
          v15 = v24 == [(PHSearchQueryQUToken *)v5 version];
LABEL_21:

          goto LABEL_22;
        }

        v20 = v19;
        v21 = [(PHSearchQueryQUToken *)self metadata];
        v22 = [(PHSearchQueryQUToken *)v5 metadata];
        v23 = [v21 isEqualToDictionary:v22];

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
  v2 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
  if ([v2 containsIndex:6] & 1) != 0 || (objc_msgSend(v2, "containsIndex:", 7) & 1) != 0 || (objc_msgSend(v2, "containsIndex:", 8) & 1) != 0 || (objc_msgSend(v2, "containsIndex:", 12) & 1) != 0 || (objc_msgSend(v2, "containsIndex:", 13) & 1) != 0 || (objc_msgSend(v2, "containsIndex:", 9) & 1) != 0 || (objc_msgSend(v2, "containsIndex:", 11) & 1) != 0 || (objc_msgSend(v2, "containsIndex:", 10) & 1) != 0 || (objc_msgSend(v2, "containsIndex:", 14) & 1) != 0 || (objc_msgSend(v2, "containsIndex:", 15) & 1) != 0 || (objc_msgSend(v2, "containsIndex:", 16) & 1) != 0 || (objc_msgSend(v2, "containsIndex:", 18) & 1) != 0 || (objc_msgSend(v2, "containsIndex:", 19) & 1) != 0 || (objc_msgSend(v2, "containsIndex:", 17))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 containsIndex:20];
  }

  return v3;
}

- (id)metadataForCategoryType:(unint64_t)a3
{
  v4 = [objc_opt_class() entityCategoryTypeKeyForEntityTypeCategory:a3];
  v5 = [(PHSearchQueryQUToken *)self metadata];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (unint64_t)ambiguityType
{
  if (!-[PHSearchQueryQUToken hasMemoryGenAnnotation](self, "hasMemoryGenAnnotation") || (-[PHSearchQueryQUToken entityCategoryTypes](self, "entityCategoryTypes"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4 != 1))
  {
    v6 = [(PHSearchQueryQUToken *)self metadata];
    if ([v6 count])
    {
      v7 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
      v8 = [v7 count];

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
        v9 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
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
        [v9 enumerateIndexesUsingBlock:v33];

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

        v10 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
        v11 = [v10 count];

        if (v11 >= 2)
        {
          if (![(PHSearchQueryQUToken *)self hasMemoryGenAnnotation])
          {
            goto LABEL_34;
          }

          v12 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
          if (([v12 containsIndex:4] & 1) == 0)
          {

            goto LABEL_24;
          }

          v13 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
          v14 = [v13 containsIndex:14];

          if (!v14)
          {
            goto LABEL_24;
          }

          v15 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
          v16 = [v15 count];

          if (v16 != 2)
          {
            v17 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
            v18 = [v17 count];

            if (v18 > 2)
            {
              goto LABEL_34;
            }

LABEL_24:
            if (!v51[3])
            {
              v24 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
              if ([v24 containsIndex:3])
              {
                v25 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
                v26 = [v25 containsIndex:15];

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

        v19 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
        v20 = [v19 containsIndex:3];

        if (v20)
        {
          v21 = v51;
        }

        else
        {
          v22 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
          v23 = [v22 containsIndex:4];

          if (v23)
          {
LABEL_22:
            v21 = v47;
            goto LABEL_32;
          }

          v27 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
          if ([v27 containsIndex:1])
          {
          }

          else
          {
            v28 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
            v29 = [v28 containsIndex:2];

            if (!v29)
            {
              v31 = [(PHSearchQueryQUToken *)self entityCategoryTypes];
              v32 = [v31 containsIndex:5];

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

- (PHSearchQueryQUToken)initWithText:(id)a3 entityCategoryTypes:(id)a4 metadata:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PHSearchQueryQUToken.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"text"}];
  }

  if ([v11 containsIndex:1] && objc_msgSend(v11, "containsIndex:", 2))
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PHSearchQueryQUToken.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"!containsMultipleDateTypes"}];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __66__PHSearchQueryQUToken_initWithText_entityCategoryTypes_metadata___block_invoke;
  v20[3] = &unk_1E75A4730;
  v22 = a2;
  v13 = self;
  v21 = v13;
  [v11 enumerateIndexesUsingBlock:v20];
  v19.receiver = v13;
  v19.super_class = PHSearchQueryQUToken;
  v14 = [(PHSearchQueryQUToken *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_text, a3);
    objc_storeStrong(&v15->_entityCategoryTypes, a4);
    objc_storeStrong(&v15->_metadata, a5);
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

+ (id)entityCategoryTypeKeyForEntityTypeCategory:(unint64_t)a3
{
  if ([a1 _isSupportedEntityCategoryType:?])
  {
    v4 = MEMORY[0x1E696AEC0];
    if (a3 - 1 > 0x13)
    {
      v5 = @"PHSearchEntityCategoryTypeUndefined";
    }

    else
    {
      v5 = off_1E75A3850[a3 - 1];
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