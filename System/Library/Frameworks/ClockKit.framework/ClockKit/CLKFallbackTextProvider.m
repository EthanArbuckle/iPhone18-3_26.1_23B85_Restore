@interface CLKFallbackTextProvider
+ (id)providerWithProviders:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CLKFallbackTextProvider)initWithCoder:(id)a3;
- (CLKFallbackTextProvider)initWithTextProviders:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)_updateFrequency;
- (int64_t)timeTravelUpdateFrequency;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLKFallbackTextProvider

- (CLKFallbackTextProvider)initWithTextProviders:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CLKFallbackTextProvider;
  v5 = [(CLKTextProvider *)&v12 initPrivate];
  if (v5)
  {
    v6 = [v4 copy];
    textProviders = v5->_textProviders;
    v5->_textProviders = v6;

    v8 = v5->_textProviders;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__CLKFallbackTextProvider_initWithTextProviders___block_invoke;
    v10[3] = &unk_278A1F168;
    v11 = v5;
    [(NSArray *)v8 enumerateObjectsUsingBlock:v10];
  }

  return v5;
}

uint64_t __49__CLKFallbackTextProvider_initWithTextProviders___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 paused];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 32);

    return [v4 setPaused:0];
  }

  return result;
}

+ (id)providerWithProviders:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithTextProviders:v4];

  return v5;
}

- (int64_t)timeTravelUpdateFrequency
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  textProviders = self->_textProviders;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__CLKFallbackTextProvider_timeTravelUpdateFrequency__block_invoke;
  v5[3] = &unk_278A1F190;
  v5[4] = &v6;
  [(NSArray *)textProviders enumerateObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __52__CLKFallbackTextProvider_timeTravelUpdateFrequency__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  result = [a2 timeTravelUpdateFrequency];
  if (v3 <= result)
  {
    v5 = result;
  }

  else
  {
    v5 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

- (int64_t)_updateFrequency
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  textProviders = self->_textProviders;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__CLKFallbackTextProvider__updateFrequency__block_invoke;
  v5[3] = &unk_278A1F190;
  v5[4] = &v6;
  [(NSArray *)textProviders enumerateObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __43__CLKFallbackTextProvider__updateFrequency__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  result = [a2 _updateFrequency];
  if (v3 <= result)
  {
    v5 = result;
  }

  else
  {
    v5 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = CLKFallbackTextProvider;
  v4 = [(CLKTextProvider *)&v8 copyWithZone:a3];
  if (v4 != self)
  {
    v5 = [(NSArray *)self->_textProviders copy];
    textProviders = v4->_textProviders;
    v4->_textProviders = v5;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && (v7.receiver = self, v7.super_class = CLKFallbackTextProvider, [(CLKTextProvider *)&v7 isEqual:v4]) && [(NSArray *)self->_textProviders isEqualToArray:v4[16]];

  return v5;
}

- (CLKFallbackTextProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CLKFallbackTextProvider;
  v5 = [(CLKTextProvider *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"textProviders"];
    textProviders = v5->_textProviders;
    v5->_textProviders = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CLKFallbackTextProvider;
  v4 = a3;
  [(CLKTextProvider *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_textProviders forKey:{@"textProviders", v5.receiver, v5.super_class}];
}

@end