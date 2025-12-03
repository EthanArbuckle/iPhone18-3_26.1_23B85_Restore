@interface CNContactFetchRequest
+ (unint64_t)makeSerialNumber;
+ (unint64_t)makeSignpostId;
- (BOOL)requiresMeContactAuthorization;
- (CNContactFetchRequest)init;
- (CNContactFetchRequest)initWithCoder:(id)coder;
- (CNContactFetchRequest)initWithKeysToFetch:(NSArray *)keysToFetch;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)effectiveKeysToFetch;
- (id)effectivePredicate;
- (void)encodeWithCoder:(id)coder;
- (void)setContactBatchCount:(int64_t)count;
@end

@implementation CNContactFetchRequest

- (id)effectivePredicate
{
  predicate = [(CNContactFetchRequest *)self predicate];

  if (predicate)
  {
    [(CNContactFetchRequest *)self predicate];
  }

  else
  {
    +[CNContact predicateForAllContacts];
  }
  v4 = ;

  return v4;
}

- (id)effectiveKeysToFetch
{
  if (self->_keysToFetch)
  {
    v2 = [CNContactFetchRequestEffectiveKeyExtender extendRequestedKeys:self->_keysToFetch shouldUnifyResults:[(CNContactFetchRequest *)self unifyResults] sortOrder:[(CNContactFetchRequest *)self sortOrder]];
    v3 = [MEMORY[0x1E695DFD8] setWithArray:v2];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:@"CNContactFetchRequestAPIMisuseException" format:@"Do not pass a nil array for keysToFetch"];
    v3 = 0;
  }

  return v3;
}

+ (unint64_t)makeSignpostId
{
  v2 = +[CNAPITriageLogger os_log];
  v3 = os_signpost_id_generate(v2);

  return v3;
}

+ (unint64_t)makeSerialNumber
{
  if (makeSerialNumber_cn_once_token_0 != -1)
  {
    +[CNContactFetchRequest makeSerialNumber];
  }

  v3 = makeSerialNumber_cn_once_object_0;

  return [v3 nextUnsignedInteger];
}

uint64_t __41__CNContactFetchRequest_makeSerialNumber__block_invoke()
{
  makeSerialNumber_cn_once_object_0 = objc_alloc_init(MEMORY[0x1E6996630]);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)requiresMeContactAuthorization
{
  effectivePredicate = [(CNContactFetchRequest *)self effectivePredicate];
  v3 = +[CNContact predicateForMeContact];
  v4 = [effectivePredicate isEqual:v3];

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  predicate = [(CNContactFetchRequest *)self predicate];
  v5 = [v3 appendName:@"predicate" object:predicate];

  keysToFetch = [(CNContactFetchRequest *)self keysToFetch];
  v7 = [v3 appendName:@"keysToFetch" object:keysToFetch];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactFetchRequest unifyResults](self, "unifyResults")}];
  v9 = [v3 appendName:@"unifyResults" object:v8];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CNContactFetchRequest sortOrder](self, "sortOrder")}];
  v11 = [v3 appendName:@"sortOrder" object:v10];

  v12 = [v3 appendName:@"serialNumber" u_int64_t:self->_serialNumber];
  v13 = [v3 appendName:@"alwaysUnifyLabeledValues" BOOLValue:{-[CNContactFetchRequest alwaysUnifyLabeledValues](self, "alwaysUnifyLabeledValues")}];
  build = [v3 build];

  return build;
}

- (CNContactFetchRequest)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNContactFetchRequest)initWithKeysToFetch:(NSArray *)keysToFetch
{
  v4 = keysToFetch;
  v10.receiver = self;
  v10.super_class = CNContactFetchRequest;
  v5 = [(CNContactFetchRequest *)&v10 init];
  if (v5)
  {
    v6 = [(NSArray *)v4 copy];
    v7 = v5->_keysToFetch;
    v5->_keysToFetch = v6;

    v5->_unifyResults = 1;
    v5->_alwaysUnifyLabeledValues = 1;
    v5->_sortOrder = 0;
    v5->_serialNumber = [objc_opt_class() makeSerialNumber];
    v5->_signpostId = [objc_opt_class() makeSignpostId];
    v8 = v5;
  }

  return v5;
}

- (void)setContactBatchCount:(int64_t)count
{
  if (self->_contactBatchCount != count)
  {
    self->_contactBatchCount = count;
    [(CNContactFetchRequest *)self setBatchSize:?];

    [(CNContactFetchRequest *)self setDecoderBatchSize:count];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithKeysToFetch:self->_keysToFetch];
  v5 = [(NSPredicate *)self->_predicate copy];
  v6 = *(v4 + 24);
  *(v4 + 24) = v5;

  *(v4 + 18) = self->_unifyResults;
  *(v4 + 23) = self->_alwaysUnifyLabeledValues;
  *(v4 + 17) = self->_mutableObjects;
  *(v4 + 40) = self->_sortOrder;
  *(v4 + 48) = self->_batchSize;
  *(v4 + 21) = self->_allowsBatching;
  *(v4 + 56) = self->_decoderBatchSize;
  return v4;
}

- (CNContactFetchRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = +[CNSecureCodingClassSets keyDescriptorClasses];
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"keysToFetch"];

  if (v6)
  {
    v7 = [(CNContactFetchRequest *)self initWithKeysToFetch:v6];
    if (v7)
    {
      v7->_unifyResults = [coderCopy decodeBoolForKey:@"unifyResults"];
      v7->_alwaysUnifyLabeledValues = [coderCopy decodeBoolForKey:@"alwaysUnifyLabeledValues"];
      v7->_sortOrder = [coderCopy decodeIntegerForKey:@"sortOrder"];
      v7->_rankSort = [coderCopy decodeIntegerForKey:@"rankSort"] != 0;
      v7->_onlyMainStore = [coderCopy decodeBoolForKey:@"onlyMainStore"];
      v7->_mutableObjects = [coderCopy decodeBoolForKey:@"mutableObjects"];
      v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"predicate"];
      v10 = [v9 copy];
      predicate = v7->_predicate;
      v7->_predicate = v10;

      v7->_batchSize = [coderCopy decodeIntegerForKey:@"batchSize"];
      v7->_decoderBatchSize = [coderCopy decodeIntegerForKey:@"decoderBatchSize"];
    }
  }

  else
  {
    v12 = os_log_create("com.apple.contacts", "data-access-error");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CNContactFetchRequest initWithCoder:v12];
    }

    v13 = [CNErrorFactory errorWithCode:2 userInfo:0];
    [coderCopy failWithError:v13];

    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  keysToFetch = self->_keysToFetch;
  v6 = coderCopy;
  if (!keysToFetch)
  {
    [MEMORY[0x1E695DF30] raise:@"CNContactFetchRequestAPIMisuseException" format:@"Do not pass a nil array for keysToFetch"];
    coderCopy = v6;
    keysToFetch = self->_keysToFetch;
  }

  [coderCopy encodeObject:keysToFetch forKey:@"keysToFetch"];
  [v6 encodeBool:self->_unifyResults forKey:@"unifyResults"];
  [v6 encodeBool:self->_alwaysUnifyLabeledValues forKey:@"alwaysUnifyLabeledValues"];
  [v6 encodeInteger:self->_sortOrder forKey:@"sortOrder"];
  [v6 encodeBool:self->_onlyMainStore forKey:@"onlyMainStore"];
  [v6 encodeObject:self->_predicate forKey:@"predicate"];
  [v6 encodeBool:self->_mutableObjects forKey:@"mutableObjects"];
  [v6 encodeBool:self->_rankSort forKey:@"rankSort"];
  [v6 encodeInteger:self->_decoderBatchSize forKey:@"decoderBatchSize"];
  [v6 encodeInteger:self->_batchSize forKey:@"batchSize"];
}

@end