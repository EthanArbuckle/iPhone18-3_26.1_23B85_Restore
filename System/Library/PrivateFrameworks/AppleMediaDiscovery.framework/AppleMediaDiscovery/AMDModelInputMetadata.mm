@interface AMDModelInputMetadata
+ (int64_t)getDataTypeFromString:(id)a3;
- (AMDModelInputMetadata)initWithDictionary:(id)a3;
- (BOOL)isValid;
@end

@implementation AMDModelInputMetadata

- (AMDModelInputMetadata)initWithDictionary:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v17;
  v17 = 0;
  v15.receiver = v3;
  v15.super_class = AMDModelInputMetadata;
  v17 = [(AMDModelInputMetadata *)&v15 init];
  objc_storeStrong(&v17, v17);
  v6 = [location[0] objectForKey:@"data_type"];
  v4 = [AMDModelInputMetadata getDataTypeFromString:?];
  [(AMDModelInputMetadata *)v17 setDataType:v4];
  MEMORY[0x277D82BD8](v6);
  v7 = [location[0] objectForKey:@"shape"];
  [(AMDModelInputMetadata *)v17 setShape:?];
  MEMORY[0x277D82BD8](v7);
  v8 = [location[0] objectForKey:@"size"];
  [(AMDModelInputMetadata *)v17 setSize:?];
  MEMORY[0x277D82BD8](v8);
  v9 = [location[0] objectForKey:@"padding_value"];
  [(AMDModelInputMetadata *)v17 setPaddingValue:?];
  MEMORY[0x277D82BD8](v9);
  v10 = [location[0] objectForKey:@"post_remap_operation"];
  [(AMDModelInputMetadata *)v17 setPostRemapOperation:?];
  MEMORY[0x277D82BD8](v10);
  v11 = [location[0] objectForKey:@"hash_op_mod_value"];
  [(AMDModelInputMetadata *)v17 setHashOpModValue:?];
  MEMORY[0x277D82BD8](v11);
  v12 = [location[0] objectForKey:@"truncate_op_min_value"];
  [(AMDModelInputMetadata *)v17 setTruncateOpMinValue:?];
  MEMORY[0x277D82BD8](v12);
  v13 = [location[0] objectForKey:@"truncate_op_max_value"];
  [(AMDModelInputMetadata *)v17 setTruncateOpMaxValue:?];
  MEMORY[0x277D82BD8](v13);
  v14 = MEMORY[0x277D82BE0](v17);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
  return v14;
}

- (BOOL)isValid
{
  v7 = 0;
  v5 = 0;
  v4 = 0;
  if ([(AMDModelInputMetadata *)self dataType])
  {
    v8 = [(AMDModelInputMetadata *)self size];
    v7 = 1;
    v3 = 1;
    if (!v8)
    {
      v6 = [(AMDModelInputMetadata *)self shape];
      v5 = 1;
      v3 = v6 != 0;
    }

    v4 = v3;
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  return v4;
}

+ (int64_t)getDataTypeFromString:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    if ([location[0] isEqualToString:@"int32"])
    {
      v5 = 131104;
    }

    else if ([location[0] isEqualToString:@"double"])
    {
      v5 = 65600;
    }

    else if ([location[0] isEqualToString:@"float32"])
    {
      v5 = 65568;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  return v5;
}

@end