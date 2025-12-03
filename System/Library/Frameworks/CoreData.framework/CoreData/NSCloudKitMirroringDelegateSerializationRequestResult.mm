@interface NSCloudKitMirroringDelegateSerializationRequestResult
- (NSCloudKitMirroringDelegateSerializationRequestResult)initWithRequest:(id)request storeIdentifier:(id)identifier serializedObjects:(id)objects error:(id)error;
- (void)dealloc;
@end

@implementation NSCloudKitMirroringDelegateSerializationRequestResult

- (NSCloudKitMirroringDelegateSerializationRequestResult)initWithRequest:(id)request storeIdentifier:(id)identifier serializedObjects:(id)objects error:(id)error
{
  v10.receiver = self;
  v10.super_class = NSCloudKitMirroringDelegateSerializationRequestResult;
  v7 = [(NSCloudKitMirroringResult *)&v10 initWithRequest:request storeIdentifier:identifier success:objects != 0 madeChanges:0 error:error];
  if (v7)
  {
    if (objects)
    {
      v8 = [objects copy];
    }

    else
    {
      v8 = NSDictionary_EmptyDictionary;
    }

    v7->_serializedObjects = v8;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringDelegateSerializationRequestResult;
  [(NSCloudKitMirroringResult *)&v3 dealloc];
}

@end