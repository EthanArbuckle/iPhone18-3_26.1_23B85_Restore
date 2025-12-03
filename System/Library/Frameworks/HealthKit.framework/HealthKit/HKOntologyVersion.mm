@interface HKOntologyVersion
+ (id)_stableStringRepresentationOfEntries:(uint64_t)entries;
- (BOOL)isEqual:(id)equal;
- (HKOntologyVersion)init;
- (HKOntologyVersion)initWithCoder:(id)coder;
- (HKOntologyVersion)initWithShardEntries:(id)entries;
- (HKOntologyVersion)initWithString:(id)string;
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

- (HKOntologyVersion)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = HKOntologyVersion;
  v5 = [(HKOntologyVersion *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    string = v5->_string;
    v5->_string = v6;
  }

  return v5;
}

- (HKOntologyVersion)initWithShardEntries:(id)entries
{
  v4 = [HKOntologyVersion _stableStringRepresentationOfEntries:entries];
  v5 = [(HKOntologyVersion *)self initWithString:v4];

  return v5;
}

+ (id)_stableStringRepresentationOfEntries:(uint64_t)entries
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 hk_mapToSet:&__block_literal_global_18];

  allObjects = [v3 allObjects];
  v5 = [allObjects sortedArrayUsingSelector:sel_compare_];

  v6 = [v5 componentsJoinedByString:@"|"];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
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
  v6 = equalCopy->_string;
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

- (HKOntologyVersion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"string"];

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