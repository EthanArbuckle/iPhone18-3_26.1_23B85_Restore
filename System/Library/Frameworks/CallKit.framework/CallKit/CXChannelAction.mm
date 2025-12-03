@interface CXChannelAction
+ (NSSet)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)data error:(id *)error;
- (CXChannelAction)initWithChannelUUID:(id)d;
- (CXChannelAction)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)customDescription;
- (id)sanitizedCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXChannelAction

- (CXChannelAction)initWithChannelUUID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = CXChannelAction;
  v6 = [(CXAction *)&v8 init];
  if (v6)
  {
    if (!dCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelAction initWithChannelUUID:]", @"channelUUID"}];
    }

    objc_storeStrong(&v6->_channelUUID, d);
  }

  return v6;
}

- (id)customDescription
{
  v7.receiver = self;
  v7.super_class = CXChannelAction;
  customDescription = [(CXAction *)&v7 customDescription];
  v4 = NSStringFromSelector(sel_channelUUID);
  channelUUID = [(CXChannelAction *)self channelUUID];
  [customDescription appendFormat:@" %@=%@", v4, channelUUID];

  return customDescription;
}

- (id)sanitizedCopyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithChannelUUID:", self->_channelUUID}];
  [(CXChannelAction *)self updateSanitizedCopy:v5 withZone:zone];

  return v5;
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CXChannelAction;
  copyCopy = copy;
  [(CXAction *)&v7 updateSanitizedCopy:copyCopy withZone:zone];
  objc_storeStrong(copyCopy + 7, self->_channelUUID);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithChannelUUID:", self->_channelUUID}];
  [(CXAction *)self updateCopy:v5 withZone:zone];
  return v5;
}

- (CXChannelAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CXChannelAction;
  v5 = [(CXAction *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_channelUUID);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    channelUUID = v5->_channelUUID;
    v5->_channelUUID = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CXChannelAction;
  coderCopy = coder;
  [(CXAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CXChannelAction *)self channelUUID:v7.receiver];
  v6 = NSStringFromSelector(sel_channelUUID);
  [coderCopy encodeObject:v5 forKey:v6];
}

+ (NSSet)unarchivedObjectClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

+ (id)unarchivedObjectFromData:(id)data error:(id *)error
{
  v6 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  unarchivedObjectClasses = [self unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:unarchivedObjectClasses fromData:dataCopy error:error];

  return v9;
}

@end