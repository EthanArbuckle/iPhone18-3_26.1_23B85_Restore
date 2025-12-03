@interface ABSMultiValue
+ (void)initialize;
- (ABSMultiValue)initWithPropertyType:(unsigned int)type mutable:(BOOL)mutable values:(id)values;
- (BOOL)addValue:(id)value label:(id)label outIdentifier:(int *)identifier;
- (BOOL)insertValue:(id)value label:(id)label atIndex:(int64_t)index outIdentifier:(int *)identifier;
- (BOOL)removeValueAtIndex:(int64_t)index;
- (BOOL)replaceLabel:(id)label atIndex:(int64_t)index;
- (BOOL)replaceValue:(id)value atIndex:(int64_t)index;
- (id)allValues;
- (id)copyValueAtIndex:(int64_t)index;
- (id)labelAtIndex:(int64_t)index;
- (id)mutableCopy;
- (int)identifierAtIndex:(int64_t)index;
- (int)nextLegacyIdentifier;
- (unint64_t)indexForIdentifier:(int)identifier;
- (unint64_t)indexOfValue:(id)value;
@end

@implementation ABSMultiValue

+ (void)initialize
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___ABSMultiValue;
  objc_msgSendSuper2(&v2, sel_initialize);
  +[ABSAddressBook ABInitialize];
}

- (ABSMultiValue)initWithPropertyType:(unsigned int)type mutable:(BOOL)mutable values:(id)values
{
  valuesCopy = values;
  v14.receiver = self;
  v14.super_class = ABSMultiValue;
  v9 = [(ABSMultiValue *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_propertyType = type & 0xFFFFFEFF;
    v9->_mutable = mutable;
    if (valuesCopy)
    {
      array = [valuesCopy mutableCopy];
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
    }

    values = v10->_values;
    v10->_values = array;
  }

  return v10;
}

- (id)mutableCopy
{
  v3 = [ABSMultiValue alloc];
  propertyType = [(ABSMultiValue *)self propertyType];
  values = [(ABSMultiValue *)self values];
  v6 = [(ABSMultiValue *)v3 initWithPropertyType:propertyType mutable:1 values:values];

  return v6;
}

- (id)copyValueAtIndex:(int64_t)index
{
  if (index < 0 || (-[ABSMultiValue values](self, "values"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 <= index))
  {
    v10 = 0;
  }

  else
  {
    values = [(ABSMultiValue *)self values];
    v8 = [values objectAtIndexedSubscript:index];

    value = [v8 value];
    v10 = sABSValueToABValueTransform_block_invoke(value, value);
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
  values = [(ABSMultiValue *)self values];
  v3 = [values _cn_map:&__block_literal_global_14];

  return v3;
}

id __26__ABSMultiValue_allValues__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = sABSValueToABValueTransform_block_invoke(v2, v2);

  return v3;
}

- (id)labelAtIndex:(int64_t)index
{
  if (index < 0 || (-[ABSMultiValue values](self, "values"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 <= index))
  {
    label = 0;
  }

  else
  {
    values = [(ABSMultiValue *)self values];
    v8 = [values objectAtIndexedSubscript:index];

    label = [v8 label];
  }

  return label;
}

- (unint64_t)indexForIdentifier:(int)identifier
{
  values = [(ABSMultiValue *)self values];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__ABSMultiValue_indexForIdentifier___block_invoke;
  v7[3] = &__block_descriptor_36_e31_B32__0__CNLabeledValue_8Q16_B24l;
  identifierCopy = identifier;
  v5 = [values indexOfObjectPassingTest:v7];

  return v5;
}

- (unint64_t)indexOfValue:(id)value
{
  v4 = sABValueToABSValueTransform_block_invoke_2(self, value);
  values = [(ABSMultiValue *)self values];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __30__ABSMultiValue_indexOfValue___block_invoke;
  v9[3] = &unk_278A047B0;
  v10 = v4;
  v6 = v4;
  v7 = [values indexOfObjectPassingTest:v9];

  return v7;
}

uint64_t __30__ABSMultiValue_indexOfValue___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 value];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (int)identifierAtIndex:(int64_t)index
{
  if (index < 0)
  {
    return -1;
  }

  values = [(ABSMultiValue *)self values];
  v6 = [values count];

  if (v6 <= index)
  {
    return -1;
  }

  values2 = [(ABSMultiValue *)self values];
  v8 = [values2 objectAtIndexedSubscript:index];

  LODWORD(values2) = [v8 iOSLegacyIdentifier];
  return values2;
}

- (int)nextLegacyIdentifier
{
  values = [(ABSMultiValue *)self values];
  v4 = [values count];

  if (!v4)
  {
    return 0;
  }

  values2 = [(ABSMultiValue *)self values];
  v6 = [values2 valueForKeyPath:@"@max.iOSLegacyIdentifier"];
  v7 = [v6 intValue] + 1;

  return v7;
}

- (BOOL)addValue:(id)value label:(id)label outIdentifier:(int *)identifier
{
  valueCopy = value;
  labelCopy = label;
  mutable = [(ABSMultiValue *)self mutable];
  v11 = mutable;
  if (mutable)
  {
    v12 = sABValueToABSValueTransform_block_invoke_2(mutable, valueCopy);

    v13 = [MEMORY[0x277CBDB20] labeledValueWithLabel:labelCopy value:v12];
    [v13 setIOSLegacyIdentifier:{-[ABSMultiValue nextLegacyIdentifier](self, "nextLegacyIdentifier")}];
    values = [(ABSMultiValue *)self values];
    [values addObject:v13];

    if (identifier)
    {
      *identifier = [v13 iOSLegacyIdentifier];
    }

    valueCopy = v12;
  }

  return v11;
}

- (BOOL)insertValue:(id)value label:(id)label atIndex:(int64_t)index outIdentifier:(int *)identifier
{
  valueCopy = value;
  labelCopy = label;
  mutable = [(ABSMultiValue *)self mutable];
  v13 = 0;
  if ((index & 0x8000000000000000) == 0 && mutable)
  {
    values = [(ABSMultiValue *)self values];
    v15 = [values count];

    if (v15 >= index)
    {
      v17 = sABValueToABSValueTransform_block_invoke_2(v16, valueCopy);

      v18 = [MEMORY[0x277CBDB20] labeledValueWithLabel:labelCopy value:v17];
      [v18 setIOSLegacyIdentifier:{-[ABSMultiValue nextLegacyIdentifier](self, "nextLegacyIdentifier")}];
      values2 = [(ABSMultiValue *)self values];
      [values2 insertObject:v18 atIndex:index];

      if (identifier)
      {
        *identifier = [v18 iOSLegacyIdentifier];
      }

      v13 = 1;
      valueCopy = v17;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (BOOL)removeValueAtIndex:(int64_t)index
{
  mutable = [(ABSMultiValue *)self mutable];
  result = 0;
  if ((index & 0x8000000000000000) == 0 && mutable)
  {
    values = [(ABSMultiValue *)self values];
    v8 = [values count];

    if (v8 <= index)
    {
      return 0;
    }

    else
    {
      values2 = [(ABSMultiValue *)self values];
      [values2 removeObjectAtIndex:index];

      return 1;
    }
  }

  return result;
}

- (BOOL)replaceValue:(id)value atIndex:(int64_t)index
{
  valueCopy = value;
  mutable = [(ABSMultiValue *)self mutable];
  v8 = 0;
  if ((index & 0x8000000000000000) == 0 && mutable)
  {
    values = [(ABSMultiValue *)self values];
    v10 = [values count];

    if (v10 <= index)
    {
      v8 = 0;
    }

    else
    {
      v12 = sABValueToABSValueTransform_block_invoke_2(v11, valueCopy);

      values2 = [(ABSMultiValue *)self values];
      v14 = [values2 objectAtIndexedSubscript:index];

      v15 = MEMORY[0x277CBDB20];
      label = [v14 label];
      v17 = [v15 labeledValueWithLabel:label value:v12];

      values3 = [(ABSMultiValue *)self values];
      [values3 replaceObjectAtIndex:index withObject:v17];

      v8 = 1;
      valueCopy = v12;
    }
  }

  return v8;
}

- (BOOL)replaceLabel:(id)label atIndex:(int64_t)index
{
  labelCopy = label;
  mutable = [(ABSMultiValue *)self mutable];
  v8 = 0;
  if ((index & 0x8000000000000000) == 0 && mutable)
  {
    values = [(ABSMultiValue *)self values];
    v10 = [values count];

    if (v10 <= index)
    {
      v8 = 0;
    }

    else
    {
      values2 = [(ABSMultiValue *)self values];
      v12 = [values2 objectAtIndexedSubscript:index];

      v13 = MEMORY[0x277CBDB20];
      value = [v12 value];
      v15 = [v13 labeledValueWithLabel:labelCopy value:value];

      values3 = [(ABSMultiValue *)self values];
      [values3 replaceObjectAtIndex:index withObject:v15];

      v8 = 1;
    }
  }

  return v8;
}

@end