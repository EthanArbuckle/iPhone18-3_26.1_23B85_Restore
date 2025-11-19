@interface CXChannelAction
+ (NSSet)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4;
- (CXChannelAction)initWithChannelUUID:(id)a3;
- (CXChannelAction)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)customDescription;
- (id)sanitizedCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXChannelAction

- (CXChannelAction)initWithChannelUUID:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = CXChannelAction;
  v6 = [(CXAction *)&v8 init];
  if (v6)
  {
    if (!v5)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelAction initWithChannelUUID:]", @"channelUUID"}];
    }

    objc_storeStrong(&v6->_channelUUID, a3);
  }

  return v6;
}

- (id)customDescription
{
  v7.receiver = self;
  v7.super_class = CXChannelAction;
  v3 = [(CXAction *)&v7 customDescription];
  v4 = NSStringFromSelector(sel_channelUUID);
  v5 = [(CXChannelAction *)self channelUUID];
  [v3 appendFormat:@" %@=%@", v4, v5];

  return v3;
}

- (id)sanitizedCopyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithChannelUUID:", self->_channelUUID}];
  [(CXChannelAction *)self updateSanitizedCopy:v5 withZone:a3];

  return v5;
}

- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4
{
  v7.receiver = self;
  v7.super_class = CXChannelAction;
  v6 = a3;
  [(CXAction *)&v7 updateSanitizedCopy:v6 withZone:a4];
  objc_storeStrong(v6 + 7, self->_channelUUID);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithChannelUUID:", self->_channelUUID}];
  [(CXAction *)self updateCopy:v5 withZone:a3];
  return v5;
}

- (CXChannelAction)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CXChannelAction;
  v5 = [(CXAction *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_channelUUID);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    channelUUID = v5->_channelUUID;
    v5->_channelUUID = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CXChannelAction;
  v4 = a3;
  [(CXAction *)&v7 encodeWithCoder:v4];
  v5 = [(CXChannelAction *)self channelUUID:v7.receiver];
  v6 = NSStringFromSelector(sel_channelUUID);
  [v4 encodeObject:v5 forKey:v6];
}

+ (NSSet)unarchivedObjectClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E696ACD0];
  v7 = a3;
  v8 = [a1 unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:v8 fromData:v7 error:a4];

  return v9;
}

@end