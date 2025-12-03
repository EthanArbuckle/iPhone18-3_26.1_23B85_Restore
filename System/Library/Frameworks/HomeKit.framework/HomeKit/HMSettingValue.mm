@interface HMSettingValue
- (BOOL)isEqual:(id)equal;
- (HMSettingValue)initWithCoder:(id)coder;
- (HMSettingValue)initWithType:(int64_t)type stringValue:(id)value numberValue:(id)numberValue dataValue:(id)dataValue selectionIdentifier:(id)identifier selectionValue:(id)selectionValue;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMSettingValue

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    if (!v7 || (v8 = [(HMSettingValue *)self type], v8 != [(HMSettingValue *)v7 type]))
    {
      v12 = 0;
LABEL_35:

      goto LABEL_36;
    }

    numberValue = [(HMSettingValue *)self numberValue];
    numberValue2 = [(HMSettingValue *)v7 numberValue];
    if (numberValue != numberValue2)
    {
      numberValue3 = [(HMSettingValue *)self numberValue];
      numberValue4 = [(HMSettingValue *)v7 numberValue];
      v42 = numberValue3;
      if (![numberValue3 isEqual:?])
      {
        v12 = 0;
        goto LABEL_33;
      }
    }

    stringValue = [(HMSettingValue *)self stringValue];
    stringValue2 = [(HMSettingValue *)v7 stringValue];
    v43 = stringValue;
    if (stringValue != stringValue2)
    {
      stringValue3 = [(HMSettingValue *)self stringValue];
      stringValue4 = [(HMSettingValue *)v7 stringValue];
      if (![stringValue3 isEqual:?])
      {
        v12 = 0;
LABEL_31:

LABEL_32:
        if (numberValue == numberValue2)
        {
LABEL_34:

          goto LABEL_35;
        }

LABEL_33:

        goto LABEL_34;
      }
    }

    dataValue = [(HMSettingValue *)self dataValue];
    dataValue2 = [(HMSettingValue *)v7 dataValue];
    v40 = dataValue;
    v29 = dataValue == dataValue2;
    v17 = dataValue2;
    if (!v29)
    {
      dataValue3 = [(HMSettingValue *)self dataValue];
      dataValue4 = [(HMSettingValue *)v7 dataValue];
      v36 = dataValue3;
      if (![dataValue3 isEqual:?])
      {
        v12 = 0;
        v19 = v40;
LABEL_29:

LABEL_30:
        if (v43 == stringValue2)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    selectionIdentifier = [(HMSettingValue *)self selectionIdentifier];
    selectionIdentifier2 = [(HMSettingValue *)v7 selectionIdentifier];
    v38 = v17;
    if (selectionIdentifier == selectionIdentifier2)
    {
      v33 = stringValue3;
      v34 = stringValue2;
    }

    else
    {
      selectionIdentifier3 = [(HMSettingValue *)self selectionIdentifier];
      selectionIdentifier4 = [(HMSettingValue *)v7 selectionIdentifier];
      v32 = selectionIdentifier3;
      if (![selectionIdentifier3 isEqual:?])
      {
        v12 = 0;
        v28 = selectionIdentifier2;
        goto LABEL_27;
      }

      v33 = stringValue3;
      v34 = stringValue2;
    }

    selectionValue = [(HMSettingValue *)self selectionValue];
    selectionValue2 = [(HMSettingValue *)v7 selectionValue];
    v24 = selectionValue2;
    if (selectionValue == selectionValue2)
    {

      v12 = 1;
      v28 = selectionIdentifier2;
      v29 = selectionIdentifier == selectionIdentifier2;
    }

    else
    {
      selectionValue3 = [(HMSettingValue *)self selectionValue];
      [(HMSettingValue *)v7 selectionValue];
      v27 = v26 = selectionIdentifier;
      v12 = [selectionValue3 isEqual:v27];

      selectionIdentifier = v26;
      v28 = selectionIdentifier2;
      v29 = v26 == selectionIdentifier2;
    }

    stringValue3 = v33;
    stringValue2 = v34;
    if (v29)
    {
LABEL_28:

      v19 = v40;
      v17 = v38;
      if (v40 == v38)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

LABEL_27:

    goto LABEL_28;
  }

  v12 = 1;
LABEL_36:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithInteger:{-[HMSettingValue type](self, "type")}];
  [coderCopy encodeObject:v6 forKey:@"HMSV.type"];

  stringValue = [(HMSettingValue *)self stringValue];
  [coderCopy encodeObject:stringValue forKey:@"HMSV.strValue"];

  numberValue = [(HMSettingValue *)self numberValue];
  [coderCopy encodeObject:numberValue forKey:@"HMSV.numValue"];

  dataValue = [(HMSettingValue *)self dataValue];
  [coderCopy encodeObject:dataValue forKey:@"HMSV.dataValue"];

  selectionIdentifier = [(HMSettingValue *)self selectionIdentifier];
  [coderCopy encodeObject:selectionIdentifier forKey:@"HMSV.selId"];

  selectionValue = [(HMSettingValue *)self selectionValue];
  [coderCopy encodeObject:selectionValue forKey:@"HMSV.selValue"];
}

- (HMSettingValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMSV.type"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMSV.strValue"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMSV.numValue"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMSV.dataValue"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMSV.selId"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMSV.selValue"];

  v11 = -[HMSettingValue initWithType:stringValue:numberValue:dataValue:selectionIdentifier:selectionValue:](self, "initWithType:stringValue:numberValue:dataValue:selectionIdentifier:selectionValue:", [v5 integerValue], v6, v7, v8, v9, v10);
  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  type = [(HMSettingValue *)self type];
  stringValue = [(HMSettingValue *)self stringValue];
  numberValue = [(HMSettingValue *)self numberValue];
  selectionIdentifier = [(HMSettingValue *)self selectionIdentifier];
  selectionValue = [(HMSettingValue *)self selectionValue];
  v9 = [v3 stringWithFormat:@"[HMSettingValue(%ld): str:%@ num:%@ sel:[%@]%@]", type, stringValue, numberValue, selectionIdentifier, selectionValue];

  return v9;
}

- (HMSettingValue)initWithType:(int64_t)type stringValue:(id)value numberValue:(id)numberValue dataValue:(id)dataValue selectionIdentifier:(id)identifier selectionValue:(id)selectionValue
{
  valueCopy = value;
  numberValueCopy = numberValue;
  dataValueCopy = dataValue;
  identifierCopy = identifier;
  selectionValueCopy = selectionValue;
  v24.receiver = self;
  v24.super_class = HMSettingValue;
  v18 = [(HMSettingValue *)&v24 init];
  v19 = v18;
  if (v18)
  {
    v18->_type = type;
    v20 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:valueCopy];
    stringValue = v19->_stringValue;
    v19->_stringValue = v20;

    objc_storeStrong(&v19->_numberValue, numberValue);
    objc_storeStrong(&v19->_dataValue, dataValue);
    objc_storeStrong(&v19->_selectionIdentifier, identifier);
    objc_storeStrong(&v19->_selectionValue, selectionValue);
  }

  return v19;
}

@end