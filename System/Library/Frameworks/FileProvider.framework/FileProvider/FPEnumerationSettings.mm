@interface FPEnumerationSettings
- (FPEnumerationSettings)init;
- (FPEnumerationSettings)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPEnumerationSettings

- (FPEnumerationSettings)init
{
  v6.receiver = self;
  v6.super_class = FPEnumerationSettings;
  v2 = [(FPEnumerationSettings *)&v6 init];
  if (v2)
  {
    fp_sortDescriptorByDisplayName = [MEMORY[0x1E695DEC8] fp_sortDescriptorByDisplayName];
    sortDescriptors = v2->_sortDescriptors;
    v2->_sortDescriptors = fp_sortDescriptorByDisplayName;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSArray *)self->_sortDescriptors copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSFileProviderSearchQuery *)self->_searchQuery copy];
  v8 = v4[2];
  v4[2] = v7;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  sortDescriptors = self->_sortDescriptors;
  coderCopy = coder;
  [coderCopy encodeObject:sortDescriptors forKey:@"sortDescriptors"];
  [coderCopy encodeObject:self->_searchQuery forKey:@"searchQuery"];
}

- (FPEnumerationSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = FPEnumerationSettings;
  v5 = [(FPEnumerationSettings *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"sortDescriptors"];
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = v9;

    v11 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"searchQuery"];
    searchQuery = v5->_searchQuery;
    v5->_searchQuery = v12;
  }

  return v5;
}

@end