@interface ATXSlotResolutionParameters
- (ATXSlotResolutionParameters)initWithAction:(id)a3 slots:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation ATXSlotResolutionParameters

- (ATXSlotResolutionParameters)initWithAction:(id)a3 slots:(id)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v56.receiver = self;
  v56.super_class = ATXSlotResolutionParameters;
  v9 = [(ATXSlotResolutionParameters *)&v56 init];
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    objc_storeStrong(&v9->_action, a3);
    objc_storeStrong(&v9->_slots, a4);
    if ([v7 actionType] == 1 || objc_msgSend(v7, "actionType") == 6 || objc_msgSend(v7, "actionType") == 7)
    {
      v9->_hash = [v7 hash];
    }

    else
    {
      v12 = [v8 parameters];

      if (v12)
      {
        v41 = v10;
        v44 = v7;
        v13 = [v8 hash];
        v42 = v9;
        v14 = [(ATXAction *)v9->_action intent];
        v15 = [v14 atx_nonNilParametersByName];

        v16 = [v8 parameters];
        v17 = [v16 allObjects];
        v18 = [v17 sortedArrayUsingSelector:sel_compare_];

        v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
        v43 = v8;
        v20 = [v8 parameters];
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        obj = v18;
        v21 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v53;
          v45 = v19;
          v46 = v15;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v53 != v23)
              {
                objc_enumerationMutation(obj);
              }

              v25 = *(*(&v52 + 1) + 8 * i);
              if (!v20 || [v20 containsObject:*(*(&v52 + 1) + 8 * i)])
              {
                v26 = [v25 hash];
                v27 = [v15 objectForKeyedSubscript:v25];
                v28 = v27;
                if (v27)
                {
                  v29 = v27;
                }

                else
                {
                  v29 = [MEMORY[0x1E695DFB0] null];
                }

                v30 = v29;
                v13 = v26 - v13 + 32 * v13;

                [(NSArray *)v19 addObject:v30];
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v31 = [v30 atx_locationHashWithLevel:17];
                    v13 = 31 * (31 * v13 + HIDWORD(v31)) + v31;
                  }

                  else
                  {
                    v32 = [v30 location];
                    v33 = [v32 atx_locationHashWithLevel:17];
                    v13 = 31 * (31 * v13 + HIDWORD(v33)) + v33;
                  }
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v50 = 0u;
                    v51 = 0u;
                    v48 = 0u;
                    v49 = 0u;
                    v34 = v30;
                    v35 = [v34 countByEnumeratingWithState:&v48 objects:v57 count:16];
                    if (v35)
                    {
                      v36 = v35;
                      v37 = *v49;
                      do
                      {
                        for (j = 0; j != v36; ++j)
                        {
                          if (*v49 != v37)
                          {
                            objc_enumerationMutation(v34);
                          }

                          v13 = [*(*(&v48 + 1) + 8 * j) hash] - v13 + 32 * v13;
                        }

                        v36 = [v34 countByEnumeratingWithState:&v48 objects:v57 count:16];
                      }

                      while (v36);
                    }

                    v19 = v45;
                    v15 = v46;
                  }

                  else
                  {
                    v13 = [v30 hash] - v13 + 32 * v13;
                  }
                }
              }
            }

            v22 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
          }

          while (v22);
        }

        v9 = v42;
        values = v42->_values;
        v42->_values = v19;
        v42->_hash = v13;

        v8 = v43;
        v7 = v44;
        v10 = v41;
      }

      else
      {
        v40 = [v7 intent];
        v9->_hash = [v40 atx_backingStoreDataHash];
      }
    }

    objc_autoreleasePoolPop(v10);
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
    goto LABEL_38;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_38;
  }

  v5 = v4;
  if (self->_hash != v5->_hash)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_37;
  }

  v6 = [(ATXSlotSet *)self->_slots parameters];

  if (!v6)
  {
    v11 = self->_action;
    v12 = v11;
    if (v11 == v5->_action)
    {
      v10 = 1;
    }

    else
    {
      v10 = [(ATXAction *)v11 isEqual:?];
    }

    goto LABEL_36;
  }

  v7 = self->_slots;
  v8 = v7;
  if (v7 == v5->_slots)
  {
  }

  else
  {
    v9 = [(ATXSlotSet *)v7 isEqual:?];

    if (!v9)
    {
      goto LABEL_7;
    }
  }

  values = v5->_values;
  v12 = self->_values;
  v14 = values;
  if (v12 == v14)
  {
    goto LABEL_31;
  }

  v15 = [(NSArray *)v12 count];
  if (v15 != [(NSArray *)v14 count])
  {
    goto LABEL_34;
  }

  v16 = [(NSArray *)v12 count];
  if (!v16)
  {
LABEL_31:
    v10 = 1;
    goto LABEL_35;
  }

  v17 = v16;
  v18 = 0;
  v31 = v16;
  while (1)
  {
    v19 = [(NSArray *)v12 objectAtIndexedSubscript:v18];
    v20 = [(NSArray *)v14 objectAtIndexedSubscript:v18];
    v21 = v19;
    v22 = v20;
    v23 = v22;
    if (v21 != v22)
    {
      break;
    }

LABEL_30:
    if (v17 == ++v18)
    {
      goto LABEL_31;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_33;
    }

    [v21 distanceFromLocation:v23];
    v25 = v24 < 100.0;
    goto LABEL_29;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v25 = [v21 isEqual:v23];
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [v21 location];
    v27 = [v23 location];
    v28 = v27;
    v25 = 0;
    if (v26 && v27)
    {
      [v26 distanceFromLocation:v27];
      v25 = v29 < 100.0;
    }

    v17 = v31;
LABEL_29:

    if ((v25 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

LABEL_33:

LABEL_34:
  v10 = 0;
LABEL_35:

LABEL_36:
LABEL_37:

LABEL_38:
  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ATXSlotSet *)self->_slots parameters];
  v7 = [v6 allObjects];
  v8 = [v7 sortedArrayUsingSelector:sel_compare_];
  v9 = [v8 componentsJoinedByString:@" "];
  v10 = [v3 stringWithFormat:@"<%@ %@>", v5, v9];

  return v10;
}

@end