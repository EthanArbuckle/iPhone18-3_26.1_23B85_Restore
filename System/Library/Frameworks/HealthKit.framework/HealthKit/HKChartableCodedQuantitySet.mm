@interface HKChartableCodedQuantitySet
+ (id)setWithChartableQuantity:(id)a3 date:(id)a4;
+ (id)setWithMedicalCodings:(id)a3 quantities:(id)a4 date:(id)a5 error:(id *)a6;
- (BOOL)isCompatibleWithUnit:(id)a3;
- (HKChartableCodedQuantitySet)init;
- (HKUnit)compatibleUnit;
- (double)maxValueForUnit:(id)a3;
- (double)maxValueIncludingReferenceRangeForUnit:(id)a3;
- (double)minValueForUnit:(id)a3;
- (double)minValueIncludingReferenceRangeForUnit:(id)a3;
- (id)_initWithMedicalCodings:(id)a3 date:(id)a4 quantities:(id)a5;
- (id)chartableCodedQuantitySetByChangingDate:(id)a3;
- (id)chartableCodedQuantitySetConvertedToUnit:(id)a3 error:(id *)a4;
- (id)description;
- (void)addChartableCodedQuantities:(id)a3;
@end

@implementation HKChartableCodedQuantitySet

- (HKChartableCodedQuantitySet)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)_initWithMedicalCodings:(id)a3 date:(id)a4 quantities:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HKChartableCodedQuantitySet;
  v11 = [(HKChartableCodedQuantitySet *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    codings = v11->_codings;
    v11->_codings = v12;

    v14 = [v9 copy];
    date = v11->_date;
    v11->_date = v14;

    v16 = [v10 copy];
    quantities = v11->_quantities;
    v11->_quantities = v16;
  }

  return v11;
}

+ (id)setWithMedicalCodings:(id)a3 quantities:(id)a4 date:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v11 count])
  {
    v13 = [v11 firstObject];
    v14 = [v13 quantity];
    v15 = [v14 _unit];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __75__HKChartableCodedQuantitySet_setWithMedicalCodings_quantities_date_error___block_invoke;
    v20[3] = &unk_1E7380ED0;
    v16 = v15;
    v21 = v16;
    v17 = [v11 hk_filter:v20];
    if ([v17 count])
    {
      [MEMORY[0x1E696ABC0] hk_assignError:a6 code:3 format:{@"Some quantities are incompatible with unit %@: %@", v16, v17}];
      v18 = 0;
    }

    else
    {
      v18 = [[a1 alloc] _initWithMedicalCodings:v10 date:v12 quantities:v11];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)setWithChartableQuantity:(id)a3 date:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [HKChartableCodedQuantitySet setWithChartableQuantity:a2 date:a1];
  }

  v9 = [a1 alloc];
  v10 = [v7 codings];
  v15[0] = v7;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v12 = [v9 _initWithMedicalCodings:v10 date:v8 quantities:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)chartableCodedQuantitySetByChangingDate:(id)a3
{
  v4 = a3;
  v5 = [[HKChartableCodedQuantitySet alloc] _initWithMedicalCodings:self->_codings date:v4 quantities:self->_quantities];

  return v5;
}

- (void)addChartableCodedQuantities:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21 = self;
  v5 = [(HKChartableCodedQuantitySet *)self compatibleUnit];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        v22 = 0;
        v13 = [v12 chartableCodedQuantityInUnit:v5 error:&v22];
        v14 = v22;
        if (v13)
        {
          [v6 addObject:v13];
        }

        else
        {
          _HKInitializeLogging();
          v15 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            v16 = v15;
            v17 = HKSensitiveLogItem(v12);
            *buf = 138543618;
            v28 = v17;
            v29 = 2114;
            v30 = v14;
            _os_log_error_impl(&dword_19197B000, v16, OS_LOG_TYPE_ERROR, "Unable to add chartable coded quantity %{public}@ to set: %{public}@", buf, 0x16u);
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v9);
  }

  v18 = [(NSArray *)v21->_quantities arrayByAddingObjectsFromArray:v6];
  quantities = v21->_quantities;
  v21->_quantities = v18;

  v20 = *MEMORY[0x1E69E9840];
}

- (id)chartableCodedQuantitySetConvertedToUnit:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_quantities, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_quantities;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * i) chartableCodedQuantityInUnit:v6 error:{a4, v18}];
        if (!v13)
        {

          v15 = 0;
          goto LABEL_11;
        }

        v14 = v13;
        [v7 addObject:v13];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = [objc_alloc(objc_opt_class()) _initWithMedicalCodings:self->_codings date:self->_date quantities:v7];
LABEL_11:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (HKUnit)compatibleUnit
{
  v2 = [(NSArray *)self->_quantities firstObject];
  v3 = [v2 quantity];
  v4 = [v3 _unit];

  return v4;
}

- (BOOL)isCompatibleWithUnit:(id)a3
{
  quantities = self->_quantities;
  v4 = a3;
  v5 = [(NSArray *)quantities firstObject];
  v6 = [v5 quantity];
  v7 = [v6 isCompatibleWithUnit:v4];

  return v7;
}

- (double)minValueForUnit:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_quantities;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 1.79769313e308;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v12 + 1) + 8 * i) doubleValue];
        if (v7 >= v9)
        {
          v7 = v9;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1.79769313e308;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (double)maxValueForUnit:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_quantities;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = -1.79769313e308;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v12 + 1) + 8 * i) doubleValue];
        if (v7 < v9)
        {
          v7 = v9;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = -1.79769313e308;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (double)minValueIncludingReferenceRangeForUnit:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->_quantities;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    v7 = 1.79769313e308;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 rangeLow];
        [v9 doubleValue];
        v12 = v11;
        if (v10)
        {
          v13 = [v9 rangeLow];
          [v13 doubleValue];
          v15 = v14;

          if (v12 >= v15)
          {
            v12 = v15;
          }
        }

        if (v7 >= v12)
        {
          v7 = v12;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1.79769313e308;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

- (double)maxValueIncludingReferenceRangeForUnit:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->_quantities;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    v7 = -1.79769313e308;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 rangeHigh];
        [v9 doubleValue];
        v12 = v11;
        if (v10)
        {
          v13 = [v9 rangeHigh];
          [v13 doubleValue];
          v15 = v14;

          if (v12 < v15)
          {
            v12 = v15;
          }
        }

        if (v7 < v12)
        {
          v7 = v12;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = -1.79769313e308;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSArray *)self->_codings componentsJoinedByString:@" "];;
  date = self->_date;
  v8 = [(NSArray *)self->_quantities count];
  v9 = [(HKChartableCodedQuantitySet *)self compatibleUnit];
  v10 = [v3 stringWithFormat:@"<%@ %p> codings: %@, date: %@, %lu quantities in unit %@", v5, self, v6, date, v8, v9];

  return v10;
}

+ (void)setWithChartableQuantity:(uint64_t)a1 date:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKChartableCodedQuantitySet.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"quantity"}];
}

@end