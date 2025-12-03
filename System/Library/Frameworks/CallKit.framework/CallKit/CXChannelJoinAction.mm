@interface CXChannelJoinAction
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)data error:(id *)error;
- (CXChannelJoinAction)initWithChannelUUID:(id)d name:(id)name;
- (CXChannelJoinAction)initWithCoder:(id)coder;
- (NSString)name;
- (NSURL)imageURL;
- (void)encodeWithCoder:(id)coder;
- (void)setImageURL:(id)l;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXChannelJoinAction

- (CXChannelJoinAction)initWithChannelUUID:(id)d name:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = CXChannelJoinAction;
  v7 = [(CXChannelAction *)&v11 initWithChannelUUID:d];
  if (v7)
  {
    if (!nameCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelJoinAction initWithChannelUUID:name:]", @"name"}];
    }

    v8 = objc_alloc_init(CXChannelUpdate);
    channelUpdate = v7->_channelUpdate;
    v7->_channelUpdate = v8;

    [(CXChannelUpdate *)v7->_channelUpdate setName:nameCopy];
  }

  return v7;
}

- (NSURL)imageURL
{
  channelUpdate = [(CXChannelJoinAction *)self channelUpdate];
  imageURL = [channelUpdate imageURL];

  return imageURL;
}

- (void)setImageURL:(id)l
{
  lCopy = l;
  channelUpdate = [(CXChannelJoinAction *)self channelUpdate];
  [channelUpdate setImageURL:lCopy];
}

- (NSString)name
{
  channelUpdate = [(CXChannelJoinAction *)self channelUpdate];
  name = [channelUpdate name];

  return name;
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CXChannelJoinAction;
  copyCopy = copy;
  [(CXChannelAction *)&v7 updateSanitizedCopy:copyCopy withZone:zone];
  objc_storeStrong(copyCopy + 8, self->_channelUpdate);
}

- (CXChannelJoinAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CXChannelJoinAction;
  v5 = [(CXChannelAction *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_channelUpdate);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    channelUpdate = v5->_channelUpdate;
    v5->_channelUpdate = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CXChannelJoinAction;
  coderCopy = coder;
  [(CXChannelAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CXChannelJoinAction *)self channelUpdate:v7.receiver];
  v6 = NSStringFromSelector(sel_channelUpdate);
  [coderCopy encodeObject:v5 forKey:v6];
}

+ (id)unarchivedObjectClasses
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