@interface CLKComplicationTemplate
+ (BOOL)_arrayIsCompatibleWithJSONSerialization:(id)a3;
+ (BOOL)dictionaryIsCompatibleWithJSONSerialization:(id)a3;
+ (CLKComplicationTemplate)complicationTemplateWithJSONObjectRepresentation:(id)a3 bundle:(id)a4 purpose:(unint64_t)a5;
+ (CLKComplicationTemplate)new;
+ (Class)_superClassFromCompatibleJSONSerializationClass:(Class)a3;
+ (id)_createJSONRepresentationFromArray:(id)a3 bundlePath:(id)a4 purpose:(unint64_t)a5;
+ (id)_jsonObjectRepresentationFromObject:(id)a3 bundlePath:(id)a4 purpose:(unint64_t)a5;
+ (id)_jsonRepresentationFromValue:(id)a3 bundlePath:(id)a4 purpose:(unint64_t)a5;
+ (id)_secureCodingRepresentationOfEmbeddedObjectsArray:(id)a3 bundlePath:(id)a4;
+ (id)_secureCodingRepresentationOfEmbeddedObjectsDictionary:(id)a3 bundlePath:(id)a4;
+ (id)_secureCodingRepresentationOfValue:(id)a3 bundlePath:(id)a4;
+ (id)classesCompatibleWithJSONSerialization;
+ (id)createJSONRepresentationFromDictionary:(id)a3 bundlePath:(id)a4 purpose:(unint64_t)a5;
+ (id)objectFromJSON:(id)a3 bundle:(id)a4;
- (BOOL)hasSubMinuteUpdateRate;
- (BOOL)isEqual:(id)a3;
- (BOOL)validateWithError:(id *)a3;
- (CLKComplicationTemplate)initWithCoder:(id)a3;
- (id)JSONObjectRepresentationWritingResourcesToBundlePath:(id)a3 purpose:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)finalizedCopy;
- (id)initPrivate;
- (int64_t)compatibleFamily;
- (int64_t)timeTravelUpdateFrequency;
- (unint64_t)hash;
- (void)_enumerateAllBasicKeysWithBlock:(id)a3;
- (void)_enumerateScalarKeysWithBlock:(id)a3;
- (void)_setProvidersPaused:(BOOL)a3;
- (void)beginUpdatesForClient:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)endUpdatesForClient:(id)a3;
- (void)enumerateEmbeddedTemplateKeysWithBlock:(id)a3;
- (void)enumerateImageProviderKeysWithBlock:(id)a3;
- (void)enumerateProgressProviderKeysWithBlock:(id)a3;
- (void)enumerateSwiftUIViewDataKeysWithBlock:(id)a3;
- (void)enumerateTextProviderKeysWithBlock:(id)a3;
- (void)finalize;
- (void)maxSDKSize:(CGSize *)a3 deviceSize:(CGSize *)a4 forImageProviderKey:(id)a5;
- (void)setSDKVersionFromLS:(id)a3;
- (void)setSdkVersion:(int64_t)a3;
@end

@implementation CLKComplicationTemplate

- (id)initPrivate
{
  v6.receiver = self;
  v6.super_class = CLKComplicationTemplate;
  v2 = [(CLKComplicationTemplate *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    creationDate = v2->_creationDate;
    v2->_creationDate = v3;
  }

  return v2;
}

+ (CLKComplicationTemplate)new
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___CLKComplicationTemplate;
  return objc_msgSendSuper2(&v3, "new");
}

- (void)beginUpdatesForClient:(id)a3
{
  v4 = a3;
  activeClients = self->_activeClients;
  v8 = v4;
  if (!activeClients)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_activeClients;
    self->_activeClients = v6;

    v4 = v8;
    activeClients = self->_activeClients;
  }

  [(NSHashTable *)activeClients addObject:v4];
  [(CLKComplicationTemplate *)self _setProvidersPaused:0];
}

- (void)endUpdatesForClient:(id)a3
{
  [(NSHashTable *)self->_activeClients removeObject:a3];
  if (![(NSHashTable *)self->_activeClients count])
  {

    [(CLKComplicationTemplate *)self _setProvidersPaused:1];
  }
}

- (BOOL)hasSubMinuteUpdateRate
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__CLKComplicationTemplate_hasSubMinuteUpdateRate__block_invoke;
  v8[3] = &unk_278A1E818;
  v8[4] = self;
  v8[5] = &v9;
  [(CLKComplicationTemplate *)self _enumerateTextProviderKeysWithBlock:v8];
  if (v10[3] & 1) != 0 || (v7[0] = MEMORY[0x277D85DD0], v7[1] = 3221225472, v7[2] = __49__CLKComplicationTemplate_hasSubMinuteUpdateRate__block_invoke_2, v7[3] = &unk_278A1E818, v7[4] = self, v7[5] = &v9, [(CLKComplicationTemplate *)self _enumerateGaugeProviderKeysWithBlock:v7], (v10[3]) || (v6[0] = MEMORY[0x277D85DD0], v6[1] = 3221225472, v6[2] = __49__CLKComplicationTemplate_hasSubMinuteUpdateRate__block_invoke_3, v6[3] = &unk_278A1E818, v6[4] = self, v6[5] = &v9, [(CLKComplicationTemplate *)self _enumerateProgressProviderKeysWithBlock:v6], (v10[3]) || (v5[0] = MEMORY[0x277D85DD0], v5[1] = 3221225472, v5[2] = __49__CLKComplicationTemplate_hasSubMinuteUpdateRate__block_invoke_4, v5[3] = &unk_278A1E818, v5[4] = self, v5[5] = &v9, [(CLKComplicationTemplate *)self _enumerateEmbeddedTemplateKeysWithBlock:v5], (v10[3]))
  {
    v3 = 1;
  }

  else
  {
    [(CLKComplicationTemplate *)self _enumerateSwiftUIViewDataKeysWithBlock:&__block_literal_global_1];
    v3 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);
  return v3 & 1;
}

void __49__CLKComplicationTemplate_hasSubMinuteUpdateRate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = [*(a1 + 32) valueForKey:a2];
  if ([v7 updateFrequency] >= 2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 1;
  }
}

void __49__CLKComplicationTemplate_hasSubMinuteUpdateRate__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = [*(a1 + 32) valueForKey:a2];
  if ([v7 needsTimerUpdates])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 1;
  }
}

void __49__CLKComplicationTemplate_hasSubMinuteUpdateRate__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = [*(a1 + 32) valueForKey:a2];
  if ([v7 needsTimerUpdates])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 1;
  }
}

void __49__CLKComplicationTemplate_hasSubMinuteUpdateRate__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = [*(a1 + 32) valueForKey:a2];
  if ([v7 hasSubMinuteUpdateRate])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 1;
  }
}

- (void)setSDKVersionFromLS:(id)a3
{
  if (a3)
  {
    [a3 compare:@"15.0" options:64];
  }

  [(CLKComplicationTemplate *)self setSdkVersion:?];
}

- (void)setSdkVersion:(int64_t)a3
{
  if (!self->_finalized)
  {
    self->_sdkVersion = a3;
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __41__CLKComplicationTemplate_setSdkVersion___block_invoke;
    v3[3] = &unk_278A1E860;
    v3[4] = self;
    v3[5] = a3;
    [(CLKComplicationTemplate *)self _enumerateEmbeddedTemplateKeysWithBlock:v3];
  }
}

void __41__CLKComplicationTemplate_setSdkVersion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) valueForKey:a2];
  [v3 setSdkVersion:*(a1 + 40)];
}

- (int64_t)timeTravelUpdateFrequency
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__CLKComplicationTemplate_timeTravelUpdateFrequency__block_invoke;
  v7[3] = &unk_278A1E818;
  v7[4] = self;
  v7[5] = &v8;
  [(CLKComplicationTemplate *)self _enumerateTextProviderKeysWithBlock:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__CLKComplicationTemplate_timeTravelUpdateFrequency__block_invoke_2;
  v6[3] = &unk_278A1E818;
  v6[4] = self;
  v6[5] = &v8;
  [(CLKComplicationTemplate *)self _enumerateProgressProviderKeysWithBlock:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__CLKComplicationTemplate_timeTravelUpdateFrequency__block_invoke_3;
  v5[3] = &unk_278A1E818;
  v5[4] = self;
  v5[5] = &v8;
  [(CLKComplicationTemplate *)self _enumerateEmbeddedTemplateKeysWithBlock:v5];
  v3 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v3;
}

void __52__CLKComplicationTemplate_timeTravelUpdateFrequency__block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) valueForKey:a2];
  v3 = *(*(*(a1 + 40) + 8) + 24);
  v4 = [v6 timeTravelUpdateFrequency];
  if (v3 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  *(*(*(a1 + 40) + 8) + 24) = v5;
}

void __52__CLKComplicationTemplate_timeTravelUpdateFrequency__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) valueForKey:a2];
  v3 = *(*(*(a1 + 40) + 8) + 24);
  v4 = [v6 timeTravelUpdateFrequency];
  if (v3 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  *(*(*(a1 + 40) + 8) + 24) = v5;
}

void __52__CLKComplicationTemplate_timeTravelUpdateFrequency__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) valueForKey:a2];
  v3 = *(*(*(a1 + 40) + 8) + 24);
  v4 = [v6 timeTravelUpdateFrequency];
  if (v3 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  *(*(*(a1 + 40) + 8) + 24) = v5;
}

- (BOOL)validateWithError:(id *)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v24 = 0;
  v25[0] = &v24;
  v25[1] = 0x3032000000;
  v25[2] = __Block_byref_object_copy_;
  v25[3] = __Block_byref_object_dispose_;
  v26 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __45__CLKComplicationTemplate_validateWithError___block_invoke;
  v19[3] = &unk_278A1E888;
  v19[4] = self;
  v19[5] = &v24;
  v19[6] = &v20;
  v19[7] = &v27;
  [(CLKComplicationTemplate *)self _enumerateTextProviderKeysWithBlock:v19];
  if (*(v28 + 24) != 1 || (v18[0] = MEMORY[0x277D85DD0], v18[1] = 3221225472, v18[2] = __45__CLKComplicationTemplate_validateWithError___block_invoke_2, v18[3] = &unk_278A1E8B0, v18[4] = self, v18[5] = &v24, v18[6] = &v20, v18[7] = &v27, [(CLKComplicationTemplate *)self _enumerateImageProviderKeysWithBlock:v18], (v28[3] & 1) == 0) || (v17[0] = MEMORY[0x277D85DD0], v17[1] = 3221225472, v17[2] = __45__CLKComplicationTemplate_validateWithError___block_invoke_3, v17[3] = &unk_278A1E888, v17[4] = self, v17[5] = &v24, v17[6] = &v20, v17[7] = &v27, [(CLKComplicationTemplate *)self _enumerateProgressProviderKeysWithBlock:v17], (v28[3] & 1) == 0) || (v16[0] = MEMORY[0x277D85DD0], v16[1] = 3221225472, v16[2] = __45__CLKComplicationTemplate_validateWithError___block_invoke_4, v16[3] = &unk_278A1E8D8, v16[4] = self, v16[5] = &v24, v16[6] = &v20, v16[7] = &v27, [(CLKComplicationTemplate *)self _enumerateIntegerKeysWithBlock:v16], (v28[3] & 1) == 0) || (v15[0] = MEMORY[0x277D85DD0], v15[1] = 3221225472, v15[2] = __45__CLKComplicationTemplate_validateWithError___block_invoke_5, v15[3] = &unk_278A1E900, v15[4] = self, v15[5] = &v24, v15[6] = &v20, v15[7] = &v27, [(CLKComplicationTemplate *)self _enumerateFloatKeysWithBlock:v15], (v28[3] & 1) == 0) || (v14[0] = MEMORY[0x277D85DD0], v14[1] = 3221225472, v14[2] = __45__CLKComplicationTemplate_validateWithError___block_invoke_6, v14[3] = &unk_278A1E888, v14[4] = self, v14[5] = &v24, v14[6] = &v20, v14[7] = &v27, [(CLKComplicationTemplate *)self _enumerateGaugeProviderKeysWithBlock:v14], (v28[3] & 1) == 0) || (v13[0] = MEMORY[0x277D85DD0], v13[1] = 3221225472, v13[2] = __45__CLKComplicationTemplate_validateWithError___block_invoke_7, v13[3] = &unk_278A1E928, v13[4] = self, v13[5] = &v24, v13[6] = &v20, v13[7] = &v27, [(CLKComplicationTemplate *)self _enumerateFullColorImageProviderKeysWithBlock:v13], (v28[3] & 1) == 0) || (v12[0] = MEMORY[0x277D85DD0], v12[1] = 3221225472, v12[2] = __45__CLKComplicationTemplate_validateWithError___block_invoke_8, v12[3] = &unk_278A1E950, v12[4] = self, v12[5] = &v24, v12[6] = &v20, v12[7] = &v27, v12[8] = a3, [(CLKComplicationTemplate *)self _enumerateEmbeddedTemplateKeysWithBlock:v12], (v28[3] & 1) == 0) || (v11[0] = MEMORY[0x277D85DD0], v11[1] = 3221225472, v11[2] = __45__CLKComplicationTemplate_validateWithError___block_invoke_9, v11[3] = &unk_278A1E9A0, v11[4] = self, v11[5] = &v27, v11[6] = &v24, v11[7] = &v20, v11[8] = a3, [(CLKComplicationTemplate *)self _enumerateSwiftUIViewKeysWithBlock:v11], (v28[3] & 1) == 0))
  {
    if (*(v25[0] + 40))
    {
      if (*(v21 + 24) == 1)
      {
        v5 = CLKLoggingObjectForDomain(10);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          [(CLKComplicationTemplate *)v25 validateWithError:v5];
        }
      }

      if (a3 && !*a3)
      {
        v6 = MEMORY[0x277CCA9B8];
        v7 = *(v25[0] + 40);
        v31 = *MEMORY[0x277CCA450];
        v32[0] = v7;
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
        *a3 = [v6 errorWithDomain:@"CLKComplicationTimelineErrorDomain" code:2 userInfo:v8];
      }
    }
  }

  v9 = *(v28 + 24);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v27, 8);
  return v9 & 1;
}

void __45__CLKComplicationTemplate_validateWithError___block_invoke(uint64_t a1, void *a2, char a3, uint64_t a4, _BYTE *a5)
{
  v17 = a2;
  v8 = [*(a1 + 32) valueForKey:?];
  v9 = v8;
  if (!v8 && (a3 & 1) == 0)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = [v10 stringWithFormat:@"Property '%@' is not set on %@. This property must not be nil when passing %@ to the complication data handler.", v17, v11, objc_opt_class()];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *(*(*(a1 + 48) + 8) + 24) = 1;
    v15 = a1 + 56;
LABEL_4:
    *(*(*v15 + 8) + 24) = 0;
    *a5 = 1;
    goto LABEL_5;
  }

  if (v8)
  {
    v16 = *(a1 + 56);
    v15 = a1 + 56;
    if ((*(*(v16 + 8) + 24) & 1) != 0 && ([v8 validate] & 1) == 0)
    {
      goto LABEL_4;
    }
  }

LABEL_5:
}

void __45__CLKComplicationTemplate_validateWithError___block_invoke_2(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v20 = a2;
  v11 = [*(a1 + 32) valueForKey:?];
  v12 = v11;
  if (!v11 && (a3 & 1) == 0)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = objc_opt_class();
    v15 = [v13 stringWithFormat:@"Property '%@' is not set on %@. This property must not be nil when passing %@ to the complication data handler.", v20, v14, objc_opt_class()];
    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    *(*(*(a1 + 48) + 8) + 24) = 1;
    v18 = a1 + 56;
LABEL_4:
    *(*(*v18 + 8) + 24) = 0;
    *a8 = 1;
    goto LABEL_5;
  }

  if (v11)
  {
    v19 = *(a1 + 56);
    v18 = a1 + 56;
    if ((*(*(v19 + 8) + 24) & 1) != 0 && ([v11 validate] & 1) == 0)
    {
      goto LABEL_4;
    }
  }

LABEL_5:
}

void __45__CLKComplicationTemplate_validateWithError___block_invoke_3(uint64_t a1, void *a2, char a3, uint64_t a4, _BYTE *a5)
{
  v17 = a2;
  v8 = [*(a1 + 32) valueForKey:?];
  v9 = v8;
  if (!v8 && (a3 & 1) == 0)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = [v10 stringWithFormat:@"Property '%@' is not set on %@. This property must not be nil when passing %@ to the complication data handler.", v17, v11, objc_opt_class()];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *(*(*(a1 + 48) + 8) + 24) = 1;
    v15 = a1 + 56;
LABEL_4:
    *(*(*v15 + 8) + 24) = 0;
    *a5 = 1;
    goto LABEL_5;
  }

  if (v8)
  {
    v16 = *(a1 + 56);
    v15 = a1 + 56;
    if ((*(*(v16 + 8) + 24) & 1) != 0 && ([v8 validate] & 1) == 0)
    {
      goto LABEL_4;
    }
  }

LABEL_5:
}

void __45__CLKComplicationTemplate_validateWithError___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v17 = a2;
  v8 = a4;
  v9 = [*(a1 + 32) valueForKey:v17];
  v10 = [v9 integerValue];

  if (v8 && (v8[2](v8, v10) & 1) == 0)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = objc_opt_class();
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
    v14 = [v11 stringWithFormat:@"%@: invalid value for %@: %@", v12, v17, v13];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    *(*(*(a1 + 48) + 8) + 24) = 0;
    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a5 = 1;
  }
}

void __45__CLKComplicationTemplate_validateWithError___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v19 = a2;
  v8 = a4;
  v9 = [*(a1 + 32) valueForKey:v19];
  [v9 floatValue];
  v11 = v10;

  if (v8)
  {
    v12 = v11;
    if ((v8[2](v8, v12) & 1) == 0)
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = objc_opt_class();
      v15 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
      v16 = [v13 stringWithFormat:@"%@: invalid value for %@: %@", v14, v19, v15];
      v17 = *(*(a1 + 40) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      *(*(*(a1 + 48) + 8) + 24) = 0;
      *(*(*(a1 + 56) + 8) + 24) = 0;
      *a5 = 1;
    }
  }
}

void __45__CLKComplicationTemplate_validateWithError___block_invoke_6(uint64_t a1, void *a2, char a3, uint64_t a4, _BYTE *a5)
{
  v17 = a2;
  v8 = [*(a1 + 32) valueForKey:?];
  v9 = v8;
  if (!v8 && (a3 & 1) == 0)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = [v10 stringWithFormat:@"Property '%@' is not set on %@. This property must not be nil when passing %@ to the complication data handler.", v17, v11, objc_opt_class()];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *(*(*(a1 + 48) + 8) + 24) = 1;
    v15 = a1 + 56;
LABEL_4:
    *(*(*v15 + 8) + 24) = 0;
    *a5 = 1;
    goto LABEL_5;
  }

  if (v8)
  {
    v16 = *(a1 + 56);
    v15 = a1 + 56;
    if ((*(*(v16 + 8) + 24) & 1) != 0 && ([v8 validate] & 1) == 0)
    {
      goto LABEL_4;
    }
  }

LABEL_5:
}

void __45__CLKComplicationTemplate_validateWithError___block_invoke_7(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v19 = a2;
  v10 = [*(a1 + 32) valueForKey:?];
  v11 = v10;
  if (!v10 && (a3 & 1) == 0)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = objc_opt_class();
    v14 = [v12 stringWithFormat:@"Property '%@' is not set on %@. This property must not be nil when passing %@ to the complication data handler.", v19, v13, objc_opt_class()];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    *(*(*(a1 + 48) + 8) + 24) = 1;
    v17 = a1 + 56;
LABEL_4:
    *(*(*v17 + 8) + 24) = 0;
    *a7 = 1;
    goto LABEL_5;
  }

  if (v10)
  {
    v18 = *(a1 + 56);
    v17 = a1 + 56;
    if ((*(*(v18 + 8) + 24) & 1) != 0 && ([v10 validate] & 1) == 0)
    {
      goto LABEL_4;
    }
  }

LABEL_5:
}

void __45__CLKComplicationTemplate_validateWithError___block_invoke_8(uint64_t a1, void *a2, char a3, uint64_t a4, _BYTE *a5)
{
  v16 = a2;
  v8 = [*(a1 + 32) valueForKey:?];
  v9 = v8;
  if (!v8 && (a3 & 1) == 0)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = [v10 stringWithFormat:@"Property '%@' is not set on %@. This property must not be nil when passing %@ to the complication data handler.", v16, v11, objc_opt_class()];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *(*(*(a1 + 48) + 8) + 24) = 1;
    v15 = a1 + 56;
LABEL_4:
    *(*(*v15 + 8) + 24) = 0;
    *a5 = 1;
    goto LABEL_5;
  }

  if (v8)
  {
    v15 = a1 + 56;
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) != 0 && ([v8 validateWithError:*(a1 + 64)] & 1) == 0)
    {
      goto LABEL_4;
    }
  }

LABEL_5:
}

void __45__CLKComplicationTemplate_validateWithError___block_invoke_9(uint64_t a1, void *a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, _BYTE *a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16)
{
  v49 = *MEMORY[0x277D85DE8];
  v23 = a2;
  if (([*(a1 + 32) _validateSwiftUIViewForKey:v23 withMaxSDKSize:*(a1 + 64) maxDeviceSize:a3 cornerRadius:a4 safeAreaInsets:a5 error:{a6, a7, a14, a15, a16}] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a10 = 1;
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1 && ComplicationDisplayLibraryCore() && (([*(a1 + 32) renderForPreviews] & 1) != 0 || CLKIsBeingDebugged()))
  {
    v24 = [*(a1 + 32) viewDataForSwiftUIViewKey:v23];
    if (!v24)
    {
LABEL_22:

      goto LABEL_23;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v47 = 0x2050000000;
    v25 = get_ClientRendererClass_softClass;
    v48 = get_ClientRendererClass_softClass;
    if (!get_ClientRendererClass_softClass)
    {
      v41 = MEMORY[0x277D85DD0];
      v42 = 3221225472;
      v43 = __get_ClientRendererClass_block_invoke;
      v44 = &unk_278A1E6A0;
      p_buf = &buf;
      __get_ClientRendererClass_block_invoke(&v41);
      v25 = *(*(&buf + 1) + 24);
    }

    v26 = v25;
    _Block_object_dispose(&buf, 8);
    v27 = objc_alloc_init(v25);
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v28 = 5;
    do
    {
      v29 = +[CLKDevice currentDevice];
      [v29 screenScale];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __45__CLKComplicationTemplate_validateWithError___block_invoke_10;
      v40[3] = &unk_278A1E978;
      v40[4] = &v41;
      [v27 renderWithViewData:v24 scale:v40 handler:?];

      --v28;
    }

    while (v28);
    v30 = [*(a1 + 32) hasSubMinuteUpdateRate];
    v31 = CLKLoggingObjectForDomain(1);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(v42 + 24);
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v32;
      _os_log_impl(&dword_23702D000, v31, OS_LOG_TYPE_DEFAULT, "CLKComplicationTemplate: Complication took %gs to render", &buf, 0xCu);
    }

    v33 = *(v42 + 24);
    if (v33 <= 0.0166666667 || v33 >= 0.0333333333)
    {
      if (v33 >= 0.0333333333)
      {
        v34 = MEMORY[0x277CCACA8];
        v35 = objc_opt_class();
        v36 = @"The '%@' view on %@ took more than two frames to render. This template will be removed from the timeline.";
        goto LABEL_20;
      }
    }

    else if (v30)
    {
      v34 = MEMORY[0x277CCACA8];
      v35 = objc_opt_class();
      v36 = @"The '%@' view on %@ took more than one frame to render which is too long when using an auto-updating view. This template will be removed from the timeline.";
LABEL_20:
      v37 = [v34 stringWithFormat:v36, v23, v35];
      v38 = *(*(a1 + 48) + 8);
      v39 = *(v38 + 40);
      *(v38 + 40) = v37;

      *(*(*(a1 + 56) + 8) + 24) = 1;
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a10 = 1;
    }

    _Block_object_dispose(&v41, 8);

    goto LABEL_22;
  }

LABEL_23:
}

uint64_t __45__CLKComplicationTemplate_validateWithError___block_invoke_10(uint64_t result, double a2)
{
  v2 = *(*(result + 32) + 8);
  if (*(v2 + 24) < a2)
  {
    *(v2 + 24) = a2;
  }

  return result;
}

- (id)finalizedCopy
{
  if (self->_finalized)
  {
    v3 = self;
  }

  else
  {
    self->_finalizing = 1;
    v3 = [(CLKComplicationTemplate *)self copy];
    [(CLKComplicationTemplate *)v3 finalize];
    self->_finalizing = 0;
  }

  return v3;
}

- (void)finalize
{
  if (!self->_finalized)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __35__CLKComplicationTemplate_finalize__block_invoke;
    v9[3] = &unk_278A1E9C8;
    v9[4] = self;
    [(CLKComplicationTemplate *)self _enumerateTextProviderKeysWithBlock:v9];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__CLKComplicationTemplate_finalize__block_invoke_2;
    v8[3] = &unk_278A1E9F0;
    v8[4] = self;
    [(CLKComplicationTemplate *)self _enumerateImageProviderKeysWithBlock:v8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __35__CLKComplicationTemplate_finalize__block_invoke_3;
    v7[3] = &unk_278A1E9C8;
    v7[4] = self;
    [(CLKComplicationTemplate *)self _enumerateProgressProviderKeysWithBlock:v7];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __35__CLKComplicationTemplate_finalize__block_invoke_4;
    v6[3] = &unk_278A1E9C8;
    v6[4] = self;
    [(CLKComplicationTemplate *)self _enumerateGaugeProviderKeysWithBlock:v6];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __35__CLKComplicationTemplate_finalize__block_invoke_5;
    v5[3] = &unk_278A1EA18;
    v5[4] = self;
    [(CLKComplicationTemplate *)self _enumerateFullColorImageProviderKeysWithBlock:v5];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __35__CLKComplicationTemplate_finalize__block_invoke_6;
    v4[3] = &unk_278A1E9C8;
    v4[4] = self;
    [(CLKComplicationTemplate *)self _enumerateEmbeddedTemplateKeysWithBlock:v4];
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __35__CLKComplicationTemplate_finalize__block_invoke_7;
    v3[3] = &unk_278A1EA40;
    v3[4] = self;
    [(CLKComplicationTemplate *)self _enumerateSwiftUIViewKeysWithBlock:v3];
    self->_finalized = 1;
  }
}

void __35__CLKComplicationTemplate_finalize__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) valueForKey:a2];
  [v2 finalize];
}

void __35__CLKComplicationTemplate_finalize__block_invoke_2(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v20 = a9;
  v19 = [*(a1 + 32) valueForKey:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v19 finalizeWithPointSize:v20 weight:a10 maxSDKSize:a11 maxDeviceSize:a3 maskToCircle:{a4, a5, a6}];
  }

  else
  {
    [v19 finalizeWithMaxSDKSize:a11 maxDeviceSize:a3 maskToCircle:{a4, a5, a6}];
  }
}

void __35__CLKComplicationTemplate_finalize__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) valueForKey:a2];
  [v2 finalize];
}

void __35__CLKComplicationTemplate_finalize__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) valueForKey:a2];
  [v2 finalize];
}

void __35__CLKComplicationTemplate_finalize__block_invoke_5(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{
  v20 = a10;
  v19 = [*(a1 + 32) valueForKey:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v19 finalizeWithPointSize:v20 weight:a11 maxSDKSize:a3 maxDeviceSize:a4 cornerRadius:{a5, a6, a7}];
  }

  else
  {
    [v19 finalizeWithMaxSDKSize:a3 maxDeviceSize:a4 cornerRadius:{a5, a6, a7}];
  }
}

void __35__CLKComplicationTemplate_finalize__block_invoke_6(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) valueForKey:?];
  v4 = [v3 tintColor];

  if (!v4)
  {
    v5 = [*(a1 + 32) tintColor];
    [v3 setTintColor:v5];
  }

  if ([v3 finalizedCopyClass])
  {
    v6 = [v3 finalizedCopy];

    [*(a1 + 32) setValue:v6 forKey:v7];
    v3 = v6;
  }

  else
  {
    [v3 finalize];
  }
}

- (void)maxSDKSize:(CGSize *)a3 deviceSize:(CGSize *)a4 forImageProviderKey:(id)a5
{
  v8 = a5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __69__CLKComplicationTemplate_maxSDKSize_deviceSize_forImageProviderKey___block_invoke;
  v19[3] = &unk_278A1EA68;
  v21 = &v24;
  v9 = v8;
  v20 = v9;
  v22 = a3;
  v23 = a4;
  [(CLKComplicationTemplate *)self _enumerateImageProviderKeysWithBlock:v19];
  if ((v25[3] & 1) == 0)
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __69__CLKComplicationTemplate_maxSDKSize_deviceSize_forImageProviderKey___block_invoke_2;
    v14 = &unk_278A1EA90;
    v16 = &v24;
    v10 = v9;
    v15 = v10;
    v17 = a3;
    v18 = a4;
    [(CLKComplicationTemplate *)self _enumerateFullColorImageProviderKeysWithBlock:&v11];

    if ((v25[3] & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Template class %@: unknown image provider key %@", objc_opt_class(), v10, v11, v12, v13, v14}];
    }
  }

  _Block_object_dispose(&v24, 8);
}

void __69__CLKComplicationTemplate_maxSDKSize_deviceSize_forImageProviderKey___block_invoke(void *a1, void *a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, _BYTE *a12)
{
  v22 = a2;
  v19 = a9;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0 && [v22 isEqualToString:a1[4]])
  {
    v20 = a1[6];
    if (v20)
    {
      *v20 = a3;
      v20[1] = a4;
    }

    v21 = a1[7];
    if (v21)
    {
      *v21 = a5;
      v21[1] = a6;
    }

    *(*(a1[5] + 8) + 24) = 1;
    *a12 = 1;
  }
}

void __69__CLKComplicationTemplate_maxSDKSize_deviceSize_forImageProviderKey___block_invoke_2(void *a1, void *a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, _BYTE *a11)
{
  v21 = a2;
  v18 = a9;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0 && [v21 isEqualToString:a1[4]])
  {
    v19 = a1[6];
    if (v19)
    {
      *v19 = a3;
      v19[1] = a4;
    }

    v20 = a1[7];
    if (v20)
    {
      *v20 = a5;
      v20[1] = a6;
    }

    *(*(a1[5] + 8) + 24) = 1;
    *a11 = 1;
  }
}

- (void)enumerateTextProviderKeysWithBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__CLKComplicationTemplate_enumerateTextProviderKeysWithBlock___block_invoke;
  v6[3] = &unk_278A1EAB8;
  v7 = v4;
  v5 = v4;
  [(CLKComplicationTemplate *)self _enumerateTextProviderKeysWithBlock:v6];
}

- (void)enumerateImageProviderKeysWithBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__CLKComplicationTemplate_enumerateImageProviderKeysWithBlock___block_invoke;
  v6[3] = &unk_278A1EAE0;
  v7 = v4;
  v5 = v4;
  [(CLKComplicationTemplate *)self _enumerateImageProviderKeysWithBlock:v6];
}

- (void)enumerateProgressProviderKeysWithBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__CLKComplicationTemplate_enumerateProgressProviderKeysWithBlock___block_invoke;
  v6[3] = &unk_278A1EAB8;
  v7 = v4;
  v5 = v4;
  [(CLKComplicationTemplate *)self _enumerateProgressProviderKeysWithBlock:v6];
}

- (void)enumerateEmbeddedTemplateKeysWithBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__CLKComplicationTemplate_enumerateEmbeddedTemplateKeysWithBlock___block_invoke;
  v6[3] = &unk_278A1EAB8;
  v7 = v4;
  v5 = v4;
  [(CLKComplicationTemplate *)self _enumerateEmbeddedTemplateKeysWithBlock:v6];
}

- (void)enumerateSwiftUIViewDataKeysWithBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__CLKComplicationTemplate_enumerateSwiftUIViewDataKeysWithBlock___block_invoke;
  v6[3] = &unk_278A1EAB8;
  v7 = v4;
  v5 = v4;
  [(CLKComplicationTemplate *)self _enumerateSwiftUIViewDataKeysWithBlock:v6];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (v5 = objc_msgSend(v4, "uiSensitivity"), v5 == -[CLKComplicationTemplate uiSensitivity](self, "uiSensitivity")))
  {
    v95 = 0;
    v96 = &v95;
    v97 = 0x2020000000;
    v98 = 1;
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __35__CLKComplicationTemplate_isEqual___block_invoke;
    v92[3] = &unk_278A1EB08;
    v92[4] = self;
    v6 = v4;
    v93 = v6;
    v94 = &v95;
    [(CLKComplicationTemplate *)self _enumerateTextProviderKeysWithBlock:v92];
    if (v96[3])
    {
      v88 = 0;
      v89 = &v88;
      v90 = 0x2020000000;
      v91 = 1;
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __35__CLKComplicationTemplate_isEqual___block_invoke_2;
      v85[3] = &unk_278A1EB30;
      v85[4] = self;
      v7 = v6;
      v86 = v7;
      v87 = &v88;
      [(CLKComplicationTemplate *)self _enumerateImageProviderKeysWithBlock:v85];
      if (v89[3])
      {
        v81 = 0;
        v82 = &v81;
        v83 = 0x2020000000;
        v84 = 1;
        v78[0] = MEMORY[0x277D85DD0];
        v78[1] = 3221225472;
        v78[2] = __35__CLKComplicationTemplate_isEqual___block_invoke_3;
        v78[3] = &unk_278A1EB08;
        v78[4] = self;
        v8 = v7;
        v79 = v8;
        v80 = &v81;
        [(CLKComplicationTemplate *)self _enumerateProgressProviderKeysWithBlock:v78];
        if (v82[3])
        {
          v74 = 0;
          v75 = &v74;
          v76 = 0x2020000000;
          v77 = 1;
          v71[0] = MEMORY[0x277D85DD0];
          v71[1] = 3221225472;
          v71[2] = __35__CLKComplicationTemplate_isEqual___block_invoke_4;
          v71[3] = &unk_278A1EB58;
          v71[4] = self;
          v9 = v8;
          v72 = v9;
          v73 = &v74;
          [(CLKComplicationTemplate *)self _enumerateIntegerKeysWithBlock:v71];
          if (v75[3])
          {
            v67 = 0;
            v68 = &v67;
            v69 = 0x2020000000;
            v70 = 1;
            v64[0] = MEMORY[0x277D85DD0];
            v64[1] = 3221225472;
            v64[2] = __35__CLKComplicationTemplate_isEqual___block_invoke_5;
            v64[3] = &unk_278A1EB80;
            v64[4] = self;
            v10 = v9;
            v65 = v10;
            v66 = &v67;
            [(CLKComplicationTemplate *)self _enumerateFloatKeysWithBlock:v64];
            if (v68[3])
            {
              v60 = 0;
              v61 = &v60;
              v62 = 0x2020000000;
              v63 = 1;
              v57[0] = MEMORY[0x277D85DD0];
              v57[1] = 3221225472;
              v57[2] = __35__CLKComplicationTemplate_isEqual___block_invoke_6;
              v57[3] = &unk_278A1EBA8;
              v57[4] = self;
              v11 = v10;
              v58 = v11;
              v59 = &v60;
              [(CLKComplicationTemplate *)self _enumerateBOOLKeysWithBlock:v57];
              if (v61[3])
              {
                v53 = 0;
                v54 = &v53;
                v55 = 0x2020000000;
                v56 = 1;
                v50[0] = MEMORY[0x277D85DD0];
                v50[1] = 3221225472;
                v50[2] = __35__CLKComplicationTemplate_isEqual___block_invoke_7;
                v50[3] = &unk_278A1EBA8;
                v50[4] = self;
                v12 = v11;
                v51 = v12;
                v52 = &v53;
                [(CLKComplicationTemplate *)self _enumerateDateKeysWithBlock:v50];
                if ((v54[3] & 1) != 0 && (-[CLKComplicationTemplate tintColor](self, "tintColor"), v13 = objc_claimAutoreleasedReturnValue(), [v12 tintColor], v14 = objc_claimAutoreleasedReturnValue(), v15 = CLKEqualObjects(v13, v14), v14, v13, v15))
                {
                  v46 = 0;
                  v47 = &v46;
                  v48 = 0x2020000000;
                  v49 = 1;
                  v43[0] = MEMORY[0x277D85DD0];
                  v43[1] = 3221225472;
                  v43[2] = __35__CLKComplicationTemplate_isEqual___block_invoke_8;
                  v43[3] = &unk_278A1EB08;
                  v43[4] = self;
                  v16 = v12;
                  v44 = v16;
                  v45 = &v46;
                  [(CLKComplicationTemplate *)self _enumerateGaugeProviderKeysWithBlock:v43];
                  if (v47[3])
                  {
                    v39 = 0;
                    v40 = &v39;
                    v41 = 0x2020000000;
                    v42 = 1;
                    v36[0] = MEMORY[0x277D85DD0];
                    v36[1] = 3221225472;
                    v36[2] = __35__CLKComplicationTemplate_isEqual___block_invoke_9;
                    v36[3] = &unk_278A1EBD0;
                    v36[4] = self;
                    v17 = v16;
                    v37 = v17;
                    v38 = &v39;
                    [(CLKComplicationTemplate *)self _enumerateFullColorImageProviderKeysWithBlock:v36];
                    if (v40[3])
                    {
                      v32 = 0;
                      v33 = &v32;
                      v34 = 0x2020000000;
                      v35 = 1;
                      v29[0] = MEMORY[0x277D85DD0];
                      v29[1] = 3221225472;
                      v29[2] = __35__CLKComplicationTemplate_isEqual___block_invoke_10;
                      v29[3] = &unk_278A1EB08;
                      v29[4] = self;
                      v18 = v17;
                      v30 = v18;
                      v31 = &v32;
                      [(CLKComplicationTemplate *)self _enumerateEmbeddedTemplateKeysWithBlock:v29];
                      if (v33[3])
                      {
                        v25 = 0;
                        v26 = &v25;
                        v27 = 0x2020000000;
                        v28 = 1;
                        v22[0] = MEMORY[0x277D85DD0];
                        v22[1] = 3221225472;
                        v22[2] = __35__CLKComplicationTemplate_isEqual___block_invoke_11;
                        v22[3] = &unk_278A1EB08;
                        v22[4] = self;
                        v19 = v18;
                        v23 = v19;
                        v24 = &v25;
                        [(CLKComplicationTemplate *)self _enumerateSwiftUIViewDataKeysWithBlock:v22];
                        v20 = (v26[3] & 1) != 0 && CLKEqualObjects(self->_metadata, v19[1]) && self->_linkedOnOrAfterGrace == *(v19 + 26) && self->_sdkVersion == v19[5];

                        _Block_object_dispose(&v25, 8);
                      }

                      else
                      {
                        v20 = 0;
                      }

                      _Block_object_dispose(&v32, 8);
                    }

                    else
                    {
                      v20 = 0;
                    }

                    _Block_object_dispose(&v39, 8);
                  }

                  else
                  {
                    v20 = 0;
                  }

                  _Block_object_dispose(&v46, 8);
                }

                else
                {
                  v20 = 0;
                }

                _Block_object_dispose(&v53, 8);
              }

              else
              {
                v20 = 0;
              }

              _Block_object_dispose(&v60, 8);
            }

            else
            {
              v20 = 0;
            }

            _Block_object_dispose(&v67, 8);
          }

          else
          {
            v20 = 0;
          }

          _Block_object_dispose(&v74, 8);
        }

        else
        {
          v20 = 0;
        }

        _Block_object_dispose(&v81, 8);
      }

      else
      {
        v20 = 0;
      }

      _Block_object_dispose(&v88, 8);
    }

    else
    {
      v20 = 0;
    }

    _Block_object_dispose(&v95, 8);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void __35__CLKComplicationTemplate_isEqual___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 valueForKey:v8];
  v10 = [*(a1 + 40) valueForKey:v8];

  LOBYTE(v8) = CLKEqualObjects(v9, v10);
  if ((v8 & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a5 = 1;
  }
}

void __35__CLKComplicationTemplate_isEqual___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v10 = *(a1 + 32);
  v11 = a2;
  v12 = [v10 valueForKey:v11];
  v13 = [*(a1 + 40) valueForKey:v11];

  LOBYTE(v11) = CLKEqualObjects(v12, v13);
  if ((v11 & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a8 = 1;
  }
}

void __35__CLKComplicationTemplate_isEqual___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 valueForKey:v8];
  v10 = [*(a1 + 40) valueForKey:v8];

  LOBYTE(v8) = CLKEqualObjects(v9, v10);
  if ((v8 & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a5 = 1;
  }
}

void __35__CLKComplicationTemplate_isEqual___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 valueForKey:v8];
  v10 = [v9 integerValue];
  v11 = [*(a1 + 40) valueForKey:v8];

  v12 = [v11 integerValue];
  if (v10 != v12)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a5 = 1;
  }
}

void __35__CLKComplicationTemplate_isEqual___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 valueForKey:v8];
  [v9 floatValue];
  v11 = v10;
  v12 = [*(a1 + 40) valueForKey:v8];

  [v12 floatValue];
  LOBYTE(v8) = CLKFloatEqualsFloat(v11, v13);

  if ((v8 & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a5 = 1;
  }
}

void __35__CLKComplicationTemplate_isEqual___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 valueForKey:v7];
  v9 = [v8 BOOLValue];
  v10 = [*(a1 + 40) valueForKey:v7];

  LODWORD(v7) = [v10 BOOLValue];
  if (v9 != v7)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __35__CLKComplicationTemplate_isEqual___block_invoke_7(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 valueForKey:v7];
  v9 = [*(a1 + 40) valueForKey:v7];

  LOBYTE(v7) = CLKEqualObjects(v8, v9);
  if ((v7 & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __35__CLKComplicationTemplate_isEqual___block_invoke_8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 valueForKey:v8];
  v10 = [*(a1 + 40) valueForKey:v8];

  LOBYTE(v8) = CLKEqualObjects(v9, v10);
  if ((v8 & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a5 = 1;
  }
}

void __35__CLKComplicationTemplate_isEqual___block_invoke_9(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = *(a1 + 32);
  v10 = a2;
  v11 = [v9 valueForKey:v10];
  v12 = [*(a1 + 40) valueForKey:v10];

  LOBYTE(v10) = CLKEqualObjects(v11, v12);
  if ((v10 & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a7 = 1;
  }
}

void __35__CLKComplicationTemplate_isEqual___block_invoke_10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 valueForKey:v8];
  v10 = [*(a1 + 40) valueForKey:v8];

  LOBYTE(v8) = CLKEqualObjects(v9, v10);
  if ((v8 & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a5 = 1;
  }
}

void __35__CLKComplicationTemplate_isEqual___block_invoke_11(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 valueForKey:v8];
  v10 = [*(a1 + 40) valueForKey:v8];

  LOBYTE(v8) = CLKEqualObjects(v9, v10);
  if ((v8 & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a5 = 1;
  }
}

- (unint64_t)hash
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __31__CLKComplicationTemplate_hash__block_invoke;
  v22[3] = &unk_278A1EBF8;
  v22[4] = self;
  v22[5] = &v23;
  v3 = MEMORY[0x2383C4AF0](v22, a2);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __31__CLKComplicationTemplate_hash__block_invoke_2;
  v20[3] = &unk_278A1EC20;
  v4 = v3;
  v21 = v4;
  [(CLKComplicationTemplate *)self _enumerateAllBasicKeysWithBlock:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __31__CLKComplicationTemplate_hash__block_invoke_3;
  v18[3] = &unk_278A1EAB8;
  v5 = v4;
  v19 = v5;
  [(CLKComplicationTemplate *)self _enumerateEmbeddedTemplateKeysWithBlock:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __31__CLKComplicationTemplate_hash__block_invoke_4;
  v16[3] = &unk_278A1EAB8;
  v6 = v5;
  v17 = v6;
  [(CLKComplicationTemplate *)self _enumerateSwiftUIViewDataKeysWithBlock:v16];
  v7 = [(CLKComplicationTemplate *)self tintColor];
  v8 = [v7 hash];
  v9 = [@"tintColor" hash];
  v24[3] += v9 * v8;

  v10 = [(NSDictionary *)self->_metadata hash];
  v11 = v24;
  v12 = v24[3] + v10 + self->_linkedOnOrAfterGrace;
  v24[3] = v12;
  v13 = v12 + self->_sdkVersion;
  v11[3] = v13;
  if (self->_uiSensitivity)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = v13;
  }

  v11[3] = v14;

  _Block_object_dispose(&v23, 8);
  return v14;
}

void __31__CLKComplicationTemplate_hash__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 valueForKey:v4];
  v5 = [v7 hash];
  v6 = [v4 hash];

  *(*(*(a1 + 40) + 8) + 24) += v6 * v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (self->_finalized)
  {

    return self;
  }

  else
  {
    v24 = v6;
    v25 = v5;
    v26 = v3;
    v27 = v4;
    if (!self->_finalizing || (v9 = [(CLKComplicationTemplate *)self finalizedCopyClass]) == 0)
    {
      v9 = objc_opt_class();
    }

    v10 = [[(objc_class *)v9 allocWithZone:a3] init];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __40__CLKComplicationTemplate_copyWithZone___block_invoke;
    v21[3] = &unk_278A1EC48;
    v11 = v10;
    v22 = v11;
    v23 = self;
    [(CLKComplicationTemplate *)self _enumerateAllBasicKeysWithBlock:v21];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __40__CLKComplicationTemplate_copyWithZone___block_invoke_2;
    v18[3] = &unk_278A1EC70;
    v12 = v11;
    v19 = v12;
    v20 = self;
    [(CLKComplicationTemplate *)self _enumerateEmbeddedTemplateKeysWithBlock:v18];
    v13 = [(CLKComplicationTemplate *)self tintColor];
    [v12 setTintColor:v13];

    v14 = [(NSDictionary *)self->_metadata mutableCopy];
    v15 = v12[1];
    v12[1] = v14;

    *(v12 + 26) = self->_linkedOnOrAfterGrace;
    v12[5] = self->_sdkVersion;
    objc_storeStrong(v12 + 7, self->_creationDate);
    v12[6] = self->_uiSensitivity;
    objc_storeStrong(v12 + 8, self->_backgroundDescriptor);
    [(CLKComplicationTemplate *)self _setCustomCopyPropertiesOn:v12 finalizing:self->_finalizing];
    v16 = v12;

    return v16;
  }
}

void __40__CLKComplicationTemplate_copyWithZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 valueForKey:v4];
  [v2 setValue:v5 forKey:v4];
}

void __40__CLKComplicationTemplate_copyWithZone___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v6 = [v3 valueForKey:v4];
  v5 = [v6 copy];
  [v2 setValue:v5 forKey:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __43__CLKComplicationTemplate_encodeWithCoder___block_invoke;
  v48[3] = &unk_278A1EC70;
  v48[4] = self;
  v6 = v4;
  v49 = v6;
  [(CLKComplicationTemplate *)self _enumerateTextProviderKeysWithBlock:v48];

  objc_autoreleasePoolPop(v5);
  v7 = objc_autoreleasePoolPush();
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __43__CLKComplicationTemplate_encodeWithCoder___block_invoke_2;
  v46[3] = &unk_278A1EC98;
  v46[4] = self;
  v8 = v6;
  v47 = v8;
  [(CLKComplicationTemplate *)self _enumerateImageProviderKeysWithBlock:v46];

  objc_autoreleasePoolPop(v7);
  v9 = objc_autoreleasePoolPush();
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __43__CLKComplicationTemplate_encodeWithCoder___block_invoke_3;
  v44[3] = &unk_278A1EC70;
  v44[4] = self;
  v10 = v8;
  v45 = v10;
  [(CLKComplicationTemplate *)self _enumerateProgressProviderKeysWithBlock:v44];

  objc_autoreleasePoolPop(v9);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __43__CLKComplicationTemplate_encodeWithCoder___block_invoke_4;
  v42[3] = &unk_278A1ECC0;
  v42[4] = self;
  v11 = v10;
  v43 = v11;
  [(CLKComplicationTemplate *)self _enumerateIntegerKeysWithBlock:v42];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __43__CLKComplicationTemplate_encodeWithCoder___block_invoke_5;
  v40[3] = &unk_278A1ECE8;
  v40[4] = self;
  v12 = v11;
  v41 = v12;
  [(CLKComplicationTemplate *)self _enumerateFloatKeysWithBlock:v40];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __43__CLKComplicationTemplate_encodeWithCoder___block_invoke_6;
  v38[3] = &unk_278A1ED10;
  v38[4] = self;
  v13 = v12;
  v39 = v13;
  [(CLKComplicationTemplate *)self _enumerateBOOLKeysWithBlock:v38];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __43__CLKComplicationTemplate_encodeWithCoder___block_invoke_7;
  v36[3] = &unk_278A1ED10;
  v36[4] = self;
  v14 = v13;
  v37 = v14;
  [(CLKComplicationTemplate *)self _enumerateDateKeysWithBlock:v36];
  v15 = [(CLKComplicationTemplate *)self tintColor];
  [v14 encodeObject:v15 forKey:@"tintColor"];

  v16 = objc_autoreleasePoolPush();
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __43__CLKComplicationTemplate_encodeWithCoder___block_invoke_8;
  v34[3] = &unk_278A1EC70;
  v34[4] = self;
  v17 = v14;
  v35 = v17;
  [(CLKComplicationTemplate *)self _enumerateGaugeProviderKeysWithBlock:v34];

  objc_autoreleasePoolPop(v16);
  v18 = objc_autoreleasePoolPush();
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __43__CLKComplicationTemplate_encodeWithCoder___block_invoke_9;
  v32[3] = &unk_278A1ED38;
  v32[4] = self;
  v19 = v17;
  v33 = v19;
  [(CLKComplicationTemplate *)self _enumerateFullColorImageProviderKeysWithBlock:v32];

  objc_autoreleasePoolPop(v18);
  v20 = objc_autoreleasePoolPush();
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __43__CLKComplicationTemplate_encodeWithCoder___block_invoke_10;
  v30[3] = &unk_278A1EC70;
  v30[4] = self;
  v21 = v19;
  v31 = v21;
  [(CLKComplicationTemplate *)self _enumerateEmbeddedTemplateKeysWithBlock:v30];

  objc_autoreleasePoolPop(v20);
  v22 = objc_autoreleasePoolPush();
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __43__CLKComplicationTemplate_encodeWithCoder___block_invoke_114;
  v27 = &unk_278A1EC70;
  v28 = self;
  v23 = v21;
  v29 = v23;
  [(CLKComplicationTemplate *)self _enumerateSwiftUIViewDataKeysWithBlock:&v24];

  objc_autoreleasePoolPop(v22);
  [v23 encodeObject:self->_metadata forKey:{@"metadata", v24, v25, v26, v27, v28}];
  [v23 encodeBool:self->_linkedOnOrAfterGrace forKey:@"linkedOnOrAfterGrace"];
  [v23 encodeInteger:self->_sdkVersion forKey:@"sdkVersion"];
  [v23 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v23 encodeBool:self->_finalized forKey:@"finalized"];
  [v23 encodeInteger:self->_uiSensitivity forKey:@"sensitivity"];
}

void __43__CLKComplicationTemplate_encodeWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 valueForKey:v4];
  [*(a1 + 40) encodeObject:v5 forKey:v4];
}

void __43__CLKComplicationTemplate_encodeWithCoder___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 valueForKey:v4];
  [*(a1 + 40) encodeObject:v5 forKey:v4];
}

void __43__CLKComplicationTemplate_encodeWithCoder___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 valueForKey:v4];
  [*(a1 + 40) encodeObject:v5 forKey:v4];
}

void __43__CLKComplicationTemplate_encodeWithCoder___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 valueForKey:v6];
  v5 = [v4 integerValue];

  [*(a1 + 40) encodeInteger:v5 forKey:v6];
}

void __43__CLKComplicationTemplate_encodeWithCoder___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v8 = a2;
  v4 = [v3 valueForKey:v8];
  [v4 floatValue];
  v6 = v5;

  LODWORD(v7) = v6;
  [*(a1 + 40) encodeFloat:v8 forKey:v7];
}

void __43__CLKComplicationTemplate_encodeWithCoder___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 valueForKey:v6];
  v5 = [v4 BOOLValue];

  [*(a1 + 40) encodeBool:v5 forKey:v6];
}

void __43__CLKComplicationTemplate_encodeWithCoder___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 valueForKey:v4];
  [*(a1 + 40) encodeObject:v5 forKey:v4];
}

void __43__CLKComplicationTemplate_encodeWithCoder___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 valueForKey:v4];
  [*(a1 + 40) encodeObject:v5 forKey:v4];
}

void __43__CLKComplicationTemplate_encodeWithCoder___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 valueForKey:v4];
  [*(a1 + 40) encodeObject:v5 forKey:v4];
}

void __43__CLKComplicationTemplate_encodeWithCoder___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) valueForKey:v3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 40) encodeObject:v4 forKey:v3];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [*(a1 + 40) encodeObject:v6 forKey:@"BezelCircularClassName"];
  }

  else
  {
    v7 = CLKLoggingObjectForDomain(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __43__CLKComplicationTemplate_encodeWithCoder___block_invoke_10_cold_1();
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Property '%@' on %@ must be a valid subclass of CLKComplicationTemplate", v3, objc_opt_class()}];
  }
}

void __43__CLKComplicationTemplate_encodeWithCoder___block_invoke_114(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 valueForKey:v4];
  [*(a1 + 40) encodeObject:v5 forKey:v4];
}

- (CLKComplicationTemplate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CLKComplicationTemplate *)self initPrivate];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __41__CLKComplicationTemplate_initWithCoder___block_invoke;
    v87[3] = &unk_278A1EC70;
    v7 = v4;
    v88 = v7;
    v8 = v5;
    v89 = v8;
    [(CLKComplicationTemplate *)v8 _enumerateTextProviderKeysWithBlock:v87];

    objc_autoreleasePoolPop(v6);
    v9 = objc_autoreleasePoolPush();
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __41__CLKComplicationTemplate_initWithCoder___block_invoke_2;
    v84[3] = &unk_278A1EC98;
    v10 = v7;
    v85 = v10;
    v11 = v8;
    v86 = v11;
    [(CLKComplicationTemplate *)v11 _enumerateImageProviderKeysWithBlock:v84];

    objc_autoreleasePoolPop(v9);
    v12 = objc_autoreleasePoolPush();
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __41__CLKComplicationTemplate_initWithCoder___block_invoke_3;
    v81[3] = &unk_278A1EC70;
    v13 = v10;
    v82 = v13;
    v14 = v11;
    v83 = v14;
    [(CLKComplicationTemplate *)v14 _enumerateProgressProviderKeysWithBlock:v81];

    objc_autoreleasePoolPop(v12);
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __41__CLKComplicationTemplate_initWithCoder___block_invoke_4;
    v78[3] = &unk_278A1ECC0;
    v15 = v13;
    v79 = v15;
    v16 = v14;
    v80 = v16;
    [(CLKComplicationTemplate *)v16 _enumerateIntegerKeysWithBlock:v78];
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __41__CLKComplicationTemplate_initWithCoder___block_invoke_5;
    v75[3] = &unk_278A1ECE8;
    v17 = v15;
    v76 = v17;
    v18 = v16;
    v77 = v18;
    [(CLKComplicationTemplate *)v18 _enumerateFloatKeysWithBlock:v75];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __41__CLKComplicationTemplate_initWithCoder___block_invoke_6;
    v72[3] = &unk_278A1ED10;
    v19 = v17;
    v73 = v19;
    v20 = v18;
    v74 = v20;
    [(CLKComplicationTemplate *)v20 _enumerateBOOLKeysWithBlock:v72];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __41__CLKComplicationTemplate_initWithCoder___block_invoke_7;
    v69[3] = &unk_278A1ED10;
    v21 = v19;
    v70 = v21;
    v22 = v20;
    v71 = v22;
    [(CLKComplicationTemplate *)v22 _enumerateDateKeysWithBlock:v69];
    v23 = [v21 decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    [(CLKComplicationTemplate *)v22 setTintColor:v23];

    v24 = objc_autoreleasePoolPush();
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __41__CLKComplicationTemplate_initWithCoder___block_invoke_8;
    v66[3] = &unk_278A1EC70;
    v25 = v21;
    v67 = v25;
    v26 = v22;
    v68 = v26;
    [(CLKComplicationTemplate *)v26 _enumerateGaugeProviderKeysWithBlock:v66];

    objc_autoreleasePoolPop(v24);
    v27 = objc_autoreleasePoolPush();
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __41__CLKComplicationTemplate_initWithCoder___block_invoke_9;
    v63[3] = &unk_278A1ED38;
    v28 = v25;
    v64 = v28;
    v29 = v26;
    v65 = v29;
    [v29 _enumerateFullColorImageProviderKeysWithBlock:v63];

    objc_autoreleasePoolPop(v27);
    v30 = objc_autoreleasePoolPush();
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __41__CLKComplicationTemplate_initWithCoder___block_invoke_10;
    v60[3] = &unk_278A1EC70;
    v31 = v28;
    v61 = v31;
    v32 = v29;
    v62 = v32;
    [v32 _enumerateEmbeddedTemplateKeysWithBlock:v60];

    objc_autoreleasePoolPop(v30);
    v33 = objc_autoreleasePoolPush();
    v34 = [objc_opt_class() classesCompatibleWithJSONSerialization];
    v35 = [v31 decodeObjectOfClasses:v34 forKey:@"metadata"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = [v35 copy];
      v37 = v32[1];
      v32[1] = v36;
    }

    objc_autoreleasePoolPop(v33);
    v38 = objc_autoreleasePoolPush();
    v54 = MEMORY[0x277D85DD0];
    v55 = 3221225472;
    v56 = __41__CLKComplicationTemplate_initWithCoder___block_invoke_121;
    v57 = &unk_278A1EC70;
    v39 = v31;
    v58 = v39;
    v40 = v32;
    v59 = v40;
    [v40 _enumerateSwiftUIViewDataKeysWithBlock:&v54];

    objc_autoreleasePoolPop(v38);
    *(v40 + 26) = [v39 decodeBoolForKey:{@"linkedOnOrAfterGrace", v54, v55, v56, v57}];
    v41 = [v39 decodeIntegerForKey:@"sdkVersion"];
    v40[5] = v41;
    if (v41 >= 2)
    {
      v42 = CLKLoggingObjectForDomain(1);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [(CLKComplicationTemplate *)(v40 + 5) initWithCoder:v42, v43, v44, v45, v46, v47, v48];
      }

      v40[5] = 1;
    }

    v49 = [v39 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    v50 = v49;
    if (v49)
    {
      v51 = v49;
    }

    else
    {
      v51 = [MEMORY[0x277CBEAA8] date];
    }

    v52 = v40[7];
    v40[7] = v51;

    *(v40 + 24) = [v39 decodeBoolForKey:@"finalized"];
    v40[6] = [v39 decodeIntegerForKey:@"sensitivity"];
  }

  return v5;
}

void __41__CLKComplicationTemplate_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:v4];
  [*(a1 + 40) setValue:v5 forKey:v4];
}

void __41__CLKComplicationTemplate_initWithCoder___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:v4];
  [*(a1 + 40) setValue:v5 forKey:v4];
}

void __41__CLKComplicationTemplate_initWithCoder___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:v4];
  [*(a1 + 40) setValue:v5 forKey:v4];
}

void __41__CLKComplicationTemplate_initWithCoder___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 decodeIntegerForKey:v4];
  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  [v6 setValue:v7 forKey:v4];
}

void __41__CLKComplicationTemplate_initWithCoder___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 decodeFloatForKey:v4];
  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  [v6 setValue:v7 forKey:v4];
}

void __41__CLKComplicationTemplate_initWithCoder___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 decodeBoolForKey:v4];
  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  [v6 setValue:v7 forKey:v4];
}

void __41__CLKComplicationTemplate_initWithCoder___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:v4];
  [*(a1 + 40) setValue:v5 forKey:v4];
}

void __41__CLKComplicationTemplate_initWithCoder___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:v4];
  [*(a1 + 40) setValue:v5 forKey:v4];
}

void __41__CLKComplicationTemplate_initWithCoder___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:v4];
  [*(a1 + 40) setValue:v5 forKey:v4];
}

void __41__CLKComplicationTemplate_initWithCoder___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"BezelCircularClassName"];
  if (v4)
  {
    v5 = [*(a1 + 40) _validEmbeddedTemplateClassNamesForKey:v3];
    v6 = [v5 containsObject:v4];

    if (v6)
    {
      v7 = [*(a1 + 32) decodeObjectOfClass:NSClassFromString(v4) forKey:v3];
      [*(a1 + 40) setValue:v7 forKey:v3];
    }

    else
    {
      v8 = CLKLoggingObjectForDomain(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __41__CLKComplicationTemplate_initWithCoder___block_invoke_10_cold_1();
      }
    }
  }
}

void __41__CLKComplicationTemplate_initWithCoder___block_invoke_121(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:v4];
  [*(a1 + 40) setValue:v5 forKey:v4];
}

+ (CLKComplicationTemplate)complicationTemplateWithJSONObjectRepresentation:(id)a3 bundle:(id)a4 purpose:(unint64_t)a5
{
  v95 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v56 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"top level object must be a dictionary. Invalid value: %@", v8}];
  }

  v9 = [v8 objectForKeyedSubscript:@"class"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = NSClassFromString(v9);
    if (([(objc_class *)v10 isSubclassOfClass:objc_opt_class()]& 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"class: %@ must be a CLKComplicationTemplate class", v9}];
    }

    v57 = [[v10 alloc] initPrivateWithJSONObjectRepresentation:v8 bundle:v56];
    if (v57)
    {
      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __91__CLKComplicationTemplate_complicationTemplateWithJSONObjectRepresentation_bundle_purpose___block_invoke;
      v92[3] = &unk_278A1EC70;
      v11 = v8;
      v93 = v11;
      v12 = v57;
      v94 = v12;
      [v12 _enumerateTextProviderKeysWithBlock:v92];
      v88[0] = MEMORY[0x277D85DD0];
      v88[1] = 3221225472;
      v88[2] = __91__CLKComplicationTemplate_complicationTemplateWithJSONObjectRepresentation_bundle_purpose___block_invoke_2;
      v88[3] = &unk_278A1ED60;
      v13 = v11;
      v89 = v13;
      v14 = v56;
      v90 = v14;
      v15 = v12;
      v91 = v15;
      [v15 _enumerateImageProviderKeysWithBlock:v88];
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __91__CLKComplicationTemplate_complicationTemplateWithJSONObjectRepresentation_bundle_purpose___block_invoke_3;
      v85[3] = &unk_278A1ED10;
      v16 = v13;
      v86 = v16;
      v17 = v15;
      v87 = v17;
      [v17 _enumerateBOOLKeysWithBlock:v85];
      v82[0] = MEMORY[0x277D85DD0];
      v82[1] = 3221225472;
      v82[2] = __91__CLKComplicationTemplate_complicationTemplateWithJSONObjectRepresentation_bundle_purpose___block_invoke_4;
      v82[3] = &unk_278A1ECE8;
      v18 = v16;
      v83 = v18;
      v19 = v17;
      v84 = v19;
      [v19 _enumerateFloatKeysWithBlock:v82];
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __91__CLKComplicationTemplate_complicationTemplateWithJSONObjectRepresentation_bundle_purpose___block_invoke_5;
      v79[3] = &unk_278A1ECC0;
      v20 = v18;
      v80 = v20;
      v21 = v19;
      v81 = v21;
      [v21 _enumerateIntegerKeysWithBlock:v79];
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __91__CLKComplicationTemplate_complicationTemplateWithJSONObjectRepresentation_bundle_purpose___block_invoke_6;
      v76[3] = &unk_278A1ED10;
      v22 = v20;
      v77 = v22;
      v23 = v21;
      v78 = v23;
      [v23 _enumerateDateKeysWithBlock:v76];
      v53 = a1;
      v54 = a5;
      v55 = [v22 objectForKeyedSubscript:@"tintColor"];
      if (v55)
      {
        v24 = [objc_alloc(MEMORY[0x277D75348]) initWithJSONObjectRepresentation:v55];
        [v23 setTintColor:v24];
      }

      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __91__CLKComplicationTemplate_complicationTemplateWithJSONObjectRepresentation_bundle_purpose___block_invoke_7;
      v72[3] = &unk_278A1ED88;
      v25 = v22;
      v73 = v25;
      v26 = v14;
      v74 = v26;
      v27 = v23;
      v75 = v27;
      [v27 _enumerateGaugeProviderKeysWithBlock:v72];
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __91__CLKComplicationTemplate_complicationTemplateWithJSONObjectRepresentation_bundle_purpose___block_invoke_8;
      v68[3] = &unk_278A1EDB0;
      v28 = v25;
      v69 = v28;
      v29 = v26;
      v70 = v29;
      v30 = v27;
      v71 = v30;
      [v30 _enumerateFullColorImageProviderKeysWithBlock:v68];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __91__CLKComplicationTemplate_complicationTemplateWithJSONObjectRepresentation_bundle_purpose___block_invoke_9;
      v62[3] = &unk_278A1EDD8;
      v31 = v28;
      v63 = v31;
      v66 = v53;
      v32 = v29;
      v64 = v32;
      v67 = v54;
      v33 = v30;
      v65 = v33;
      [v33 _enumerateEmbeddedTemplateKeysWithBlock:v62];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __91__CLKComplicationTemplate_complicationTemplateWithJSONObjectRepresentation_bundle_purpose___block_invoke_10;
      v58[3] = &unk_278A1ED88;
      v34 = v31;
      v59 = v34;
      v35 = v32;
      v60 = v35;
      v36 = v33;
      v61 = v36;
      [v36 _enumerateSwiftUIViewDataKeysWithBlock:v58];
      v37 = v36;
      v38 = [v34 objectForKeyedSubscript:@"creationDate"];
      if (v38 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v39 = v38;
      }

      else
      {
        v39 = [MEMORY[0x277CBEAA8] date];
      }

      v40 = *(v36 + 7);
      *(v36 + 7) = v39;

      v41 = [v34 objectForKeyedSubscript:@"sdkVersion"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(v36 + 5) = [v41 integerValue];
      }

      v42 = [v34 objectForKeyedSubscript:@"metadata"];
      v43 = v42;
      if (v54)
      {
        if (v42)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"%@' must be a dictionary. Invalid value: %@", @"metadata", v43}];
          }
        }

        v44 = objc_alloc_init(MEMORY[0x277CBEAC0]);
        v45 = objc_opt_class();
        v46 = [v35 bundlePath];
        v47 = [v45 _secureCodingRepresentationOfEmbeddedObjectsDictionary:v43 bundlePath:v46];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"_createDecodableComplicationJsonDictionary has failed and the metadataDictionary is no longer a dictionary, %@", v43}];
        }

        v48 = [v47 copy];
        v49 = v37[1];
        v37[1] = v48;
      }

      else
      {
        v47 = [v34 objectForKeyedSubscript:@"sensitivity"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *(v36 + 6) = [v47 integerValue];
        }

        v49 = [v34 objectForKeyedSubscript:@"linkedOnOrAfterGrace"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *(v36 + 26) = [v49 BOOLValue];
        }

        v50 = [v43 copy];
        v51 = *(v36 + 1);
        *(v36 + 1) = v50;
      }
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"'%@' must be a string. Invalid value: %@", @"class", v9}];

    v57 = 0;
  }

  return v57;
}

uint64_t __91__CLKComplicationTemplate_complicationTemplateWithJSONObjectRepresentation_bundle_purpose___block_invoke(uint64_t a1, void *a2, int a3, int a4)
{
  v7 = a2;
  v8 = v7;
  if (a4)
  {
    v13 = v7;
    v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
    v10 = v9;
    if (!a3 || v9)
    {
      v11 = [CLKTextProvider providerWithJSONObjectRepresentation:v9];
      [*(a1 + 40) setValue:v11 forKey:v13];
    }

    v8 = v13;
  }

  return MEMORY[0x2821F96F8](v7, v8);
}

void __91__CLKComplicationTemplate_complicationTemplateWithJSONObjectRepresentation_bundle_purpose___block_invoke_2(uint64_t a1, void *a2, int a3, int a4, void *a5)
{
  v13 = a2;
  v9 = a5;
  if (a4)
  {
    v10 = [*(a1 + 32) objectForKeyedSubscript:v13];
    v11 = v10;
    if (!a3 || v10)
    {
      v12 = [CLKImageProvider imageProviderWithJSONObjectRepresentation:v10 bundle:*(a1 + 40)];
      [*(a1 + 48) setValue:v12 forKey:v13];
    }
  }
}

uint64_t __91__CLKComplicationTemplate_complicationTemplateWithJSONObjectRepresentation_bundle_purpose___block_invoke_3(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v9 = v5;
    v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a number - invalid value: %@", v9, v7}];
      }
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"key in '%@' dictionary was not provided - invalid value: %@", v9, *(a1 + 32)}];
    }

    [*(a1 + 40) setValue:v7 forKey:v9];

    v6 = v9;
  }

  return MEMORY[0x2821F96F8](v5, v6);
}

uint64_t __91__CLKComplicationTemplate_complicationTemplateWithJSONObjectRepresentation_bundle_purpose___block_invoke_4(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v9 = v5;
    v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a number - invalid value: %@", v9, v7}];
      }
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"key in '%@' dictionary was not provided - invalid value: %@", v9, *(a1 + 32)}];
    }

    [*(a1 + 40) setValue:v7 forKey:v9];

    v6 = v9;
  }

  return MEMORY[0x2821F96F8](v5, v6);
}

uint64_t __91__CLKComplicationTemplate_complicationTemplateWithJSONObjectRepresentation_bundle_purpose___block_invoke_5(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v9 = v5;
    v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a number - invalid value: %@", v9, v7}];
      }
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"key in '%@' dictionary was not provided - invalid value: %@", v9, *(a1 + 32)}];
    }

    [*(a1 + 40) setValue:v7 forKey:v9];

    v6 = v9;
  }

  return MEMORY[0x2821F96F8](v5, v6);
}

uint64_t __91__CLKComplicationTemplate_complicationTemplateWithJSONObjectRepresentation_bundle_purpose___block_invoke_6(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v10 = v5;
    v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithJSONObjectRepresentation:v7];
      [*(a1 + 40) setValue:v8 forKey:v10];
    }

    v6 = v10;
  }

  return MEMORY[0x2821F96F8](v5, v6);
}

uint64_t __91__CLKComplicationTemplate_complicationTemplateWithJSONObjectRepresentation_bundle_purpose___block_invoke_7(uint64_t a1, void *a2, int a3, int a4)
{
  v7 = a2;
  v8 = v7;
  if (a4)
  {
    v13 = v7;
    v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
    v10 = v9;
    if (!a3 || v9)
    {
      v11 = [CLKGaugeProvider providerWithJSONObjectRepresentation:v9 bundle:*(a1 + 40)];
      [*(a1 + 48) setValue:v11 forKey:v13];
    }

    v8 = v13;
  }

  return MEMORY[0x2821F96F8](v7, v8);
}

void __91__CLKComplicationTemplate_complicationTemplateWithJSONObjectRepresentation_bundle_purpose___block_invoke_8(uint64_t a1, void *a2, int a3, int a4, void *a5)
{
  v13 = a2;
  v9 = a5;
  if (a4)
  {
    v10 = [*(a1 + 32) objectForKeyedSubscript:v13];
    v11 = v10;
    if (!a3 || v10)
    {
      v12 = [CLKFullColorImageProvider fullColorImageProviderWithJSONObjectRepresentation:v10 bundle:*(a1 + 40)];
      [*(a1 + 48) setValue:v12 forKey:v13];
    }
  }
}

uint64_t __91__CLKComplicationTemplate_complicationTemplateWithJSONObjectRepresentation_bundle_purpose___block_invoke_9(uint64_t a1, void *a2, int a3, int a4)
{
  v7 = a2;
  v8 = v7;
  if (a4)
  {
    v16 = v7;
    v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
    v10 = v9;
    if (!a3 || v9)
    {
      v11 = [*(a1 + 32) objectForKeyedSubscript:@"BezelCircularClassName"];
      v12 = v11;
      if (!a3 || v11)
      {
        v13 = [objc_opt_class() complicationTemplateWithJSONObjectRepresentation:v10 bundle:*(a1 + 40) purpose:*(a1 + 64)];
        v14 = v13;
        if ((a3 & 1) == 0 && !v13)
        {
          [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"key '%@': required embedded template is nil", v16}];
        }

        [*(a1 + 48) setValue:v14 forKey:v16];
      }
    }

    v8 = v16;
  }

  return MEMORY[0x2821F96F8](v7, v8);
}

uint64_t __91__CLKComplicationTemplate_complicationTemplateWithJSONObjectRepresentation_bundle_purpose___block_invoke_10(uint64_t a1, void *a2, int a3, int a4)
{
  v7 = a2;
  v8 = v7;
  if (a4)
  {
    v13 = v7;
    v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
    v10 = v9;
    if (!a3 || v9)
    {
      v11 = [MEMORY[0x277CBEA90] dataWithJSONObjectRepresentation:v9 bundle:*(a1 + 40)];
      [*(a1 + 48) setValue:v11 forKey:v13];
    }

    v8 = v13;
  }

  return MEMORY[0x2821F96F8](v7, v8);
}

- (id)JSONObjectRepresentationWritingResourcesToBundlePath:(id)a3 purpose:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v7 setObject:v9 forKeyedSubscript:@"class"];

  [v7 setObject:&unk_284A340F8 forKeyedSubscript:@"version"];
  v10 = [(UIColor *)self->_tintColor JSONObjectRepresentation];
  [v7 setObject:v10 forKeyedSubscript:@"tintColor"];

  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __88__CLKComplicationTemplate_JSONObjectRepresentationWritingResourcesToBundlePath_purpose___block_invoke;
  v65[3] = &unk_278A1EC70;
  v65[4] = self;
  v11 = v7;
  v66 = v11;
  [(CLKComplicationTemplate *)self _enumerateGaugeProviderKeysWithBlock:v65];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __88__CLKComplicationTemplate_JSONObjectRepresentationWritingResourcesToBundlePath_purpose___block_invoke_2;
  v62[3] = &unk_278A1EDB0;
  v62[4] = self;
  v12 = v6;
  v63 = v12;
  v13 = v11;
  v64 = v13;
  [(CLKComplicationTemplate *)self _enumerateFullColorImageProviderKeysWithBlock:v62];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __88__CLKComplicationTemplate_JSONObjectRepresentationWritingResourcesToBundlePath_purpose___block_invoke_3;
  v58[3] = &unk_278A1EE00;
  v58[4] = self;
  v14 = v12;
  v59 = v14;
  v61 = a4;
  v15 = v13;
  v60 = v15;
  [(CLKComplicationTemplate *)self _enumerateEmbeddedTemplateKeysWithBlock:v58];
  v16 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_creationDate timeIntervalSince1970];
  v17 = [v16 numberWithDouble:?];
  [v15 setObject:v17 forKeyedSubscript:@"creationDate"];

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:self->_sdkVersion];
  [v15 setObject:v18 forKeyedSubscript:@"sdkVersion"];

  if (!a4)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_linkedOnOrAfterGrace];
    [v15 setObject:v20 forKeyedSubscript:@"linkedOnOrAfterGrace"];

    v21 = [MEMORY[0x277CCABB0] numberWithInteger:self->_uiSensitivity];
    [v15 setObject:v21 forKeyedSubscript:@"sensitivity"];

    v19 = [(NSDictionary *)self->_metadata copy];
    goto LABEL_5;
  }

  v19 = [objc_opt_class() createJSONRepresentationFromDictionary:self->_metadata bundlePath:v14 purpose:1];
  if (v19)
  {
LABEL_5:
    [v15 setObject:v19 forKeyedSubscript:@"metadata"];
  }

  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __88__CLKComplicationTemplate_JSONObjectRepresentationWritingResourcesToBundlePath_purpose___block_invoke_4;
  v56[3] = &unk_278A1EC70;
  v56[4] = self;
  v22 = v15;
  v57 = v22;
  [(CLKComplicationTemplate *)self _enumerateTextProviderKeysWithBlock:v56];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __88__CLKComplicationTemplate_JSONObjectRepresentationWritingResourcesToBundlePath_purpose___block_invoke_5;
  v53[3] = &unk_278A1ED60;
  v53[4] = self;
  v23 = v14;
  v54 = v23;
  v24 = v22;
  v55 = v24;
  [(CLKComplicationTemplate *)self _enumerateImageProviderKeysWithBlock:v53];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __88__CLKComplicationTemplate_JSONObjectRepresentationWritingResourcesToBundlePath_purpose___block_invoke_6;
  v51[3] = &unk_278A1EC70;
  v51[4] = self;
  v25 = v24;
  v52 = v25;
  [(CLKComplicationTemplate *)self _enumerateProgressProviderKeysWithBlock:v51];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __88__CLKComplicationTemplate_JSONObjectRepresentationWritingResourcesToBundlePath_purpose___block_invoke_7;
  v48[3] = &unk_278A1ED10;
  v26 = v25;
  v49 = v26;
  v50 = self;
  [(CLKComplicationTemplate *)self _enumerateBOOLKeysWithBlock:v48];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __88__CLKComplicationTemplate_JSONObjectRepresentationWritingResourcesToBundlePath_purpose___block_invoke_8;
  v45[3] = &unk_278A1ECE8;
  v27 = v26;
  v46 = v27;
  v47 = self;
  [(CLKComplicationTemplate *)self _enumerateFloatKeysWithBlock:v45];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __88__CLKComplicationTemplate_JSONObjectRepresentationWritingResourcesToBundlePath_purpose___block_invoke_9;
  v42[3] = &unk_278A1ECC0;
  v28 = v27;
  v43 = v28;
  v44 = self;
  [(CLKComplicationTemplate *)self _enumerateIntegerKeysWithBlock:v42];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __88__CLKComplicationTemplate_JSONObjectRepresentationWritingResourcesToBundlePath_purpose___block_invoke_10;
  v40[3] = &unk_278A1ED10;
  v40[4] = self;
  v29 = v28;
  v41 = v29;
  [(CLKComplicationTemplate *)self _enumerateDateKeysWithBlock:v40];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __88__CLKComplicationTemplate_JSONObjectRepresentationWritingResourcesToBundlePath_purpose___block_invoke_11;
  v37[3] = &unk_278A1ED88;
  v37[4] = self;
  v30 = v23;
  v38 = v30;
  v31 = v29;
  v39 = v31;
  [(CLKComplicationTemplate *)self _enumerateSwiftUIViewDataKeysWithBlock:v37];
  if (a4 == 1)
  {
    v32 = [objc_opt_class() createJSONRepresentationFromDictionary:v31 bundlePath:v30 purpose:1];
    v33 = [v32 mutableCopy];

    v31 = v33;
  }

  v34 = v39;
  v35 = v31;

  return v31;
}

void __88__CLKComplicationTemplate_JSONObjectRepresentationWritingResourcesToBundlePath_purpose___block_invoke(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v8 = [v5 valueForKey:v6];
    v7 = [v8 JSONObjectRepresentation];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v6];
  }
}

void __88__CLKComplicationTemplate_JSONObjectRepresentationWritingResourcesToBundlePath_purpose___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v8 = [v5 valueForKey:v6];
    v7 = [v8 JSONObjectRepresentationWritingResourcesToBundlePath:*(a1 + 40)];
    [*(a1 + 48) setObject:v7 forKeyedSubscript:v6];
  }
}

void __88__CLKComplicationTemplate_JSONObjectRepresentationWritingResourcesToBundlePath_purpose___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v10 = [v5 valueForKey:v6];
    v7 = [v10 JSONObjectRepresentationWritingResourcesToBundlePath:*(a1 + 40) purpose:*(a1 + 56)];
    [*(a1 + 48) setObject:v7 forKeyedSubscript:v6];

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [*(a1 + 48) setObject:v9 forKeyedSubscript:@"BezelCircularClassName"];
  }
}

void __88__CLKComplicationTemplate_JSONObjectRepresentationWritingResourcesToBundlePath_purpose___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v8 = [v5 valueForKey:v6];
    v7 = [v8 JSONObjectRepresentation];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v6];
  }
}

void __88__CLKComplicationTemplate_JSONObjectRepresentationWritingResourcesToBundlePath_purpose___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v8 = [v5 valueForKey:v6];
    v7 = [v8 JSONObjectRepresentationWritingResourcesToBundlePath:*(a1 + 40)];
    [*(a1 + 48) setObject:v7 forKeyedSubscript:v6];
  }
}

void __88__CLKComplicationTemplate_JSONObjectRepresentationWritingResourcesToBundlePath_purpose___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v8 = [v5 valueForKey:v6];
    v7 = [v8 JSONObjectRepresentation];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v6];
  }
}

void __88__CLKComplicationTemplate_JSONObjectRepresentationWritingResourcesToBundlePath_purpose___block_invoke_7(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
    v5 = a2;
    v6 = [v4 valueForKey:v5];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }
}

void __88__CLKComplicationTemplate_JSONObjectRepresentationWritingResourcesToBundlePath_purpose___block_invoke_8(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
    v5 = a2;
    v6 = [v4 valueForKey:v5];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }
}

void __88__CLKComplicationTemplate_JSONObjectRepresentationWritingResourcesToBundlePath_purpose___block_invoke_9(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
    v5 = a2;
    v6 = [v4 valueForKey:v5];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }
}

void __88__CLKComplicationTemplate_JSONObjectRepresentationWritingResourcesToBundlePath_purpose___block_invoke_10(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = a2;
    v7 = [v4 valueForKey:v5];
    v6 = [v7 JSONObjectRepresentation];
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v5];
  }
}

void __88__CLKComplicationTemplate_JSONObjectRepresentationWritingResourcesToBundlePath_purpose___block_invoke_11(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v8 = [v5 valueForKey:v6];
    v7 = [v8 JSONObjectRepresentationWritingResourcesToBundlePath:*(a1 + 40)];
    [*(a1 + 48) setObject:v7 forKeyedSubscript:v6];
  }
}

+ (id)_secureCodingRepresentationOfEmbeddedObjectsDictionary:(id)a3 bundlePath:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:v7];
  if (v9)
  {
    v10 = [v6 allKeys];
    v11 = [v10 containsObject:@"class"];

    if (v11)
    {
      v12 = [objc_opt_class() objectFromJSON:v6 bundle:v9];
    }

    else
    {
      v23 = v9;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      obj = [v6 allKeys];
      v14 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v26;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v25 + 1) + 8 * i);
            v19 = [v6 objectForKeyedSubscript:v18];
            v20 = [a1 _secureCodingRepresentationOfValue:v19 bundlePath:v7];
            if (!v20)
            {

              v12 = 0;
              goto LABEL_17;
            }

            v21 = v20;
            [v8 setObject:v20 forKeyedSubscript:v18];
          }

          v15 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v12 = v8;
LABEL_17:
      v9 = v23;
    }
  }

  else
  {
    v13 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[CLKComplicationTemplate _secureCodingRepresentationOfEmbeddedObjectsDictionary:bundlePath:];
    }

    v12 = 0;
  }

  return v12;
}

+ (id)_secureCodingRepresentationOfEmbeddedObjectsArray:(id)a3 bundlePath:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:v7];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [a1 _secureCodingRepresentationOfValue:*(*(&v19 + 1) + 8 * i) bundlePath:{v7, v19}];
          if (!v15)
          {

            goto LABEL_14;
          }

          v16 = v15;
          [v9 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v9 = v9;
    v17 = v9;
  }

  else
  {
    v9 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CLKComplicationTemplate _secureCodingRepresentationOfEmbeddedObjectsDictionary:bundlePath:];
    }

LABEL_14:
    v17 = 0;
  }

  return v17;
}

+ (id)_secureCodingRepresentationOfValue:(id)a3 bundlePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  if ([v8 isSubclassOfClass:objc_opt_class()])
  {
    v9 = [objc_opt_class() _secureCodingRepresentationOfEmbeddedObjectsDictionary:v6 bundlePath:v7];
LABEL_7:
    v10 = v9;
    goto LABEL_8;
  }

  if ([v8 isSubclassOfClass:objc_opt_class()])
  {
    v9 = [a1 _secureCodingRepresentationOfEmbeddedObjectsArray:v6 bundlePath:v7];
    goto LABEL_7;
  }

  if ([objc_opt_class() classIsCompatibleWithJSONSerialization:v8])
  {
    v9 = v6;
    goto LABEL_7;
  }

  v12 = CLKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [CLKComplicationTemplate _secureCodingRepresentationOfValue:v8 bundlePath:?];
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (void)_setProvidersPaused:(BOOL)a3
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__CLKComplicationTemplate__setProvidersPaused___block_invoke;
  v11[3] = &unk_278A1EE28;
  v11[4] = self;
  v12 = a3;
  [(CLKComplicationTemplate *)self _enumerateTextProviderKeysWithBlock:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__CLKComplicationTemplate__setProvidersPaused___block_invoke_2;
  v9[3] = &unk_278A1EE28;
  v9[4] = self;
  v10 = a3;
  [(CLKComplicationTemplate *)self _enumerateProgressProviderKeysWithBlock:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CLKComplicationTemplate__setProvidersPaused___block_invoke_3;
  v7[3] = &unk_278A1EE28;
  v7[4] = self;
  v8 = a3;
  [(CLKComplicationTemplate *)self _enumerateGaugeProviderKeysWithBlock:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__CLKComplicationTemplate__setProvidersPaused___block_invoke_4;
  v5[3] = &unk_278A1EE28;
  v5[4] = self;
  v6 = a3;
  [(CLKComplicationTemplate *)self _enumerateEmbeddedTemplateKeysWithBlock:v5];
}

void __47__CLKComplicationTemplate__setProvidersPaused___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) valueForKey:a2];
  [v3 setPaused:*(a1 + 40)];
}

void __47__CLKComplicationTemplate__setProvidersPaused___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) valueForKey:a2];
  [v3 setPaused:*(a1 + 40)];
}

void __47__CLKComplicationTemplate__setProvidersPaused___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) valueForKey:a2];
  [v3 setPaused:*(a1 + 40)];
}

void __47__CLKComplicationTemplate__setProvidersPaused___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) valueForKey:a2];
  [v3 _setProvidersPaused:*(a1 + 40)];
}

- (void)_enumerateScalarKeysWithBlock:(id)a3
{
  v4 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__CLKComplicationTemplate__enumerateScalarKeysWithBlock___block_invoke;
  v12[3] = &unk_278A1EE50;
  v5 = v4;
  v13 = v5;
  [(CLKComplicationTemplate *)self _enumerateIntegerKeysWithBlock:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__CLKComplicationTemplate__enumerateScalarKeysWithBlock___block_invoke_2;
  v10[3] = &unk_278A1EE78;
  v6 = v5;
  v11 = v6;
  [(CLKComplicationTemplate *)self _enumerateFloatKeysWithBlock:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__CLKComplicationTemplate__enumerateScalarKeysWithBlock___block_invoke_3;
  v8[3] = &unk_278A1EEA0;
  v9 = v6;
  v7 = v6;
  [(CLKComplicationTemplate *)self _enumerateBOOLKeysWithBlock:v8];
}

- (void)_enumerateAllBasicKeysWithBlock:(id)a3
{
  v4 = a3;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __59__CLKComplicationTemplate__enumerateAllBasicKeysWithBlock___block_invoke;
  v24[3] = &unk_278A1EAB8;
  v5 = v4;
  v25 = v5;
  [(CLKComplicationTemplate *)self _enumerateTextProviderKeysWithBlock:v24];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __59__CLKComplicationTemplate__enumerateAllBasicKeysWithBlock___block_invoke_2;
  v22[3] = &unk_278A1EAE0;
  v6 = v5;
  v23 = v6;
  [(CLKComplicationTemplate *)self _enumerateImageProviderKeysWithBlock:v22];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __59__CLKComplicationTemplate__enumerateAllBasicKeysWithBlock___block_invoke_3;
  v20[3] = &unk_278A1EAB8;
  v7 = v6;
  v21 = v7;
  [(CLKComplicationTemplate *)self _enumerateProgressProviderKeysWithBlock:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__CLKComplicationTemplate__enumerateAllBasicKeysWithBlock___block_invoke_4;
  v18[3] = &unk_278A1EC20;
  v8 = v7;
  v19 = v8;
  [(CLKComplicationTemplate *)self _enumerateScalarKeysWithBlock:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__CLKComplicationTemplate__enumerateAllBasicKeysWithBlock___block_invoke_5;
  v16[3] = &unk_278A1EEA0;
  v9 = v8;
  v17 = v9;
  [(CLKComplicationTemplate *)self _enumerateDateKeysWithBlock:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__CLKComplicationTemplate__enumerateAllBasicKeysWithBlock___block_invoke_6;
  v14[3] = &unk_278A1EAB8;
  v10 = v9;
  v15 = v10;
  [(CLKComplicationTemplate *)self _enumerateGaugeProviderKeysWithBlock:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__CLKComplicationTemplate__enumerateAllBasicKeysWithBlock___block_invoke_7;
  v12[3] = &unk_278A1EEC8;
  v13 = v10;
  v11 = v10;
  [(CLKComplicationTemplate *)self _enumerateFullColorImageProviderKeysWithBlock:v12];
}

+ (id)classesCompatibleWithJSONSerialization
{
  if (classesCompatibleWithJSONSerialization_classSetNTKOnceToken != -1)
  {
    +[CLKComplicationTemplate(JSONSerialization) classesCompatibleWithJSONSerialization];
  }

  v3 = classesCompatibleWithJSONSerialization_classesCompatibleWithJSONSerialization;

  return v3;
}

uint64_t __84__CLKComplicationTemplate_JSONSerialization__classesCompatibleWithJSONSerialization__block_invoke()
{
  v14 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v14 setWithObjects:{v13, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = classesCompatibleWithJSONSerialization_classesCompatibleWithJSONSerialization;
  classesCompatibleWithJSONSerialization_classesCompatibleWithJSONSerialization = v10;

  return MEMORY[0x2821F96F8](v10, v11);
}

+ (id)createJSONRepresentationFromDictionary:(id)a3 bundlePath:(id)a4 purpose:(unint64_t)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v23 = a4;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v8;
  obj = [v8 allKeys];
  v11 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [v10 objectForKeyedSubscript:v15];
        v17 = [a1 _jsonRepresentationFromValue:v16 bundlePath:v23 purpose:a5];
        if (!v17)
        {
          v20 = CLKLoggingObjectForDomain(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            +[CLKComplicationTemplate(JSONSerialization) createJSONRepresentationFromDictionary:bundlePath:purpose:];
          }

          v19 = 0;
          goto LABEL_13;
        }

        v18 = v17;
        [v9 setObject:v17 forKeyedSubscript:v15];
      }

      v12 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v19 = v9;
LABEL_13:

  return v19;
}

+ (id)objectFromJSON:(id)a3 bundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 allKeys];
  v8 = [v7 containsObject:@"class"];

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = [v5 objectForKeyedSubscript:@"class"];
  v10 = NSClassFromString(v9);

  if (!v10)
  {
    v11 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CLKComplicationTemplate(JSONSerialization) objectFromJSON:v11 bundle:?];
    }
  }

  v12 = [objc_opt_class() _superClassFromCompatibleJSONSerializationClass:v10];
  if (!v12)
  {
    v15 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[CLKComplicationTemplate(JSONSerialization) objectFromJSON:bundle:];
    }

    goto LABEL_12;
  }

  v13 = v12;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [[v10 alloc] initWithJSONObjectRepresentation:v5 bundle:v6];
      goto LABEL_19;
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = [v13 providerWithJSONObjectRepresentation:v5];
      goto LABEL_19;
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = [v13 providerWithJSONObjectRepresentation:v5 bundle:v6];
      goto LABEL_19;
    }

    v18 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CLKComplicationTemplate(JSONSerialization) objectFromJSON:v5 bundle:@"class"];
    }

LABEL_12:
    v16 = 0;
    goto LABEL_20;
  }

  v14 = [[v10 alloc] initWithJSONObjectRepresentation:v5];
LABEL_19:
  v16 = v14;
LABEL_20:

  return v16;
}

+ (BOOL)dictionaryIsCompatibleWithJSONSerialization:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 allValues];

  LOBYTE(v4) = [v4 _arrayIsCompatibleWithJSONSerialization:v5];
  return v4;
}

+ (BOOL)_arrayIsCompatibleWithJSONSerialization:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = objc_opt_class();
        if ([v10 isSubclassOfClass:{objc_opt_class(), v13}])
        {
          if (([a1 dictionaryIsCompatibleWithJSONSerialization:v9] & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        else if ([v10 isSubclassOfClass:objc_opt_class()])
        {
          if (([a1 _arrayIsCompatibleWithJSONSerialization:v9] & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        else if (![a1 classIsCompatibleWithJSONSerialization:v10])
        {
LABEL_16:
          v11 = 0;
          goto LABEL_17;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_17:

  return v11;
}

+ (id)_createJSONRepresentationFromArray:(id)a3 bundlePath:(id)a4 purpose:(unint64_t)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = [a1 _jsonRepresentationFromValue:v16 bundlePath:v9 purpose:{a5, v22}];
        if (!v17)
        {
          v20 = CLKLoggingObjectForDomain(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            +[CLKComplicationTemplate(JSONSerialization) createJSONRepresentationFromDictionary:bundlePath:purpose:];
          }

          v19 = 0;
          goto LABEL_13;
        }

        v18 = v17;
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v19 = v10;
LABEL_13:

  return v19;
}

+ (id)_jsonObjectRepresentationFromObject:(id)a3 bundlePath:(id)a4 purpose:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = objc_opt_class();
    if ([v9 classIsCompatibleWithJSONSerialization:objc_opt_class()])
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [v7 JSONObjectRepresentation];
      }

      else if (objc_opt_respondsToSelector())
      {
        v10 = [v7 JSONObjectRepresentationWritingResourcesToBundlePath:v8];
      }

      else if (objc_opt_respondsToSelector())
      {
        v10 = [v7 JSONObjectRepresentationWritingResourcesToBundlePath:v8 purpose:a5];
      }

      else
      {
        v10 = v7;
      }

      v12 = v10;
      goto LABEL_15;
    }

    v11 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[CLKComplicationTemplate(JSONSerialization) _jsonObjectRepresentationFromObject:bundlePath:purpose:];
    }
  }

  v12 = 0;
LABEL_15:

  return v12;
}

+ (id)_jsonRepresentationFromValue:(id)a3 bundlePath:(id)a4 purpose:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [a1 createJSONRepresentationFromDictionary:v8 bundlePath:v9 purpose:a5];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a1 _createJSONRepresentationFromArray:v8 bundlePath:v9 purpose:a5];
    }

    else
    {
      [a1 _jsonObjectRepresentationFromObject:v8 bundlePath:v9 purpose:a5];
    }
    v10 = ;
  }

  v11 = v10;

  return v11;
}

+ (Class)_superClassFromCompatibleJSONSerializationClass:(Class)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [a1 classesCompatibleWithJSONSerialization];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if (([(objc_class *)v3 isSubclassOfClass:v9]& 1) != 0)
          {
            v3 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v3 = 0;
LABEL_12:
  }

  return v3;
}

- (int64_t)compatibleFamily
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0x7FFFFFFFFFFFFFFFLL;
}

- (void)validateWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&dword_23702D000, a2, OS_LOG_TYPE_FAULT, "%@", &v3, 0xCu);
}

void __43__CLKComplicationTemplate_encodeWithCoder___block_invoke_10_cold_1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  v1 = v0;
  OUTLINED_FUNCTION_0(&dword_23702D000, v2, v3, "Invalid embedded template class (%@)", v4, v5, v6, v7, v8);
}

+ (void)complicationTemplateWithJSONObjectRepresentation:(void *)a1 bundle:(uint8_t *)buf purpose:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_23702D000, log, OS_LOG_TYPE_ERROR, "Complication bundle: %@", buf, 0xCu);
}

+ (void)_secureCodingRepresentationOfValue:(objc_class *)a1 bundlePath:.cold.1(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23702D000, v2, v3, "Cannot encode class: %@ since it is not a supported type", v4, v5, v6, v7, v8);
}

@end