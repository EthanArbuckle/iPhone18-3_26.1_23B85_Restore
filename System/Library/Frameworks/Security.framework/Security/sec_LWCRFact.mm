@interface sec_LWCRFact
+ (id)BOOLFact:(BOOL)fact;
+ (id)dataFact:(id)fact;
+ (id)entitlementsFact:(id)fact;
+ (id)integerFact:(id)fact;
+ (id)stringFact:(id)fact;
- (id).cxx_construct;
- (void)dealloc;
@end

@implementation sec_LWCRFact

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (void)dealloc
{
  if (self->fact.type == 1)
  {
    SecCEReleaseContext(&self->fact.value);
  }

  v3.receiver = self;
  v3.super_class = sec_LWCRFact;
  [(sec_LWCRFact *)&v3 dealloc];
}

+ (id)dataFact:(id)fact
{
  factCopy = fact;
  v4 = objc_alloc_init(sec_LWCRFact);
  v4->fact.type = 6;
  v5 = [factCopy copy];
  dataFactStorage = v4->dataFactStorage;
  v4->dataFactStorage = v5;

  v4->fact.value.integer = [(NSData *)v4->dataFactStorage bytes];
  v4->fact.value.string.length = [(NSData *)v4->dataFactStorage length];

  return v4;
}

+ (id)entitlementsFact:(id)fact
{
  factCopy = fact;
  v4 = objc_alloc_init(sec_LWCRFact);
  v4->fact.type = 1;
  v5 = CESerializeCFDictionary();
  v6 = MEMORY[0x1E69E50B8];
  if (v5 == *MEMORY[0x1E69E50B8])
  {
    dataFactStorage = v4->dataFactStorage;
    v4->dataFactStorage = 0;

    v9 = SecCEContextFromCFData(v4->dataFactStorage, &v4->fact.value.integer);
    v10 = v9 == *v6;
    if (v9 == *v6)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }

    if (v10)
    {
      v4 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)stringFact:(id)fact
{
  factCopy = fact;
  v4 = objc_alloc_init(sec_LWCRFact);
  v4->fact.type = 4;
  v5 = [factCopy copy];
  stringFactStorage = v4->stringFactStorage;
  v4->stringFactStorage = v5;

  v4->fact.value.integer = [(NSString *)v4->stringFactStorage UTF8String];
  v4->fact.value.string.length = strlen([(NSString *)v4->stringFactStorage UTF8String]);

  return v4;
}

+ (id)integerFact:(id)fact
{
  factCopy = fact;
  v4 = objc_alloc_init(sec_LWCRFact);
  v4->fact.type = 3;
  v4->fact.value.integer = [factCopy longLongValue];

  return v4;
}

+ (id)BOOLFact:(BOOL)fact
{
  factCopy = fact;
  v4 = objc_alloc_init(sec_LWCRFact);
  v4->fact.type = 5;
  v4->fact.value.integer = factCopy;

  return v4;
}

@end