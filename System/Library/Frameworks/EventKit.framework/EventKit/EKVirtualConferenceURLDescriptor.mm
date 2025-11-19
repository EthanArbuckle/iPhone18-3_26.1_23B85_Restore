@interface EKVirtualConferenceURLDescriptor
- (EKVirtualConferenceURLDescriptor)initWithTitle:(NSString *)title URL:(NSURL *)URL;
@end

@implementation EKVirtualConferenceURLDescriptor

- (EKVirtualConferenceURLDescriptor)initWithTitle:(NSString *)title URL:(NSURL *)URL
{
  v7 = title;
  v8 = URL;
  v13.receiver = self;
  v13.super_class = EKVirtualConferenceURLDescriptor;
  v9 = [(EKVirtualConferenceURLDescriptor *)&v13 init];
  if (v9)
  {
    v10 = [(NSURL *)v8 absoluteString];
    v11 = [v10 length];

    if (!v11)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"url is empty"];
    }

    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v9->_URL, URL);
  }

  return v9;
}

@end