@interface CXHandle
+ (id)stringForType:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHandle:(CXHandle *)handle;
- (CXHandle)initWithCoder:(id)a3;
- (CXHandle)initWithType:(CXHandleType)type value:(NSString *)value;
- (CXHandle)initWithType:(int64_t)a3;
- (CXHandle)initWithType:(int64_t)a3 value:(id)a4 siriDisplayName:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v7 = [(CXHandle *)self value];
  v8 = v6();
  v9 = [(CXHandle *)self siriDisplayName];
  v10 = [v3 stringWithFormat:@"<%@ %p type=%@ value=%@ siriDisplayName=%@>", v4, self, v5, v8, v9];

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

- (CXHandle)initWithType:(int64_t)a3 value:(id)a4 siriDisplayName:(id)a5
{
  v8 = a5;
  v9 = [(CXHandle *)self initWithType:a3 value:a4];
  if (v9)
  {
    v10 = [v8 copy];
    siriDisplayName = v9->_siriDisplayName;
    v9->_siriDisplayName = v10;
  }

  return v9;
}

- (CXHandle)initWithType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CXHandle;
  result = [(CXHandle *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

void *__23__CXHandle_description__block_invoke()
{
  result = CUTWeakLinkSymbol();
  description__TULoggableStringForHandle = result;
  return result;
}

+ (id)stringForType:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%ld)", a3];
  }

  else
  {
    v4 = off_1E7C06BC0[a3 - 1];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXHandle *)self isEqualToHandle:v4];

  return v5;
}

- (BOOL)isEqualToHandle:(CXHandle *)handle
{
  v4 = handle;
  v5 = [(CXHandle *)self type];
  if (v5 == [(CXHandle *)v4 type])
  {
    v6 = [(CXHandle *)self value];
    v7 = [(CXHandle *)v4 value];
    v8 = (v6 | v7) == 0;
    if (v7)
    {
      v8 = [v6 isEqualToString:v7];
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
  v3 = [(CXHandle *)self type];
  v4 = [(CXHandle *)self value];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithType:", -[CXHandle type](self, "type")}];
  v5 = [(CXHandle *)self value];
  [v4 setValue:v5];

  v6 = [(CXHandle *)self siriDisplayName];
  [v4 setSiriDisplayName:v6];

  return v4;
}

- (CXHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_type);
  v6 = [v4 decodeIntegerForKey:v5];

  v7 = [(CXHandle *)self initWithType:v6];
  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_value);
    v10 = [v4 decodeObjectOfClass:v8 forKey:v9];
    value = v7->_value;
    v7->_value = v10;

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_siriDisplayName);
    v14 = [v4 decodeObjectOfClass:v12 forKey:v13];
    siriDisplayName = v7->_siriDisplayName;
    v7->_siriDisplayName = v14;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXHandle *)self type];
  v6 = NSStringFromSelector(sel_type);
  [v4 encodeInteger:v5 forKey:v6];

  v7 = [(CXHandle *)self value];
  v8 = NSStringFromSelector(sel_value);
  [v4 encodeObject:v7 forKey:v8];

  v10 = [(CXHandle *)self siriDisplayName];
  v9 = NSStringFromSelector(sel_siriDisplayName);
  [v4 encodeObject:v10 forKey:v9];
}

@end