@interface AXPTranslatorRequest
+ (id)allowedDecodableClasses;
+ (id)requestWithTranslation:(id)a3;
- (AXPTranslatorRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXPTranslatorRequest

+ (id)requestWithTranslation:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setTranslation:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_new();
  [v5 setRequestType:{-[AXPTranslatorRequest requestType](self, "requestType")}];
  v6 = [(AXPTranslatorRequest *)self parameters];
  v7 = [v6 copyWithZone:a3];
  [v5 setParameters:v7];

  [v5 setAttributeType:{-[AXPTranslatorRequest attributeType](self, "attributeType")}];
  [v5 setActionType:{-[AXPTranslatorRequest actionType](self, "actionType")}];
  v8 = [(AXPTranslatorRequest *)self translation];
  [v5 setTranslation:v8];

  [v5 setClientType:{-[AXPTranslatorRequest clientType](self, "clientType")}];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXPTranslatorRequest *)self parameters];
  [v4 encodeObject:v5 forKey:@"parameters"];

  [v4 encodeInteger:-[AXPTranslatorRequest requestType](self forKey:{"requestType"), @"requestType"}];
  [v4 encodeInteger:-[AXPTranslatorRequest actionType](self forKey:{"actionType"), @"actionType"}];
  [v4 encodeInteger:-[AXPTranslatorRequest attributeType](self forKey:{"attributeType"), @"attributeType"}];
  [v4 encodeInteger:-[AXPTranslatorRequest clientType](self forKey:{"clientType"), @"clientType"}];
  v6 = [(AXPTranslatorRequest *)self translation];
  [v4 encodeObject:v6 forKey:@"translation"];
}

+ (id)allowedDecodableClasses
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__AXPTranslatorRequest_allowedDecodableClasses__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (AXPTranslatorRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AXPTranslatorRequest);
  -[AXPTranslatorRequest setRequestType:](v5, "setRequestType:", [v4 decodeIntegerForKey:@"requestType"]);
  -[AXPTranslatorRequest setActionType:](v5, "setActionType:", [v4 decodeIntegerForKey:@"actionType"]);
  -[AXPTranslatorRequest setAttributeType:](v5, "setAttributeType:", [v4 decodeIntegerForKey:@"attributeType"]);
  -[AXPTranslatorRequest setClientType:](v5, "setClientType:", [v4 decodeIntegerForKey:@"clientType"]);
  v6 = [objc_opt_class() allowedDecodableClasses];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"parameters"];
  [(AXPTranslatorRequest *)v5 setParameters:v7];

  v8 = [objc_opt_class() allowedDecodableClasses];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"translation"];

  [(AXPTranslatorRequest *)v5 setTranslation:v9];
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = AXPTranslatorRequest;
  v4 = [(AXPTranslatorRequest *)&v12 description];
  v5 = [(AXPTranslatorRequest *)self requestType];
  v6 = _AXPActionToString([(AXPTranslatorRequest *)self actionType]);
  v7 = _AXPAttributeToString([(AXPTranslatorRequest *)self attributeType]);
  v8 = [(AXPTranslatorRequest *)self parameters];
  v9 = [(AXPTranslatorRequest *)self translation];
  v10 = [v3 stringWithFormat:@"%@: Type: %d, action: %@, attribute: %@, params: %@: translation: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

@end