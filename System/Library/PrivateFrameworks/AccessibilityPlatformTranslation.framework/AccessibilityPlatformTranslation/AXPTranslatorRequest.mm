@interface AXPTranslatorRequest
+ (id)allowedDecodableClasses;
+ (id)requestWithTranslation:(id)translation;
- (AXPTranslatorRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXPTranslatorRequest

+ (id)requestWithTranslation:(id)translation
{
  translationCopy = translation;
  v4 = objc_opt_new();
  [v4 setTranslation:translationCopy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_new();
  [v5 setRequestType:{-[AXPTranslatorRequest requestType](self, "requestType")}];
  parameters = [(AXPTranslatorRequest *)self parameters];
  v7 = [parameters copyWithZone:zone];
  [v5 setParameters:v7];

  [v5 setAttributeType:{-[AXPTranslatorRequest attributeType](self, "attributeType")}];
  [v5 setActionType:{-[AXPTranslatorRequest actionType](self, "actionType")}];
  translation = [(AXPTranslatorRequest *)self translation];
  [v5 setTranslation:translation];

  [v5 setClientType:{-[AXPTranslatorRequest clientType](self, "clientType")}];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  parameters = [(AXPTranslatorRequest *)self parameters];
  [coderCopy encodeObject:parameters forKey:@"parameters"];

  [coderCopy encodeInteger:-[AXPTranslatorRequest requestType](self forKey:{"requestType"), @"requestType"}];
  [coderCopy encodeInteger:-[AXPTranslatorRequest actionType](self forKey:{"actionType"), @"actionType"}];
  [coderCopy encodeInteger:-[AXPTranslatorRequest attributeType](self forKey:{"attributeType"), @"attributeType"}];
  [coderCopy encodeInteger:-[AXPTranslatorRequest clientType](self forKey:{"clientType"), @"clientType"}];
  translation = [(AXPTranslatorRequest *)self translation];
  [coderCopy encodeObject:translation forKey:@"translation"];
}

+ (id)allowedDecodableClasses
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__AXPTranslatorRequest_allowedDecodableClasses__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (allowedDecodableClasses_onceToken_0 != -1)
  {
    dispatch_once(&allowedDecodableClasses_onceToken_0, block);
  }

  v2 = allowedDecodableClasses_Allowed_0;

  return v2;
}

void __47__AXPTranslatorRequest_allowedDecodableClasses__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEB98];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v12 = [v1 setWithObjects:{v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  v9 = +[AXPTranslationObject allowedDecodableClasses];
  v10 = [v12 setByAddingObjectsFromSet:v9];
  v11 = allowedDecodableClasses_Allowed_0;
  allowedDecodableClasses_Allowed_0 = v10;
}

- (AXPTranslatorRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(AXPTranslatorRequest);
  -[AXPTranslatorRequest setRequestType:](v5, "setRequestType:", [coderCopy decodeIntegerForKey:@"requestType"]);
  -[AXPTranslatorRequest setActionType:](v5, "setActionType:", [coderCopy decodeIntegerForKey:@"actionType"]);
  -[AXPTranslatorRequest setAttributeType:](v5, "setAttributeType:", [coderCopy decodeIntegerForKey:@"attributeType"]);
  -[AXPTranslatorRequest setClientType:](v5, "setClientType:", [coderCopy decodeIntegerForKey:@"clientType"]);
  allowedDecodableClasses = [objc_opt_class() allowedDecodableClasses];
  v7 = [coderCopy decodeObjectOfClasses:allowedDecodableClasses forKey:@"parameters"];
  [(AXPTranslatorRequest *)v5 setParameters:v7];

  allowedDecodableClasses2 = [objc_opt_class() allowedDecodableClasses];
  v9 = [coderCopy decodeObjectOfClasses:allowedDecodableClasses2 forKey:@"translation"];

  [(AXPTranslatorRequest *)v5 setTranslation:v9];
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = AXPTranslatorRequest;
  v4 = [(AXPTranslatorRequest *)&v12 description];
  requestType = [(AXPTranslatorRequest *)self requestType];
  v6 = _AXPActionToString([(AXPTranslatorRequest *)self actionType]);
  v7 = _AXPAttributeToString([(AXPTranslatorRequest *)self attributeType]);
  parameters = [(AXPTranslatorRequest *)self parameters];
  translation = [(AXPTranslatorRequest *)self translation];
  v10 = [v3 stringWithFormat:@"%@: Type: %d, action: %@, attribute: %@, params: %@: translation: %@", v4, requestType, v6, v7, parameters, translation];

  return v10;
}

@end