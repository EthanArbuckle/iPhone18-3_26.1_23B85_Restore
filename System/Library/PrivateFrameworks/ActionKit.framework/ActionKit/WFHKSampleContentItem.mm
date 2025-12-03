@interface WFHKSampleContentItem
+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)instance;
+ (id)itemWithQuantitySample:(id)sample unit:(id)unit;
+ (id)itemWithQuantitySamples:(id)samples unit:(id)unit;
+ (id)localizedFilterDescriptionWithContext:(id)context;
+ (id)localizedPluralFilterDescriptionWithContext:(id)context;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
+ (void)runQuery:(id)query withItems:(id)items permissionRequestor:(id)requestor completionHandler:(id)handler;
- (BOOL)canGenerateRepresentationForType:(id)type;
- (BOOL)getListAltText:(id)text;
- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size;
- (id)categorySample;
- (id)defaultSourceForRepresentation:(id)representation;
- (id)duration;
- (id)endDate;
- (id)localizedCategorySampleValue;
- (id)quantitySample;
- (id)quantitySampleContainer;
- (id)readableTypeIdentifier;
- (id)sampleValue;
- (id)sourceName;
- (id)startDate;
- (id)unit;
- (void)generateObjectRepresentations:(id)representations options:(id)options forClass:(Class)class;
@end

@implementation WFHKSampleContentItem

- (id)defaultSourceForRepresentation:(id)representation
{
  v4 = objc_alloc(MEMORY[0x277CD3A58]);
  v5 = [v4 initWithBundleIdentifier:*MEMORY[0x277D7A250]];
  mEMORY[0x277CD3A88] = [MEMORY[0x277CD3A88] sharedResolver];
  v7 = [mEMORY[0x277CD3A88] resolvedAppMatchingDescriptor:v5];

  v8 = MEMORY[0x277CFC2D0];
  cachingIdentifier = [(WFHKSampleContentItem *)self cachingIdentifier];
  v10 = [v8 attributionSetWithAppDescriptor:v7 disclosureLevel:1 originalItemIdentifier:cachingIdentifier];

  return v10;
}

- (BOOL)canGenerateRepresentationForType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToClass:objc_opt_class()])
  {
    quantitySampleContainer = [(WFHKSampleContentItem *)self quantitySampleContainer];
    if (quantitySampleContainer)
    {
      unit = [(WFHKSampleContentItem *)self unit];
      hasSubsamples = unit != 0;
    }

    else
    {
      hasSubsamples = 0;
    }

    goto LABEL_9;
  }

  if ([typeCopy isEqualToClass:objc_opt_class()])
  {
    quantitySampleContainer2 = [(WFHKSampleContentItem *)self quantitySampleContainer];

    if (quantitySampleContainer2)
    {
      quantitySampleContainer = [(WFHKSampleContentItem *)self quantitySampleContainer];
      hasSubsamples = [quantitySampleContainer hasSubsamples];
LABEL_9:

      goto LABEL_10;
    }
  }

  v10.receiver = self;
  v10.super_class = WFHKSampleContentItem;
  hasSubsamples = [(WFHKSampleContentItem *)&v10 canGenerateRepresentationForType:typeCopy];
LABEL_10:

  return hasSubsamples;
}

- (BOOL)getListAltText:(id)text
{
  if (text)
  {
    v4 = MEMORY[0x277CCA968];
    textCopy = text;
    v6 = objc_alloc_init(v4);
    [v6 setDoesRelativeDateFormatting:1];
    [v6 setDateStyle:1];
    [v6 setTimeStyle:1];
    quantitySample = [(WFHKSampleContentItem *)self quantitySample];
    startDate = [quantitySample startDate];
    v9 = [v6 stringFromDate:startDate];
    textCopy[2](textCopy, v9);
  }

  return 1;
}

- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size
{
  thumbnailCopy = thumbnail;
  quantitySample = [(WFHKSampleContentItem *)self quantitySample];
  quantityType = [quantitySample quantityType];
  v8 = quantityType;
  if (quantityType)
  {
    categoryType = quantityType;
  }

  else
  {
    categorySample = [(WFHKSampleContentItem *)self categorySample];
    categoryType = [categorySample categoryType];
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v11 = getHKDisplayTypeControllerClass_softClass_12113;
  v29 = getHKDisplayTypeControllerClass_softClass_12113;
  if (!getHKDisplayTypeControllerClass_softClass_12113)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __getHKDisplayTypeControllerClass_block_invoke_12114;
    v25[3] = &unk_278C222B8;
    v25[4] = &v26;
    __getHKDisplayTypeControllerClass_block_invoke_12114(v25);
    v11 = v27[3];
  }

  v12 = v11;
  _Block_object_dispose(&v26, 8);
  wf_shortcutsAppHealthStore = [MEMORY[0x277CCD4D8] wf_shortcutsAppHealthStore];
  v14 = [v11 sharedInstanceForHealthStore:wf_shortcutsAppHealthStore];
  v15 = [v14 displayTypeForObjectTypeUnifyingBloodPressureTypes:categoryType];

  v16 = objc_alloc(MEMORY[0x277D79E20]);
  displayCategory = [v15 displayCategory];
  color = [displayCategory color];
  v19 = [v16 initWithPlatformColor:color];

  v20 = objc_alloc(MEMORY[0x277D79FC8]);
  listIcon = [v15 listIcon];
  v22 = [v20 initWithPlatformImage:listIcon];
  v23 = [v22 imageWithTintColor:v19];

  if (v23)
  {
    thumbnailCopy[2](thumbnailCopy, v23, 0);
  }

  return v23 != 0;
}

- (id)sourceName
{
  quantitySample = [(WFHKSampleContentItem *)self quantitySample];
  sourceRevision = [quantitySample sourceRevision];
  source = [sourceRevision source];

  name = [source name];
  v6 = [name stringByReplacingOccurrencesOfString:@" " withString:@" "];

  return v6;
}

- (id)duration
{
  endDate = [(WFHKSampleContentItem *)self endDate];
  startDate = [(WFHKSampleContentItem *)self startDate];
  [endDate timeIntervalSinceDate:startDate];
  v6 = v5;

  v7 = [objc_alloc(MEMORY[0x277CFC540]) initWithTimeInterval:224 allowedUnits:0 unitsStyle:1 zeroFormattingBehavior:v6];

  return v7;
}

- (id)endDate
{
  quantitySample = [(WFHKSampleContentItem *)self quantitySample];
  if (quantitySample)
  {
    [(WFHKSampleContentItem *)self quantitySample];
  }

  else
  {
    [(WFHKSampleContentItem *)self categorySample];
  }
  v4 = ;
  endDate = [v4 endDate];

  return endDate;
}

- (id)startDate
{
  quantitySample = [(WFHKSampleContentItem *)self quantitySample];
  if (quantitySample)
  {
    [(WFHKSampleContentItem *)self quantitySample];
  }

  else
  {
    [(WFHKSampleContentItem *)self categorySample];
  }
  v4 = ;
  startDate = [v4 startDate];

  return startDate;
}

- (id)categorySample
{
  v3 = objc_opt_class();

  return [(WFHKSampleContentItem *)self objectForClass:v3];
}

- (id)unit
{
  quantitySampleContainer = [(WFHKSampleContentItem *)self quantitySampleContainer];
  unit = [quantitySampleContainer unit];

  return unit;
}

- (id)localizedCategorySampleValue
{
  categorySample = [(WFHKSampleContentItem *)self categorySample];
  categoryType = [categorySample categoryType];
  v4 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB8E0]];

  if (categoryType == v4)
  {
    v5 = +[WFHealthKitHelper readableAppleStandingHourFromEnum:](WFHealthKitHelper, "readableAppleStandingHourFromEnum:", [categorySample value]);
  }

  else
  {
    v5 = 0;
  }

  categoryType2 = [categorySample categoryType];
  v7 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB918]];

  if (categoryType2 == v7)
  {
    v8 = +[WFHealthKitHelper readableCervicalMucusQualityFromEnum:](WFHealthKitHelper, "readableCervicalMucusQualityFromEnum:", [categorySample value]);

    v5 = v8;
  }

  categoryType3 = [categorySample categoryType];
  v10 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA28]];

  if (categoryType3 == v10)
  {
    v11 = +[WFHealthKitHelper readableMenstrualFlowFromEnum:](WFHealthKitHelper, "readableMenstrualFlowFromEnum:", [categorySample value]);

    v5 = v11;
  }

  categoryType4 = [categorySample categoryType];
  v13 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA50]];

  if (categoryType4 == v13)
  {
    v14 = +[WFHealthKitHelper readableOvulationTestResultFromEnum:](WFHealthKitHelper, "readableOvulationTestResultFromEnum:", [categorySample value]);

    v5 = v14;
  }

  categoryType5 = [categorySample categoryType];
  v16 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];

  if (categoryType5 == v16)
  {
    v21 = +[WFHealthKitHelper readableSleepAnalysisFromEnum:](WFHealthKitHelper, "readableSleepAnalysisFromEnum:", [categorySample value]);
LABEL_25:
    v34 = v21;

    goto LABEL_26;
  }

  categoryType6 = [categorySample categoryType];
  v18 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA98]];

  if (categoryType6 == v18)
  {
    metadata = [categorySample metadata];
    v20 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCC508]];

    if (v20)
    {
      +[WFHealthKitHelper readableSexualActivityFromBool:](WFHealthKitHelper, "readableSexualActivityFromBool:", [v20 BOOLValue]);
    }

    else
    {
      WFLocalizedString(@"Unspecified");
    }
    v22 = ;

    v5 = v22;
  }

  categoryType7 = [categorySample categoryType];
  v24 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB8D8]];

  if (categoryType7 == v24)
  {
    v21 = +[WFHealthKitHelper readableAppetiteChangesValueFromEnum:](WFHealthKitHelper, "readableAppetiteChangesValueFromEnum:", [categorySample value]);
    goto LABEL_25;
  }

  categoryType8 = [categorySample categoryType];
  v26 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA38]];
  v27 = v26;
  if (categoryType8 == v26)
  {

    goto LABEL_24;
  }

  categoryType9 = [categorySample categoryType];
  v29 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBAC8]];

  if (categoryType9 == v29)
  {
LABEL_24:
    v21 = +[WFHealthKitHelper readablePresenceValueFromEnum:](WFHealthKitHelper, "readablePresenceValueFromEnum:", [categorySample value]);
    goto LABEL_25;
  }

  v30 = WFHealthKitSymptomsTypeIdentifiers();
  categoryType10 = [categorySample categoryType];
  identifier = [categoryType10 identifier];
  v33 = [v30 containsObject:identifier];

  if (v33)
  {
    v21 = +[WFHealthKitHelper readableSeverityValueFromEnum:](WFHealthKitHelper, "readableSeverityValueFromEnum:", [categorySample value]);
    goto LABEL_25;
  }

  if (v5)
  {
    v21 = WFLocalizedParameterValue(v5);
    goto LABEL_25;
  }

  v34 = &stru_2850323E8;
LABEL_26:

  return v34;
}

- (id)sampleValue
{
  quantitySampleContainer = [(WFHKSampleContentItem *)self quantitySampleContainer];

  if (quantitySampleContainer)
  {
    unit = [(WFHKSampleContentItem *)self unit];

    if (unit)
    {
      quantitySample = [(WFHKSampleContentItem *)self quantitySample];
      quantitySample2 = [(WFHKSampleContentItem *)self quantitySample];

      if (quantitySample2)
      {
        v7 = MEMORY[0x277CCABB0];
        quantity = [quantitySample quantity];
        unit2 = [(WFHKSampleContentItem *)self unit];
        [quantity wf_normalizedDoubleValueForUnit:unit2];
        v10 = [v7 numberWithDouble:?];
        stringValue = [v10 stringValue];

        goto LABEL_8;
      }
    }

    stringValue = &stru_2850323E8;
  }

  else
  {
    stringValue = [(WFHKSampleContentItem *)self localizedCategorySampleValue];
  }

LABEL_8:

  return stringValue;
}

- (id)readableTypeIdentifier
{
  quantitySample = [(WFHKSampleContentItem *)self quantitySample];
  if (quantitySample)
  {
    quantitySample2 = [(WFHKSampleContentItem *)self quantitySample];
    [quantitySample2 quantityType];
  }

  else
  {
    quantitySample2 = [(WFHKSampleContentItem *)self categorySample];
    [quantitySample2 categoryType];
  }
  v5 = ;
  identifier = [v5 identifier];

  v7 = [WFHealthKitHelper readableSampleTypeIdentifierFromSampleTypeIdentifier:identifier];

  return v7;
}

- (id)quantitySample
{
  quantitySampleContainer = [(WFHKSampleContentItem *)self quantitySampleContainer];
  quantitySample = [quantitySampleContainer quantitySample];

  return quantitySample;
}

- (id)quantitySampleContainer
{
  v3 = objc_opt_class();

  return [(WFHKSampleContentItem *)self objectForClass:v3];
}

- (void)generateObjectRepresentations:(id)representations options:(id)options forClass:(Class)class
{
  v37[1] = *MEMORY[0x277D85DE8];
  representationsCopy = representations;
  if (objc_opt_class() == class)
  {
    quantitySampleContainer = objc_opt_new();
    quantitySample = [(WFHKSampleContentItem *)self quantitySample];
    startDate = [quantitySample startDate];

    quantitySample2 = [(WFHKSampleContentItem *)self quantitySample];
    endDate = [quantitySample2 endDate];

    if ([startDate isEqualToDate:endDate])
    {
      v13 = MEMORY[0x277CFC488];
      v14 = @"Sample Date";
      v15 = startDate;
    }

    else
    {
      if (startDate)
      {
        v20 = [MEMORY[0x277CFC488] object:startDate named:@"Sample Start Date"];
        [quantitySampleContainer addObject:v20];
      }

      if (!endDate)
      {
        goto LABEL_14;
      }

      v13 = MEMORY[0x277CFC488];
      v14 = @"Sample End Date";
      v15 = endDate;
    }

    v21 = [v13 object:v15 named:v14];
    [quantitySampleContainer addObject:v21];

LABEL_14:
    v22 = [quantitySampleContainer copy];
    representationsCopy[2](representationsCopy, v22, 0);

    goto LABEL_16;
  }

  if (objc_opt_class() != class)
  {
    if (objc_opt_class() != class)
    {
      if (objc_opt_class() == class)
      {
        v29 = MEMORY[0x277CFC488];
        v30 = [WFConcreteStatisticsSampleProvider alloc];
        quantitySampleContainer = [(WFHKSampleContentItem *)self quantitySampleContainer];
        v31 = [(WFConcreteStatisticsSampleProvider *)v30 initWithSampleProvider:quantitySampleContainer];
        name = [(WFHKSampleContentItem *)self name];
        v33 = [v29 object:v31 named:name];
        v35 = v33;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
        representationsCopy[2](representationsCopy, v34, 0);
      }

      else
      {
        quantitySampleContainer = [objc_opt_class() badCoercionErrorForObjectClass:class];
        (representationsCopy)[2](representationsCopy, 0, quantitySampleContainer);
      }

      goto LABEL_17;
    }

    v23 = MEMORY[0x277CFC488];
    v24 = MEMORY[0x277CCABB0];
    quantitySampleContainer = [(WFHKSampleContentItem *)self quantitySample];
    startDate = [quantitySampleContainer quantity];
    endDate = [(WFHKSampleContentItem *)self unit];
    [startDate wf_normalizedDoubleValueForUnit:endDate];
    v25 = [v24 numberWithDouble:?];
    v26 = [v23 object:v25];
    v36 = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    representationsCopy[2](representationsCopy, v27, 0);

LABEL_16:
LABEL_17:

    goto LABEL_18;
  }

  v16 = MEMORY[0x277CFC488];
  sampleValue = [(WFHKSampleContentItem *)self sampleValue];
  v18 = [v16 object:sampleValue];
  v37[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  representationsCopy[2](representationsCopy, v19, 0);

LABEL_18:
  v28 = *MEMORY[0x277D85DE8];
}

+ (id)localizedPluralFilterDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Health Samples", @"Health Samples");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedFilterDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Health Sample", @"Health Sample");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Health samples", @"Health samples");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Health sample", @"Health sample");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [MEMORY[0x277CFC490] typeWithClass:objc_opt_class()];
  v4 = [MEMORY[0x277CFC490] typeWithClass:objc_opt_class()];
  v5 = [MEMORY[0x277CFC490] typeWithClass:objc_opt_class()];
  v6 = [MEMORY[0x277CFC490] typeWithClass:objc_opt_class()];
  v7 = [v2 orderedSetWithObjects:{v3, v4, v5, v6, 0}];

  return v7;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [MEMORY[0x277CFC490] typeWithClass:objc_opt_class()];
  v4 = [MEMORY[0x277CFC490] typeWithClass:objc_opt_class()];
  v5 = [v2 orderedSetWithObjects:{v3, v4, 0}];

  return v5;
}

+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)instance
{
  instanceCopy = instance;
  if ([instanceCopy isEqualToClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(instanceCopy, "isEqualToClass:", objc_opt_class()))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___WFHKSampleContentItem;
    v5 = objc_msgSendSuper2(&v7, sel_supportedTypeMustBeDeterminedByInstance_, instanceCopy);
  }

  return v5;
}

+ (void)runQuery:(id)query withItems:(id)items permissionRequestor:(id)requestor completionHandler:(id)handler
{
  queryCopy = query;
  itemsCopy = items;
  requestorCopy = requestor;
  handlerCopy = handler;
  if (![itemsCopy count])
  {
    v14 = [WFHealthKitHelper extractHKDataFromContentQuery:queryCopy];
    startDate = [v14 startDate];
    if (startDate)
    {
      v16 = startDate;
      endDate = [v14 endDate];
      if (endDate)
      {
        v18 = endDate;
        sampleType = [v14 sampleType];

        if (sampleType)
        {
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __82__WFHKSampleContentItem_runQuery_withItems_permissionRequestor_completionHandler___block_invoke;
          aBlock[3] = &unk_278C1A9E8;
          v20 = v14;
          v37 = v20;
          v40 = handlerCopy;
          v38 = queryCopy;
          v39 = requestorCopy;
          selfCopy = self;
          v21 = _Block_copy(aBlock);
          v34[0] = 0;
          v34[1] = v34;
          v34[2] = 0x3032000000;
          v34[3] = __Block_byref_object_copy__12146;
          v34[4] = __Block_byref_object_dispose__12147;
          v35 = 0;
          v22 = dispatch_group_create();
          sourceName = [v20 sourceName];

          if (sourceName)
          {
            dispatch_group_enter(v22);
            sourceName2 = [v20 sourceName];
            sampleType2 = [v20 sampleType];
            v31[0] = MEMORY[0x277D85DD0];
            v31[1] = 3221225472;
            v31[2] = __82__WFHKSampleContentItem_runQuery_withItems_permissionRequestor_completionHandler___block_invoke_519;
            v31[3] = &unk_278C1AA10;
            v33 = v34;
            v32 = v22;
            [WFHealthKitHelper sourcesWithName:sourceName2 ofSampleType:sampleType2 completion:v31];
          }

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __82__WFHKSampleContentItem_runQuery_withItems_permissionRequestor_completionHandler___block_invoke_2_521;
          block[3] = &unk_278C223F8;
          v29 = v21;
          v30 = v34;
          v26 = v21;
          dispatch_group_notify(v22, MEMORY[0x277D85CD0], block);

          _Block_object_dispose(v34, 8);
LABEL_12:

          goto LABEL_13;
        }
      }

      else
      {
      }
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }

    goto LABEL_12;
  }

  v27.receiver = self;
  v27.super_class = &OBJC_METACLASS___WFHKSampleContentItem;
  objc_msgSendSuper2(&v27, sel_runQuery_withItems_permissionRequestor_completionHandler_, queryCopy, itemsCopy, requestorCopy, handlerCopy);
LABEL_13:
}

void __82__WFHKSampleContentItem_runQuery_withItems_permissionRequestor_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CBEB18];
  v5 = MEMORY[0x277CCD838];
  v6 = [*(a1 + 32) startDate];
  v7 = [*(a1 + 32) endDate];
  v8 = [v5 predicateForSamplesWithStartDate:v6 endDate:v7 options:0];
  v9 = [v4 arrayWithObject:v8];

  v10 = 0x277CCA000;
  if (v3)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v12 = v3;
    v13 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v37;
      do
      {
        v16 = 0;
        do
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [MEMORY[0x277CCD838] predicateForObjectsFromSource:*(*(&v36 + 1) + 8 * v16)];
          [v11 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v14);
    }

    v10 = 0x277CCA000uLL;
    v18 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v11];
    [v9 addObject:v18];
  }

  v19 = *(v10 + 2336);
  v20 = [v9 copy];
  v21 = [v19 andPredicateWithSubpredicates:v20];

  v22 = objc_alloc(MEMORY[0x277CCD8D0]);
  v23 = [*(a1 + 32) sampleType];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __82__WFHKSampleContentItem_runQuery_withItems_permissionRequestor_completionHandler___block_invoke_2;
  v32[3] = &unk_278C1A9C0;
  v24 = *(a1 + 56);
  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  *&v27 = *(a1 + 48);
  *(&v27 + 1) = v24;
  *&v28 = v25;
  *(&v28 + 1) = v26;
  v33 = v28;
  v34 = v27;
  v35 = *(a1 + 64);
  v29 = [v22 initWithSampleType:v23 predicate:v21 limit:0 sortDescriptors:0 resultsHandler:v32];

  v30 = [MEMORY[0x277CCD4D8] wf_shortcutsAppHealthStore];
  [v30 executeQuery:v29];

  v31 = *MEMORY[0x277D85DE8];
}

void __82__WFHKSampleContentItem_runQuery_withItems_permissionRequestor_completionHandler___block_invoke_519(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __82__WFHKSampleContentItem_runQuery_withItems_permissionRequestor_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [*(a1 + 32) quantityType];

    if (v8)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __82__WFHKSampleContentItem_runQuery_withItems_permissionRequestor_completionHandler___block_invoke_3;
      v15[3] = &unk_278C1A978;
      v16 = *(a1 + 40);
      v9 = [v6 if_map:v15];
    }

    else
    {
      v9 = [v6 if_map:&__block_literal_global_12154];
    }

    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14.receiver = *(a1 + 64);
    v14.super_class = &OBJC_METACLASS___WFHKSampleContentItem;
    objc_msgSendSuper2(&v14, sel_runQuery_withItems_permissionRequestor_completionHandler_, v11, v9, v12, v13);
  }

  else
  {
    v10 = *(a1 + 56);
    if (v10)
    {
      (*(v10 + 16))(v10, 0, v7);
    }
  }
}

id __82__WFHKSampleContentItem_runQuery_withItems_permissionRequestor_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 userInfo];
  v5 = [v4 objectForKey:@"WFHKSampleContentItemQueryUnit"];
  v6 = [WFHKSampleContentItem itemWithQuantitySample:v3 unit:v5];

  return v6;
}

+ (id)stringConversionBehavior
{
  v2 = MEMORY[0x277CFC310];
  v3 = [self propertyForName:@"Value"];
  v4 = [v2 accessingProperty:v3];

  return v4;
}

+ (id)propertyBuilders
{
  v38[7] = *MEMORY[0x277D85DE8];
  v36 = +[WFHealthKitHelper localizedSampleTypes];
  v2 = MEMORY[0x277CFC338];
  v37 = WFLocalizedContentPropertyNameMarker(@"Type");
  v35 = [v2 keyPath:@"readableTypeIdentifier" name:v37 class:objc_opt_class()];
  v34 = [v35 primary:1];
  v33 = [v34 possibleValues:v36];
  v32 = [v33 sortable:0];
  v31 = [v32 filterable:0];
  v38[0] = v31;
  v3 = MEMORY[0x277CFC338];
  v30 = WFLocalizedContentPropertyNameMarker(@"Value");
  v29 = [v3 keyPath:@"sampleValue" name:v30 class:objc_opt_class()];
  v38[1] = v29;
  v4 = MEMORY[0x277CFC338];
  v28 = WFLocalizedContentPropertyNameMarker(@"Unit");
  v27 = [v4 keyPath:@"unit.unitString" name:v28 class:objc_opt_class()];
  v26 = [v27 sortable:0];
  v25 = [v26 filterable:0];
  v38[2] = v25;
  v5 = MEMORY[0x277CFC338];
  v24 = WFLocalizedContentPropertyNameMarker(@"Start Date");
  v23 = [v5 keyPath:@"startDate" name:v24 class:objc_opt_class()];
  v22 = [v23 tense:1];
  v6 = [v22 comparableUnits:8220];
  v38[3] = v6;
  v7 = MEMORY[0x277CFC338];
  v8 = WFLocalizedContentPropertyNameMarker(@"End Date");
  v9 = [v7 keyPath:@"endDate" name:v8 class:objc_opt_class()];
  v10 = [v9 comparableUnits:8220];
  v38[4] = v10;
  v11 = MEMORY[0x277CFC338];
  v12 = WFLocalizedContentPropertyNameMarker(@"Duration");
  v13 = [v11 keyPath:@"duration" name:v12 class:objc_opt_class()];
  v14 = [v13 timeUnits:224];
  v38[5] = v14;
  v15 = MEMORY[0x277CFC338];
  v16 = WFLocalizedContentPropertyNameMarker(@"Source");
  v17 = [v15 keyPath:@"sourceName" name:v16 class:objc_opt_class()];
  v18 = [v17 possibleValues:MEMORY[0x277CBEBF8]];
  v38[6] = v18;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:7];

  v19 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)itemWithQuantitySamples:(id)samples unit:(id)unit
{
  unitCopy = unit;
  samplesCopy = samples;
  v7 = [[WFHKQuantitySampleContainer alloc] initWithSubsamples:samplesCopy unit:unitCopy];

  v8 = [(WFContentItem *)WFHKSampleContentItem itemWithObject:v7];

  return v8;
}

+ (id)itemWithQuantitySample:(id)sample unit:(id)unit
{
  unitCopy = unit;
  sampleCopy = sample;
  v7 = [[WFHKQuantitySampleContainer alloc] initWithSample:sampleCopy unit:unitCopy];

  v8 = [(WFContentItem *)WFHKSampleContentItem itemWithObject:v7];

  return v8;
}

@end