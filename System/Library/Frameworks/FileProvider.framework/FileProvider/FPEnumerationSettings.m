@interface FPEnumerationSettings
- (FPEnumerationSettings)init;
- (FPEnumerationSettings)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPEnumerationSettings

- (FPEnumerationSettings)init
{
  v6.receiver = self;
  v6.super_class = FPEnumerationSettings;
  v2 = [(FPEnumerationSettings *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DEC8] fp_sortDescriptorByDisplayName];
    sortDescriptors = v2->_sortDescriptors;
    v2->_sortDescriptors = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSArray *)self->_sortDescriptors copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSFileProviderSearchQuery *)self->_searchQuery copy];
  v8 = v4[2];
  v4[2] = v7;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  sortDescriptors = self->_sortDescriptors;
  v5 = a3;
  [v5 encodeObject:sortDescriptors forKey:@"sortDescriptors"];
  [v5 encodeObject:self->_searchQuery forKey:@"searchQuery"];
}

- (FPEnumerationSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = FPEnumerationSettings;
  v5 = [(FPEnumerationSettings *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"sortDescriptors"];
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = v9;

    v11 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"searchQuery"];
    searchQuery = v5->_searchQuery;
    v5->_searchQuery = v12;
  }

  return v5;
}

@end