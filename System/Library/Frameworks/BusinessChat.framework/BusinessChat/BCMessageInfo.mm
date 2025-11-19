@interface BCMessageInfo
- (BCMessageInfo)initWithDictionary:(id)a3;
- (BCMessageInfo)initWithDictionary:(id)a3 imageDictionary:(id)a4;
- (BCMessageInfo)initWithTitle:(id)a3 subtitle:(id)a4 style:(id)a5 alternateTitle:(id)a6 imageIdentifier:(id)a7 imageDescription:(id)a8;
- (NSDictionary)dictionaryValue;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation BCMessageInfo

- (BCMessageInfo)initWithTitle:(id)a3 subtitle:(id)a4 style:(id)a5 alternateTitle:(id)a6 imageIdentifier:(id)a7 imageDescription:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v22.receiver = self;
  v22.super_class = BCMessageInfo;
  v19 = [(BCMessageInfo *)&v22 init];
  v20 = v19;
  if (v19)
  {
    [(BCMessageInfo *)v19 setTitle:v14];
    [(BCMessageInfo *)v20 setSubtitle:v15];
    v20->__style = a5;
    [(BCMessageInfo *)v20 setImageIdentifier:v17];
    [(BCMessageInfo *)v20 setImageDescription:v18];
    [(BCMessageInfo *)v20 setAlternateTitle:v16];
  }

  return v20;
}

- (BCMessageInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"title"];
  v6 = [MEMORY[0x277CBEB68] null];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v4 objectForKeyedSubscript:@"title"];
  }

  v8 = [v4 objectForKeyedSubscript:@"subtitle"];
  v9 = [MEMORY[0x277CBEB68] null];
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = [v4 objectForKeyedSubscript:@"subtitle"];
  }

  v11 = [v4 objectForKeyedSubscript:@"style"];
  v12 = [MEMORY[0x277CBEB68] null];
  if (v11 == v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = [v4 objectForKeyedSubscript:@"style"];
  }

  v14 = [v4 objectForKeyedSubscript:@"alternateTitle"];
  v15 = [MEMORY[0x277CBEB68] null];
  if (v14 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = [v4 objectForKeyedSubscript:@"alternateTitle"];
  }

  v17 = [v4 objectForKeyedSubscript:@"imageIdentifier"];
  v18 = [MEMORY[0x277CBEB68] null];
  if (v17 == v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = [v4 objectForKeyedSubscript:@"imageIdentifier"];
  }

  v20 = [v4 objectForKeyedSubscript:@"imageDescription"];
  v21 = [MEMORY[0x277CBEB68] null];
  if (v20 == v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = [v4 objectForKeyedSubscript:@"imageDescription"];
  }

  v23 = @"small";
  if (([v13 isEqualToString:@"small"] & 1) == 0)
  {
    v23 = @"large";
    if (![v13 isEqualToString:@"large"])
    {
      v23 = @"icon";
    }
  }

  if (v7)
  {
    self = [(BCMessageInfo *)self initWithTitle:v7 subtitle:v10 style:v23 alternateTitle:v16 imageIdentifier:v19 imageDescription:v22];
    v24 = self;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BCMessageInfo)initWithDictionary:(id)a3 imageDictionary:(id)a4
{
  v6 = a4;
  v7 = [(BCMessageInfo *)self initWithDictionary:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [(BCMessageInfo *)v7 imageIdentifier];

    if (v9)
    {
      v10 = [(BCMessageInfo *)v8 imageIdentifier];
      v11 = [v6 objectForKeyedSubscript:v10];

      v12 = [v11 image];
      [(BCMessageInfo *)v8 setImage:v12];

      v13 = [v11 imageDescription];
      [(BCMessageInfo *)v8 setImageDescription:v13];
    }
  }

  return v8;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  [v3 setObject:self->_title forKeyedSubscript:@"title"];
  [v3 setObject:self->_subtitle forKeyedSubscript:@"subtitle"];
  [v3 setObject:self->__style forKeyedSubscript:@"style"];
  [v3 setObject:self->_imageIdentifier forKeyedSubscript:@"imageIdentifier"];
  [v3 setObject:self->_imageDescription forKeyedSubscript:@"imageDescription"];
  [v3 setObject:self->_alternateTitle forKeyedSubscript:@"alternateTitle"];
  v4 = [v3 copy];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(BCMessageInfo *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(BCMessageInfo *)self title];
  v5 = [v3 appendObject:v4 withName:@"title"];

  v6 = [(BCMessageInfo *)self subtitle];
  v7 = [v3 appendObject:v6 withName:@"subtitle" skipIfNil:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BCMessageInfo *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(BCMessageInfo *)self succinctDescriptionBuilder];
  v5 = [(BCMessageInfo *)self alternateTitle];
  v6 = [v4 appendObject:v5 withName:@"alternateTitle" skipIfNil:1];

  v7 = [(BCMessageInfo *)self imageIdentifier];
  v8 = [v4 appendObject:v7 withName:@"imageIdentifier" skipIfNil:1];

  v9 = [(BCMessageInfo *)self imageDescription];
  v10 = [v4 appendObject:v9 withName:@"imageDescription" skipIfNil:1];

  v11 = [(BCMessageInfo *)self style];
  v12 = [v4 appendObject:v11 withName:@"style"];

  return v4;
}

@end