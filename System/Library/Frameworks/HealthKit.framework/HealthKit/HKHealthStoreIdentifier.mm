@interface HKHealthStoreIdentifier
+ (id)identifierFromProfileIdentifier:(id)identifier;
+ (id)primaryStoreIdentifier;
- (BOOL)isEqual:(id)equal;
- (HKHealthStoreIdentifier)initWithCoder:(id)coder;
- (HKHealthStoreIdentifier)initWithIdentifier:(id)identifier;
- (HKProfileIdentifier)profileIdentifier;
- (id)initPrimaryStoreIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKHealthStoreIdentifier

- (HKHealthStoreIdentifier)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HKHealthStoreIdentifier;
  v5 = [(HKHealthStoreIdentifier *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (id)initPrimaryStoreIdentifier
{
  v6.receiver = self;
  v6.super_class = HKHealthStoreIdentifier;
  v2 = [(HKHealthStoreIdentifier *)&v6 init];
  v3 = v2;
  if (v2)
  {
    identifier = v2->_identifier;
    v2->_identifier = 0;
  }

  return v3;
}

+ (id)primaryStoreIdentifier
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__HKHealthStoreIdentifier_primaryStoreIdentifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (primaryStoreIdentifier_onceToken != -1)
  {
    dispatch_once(&primaryStoreIdentifier_onceToken, block);
  }

  v2 = primaryStoreIdentifier__primaryIdentifier;

  return v2;
}

uint64_t __49__HKHealthStoreIdentifier_primaryStoreIdentifier__block_invoke(uint64_t a1)
{
  primaryStoreIdentifier__primaryIdentifier = [objc_alloc(*(a1 + 32)) initPrimaryStoreIdentifier];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    isPrimaryStoreIdentifier = [(HKHealthStoreIdentifier *)self isPrimaryStoreIdentifier];
    isPrimaryStoreIdentifier2 = [(HKHealthStoreIdentifier *)v6 isPrimaryStoreIdentifier];
    v9 = isPrimaryStoreIdentifier && isPrimaryStoreIdentifier2;
    if (!isPrimaryStoreIdentifier && !isPrimaryStoreIdentifier2)
    {
      identifier = self->_identifier;
      identifier = [(HKHealthStoreIdentifier *)v6 identifier];
      v9 = [(NSUUID *)identifier isEqual:identifier];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  identifier = self->_identifier;
  if (identifier)
  {
    return [(NSUUID *)identifier hash];
  }

  else
  {
    return 1;
  }
}

- (HKProfileIdentifier)profileIdentifier
{
  if ([(HKHealthStoreIdentifier *)self isPrimaryStoreIdentifier])
  {
    +[HKProfileIdentifier primaryProfile];
  }

  else
  {
    [HKProfileIdentifier _profileWithUUID:self->_identifier type:2];
  }
  v3 = ;

  return v3;
}

+ (id)identifierFromProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy type] == 1)
  {
    v4 = +[HKHealthStoreIdentifier primaryStoreIdentifier];
  }

  else
  {
    v5 = [HKHealthStoreIdentifier alloc];
    identifier = [identifierCopy identifier];
    v4 = [(HKHealthStoreIdentifier *)v5 initWithIdentifier:identifier];
  }

  return v4;
}

- (HKHealthStoreIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"is_primary_store_identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  if (v5)
  {
    v7 = +[HKHealthStoreIdentifier primaryStoreIdentifier];
LABEL_5:
    v8 = v7;
    goto LABEL_6;
  }

  if (v6)
  {
    v7 = [(HKHealthStoreIdentifier *)self initWithIdentifier:v6];
    self = v7;
    goto LABEL_5;
  }

  _HKInitializeLogging();
  v10 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
  {
    [HKHealthStoreIdentifier initWithCoder:v10];
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[HKHealthStoreIdentifier isPrimaryStoreIdentifier](self forKey:{"isPrimaryStoreIdentifier"), @"is_primary_store_identifier"}];
  identifier = self->_identifier;
  if (identifier)
  {
    [coderCopy encodeObject:identifier forKey:@"identifier"];
  }
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v4 = 138412290;
  v5 = objc_opt_class();
  v2 = v5;
  _os_log_error_impl(&dword_19197B000, v1, OS_LOG_TYPE_ERROR, "Asked to decode an %@ with no UUID; returning nil", &v4, 0xCu);

  v3 = *MEMORY[0x1E69E9840];
}

@end