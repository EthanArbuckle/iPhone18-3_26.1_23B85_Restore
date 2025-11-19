@interface CNContactFilter
- (BOOL)isEqual:(id)a3;
- (BOOL)supportsSections;
- (CNContactFilter)initWithDictionaryRepresentation:(id)a3;
- (NSPredicate)predicate;
- (NSString)fullTextString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
@end

@implementation CNContactFilter

- (NSString)fullTextString
{
  v3 = [(NSString *)self->_fullTextString length];
  if (v3)
  {
    v3 = self->_fullTextString;
  }

  return v3;
}

- (NSPredicate)predicate
{
  v2 = [(CNContactFilter *)self fullTextString];
  if ([v2 length])
  {
    v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K BEGINSWITH[cd] %@) OR (%K BEGINSWITH[cd] %@) OR (%K BEGINSWITH[cd] %@)", *MEMORY[0x1E695C240], v2, *MEMORY[0x1E695C230], v2, *MEMORY[0x1E695C328], v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)supportsSections
{
  v2 = [(CNContactFilter *)self fullTextString];
  v3 = v2 == 0;

  return v3;
}

- (id)dictionaryRepresentation
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(CNContactFilter *)self fullTextString];
  v3 = v2;
  if (v2)
  {
    v6 = @"CNContactFilterDictionaryKeyFullTextString";
    v7[0] = v2;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  return v4;
}

- (CNContactFilter)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [(CNContactFilter *)self init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"CNContactFilterDictionaryKeyFullTextString"];
    v7 = [v6 copy];
    fullTextString = v5->_fullTextString;
    v5->_fullTextString = v7;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(CNContactFilter *)self fullTextString];
    if (v7 || ([v6 fullTextString], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [(CNContactFilter *)self fullTextString];
      v9 = [v6 fullTextString];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(CNContactFilter *)self fullTextString];
  [v4 setFullTextString:v5];

  return v4;
}

@end