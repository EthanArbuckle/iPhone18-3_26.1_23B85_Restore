@interface CXChannelJoinAction
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4;
- (CXChannelJoinAction)initWithChannelUUID:(id)a3 name:(id)a4;
- (CXChannelJoinAction)initWithCoder:(id)a3;
- (NSString)name;
- (NSURL)imageURL;
- (void)encodeWithCoder:(id)a3;
- (void)setImageURL:(id)a3;
- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXChannelJoinAction

- (CXChannelJoinAction)initWithChannelUUID:(id)a3 name:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = CXChannelJoinAction;
  v7 = [(CXChannelAction *)&v11 initWithChannelUUID:a3];
  if (v7)
  {
    if (!v6)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelJoinAction initWithChannelUUID:name:]", @"name"}];
    }

    v8 = objc_alloc_init(CXChannelUpdate);
    channelUpdate = v7->_channelUpdate;
    v7->_channelUpdate = v8;

    [(CXChannelUpdate *)v7->_channelUpdate setName:v6];
  }

  return v7;
}

- (NSURL)imageURL
{
  v2 = [(CXChannelJoinAction *)self channelUpdate];
  v3 = [v2 imageURL];

  return v3;
}

- (void)setImageURL:(id)a3
{
  v4 = a3;
  v5 = [(CXChannelJoinAction *)self channelUpdate];
  [v5 setImageURL:v4];
}

- (NSString)name
{
  v2 = [(CXChannelJoinAction *)self channelUpdate];
  v3 = [v2 name];

  return v3;
}

- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4
{
  v7.receiver = self;
  v7.super_class = CXChannelJoinAction;
  v6 = a3;
  [(CXChannelAction *)&v7 updateSanitizedCopy:v6 withZone:a4];
  objc_storeStrong(v6 + 8, self->_channelUpdate);
}

- (CXChannelJoinAction)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CXChannelJoinAction;
  v5 = [(CXChannelAction *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_channelUpdate);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    channelUpdate = v5->_channelUpdate;
    v5->_channelUpdate = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CXChannelJoinAction;
  v4 = a3;
  [(CXChannelAction *)&v7 encodeWithCoder:v4];
  v5 = [(CXChannelJoinAction *)self channelUpdate:v7.receiver];
  v6 = NSStringFromSelector(sel_channelUpdate);
  [v4 encodeObject:v5 forKey:v6];
}

+ (id)unarchivedObjectClasses
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