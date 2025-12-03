@interface CXHandle
+ (id)stringForType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHandle:(CXHandle *)handle;
- (CXHandle)initWithCoder:(id)coder;
- (CXHandle)initWithType:(CXHandleType)type value:(NSString *)value;
- (CXHandle)initWithType:(int64_t)type;
- (CXHandle)initWithType:(int64_t)type value:(id)value siriDisplayName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CXHandle

- (id)description
{
  if (description__pred_TULoggableStringForHandleTelephonyUtilities != -1)
  {
    [CXHandle description];
  }

  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [objc_opt_class() stringForType:{-[CXHandle type](self, "type")}];
  v6 = description__TULoggableStringForHandle;
  value = [(CXHandle *)self value];
  v8 = v6();
  siriDisplayName = [(CXHandle *)self siriDisplayName];
  v10 = [v3 stringWithFormat:@"<%@ %p type=%@ value=%@ siriDisplayName=%@>", v4, self, v5, v8, siriDisplayName];

  return v10;
}

- (CXHandle)initWithType:(CXHandleType)type value:(NSString *)value
{
  v6 = value;
  v11.receiver = self;
  v11.super_class = CXHandle;
  v7 = [(CXHandle *)&v11 init];
  if (v7)
  {
    if (!v6)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXHandle initWithType:value:]", @"value"}];
    }

    v7->_type = type;
    v8 = [(NSString *)v6 copy];
    v9 = v7->_value;
    v7->_value = v8;
  }

  return v7;
}

- (CXHandle)initWithType:(int64_t)type value:(id)value siriDisplayName:(id)name
{
  nameCopy = name;
  v9 = [(CXHandle *)self initWithType:type value:value];
  if (v9)
  {
    v10 = [nameCopy copy];
    siriDisplayName = v9->_siriDisplayName;
    v9->_siriDisplayName = v10;
  }

  return v9;
}

- (CXHandle)initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = CXHandle;
  result = [(CXHandle *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

void *__23__CXHandle_description__block_invoke()
{
  result = CUTWeakLinkSymbol();
  description__TULoggableStringForHandle = result;
  return result;
}

+ (id)stringForType:(int64_t)type
{
  if ((type - 1) >= 3)
  {
    type = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%ld)", type];
  }

  else
  {
    type = off_1E7C06BC0[type - 1];
  }

  return type;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXHandle *)self isEqualToHandle:equalCopy];

  return v5;
}

- (BOOL)isEqualToHandle:(CXHandle *)handle
{
  v4 = handle;
  type = [(CXHandle *)self type];
  if (type == [(CXHandle *)v4 type])
  {
    value = [(CXHandle *)self value];
    value2 = [(CXHandle *)v4 value];
    v8 = (value | value2) == 0;
    if (value2)
    {
      v8 = [value isEqualToString:value2];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  type = [(CXHandle *)self type];
  value = [(CXHandle *)self value];
  v5 = [value hash];

  return v5 ^ type;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithType:", -[CXHandle type](self, "type")}];
  value = [(CXHandle *)self value];
  [v4 setValue:value];

  siriDisplayName = [(CXHandle *)self siriDisplayName];
  [v4 setSiriDisplayName:siriDisplayName];

  return v4;
}

- (CXHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_type);
  v6 = [coderCopy decodeIntegerForKey:v5];

  v7 = [(CXHandle *)self initWithType:v6];
  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_value);
    v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];
    value = v7->_value;
    v7->_value = v10;

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_siriDisplayName);
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    siriDisplayName = v7->_siriDisplayName;
    v7->_siriDisplayName = v14;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  type = [(CXHandle *)self type];
  v6 = NSStringFromSelector(sel_type);
  [coderCopy encodeInteger:type forKey:v6];

  value = [(CXHandle *)self value];
  v8 = NSStringFromSelector(sel_value);
  [coderCopy encodeObject:value forKey:v8];

  siriDisplayName = [(CXHandle *)self siriDisplayName];
  v9 = NSStringFromSelector(sel_siriDisplayName);
  [coderCopy encodeObject:siriDisplayName forKey:v9];
}

@end