@interface CNContactUnificationOptions
+ (CNContactUnificationOptions)sharedInstance;
- (CNContactUnificationOptions)init;
- (CNContactUnificationOptions)initWithContactFetchRequest:(id)request;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CNContactUnificationOptions

- (CNContactUnificationOptions)init
{
  v6.receiver = self;
  v6.super_class = CNContactUnificationOptions;
  v2 = [(CNContactUnificationOptions *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_shouldIncludeMainStoreContacts = 257;
    v2->_labeledValueUnificationThreshold = 0x7FFFFFFFFFFFFFFFLL;
    v4 = v2;
  }

  return v3;
}

+ (CNContactUnificationOptions)sharedInstance
{
  if (sharedInstance_cn_once_token_0_0 != -1)
  {
    +[CNContactUnificationOptions sharedInstance];
  }

  v3 = sharedInstance_cn_once_object_0_0;

  return v3;
}

uint64_t __45__CNContactUnificationOptions_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CNContactUnificationOptions);
  v1 = sharedInstance_cn_once_object_0_0;
  sharedInstance_cn_once_object_0_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNContactUnificationOptions)initWithContactFetchRequest:(id)request
{
  requestCopy = request;
  v5 = [(CNContactUnificationOptions *)self init];
  if (v5)
  {
    alwaysUnifyLabeledValues = [requestCopy alwaysUnifyLabeledValues];
    v7 = 20;
    if (alwaysUnifyLabeledValues)
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_labeledValueUnificationThreshold = v7;
    v8 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    *(result + 8) = self->_shouldIncludeMainStoreContacts;
    *(result + 9) = self->_shouldFreezeMutableContacts;
    *(result + 2) = self->_labeledValueUnificationThreshold;
  }

  return result;
}

@end