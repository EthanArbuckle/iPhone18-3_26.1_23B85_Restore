@interface CXChannel
+ (NSSet)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToChannel:(id)channel;
- (BOOL)isEquivalentToChannel:(id)channel;
- (CXChannel)initWithChannel:(id)channel;
- (CXChannel)initWithCoder:(id)coder;
- (CXChannel)initWithUUID:(id)d transmissionMode:(int64_t)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CXChannel

- (CXChannel)initWithUUID:(id)d transmissionMode:(int64_t)mode
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = CXChannel;
  v8 = [(CXChannel *)&v10 init];
  if (v8)
  {
    if (!dCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannel initWithUUID:transmissionMode:]", @"UUID"}];
    }

    v8->_transmissionMode = mode;
    objc_storeStrong(&v8->_UUID, d);
  }

  return v8;
}

- (CXChannel)initWithChannel:(id)channel
{
  channelCopy = channel;
  v8.receiver = self;
  v8.super_class = CXChannel;
  v5 = [(CXChannel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_localizedName, *(channelCopy + 2));
    v6->_transmissionMode = *(channelCopy + 3);
    objc_storeStrong(&v6->_UUID, *(channelCopy + 1));
  }

  return v6;
}

- (BOOL)isEqualToChannel:(id)channel
{
  channelCopy = channel;
  localizedName = [(CXChannel *)self localizedName];
  localizedName2 = [channelCopy localizedName];
  if (localizedName2)
  {
    if (([localizedName isEqualToString:localizedName2] & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (localizedName)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  transmissionMode = [(CXChannel *)self transmissionMode];
  if (transmissionMode != [channelCopy transmissionMode])
  {
    goto LABEL_7;
  }

  uUID = [(CXChannel *)self UUID];
  uUID2 = [channelCopy UUID];
  v10 = [uUID isEqual:uUID2];

LABEL_8:
  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  uUID = [(CXChannel *)self UUID];
  v6 = [v3 stringWithFormat:@"<%@ %p UUID=%@>", v4, self, uUID];

  return v6;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uUID = [(CXChannel *)self UUID];
  [v3 appendFormat:@" UUID=%@", uUID];

  [v3 appendFormat:@", "];
  localizedName = [(CXChannel *)self localizedName];
  [v3 appendFormat:@" localizedName=%@", localizedName];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_transmissionMode);
  transmissionMode = [(CXChannel *)self transmissionMode];
  objc_opt_self();
  if (transmissionMode > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E7C07250[transmissionMode];
  }

  [v3 appendFormat:@" %@=%@", v6, v8];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXChannel *)self isEqualToChannel:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  localizedName = [(CXChannel *)self localizedName];
  v4 = [localizedName hash];
  transmissionMode = [(CXChannel *)self transmissionMode];
  uUID = [(CXChannel *)self UUID];
  [uUID hash];
  v14 = CXHash(4uLL, v7, v8, v9, v10, v11, v12, v13, v4, transmissionMode);

  return v14;
}

- (BOOL)isEquivalentToChannel:(id)channel
{
  channelCopy = channel;
  uUID = [(CXChannel *)self UUID];
  uUID2 = [channelCopy UUID];

  LOBYTE(channelCopy) = [uUID isEqual:uUID2];
  return channelCopy;
}

+ (NSSet)unarchivedObjectClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
}

+ (id)unarchivedObjectFromData:(id)data error:(id *)error
{
  v6 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  unarchivedObjectClasses = [self unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:unarchivedObjectClasses fromData:dataCopy error:error];

  return v9;
}

- (CXChannel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CXChannel;
  v5 = [(CXChannel *)&v16 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_localizedName);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    localizedName = v5->_localizedName;
    v5->_localizedName = v8;

    v10 = NSStringFromSelector(sel_transmissionMode);
    v5->_transmissionMode = [coderCopy decodeIntegerForKey:v10];

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_UUID);
    v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];
    UUID = v5->_UUID;
    v5->_UUID = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  localizedName = [(CXChannel *)self localizedName];
  v6 = NSStringFromSelector(sel_localizedName);
  [coderCopy encodeObject:localizedName forKey:v6];

  transmissionMode = [(CXChannel *)self transmissionMode];
  v8 = NSStringFromSelector(sel_transmissionMode);
  [coderCopy encodeInteger:transmissionMode forKey:v8];

  uUID = [(CXChannel *)self UUID];
  v9 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:uUID forKey:v9];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CXChannel allocWithZone:zone];

  return [(CXChannel *)v4 initWithChannel:self];
}

@end