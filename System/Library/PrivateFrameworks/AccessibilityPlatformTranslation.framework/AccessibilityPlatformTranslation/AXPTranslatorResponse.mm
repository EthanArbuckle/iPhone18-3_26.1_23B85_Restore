@interface AXPTranslatorResponse
+ (id)allowedDecodableClasses;
+ (id)emptyResponse;
- (AXPTranslationObject)translationResponse;
- (AXPTranslatorResponse)initWithCoder:(id)coder;
- (BOOL)BOOLResponse;
- (NSArray)translationsResponse;
- (NSArray)treeDumpResponse;
- (NSString)treeDumpType;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXPTranslatorResponse

+ (id)emptyResponse
{
  v2 = objc_opt_new();

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_new();
  resultData = [(AXPTranslatorResponse *)self resultData];
  [v5 setResultData:resultData];

  [v5 setError:{-[AXPTranslatorResponse error](self, "error")}];
  [v5 setAttribute:{-[AXPTranslatorResponse attribute](self, "attribute")}];
  [v5 setNotification:{-[AXPTranslatorResponse notification](self, "notification")}];
  [v5 setAssociatedRequestType:{-[AXPTranslatorResponse associatedRequestType](self, "associatedRequestType")}];
  associatedNotificationObject = [(AXPTranslatorResponse *)self associatedNotificationObject];
  v8 = [associatedNotificationObject copyWithZone:zone];
  [v5 setAssociatedNotificationObject:v8];

  associatedTranslationObject = [(AXPTranslatorResponse *)self associatedTranslationObject];
  v10 = [associatedTranslationObject copyWithZone:zone];
  [v5 setAssociatedTranslationObject:v10];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  resultData = [(AXPTranslatorResponse *)self resultData];
  [coderCopy encodeObject:resultData forKey:@"resultData"];

  [coderCopy encodeInteger:-[AXPTranslatorResponse error](self forKey:{"error"), @"error"}];
  [coderCopy encodeInteger:-[AXPTranslatorResponse attribute](self forKey:{"attribute"), @"attribute"}];
  [coderCopy encodeInteger:-[AXPTranslatorResponse notification](self forKey:{"notification"), @"notification"}];
  [coderCopy encodeInteger:-[AXPTranslatorResponse associatedRequestType](self forKey:{"associatedRequestType"), @"associatedRequestType"}];
  associatedNotificationObject = [(AXPTranslatorResponse *)self associatedNotificationObject];
  [coderCopy encodeObject:associatedNotificationObject forKey:@"associatedNotificationObject"];

  associatedTranslationObject = [(AXPTranslatorResponse *)self associatedTranslationObject];
  [coderCopy encodeObject:associatedTranslationObject forKey:@"associatedTranslationObject"];
}

+ (id)allowedDecodableClasses
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__AXPTranslatorResponse_allowedDecodableClasses__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (AXPTranslatorResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_new();
  allowedDecodableClasses = [objc_opt_class() allowedDecodableClasses];
  v7 = [coderCopy decodeObjectOfClasses:allowedDecodableClasses forKey:@"resultData"];
  [(AXPTranslatorResponse *)v5 setResultData:v7];

  -[AXPTranslatorResponse setError:](v5, "setError:", [coderCopy decodeIntegerForKey:@"error"]);
  -[AXPTranslatorResponse setAttribute:](v5, "setAttribute:", [coderCopy decodeIntegerForKey:@"attribute"]);
  -[AXPTranslatorResponse setNotification:](v5, "setNotification:", [coderCopy decodeIntegerForKey:@"notification"]);
  -[AXPTranslatorResponse setAssociatedRequestType:](v5, "setAssociatedRequestType:", [coderCopy decodeIntegerForKey:@"associatedRequestType"]);
  allowedDecodableClasses2 = [objc_opt_class() allowedDecodableClasses];
  v9 = [coderCopy decodeObjectOfClasses:allowedDecodableClasses2 forKey:@"associatedNotificationObject"];
  [(AXPTranslatorResponse *)v5 setAssociatedNotificationObject:v9];

  allowedDecodableClasses3 = [objc_opt_class() allowedDecodableClasses];
  v11 = [coderCopy decodeObjectOfClasses:allowedDecodableClasses3 forKey:@"associatedTranslationObject"];

  [(AXPTranslatorResponse *)v5 setAssociatedTranslationObject:v11];
  return v5;
}

- (AXPTranslationObject)translationResponse
{
  resultData = [(AXPTranslatorResponse *)self resultData];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    resultData2 = [(AXPTranslatorResponse *)self resultData];
  }

  else
  {
    resultData2 = 0;
  }

  return resultData2;
}

- (NSArray)translationsResponse
{
  resultData = [(AXPTranslatorResponse *)self resultData];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_4;
  }

  resultData2 = [(AXPTranslatorResponse *)self resultData];
  v6 = [resultData2 count];
  resultData3 = [(AXPTranslatorResponse *)self resultData];
  v8 = [resultData3 indexesOfObjectsPassingTest:&__block_literal_global_3];
  v9 = [v8 count];

  if (v6 == v9)
  {
    resultData4 = [(AXPTranslatorResponse *)self resultData];
  }

  else
  {
LABEL_4:
    resultData4 = 0;
  }

  return resultData4;
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
  resultData = [(AXPTranslatorResponse *)self resultData];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  resultData2 = [(AXPTranslatorResponse *)self resultData];
  bOOLValue = [resultData2 BOOLValue];

  return bOOLValue;
}

- (NSString)treeDumpType
{
  resultData = [(AXPTranslatorResponse *)self resultData];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_5;
  }

  resultData2 = [(AXPTranslatorResponse *)self resultData];
  v6 = [resultData2 objectForKey:@"treeDumpType"];

  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

LABEL_5:
    v6 = 0;
  }

  return v6;
}

- (NSArray)treeDumpResponse
{
  resultData = [(AXPTranslatorResponse *)self resultData];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_5;
  }

  resultData2 = [(AXPTranslatorResponse *)self resultData];
  v6 = [resultData2 objectForKey:@"treeDump"];

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
  resultData = [(AXPTranslatorResponse *)self resultData];
  v6 = _AXPAttributeToString([(AXPTranslatorResponse *)self attribute]);
  v7 = _AXPNotificationToString([(AXPTranslatorResponse *)self notification]);
  associatedRequestType = [(AXPTranslatorResponse *)self associatedRequestType];
  associatedTranslationObject = [(AXPTranslatorResponse *)self associatedTranslationObject];
  v10 = [v3 stringWithFormat:@"%@: %@ [maybe attribute: %@] [maybe notification: %@] [maybe associatedRequestType: %d] [maybe associatedTranslationObj: %@]", v4, resultData, v6, v7, associatedRequestType, associatedTranslationObject];

  return v10;
}

@end