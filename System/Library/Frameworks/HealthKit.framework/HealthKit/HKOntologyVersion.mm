@interface HKOntologyVersion
+ (id)_stableStringRepresentationOfEntries:(uint64_t)a1;
- (BOOL)isEqual:(id)a3;
- (HKOntologyVersion)init;
- (HKOntologyVersion)initWithCoder:(id)a3;
- (HKOntologyVersion)initWithShardEntries:(id)a3;
- (HKOntologyVersion)initWithString:(id)a3;
@end

@implementation HKOntologyVersion

- (HKOntologyVersion)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKOntologyVersion)initWithString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKOntologyVersion;
  v5 = [(HKOntologyVersion *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    string = v5->_string;
    v5->_string = v6;
  }

  return v5;
}

- (HKOntologyVersion)initWithShardEntries:(id)a3
{
  v4 = [HKOntologyVersion _stableStringRepresentationOfEntries:a3];
  v5 = [(HKOntologyVersion *)self initWithString:v4];

  return v5;
}

+ (id)_stableStringRepresentationOfEntries:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 hk_mapToSet:&__block_literal_global_18];

  v4 = [v3 allObjects];
  v5 = [v4 sortedArrayUsingSelector:sel_compare_];

  v6 = [v5 componentsJoinedByString:@"|"];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  string = self->_string;
  v6 = v4->_string;
  if (string == v6)
  {
LABEL_6:
    v7 = 1;
    goto LABEL_8;
  }

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [(NSString *)string isEqualToString:?];
LABEL_8:

  return v7;
}

- (HKOntologyVersion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"string"];

  v6 = [(HKOntologyVersion *)self initWithString:v5];
  return v6;
}

id __58__HKOntologyVersion__stableStringRepresentationOfEntries___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 identifier];
  v6 = [v3 currentVersion];

  v7 = [v4 initWithFormat:@"%@, %lld", v5, v6];

  return v7;
}

@end