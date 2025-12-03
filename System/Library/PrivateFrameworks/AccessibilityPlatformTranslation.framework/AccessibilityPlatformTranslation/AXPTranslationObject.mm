@interface AXPTranslationObject
+ (id)allowedDecodableClasses;
+ (void)initialize;
- (AXPTranslationObject)init;
- (AXPTranslationObject)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (NSString)remoteDebugDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXPTranslationObject

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[AXPTranslationObject initialize];
  }
}

uint64_t __34__AXPTranslationObject_initialize__block_invoke()
{
  UniqueIdLock = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (AXPTranslationObject)init
{
  v6.receiver = self;
  v6.super_class = AXPTranslationObject;
  v2 = [(AXPTranslationObject *)&v6 init];
  [UniqueIdLock lock];
  bytes = 0;
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 8uLL, &bytes))
  {
    v3 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(AXPTranslationObject *)v3 init];
    }

    ++UniqueIDCount;
  }

  [(AXPTranslationObject *)v2 setObjectID:?];
  [UniqueIdLock unlock];
  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objectID = [(AXPTranslationObject *)self objectID];
    v6 = objectID == [equalCopy objectID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)remoteDebugDescription
{
  if (!self->_remoteDebugDescription)
  {
    remoteDescriptionBlock = self->_remoteDescriptionBlock;
    if (remoteDescriptionBlock)
    {
      v4 = remoteDescriptionBlock[2](remoteDescriptionBlock, self);
    }

    else
    {
      v4 = &stru_284FC8428;
    }

    remoteDebugDescription = self->_remoteDebugDescription;
    self->_remoteDebugDescription = &v4->isa;
  }

  v6 = self->_remoteDebugDescription;

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[AXPTranslationObject allocWithZone:](AXPTranslationObject init];
  [(AXPTranslationObject *)v5 setObjectID:[(AXPTranslationObject *)self objectID]];
  [(AXPTranslationObject *)v5 setPid:[(AXPTranslationObject *)self pid]];
  [(AXPTranslationObject *)v5 setIsApplicationElement:[(AXPTranslationObject *)self isApplicationElement]];
  bridgeDelegateToken = [(AXPTranslationObject *)self bridgeDelegateToken];
  v7 = [bridgeDelegateToken copyWithZone:zone];
  [(AXPTranslationObject *)v5 setBridgeDelegateToken:v7];

  rawElementData = [(AXPTranslationObject *)self rawElementData];
  v9 = [rawElementData copyWithZone:zone];
  [(AXPTranslationObject *)v5 setRawElementData:v9];

  [(AXPTranslationObject *)v5 setDidPopuldateAppInfo:[(AXPTranslationObject *)self didPopuldateAppInfo]];
  return v5;
}

+ (id)allowedDecodableClasses
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__AXPTranslationObject_allowedDecodableClasses__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (allowedDecodableClasses_onceToken != -1)
  {
    dispatch_once(&allowedDecodableClasses_onceToken, block);
  }

  v2 = allowedDecodableClasses_Allowed;

  return v2;
}

uint64_t __47__AXPTranslationObject_allowedDecodableClasses__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEB98];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  allowedDecodableClasses_Allowed = [v1 setWithObjects:{v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[AXPTranslationObject pid](self forKey:{"pid"), @"pid"}];
  [coderCopy encodeBool:-[AXPTranslationObject isApplicationElement](self forKey:{"isApplicationElement"), @"isApplicationElement"}];
  [coderCopy encodeBool:-[AXPTranslationObject didPopuldateAppInfo](self forKey:{"didPopuldateAppInfo"), @"didPopuldateAppInfo"}];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[AXPTranslationObject objectID](self, "objectID")}];
  [coderCopy encodeObject:v5 forKey:@"objectID"];

  bridgeDelegateToken = [(AXPTranslationObject *)self bridgeDelegateToken];
  [coderCopy encodeObject:bridgeDelegateToken forKey:@"bridgeDelegateToken"];

  rawElementData = [(AXPTranslationObject *)self rawElementData];
  [coderCopy encodeObject:rawElementData forKey:@"rawElementData"];
}

- (AXPTranslationObject)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = AXPTranslationObject;
  coderCopy = coder;
  v4 = [(AXPTranslationObject *)&v9 init];
  -[AXPTranslationObject setPid:](v4, "setPid:", [coderCopy decodeIntForKey:{@"pid", v9.receiver, v9.super_class}]);
  -[AXPTranslationObject setIsApplicationElement:](v4, "setIsApplicationElement:", [coderCopy decodeBoolForKey:@"isApplicationElement"]);
  -[AXPTranslationObject setDidPopuldateAppInfo:](v4, "setDidPopuldateAppInfo:", [coderCopy decodeBoolForKey:@"didPopuldateAppInfo"]);
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
  -[AXPTranslationObject setObjectID:](v4, "setObjectID:", [v5 unsignedLongLongValue]);

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bridgeDelegateToken"];
  [(AXPTranslationObject *)v4 setBridgeDelegateToken:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawElementData"];

  [(AXPTranslationObject *)v4 setRawElementData:v7];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = AXPTranslationObject;
  v4 = [(AXPTranslationObject *)&v9 description];
  objectID = [(AXPTranslationObject *)self objectID];
  remoteDebugDescription = [(AXPTranslationObject *)self remoteDebugDescription];
  v7 = [v3 stringWithFormat:@"%@[%llu]: %@", v4, objectID, remoteDebugDescription];

  return v7;
}

@end