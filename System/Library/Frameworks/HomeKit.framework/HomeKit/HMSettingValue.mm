@interface HMSettingValue
- (BOOL)isEqual:(id)a3;
- (HMSettingValue)initWithCoder:(id)a3;
- (HMSettingValue)initWithType:(int64_t)a3 stringValue:(id)a4 numberValue:(id)a5 dataValue:(id)a6 selectionIdentifier:(id)a7 selectionValue:(id)a8;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMSettingValue

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self != v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
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

    v9 = [(HMSettingValue *)self numberValue];
    v10 = [(HMSettingValue *)v7 numberValue];
    if (v9 != v10)
    {
      v11 = [(HMSettingValue *)self numberValue];
      v41 = [(HMSettingValue *)v7 numberValue];
      v42 = v11;
      if (![v11 isEqual:?])
      {
        v12 = 0;
        goto LABEL_33;
      }
    }

    v13 = [(HMSettingValue *)self stringValue];
    v14 = [(HMSettingValue *)v7 stringValue];
    v43 = v13;
    if (v13 != v14)
    {
      v3 = [(HMSettingValue *)self stringValue];
      v39 = [(HMSettingValue *)v7 stringValue];
      if (![v3 isEqual:?])
      {
        v12 = 0;
LABEL_31:

LABEL_32:
        if (v9 == v10)
        {
LABEL_34:

          goto LABEL_35;
        }

LABEL_33:

        goto LABEL_34;
      }
    }

    v15 = [(HMSettingValue *)self dataValue];
    v16 = [(HMSettingValue *)v7 dataValue];
    v40 = v15;
    v29 = v15 == v16;
    v17 = v16;
    if (!v29)
    {
      v18 = [(HMSettingValue *)self dataValue];
      v35 = [(HMSettingValue *)v7 dataValue];
      v36 = v18;
      if (![v18 isEqual:?])
      {
        v12 = 0;
        v19 = v40;
LABEL_29:

LABEL_30:
        if (v43 == v14)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    v20 = [(HMSettingValue *)self selectionIdentifier];
    v37 = [(HMSettingValue *)v7 selectionIdentifier];
    v38 = v17;
    if (v20 == v37)
    {
      v33 = v3;
      v34 = v14;
    }

    else
    {
      v21 = [(HMSettingValue *)self selectionIdentifier];
      v31 = [(HMSettingValue *)v7 selectionIdentifier];
      v32 = v21;
      if (![v21 isEqual:?])
      {
        v12 = 0;
        v28 = v37;
        goto LABEL_27;
      }

      v33 = v3;
      v34 = v14;
    }

    v22 = [(HMSettingValue *)self selectionValue];
    v23 = [(HMSettingValue *)v7 selectionValue];
    v24 = v23;
    if (v22 == v23)
    {

      v12 = 1;
      v28 = v37;
      v29 = v20 == v37;
    }

    else
    {
      v25 = [(HMSettingValue *)self selectionValue];
      [(HMSettingValue *)v7 selectionValue];
      v27 = v26 = v20;
      v12 = [v25 isEqual:v27];

      v20 = v26;
      v28 = v37;
      v29 = v26 == v37;
    }

    v3 = v33;
    v14 = v34;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithInteger:{-[HMSettingValue type](self, "type")}];
  [v5 encodeObject:v6 forKey:@"HMSV.type"];

  v7 = [(HMSettingValue *)self stringValue];
  [v5 encodeObject:v7 forKey:@"HMSV.strValue"];

  v8 = [(HMSettingValue *)self numberValue];
  [v5 encodeObject:v8 forKey:@"HMSV.numValue"];

  v9 = [(HMSettingValue *)self dataValue];
  [v5 encodeObject:v9 forKey:@"HMSV.dataValue"];

  v10 = [(HMSettingValue *)self selectionIdentifier];
  [v5 encodeObject:v10 forKey:@"HMSV.selId"];

  v11 = [(HMSettingValue *)self selectionValue];
  [v5 encodeObject:v11 forKey:@"HMSV.selValue"];
}

- (HMSettingValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMSV.type"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMSV.strValue"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMSV.numValue"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMSV.dataValue"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMSV.selId"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMSV.selValue"];

  v11 = -[HMSettingValue initWithType:stringValue:numberValue:dataValue:selectionIdentifier:selectionValue:](self, "initWithType:stringValue:numberValue:dataValue:selectionIdentifier:selectionValue:", [v5 integerValue], v6, v7, v8, v9, v10);
  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HMSettingValue *)self type];
  v5 = [(HMSettingValue *)self stringValue];
  v6 = [(HMSettingValue *)self numberValue];
  v7 = [(HMSettingValue *)self selectionIdentifier];
  v8 = [(HMSettingValue *)self selectionValue];
  v9 = [v3 stringWithFormat:@"[HMSettingValue(%ld): str:%@ num:%@ sel:[%@]%@]", v4, v5, v6, v7, v8];

  return v9;
}

- (HMSettingValue)initWithType:(int64_t)a3 stringValue:(id)a4 numberValue:(id)a5 dataValue:(id)a6 selectionIdentifier:(id)a7 selectionValue:(id)a8
{
  v14 = a4;
  v23 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = HMSettingValue;
  v18 = [(HMSettingValue *)&v24 init];
  v19 = v18;
  if (v18)
  {
    v18->_type = a3;
    v20 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v14];
    stringValue = v19->_stringValue;
    v19->_stringValue = v20;

    objc_storeStrong(&v19->_numberValue, a5);
    objc_storeStrong(&v19->_dataValue, a6);
    objc_storeStrong(&v19->_selectionIdentifier, a7);
    objc_storeStrong(&v19->_selectionValue, a8);
  }

  return v19;
}

@end