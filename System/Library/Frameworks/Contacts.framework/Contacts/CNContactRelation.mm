@interface CNContactRelation
+ (CNContactRelation)contactRelationWithName:(NSString *)name;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid:(id *)a3;
- (CNContactRelation)initWithCoder:(id)a3;
- (CNContactRelation)initWithName:(NSString *)name;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation CNContactRelation

- (CNContactRelation)initWithName:(NSString *)name
{
  v6.receiver = self;
  v6.super_class = CNContactRelation;
  v3 = name;
  v4 = [(CNContactRelation *)&v6 init];
  [(CNContactRelation *)v4 setName:v3, v6.receiver, v6.super_class];

  return v4;
}

+ (CNContactRelation)contactRelationWithName:(NSString *)name
{
  v4 = name;
  v5 = [[a1 alloc] initWithName:v4];

  return v5;
}

- (CNContactRelation)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = CNContactRelation;
  v3 = a3;
  v4 = [(CNContactRelation *)&v9 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"_name", v9.receiver, v9.super_class}];

  v6 = [v5 copy];
  name = v4->_name;
  v4->_name = v6;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(CNContactRelation *)self name];
    if (v7 || ([v6 name], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [(CNContactRelation *)self name];
      v9 = [v6 name];
      v10 = [v8 isEqual:v9];

      if (v7)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_9;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNContactRelation *)self name];
  v5 = [v3 appendNamesAndObjects:{@"name", v4, 0}];

  v6 = [v3 build];

  return v6;
}

- (unint64_t)hash
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __25__CNContactRelation_hash__block_invoke;
  v3[3] = &unk_1E7412250;
  v3[4] = self;
  return [MEMORY[0x1E6996730] hashWithBlocks:{v3, 0}];
}

uint64_t __25__CNContactRelation_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) name];
  v3 = [v1 objectHash:v2];

  return v3;
}

- (BOOL)isValid:(id *)a3
{
  if (isValid__cn_once_token_0_1 != -1)
  {
    [CNContactRelation isValid:];
  }

  v5 = isValid__cn_once_object_0_1;
  if (isValid__cn_once_token_1_1 != -1)
  {
    [CNContactRelation isValid:];
  }

  v6 = isValid__cn_once_token_2_1;
  v7 = isValid__cn_once_object_1_1;
  if (v6 != -1)
  {
    [CNContactRelation isValid:];
  }

  v8 = [CN areValidKeyPaths:v5 forObject:self expectedClasses:v7 allowNil:isValid__cn_once_object_2_1 error:a3];

  return v8;
}

void __29__CNContactRelation_isValid___block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"name";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = [v0 copy];
  v2 = isValid__cn_once_object_0_1;
  isValid__cn_once_object_0_1 = v1;
}

void __29__CNContactRelation_isValid___block_invoke_2()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = [v0 copy];
  v2 = isValid__cn_once_object_1_1;
  isValid__cn_once_object_1_1 = v1;
}

uint64_t __29__CNContactRelation_isValid___block_invoke_3()
{
  v0 = [&unk_1F09875A0 copy];
  v1 = isValid__cn_once_object_2_1;
  isValid__cn_once_object_2_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end