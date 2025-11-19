@interface ABSMultiValue
+ (void)initialize;
- (ABSMultiValue)initWithPropertyType:(unsigned int)a3 mutable:(BOOL)a4 values:(id)a5;
- (BOOL)addValue:(id)a3 label:(id)a4 outIdentifier:(int *)a5;
- (BOOL)insertValue:(id)a3 label:(id)a4 atIndex:(int64_t)a5 outIdentifier:(int *)a6;
- (BOOL)removeValueAtIndex:(int64_t)a3;
- (BOOL)replaceLabel:(id)a3 atIndex:(int64_t)a4;
- (BOOL)replaceValue:(id)a3 atIndex:(int64_t)a4;
- (id)allValues;
- (id)copyValueAtIndex:(int64_t)a3;
- (id)labelAtIndex:(int64_t)a3;
- (id)mutableCopy;
- (int)identifierAtIndex:(int64_t)a3;
- (int)nextLegacyIdentifier;
- (unint64_t)indexForIdentifier:(int)a3;
- (unint64_t)indexOfValue:(id)a3;
@end

@implementation ABSMultiValue

+ (void)initialize
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___ABSMultiValue;
  objc_msgSendSuper2(&v2, sel_initialize);
  +[ABSAddressBook ABInitialize];
}

- (ABSMultiValue)initWithPropertyType:(unsigned int)a3 mutable:(BOOL)a4 values:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = ABSMultiValue;
  v9 = [(ABSMultiValue *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_propertyType = a3 & 0xFFFFFEFF;
    v9->_mutable = a4;
    if (v8)
    {
      v11 = [v8 mutableCopy];
    }

    else
    {
      v11 = [MEMORY[0x277CBEB18] array];
    }

    values = v10->_values;
    v10->_values = v11;
  }

  return v10;
}

- (id)mutableCopy
{
  v3 = [ABSMultiValue alloc];
  v4 = [(ABSMultiValue *)self propertyType];
  v5 = [(ABSMultiValue *)self values];
  v6 = [(ABSMultiValue *)v3 initWithPropertyType:v4 mutable:1 values:v5];

  return v6;
}

- (id)copyValueAtIndex:(int64_t)a3
{
  if (a3 < 0 || (-[ABSMultiValue values](self, "values"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 <= a3))
  {
    v10 = 0;
  }

  else
  {
    v7 = [(ABSMultiValue *)self values];
    v8 = [v7 objectAtIndexedSubscript:a3];

    v9 = [v8 value];
    v10 = sABSValueToABValueTransform_block_invoke(v9, v9);
  }

  if ([(ABSMultiValue *)self mutable]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [v10 mutableCopy];
  }

  else
  {
    v11 = [v10 copy];
  }

  v12 = v11;

  return v12;
}

- (id)allValues
{
  v2 = [(ABSMultiValue *)self values];
  v3 = [v2 _cn_map:&__block_literal_global_14];

  return v3;
}

id __26__ABSMultiValue_allValues__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = sABSValueToABValueTransform_block_invoke(v2, v2);

  return v3;
}

- (id)labelAtIndex:(int64_t)a3
{
  if (a3 < 0 || (-[ABSMultiValue values](self, "values"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 <= a3))
  {
    v9 = 0;
  }

  else
  {
    v7 = [(ABSMultiValue *)self values];
    v8 = [v7 objectAtIndexedSubscript:a3];

    v9 = [v8 label];
  }

  return v9;
}

- (unint64_t)indexForIdentifier:(int)a3
{
  v4 = [(ABSMultiValue *)self values];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__ABSMultiValue_indexForIdentifier___block_invoke;
  v7[3] = &__block_descriptor_36_e31_B32__0__CNLabeledValue_8Q16_B24l;
  v8 = a3;
  v5 = [v4 indexOfObjectPassingTest:v7];

  return v5;
}

- (unint64_t)indexOfValue:(id)a3
{
  v4 = sABValueToABSValueTransform_block_invoke_2(self, a3);
  v5 = [(ABSMultiValue *)self values];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __30__ABSMultiValue_indexOfValue___block_invoke;
  v9[3] = &unk_278A047B0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 indexOfObjectPassingTest:v9];

  return v7;
}

uint64_t __30__ABSMultiValue_indexOfValue___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 value];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (int)identifierAtIndex:(int64_t)a3
{
  if (a3 < 0)
  {
    return -1;
  }

  v5 = [(ABSMultiValue *)self values];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    return -1;
  }

  v7 = [(ABSMultiValue *)self values];
  v8 = [v7 objectAtIndexedSubscript:a3];

  LODWORD(v7) = [v8 iOSLegacyIdentifier];
  return v7;
}

- (int)nextLegacyIdentifier
{
  v3 = [(ABSMultiValue *)self values];
  v4 = [v3 count];

  if (!v4)
  {
    return 0;
  }

  v5 = [(ABSMultiValue *)self values];
  v6 = [v5 valueForKeyPath:@"@max.iOSLegacyIdentifier"];
  v7 = [v6 intValue] + 1;

  return v7;
}

- (BOOL)addValue:(id)a3 label:(id)a4 outIdentifier:(int *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(ABSMultiValue *)self mutable];
  v11 = v10;
  if (v10)
  {
    v12 = sABValueToABSValueTransform_block_invoke_2(v10, v8);

    v13 = [MEMORY[0x277CBDB20] labeledValueWithLabel:v9 value:v12];
    [v13 setIOSLegacyIdentifier:{-[ABSMultiValue nextLegacyIdentifier](self, "nextLegacyIdentifier")}];
    v14 = [(ABSMultiValue *)self values];
    [v14 addObject:v13];

    if (a5)
    {
      *a5 = [v13 iOSLegacyIdentifier];
    }

    v8 = v12;
  }

  return v11;
}

- (BOOL)insertValue:(id)a3 label:(id)a4 atIndex:(int64_t)a5 outIdentifier:(int *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(ABSMultiValue *)self mutable];
  v13 = 0;
  if ((a5 & 0x8000000000000000) == 0 && v12)
  {
    v14 = [(ABSMultiValue *)self values];
    v15 = [v14 count];

    if (v15 >= a5)
    {
      v17 = sABValueToABSValueTransform_block_invoke_2(v16, v10);

      v18 = [MEMORY[0x277CBDB20] labeledValueWithLabel:v11 value:v17];
      [v18 setIOSLegacyIdentifier:{-[ABSMultiValue nextLegacyIdentifier](self, "nextLegacyIdentifier")}];
      v19 = [(ABSMultiValue *)self values];
      [v19 insertObject:v18 atIndex:a5];

      if (a6)
      {
        *a6 = [v18 iOSLegacyIdentifier];
      }

      v13 = 1;
      v10 = v17;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (BOOL)removeValueAtIndex:(int64_t)a3
{
  v5 = [(ABSMultiValue *)self mutable];
  result = 0;
  if ((a3 & 0x8000000000000000) == 0 && v5)
  {
    v7 = [(ABSMultiValue *)self values];
    v8 = [v7 count];

    if (v8 <= a3)
    {
      return 0;
    }

    else
    {
      v9 = [(ABSMultiValue *)self values];
      [v9 removeObjectAtIndex:a3];

      return 1;
    }
  }

  return result;
}

- (BOOL)replaceValue:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(ABSMultiValue *)self mutable];
  v8 = 0;
  if ((a4 & 0x8000000000000000) == 0 && v7)
  {
    v9 = [(ABSMultiValue *)self values];
    v10 = [v9 count];

    if (v10 <= a4)
    {
      v8 = 0;
    }

    else
    {
      v12 = sABValueToABSValueTransform_block_invoke_2(v11, v6);

      v13 = [(ABSMultiValue *)self values];
      v14 = [v13 objectAtIndexedSubscript:a4];

      v15 = MEMORY[0x277CBDB20];
      v16 = [v14 label];
      v17 = [v15 labeledValueWithLabel:v16 value:v12];

      v18 = [(ABSMultiValue *)self values];
      [v18 replaceObjectAtIndex:a4 withObject:v17];

      v8 = 1;
      v6 = v12;
    }
  }

  return v8;
}

- (BOOL)replaceLabel:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(ABSMultiValue *)self mutable];
  v8 = 0;
  if ((a4 & 0x8000000000000000) == 0 && v7)
  {
    v9 = [(ABSMultiValue *)self values];
    v10 = [v9 count];

    if (v10 <= a4)
    {
      v8 = 0;
    }

    else
    {
      v11 = [(ABSMultiValue *)self values];
      v12 = [v11 objectAtIndexedSubscript:a4];

      v13 = MEMORY[0x277CBDB20];
      v14 = [v12 value];
      v15 = [v13 labeledValueWithLabel:v6 value:v14];

      v16 = [(ABSMultiValue *)self values];
      [v16 replaceObjectAtIndex:a4 withObject:v15];

      v8 = 1;
    }
  }

  return v8;
}

@end