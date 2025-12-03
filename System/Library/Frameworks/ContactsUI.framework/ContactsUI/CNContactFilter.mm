@interface CNContactFilter
- (BOOL)isEqual:(id)equal;
- (BOOL)supportsSections;
- (CNContactFilter)initWithDictionaryRepresentation:(id)representation;
- (NSPredicate)predicate;
- (NSString)fullTextString;
- (id)copyWithZone:(_NSZone *)zone;
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
  fullTextString = [(CNContactFilter *)self fullTextString];
  if ([fullTextString length])
  {
    v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K BEGINSWITH[cd] %@) OR (%K BEGINSWITH[cd] %@) OR (%K BEGINSWITH[cd] %@)", *MEMORY[0x1E695C240], fullTextString, *MEMORY[0x1E695C230], fullTextString, *MEMORY[0x1E695C328], fullTextString];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)supportsSections
{
  fullTextString = [(CNContactFilter *)self fullTextString];
  v3 = fullTextString == 0;

  return v3;
}

- (id)dictionaryRepresentation
{
  v7[1] = *MEMORY[0x1E69E9840];
  fullTextString = [(CNContactFilter *)self fullTextString];
  v3 = fullTextString;
  if (fullTextString)
  {
    v6 = @"CNContactFilterDictionaryKeyFullTextString";
    v7[0] = fullTextString;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  return v4;
}

- (CNContactFilter)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [(CNContactFilter *)self init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"CNContactFilterDictionaryKeyFullTextString"];
    v7 = [v6 copy];
    fullTextString = v5->_fullTextString;
    v5->_fullTextString = v7;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    fullTextString = [(CNContactFilter *)self fullTextString];
    if (fullTextString || ([v6 fullTextString], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      fullTextString2 = [(CNContactFilter *)self fullTextString];
      fullTextString3 = [v6 fullTextString];
      v10 = [fullTextString2 isEqual:fullTextString3];

      if (fullTextString)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  fullTextString = [(CNContactFilter *)self fullTextString];
  [v4 setFullTextString:fullTextString];

  return v4;
}

@end