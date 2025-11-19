@interface CLKComplicationTemplateGraphicBezelCircularText
+ (CLKComplicationTemplateGraphicBezelCircularText)templateWithCircularTemplate:(CLKComplicationTemplateGraphicCircular *)circularTemplate;
+ (CLKComplicationTemplateGraphicBezelCircularText)templateWithCircularTemplate:(CLKComplicationTemplateGraphicCircular *)circularTemplate textProvider:(CLKTextProvider *)textProvider;
- (BOOL)needsSerializableCopy;
- (CLKComplicationTemplateGraphicBezelCircularText)initWithCircularTemplate:(CLKComplicationTemplateGraphicCircular *)circularTemplate textProvider:(CLKTextProvider *)textProvider;
- (id)_validEmbeddedTemplateClassNamesForKey:(id)a3;
- (id)serializableCopyWithImageProviders:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicBezelCircularText

- (CLKComplicationTemplateGraphicBezelCircularText)initWithCircularTemplate:(CLKComplicationTemplateGraphicCircular *)circularTemplate textProvider:(CLKTextProvider *)textProvider
{
  v6 = circularTemplate;
  v7 = textProvider;
  v11.receiver = self;
  v11.super_class = CLKComplicationTemplateGraphicBezelCircularText;
  v8 = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = v8;
  if (v8)
  {
    [(CLKComplicationTemplateGraphicBezelCircularText *)v8 setCircularTemplate:v6];
    [(CLKComplicationTemplateGraphicBezelCircularText *)v9 setTextProvider:v7];
  }

  return v9;
}

+ (CLKComplicationTemplateGraphicBezelCircularText)templateWithCircularTemplate:(CLKComplicationTemplateGraphicCircular *)circularTemplate
{
  v4 = circularTemplate;
  v5 = [[a1 alloc] initWithCircularTemplate:v4];

  return v5;
}

+ (CLKComplicationTemplateGraphicBezelCircularText)templateWithCircularTemplate:(CLKComplicationTemplateGraphicCircular *)circularTemplate textProvider:(CLKTextProvider *)textProvider
{
  v6 = textProvider;
  v7 = circularTemplate;
  v8 = [[a1 alloc] initWithCircularTemplate:v7 textProvider:v6];

  return v8;
}

- (id)_validEmbeddedTemplateClassNamesForKey:(id)a3
{
  if (_validEmbeddedTemplateClassNamesForKey__onceToken != -1)
  {
    [CLKComplicationTemplateGraphicBezelCircularText _validEmbeddedTemplateClassNamesForKey:];
  }

  v4 = _validEmbeddedTemplateClassNamesForKey____classNames;

  return v4;
}

void __90__CLKComplicationTemplateGraphicBezelCircularText__validEmbeddedTemplateClassNamesForKey___block_invoke()
{
  v36[16] = *MEMORY[0x277D85DE8];
  v31 = MEMORY[0x277CBEB98];
  v0 = objc_opt_class();
  v35 = NSStringFromClass(v0);
  v36[0] = v35;
  v1 = objc_opt_class();
  v34 = NSStringFromClass(v1);
  v36[1] = v34;
  v2 = objc_opt_class();
  v33 = NSStringFromClass(v2);
  v36[2] = v33;
  v3 = objc_opt_class();
  v32 = NSStringFromClass(v3);
  v36[3] = v32;
  v4 = objc_opt_class();
  v30 = NSStringFromClass(v4);
  v36[4] = v30;
  v5 = objc_opt_class();
  v29 = NSStringFromClass(v5);
  v36[5] = v29;
  v6 = objc_opt_class();
  v28 = NSStringFromClass(v6);
  v36[6] = v28;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v36[7] = v8;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v36[8] = v10;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v36[9] = v12;
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v36[10] = v14;
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v36[11] = v16;
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v36[12] = v18;
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v36[13] = v20;
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v36[14] = v22;
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  v36[15] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:16];
  v26 = [v31 setWithArray:v25];
  v27 = _validEmbeddedTemplateClassNamesForKey____classNames;
  _validEmbeddedTemplateClassNamesForKey____classNames = v26;
}

- (BOOL)needsSerializableCopy
{
  v2 = [(CLKComplicationTemplateGraphicBezelCircularText *)self circularTemplate];
  v3 = [v2 needsSerializableCopy];

  return v3;
}

- (id)serializableCopyWithImageProviders:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__CLKComplicationTemplateGraphicBezelCircularText_serializableCopyWithImageProviders___block_invoke;
  v11[3] = &unk_278A1EF38;
  v11[4] = &v12;
  [v4 enumerateKeysAndObjectsUsingBlock:v11];
  v5 = [(CLKComplicationTemplateGraphicBezelCircularText *)self circularTemplate];
  v6 = [v5 serializableCopyWithImageProviders:v13[5]];

  v7 = [CLKComplicationTemplateGraphicBezelCircularText alloc];
  v8 = [(CLKComplicationTemplateGraphicBezelCircularText *)self textProvider];
  v9 = [(CLKComplicationTemplateGraphicBezelCircularText *)v7 initWithCircularTemplate:v6 textProvider:v8];

  [(CLKComplicationTemplate *)v9 setSdkVersion:[(CLKComplicationTemplate *)self sdkVersion]];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __86__CLKComplicationTemplateGraphicBezelCircularText_serializableCopyWithImageProviders___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = [a2 componentsSeparatedByString:@"."];
  if ([v5 count] >= 2)
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 isEqualToString:@"circularTemplate"];

    if (v7)
    {
      v8 = *(*(*(a1 + 32) + 8) + 40);
      v9 = [v5 objectAtIndexedSubscript:1];
      [v8 setObject:v10 forKeyedSubscript:v9];
    }
  }
}

@end