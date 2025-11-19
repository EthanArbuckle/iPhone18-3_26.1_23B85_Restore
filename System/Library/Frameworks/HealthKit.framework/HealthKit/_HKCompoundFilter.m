@interface _HKCompoundFilter
+ (id)andFilterWithSubfilters:(id)a3;
+ (id)compoundFilterWithFilter:(id)a3 otherFilter:(id)a4;
+ (id)notFilterWithSubfilter:(id)a3;
+ (id)orFilterWithSubfilters:(id)a3;
- (BOOL)acceptsDataObject:(id)a3;
- (BOOL)acceptsWorkoutActivity:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_HKCompoundFilter)init;
- (_HKCompoundFilter)initWithCoder:(id)a3;
- (_HKCompoundFilter)initWithType:(unint64_t)a3 subfilters:(id)a4;
- (id)description;
- (int64_t)acceptsActivitySummary:(id)a3;
- (int64_t)acceptsDataObjectWithStartTimestamp:(double)a3 endTimestamp:(double)a4 valueInCanonicalUnit:(double)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKCompoundFilter

- (_HKCompoundFilter)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (_HKCompoundFilter)initWithType:(unint64_t)a3 subfilters:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (a3 >= 3)
  {
    [(_HKCompoundFilter *)a2 initWithType:&v14 subfilters:?];
LABEL_9:

    goto LABEL_4;
  }

  if (!a3 && [v7 count] >= 2)
  {
    [(_HKCompoundFilter *)a2 initWithType:&v14 subfilters:?];
    goto LABEL_9;
  }

LABEL_4:
  v13.receiver = self;
  v13.super_class = _HKCompoundFilter;
  v9 = [(_HKCompoundFilter *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    subfilters = v9->_subfilters;
    v9->_subfilters = v10;

    v9->_subfilterCount = [(NSArray *)v9->_subfilters count];
    v9->_compoundPredicateType = a3;
  }

  return v9;
}

+ (id)compoundFilterWithFilter:(id)a3 otherFilter:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [_HKCompoundFilter alloc];
    v14[0] = v5;
    v14[1] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v10 = [(_HKCompoundFilter *)v8 initWithType:1 subfilters:v9];
  }

  else
  {
    if (v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = v6;
    }

    v10 = v11;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)andFilterWithSubfilters:(id)a3
{
  v3 = a3;
  v4 = [[_HKCompoundFilter alloc] initWithType:1 subfilters:v3];

  return v4;
}

+ (id)orFilterWithSubfilters:(id)a3
{
  v3 = a3;
  v4 = [[_HKCompoundFilter alloc] initWithType:2 subfilters:v3];

  return v4;
}

+ (id)notFilterWithSubfilter:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [_HKCompoundFilter alloc];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v6 = [(_HKCompoundFilter *)v4 initWithType:0 subfilters:v5];
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = HKStringFromCompoundOperatorType(self->_compoundPredicateType);
  v6 = [(NSArray *)self->_subfilters componentsJoinedByString:@", "];
  v7 = [v3 stringWithFormat:@"<%@: %@ [%@]>", v4, v5, v6];

  return v7;
}

- (BOOL)acceptsDataObject:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_subfilterCount)
  {
    compoundPredicateType = self->_compoundPredicateType;
    switch(compoundPredicateType)
    {
      case 0uLL:
        v6 = [(NSArray *)self->_subfilters firstObject];
        v11 = [(NSArray *)v6 acceptsDataObject:v4]^ 1;
LABEL_29:

        goto LABEL_30;
      case 2uLL:
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v12 = self->_subfilters;
        v13 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v21;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v21 != v15)
              {
                objc_enumerationMutation(v12);
              }

              if ([*(*(&v20 + 1) + 8 * i) acceptsDataObject:{v4, v20}])
              {

                goto LABEL_27;
              }
            }

            v14 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        break;
      case 1uLL:
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v6 = self->_subfilters;
        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v25;
          while (2)
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v25 != v9)
              {
                objc_enumerationMutation(v6);
              }

              if (![*(*(&v24 + 1) + 8 * j) acceptsDataObject:v4])
              {
                LOBYTE(v11) = 0;
                goto LABEL_29;
              }
            }

            v8 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }

        LOBYTE(v11) = 1;
        goto LABEL_29;
      default:
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_HKCompoundFilter acceptsDataObject:]"];
        [(NSArray *)v12 handleFailureInFunction:v17 file:@"_HKCompoundFilter.m" lineNumber:114 description:@"Unreachable code has been executed"];

        break;
    }

    LOBYTE(v11) = 0;
  }

  else
  {
LABEL_27:
    LOBYTE(v11) = 1;
  }

LABEL_30:

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

- (int64_t)acceptsActivitySummary:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_subfilterCount)
  {
LABEL_31:
    v21 = 1;
    goto LABEL_36;
  }

  compoundPredicateType = self->_compoundPredicateType;
  if (compoundPredicateType)
  {
    if (compoundPredicateType == 2)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = self->_subfilters;
      v13 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v29;
        LOBYTE(v16) = 1;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v29 != v15)
            {
              objc_enumerationMutation(v6);
            }

            v18 = [*(*(&v28 + 1) + 8 * i) acceptsActivitySummary:{v4, v28}];
            if (v18 == 1)
            {

              goto LABEL_31;
            }

            v16 = (v18 == 2) & v16;
          }

          v14 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }

        if (!v16)
        {
          goto LABEL_35;
        }

        goto LABEL_29;
      }

LABEL_28:

LABEL_29:
      v21 = 2;
      goto LABEL_36;
    }

    if (compoundPredicateType == 1)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v6 = self->_subfilters;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v33;
        LOBYTE(v10) = 1;
LABEL_7:
        v11 = 0;
        while (1)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [*(*(&v32 + 1) + 8 * v11) acceptsActivitySummary:v4];
          if (!v12)
          {
            goto LABEL_34;
          }

          v10 = (v12 == 2) & v10;
          if (v8 == ++v11)
          {
            v8 = [(NSArray *)v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
            if (v8)
            {
              goto LABEL_7;
            }

            if (v10)
            {
              goto LABEL_29;
            }

            goto LABEL_31;
          }
        }
      }

      goto LABEL_28;
    }

    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_HKCompoundFilter acceptsActivitySummary:]"];
    v23 = v6;
    v24 = v22;
    v25 = 162;
LABEL_33:
    [(NSArray *)v23 handleFailureInFunction:v24 file:@"_HKCompoundFilter.m" lineNumber:v25 description:@"Unreachable code has been executed"];

LABEL_34:
LABEL_35:
    v21 = 0;
    goto LABEL_36;
  }

  v19 = [(NSArray *)self->_subfilters firstObject];
  v20 = [v19 acceptsActivitySummary:v4];

  if (v20 >= 3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_HKCompoundFilter acceptsActivitySummary:]"];
    v23 = v6;
    v24 = v22;
    v25 = 159;
    goto LABEL_33;
  }

  v21 = qword_191DCE678[v20];
LABEL_36:

  v26 = *MEMORY[0x1E69E9840];
  return v21;
}

- (int64_t)acceptsDataObjectWithStartTimestamp:(double)a3 endTimestamp:(double)a4 valueInCanonicalUnit:(double)a5
{
  v40 = *MEMORY[0x1E69E9840];
  if (!self->_subfilterCount)
  {
LABEL_31:
    result = 1;
    goto LABEL_36;
  }

  compoundPredicateType = self->_compoundPredicateType;
  if (compoundPredicateType)
  {
    if (compoundPredicateType == 2)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v9 = self->_subfilters;
      v16 = [(NSArray *)v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v31;
        LOBYTE(v19) = 1;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v31 != v18)
            {
              objc_enumerationMutation(v9);
            }

            v21 = [*(*(&v30 + 1) + 8 * i) acceptsDataObjectWithStartTimestamp:a3 endTimestamp:a4 valueInCanonicalUnit:{a5, v30}];
            if (v21 == 1)
            {

              goto LABEL_31;
            }

            v19 = (v21 == 2) & v19;
          }

          v17 = [(NSArray *)v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }

        if (!v19)
        {
          goto LABEL_35;
        }

        goto LABEL_29;
      }

LABEL_28:

LABEL_29:
      result = 2;
      goto LABEL_36;
    }

    if (compoundPredicateType == 1)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v9 = self->_subfilters;
      v10 = [(NSArray *)v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v35;
        LOBYTE(v13) = 1;
LABEL_7:
        v14 = 0;
        while (1)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = [*(*(&v34 + 1) + 8 * v14) acceptsDataObjectWithStartTimestamp:a3 endTimestamp:a4 valueInCanonicalUnit:a5];
          if (!v15)
          {
            goto LABEL_34;
          }

          v13 = (v15 == 2) & v13;
          if (v11 == ++v14)
          {
            v11 = [(NSArray *)v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
            if (v11)
            {
              goto LABEL_7;
            }

            if (v13)
            {
              goto LABEL_29;
            }

            goto LABEL_31;
          }
        }
      }

      goto LABEL_28;
    }

    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_HKCompoundFilter acceptsDataObjectWithStartTimestamp:endTimestamp:valueInCanonicalUnit:]"];
    v26 = v9;
    v27 = v25;
    v28 = 210;
LABEL_33:
    [(NSArray *)v26 handleFailureInFunction:v27 file:@"_HKCompoundFilter.m" lineNumber:v28 description:@"Unreachable code has been executed"];

LABEL_34:
LABEL_35:
    result = 0;
    goto LABEL_36;
  }

  v22 = [(NSArray *)self->_subfilters firstObject];
  v23 = [v22 acceptsDataObjectWithStartTimestamp:a3 endTimestamp:a4 valueInCanonicalUnit:a5];

  if (v23 >= 3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_HKCompoundFilter acceptsDataObjectWithStartTimestamp:endTimestamp:valueInCanonicalUnit:]"];
    v26 = v9;
    v27 = v25;
    v28 = 207;
    goto LABEL_33;
  }

  result = qword_191DCE678[v23];
LABEL_36:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)acceptsWorkoutActivity:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_subfilterCount)
  {
    compoundPredicateType = self->_compoundPredicateType;
    switch(compoundPredicateType)
    {
      case 0uLL:
        v6 = [(NSArray *)self->_subfilters firstObject];
        v11 = [(NSArray *)v6 acceptsWorkoutActivity:v4]^ 1;
LABEL_29:

        goto LABEL_30;
      case 2uLL:
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v12 = self->_subfilters;
        v13 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v21;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v21 != v15)
              {
                objc_enumerationMutation(v12);
              }

              if ([*(*(&v20 + 1) + 8 * i) acceptsWorkoutActivity:{v4, v20}])
              {

                goto LABEL_27;
              }
            }

            v14 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        break;
      case 1uLL:
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v6 = self->_subfilters;
        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v25;
          while (2)
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v25 != v9)
              {
                objc_enumerationMutation(v6);
              }

              if (![*(*(&v24 + 1) + 8 * j) acceptsWorkoutActivity:v4])
              {
                LOBYTE(v11) = 0;
                goto LABEL_29;
              }
            }

            v8 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }

        LOBYTE(v11) = 1;
        goto LABEL_29;
      default:
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_HKCompoundFilter acceptsWorkoutActivity:]"];
        [(NSArray *)v12 handleFailureInFunction:v17 file:@"_HKCompoundFilter.m" lineNumber:243 description:@"Unreachable code has been executed"];

        break;
    }

    LOBYTE(v11) = 0;
  }

  else
  {
LABEL_27:
    LOBYTE(v11) = 1;
  }

LABEL_30:

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    v6 = (objc_opt_isKindOfClass() & 1) != 0 && self->_compoundPredicateType == v4->_compoundPredicateType && (v5 = [(NSArray *)self->_subfilters count], v5 == [(NSArray *)v4->_subfilters count]) && [(NSArray *)self->_subfilters isEqualToArray:v4->_subfilters];
  }

  return v6;
}

- (_HKCompoundFilter)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [v4 hk_typesForArrayOf:objc_opt_class()];
  v7 = [v5 decodeObjectOfClasses:v6 forKey:@"subfilters"];

  v8 = [v5 decodeIntegerForKey:@"compoundType"];
  v9 = [(_HKCompoundFilter *)self initWithType:v8 subfilters:v7];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKCompoundFilter;
  v4 = a3;
  [(_HKFilter *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_subfilters forKey:{@"subfilters", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_compoundPredicateType forKey:@"compoundType"];
}

- (uint64_t)initWithType:(void *)a3 subfilters:.cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"_HKCompoundFilter.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"_IsValidCompoundType(type)"}];
}

- (uint64_t)initWithType:(void *)a3 subfilters:.cold.2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"_HKCompoundFilter.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"type != NSNotPredicateType || subfilters.count <= 1"}];
}

@end