@interface CLKWidgetComplicationDescriptor
+ (Class)_INIntentClass;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDescriptor:(id)descriptor;
- (CHSExtensionIdentity)extensionIdentity;
- (CLKWidgetComplicationDescriptor)init;
- (CLKWidgetComplicationDescriptor)initWithCoder:(id)coder;
- (CLKWidgetComplicationDescriptor)initWithExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier kind:(id)kind intent:(id)intent;
- (CLKWidgetComplicationDescriptor)initWithExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier kind:(id)kind intentReference:(id)reference;
- (CLKWidgetComplicationDescriptor)initWithJSONObjectRepresentation:(id)representation;
- (CLKWidgetComplicationDescriptor)initWithWidgetDescriptor:(id)descriptor intent:(id)intent;
- (CLKWidgetComplicationDescriptor)initWithWidgetDescriptor:(id)descriptor intentRecommendation:(id)recommendation;
- (CLKWidgetComplicationDescriptor)initWithWidgetDescriptor:(id)descriptor intentReference:(id)reference;
- (id)JSONObjectRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLKWidgetComplicationDescriptor

+ (Class)_INIntentClass
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getINIntentClass_softClass_0;
  v9 = getINIntentClass_softClass_0;
  if (!getINIntentClass_softClass_0)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getINIntentClass_block_invoke_0;
    v5[3] = &unk_278A1E6A0;
    v5[4] = &v6;
    __getINIntentClass_block_invoke_0(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (CLKWidgetComplicationDescriptor)init
{
  v3.receiver = self;
  v3.super_class = CLKWidgetComplicationDescriptor;
  return [(CLKWidgetComplicationDescriptor *)&v3 init];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = CLKWidgetComplicationDescriptor;
  v4 = [(CLKWidgetComplicationDescriptor *)&v9 description];
  v5 = objc_msgSend(v3, "stringWithFormat:", @"%@ (%@, %@, %@"), v4, self->_extensionBundleIdentifier, self->_containerBundleIdentifier, self->_kind;

  intentReference = self->_intentReference;
  if (intentReference)
  {
    [v5 stringByAppendingFormat:@", %lli"], -[CLKIntentReference indexingHash](intentReference, "indexingHash"));
  }

  else
  {
    [v5 stringByAppendingString:@""]);
  }
  v7 = ;

  return v7;
}

- (CLKWidgetComplicationDescriptor)initWithWidgetDescriptor:(id)descriptor intentRecommendation:(id)recommendation
{
  descriptorCopy = descriptor;
  intentReference = [recommendation intentReference];
  intent = [intentReference intent];
  v9 = [(CLKWidgetComplicationDescriptor *)self initWithWidgetDescriptor:descriptorCopy intent:intent];

  return v9;
}

- (CLKWidgetComplicationDescriptor)initWithWidgetDescriptor:(id)descriptor intent:(id)intent
{
  intentCopy = intent;
  descriptorCopy = descriptor;
  v8 = [[CLKIntentReference alloc] initWithIntent:intentCopy];

  v9 = [(CLKWidgetComplicationDescriptor *)self initWithWidgetDescriptor:descriptorCopy intentReference:v8];
  return v9;
}

- (CLKWidgetComplicationDescriptor)initWithWidgetDescriptor:(id)descriptor intentReference:(id)reference
{
  referenceCopy = reference;
  descriptorCopy = descriptor;
  extensionBundleIdentifier = [descriptorCopy extensionBundleIdentifier];
  containerBundleIdentifier = [descriptorCopy containerBundleIdentifier];
  kind = [descriptorCopy kind];

  v11 = [(CLKWidgetComplicationDescriptor *)self initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier kind:kind intentReference:referenceCopy];
  return v11;
}

- (CLKWidgetComplicationDescriptor)initWithExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier kind:(id)kind intent:(id)intent
{
  intentCopy = intent;
  kindCopy = kind;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  v14 = [[CLKIntentReference alloc] initWithIntent:intentCopy];

  v15 = [(CLKWidgetComplicationDescriptor *)self initWithExtensionBundleIdentifier:identifierCopy containerBundleIdentifier:bundleIdentifierCopy kind:kindCopy intentReference:v14];
  return v15;
}

- (CLKWidgetComplicationDescriptor)initWithExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier kind:(id)kind intentReference:(id)reference
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  kindCopy = kind;
  referenceCopy = reference;
  v24.receiver = self;
  v24.super_class = CLKWidgetComplicationDescriptor;
  v14 = [(CLKWidgetComplicationDescriptor *)&v24 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    extensionBundleIdentifier = v14->_extensionBundleIdentifier;
    v14->_extensionBundleIdentifier = v15;

    v17 = [bundleIdentifierCopy copy];
    containerBundleIdentifier = v14->_containerBundleIdentifier;
    v14->_containerBundleIdentifier = v17;

    v19 = [kindCopy copy];
    kind = v14->_kind;
    v14->_kind = v19;

    v21 = [referenceCopy copy];
    intentReference = v14->_intentReference;
    v14->_intentReference = v21;
  }

  return v14;
}

- (CLKWidgetComplicationDescriptor)initWithCoder:(id)coder
{
  v33 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = CLKWidgetComplicationDescriptor;
  v5 = [(CLKWidgetComplicationDescriptor *)&v26 init];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
  extensionBundleIdentifier = v5->_extensionBundleIdentifier;
  v5->_extensionBundleIdentifier = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerBundleIdentifier"];
  containerBundleIdentifier = v5->_containerBundleIdentifier;
  v5->_containerBundleIdentifier = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
  kind = v5->_kind;
  v5->_kind = v10;

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intentReference"];
  intentReference = v5->_intentReference;
  v5->_intentReference = v12;

  v14 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), +[CLKWidgetComplicationDescriptor _INIntentClass](CLKWidgetComplicationDescriptor, "_INIntentClass"), 0}];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"intent"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:+[CLKWidgetComplicationDescriptor _INIntentClass](CLKWidgetComplicationDescriptor fromData:"_INIntentClass") error:{v15, 0}];
    v17 = [[CLKIntentReference alloc] initWithIntent:v16];
    v18 = v5->_intentReference;
    v5->_intentReference = v17;
  }

  else
  {
    +[CLKWidgetComplicationDescriptor _INIntentClass];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v19 = v15;
    v20 = [[CLKIntentReference alloc] initWithIntent:v19];

    v16 = v5->_intentReference;
    v5->_intentReference = v20;
  }

LABEL_7:
  if (!v5->_extensionBundleIdentifier || !v5->_containerBundleIdentifier || !v5->_kind)
  {
    v21 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      v23 = v5->_extensionBundleIdentifier;
      v24 = v5->_containerBundleIdentifier;
      v25 = v5->_kind;
      *buf = 138412802;
      v28 = v23;
      v29 = 2112;
      v30 = v24;
      v31 = 2112;
      v32 = v25;
      _os_log_fault_impl(&dword_23702D000, v21, OS_LOG_TYPE_FAULT, "Unexpected nil identifiers decoding CLKWidgetComplicationDescriptor: %@ %@ %@", buf, 0x20u);
    }
  }

LABEL_14:
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:extensionBundleIdentifier forKey:@"extensionBundleIdentifier"];
  [coderCopy encodeObject:self->_containerBundleIdentifier forKey:@"containerBundleIdentifier"];
  [coderCopy encodeObject:self->_kind forKey:@"kind"];
  [coderCopy encodeObject:self->_intentReference forKey:@"intentReference"];
}

- (id)JSONObjectRepresentation
{
  v3 = objc_opt_new();
  [v3 setObject:self->_extensionBundleIdentifier forKeyedSubscript:@"extensionBundleIdentifier"];
  [v3 setObject:self->_containerBundleIdentifier forKeyedSubscript:@"containerBundleIdentifier"];
  [v3 setObject:self->_kind forKeyedSubscript:@"kind"];
  intentReference = self->_intentReference;
  if (intentReference)
  {
    keyedArchiverEncodedData = [(CLKIntentReference *)intentReference keyedArchiverEncodedData];
    v6 = [keyedArchiverEncodedData base64EncodedStringWithOptions:0];
    [v3 setObject:v6 forKeyedSubscript:@"intent"];
  }

  return v3;
}

- (CLKWidgetComplicationDescriptor)initWithJSONObjectRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [(CLKWidgetComplicationDescriptor *)self init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"extensionBundleIdentifier"];
    extensionBundleIdentifier = v5->_extensionBundleIdentifier;
    v5->_extensionBundleIdentifier = v6;

    v8 = [representationCopy objectForKeyedSubscript:@"containerBundleIdentifier"];
    containerBundleIdentifier = v5->_containerBundleIdentifier;
    v5->_containerBundleIdentifier = v8;

    v10 = [representationCopy objectForKeyedSubscript:@"kind"];
    kind = v5->_kind;
    v5->_kind = v10;

    v12 = [representationCopy objectForKeyedSubscript:@"intent"];
    v13 = MEMORY[0x277CCA2A8];
    if (v12)
    {
      v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v12 options:0];
      if (!v14)
      {
        [MEMORY[0x277CBEAD8] raise:*v13 format:@"CLKWidgetComplicationDescriptor failed to decode intent"];
      }

      v21 = 0;
      v15 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:+[CLKWidgetComplicationDescriptor _INIntentClass](CLKWidgetComplicationDescriptor fromData:"_INIntentClass") error:{v14, &v21}];
      v16 = v21;
      v17 = v16;
      if (!v15 && v16)
      {
        [MEMORY[0x277CBEAD8] raise:*v13 format:{@"CLKWidgetComplicationDescriptor failed to unarchive intent: %@", v16}];
      }

      v18 = [[CLKIntentReference alloc] initWithIntent:v15];
      intentReference = v5->_intentReference;
      v5->_intentReference = v18;
    }

    if (!v5->_extensionBundleIdentifier || !v5->_containerBundleIdentifier || !v5->_kind)
    {
      [MEMORY[0x277CBEAD8] raise:*v13 format:@"CLKWidgetComplicationDescriptor was created from JSON with missing values"];
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CLKWidgetComplicationDescriptor);
  objc_storeStrong(&v4->_extensionBundleIdentifier, self->_extensionBundleIdentifier);
  objc_storeStrong(&v4->_containerBundleIdentifier, self->_containerBundleIdentifier);
  objc_storeStrong(&v4->_kind, self->_kind);
  v5 = [(CLKIntentReference *)self->_intentReference copy];
  intentReference = v4->_intentReference;
  v4->_intentReference = v5;

  return v4;
}

- (BOOL)isEqualToDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (descriptorCopy)
  {
    v5 = [MEMORY[0x277CF0C20] builderWithObject:descriptorCopy ofExpectedClass:objc_opt_class()];
    extensionBundleIdentifier = self->_extensionBundleIdentifier;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __55__CLKWidgetComplicationDescriptor_isEqualToDescriptor___block_invoke;
    v28[3] = &unk_278A1F118;
    v7 = descriptorCopy;
    v29 = v7;
    v8 = [v5 appendString:extensionBundleIdentifier counterpart:v28];
    containerBundleIdentifier = self->_containerBundleIdentifier;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __55__CLKWidgetComplicationDescriptor_isEqualToDescriptor___block_invoke_2;
    v26[3] = &unk_278A1F118;
    v10 = v7;
    v27 = v10;
    v11 = [v5 appendString:containerBundleIdentifier counterpart:v26];
    kind = self->_kind;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __55__CLKWidgetComplicationDescriptor_isEqualToDescriptor___block_invoke_3;
    v24[3] = &unk_278A1F118;
    v13 = v10;
    v25 = v13;
    v14 = [v5 appendString:kind counterpart:v24];
    intentReference = self->_intentReference;
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __55__CLKWidgetComplicationDescriptor_isEqualToDescriptor___block_invoke_4;
    v22 = &unk_278A1F358;
    v23 = v13;
    v16 = [v5 appendObject:intentReference counterpart:&v19];
    v17 = [v5 isEqual];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CLKWidgetComplicationDescriptor *)self isEqualToDescriptor:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendString:self->_extensionBundleIdentifier];
  v5 = [builder appendString:self->_containerBundleIdentifier];
  v6 = [builder appendString:self->_kind];
  v7 = [builder appendObject:self->_intentReference];
  v8 = [builder hash];

  return v8;
}

- (CHSExtensionIdentity)extensionIdentity
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = getCHSExtensionIdentityClass_softClass;
  v11 = getCHSExtensionIdentityClass_softClass;
  if (!getCHSExtensionIdentityClass_softClass)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getCHSExtensionIdentityClass_block_invoke;
    v7[3] = &unk_278A1E6A0;
    v7[4] = &v8;
    __getCHSExtensionIdentityClass_block_invoke(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v5 = [[v3 alloc] initWithExtensionBundleIdentifier:self->_extensionBundleIdentifier containerBundleIdentifier:self->_containerBundleIdentifier deviceIdentifier:0];

  return v5;
}

@end