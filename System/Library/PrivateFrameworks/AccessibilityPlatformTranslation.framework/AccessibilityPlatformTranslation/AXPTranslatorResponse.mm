@interface AXPTranslatorResponse
+ (id)allowedDecodableClasses;
+ (id)emptyResponse;
- (AXPTranslationObject)translationResponse;
- (AXPTranslatorResponse)initWithCoder:(id)a3;
- (BOOL)BOOLResponse;
- (NSArray)translationsResponse;
- (NSArray)treeDumpResponse;
- (NSString)treeDumpType;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXPTranslatorResponse

+ (id)emptyResponse
{
  v2 = objc_opt_new();

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_new();
  v6 = [(AXPTranslatorResponse *)self resultData];
  [v5 setResultData:v6];

  [v5 setError:{-[AXPTranslatorResponse error](self, "error")}];
  [v5 setAttribute:{-[AXPTranslatorResponse attribute](self, "attribute")}];
  [v5 setNotification:{-[AXPTranslatorResponse notification](self, "notification")}];
  [v5 setAssociatedRequestType:{-[AXPTranslatorResponse associatedRequestType](self, "associatedRequestType")}];
  v7 = [(AXPTranslatorResponse *)self associatedNotificationObject];
  v8 = [v7 copyWithZone:a3];
  [v5 setAssociatedNotificationObject:v8];

  v9 = [(AXPTranslatorResponse *)self associatedTranslationObject];
  v10 = [v9 copyWithZone:a3];
  [v5 setAssociatedTranslationObject:v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXPTranslatorResponse *)self resultData];
  [v4 encodeObject:v5 forKey:@"resultData"];

  [v4 encodeInteger:-[AXPTranslatorResponse error](self forKey:{"error"), @"error"}];
  [v4 encodeInteger:-[AXPTranslatorResponse attribute](self forKey:{"attribute"), @"attribute"}];
  [v4 encodeInteger:-[AXPTranslatorResponse notification](self forKey:{"notification"), @"notification"}];
  [v4 encodeInteger:-[AXPTranslatorResponse associatedRequestType](self forKey:{"associatedRequestType"), @"associatedRequestType"}];
  v6 = [(AXPTranslatorResponse *)self associatedNotificationObject];
  [v4 encodeObject:v6 forKey:@"associatedNotificationObject"];

  v7 = [(AXPTranslatorResponse *)self associatedTranslationObject];
  [v4 encodeObject:v7 forKey:@"associatedTranslationObject"];
}

+ (id)allowedDecodableClasses
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__AXPTranslatorResponse_allowedDecodableClasses__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (allowedDecodableClasses_onceToken_1 != -1)
  {
    dispatch_once(&allowedDecodableClasses_onceToken_1, block);
  }

  v2 = allowedDecodableClasses_Allowed_1;

  return v2;
}

void __48__AXPTranslatorResponse_allowedDecodableClasses__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEB98];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v14 = [v1 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  v11 = +[AXPTranslationObject allowedDecodableClasses];
  v12 = [v14 setByAddingObjectsFromSet:v11];
  v13 = allowedDecodableClasses_Allowed_1;
  allowedDecodableClasses_Allowed_1 = v12;
}

- (AXPTranslatorResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [objc_opt_class() allowedDecodableClasses];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"resultData"];
  [(AXPTranslatorResponse *)v5 setResultData:v7];

  -[AXPTranslatorResponse setError:](v5, "setError:", [v4 decodeIntegerForKey:@"error"]);
  -[AXPTranslatorResponse setAttribute:](v5, "setAttribute:", [v4 decodeIntegerForKey:@"attribute"]);
  -[AXPTranslatorResponse setNotification:](v5, "setNotification:", [v4 decodeIntegerForKey:@"notification"]);
  -[AXPTranslatorResponse setAssociatedRequestType:](v5, "setAssociatedRequestType:", [v4 decodeIntegerForKey:@"associatedRequestType"]);
  v8 = [objc_opt_class() allowedDecodableClasses];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"associatedNotificationObject"];
  [(AXPTranslatorResponse *)v5 setAssociatedNotificationObject:v9];

  v10 = [objc_opt_class() allowedDecodableClasses];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"associatedTranslationObject"];

  [(AXPTranslatorResponse *)v5 setAssociatedTranslationObject:v11];
  return v5;
}

- (AXPTranslationObject)translationResponse
{
  v3 = [(AXPTranslatorResponse *)self resultData];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(AXPTranslatorResponse *)self resultData];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)translationsResponse
{
  v3 = [(AXPTranslatorResponse *)self resultData];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = [(AXPTranslatorResponse *)self resultData];
  v6 = [v5 count];
  v7 = [(AXPTranslatorResponse *)self resultData];
  v8 = [v7 indexesOfObjectsPassingTest:&__block_literal_global_3];
  v9 = [v8 count];

  if (v6 == v9)
  {
    v10 = [(AXPTranslatorResponse *)self resultData];
  }

  else
  {
LABEL_4:
    v10 = 0;
  }

  return v10;
}

uint64_t __45__AXPTranslatorResponse_translationsResponse__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)BOOLResponse
{
  v3 = [(AXPTranslatorResponse *)self resultData];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v5 = [(AXPTranslatorResponse *)self resultData];
  v6 = [v5 BOOLValue];

  return v6;
}

- (NSString)treeDumpType
{
  v3 = [(AXPTranslatorResponse *)self resultData];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_5;
  }

  v5 = [(AXPTranslatorResponse *)self resultData];
  v6 = [v5 objectForKey:@"treeDumpType"];

  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

LABEL_5:
    v6 = 0;
  }

  return v6;
}

- (NSArray)treeDumpResponse
{
  v3 = [(AXPTranslatorResponse *)self resultData];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_5;
  }

  v5 = [(AXPTranslatorResponse *)self resultData];
  v6 = [v5 objectForKey:@"treeDump"];

  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

LABEL_5:
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = AXPTranslatorResponse;
  v4 = [(AXPTranslatorResponse *)&v12 description];
  v5 = [(AXPTranslatorResponse *)self resultData];
  v6 = _AXPAttributeToString([(AXPTranslatorResponse *)self attribute]);
  v7 = _AXPNotificationToString([(AXPTranslatorResponse *)self notification]);
  v8 = [(AXPTranslatorResponse *)self associatedRequestType];
  v9 = [(AXPTranslatorResponse *)self associatedTranslationObject];
  v10 = [v3 stringWithFormat:@"%@: %@ [maybe attribute: %@] [maybe notification: %@] [maybe associatedRequestType: %d] [maybe associatedTranslationObj: %@]", v4, v5, v6, v7, v8, v9];

  return v10;
}

@end