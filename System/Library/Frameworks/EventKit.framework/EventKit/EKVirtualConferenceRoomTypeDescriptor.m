@interface EKVirtualConferenceRoomTypeDescriptor
- (EKVirtualConferenceRoomTypeDescriptor)initWithTitle:(NSString *)title identifier:(EKVirtualConferenceRoomTypeIdentifier)identifier;
@end

@implementation EKVirtualConferenceRoomTypeDescriptor

- (EKVirtualConferenceRoomTypeDescriptor)initWithTitle:(NSString *)title identifier:(EKVirtualConferenceRoomTypeIdentifier)identifier
{
  v7 = title;
  v8 = identifier;
  v11.receiver = self;
  v11.super_class = EKVirtualConferenceRoomTypeDescriptor;
  v9 = [(EKVirtualConferenceRoomTypeDescriptor *)&v11 init];
  if (v9)
  {
    if (![(NSString *)v7 length])
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"title is empty"];
    }

    if (![(NSString *)v8 length])
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"identifier is empty"];
    }

    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v9->_identifier, identifier);
  }

  return v9;
}

@end