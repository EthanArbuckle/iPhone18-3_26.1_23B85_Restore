@interface MPMultiSortDescriptor
+ (id)sortDescriptorWithRelatedProperties:(id)properties ascending:(BOOL)ascending;
- (MPMultiSortDescriptor)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPMultiSortDescriptor

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = MPMultiSortDescriptor;
  coderCopy = coder;
  [(MPMultiSortDescriptor *)&v6 encodeWithCoder:coderCopy];
  v5 = [(MPMultiSortDescriptor *)self relatedProperties:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"relatedProperties"];
}

- (MPMultiSortDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MPMultiSortDescriptor;
  v5 = [(MPMultiSortDescriptor *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"relatedProperties"];
    [(MPMultiSortDescriptor *)v5 setRelatedProperties:v9];
  }

  return v5;
}

+ (id)sortDescriptorWithRelatedProperties:(id)properties ascending:(BOOL)ascending
{
  ascendingCopy = ascending;
  propertiesCopy = properties;
  v6 = objc_alloc(objc_opt_class());
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 initWithKey:v8 ascending:ascendingCopy];

  [v9 setRelatedProperties:propertiesCopy];

  return v9;
}

@end