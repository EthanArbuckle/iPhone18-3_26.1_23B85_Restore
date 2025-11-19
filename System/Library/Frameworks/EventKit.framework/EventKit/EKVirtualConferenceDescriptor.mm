@interface EKVirtualConferenceDescriptor
- (EKVirtualConferenceDescriptor)initWithTitle:(NSString *)title URLDescriptors:(NSArray *)URLDescriptors conferenceDetails:(NSString *)conferenceDetails;
@end

@implementation EKVirtualConferenceDescriptor

- (EKVirtualConferenceDescriptor)initWithTitle:(NSString *)title URLDescriptors:(NSArray *)URLDescriptors conferenceDetails:(NSString *)conferenceDetails
{
  v9 = title;
  v10 = URLDescriptors;
  v11 = conferenceDetails;
  v14.receiver = self;
  v14.super_class = EKVirtualConferenceDescriptor;
  v12 = [(EKVirtualConferenceDescriptor *)&v14 init];
  if (v12)
  {
    if (![(NSArray *)v10 count])
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"No URLs provided"];
    }

    objc_storeStrong(&v12->_title, title);
    objc_storeStrong(&v12->_URLDescriptors, URLDescriptors);
    objc_storeStrong(&v12->_conferenceDetails, conferenceDetails);
  }

  return v12;
}

@end