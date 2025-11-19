@interface MPMultiSortDescriptor
+ (id)sortDescriptorWithRelatedProperties:(id)a3 ascending:(BOOL)a4;
- (MPMultiSortDescriptor)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPMultiSortDescriptor

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = MPMultiSortDescriptor;
  v4 = a3;
  [(MPMultiSortDescriptor *)&v6 encodeWithCoder:v4];
  v5 = [(MPMultiSortDescriptor *)self relatedProperties:v6.receiver];
  [v4 encodeObject:v5 forKey:@"relatedProperties"];
}

- (MPMultiSortDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MPMultiSortDescriptor;
  v5 = [(MPMultiSortDescriptor *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"relatedProperties"];
    [(MPMultiSortDescriptor *)v5 setRelatedProperties:v9];
  }

  return v5;
}

+ (id)sortDescriptorWithRelatedProperties:(id)a3 ascending:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_alloc(objc_opt_class());
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 initWithKey:v8 ascending:v4];

  [v9 setRelatedProperties:v5];

  return v9;
}

@end